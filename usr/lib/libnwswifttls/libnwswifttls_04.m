id specialized STLSRecordHandler.init(_:serverKey:alpn:EPSKs:epskSelectionBlock:rawEPSKsEnabled:pakeServerConfiguration:enableEarlyData:logStr:)(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, unsigned __int8 a9, void *a10)
{
  v87 = a5;
  v88 = a8;
  v83 = a7;
  v84 = a6;
  v89 = a4;
  v82 = a3;
  v80 = a2;
  ObjectType = swift_getObjectType();
  v78 = type metadata accessor for TLSHandshakeStateMachine(0);
  v12 = *(*(v78 - 1) + 64);
  MEMORY[0x1EEE9AC00](v78);
  v76 = &v72[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary16TLSRecordHandlerVSgMd, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v77 = &v72[-v16];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary27ServerHandshakeStateMachineVSgMd, &_s15SwiftTLSLibrary27ServerHandshakeStateMachineVSgMR);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v72[-v19];
  v21 = type metadata accessor for ServerHandshakeStateMachine(0);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v81 = &v72[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = OBJC_IVAR____TtC10nwswifttls17STLSRecordHandler_recordHandler;
  v26 = type metadata accessor for TLSRecordHandler();
  v27 = *(*(v26 - 8) + 56);
  v75 = v25;
  v27(&v10[v25], 1, 1, v26);
  v86 = v10;
  v79 = OBJC_IVAR____TtC10nwswifttls17STLSRecordHandler_logString;
  *&v10[OBJC_IVAR____TtC10nwswifttls17STLSRecordHandler_logString] = a10;
  v28 = a10;
  if (a1)
  {
    v74 = a1;
    v29 = v80;
    v30 = v82;
    configureServerStateMachine(_:serverKey:quicTransportParameters:alpn:EPSKs:epskSelectionBlock:useRawEPSKs:pakeServerConfiguration:enableEarlyData:)(v74, v80, 0, v82, v89, v87, v84, v83 & 1, v20, v88, a9 & 1);
    if ((*(v22 + 48))(v20, 1, v21) == 1)
    {

      outlined destroy of P256.Signing.PrivateKey?(v20, &_s15SwiftTLSLibrary27ServerHandshakeStateMachineVSgMd, &_s15SwiftTLSLibrary27ServerHandshakeStateMachineVSgMR);
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v31 = type metadata accessor for Logger();
      __swift_project_value_buffer(v31, logger);
      v32 = v86;
      v33 = v86;
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        *v36 = 138412290;
        v38 = *(v79 + v32);
        *(v36 + 4) = v38;
        *v37 = v38;
        v39 = v38;
        _os_log_impl(&dword_1B25F5000, v34, v35, "%@: unable to initialize client handshake state machine", v36, 0xCu);
        outlined destroy of P256.Signing.PrivateKey?(v37, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1B274ECF0](v37, -1, -1);
        MEMORY[0x1B274ECF0](v36, -1, -1);
      }
    }

    else
    {
      v73 = a9;
      v40 = v89;
      v41 = v81;
      outlined init with take of TLSRecordHandler(v20, v81, type metadata accessor for ServerHandshakeStateMachine);
      v42 = v76;
      outlined init with copy of TLSRecordHandler(v41, v76, type metadata accessor for ServerHandshakeStateMachine);
      swift_storeEnumTagMultiPayload();
      v43 = v77;
      v44 = TLSRecordHandler.init(stateMachine:)(v42, v77);
      (v27)(v43, 0, 1, v26, v44);
      v32 = v86;
      v45 = v75;
      swift_beginAccess();
      outlined assign with take of TLSRecordHandler?(v43, &v32[v45]);
      swift_endAccess();
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v46 = type metadata accessor for Logger();
      __swift_project_value_buffer(v46, logger);
      v47 = v30;
      v48 = v29;
      v49 = v87;
      v50 = v84;
      outlined copy of (@escaping @callee_guaranteed (@guaranteed [SwiftTLSOfferedEPSK], @guaranteed @escaping @callee_guaranteed (@guaranteed SecExternalPreSharedKey?) -> ()) -> ())?(v87, v84);
      v51 = v48;
      v78 = v47;
      outlined copy of (@escaping @callee_guaranteed (@guaranteed [SwiftTLSOfferedEPSK], @guaranteed @escaping @callee_guaranteed (@guaranteed SecExternalPreSharedKey?) -> ()) -> ())?(v49, v50);

      v52 = v32;

      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v53, v54))
      {
        v77 = v53;
        v55 = v74;
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        *v56 = 138414082;
        v58 = *(v79 + v32);
        *(v56 + 4) = v58;
        v79 = v57;
        *v57 = v58;
        *(v56 + 12) = 1024;
        v59 = v58;

        *(v56 + 14) = v29 != 0;
        *(v56 + 18) = 1024;
        v60 = v78;

        *(v56 + 20) = v82 != 0;
        *(v56 + 24) = 1024;
        if (v40)
        {
          if (v40 >> 62)
          {
            if (v40 >= 0)
            {
              v71 = v40 & 0xFFFFFFFFFFFFFF8;
            }

            else
            {
              v71 = v40;
            }

            v61 = MEMORY[0x1B274D9C0](v71);
          }

          else
          {
            v61 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v62 = v55;

          v63 = v61 != 0;
        }

        else
        {
          v63 = 0;
          v62 = v55;
        }

        *(v56 + 26) = v63;

        *(v56 + 30) = 1024;
        v65 = v87;
        v66 = v87 != 0;
        outlined consume of (@escaping @callee_guaranteed (@guaranteed [SwiftOfferedEPSK], @guaranteed @escaping @callee_guaranteed (@unowned Int, @in_guaranteed EPSK?) -> ()) -> ())?(v87);
        *(v56 + 32) = v66;
        outlined consume of (@escaping @callee_guaranteed (@guaranteed [SwiftOfferedEPSK], @guaranteed @escaping @callee_guaranteed (@unowned Int, @in_guaranteed EPSK?) -> ()) -> ())?(v65);
        *(v56 + 36) = 1024;
        *(v56 + 38) = v83 & 1;
        *(v56 + 42) = 1024;
        v67 = v88;

        *(v56 + 44) = v67 != 0;

        *(v56 + 48) = 1024;
        *(v56 + 50) = v73 & 1;
        v68 = v77;
        _os_log_impl(&dword_1B25F5000, v77, v54, "%@: server STLSRecordHandler initialized: serverKey? %{BOOL}d, alpn? %{BOOL}d, EPSKs? %{BOOL}d, epskSelectionBlock? %{BOOL}d, rawEPSKsEnabled? %{BOOL}d, pakeServerConfiguration? %{BOOL}d, enableEarlyData? %{BOOL}d", v56, 0x36u);
        v69 = v79;
        outlined destroy of P256.Signing.PrivateKey?(v79, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1B274ECF0](v69, -1, -1);
        MEMORY[0x1B274ECF0](v56, -1, -1);
      }

      else
      {

        outlined consume of (@escaping @callee_guaranteed (@guaranteed [SwiftOfferedEPSK], @guaranteed @escaping @callee_guaranteed (@unowned Int, @in_guaranteed EPSK?) -> ()) -> ())?(v49);

        v64 = v78;

        outlined consume of (@escaping @callee_guaranteed (@guaranteed [SwiftOfferedEPSK], @guaranteed @escaping @callee_guaranteed (@unowned Int, @in_guaranteed EPSK?) -> ()) -> ())?(v49);
      }

      outlined destroy of TLSRecordHandler(v81, type metadata accessor for ServerHandshakeStateMachine);
    }
  }

  else
  {

    v32 = v86;
  }

  v90.receiver = v32;
  v90.super_class = ObjectType;
  return objc_msgSendSuper2(&v90, sel_init);
}

uint64_t specialized STLSRecordHandler.alertToOSStatusHelper(alert:peerAlert:)(char a1, char a2)
{
  result = 4294957494;
  switch(a1)
  {
    case 1:
      if (a2)
      {
        result = 4294957477;
      }

      else
      {
        result = 4294957440;
      }

      break;
    case 2:
      if (a2)
      {
        result = 4294957476;
      }

      else
      {
        result = 4294957450;
      }

      break;
    case 3:
      if (a2)
      {
        result = 4294957474;
      }

      else
      {
        result = 4294957449;
      }

      break;
    case 4:
      if (a2)
      {
        result = 4294957472;
      }

      else
      {
        result = 4294957438;
      }

      break;
    case 5:
      result = 4294957488;
      break;
    case 6:
      if (a2)
      {
        result = 4294957470;
      }

      else
      {
        result = 4294957488;
      }

      break;
    case 7:
      if (a2)
      {
        result = 4294957469;
      }

      else
      {
        result = 4294957488;
      }

      break;
    case 8:
      if (a2)
      {
        result = 4294957468;
      }

      else
      {
        result = 4294957482;
      }

      break;
    case 9:
      if (a2)
      {
        result = 4294957471;
      }

      else
      {
        result = 4294957488;
      }

      break;
    case 10:
      result = 4294957466;
      break;
    case 11:
      if (a2)
      {
        result = 4294957465;
      }

      else
      {
        result = 4294957483;
      }

      break;
    case 12:
      result = 4294957464;
      break;
    case 13:
      if (a2)
      {
        result = 4294957463;
      }

      else
      {
        result = 4294957437;
      }

      break;
    case 14:
      if (a2)
      {
        result = 4294957462;
      }

      else
      {
        result = 4294957451;
      }

      break;
    case 15:
      result = 4294957460;
      break;
    case 16:
      if (a2)
      {
        result = 4294957459;
      }

      else
      {
        result = 4294957494;
      }

      break;
    case 17:
      if (a2)
      {
        result = 4294957458;
      }

      else
      {
        result = 4294957486;
      }

      break;
    case 18:
      result = 4294957436;
      break;
    case 19:
      result = 4294957457;
      break;
    case 20:
      result = 4294957435;
      break;
    case 21:
    case 22:
    case 23:
      result = 4294957496;
      break;
    case 24:
      result = 4294957432;
      break;
    case 25:
      if (a2)
      {
        result = 4294957467;
      }

      else
      {
        result = 4294957433;
      }

      break;
    case 26:
    case 27:
      return result;
    default:
      result = 4294957491;
      break;
  }

  return result;
}

uint64_t specialized knownTLSAlert.init(rawValue:)(unsigned __int8 a1)
{
  v1 = a1;
  result = 27;
  switch(v1)
  {
    case 0:
      result = 0;
      break;
    case 10:
      result = 1;
      break;
    case 20:
      result = 2;
      break;
    case 22:
      result = 3;
      break;
    case 40:
      result = 4;
      break;
    case 42:
      result = 5;
      break;
    case 43:
      result = 6;
      break;
    case 44:
      result = 7;
      break;
    case 45:
      result = 8;
      break;
    case 46:
      result = 9;
      break;
    case 47:
      result = 10;
      break;
    case 48:
      result = 11;
      break;
    case 49:
      result = 12;
      break;
    case 50:
      result = 13;
      break;
    case 51:
      result = 14;
      break;
    case 70:
      result = 15;
      break;
    case 71:
      result = 16;
      break;
    case 80:
      result = 17;
      break;
    case 86:
      result = 18;
      break;
    case 90:
      result = 19;
      break;
    case 109:
      result = 20;
      break;
    case 110:
      result = 21;
      break;
    case 112:
      result = 22;
      break;
    case 113:
      result = 23;
      break;
    case 115:
      result = 24;
      break;
    case 116:
      result = 25;
      break;
    case 120:
      result = 26;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t outlined copy of TLSError(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

uint64_t outlined copy of TLSError?(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return outlined copy of TLSError(a1, a2, a3);
  }

  return a1;
}

uint64_t outlined consume of TLSError?(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return outlined consume of TLSError(a1, a2, a3);
  }

  return a1;
}

uint64_t outlined init with take of TLSRecordHandler(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined assign with take of TLSRecordHandler?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary16TLSRecordHandlerVSgMd, &_s15SwiftTLSLibrary16TLSRecordHandlerVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type SwiftTLSFeatureFlags and conformance SwiftTLSFeatureFlags()
{
  result = lazy protocol witness table cache variable for type SwiftTLSFeatureFlags and conformance SwiftTLSFeatureFlags;
  if (!lazy protocol witness table cache variable for type SwiftTLSFeatureFlags and conformance SwiftTLSFeatureFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SwiftTLSFeatureFlags and conformance SwiftTLSFeatureFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SwiftTLSFeatureFlags and conformance SwiftTLSFeatureFlags;
  if (!lazy protocol witness table cache variable for type SwiftTLSFeatureFlags and conformance SwiftTLSFeatureFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SwiftTLSFeatureFlags and conformance SwiftTLSFeatureFlags);
  }

  return result;
}

uint64_t outlined destroy of TLSRecordHandler(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double _s15SwiftTLSLibrary23PAKEClientConfigurationVSgWOi0_(uint64_t a1)
{
  *(a1 + 112) = 0;
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 120) = 2;
  return result;
}

uint64_t type metadata accessor for SwiftTLSExternalPreSharedKey(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t outlined init with copy of TLSRecordHandler(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t thunk for @escaping @callee_unowned @convention(block) (@unowned NSArray, @unowned @escaping @callee_unowned @convention(block) (@unowned SecExternalPreSharedKey?) -> ()) -> ()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SwiftTLSExternalPreSharedKey(0, &lazy cache variable for type metadata for SwiftTLSOfferedEPSK, &off_1E7B2E038);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v11[4] = a2;
  v11[5] = a3;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = thunk for @escaping @callee_guaranteed (@guaranteed SecExternalPreSharedKey?) -> ();
  v11[3] = &block_descriptor;
  v8 = _Block_copy(v11);
  v9 = *(a4 + 16);

  v9(a4, isa, v8);
  _Block_release(v8);
}

void thunk for @escaping @callee_guaranteed (@guaranteed SecExternalPreSharedKey?) -> ()(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

id STLSServerHandshaker.init(_:serverKey:quicTransportParameters:alpn:EPSKs:epskSelectionBlock:useRawEPSKs:pakeServerConfiguration:enableEarlyData:)(void *a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, void *a9, unsigned __int8 a10)
{
  v11 = v10;
  LODWORD(v223) = a8;
  v235 = a7;
  v234 = a6;
  v245 = a5;
  v241 = a4;
  v238 = a3;
  v239 = a2;
  v240 = a1;
  v236 = a9;
  ObjectType = swift_getObjectType();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary22PartialHandshakeResultVSgMd, &_s15SwiftTLSLibrary22PartialHandshakeResultVSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v197 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary27ServerHandshakeStateMachineVSgMd, &_s15SwiftTLSLibrary27ServerHandshakeStateMachineVSgMR);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v209 = &v197 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v207 = &v197 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v211 = &v197 - v22;
  v23 = type metadata accessor for SymmetricKey();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v246 = &v197 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v233 = type metadata accessor for EPSK(0);
  v232 = *(v233 - 8);
  v27 = *(v232 + 64);
  v28 = MEMORY[0x1EEE9AC00](v233);
  v243 = &v197 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v231 = (&v197 - v31);
  MEMORY[0x1EEE9AC00](v30);
  v242 = &v197 - v32;
  v221 = type metadata accessor for ServerHandshakeStateMachine.Configuration();
  v33 = *(*(v221 - 8) + 64);
  v34 = MEMORY[0x1EEE9AC00](v221);
  v208 = &v197 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x1EEE9AC00](v34);
  v206 = &v197 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v210 = &v197 - v39;
  MEMORY[0x1EEE9AC00](v38);
  v222 = (&v197 - v40);
  v220 = type metadata accessor for NSFastEnumerationIterator();
  *&v219 = *(v220 - 1);
  v41 = *(v219 + 64);
  MEMORY[0x1EEE9AC00](v220);
  v43 = &v197 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMd, &_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMR);
  v45 = *(*(v44 - 8) + 64);
  v46 = MEMORY[0x1EEE9AC00](v44 - 8);
  v237 = &v197 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = MEMORY[0x1EEE9AC00](v46);
  v50 = &v197 - v49;
  MEMORY[0x1EEE9AC00](v48);
  v224 = &v197 - v51;
  v52 = OBJC_IVAR____TtC10nwswifttls20STLSServerHandshaker_stateMachine;
  v53 = type metadata accessor for ServerHandshakeStateMachine(0);
  v54 = *(v53 - 8);
  v55 = *(v54 + 56);
  v228 = v52;
  v215 = v53;
  v214 = v55;
  v213 = v54 + 56;
  (v55)(&v11[v52], 1, 1);
  v56 = OBJC_IVAR____TtC10nwswifttls20STLSServerHandshaker_partialHandshakeResult;
  v57 = type metadata accessor for PartialHandshakeResult(0);
  v58 = *(v57 - 8);
  v59 = *(v58 + 56);
  v230 = v56;
  v218 = v57;
  v217 = v59;
  v216 = v58 + 56;
  (v59)(&v11[v56], 1, 1);
  v60 = OBJC_IVAR____TtC10nwswifttls20STLSServerHandshaker_readEncryptionLevel;
  v61 = type metadata accessor for EncryptionLevel(0);
  v62 = *(*(v61 - 8) + 56);
  v227 = v60;
  v62(&v11[v60], 1, 1, v61);
  v226 = OBJC_IVAR____TtC10nwswifttls20STLSServerHandshaker_writeEncryptionLevel;
  v62(&v11[OBJC_IVAR____TtC10nwswifttls20STLSServerHandshaker_writeEncryptionLevel], 1, 1, v61);
  v63 = v240;
  v64 = v11;
  v225 = OBJC_IVAR____TtC10nwswifttls20STLSServerHandshaker_latestError;
  *&v11[OBJC_IVAR____TtC10nwswifttls20STLSServerHandshaker_latestError] = 0;
  v65 = OBJC_IVAR____TtC10nwswifttls20STLSServerHandshaker_clientAppSecret;
  v212 = v24;
  v66 = *(v24 + 56);
  v244 = v23;
  v67 = v23;
  v68 = v238;
  v66(&v11[OBJC_IVAR____TtC10nwswifttls20STLSServerHandshaker_clientAppSecret], 1, 1, v67);
  if (!v63 || !v68 || !v241)
  {

    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v82 = type metadata accessor for Logger();
    __swift_project_value_buffer(v82, logger);
    v83 = Logger.logObject.getter();
    v84 = static os_log_type_t.error.getter();
    v85 = os_log_type_enabled(v83, v84);
    v86 = v234;
    if (v85)
    {
      v87 = v68;
      v88 = swift_slowAlloc();
      *v88 = 0;
      _os_log_impl(&dword_1B25F5000, v83, v84, "Cannot start the handshake with NULL parameters", v88, 2u);
      MEMORY[0x1B274ECF0](v88, -1, -1);
      outlined consume of (@escaping @callee_guaranteed (@guaranteed [SwiftOfferedEPSK], @guaranteed @escaping @callee_guaranteed (@unowned Int, @in_guaranteed EPSK?) -> ()) -> ())?(v86);
    }

    else
    {
      outlined consume of (@escaping @callee_guaranteed (@guaranteed [SwiftOfferedEPSK], @guaranteed @escaping @callee_guaranteed (@unowned Int, @in_guaranteed EPSK?) -> ()) -> ())?(v234);
    }

    goto LABEL_16;
  }

  v199 = v15;
  v69 = type metadata accessor for P256.Signing.PrivateKey();
  v70 = *(v69 - 8);
  v71 = v70;
  v204 = *(v70 + 56);
  v203 = v70 + 56;
  v204(v224, 1, 1, v69);
  v72 = v239;
  if (v239)
  {
    v202 = v63;
    v205 = v68;
    v73 = v241;
    convertPrivateKey(_:)(v72, v50);
    if ((*(v71 + 48))(v50, 1, v69) == 1)
    {

      outlined destroy of P256.Signing.PrivateKey?(v50, &_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMd, &_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMR);
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v74 = type metadata accessor for Logger();
      __swift_project_value_buffer(v74, logger);
      v75 = Logger.logObject.getter();
      v76 = static os_log_type_t.error.getter();
      v77 = os_log_type_enabled(v75, v76);
      v78 = v234;
      if (v77)
      {
        v79 = swift_slowAlloc();
        *v79 = 0;
        _os_log_impl(&dword_1B25F5000, v75, v76, "unable to convert server private key", v79, 2u);
        MEMORY[0x1B274ECF0](v79, -1, -1);

        outlined consume of (@escaping @callee_guaranteed (@guaranteed [SwiftOfferedEPSK], @guaranteed @escaping @callee_guaranteed (@unowned Int, @in_guaranteed EPSK?) -> ()) -> ())?(v78);
        v80 = v202;

        v81 = v205;
      }

      else
      {

        v165 = v205;
        v166 = v202;

        outlined consume of (@escaping @callee_guaranteed (@guaranteed [SwiftOfferedEPSK], @guaranteed @escaping @callee_guaranteed (@unowned Int, @in_guaranteed EPSK?) -> ()) -> ())?(v78);
      }

      outlined destroy of P256.Signing.PrivateKey?(v224, &_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMd, &_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMR);
LABEL_16:
      outlined destroy of P256.Signing.PrivateKey?(v64 + v228, &_s15SwiftTLSLibrary27ServerHandshakeStateMachineVSgMd, &_s15SwiftTLSLibrary27ServerHandshakeStateMachineVSgMR);
      outlined destroy of P256.Signing.PrivateKey?(v64 + v230, &_s15SwiftTLSLibrary22PartialHandshakeResultVSgMd, &_s15SwiftTLSLibrary22PartialHandshakeResultVSgMR);
      outlined destroy of P256.Signing.PrivateKey?(v64 + v227, &_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);
      outlined destroy of P256.Signing.PrivateKey?(v64 + v226, &_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);

      outlined destroy of P256.Signing.PrivateKey?(v64 + v65, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
      v89 = *((*MEMORY[0x1E69E7D40] & *v64) + 0x30);
      v90 = *((*MEMORY[0x1E69E7D40] & *v64) + 0x34);
      swift_deallocPartialClassInstance();
      return 0;
    }

    v95 = v69;
    v96 = v224;
    outlined destroy of P256.Signing.PrivateKey?(v224, &_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMd, &_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMR);
    (*(v71 + 32))(v96, v50, v95);
    v97 = v96;
    v69 = v95;
    v204(v97, 0, 1, v95);
  }

  else
  {
    v92 = v63;
    v93 = v68;
    v94 = v241;
  }

  v201 = v64;
  NSArray.makeIterator()();
  NSFastEnumerationIterator.next()();
  v98 = v222;
  if (v254)
  {
    v205 = MEMORY[0x1E69E7CC0];
    do
    {
      while (1)
      {
        outlined init with take of Any(&v252, &v249);
        if (swift_dynamicCast())
        {
          break;
        }

        NSFastEnumerationIterator.next()();
        if (!v254)
        {
          goto LABEL_31;
        }
      }

      v99 = v247;
      v100 = v248;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v205 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v205 + 2) + 1, 1, v205);
      }

      v101 = v205;
      v103 = *(v205 + 2);
      v102 = *(v205 + 3);
      if (v103 >= v102 >> 1)
      {
        v101 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v102 > 1), v103 + 1, 1, v205);
      }

      *(v101 + 2) = v103 + 1;
      v205 = v101;
      v104 = &v101[16 * v103];
      *(v104 + 4) = v99;
      *(v104 + 5) = v100;
      NSFastEnumerationIterator.next()();
      v98 = v222;
    }

    while (v254);
  }

  else
  {
    v205 = MEMORY[0x1E69E7CC0];
  }

LABEL_31:
  v105 = v69;
  v198 = v65;
  LODWORD(v202) = a10;
  (*(v219 + 8))(v43, v220);
  v220 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v107 = v106;
  outlined init with copy of Any?(v224, v237, &_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMd, &_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMR);
  v108 = v68;
  v109 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v111 = v110;
  v200 = v108;

  v112 = 0;
  v113 = v111 >> 62;
  if ((v111 >> 62) > 1)
  {
    if (v113 == 2)
    {
      v112 = *(v109 + 16);
    }
  }

  else if (v113)
  {
    v112 = v109;
  }

  v114 = v221;
  v115 = *(v221 + 20);
  v204(v98 + v115, 1, 1, v105);
  v116 = (v98 + v114[6]);
  *v116 = xmmword_1B26C5EF0;
  v116[2] = 0;
  v117 = v114[7];
  *v98 = v220;
  v98[1] = v107;
  v118 = v205;

  outlined assign with take of PartialHandshakeResult?(v237, v98 + v115, &_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMd, &_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMR);
  v119 = v116[2];
  outlined consume of ByteBuffer?(*v116, v116[1]);
  *v116 = v109;
  v116[1] = v111;
  v116[2] = v112;
  *(v98 + v117) = v118;
  *(v98 + v114[8]) = v202 & 1;
  *(v98 + v114[9]) = 1;
  *(v98 + v114[10]) = v223 & 1;
  v120 = v245;
  if (v245)
  {
    v121 = v235;
    v122 = v234;
    if (v245 >> 62)
    {
      if (v245 >= 0)
      {
        v167 = v245 & 0xFFFFFFFFFFFFFF8;
      }

      else
      {
        v167 = v245;
      }

      v123 = MEMORY[0x1B274D9C0](v167);
      if (v123)
      {
LABEL_39:
        if (v123 < 1)
        {
          __break(1u);
          swift_once();
          v170 = type metadata accessor for Logger();
          __swift_project_value_buffer(v170, logger);
          v171 = Logger.logObject.getter();
          v172 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v171, v172))
          {
            v173 = swift_slowAlloc();
            *v173 = 0;
            _os_log_impl(&dword_1B25F5000, v171, v172, "unable to create handshake state machine with epsks", v173, 2u);
            MEMORY[0x1B274ECF0](v173, -1, -1);
          }

          v174 = v208;
          outlined init with copy of ServerHandshakeStateMachine(v98, v208, type metadata accessor for ServerHandshakeStateMachine.Configuration);
          v183 = v209;
          ServerHandshakeStateMachine.init(configuration:)(v174, v209);

          outlined consume of (@escaping @callee_guaranteed (@guaranteed [SwiftOfferedEPSK], @guaranteed @escaping @callee_guaranteed (@unowned Int, @in_guaranteed EPSK?) -> ()) -> ())?(v114);
          v186 = v200;

          outlined destroy of P256.Signing.PrivateKey?(v224, &_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMd, &_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMR);
          v187 = v98;
          goto LABEL_93;
        }

        v237 = v120 & 0xC000000000000001;
        v221 = v212 + 32;
        v220 = (v212 + 8);

        v124 = v120;
        v125 = 0;
        v126 = MEMORY[0x1E69E7CC0];
        v223 = xmmword_1B26C5EE0;
        v219 = 0x8400102uLL;
        v238 = v123;
        do
        {
          if (v237)
          {
            v127 = MEMORY[0x1B274D8D0](v125, v124);
          }

          else
          {
            v127 = *(v124 + 8 * v125 + 32);
          }

          v128 = v127;
          v129 = [v128 external_identity];
          v130 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v132 = v131;

          v133 = 0;
          v134 = v132 >> 62;
          if ((v132 >> 62) > 1)
          {
            if (v134 == 2)
            {
              v133 = *(v130 + 16);
            }
          }

          else if (v134)
          {
            v133 = v130;
          }

          v135 = [v128 epsk];
          v136 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v138 = v137;

          *&v252 = v136;
          *(&v252 + 1) = v138;
          SymmetricKey.init<A>(data:)();
          v139 = [v128 context];

          v140 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v142 = v141;

          v143 = 0;
          v144 = v142 >> 62;
          if ((v142 >> 62) > 1)
          {
            if (v144 == 2)
            {
              v143 = *(v140 + 16);
            }
          }

          else if (v144)
          {
            v143 = v140;
          }

          v145 = v246;
          if (SymmetricKey.bitCount.getter() > 127)
          {
            v153 = v133;
            v154 = v126;
            v155 = v231;
            *v231 = v130;
            v155[1] = v132;
            v155[2] = v153;
            v156 = v233;
            (*v221)(v155 + *(v233 + 20), v145, v244);
            v157 = (v155 + *(v156 + 24));
            *v157 = v140;
            v157[1] = v142;
            v157[2] = v143;
            v158 = v155;
            v126 = v154;
            v159 = v242;
            outlined init with take of EncryptionLevel(v158, v242, type metadata accessor for EPSK);
            outlined init with copy of ServerHandshakeStateMachine(v159, v243, type metadata accessor for EPSK);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v126 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v154[2] + 1, 1, v154);
            }

            v161 = v126[2];
            v160 = v126[3];
            if (v161 >= v160 >> 1)
            {
              v126 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v160 > 1, v161 + 1, 1, v126);
            }

            outlined destroy of ServerHandshakeStateMachine(v242, type metadata accessor for EPSK);
            v126[2] = v161 + 1;
            outlined init with take of EncryptionLevel(v243, v126 + ((*(v232 + 80) + 32) & ~*(v232 + 80)) + *(v232 + 72) * v161, type metadata accessor for EPSK);
          }

          else
          {
            v252 = v223;
            v253 = 2;
            lazy protocol witness table accessor for type TLSError and conformance TLSError();
            swift_willThrowTypedImpl();
            outlined consume of Data._Representation(v140, v142);
            outlined consume of Data._Representation(v130, v132);
            (*v220)(v145, v244);
            if (one-time initialization token for logger != -1)
            {
              swift_once();
            }

            v146 = type metadata accessor for Logger();
            __swift_project_value_buffer(v146, logger);
            v147 = Logger.logObject.getter();
            v148 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v147, v148))
            {
              v149 = swift_slowAlloc();
              v150 = swift_slowAlloc();
              *v149 = v219;
              swift_allocError();
              *v151 = v223;
              *(v151 + 16) = 2;
              v152 = _swift_stdlib_bridgeErrorToNSError();
              *(v149 + 4) = v152;
              *v150 = v152;
              _os_log_impl(&dword_1B25F5000, v147, v148, "unable to create EPSK %@", v149, 0xCu);
              outlined destroy of P256.Signing.PrivateKey?(v150, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
              MEMORY[0x1B274ECF0](v150, -1, -1);
              MEMORY[0x1B274ECF0](v149, -1, -1);
            }
          }

          v125 = v125 + 1;
          v124 = v245;
        }

        while (v238 != v125);
        v162 = v245;

        v120 = v162;

        v121 = v235;
        v122 = v234;
        v98 = v222;
        if (!v234)
        {
          goto LABEL_77;
        }

LABEL_69:
        v163 = swift_allocObject();
        *(v163 + 16) = v122;
        *(v163 + 24) = v121;
        v164 = partial apply for closure #1 in STLSServerHandshaker.init(_:serverKey:quicTransportParameters:alpn:EPSKs:epskSelectionBlock:useRawEPSKs:pakeServerConfiguration:enableEarlyData:);
        goto LABEL_78;
      }
    }

    else
    {
      v123 = *((v245 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v123)
      {
        goto LABEL_39;
      }
    }

    v126 = MEMORY[0x1E69E7CC0];
    if (v122)
    {
      goto LABEL_69;
    }
  }

  else
  {

    v126 = MEMORY[0x1E69E7CC0];
    v121 = v235;
    v122 = v234;
    if (v234)
    {
      goto LABEL_69;
    }
  }

LABEL_77:
  v164 = 0;
  v163 = 0;
LABEL_78:
  if (!v236)
  {
    _sSaySo19SwiftTLSOfferedEPSKCGSo23SecExternalPreSharedKeyCSgIegg_Ieggg_SgWOy_0(v122);

    v168 = v210;
    outlined init with copy of ServerHandshakeStateMachine(v98, v210, type metadata accessor for ServerHandshakeStateMachine.Configuration);
    _sSaySo19SwiftTLSOfferedEPSKCGSo23SecExternalPreSharedKeyCSgIegg_Ieggg_SgWOy_0(v164);
    v169 = v211;
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineV5epsks21epskSelectionCallback13configurationACSayAA4EPSKVG_ySayAA0a7OfferedL0VG_ySi_AHSgtctcSgAC13ConfigurationVtAA8TLSErrorOYKcfC(v126, v164, v163, v168, &v251, v211);
    outlined destroy of P256.Signing.PrivateKey?(v224, &_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMd, &_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMR);

    v183 = v169;
    v184 = v200;

    v185 = v164;
    v186 = v184;
    outlined consume of (@escaping @callee_guaranteed (@guaranteed [SwiftOfferedEPSK], @guaranteed @escaping @callee_guaranteed (@unowned Int, @in_guaranteed EPSK?) -> ()) -> ())?(v185);
    v187 = v98;
LABEL_93:
    outlined destroy of ServerHandshakeStateMachine(v187, type metadata accessor for ServerHandshakeStateMachine.Configuration);
    v214(v183, 0, 1, v215);
    v188 = v201;
    goto LABEL_94;
  }

  _sSaySo19SwiftTLSOfferedEPSKCGSo23SecExternalPreSharedKeyCSgIegg_Ieggg_SgWOy_0(v122);

  if (v120)
  {

LABEL_87:
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v175 = type metadata accessor for Logger();
    __swift_project_value_buffer(v175, logger);
    v176 = Logger.logObject.getter();
    v177 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v176, v177))
    {
      v178 = swift_slowAlloc();
      *v178 = 0;
      _os_log_impl(&dword_1B25F5000, v176, v177, "cannot provide both epsks and pake server configuration", v178, 2u);
      MEMORY[0x1B274ECF0](v178, -1, -1);

      outlined consume of (@escaping @callee_guaranteed (@guaranteed [SwiftOfferedEPSK], @guaranteed @escaping @callee_guaranteed (@unowned Int, @in_guaranteed EPSK?) -> ()) -> ())?(v164);
      outlined consume of (@escaping @callee_guaranteed (@guaranteed [SwiftOfferedEPSK], @guaranteed @escaping @callee_guaranteed (@unowned Int, @in_guaranteed EPSK?) -> ()) -> ())?(v122);
      v179 = v240;

      v180 = v200;
    }

    else
    {

      v181 = v200;
      v182 = v240;

      outlined consume of (@escaping @callee_guaranteed (@guaranteed [SwiftOfferedEPSK], @guaranteed @escaping @callee_guaranteed (@unowned Int, @in_guaranteed EPSK?) -> ()) -> ())?(v164);
      outlined consume of (@escaping @callee_guaranteed (@guaranteed [SwiftOfferedEPSK], @guaranteed @escaping @callee_guaranteed (@unowned Int, @in_guaranteed EPSK?) -> ()) -> ())?(v122);
    }

    outlined destroy of P256.Signing.PrivateKey?(v224, &_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMd, &_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMR);
    outlined destroy of ServerHandshakeStateMachine(v98, type metadata accessor for ServerHandshakeStateMachine.Configuration);
    v64 = v201;
    v65 = v198;
    goto LABEL_16;
  }

  if (v122)
  {

    goto LABEL_87;
  }

  v195 = v206;
  outlined init with copy of ServerHandshakeStateMachine(v98, v206, type metadata accessor for ServerHandshakeStateMachine.Configuration);
  v196 = v207;
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV4pake13configurationACSayAA16PAKEServerRecordVG_AC13ConfigurationVtAA8TLSErrorOYKcfC(v236, v195, v207);
  outlined destroy of P256.Signing.PrivateKey?(v224, &_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMd, &_s9CryptoKit4P256O7SigningO10PrivateKeyVSgMR);

  v186 = v200;
  outlined destroy of ServerHandshakeStateMachine(v98, type metadata accessor for ServerHandshakeStateMachine.Configuration);
  v214(v196, 0, 1, v215);
  v188 = v201;
  v183 = v196;
LABEL_94:
  v189 = v228;
  swift_beginAccess();
  outlined assign with take of PartialHandshakeResult?(v183, v188 + v189, &_s15SwiftTLSLibrary27ServerHandshakeStateMachineVSgMd, &_s15SwiftTLSLibrary27ServerHandshakeStateMachineVSgMR);
  swift_endAccess();
  v190 = ObjectType;
  v191 = v239;
  v192 = v199;
  v217(v199, 1, 1, v218);
  v193 = v230;
  swift_beginAccess();
  outlined assign with take of PartialHandshakeResult?(v192, v188 + v193, &_s15SwiftTLSLibrary22PartialHandshakeResultVSgMd, &_s15SwiftTLSLibrary22PartialHandshakeResultVSgMR);
  swift_endAccess();
  v250.receiver = v188;
  v250.super_class = v190;
  v194 = objc_msgSendSuper2(&v250, sel_init);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed [SwiftOfferedEPSK], @guaranteed @escaping @callee_guaranteed (@unowned Int, @in_guaranteed EPSK?) -> ()) -> ())?(v122);

  return v194;
}

uint64_t closure #1 in STLSServerHandshaker.init(_:serverKey:quicTransportParameters:alpn:EPSKs:epskSelectionBlock:useRawEPSKs:pakeServerConfiguration:enableEarlyData:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, void, void))
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
    _os_log_impl(&dword_1B25F5000, v9, v10, "In handshaker selection callback...", v11, 2u);
    MEMORY[0x1B274ECF0](v11, -1, -1);
  }

  v12 = *(a1 + 16);
  v13 = MEMORY[0x1E69E7CC0];
  if (v12)
  {
    v28 = a2;
    v29 = a3;
    v30 = a4;
    v32 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    v14 = (a1 + 56);
    do
    {
      v31 = v12;
      v15 = *(v14 - 3);
      v16 = *(v14 - 2);
      v17 = *(v14 - 1);
      v18 = *v14;
      if (*v14 >> 60 == 15)
      {
        v19 = 0;
      }

      else
      {
        v19 = *(v14 - 1);
      }

      if (*v14 >> 60 == 15)
      {
        v20 = 0xC000000000000000;
      }

      else
      {
        v20 = *v14;
      }

      v21 = objc_allocWithZone(SwiftTLSOfferedEPSK);
      outlined copy of Data._Representation(v15, v16);
      outlined copy of Data?(v17, v18);
      outlined copy of Data._Representation(v15, v16);
      outlined copy of Data?(v17, v18);
      isa = Data._bridgeToObjectiveC()().super.isa;
      v23 = Data._bridgeToObjectiveC()().super.isa;
      outlined consume of Data._Representation(v19, v20);
      [v21 initWithExternalIdentity:isa :v23];

      outlined consume of Data._Representation(v15, v16);
      outlined consume of Data._Representation(v15, v16);
      outlined consume of ByteBuffer?(v17, v18);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v24 = *(v32 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v14 += 4;
      v12 = v31 - 1;
    }

    while (v31 != 1);
    v13 = v32;
    a4 = v30;
    a2 = v28;
    a3 = v29;
  }

  v25 = swift_allocObject();
  v25[2] = a2;
  v25[3] = a3;
  v25[4] = v13;

  a4(v26, partial apply for closure #2 in closure #1 in STLSServerHandshaker.init(_:serverKey:quicTransportParameters:alpn:EPSKs:epskSelectionBlock:useRawEPSKs:pakeServerConfiguration:enableEarlyData:), v25);
}

void closure #2 in closure #1 in STLSServerHandshaker.init(_:serverKey:quicTransportParameters:alpn:EPSKs:epskSelectionBlock:useRawEPSKs:pakeServerConfiguration:enableEarlyData:)(id a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for SymmetricKey();
  v58 = *(v8 - 8);
  v59 = v8;
  v9 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for EPSK(0);
  v60 = *(v12 - 8);
  v61 = v12;
  v13 = *(v60 + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  *&v57 = &v53 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary4EPSKVSgMd, &_s15SwiftTLSLibrary4EPSKVSgMR);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v53 - v20;
  if (one-time initialization token for logger != -1)
  {
    goto LABEL_35;
  }

  while (1)
  {
    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, logger);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1B25F5000, v23, v24, "In handshaker complete block...", v25, 2u);
      MEMORY[0x1B274ECF0](v25, -1, -1);
    }

    if (!a1)
    {
      (*(v60 + 56))(v21, 1, 1, v61);
      (a2)(0, v21);
      outlined destroy of P256.Signing.PrivateKey?(v21, &_s15SwiftTLSLibrary4EPSKVSgMd, &_s15SwiftTLSLibrary4EPSKVSgMR);
      return;
    }

    a1 = a1;
    v26 = [a1 external_identity];
    v27 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    v30 = 0;
    v31 = v29 >> 62;
    v54 = a3;
    v55 = a2;
    if ((v29 >> 62) > 1)
    {
      if (v31 == 2)
      {
        v30 = *(v27 + 16);
      }
    }

    else if (v31)
    {
      v30 = v27;
    }

    v56 = v27;
    v32 = [a1 epsk];
    v33 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;

    *&v62 = v33;
    *(&v62 + 1) = v35;
    SymmetricKey.init<A>(data:)();
    v36 = [a1 context];
    a2 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;

    v39 = 0;
    v40 = v38 >> 62;
    if ((v38 >> 62) > 1)
    {
      if (v40 == 2)
      {
        v39 = *(a2 + 16);
      }
    }

    else if (v40)
    {
      v39 = a2;
    }

    if (SymmetricKey.bitCount.getter() <= 127)
    {
      break;
    }

    *v16 = v56;
    *(v16 + 8) = v29;
    *(v16 + 16) = v53;
    v44 = v61;
    (*(v58 + 32))(v16 + *(v61 + 20), v11, v59);
    v45 = (v16 + *(v44 + 24));
    *v45 = a2;
    v45[1] = v38;
    v45[2] = v39;
    outlined init with take of EncryptionLevel(v16, v57, type metadata accessor for EPSK);
    a3 = a4 & 0xFFFFFFFFFFFFFF8;
    if (a4 >> 62)
    {
      if (a4 < 0)
      {
        v52 = a4;
      }

      else
      {
        v52 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      v46 = MEMORY[0x1B274D9C0](v52);
    }

    else
    {
      v46 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v16 = 0;
    v11 = (a4 & 0xC000000000000001);
    while (1)
    {
      if (v46 == v16)
      {
        (*(v60 + 56))(v21, 1, 1, v61);
        v55(0, v21);

        outlined destroy of P256.Signing.PrivateKey?(v21, &_s15SwiftTLSLibrary4EPSKVSgMd, &_s15SwiftTLSLibrary4EPSKVSgMR);
        v50 = v57;
LABEL_32:
        outlined destroy of ServerHandshakeStateMachine(v50, type metadata accessor for EPSK);
        return;
      }

      if (!v11)
      {
        break;
      }

      v47 = MEMORY[0x1B274D8D0](v16, a4);
LABEL_25:
      v48 = v47;
      *&v62 = v47;
      a2 = closure #1 in closure #2 in closure #1 in configureServerStateMachine(_:serverKey:quicTransportParameters:alpn:EPSKs:epskSelectionBlock:useRawEPSKs:pakeServerConfiguration:enableEarlyData:)(&v62, a1);

      if (a2)
      {
        v51 = v57;
        outlined init with copy of ServerHandshakeStateMachine(v57, v21, type metadata accessor for EPSK);
        (*(v60 + 56))(v21, 0, 1, v61);
        v55(v16, v21);

        outlined destroy of P256.Signing.PrivateKey?(v21, &_s15SwiftTLSLibrary4EPSKVSgMd, &_s15SwiftTLSLibrary4EPSKVSgMR);
        v50 = v51;
        goto LABEL_32;
      }

      if (__OFADD__(v16++, 1))
      {
        goto LABEL_34;
      }
    }

    if (v16 < *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v47 = *(a4 + 8 * v16 + 32);
      goto LABEL_25;
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    swift_once();
  }

  v57 = xmmword_1B26C5EE0;
  v62 = xmmword_1B26C5EE0;
  v63 = 2;
  lazy protocol witness table accessor for type TLSError and conformance TLSError();
  swift_willThrowTypedImpl();
  outlined consume of Data._Representation(a2, v38);
  outlined consume of Data._Representation(v56, v29);
  (*(v58 + 8))(v11, v59);
  v41 = swift_allocError();
  *v42 = v57;
  *(v42 + 16) = 2;
  (*(v60 + 56))(v21, 1, 1, v61);
  v43 = v41;
  v55(0, v21);

  outlined destroy of P256.Signing.PrivateKey?(v21, &_s15SwiftTLSLibrary4EPSKVSgMd, &_s15SwiftTLSLibrary4EPSKVSgMR);
}

id STLSServerHandshaker.init(_:quicTransportParameters:alpn:pakeContext:pakeClientIdentity:pakeServerIdentity:pakePasswordVerifier:)(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v8 = v7;
  ObjectType = swift_getObjectType();
  *(&v50 + 1) = &type metadata for SwiftTLSFeatureFlags;
  *&v51 = lazy protocol witness table accessor for type SwiftTLSFeatureFlags and conformance SwiftTLSFeatureFlags();
  v13 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_0(&v49);
  v43 = a4;
  v14 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSo6NSDataC_Tt0g5(v43);
  v16 = v15;
  v42 = a5;
  v17 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSo6NSDataC_Tt0g5(v42);
  v19 = v18;
  v41 = a6;
  v20 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSo6NSDataC_Tt0g5(v41);
  v22 = v21;
  v23 = a7;
  v25 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSo6NSDataC_Tt0g5(v23);
  if (v13)
  {
    v26 = 32150;
  }

  else
  {
    v26 = -1;
  }

  _s15SwiftTLSLibrary16PAKEServerRecordV6scheme7context14clientIdentity06serverH00I16PasswordVerifier9simulatedAcA10PAKESchemeV_10Foundation4DataVA3NSbtAA8TLSErrorOYKcfC(v26, v14, v16, v17, v19, v20, v22, v25, &v49, v24, 0, &v48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary16PAKEServerRecordVGMd, &_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary16PAKEServerRecordVGMR);
  v27 = swift_allocObject();
  v28 = v53;
  v29 = v55[0];
  *(v27 + 112) = v54;
  *(v27 + 128) = v29;
  *(v27 + 138) = *(v55 + 10);
  v30 = v49;
  v31 = v50;
  *(v27 + 16) = xmmword_1B26C6030;
  *(v27 + 32) = v30;
  v32 = v51;
  v33 = v52;
  *(v27 + 48) = v31;
  *(v27 + 64) = v32;
  *(v27 + 80) = v33;
  *(v27 + 96) = v28;
  v34 = objc_allocWithZone(ObjectType);
  outlined init with copy of PAKEServerRecord(&v49, v47);
  v35 = STLSServerHandshaker.init(_:serverKey:quicTransportParameters:alpn:EPSKs:epskSelectionBlock:useRawEPSKs:pakeServerConfiguration:enableEarlyData:)(a1, 0, a2, a3, 0, 0, 0, 0, v27, 0);
  v36 = v35;
  outlined destroy of PAKEServerRecord(&v49);

  if (v35)
  {
  }

  swift_getObjectType();
  v37 = *((*MEMORY[0x1E69E7D40] & *v8) + 0x30);
  v38 = *((*MEMORY[0x1E69E7D40] & *v8) + 0x34);
  swift_deallocPartialClassInstance();
  return v35;
}

NSData_optional __swiftcall STLSServerHandshaker.continueHandshake(_:)(NSData_optional a1)
{
  v2 = v1;
  isa = a1.value.super.isa;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v122 = &v108 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v118 = &v108 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v108 - v10;
  v12 = type metadata accessor for EncryptionLevel(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 8);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v115 = &v108 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v108 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = (&v108 - v21);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v114 = &v108 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v116 = &v108 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v117 = (&v108 - v27);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary22PartialHandshakeResultVSgMd, &_s15SwiftTLSLibrary22PartialHandshakeResultVSgMR);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v31 = &v108 - v30;
  if (isa)
  {
    v119 = v11;
    v120 = v22;
    v121 = v19;
    v32 = v12;
    v33 = isa;
    v34 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v34;
    v37 = v35;
    v38 = 0;
    v39 = v35 >> 62;
    v40 = v13;
    if ((v35 >> 62) > 1)
    {
      if (v39 == 2)
      {
        v38 = *(v34 + 16);
      }
    }

    else if (v39)
    {
      v38 = v34;
    }

    v124 = v34;
    v125 = v35;
    v126 = v38;
    v41 = OBJC_IVAR____TtC10nwswifttls20STLSServerHandshaker_stateMachine;
    swift_beginAccess();
    v42 = type metadata accessor for ServerHandshakeStateMachine(0);
    if (!(*(*(v42 - 8) + 48))(&v2[v41], 1, v42))
    {
      ServerHandshakeStateMachine.receivedNetworkData(_:)(&v124);
      v36 = v124;
      v37 = v125;
    }

    swift_endAccess();

    outlined consume of Data._Representation(v36, v37);
    v12 = v32;
    v13 = v40;
    v22 = v120;
    v19 = v121;
    v11 = v119;
  }

  v43 = OBJC_IVAR____TtC10nwswifttls20STLSServerHandshaker_stateMachine;
  swift_beginAccess();
  v44 = type metadata accessor for ServerHandshakeStateMachine(0);
  v45 = (*(*(v44 - 8) + 48))(&v2[v43], 1, v44);
  if (v45 == 1)
  {
    goto LABEL_66;
  }

  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV07processD0AA07PartialD6ResultVSgyAA8TLSErrorOYKF(&v123, v31);
  v47 = v11;
  swift_endAccess();
  v48 = &v2[OBJC_IVAR____TtC10nwswifttls20STLSServerHandshaker_partialHandshakeResult];
  swift_beginAccess();
  outlined assign with take of PartialHandshakeResult?(v31, v48, &_s15SwiftTLSLibrary22PartialHandshakeResultVSgMd, &_s15SwiftTLSLibrary22PartialHandshakeResultVSgMR);
  swift_endAccess();
  v49 = type metadata accessor for PartialHandshakeResult(0);
  v50 = *(v49 - 8);
  v51 = *(v50 + 48);
  v119 = (v50 + 48);
  v52 = v51;
  v53 = v51(v48, 1, v49);
  v113 = v48;
  if (v53)
  {
    v54 = v49;
    v55 = v47;
    (*(v13 + 7))(v47, 1, 1, v12);
    v56 = v122;
LABEL_14:
    outlined destroy of P256.Signing.PrivateKey?(v55, &_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);
    v59 = v113;
    v60 = v52;
    v61 = v54;
    v62 = v60(v113, 1, v54);
    goto LABEL_15;
  }

  v54 = v49;
  v57 = v48 + *(v49 + 24);
  v55 = v47;
  outlined init with copy of Any?(v57, v47, &_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);
  v58 = (*(v13 + 6))(v47, 1, v12);
  v56 = v122;
  if (v58 == 1)
  {
    goto LABEL_14;
  }

  v112 = v52;
  v70 = v117;
  outlined init with take of EncryptionLevel(v55, v117, type metadata accessor for EncryptionLevel);
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v121 = v19;
  v71 = type metadata accessor for Logger();
  __swift_project_value_buffer(v71, logger);
  v72 = v116;
  outlined init with copy of ServerHandshakeStateMachine(v70, v116, type metadata accessor for EncryptionLevel);
  v73 = Logger.logObject.getter();
  v74 = static os_log_type_t.debug.getter();
  v120 = v73;
  v61 = v54;
  if (os_log_type_enabled(v73, v74))
  {
    v110 = v74;
    v75 = swift_slowAlloc();
    v108 = swift_slowAlloc();
    v124 = v108;
    v109 = v75;
    *v75 = 136315138;
    v76 = v114;
    outlined init with copy of ServerHandshakeStateMachine(v72, v114, type metadata accessor for EncryptionLevel);
    v111 = v12;
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    outlined destroy of ServerHandshakeStateMachine(v72, type metadata accessor for EncryptionLevel);
    v78 = type metadata accessor for SymmetricKey();
    (*(*(v78 - 8) + 8))(v76, v78);
    if (EnumCaseMultiPayload)
    {
      v59 = v113;
      if (EnumCaseMultiPayload == 1)
      {
        v79 = 0x6B616873646E6168;
        v80 = 0xE900000000000065;
      }

      else
      {
        v79 = 0x746163696C707061;
        v80 = 0xEB000000006E6F69;
      }

      v12 = v111;
      v98 = v109;
    }

    else
    {
      v79 = 0x746144796C726165;
      v12 = v111;
      v59 = v113;
      v98 = v109;
      v80 = 0xE900000000000061;
    }

    v99 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v79, v80, &v124);

    *(v98 + 1) = v99;
    v100 = v120;
    _os_log_impl(&dword_1B25F5000, v120, v110, "server handshaker got new read encryption level: %s", v98, 0xCu);
    v101 = v108;
    __swift_destroy_boxed_opaque_existential_0(v108);
    MEMORY[0x1B274ECF0](v101, -1, -1);
    MEMORY[0x1B274ECF0](v98, -1, -1);

    v70 = v117;
  }

  else
  {

    outlined destroy of ServerHandshakeStateMachine(v72, type metadata accessor for EncryptionLevel);
    v59 = v113;
  }

  v102 = v118;
  outlined init with take of EncryptionLevel(v70, v118, type metadata accessor for EncryptionLevel);
  (*(v13 + 7))(v102, 0, 1, v12);
  v103 = OBJC_IVAR____TtC10nwswifttls20STLSServerHandshaker_readEncryptionLevel;
  swift_beginAccess();
  outlined assign with take of PartialHandshakeResult?(v102, &v2[v103], &_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);
  swift_endAccess();
  v19 = v121;
  v56 = v122;
  v60 = v112;
  v62 = v112(v59, 1, v54);
LABEL_15:
  if (v62)
  {
    (*(v13 + 7))(v56, 1, 1, v12);
LABEL_18:
    outlined destroy of P256.Signing.PrivateKey?(v56, &_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);
    goto LABEL_19;
  }

  outlined init with copy of Any?(v59 + *(v61 + 20), v56, &_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);
  if ((*(v13 + 6))(v56, 1, v12) == 1)
  {
    goto LABEL_18;
  }

  outlined init with take of EncryptionLevel(v56, v22, type metadata accessor for EncryptionLevel);
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v81 = type metadata accessor for Logger();
  __swift_project_value_buffer(v81, logger);
  outlined init with copy of ServerHandshakeStateMachine(v22, v19, type metadata accessor for EncryptionLevel);
  v82 = Logger.logObject.getter();
  LODWORD(v122) = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v82, v122))
  {
    v112 = v60;
    v120 = v22;
    v121 = v13;
    v83 = 0xE900000000000061;
    v84 = swift_slowAlloc();
    v117 = swift_slowAlloc();
    v124 = v117;
    *v84 = 136315138;
    v85 = v115;
    outlined init with copy of ServerHandshakeStateMachine(v19, v115, type metadata accessor for EncryptionLevel);
    v111 = v12;
    v86 = swift_getEnumCaseMultiPayload();
    outlined destroy of ServerHandshakeStateMachine(v19, type metadata accessor for EncryptionLevel);
    v87 = type metadata accessor for SymmetricKey();
    (*(*(v87 - 8) + 8))(v85, v87);
    if (v86)
    {
      v88 = v122;
      if (v86 == 1)
      {
        v89 = 0x6B616873646E6168;
        v83 = 0xE900000000000065;
      }

      else
      {
        v89 = 0x746163696C707061;
        v83 = 0xEB000000006E6F69;
      }

      v60 = v112;
    }

    else
    {
      v89 = 0x746144796C726165;
      v60 = v112;
      v88 = v122;
    }

    v104 = v117;
    v105 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v89, v83, &v124);

    *(v84 + 4) = v105;
    _os_log_impl(&dword_1B25F5000, v82, v88, "server handshaker got new write encryption level: %s", v84, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v104);
    MEMORY[0x1B274ECF0](v104, -1, -1);
    MEMORY[0x1B274ECF0](v84, -1, -1);

    v12 = v111;
    v22 = v120;
    v13 = v121;
  }

  else
  {

    outlined destroy of ServerHandshakeStateMachine(v19, type metadata accessor for EncryptionLevel);
  }

  v106 = v118;
  outlined init with take of EncryptionLevel(v22, v118, type metadata accessor for EncryptionLevel);
  (*(v13 + 7))(v106, 0, 1, v12);
  v107 = OBJC_IVAR____TtC10nwswifttls20STLSServerHandshaker_writeEncryptionLevel;
  swift_beginAccess();
  outlined assign with take of PartialHandshakeResult?(v106, &v2[v107], &_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);
  swift_endAccess();
LABEL_19:
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v63 = type metadata accessor for Logger();
  __swift_project_value_buffer(v63, logger);
  v64 = v2;
  v65 = Logger.logObject.getter();
  v66 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    *v67 = 67109120;
    v68 = !v60(v59, 1, v61) && v59[1] >> 60 != 15;
    *(v67 + 4) = v68;

    _os_log_impl(&dword_1B25F5000, v65, v66, "server handshaker has handshake bytes to send? %{BOOL}d", v67, 8u);
    MEMORY[0x1B274ECF0](v67, -1, -1);
  }

  else
  {

    v65 = v64;
  }

  v45 = v60(v59, 1, v61);
  if (!v45)
  {
    v69 = v59[1];
    if (v69 >> 60 != 15)
    {
      v90 = *v59;
      v91 = v59[2];
      v92 = v69 >> 62;
      if ((v69 >> 62) > 1)
      {
        if (v92 != 2)
        {
          v93 = 0;
          goto LABEL_53;
        }

        v93 = *(v90 + 24);
      }

      else
      {
        if (!v92)
        {
          v93 = BYTE6(v69);
LABEL_53:
          if (v93 >= v91)
          {
            v94 = Data._Representation.subscript.getter();
            v96 = v95;
            outlined consume of ByteBuffer?(v90, v69);
            v97 = Data._bridgeToObjectiveC()().super.isa;
            outlined consume of Data._Representation(v94, v96);
            v45 = v97;
            goto LABEL_67;
          }

          __break(1u);
LABEL_66:
          __break(1u);
          goto LABEL_67;
        }

        v93 = v90 >> 32;
      }

      v45 = outlined copy of Data._Representation(*v59, v59[1]);
      goto LABEL_53;
    }
  }

  v45 = 0;
LABEL_67:
  result.value.super.isa = v45;
  result.is_nil = v46;
  return result;
}

Swift::Int32 __swiftcall STLSServerHandshaker.getErrorCode()()
{
  v1 = *(v0 + OBJC_IVAR____TtC10nwswifttls20STLSServerHandshaker_latestError);
  if (v1)
  {
    v7 = *(v0 + OBJC_IVAR____TtC10nwswifttls20STLSServerHandshaker_latestError);
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

Swift::Int __swiftcall STLSServerHandshaker.getEncryptionLevel(write:)(Swift::Bool write)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v20 - v5;
  v7 = type metadata accessor for EncryptionLevel(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - v13;
  if (write)
  {
    v15 = OBJC_IVAR____TtC10nwswifttls20STLSServerHandshaker_writeEncryptionLevel;
  }

  else
  {
    v15 = OBJC_IVAR____TtC10nwswifttls20STLSServerHandshaker_readEncryptionLevel;
  }

  v16 = v1 + v15;
  swift_beginAccess();
  outlined init with copy of Any?(v16, v6, &_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of P256.Signing.PrivateKey?(v6, &_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);
    return -1;
  }

  else
  {
    outlined init with take of EncryptionLevel(v6, v14, type metadata accessor for EncryptionLevel);
    outlined init with take of EncryptionLevel(v14, v12, type metadata accessor for EncryptionLevel);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v19 = type metadata accessor for SymmetricKey();
    (*(*(v19 - 8) + 8))(v12, v19);
    return EnumCaseMultiPayload + 1;
  }
}

NSData_optional __swiftcall STLSServerHandshaker.getEncryptionSecret(write:)(Swift::Bool write)
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
    v20 = OBJC_IVAR____TtC10nwswifttls20STLSServerHandshaker_writeEncryptionLevel;
  }

  else
  {
    v20 = OBJC_IVAR____TtC10nwswifttls20STLSServerHandshaker_readEncryptionLevel;
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
    outlined init with take of EncryptionLevel(v11, v19, type metadata accessor for EncryptionLevel);
    outlined init with copy of ServerHandshakeStateMachine(v19, v17, type metadata accessor for EncryptionLevel);
    (*(v4 + 32))(v7, v17, v3);
    SymmetricKey.withUnsafeBytes<A>(_:)();
    (*(v4 + 8))(v7, v3);
    v24 = v27[1];
    v25 = v27[2];
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data._Representation(v24, v25);
    outlined destroy of ServerHandshakeStateMachine(v19, type metadata accessor for EncryptionLevel);
    v23 = isa;
  }

  result.value.super.isa = v23;
  result.is_nil = v22;
  return result;
}

NSData_optional __swiftcall STLSServerHandshaker.getPeerQUICTransportParameters()()
{
  v1 = type metadata accessor for ServerHandshakeStateMachine(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC10nwswifttls20STLSServerHandshaker_stateMachine;
  swift_beginAccess();
  if ((*(v2 + 48))(v0 + v6, 1, v1) || (outlined init with copy of ServerHandshakeStateMachine(v0 + v6, v5, type metadata accessor for ServerHandshakeStateMachine), v8 = ServerHandshakeStateMachine.peerQUICTransportParameters.getter(), v10 = v9, v12 = v11, v13 = outlined destroy of ServerHandshakeStateMachine(v5, type metadata accessor for ServerHandshakeStateMachine), v10 >> 60 == 15))
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

uint64_t @objc STLSServerHandshaker.getNegotiatedCiphersuite()(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary27ServerHandshakeStateMachineVSgMd, &_s15SwiftTLSLibrary27ServerHandshakeStateMachineVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v14 - v7;
  v9 = OBJC_IVAR____TtC10nwswifttls20STLSServerHandshaker_stateMachine;
  swift_beginAccess();
  outlined init with copy of Any?(a1 + v9, v8, &_s15SwiftTLSLibrary27ServerHandshakeStateMachineVSgMd, &_s15SwiftTLSLibrary27ServerHandshakeStateMachineVSgMR);
  v10 = type metadata accessor for ServerHandshakeStateMachine(0);
  result = (*(*(v10 - 8) + 48))(v8, 1, v10);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v12 = a1;
    v13 = a3();

    outlined destroy of ServerHandshakeStateMachine(v8, type metadata accessor for ServerHandshakeStateMachine);
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

uint64_t @objc STLSServerHandshaker.getPAKEOffered()(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary27ServerHandshakeStateMachineVSgMd, &_s15SwiftTLSLibrary27ServerHandshakeStateMachineVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v14 - v7;
  v9 = OBJC_IVAR____TtC10nwswifttls20STLSServerHandshaker_stateMachine;
  swift_beginAccess();
  outlined init with copy of Any?(a1 + v9, v8, &_s15SwiftTLSLibrary27ServerHandshakeStateMachineVSgMd, &_s15SwiftTLSLibrary27ServerHandshakeStateMachineVSgMR);
  v10 = type metadata accessor for ServerHandshakeStateMachine(0);
  result = (*(*(v10 - 8) + 48))(v8, 1, v10);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v12 = a1;
    v13 = a3();

    outlined destroy of ServerHandshakeStateMachine(v8, type metadata accessor for ServerHandshakeStateMachine);
    return v13 & 1;
  }

  return result;
}

uint64_t type metadata accessor for STLSServerHandshaker()
{
  result = type metadata singleton initialization cache for STLSServerHandshaker;
  if (!type metadata singleton initialization cache for STLSServerHandshaker)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for STLSServerHandshaker()
{
  type metadata accessor for ServerHandshakeStateMachine?(319, &lazy cache variable for type metadata for ServerHandshakeStateMachine?, type metadata accessor for ServerHandshakeStateMachine);
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    type metadata accessor for ServerHandshakeStateMachine?(319, &lazy cache variable for type metadata for PartialHandshakeResult?, type metadata accessor for PartialHandshakeResult);
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      type metadata accessor for ServerHandshakeStateMachine?(319, &lazy cache variable for type metadata for EncryptionLevel?, type metadata accessor for EncryptionLevel);
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        type metadata accessor for ServerHandshakeStateMachine?(319, &lazy cache variable for type metadata for SymmetricKey?, MEMORY[0x1E6966458]);
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void type metadata accessor for ServerHandshakeStateMachine?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t specialized Data.withUnsafeBytes<A>(_:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x1E69E9840];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    outlined consume of Data._Representation(a3, a4);
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  closure #1 in static Data.== infix(_:_:)(v14, a3, a4, &v13);
  v10 = v4;
  outlined consume of Data._Representation(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x1E69E9840];
  return v10 & 1;
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:privacy:)(uint64_t (*a1)(void))
{
  return a1() & 1;
}

{
  return a1();
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned Int32)@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void *closure #1 in serialize<A>(_:at:)(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t closure #1 in OSLogArguments.append(_:)(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = __DataStorage._bytes.getter();
  v11 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  MEMORY[0x1B274CD90]();
  closure #1 in static Data.== infix(_:_:)(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t specialized static Data.== infix(_:_:)(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          outlined copy of Data._Representation(a3, a4);
          return specialized Data.withUnsafeBytes<A>(_:)(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t outlined init with take of EncryptionLevel(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of ServerHandshakeStateMachine(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of ServerHandshakeStateMachine(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef()
{
  result = lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef;
  if (!lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef)
  {
    type metadata accessor for CFStringRef();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSo6NSDataC_Tt0g5(void *a1)
{
  v35[5] = *MEMORY[0x1E69E9840];
  *&v32 = a1;
  type metadata accessor for SwiftTLSExternalPreSharedKey(0, &lazy cache variable for type metadata for NSData, 0x1E695DEF0);
  v2 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation15ContiguousBytes_pMd, &_s10Foundation15ContiguousBytes_pMR);
  if (swift_dynamicCast())
  {
    outlined init with take of ContiguousBytes(v33, v35);
    __swift_project_boxed_opaque_existential_0(v35, v35[3]);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    v33[0] = v32;
    __swift_destroy_boxed_opaque_existential_0(v35);
    goto LABEL_40;
  }

  v34 = 0;
  memset(v33, 0, sizeof(v33));
  outlined destroy of P256.Signing.PrivateKey?(v33, &_s10Foundation15ContiguousBytes_pSgMd, &_s10Foundation15ContiguousBytes_pSgMR);
  v3 = NSData.startIndex.getter();
  v4 = NSData.endIndex.getter();
  v5 = NSData.startIndex.getter();
  v6 = NSData.endIndex.getter();
  if (v3 < v5 || v6 < v3)
  {
    goto LABEL_43;
  }

  v7 = NSData.startIndex.getter();
  v8 = NSData.endIndex.getter();
  if (v4 < v7 || v8 < v4)
  {
    goto LABEL_44;
  }

  if (__OFSUB__(v4, v3))
  {
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  *&v33[0] = specialized Data._Representation.init(count:)(v4 - v3);
  *(&v33[0] + 1) = v9;
  MEMORY[0x1EEE9AC00](*&v33[0]);
  v12 = specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(partial apply for specialized closure #3 in Data.init<A>(_:));
  v13 = v10;
  v14 = *&v33[0];
  v15 = *(&v33[0] + 1) >> 62;
  if ((*(&v33[0] + 1) >> 62) > 1)
  {
    if (v15 == 2)
    {
      v17 = *(*&v33[0] + 16);
      v16 = *(*&v33[0] + 24);
      v18 = __OFSUB__(v16, v17);
      v19 = v16 - v17;
      if (v18)
      {
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
      }

      if (v11 != v19)
      {
        goto LABEL_18;
      }
    }

    else if (v11)
    {
      v20 = 0;
      goto LABEL_37;
    }
  }

  else
  {
    if (!v15)
    {
      if (v11 != BYTE14(v33[0]))
      {
        goto LABEL_18;
      }

      goto LABEL_23;
    }

    if (__OFSUB__(DWORD1(v33[0]), v33[0]))
    {
      goto LABEL_48;
    }

    if (v11 != DWORD1(v33[0]) - LODWORD(v33[0]))
    {
LABEL_18:
      if (v15 != 2)
      {
        if (v15 == 1)
        {
          v20 = *&v33[0] >> 32;
        }

        else
        {
          v20 = BYTE14(v33[0]);
        }

LABEL_37:
        if (v20 >= v11)
        {
          Data._Representation.replaceSubrange(_:with:count:)();
          goto LABEL_39;
        }

        goto LABEL_46;
      }

LABEL_35:
      v20 = *(v14 + 24);
      goto LABEL_37;
    }
  }

LABEL_23:
  memset(v35, 0, 15);
  if (v10 == NSData.endIndex.getter())
  {
    goto LABEL_39;
  }

  v21 = NSData.subscript.getter();
  v22 = NSData.startIndex.getter();
  v23 = NSData.endIndex.getter();
  if (v13 < v22 || v13 >= v23)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  LOBYTE(v24) = 0;
  v25 = v13 + 1;
  while (1)
  {
    *(v35 + v24) = v21;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    if (v24 == 14)
    {
      Data._Representation.append(contentsOf:)();
      if (v25 == NSData.endIndex.getter())
      {
        goto LABEL_39;
      }

      LOBYTE(v24) = 0;
      goto LABEL_32;
    }

    if (v25 == NSData.endIndex.getter())
    {
      break;
    }

LABEL_32:
    v21 = NSData.subscript.getter();
    v26 = NSData.startIndex.getter();
    v27 = NSData.endIndex.getter();
    if (v25 >= v26)
    {
      v14 = v25 + 1;
      if (v25++ < v27)
      {
        continue;
      }
    }

    goto LABEL_34;
  }

  Data._Representation.append(contentsOf:)();
LABEL_39:

LABEL_40:
  v29 = v33[0];
  outlined copy of Data._Representation(*&v33[0], *(&v33[0] + 1));

  outlined consume of Data._Representation(v29, *(&v29 + 1));
  v30 = *MEMORY[0x1E69E9840];
  return v29;
}

id STLSClientHandshaker.init(_:serverName:quicTransportParameters:alpn:sessionState:ticketRequest:keyExchangeGroup:enableEarlyData:)(void *a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6, int a7, int a8)
{
  v106 = a8;
  v105 = a7;
  v117 = a6;
  v118 = a5;
  v124 = a4;
  v125 = a3;
  v116 = a1;
  ObjectType = swift_getObjectType();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary22PartialHandshakeResultVSgMd, &_s15SwiftTLSLibrary22PartialHandshakeResultVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v113 = v99 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary21HandshakeStateMachineVSgMd, &_s15SwiftTLSLibrary21HandshakeStateMachineVSgMR);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v103 = v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v102 = v99 - v17;
  v101 = type metadata accessor for P256.Signing.PublicKey();
  v104 = *(v101 - 8);
  v18 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v101);
  v126 = (v99 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v114 = type metadata accessor for NSFastEnumerationIterator();
  v115 = *(v114 - 8);
  v20 = *(v115 + 64);
  v21 = MEMORY[0x1EEE9AC00](v114);
  v23 = v99 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = v99 - v24;
  v121 = ObjectType;
  v26 = objc_allocWithZone(ObjectType);
  v27 = OBJC_IVAR____TtC10nwswifttls20STLSClientHandshaker_stateMachine;
  v28 = type metadata accessor for HandshakeStateMachine(0);
  v29 = *(v28 - 8);
  v30 = *(v29 + 56);
  v119 = v27;
  v109 = v28;
  v108 = v30;
  v107 = v29 + 56;
  (v30)(&v26[v27], 1, 1);
  v31 = OBJC_IVAR____TtC10nwswifttls20STLSClientHandshaker_partialHandshakeResult;
  v32 = type metadata accessor for PartialHandshakeResult(0);
  v33 = *(v32 - 8);
  v34 = *(v33 + 56);
  v120 = v31;
  v112 = v32;
  v111 = v34;
  v110 = v33 + 56;
  (v34)(&v26[v31], 1, 1);
  v35 = OBJC_IVAR____TtC10nwswifttls20STLSClientHandshaker_readEncryptionLevel;
  v36 = type metadata accessor for EncryptionLevel(0);
  v37 = *(*(v36 - 8) + 56);
  v37(&v26[v35], 1, 1, v36);
  v38 = OBJC_IVAR____TtC10nwswifttls20STLSClientHandshaker_writeEncryptionLevel;
  v37(&v26[OBJC_IVAR____TtC10nwswifttls20STLSClientHandshaker_writeEncryptionLevel], 1, 1, v36);
  v39 = OBJC_IVAR____TtC10nwswifttls20STLSClientHandshaker_receivedSessionTickets;
  *&v26[OBJC_IVAR____TtC10nwswifttls20STLSClientHandshaker_receivedSessionTickets] = MEMORY[0x1E69E7CC0];
  v40 = OBJC_IVAR____TtC10nwswifttls20STLSClientHandshaker_latestError;
  *&v26[OBJC_IVAR____TtC10nwswifttls20STLSClientHandshaker_latestError] = 0;
  v123 = a2;
  if (!a2 || !v125 || !v124)
  {

    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    __swift_project_value_buffer(v46, logger);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();
    v49 = os_log_type_enabled(v47, v48);
    v50 = v118;
    if (v49)
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_1B25F5000, v47, v48, "Cannot start the handshake with NULL parameters", v51, 2u);
      MEMORY[0x1B274ECF0](v51, -1, -1);
    }

    outlined destroy of P256.Signing.PrivateKey?(&v26[v119], &_s15SwiftTLSLibrary21HandshakeStateMachineVSgMd, &_s15SwiftTLSLibrary21HandshakeStateMachineVSgMR);
    outlined destroy of P256.Signing.PrivateKey?(&v26[v120], &_s15SwiftTLSLibrary22PartialHandshakeResultVSgMd, &_s15SwiftTLSLibrary22PartialHandshakeResultVSgMR);
    outlined destroy of P256.Signing.PrivateKey?(&v26[v35], &_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);
    outlined destroy of P256.Signing.PrivateKey?(&v26[v38], &_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);
    v52 = *&v26[v39];

    v53 = MEMORY[0x1E69E7D40];
    v54 = *((*MEMORY[0x1E69E7D40] & *v26) + 0x30);
    v55 = *((*MEMORY[0x1E69E7D40] & *v26) + 0x34);
    swift_deallocPartialClassInstance();
    v56 = v122;
    swift_getObjectType();
    v57 = *((*v53 & *v56) + 0x30);
    v58 = *((*v53 & *v56) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v41 = v116;
  if (v116)
  {
    v42 = v123;
    v43 = v125;
    v44 = v124;
    v45 = v41;
  }

  else
  {
    type metadata accessor for SwiftTLSExternalPreSharedKey(0, &lazy cache variable for type metadata for NSArray, 0x1E695DEC8);
    v60 = v123;
    v61 = v125;
    v62 = v124;
    v45 = MEMORY[0x1B274D7C0](MEMORY[0x1E69E7CC0]);
  }

  v116 = v41;
  v100 = v45;
  NSArray.makeIterator()();
  NSFastEnumerationIterator.next()();
  if (v132)
  {
    v99[1] = v104 + 32;
    v63 = MEMORY[0x1E69E7CC0];
    do
    {
      while (1)
      {
        outlined init with take of Any(&v131, &v129);
        if (swift_dynamicCast())
        {
          break;
        }

        NSFastEnumerationIterator.next()();
        if (!v132)
        {
          goto LABEL_23;
        }
      }

      v64 = v127;
      v129 = v127;
      outlined copy of Data._Representation(v127, *(&v127 + 1));
      lazy protocol witness table accessor for type Data and conformance Data();
      P256.Signing.PublicKey.init<A>(derRepresentation:)();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v63 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v63[2] + 1, 1, v63, &_ss23_ContiguousArrayStorageCy9CryptoKit4P256O7SigningO9PublicKeyVGMd, &_ss23_ContiguousArrayStorageCy9CryptoKit4P256O7SigningO9PublicKeyVGMR, MEMORY[0x1E6966570]);
      }

      v66 = v63[2];
      v65 = v63[3];
      v99[0] = v66 + 1;
      if (v66 >= v65 >> 1)
      {
        v63 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v65 > 1, v66 + 1, 1, v63, &_ss23_ContiguousArrayStorageCy9CryptoKit4P256O7SigningO9PublicKeyVGMd, &_ss23_ContiguousArrayStorageCy9CryptoKit4P256O7SigningO9PublicKeyVGMR, MEMORY[0x1E6966570]);
      }

      outlined consume of Data._Representation(v64, *(&v64 + 1));
      v63[2] = v99[0];
      (*(v104 + 32))(v63 + ((*(v104 + 80) + 32) & ~*(v104 + 80)) + *(v104 + 72) * v66, v126, v101);
      NSFastEnumerationIterator.next()();
    }

    while (v132);
  }

  else
  {
    v63 = MEMORY[0x1E69E7CC0];
  }

LABEL_23:
  v67 = v115 + 8;
  v68 = *(v115 + 8);
  v68(v25, v114);
  if (!v117)
  {
    goto LABEL_27;
  }

  if (*(v117 + 16) != 2)
  {

LABEL_27:
    LODWORD(v104) = 0;
    LODWORD(v117) = 1;
    goto LABEL_28;
  }

  LODWORD(v104) = *(v117 + 32);

  LODWORD(v117) = 0;
LABEL_28:
  v126 = v63;
  NSArray.makeIterator()();
  NSFastEnumerationIterator.next()();
  if (v132)
  {
    v69 = MEMORY[0x1E69E7CC0];
    do
    {
      while (1)
      {
        outlined init with take of Any(&v131, &v129);
        if (swift_dynamicCast())
        {
          break;
        }

        NSFastEnumerationIterator.next()();
        if (!v132)
        {
          goto LABEL_40;
        }
      }

      v70 = v127;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v115 = v67;
      v101 = v68;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v69 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v69 + 2) + 1, 1, v69);
      }

      v73 = *(v69 + 2);
      v72 = *(v69 + 3);
      if (v73 >= v72 >> 1)
      {
        v69 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v72 > 1), v73 + 1, 1, v69);
      }

      *(v69 + 2) = v73 + 1;
      *&v69[16 * v73 + 32] = v70;
      NSFastEnumerationIterator.next()();
      v67 = v115;
      v68 = v101;
    }

    while (v132);
  }

  else
  {
    v69 = MEMORY[0x1E69E7CC0];
  }

LABEL_40:
  v68(v23, v114);
  v74 = v123;
  v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v77 = v76;
  v78 = v125;
  v79 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v81 = v80;

  v82 = v81 >> 62;
  if ((v81 >> 62) > 1)
  {
    v83 = 0;
    if (v82 == 2)
    {
      v83 = *(v79 + 16);
    }
  }

  else if (v82)
  {
    v83 = v79;
  }

  else
  {
    v83 = 0;
  }

  HandshakeStateMachine.Configuration.init(serverName:validPublicKeys:quicTransportParameters:alpn:ticketRequest:fixedKeyExchangeGroup:enableEarlyData:useRawEPSKs:)(v75, v77, v126, v79, v81, v83, v69, v104 | (v117 << 16), &v131, v105, v106 & 1, 0);
  if (v118)
  {
    v84 = v118;
    v85 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v87 = v86;
    outlined init with copy of HandshakeStateMachine.Configuration(&v131, &v129);
    v88 = v102;
    _s15SwiftTLSLibrary21HandshakeStateMachineV13sessionTicket13configurationAC10Foundation4DataV_AC13ConfigurationVtAA8TLSErrorOYKcfC(v85, v87, &v131, v128, v102);
    v89 = v124;

    outlined destroy of HandshakeStateMachine.Configuration(&v131);
    v108(v88, 0, 1, v109);
    v92 = v119;
    swift_beginAccess();
    outlined assign with take of PartialHandshakeResult?(v88, &v26[v92], &_s15SwiftTLSLibrary21HandshakeStateMachineVSgMd, &_s15SwiftTLSLibrary21HandshakeStateMachineVSgMR);
    swift_endAccess();
  }

  else
  {
    v90 = v103;
    HandshakeStateMachine.init(configuration:)(&v131, v103);
    v89 = v124;

    v108(v90, 0, 1, v109);
    v91 = v119;
    swift_beginAccess();
    outlined assign with take of PartialHandshakeResult?(v90, &v26[v91], &_s15SwiftTLSLibrary21HandshakeStateMachineVSgMd, &_s15SwiftTLSLibrary21HandshakeStateMachineVSgMR);
    swift_endAccess();
    v84 = 0;
  }

  v93 = v113;
  v111(v113, 1, 1, v112);
  v94 = v120;
  swift_beginAccess();
  outlined assign with take of PartialHandshakeResult?(v93, &v26[v94], &_s15SwiftTLSLibrary22PartialHandshakeResultVSgMd, &_s15SwiftTLSLibrary22PartialHandshakeResultVSgMR);
  swift_endAccess();
  v130.receiver = v26;
  v130.super_class = v121;
  v95 = objc_msgSendSuper2(&v130, sel_init);

  v96 = v122;
  swift_getObjectType();
  v97 = *((*MEMORY[0x1E69E7D40] & *v96) + 0x30);
  v98 = *((*MEMORY[0x1E69E7D40] & *v96) + 0x34);
  swift_deallocPartialClassInstance();
  return v95;
}

id STLSClientHandshaker.init(_:quicTransportParameters:alpn:sessionState:ticketRequest:pakeContext:pakeClientIdentity:pakeServerIdentity:pakeClientPasswordVerifier:)(void *a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8, void *a9)
{
  v10 = v9;
  v144 = a5;
  v152 = a4;
  v154 = a3;
  v155 = a1;
  v156 = a2;
  v148 = a9;
  v153 = v10;
  ObjectType = swift_getObjectType();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary22PartialHandshakeResultVSgMd, &_s15SwiftTLSLibrary22PartialHandshakeResultVSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v141 = &v122 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary21HandshakeStateMachineVSgMd, &_s15SwiftTLSLibrary21HandshakeStateMachineVSgMR);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v128 = &v122 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v122 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v131 = &v122 - v24;
  v25 = type metadata accessor for P256.Signing.PublicKey();
  v26 = *(v25 - 8);
  v129 = v25;
  v130 = v26;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v133 = &v122 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = type metadata accessor for NSFastEnumerationIterator();
  v134 = *(v143 - 8);
  v29 = *(v134 + 64);
  v30 = MEMORY[0x1EEE9AC00](v143);
  v142 = &v122 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v122 - v32;
  *(&v179 + 1) = &type metadata for SwiftTLSFeatureFlags;
  *&v180 = lazy protocol witness table accessor for type SwiftTLSFeatureFlags and conformance SwiftTLSFeatureFlags();
  v34 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_0(&v178);
  v151 = a6;
  v35 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSo6NSDataC_Tt0g5(v151);
  v37 = v36;
  v150 = a7;
  v38 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSo6NSDataC_Tt0g5(v150);
  v40 = v39;
  v149 = a8;
  v41 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSo6NSDataC_Tt0g5(v149);
  v43 = v42;
  v148 = v148;
  v45 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSo6NSDataC_Tt0g5(v148);
  if (v34)
  {
    v46 = 32150;
  }

  else
  {
    v46 = -1;
  }

  _s15SwiftTLSLibrary23PAKEClientConfigurationV6scheme7context14clientIdentity06serverH00G16PasswordVerifierAcA10PAKESchemeV_10Foundation4DataVA3MtAA8TLSErrorOYKcfC(v46, v35, v37, v38, v40, v41, v43, v45, v175, v44, v167);
  v132 = v23;
  v182 = v175[4];
  v183 = v175[5];
  v184[0] = v176[0];
  *(v184 + 9) = *(v176 + 9);
  v178 = v175[0];
  v179 = v175[1];
  v180 = v175[2];
  v181 = v175[3];
  _s15SwiftTLSLibrary23PAKEClientConfigurationVSgWOi_(&v178);
  v172 = v182;
  v173 = v183;
  v174[0] = v184[0];
  *(v174 + 9) = *(v184 + 9);
  v168 = v178;
  v169 = v179;
  v170 = v180;
  v171 = v181;
  v47 = objc_allocWithZone(ObjectType);
  v48 = OBJC_IVAR____TtC10nwswifttls20STLSClientHandshaker_stateMachine;
  v49 = type metadata accessor for HandshakeStateMachine(0);
  v50 = *(v49 - 8);
  v51 = *(v50 + 56);
  v145 = v48;
  v136 = v49;
  v137 = v51;
  v135 = v50 + 56;
  (v51)(&v47[v48], 1, 1);
  v52 = OBJC_IVAR____TtC10nwswifttls20STLSClientHandshaker_partialHandshakeResult;
  v53 = type metadata accessor for PartialHandshakeResult(0);
  v54 = *(v53 - 8);
  v55 = *(v54 + 56);
  v146 = v52;
  v139 = v55;
  v140 = v53;
  v138 = v54 + 56;
  (v55)(&v47[v52], 1, 1);
  v56 = OBJC_IVAR____TtC10nwswifttls20STLSClientHandshaker_readEncryptionLevel;
  v57 = type metadata accessor for EncryptionLevel(0);
  v58 = *(*(v57 - 8) + 56);
  v58(&v47[v56], 1, 1, v57);
  v59 = OBJC_IVAR____TtC10nwswifttls20STLSClientHandshaker_writeEncryptionLevel;
  v58(&v47[OBJC_IVAR____TtC10nwswifttls20STLSClientHandshaker_writeEncryptionLevel], 1, 1, v57);
  v60 = OBJC_IVAR____TtC10nwswifttls20STLSClientHandshaker_receivedSessionTickets;
  *&v47[OBJC_IVAR____TtC10nwswifttls20STLSClientHandshaker_receivedSessionTickets] = MEMORY[0x1E69E7CC0];
  v61 = OBJC_IVAR____TtC10nwswifttls20STLSClientHandshaker_latestError;
  v147 = v47;
  *&v47[OBJC_IVAR____TtC10nwswifttls20STLSClientHandshaker_latestError] = 0;
  v62 = MEMORY[0x1E69E7D40];
  v63 = v155;
  if (v155 && v156 && v154)
  {
    type metadata accessor for SwiftTLSExternalPreSharedKey(0, &lazy cache variable for type metadata for NSArray, 0x1E695DEC8);
    v126 = v63;
    v124 = v156;
    v154 = v154;
    v64 = MEMORY[0x1E69E7CC0];
    v125 = MEMORY[0x1B274D7C0](MEMORY[0x1E69E7CC0]);
    NSArray.makeIterator()();
    NSFastEnumerationIterator.next()();
    if (*(&v179 + 1))
    {
      v65 = v130;
      v66 = v130 + 32;
      v127 = MEMORY[0x1E69E7CC0];
      do
      {
        outlined init with take of Any(&v178, &v160);
        if (swift_dynamicCast())
        {
          v67 = v158[0];
          v160 = v158[0];
          outlined copy of Data._Representation(*&v158[0], *(&v158[0] + 1));
          lazy protocol witness table accessor for type Data and conformance Data();
          P256.Signing.PublicKey.init<A>(derRepresentation:)();
          v68 = v127;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v68 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v68[2] + 1, 1, v68, &_ss23_ContiguousArrayStorageCy9CryptoKit4P256O7SigningO9PublicKeyVGMd, &_ss23_ContiguousArrayStorageCy9CryptoKit4P256O7SigningO9PublicKeyVGMR, MEMORY[0x1E6966570]);
          }

          v123 = v66;
          v69 = v68;
          v70 = v68[2];
          v127 = v69;
          v71 = v69[3];
          if (v70 >= v71 >> 1)
          {
            v127 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v71 > 1, v70 + 1, 1, v127, &_ss23_ContiguousArrayStorageCy9CryptoKit4P256O7SigningO9PublicKeyVGMd, &_ss23_ContiguousArrayStorageCy9CryptoKit4P256O7SigningO9PublicKeyVGMR, MEMORY[0x1E6966570]);
          }

          outlined consume of Data._Representation(v67, *(&v67 + 1));
          v72 = v127;
          v127[2] = v70 + 1;
          v66 = v123;
          (*(v65 + 32))(v72 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v70, v133, v129);
        }

        NSFastEnumerationIterator.next()();
      }

      while (*(&v179 + 1));
    }

    else
    {
      v127 = v64;
    }

    v83 = *(v134 + 8);
    (v83)(v33, v143);
    if (v144)
    {
      v84 = v142;
      if (*(v144 + 16) == 2)
      {
        LODWORD(v134) = *(v144 + 32);

        LODWORD(v144) = 0;
      }

      else
      {

        LODWORD(v134) = 0;
        LODWORD(v144) = 1;
      }
    }

    else
    {
      LODWORD(v134) = 0;
      LODWORD(v144) = 1;
      v84 = v142;
    }

    NSArray.makeIterator()();
    NSFastEnumerationIterator.next()();
    if (*(&v179 + 1))
    {
      v85 = MEMORY[0x1E69E7CC0];
      do
      {
        while (1)
        {
          outlined init with take of Any(&v178, &v160);
          if (swift_dynamicCast())
          {
            break;
          }

          NSFastEnumerationIterator.next()();
          if (!*(&v179 + 1))
          {
            goto LABEL_39;
          }
        }

        v133 = v83;
        v86 = v158[0];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v85 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v85 + 2) + 1, 1, v85);
        }

        v88 = *(v85 + 2);
        v87 = *(v85 + 3);
        if (v88 >= v87 >> 1)
        {
          v85 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v87 > 1), v88 + 1, 1, v85);
        }

        *(v85 + 2) = v88 + 1;
        *&v85[16 * v88 + 32] = v86;
        v84 = v142;
        NSFastEnumerationIterator.next()();
        v83 = v133;
      }

      while (*(&v179 + 1));
    }

    else
    {
      v85 = MEMORY[0x1E69E7CC0];
    }

LABEL_39:
    (v83)(v84, v143);
    v89 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v91 = v90;
    v92 = v124;
    v93 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v95 = v94;

    v96 = v95 >> 62;
    if ((v95 >> 62) > 1)
    {
      v97 = 0;
      v98 = v127;
      if (v96 == 2)
      {
        v97 = *(v93 + 16);
      }
    }

    else
    {
      if (v96)
      {
        v97 = v93;
      }

      else
      {
        v97 = 0;
      }

      v98 = v127;
    }

    HandshakeStateMachine.Configuration.init(serverName:validPublicKeys:quicTransportParameters:alpn:ticketRequest:fixedKeyExchangeGroup:enableEarlyData:useRawEPSKs:)(v89, v91, v98, v93, v95, v97, v85, v134 | (v144 << 16), v177, 24, 0, 0);
    v99 = v152;
    if (v152)
    {
      v100 = v152;
      v101 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v103 = v102;
      outlined init with copy of HandshakeStateMachine.Configuration(v177, &v178);
      v104 = v131;
      _s15SwiftTLSLibrary21HandshakeStateMachineV13sessionTicket13configurationAC10Foundation4DataV_AC13ConfigurationVtAA8TLSErrorOYKcfC(v101, v103, v177, v167, v131);
      v105 = v147;
      v106 = v126;

      outlined destroy of HandshakeStateMachine.Configuration(v177);
      v111 = v154;

      v137(v104, 0, 1, v136);
      v112 = v145;
      swift_beginAccess();
      outlined assign with take of PartialHandshakeResult?(v104, v105 + v112, &_s15SwiftTLSLibrary21HandshakeStateMachineVSgMd, &_s15SwiftTLSLibrary21HandshakeStateMachineVSgMR);
      swift_endAccess();
      v62 = MEMORY[0x1E69E7D40];
      v113 = v111;
    }

    else
    {
      v164 = v172;
      v165 = v173;
      v166[0] = v174[0];
      *(v166 + 9) = *(v174 + 9);
      v160 = v168;
      v161 = v169;
      v162 = v170;
      v163 = v171;
      v107 = _s15SwiftTLSLibrary23PAKEClientConfigurationVSgWOg(&v160);
      v105 = v147;
      v106 = v126;
      if (v107 == 1)
      {
        v108 = v132;
        HandshakeStateMachine.init(configuration:)(v177, v132);
        v109 = v154;

        v137(v108, 0, 1, v136);
        v110 = v145;
        swift_beginAccess();
        outlined assign with take of PartialHandshakeResult?(v108, v105 + v110, &_s15SwiftTLSLibrary21HandshakeStateMachineVSgMd, &_s15SwiftTLSLibrary21HandshakeStateMachineVSgMR);
        swift_endAccess();
        v62 = MEMORY[0x1E69E7D40];
        v113 = v109;
      }

      else
      {
        v182 = v164;
        v183 = v165;
        v184[0] = v166[0];
        *(v184 + 9) = *(v166 + 9);
        v178 = v160;
        v179 = v161;
        v180 = v162;
        v181 = v163;
        outlined init with copy of Any?(&v168, v158, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMd, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMR);
        outlined init with copy of HandshakeStateMachine.Configuration(v177, v158);
        outlined init with copy of Any?(&v168, v158, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMd, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMR);
        v114 = v128;
        _s15SwiftTLSLibrary21HandshakeStateMachineV4pake13configurationAcA23PAKEClientConfigurationV_AC0I0VtAA8TLSErrorOYKcfC(&v178, v177, v167, v128);
        v62 = MEMORY[0x1E69E7D40];

        outlined destroy of HandshakeStateMachine.Configuration(v177);
        outlined destroy of P256.Signing.PrivateKey?(&v168, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMd, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMR);
        v113 = v154;

        v137(v114, 0, 1, v136);
        v115 = v145;
        swift_beginAccess();
        outlined assign with take of PartialHandshakeResult?(v114, v105 + v115, &_s15SwiftTLSLibrary21HandshakeStateMachineVSgMd, &_s15SwiftTLSLibrary21HandshakeStateMachineVSgMR);
        swift_endAccess();
      }
    }

    v116 = v141;
    v139(v141, 1, 1, v140);
    v117 = v146;
    swift_beginAccess();
    outlined assign with take of PartialHandshakeResult?(v116, v105 + v117, &_s15SwiftTLSLibrary22PartialHandshakeResultVSgMd, &_s15SwiftTLSLibrary22PartialHandshakeResultVSgMR);
    swift_endAccess();
    v159.receiver = v105;
    v159.super_class = ObjectType;
    v82 = objc_msgSendSuper2(&v159, sel_init);
    outlined destroy of P256.Signing.PrivateKey?(&v168, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMd, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMR);
  }

  else
  {

    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v73 = type metadata accessor for Logger();
    __swift_project_value_buffer(v73, logger);
    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      *v76 = 0;
      _os_log_impl(&dword_1B25F5000, v74, v75, "Cannot start the handshake with NULL parameters", v76, 2u);
      v77 = v76;
      v63 = v155;
      MEMORY[0x1B274ECF0](v77, -1, -1);
    }

    outlined destroy of P256.Signing.PrivateKey?(&v168, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMd, &_s15SwiftTLSLibrary23PAKEClientConfigurationVSgMR);

    v78 = v147;
    outlined destroy of P256.Signing.PrivateKey?(v147 + v145, &_s15SwiftTLSLibrary21HandshakeStateMachineVSgMd, &_s15SwiftTLSLibrary21HandshakeStateMachineVSgMR);
    outlined destroy of P256.Signing.PrivateKey?(v78 + v146, &_s15SwiftTLSLibrary22PartialHandshakeResultVSgMd, &_s15SwiftTLSLibrary22PartialHandshakeResultVSgMR);
    outlined destroy of P256.Signing.PrivateKey?(v78 + v56, &_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);
    outlined destroy of P256.Signing.PrivateKey?(v78 + v59, &_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);
    v79 = *(v78 + v60);

    v80 = *((*v62 & *v78) + 0x30);
    v81 = *((*v62 & *v78) + 0x34);
    swift_deallocPartialClassInstance();
    v82 = 0;
  }

  v118 = v153;
  swift_getObjectType();
  v119 = *((*v62 & *v118) + 0x30);
  v120 = *((*v62 & *v118) + 0x34);
  swift_deallocPartialClassInstance();
  return v82;
}

NSData_optional __swiftcall STLSClientHandshaker.getClientRandom()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary21HandshakeStateMachineVSgMd, &_s15SwiftTLSLibrary21HandshakeStateMachineVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v19 - v3;
  v5 = OBJC_IVAR____TtC10nwswifttls20STLSClientHandshaker_stateMachine;
  swift_beginAccess();
  outlined init with copy of Any?(v0 + v5, v4, &_s15SwiftTLSLibrary21HandshakeStateMachineVSgMd, &_s15SwiftTLSLibrary21HandshakeStateMachineVSgMR);
  v6 = type metadata accessor for HandshakeStateMachine(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6);
  if (v7 == 1)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = HandshakeStateMachine.clientRandom.getter();
  v11 = v10;
  v13 = v12;
  v7 = outlined destroy of ExportedAuthenticator(v4, type metadata accessor for HandshakeStateMachine);
  if (v11 >> 60 != 15)
  {
    v14 = v11 >> 62;
    if ((v11 >> 62) > 1)
    {
      if (v14 == 2)
      {
        v8 = *(v9 + 24);
      }

      else
      {
        v8 = 0;
      }
    }

    else if (v14)
    {
      v8 = v9 >> 32;
    }

    else
    {
      v8 = BYTE6(v11);
    }

    if (v8 >= v13)
    {
      v15 = Data._Representation.subscript.getter();
      v17 = v16;
      outlined consume of ByteBuffer?(v9, v11);
      isa = Data._bridgeToObjectiveC()().super.isa;
      outlined consume of Data._Representation(v15, v17);
      v7 = isa;
      goto LABEL_16;
    }

    __break(1u);
    goto LABEL_15;
  }

  v7 = 0;
LABEL_16:
  result.is_nil = v8;
  result.value.super.isa = v7;
  return result;
}

uint64_t thunk for @callee_unowned @convention(block) (@unowned NSData) -> (@autoreleased NSData?)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  v5 = (*(a3 + 16))(a3, isa);

  if (!v5)
  {
    return 0;
  }

  v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v6;
}

uint64_t serialize(_:at:)(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

size_t specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t a1, int64_t a2, char a3, void *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy9CryptoKit4P256O7SigningO9PublicKeyVGMd, &_ss23_ContiguousArrayStorageCy9CryptoKit4P256O7SigningO9PublicKeyVGMR, MEMORY[0x1E6966570]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary4EPSKVGMd, &_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary4EPSKVGMR, type metadata accessor for EPSK);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary11ImportedPSKVGMd, &_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary11ImportedPSKVGMR, type metadata accessor for ImportedPSK);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary11GeneralEPSKVGMd, &_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary11GeneralEPSKVGMR, type metadata accessor for GeneralEPSK);
}

_BYTE **closure #1 in OSLogArguments.append(_:)(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void closure #1 in OSLogArguments.append(_:)(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

void *_sSw17withMemoryRebound2to_q0_xm_q0_SryxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lFs5UInt8V_s5NeverOs16IndexingIteratorVySo6NSDataCG_SitTt1g5(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
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

id specialized closure #1 in closure #3 in Data.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  result = specialized closure #1 in closure #3 in Data.init<A>(_:)(a1, a2, *a3);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
    a4[2] = v8;
    return result;
  }

  return result;
}

uint64_t specialized Data._Representation.init(count:)(uint64_t result)
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

uint64_t specialized Data.InlineData.init(_:)(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x1E69E9840];
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

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t specialized Data.LargeSlice.init(_:)(uint64_t a1, uint64_t a2)
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
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t specialized STLSClientHandshaker.validateAuthenticator(authenticator:context:keyParser:)(uint64_t a1, unint64_t a2, uint64_t (*a3)(void), int64_t a4)
{
  v5 = v4;
  v29 = a3;
  v30 = a4;
  v27 = a2;
  v28 = a1;
  v6 = type metadata accessor for ExportedAuthenticator();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary21HandshakeStateMachineVSgMd, &_s15SwiftTLSLibrary21HandshakeStateMachineVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v26 - v12;
  v14 = type metadata accessor for HandshakeStateMachine(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = OBJC_IVAR____TtC10nwswifttls20STLSClientHandshaker_stateMachine;
  swift_beginAccess();
  outlined init with copy of Any?(v5 + v19, v13, &_s15SwiftTLSLibrary21HandshakeStateMachineVSgMd, &_s15SwiftTLSLibrary21HandshakeStateMachineVSgMR);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    outlined destroy of P256.Signing.PrivateKey?(v13, &_s15SwiftTLSLibrary21HandshakeStateMachineVSgMd, &_s15SwiftTLSLibrary21HandshakeStateMachineVSgMR);
    return MEMORY[0x1E69E7CC0];
  }

  outlined init with take of HandshakeStateMachine(v13, v18, type metadata accessor for HandshakeStateMachine);
  v20 = 0;
  v21 = v27;
  v22 = v27 >> 62;
  if ((v27 >> 62) > 1)
  {
    v23 = v28;
    if (v22 == 2)
    {
      v20 = *(v28 + 16);
      goto LABEL_8;
    }
  }

  else
  {
    v23 = v28;
    if (v22)
    {
      v20 = v28;
LABEL_8:
      outlined copy of Data._Representation(v23, v27);
    }
  }

  v31 = v23;
  v32 = v21;
  v33 = v20;
  outlined init with copy of HandshakeStateMachine(v18, &v9[*(v6 + 24)], type metadata accessor for HandshakeStateMachine);
  *v9 = xmmword_1B26C5EF0;
  *(v9 + 2) = 0;
  v9[24] = 0;
  HandshakeMessageParser.appendBytes(_:)(&v31);
  v25 = _s15SwiftTLSLibrary21ExportedAuthenticatorV8validate9keyParserSay10Foundation4DataVGAHSgAHXE_tAA8TLSErrorOYKF(v29, v30);
  outlined destroy of ExportedAuthenticator(v9, type metadata accessor for ExportedAuthenticator);
  outlined consume of Data._Representation(v31, v32);
  outlined destroy of ExportedAuthenticator(v18, type metadata accessor for HandshakeStateMachine);
  return v25;
}

void *partial apply for specialized closure #3 in Data.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v9 = **(v3 + 16);
  v8[2] = &v9;
  result = _sSw17withMemoryRebound2to_q0_xm_q0_SryxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lFs5UInt8V_s5NeverOs16IndexingIteratorVySo6NSDataCG_SitTt1g5(partial apply for specialized closure #1 in closure #3 in Data.init<A>(_:), v8, a1, a2);
  *a3 = result;
  a3[1] = v6;
  a3[2] = v7;
  return result;
}

{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = _sSw17withMemoryRebound2to_q0_xm_q0_SryxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lFs5UInt8V_s5NeverOs16IndexingIteratorVySS8UTF8ViewVG_SitTt1g5(partial apply for specialized closure #1 in closure #3 in Data.init<A>(_:), v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t outlined init with take of ContiguousBytes(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t specialized closure #1 in closure #3 in Data.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = NSData.startIndex.getter();
  v7 = result;
  if (!a1 || !a2)
  {
    return a3;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    if (result != NSData.endIndex.getter())
    {
      v8 = 0;
      while (1)
      {
        v9 = v8;
        v10 = v7 + v8;
        v11 = NSData.subscript.getter();
        v12 = NSData.startIndex.getter();
        result = NSData.endIndex.getter();
        if (v10 < v12 || v10 >= result)
        {
          break;
        }

        *(a1 + v9) = v11;
        if (a2 - 1 != v9)
        {
          v13 = NSData.endIndex.getter();
          v8 = v9 + 1;
          if (v7 + v9 + 1 != v13)
          {
            continue;
          }
        }

        return a3;
      }

      __break(1u);
      goto LABEL_12;
    }

    return a3;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t outlined init with copy of HandshakeStateMachine(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of ExportedAuthenticator(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t one-time initialization function for SwiftTLSPAKELimiter()
{
  type metadata accessor for PAKELimiter();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = MEMORY[0x1E69E7CC8];
  SwiftTLSPAKELimiter = result;
  return result;
}

uint64_t PAKELimiter.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = MEMORY[0x1E69E7CC8];
  return result;
}

uint64_t *SwiftTLSPAKELimiter.unsafeMutableAddressor()
{
  if (one-time initialization token for SwiftTLSPAKELimiter != -1)
  {
    swift_once();
  }

  return &SwiftTLSPAKELimiter;
}

uint64_t PAKECredential.context.getter()
{
  v1 = *v0;
  outlined copy of Data._Representation(*v0, *(v0 + 8));
  return v1;
}

uint64_t PAKECredential.clientIdentity.getter()
{
  v1 = *(v0 + 16);
  outlined copy of Data._Representation(v1, *(v0 + 24));
  return v1;
}

uint64_t PAKECredential.serverIdentity.getter()
{
  v1 = *(v0 + 32);
  outlined copy of Data._Representation(v1, *(v0 + 40));
  return v1;
}

uint64_t PAKECredential.init(context:clientIdentity:serverIdentity:isServer:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  return result;
}

__n128 PAKECredential.init(PAKEClientConfiguration:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v12 = *(a1 + 8);
  v4 = *(a1 + 24);
  v10 = *(a1 + 40);
  v11 = v4;
  v5 = v10;
  v7 = v4;
  v8 = v12;
  outlined init with copy of Data(&v12, v9);
  outlined init with copy of Data(&v11, v9);
  outlined init with copy of Data(&v10, v9);
  outlined destroy of PAKEClientConfiguration(a1);
  result = v8;
  *a2 = v8;
  *(a2 + 16) = v7;
  *(a2 + 32) = v5;
  *(a2 + 48) = 0;
  return result;
}

__n128 PAKECredential.init(PAKEServerRecord:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v12 = *(a1 + 8);
  v4 = *(a1 + 24);
  v10 = *(a1 + 40);
  v11 = v4;
  v5 = v10;
  v7 = v4;
  v8 = v12;
  outlined init with copy of Data(&v12, v9);
  outlined init with copy of Data(&v11, v9);
  outlined init with copy of Data(&v10, v9);
  outlined destroy of PAKEServerRecord(a1);
  result = v8;
  *a2 = v8;
  *(a2 + 16) = v7;
  *(a2 + 32) = v5;
  *(a2 + 48) = 1;
  return result;
}

uint64_t static PAKECredential.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if (specialized static Data.== infix(_:_:)(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) != 0 && (specialized static Data.== infix(_:_:)(*(a1 + 16), *(a1 + 24), *(a2 + 16), *(a2 + 24)) & 1) != 0 && (specialized static Data.== infix(_:_:)(*(a1 + 32), *(a1 + 40), *(a2 + 32), *(a2 + 40)))
  {
    v4 = *(a1 + 48) ^ *(a2 + 48) ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

void PAKECredential.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  Data.hash(into:)();
  v3 = v0[2];
  v4 = v0[3];
  Data.hash(into:)();
  v5 = v0[4];
  v6 = v0[5];
  Data.hash(into:)();
  Hasher._combine(_:)(v0[6] & 1);
}

Swift::Int PAKECredential.hashValue.getter()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  v2 = v0[1];
  Data.hash(into:)();
  v3 = v0[2];
  v4 = v0[3];
  Data.hash(into:)();
  v5 = v0[4];
  v6 = v0[5];
  Data.hash(into:)();
  Hasher._combine(_:)(v0[6] & 1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PAKECredential()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = *(v0 + 48);
  Hasher.init(_seed:)();
  Data.hash(into:)();
  Data.hash(into:)();
  Data.hash(into:)();
  Hasher._combine(_:)(v7);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance PAKECredential()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = *(v0 + 48);
  Data.hash(into:)();
  Data.hash(into:)();
  Data.hash(into:)();
  Hasher._combine(_:)(v7);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PAKECredential()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = *(v0 + 48);
  Hasher.init(_seed:)();
  Data.hash(into:)();
  Data.hash(into:)();
  Data.hash(into:)();
  Hasher._combine(_:)(v7);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PAKECredential(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  if ((specialized static Data.== infix(_:_:)(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0 || (specialized static Data.== infix(_:_:)(v2, v3, v7, v8) & 1) == 0)
  {
    return 0;
  }

  if (specialized static Data.== infix(_:_:)(v4, v5, v9, v10))
  {
    return v6 ^ v11 ^ 1u;
  }

  return 0;
}

uint64_t PAKELimiter.addPAKECredential(credential:limit:)(uint64_t a1, int a2)
{
  v3 = v2;
  os_unfair_lock_lock((v2 + 16));
  if (!*(*(v2 + 24) + 16))
  {
    goto LABEL_5;
  }

  specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v6 & 1) == 0)
  {
    v8 = *(v2 + 24);
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v3 + 24);
    *(v3 + 24) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a2, a1, isUniquelyReferenced_nonNull_native);
    v10 = *(v3 + 24);
    *(v3 + 24) = v12;

    v7 = 1;
    goto LABEL_6;
  }

  v7 = 0;
LABEL_6:
  os_unfair_lock_unlock((v3 + 16));
  return v7;
}

BOOL PAKELimiter.hasPAKEAttempt(credential:)(uint64_t a1)
{
  v2 = v1;
  os_unfair_lock_lock((v1 + 16));
  v4 = *(v1 + 24);
  v7 = *(v4 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v6 & 1) != 0) && *(*(v4 + 56) + 4 * v5) != 0;
  os_unfair_lock_unlock(v2 + 4);
  return v7;
}

uint64_t PAKELimiter.claimPAKEAttempt(credential:)(uint64_t a1)
{
  v2 = v1;
  os_unfair_lock_lock((v1 + 16));
  v4 = *(v1 + 24);
  if (*(v4 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v6 & 1) != 0) && (v7 = *(*(v4 + 56) + 4 * v5)) != 0)
  {
    v8 = v7 - 1;
    v9 = *(v2 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v2 + 24);
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v8, a1, isUniquelyReferenced_nonNull_native);
    *(v2 + 24) = v13;
    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

  os_unfair_lock_unlock((v2 + 16));
  return v11;
}

unint64_t PAKELimiter.restorePAKEAttempt(credential:)(uint64_t a1)
{
  v2 = v1;
  os_unfair_lock_lock((v1 + 16));
  v4 = *(v1 + 24);
  if (!*(v4 + 16) || (result = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v6 & 1) == 0))
  {
    v11 = 0;
    goto LABEL_6;
  }

  v7 = *(*(v4 + 56) + 4 * result);
  v8 = v7 + 1;
  if (v7 != -1)
  {
    v9 = *(v2 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v2 + 24);
    *(v2 + 24) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v8, a1, isUniquelyReferenced_nonNull_native);
    *(v2 + 24) = v12;
    v11 = 1;
LABEL_6:
    os_unfair_lock_unlock((v2 + 16));
    return v11;
  }

  __break(1u);
  return result;
}

uint64_t PAKELimiter.__deallocating_deinit()
{
  outlined destroy of [PAKECredential : UInt32](v0 + 24);

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t PAKELimiter.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = MEMORY[0x1E69E7CC8];
  return result;
}

double variable initialization expression of ServerHandshakeState.ClientHelloVerifier.clientOfferedPAKE@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

double variable initialization expression of PAKEServerState.pakeServerHello@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0xF000000000000000;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  return result;
}

uint64_t variable initialization expression of TLSRecordProtector.writeKey@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  v4 = *a1;
  v5 = *(a1 + 8);
  Data.hash(into:)();
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  Data.hash(into:)();
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  Data.hash(into:)();
  Hasher._combine(_:)(*(a1 + 48) & 1);
  v10 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v10);
}

{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*a1);
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  Data.hash(into:)();
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  Data.hash(into:)();
  v8 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v8);
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(int a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
      v18 = *v4;
      result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_15:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      specialized _NativeDictionary.copy()();
      result = v17;
    }
  }

  v20 = *v4;
  if (v15)
  {
    *(v20[7] + 4 * result) = a1;
    return result;
  }

  v20[(result >> 6) + 8] |= 1 << result;
  v21 = v20[6] + 56 * result;
  v22 = *a2;
  v23 = *(a2 + 16);
  v24 = *(a2 + 32);
  *(v21 + 48) = *(a2 + 48);
  *(v21 + 16) = v23;
  *(v21 + 32) = v24;
  *v21 = v22;
  *(v20[7] + 4 * result) = a1;
  v25 = v20[2];
  v13 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v13)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v20[2] = v26;
  return outlined init with copy of PAKECredential(a2, v27);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t *a1, uint64_t a2)
{
  v103[3] = *MEMORY[0x1E69E9840];
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  v100 = v2 + 64;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = a1;
    v99 = ~v3;
    v6 = *a1;
    v7 = a1[1];
    if (*a1)
    {
      v8 = 0;
    }

    else
    {
      v8 = v7 == 0xC000000000000000;
    }

    v9 = !v8;
    v96 = v9;
    v10 = v7 >> 62;
    v94 = *a1;
    v11 = HIDWORD(v6) - v6;
    v12 = __OFSUB__(HIDWORD(v6), v6);
    v93 = v12;
    v91 = a1[1];
    v92 = v11;
    v95 = BYTE6(v7);
    v97 = v7 >> 62;
    while (1)
    {
      v13 = *(v2 + 48) + 56 * v4;
      v14 = *v13;
      v15 = *(v13 + 8);
      v16 = *(v13 + 16);
      v17 = *(v13 + 24);
      v18 = *(v13 + 32);
      v19 = *(v13 + 40);
      v20 = *(v13 + 48);
      v21 = v15 >> 62;
      if (v15 >> 62 == 3)
      {
        break;
      }

      if (v21 > 1)
      {
        if (v21 != 2)
        {
          goto LABEL_37;
        }

        v29 = *(v14 + 16);
        v28 = *(v14 + 24);
        v30 = __OFSUB__(v28, v29);
        v27 = v28 - v29;
        if (v30)
        {
          goto LABEL_179;
        }

        if (v10 <= 1)
        {
          goto LABEL_34;
        }
      }

      else if (v21)
      {
        LODWORD(v27) = HIDWORD(v14) - v14;
        if (__OFSUB__(HIDWORD(v14), v14))
        {
          goto LABEL_180;
        }

        v27 = v27;
        if (v10 <= 1)
        {
LABEL_34:
          v31 = v95;
          if (v10)
          {
            v31 = v92;
            if (v93)
            {
              __break(1u);
LABEL_178:
              __break(1u);
LABEL_179:
              __break(1u);
LABEL_180:
              __break(1u);
LABEL_181:
              __break(1u);
LABEL_182:
              __break(1u);
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
            }
          }

          goto LABEL_40;
        }
      }

      else
      {
        v27 = BYTE6(v15);
        if (v10 <= 1)
        {
          goto LABEL_34;
        }
      }

LABEL_38:
      if (v10 != 2)
      {
        if (v27)
        {
          goto LABEL_14;
        }

LABEL_46:
        v98 = v20;
        v25 = v14;
        v26 = v15;
LABEL_47:
        outlined copy of Data._Representation(v25, v26);
        outlined copy of Data._Representation(v16, v17);
        v101 = v18;
        outlined copy of Data._Representation(v18, v19);
        goto LABEL_48;
      }

      v33 = *(v94 + 16);
      v32 = *(v94 + 24);
      v30 = __OFSUB__(v32, v33);
      v31 = v32 - v33;
      if (v30)
      {
        goto LABEL_178;
      }

LABEL_40:
      if (v27 != v31)
      {
        goto LABEL_14;
      }

      if (v27 < 1)
      {
        goto LABEL_46;
      }

      v98 = v20;
      v101 = v18;
      if (v21 > 1)
      {
        if (v21 == 2)
        {
          v46 = *(v14 + 16);
          v47 = *(v14 + 24);
          outlined copy of Data._Representation(v14, v15);
          outlined copy of Data._Representation(v16, v17);
          outlined copy of Data._Representation(v18, v19);
          v48 = __DataStorage._bytes.getter();
          if (v48)
          {
            v49 = __DataStorage._offset.getter();
            if (__OFSUB__(v46, v49))
            {
              goto LABEL_191;
            }

            v48 += v46 - v49;
          }

          if (__OFSUB__(v47, v46))
          {
            goto LABEL_188;
          }

LABEL_103:
          MEMORY[0x1B274CD90]();
          closure #1 in static Data.== infix(_:_:)(v48, v94, v91, v103);
          v5 = a1;
          v2 = v90;
          if ((v103[0] & 1) == 0)
          {
            goto LABEL_13;
          }

          goto LABEL_48;
        }

        memset(v103, 0, 14);
        outlined copy of Data._Representation(v14, v15);
        outlined copy of Data._Representation(v16, v17);
        outlined copy of Data._Representation(v18, v19);
      }

      else
      {
        if (v21)
        {
          if (v14 >> 32 < v14)
          {
            goto LABEL_187;
          }

          outlined copy of Data._Representation(v14, v15);
          outlined copy of Data._Representation(v16, v17);
          outlined copy of Data._Representation(v18, v19);
          v48 = __DataStorage._bytes.getter();
          if (v48)
          {
            v55 = __DataStorage._offset.getter();
            if (__OFSUB__(v14, v55))
            {
              goto LABEL_192;
            }

            v48 += v14 - v55;
          }

          goto LABEL_103;
        }

        v103[0] = v14;
        LOWORD(v103[1]) = v15;
        BYTE2(v103[1]) = BYTE2(v15);
        BYTE3(v103[1]) = BYTE3(v15);
        BYTE4(v103[1]) = BYTE4(v15);
        BYTE5(v103[1]) = BYTE5(v15);
        outlined copy of Data._Representation(v14, v15);
        outlined copy of Data._Representation(v16, v17);
        outlined copy of Data._Representation(v18, v19);
      }

      closure #1 in static Data.== infix(_:_:)(v103, v94, v91, &v102);
      if (!v102)
      {
        goto LABEL_13;
      }

LABEL_48:
      v35 = v5[2];
      v34 = v5[3];
      v36 = v17 >> 62;
      v37 = v34 >> 62;
      if (v17 >> 62 == 3)
      {
        if (v16)
        {
          v38 = 0;
        }

        else
        {
          v38 = v17 == 0xC000000000000000;
        }

        v39 = 0;
        v40 = v38 && v34 >> 62 == 3;
        if (v40 && !v35 && v34 == 0xC000000000000000)
        {
          goto LABEL_121;
        }

LABEL_69:
        if (v37 > 1)
        {
          goto LABEL_63;
        }

        goto LABEL_70;
      }

      if (v36 > 1)
      {
        if (v36 == 2)
        {
          v45 = *(v16 + 16);
          v44 = *(v16 + 24);
          v30 = __OFSUB__(v44, v45);
          v39 = v44 - v45;
          if (v30)
          {
            goto LABEL_183;
          }

          goto LABEL_69;
        }

        v39 = 0;
        if (v37 > 1)
        {
          goto LABEL_63;
        }
      }

      else if (v36)
      {
        LODWORD(v39) = HIDWORD(v16) - v16;
        if (__OFSUB__(HIDWORD(v16), v16))
        {
          goto LABEL_184;
        }

        v39 = v39;
        if (v37 > 1)
        {
LABEL_63:
          if (v37 != 2)
          {
            if (v39)
            {
              goto LABEL_13;
            }

            goto LABEL_121;
          }

          v42 = *(v35 + 16);
          v41 = *(v35 + 24);
          v30 = __OFSUB__(v41, v42);
          v43 = v41 - v42;
          if (v30)
          {
            goto LABEL_182;
          }

          goto LABEL_72;
        }
      }

      else
      {
        v39 = BYTE6(v17);
        if (v37 > 1)
        {
          goto LABEL_63;
        }
      }

LABEL_70:
      if (!v37)
      {
        v43 = BYTE6(v34);
LABEL_72:
        if (v39 != v43)
        {
          goto LABEL_13;
        }

        goto LABEL_79;
      }

      if (__OFSUB__(HIDWORD(v35), v35))
      {
        goto LABEL_181;
      }

      if (v39 != HIDWORD(v35) - v35)
      {
        goto LABEL_13;
      }

LABEL_79:
      if (v39 < 1)
      {
        goto LABEL_121;
      }

      if (v36 > 1)
      {
        if (v36 != 2)
        {
          memset(v103, 0, 14);
LABEL_113:
          closure #1 in static Data.== infix(_:_:)(v103, v35, v34, &v102);
          if (!v102)
          {
            goto LABEL_13;
          }

          goto LABEL_121;
        }

        v83 = *(v16 + 24);
        v87 = *(v16 + 16);
        v50 = __DataStorage._bytes.getter();
        v82 = v19;
        if (v50)
        {
          v51 = v50;
          v52 = __DataStorage._offset.getter();
          v53 = v87;
          if (__OFSUB__(v87, v52))
          {
            goto LABEL_195;
          }

          v54 = v87 - v52 + v51;
        }

        else
        {
          v54 = 0;
          v53 = v87;
        }

        if (__OFSUB__(v83, v53))
        {
          goto LABEL_194;
        }

        MEMORY[0x1B274CD90]();
        closure #1 in static Data.== infix(_:_:)(v54, v35, v34, v103);
        v5 = a1;
        v2 = v90;
        v19 = v82;
        if ((v103[0] & 1) == 0)
        {
LABEL_13:
          outlined consume of Data._Representation(v14, v15);
          outlined consume of Data._Representation(v16, v17);
          outlined consume of Data._Representation(v101, v19);
          v10 = v97;
          goto LABEL_14;
        }
      }

      else
      {
        if (!v36)
        {
          v103[0] = v16;
          LOWORD(v103[1]) = v17;
          BYTE2(v103[1]) = BYTE2(v17);
          BYTE3(v103[1]) = BYTE3(v17);
          BYTE4(v103[1]) = BYTE4(v17);
          BYTE5(v103[1]) = BYTE5(v17);
          goto LABEL_113;
        }

        if (v16 >> 32 < v16)
        {
          goto LABEL_193;
        }

        v56 = __DataStorage._bytes.getter();
        if (v56)
        {
          v84 = v56;
          v57 = __DataStorage._offset.getter();
          if (__OFSUB__(v16, v57))
          {
            goto LABEL_196;
          }

          v58 = v16 - v57 + v84;
        }

        else
        {
          v58 = 0;
        }

        MEMORY[0x1B274CD90]();
        closure #1 in static Data.== infix(_:_:)(v58, v35, v34, v103);
        v5 = a1;
        v2 = v90;
        if ((v103[0] & 1) == 0)
        {
          goto LABEL_13;
        }
      }

LABEL_121:
      v59 = v5[4];
      v60 = v5[5];
      v61 = v19 >> 62;
      v62 = v60 >> 62;
      if (v19 >> 62 == 3)
      {
        v63 = 0;
        if (!v101 && v19 == 0xC000000000000000 && v60 >> 62 == 3)
        {
          v63 = 0;
          if (!v59 && v60 == 0xC000000000000000)
          {
            outlined consume of Data._Representation(v14, v15);
            outlined consume of Data._Representation(v16, v17);
            v64 = 0;
            v65 = 0xC000000000000000;
            goto LABEL_151;
          }
        }

LABEL_137:
        if (v62 > 1)
        {
          goto LABEL_131;
        }

        goto LABEL_138;
      }

      if (v61 > 1)
      {
        if (v61 == 2)
        {
          v70 = *(v101 + 16);
          v69 = *(v101 + 24);
          v30 = __OFSUB__(v69, v70);
          v63 = v69 - v70;
          if (v30)
          {
            goto LABEL_190;
          }

          goto LABEL_137;
        }

        v63 = 0;
        if (v62 > 1)
        {
          goto LABEL_131;
        }
      }

      else if (v61)
      {
        LODWORD(v63) = HIDWORD(v101) - v101;
        if (__OFSUB__(HIDWORD(v101), v101))
        {
          goto LABEL_189;
        }

        v63 = v63;
        if (v62 > 1)
        {
LABEL_131:
          if (v62 != 2)
          {
            if (v63)
            {
              goto LABEL_13;
            }

LABEL_150:
            outlined consume of Data._Representation(v14, v15);
            outlined consume of Data._Representation(v16, v17);
            v64 = v101;
            v65 = v19;
LABEL_151:
            outlined consume of Data._Representation(v64, v65);
            v10 = v97;
            goto LABEL_152;
          }

          v67 = *(v59 + 16);
          v66 = *(v59 + 24);
          v30 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v30)
          {
            goto LABEL_186;
          }

          goto LABEL_140;
        }
      }

      else
      {
        v63 = BYTE6(v19);
        if (v62 > 1)
        {
          goto LABEL_131;
        }
      }

LABEL_138:
      if (!v62)
      {
        v68 = BYTE6(v60);
LABEL_140:
        if (v63 != v68)
        {
          goto LABEL_13;
        }

        goto LABEL_146;
      }

      if (__OFSUB__(HIDWORD(v59), v59))
      {
        goto LABEL_185;
      }

      if (v63 != HIDWORD(v59) - v59)
      {
        goto LABEL_13;
      }

LABEL_146:
      if (v63 < 1)
      {
        goto LABEL_150;
      }

      if (v61 > 1)
      {
        if (v61 != 2)
        {
          memset(v103, 0, 14);
LABEL_168:
          closure #1 in static Data.== infix(_:_:)(v103, v59, v60, &v102);
          outlined consume of Data._Representation(v14, v15);
          outlined consume of Data._Representation(v16, v17);
          outlined consume of Data._Representation(v101, v19);
          v10 = v97;
          if (!v102)
          {
            goto LABEL_14;
          }

          goto LABEL_152;
        }

        v85 = *(v101 + 24);
        v88 = *(v101 + 16);
        v71 = __DataStorage._bytes.getter();
        if (v71)
        {
          v72 = v71;
          v73 = __DataStorage._offset.getter();
          v74 = v88;
          if (__OFSUB__(v88, v73))
          {
            goto LABEL_199;
          }

          v81 = v88 - v73 + v72;
        }

        else
        {
          v81 = 0;
          v74 = v88;
        }

        if (__OFSUB__(v85, v74))
        {
          goto LABEL_198;
        }

        MEMORY[0x1B274CD90]();
        v78 = v81;
      }

      else
      {
        if (!v61)
        {
          v103[0] = v101;
          LOWORD(v103[1]) = v19;
          BYTE2(v103[1]) = BYTE2(v19);
          BYTE3(v103[1]) = BYTE3(v19);
          BYTE4(v103[1]) = BYTE4(v19);
          BYTE5(v103[1]) = BYTE5(v19);
          goto LABEL_168;
        }

        if (v101 >> 32 < v101)
        {
          goto LABEL_197;
        }

        v75 = __DataStorage._bytes.getter();
        if (v75)
        {
          v86 = v75;
          v76 = __DataStorage._offset.getter();
          if (__OFSUB__(v101, v76))
          {
            goto LABEL_200;
          }

          v77 = v101 - v76 + v86;
        }

        else
        {
          v77 = 0;
        }

        MEMORY[0x1B274CD90]();
        v78 = v77;
      }

      closure #1 in static Data.== infix(_:_:)(v78, v59, v60, v103);
      outlined consume of Data._Representation(v14, v15);
      outlined consume of Data._Representation(v16, v17);
      outlined consume of Data._Representation(v101, v19);
      v5 = a1;
      v2 = v90;
      v10 = v97;
      if ((v103[0] & 1) == 0)
      {
        goto LABEL_14;
      }

LABEL_152:
      if (v98 == (v5[6] & 1))
      {
        goto LABEL_177;
      }

LABEL_14:
      v4 = (v4 + 1) & v99;
      if (((*(v100 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
      {
        goto LABEL_177;
      }
    }

    if (v14)
    {
      v22 = 0;
    }

    else
    {
      v22 = v15 == 0xC000000000000000;
    }

    v24 = !v22 || v10 < 3;
    if (((v24 | v96) & 1) == 0)
    {
      v98 = v20;
      v25 = 0;
      v26 = 0xC000000000000000;
      goto LABEL_47;
    }

LABEL_37:
    v27 = 0;
    if (v10 <= 1)
    {
      goto LABEL_34;
    }

    goto LABEL_38;
  }

LABEL_177:
  v79 = *MEMORY[0x1E69E9840];
  return v4;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(unsigned __int16 *a1, uint64_t a2)
{
  v63[3] = *MEMORY[0x1E69E9840];
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if (((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
  {
    goto LABEL_112;
  }

  v6 = a1;
  v7 = ~v4;
  v8 = *a1;
  v59 = v2 + 64;
  v61 = ~v4;
  v60 = v8;
  while (1)
  {
    v9 = (*(v2 + 48) + 40 * v5);
    if (*v9 != v8)
    {
      goto LABEL_6;
    }

    v11 = v9[1];
    v10 = v9[2];
    v13 = v9[3];
    v12 = v9[4];
    v14 = v6[1];
    v15 = v6[2];
    v16 = v10 >> 62;
    v17 = v15 >> 62;
    if (v10 >> 62 == 3)
    {
      if (v11)
      {
        v18 = 0;
      }

      else
      {
        v18 = v10 == 0xC000000000000000;
      }

      v19 = 0;
      v20 = v18 && v15 >> 62 == 3;
      if (v20 && !v14 && v15 == 0xC000000000000000)
      {
        v21 = 0;
        v22 = 0xC000000000000000;
        goto LABEL_45;
      }

LABEL_30:
      if (v17 <= 1)
      {
        goto LABEL_31;
      }

      goto LABEL_36;
    }

    if (v16 <= 1)
    {
      if (!v16)
      {
        v19 = BYTE6(v10);
        if (v17 <= 1)
        {
          goto LABEL_31;
        }

        goto LABEL_36;
      }

      LODWORD(v19) = HIDWORD(v11) - v11;
      if (__OFSUB__(HIDWORD(v11), v11))
      {
        goto LABEL_118;
      }

      v19 = v19;
      goto LABEL_30;
    }

    if (v16 == 2)
    {
      v24 = *(v11 + 16);
      v23 = *(v11 + 24);
      v25 = __OFSUB__(v23, v24);
      v19 = v23 - v24;
      if (v25)
      {
        goto LABEL_119;
      }

      goto LABEL_30;
    }

    v19 = 0;
    if (v17 <= 1)
    {
LABEL_31:
      if (v17)
      {
        LODWORD(v26) = HIDWORD(v14) - v14;
        if (__OFSUB__(HIDWORD(v14), v14))
        {
          goto LABEL_117;
        }

        v26 = v26;
      }

      else
      {
        v26 = BYTE6(v15);
      }

      goto LABEL_38;
    }

LABEL_36:
    if (v17 != 2)
    {
      if (v19)
      {
        goto LABEL_6;
      }

LABEL_44:
      v21 = v11;
      v22 = v10;
LABEL_45:
      outlined copy of Data._Representation(v21, v22);
      outlined copy of Data._Representation(v13, v12);
      goto LABEL_60;
    }

    v28 = *(v14 + 16);
    v27 = *(v14 + 24);
    v25 = __OFSUB__(v27, v28);
    v26 = v27 - v28;
    if (v25)
    {
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
LABEL_128:
      __break(1u);
LABEL_129:
      __break(1u);
LABEL_130:
      __break(1u);
LABEL_131:
      __break(1u);
    }

LABEL_38:
    if (v19 != v26)
    {
      goto LABEL_6;
    }

    if (v19 < 1)
    {
      goto LABEL_44;
    }

    if (v16 <= 1)
    {
      if (!v16)
      {
        v63[0] = v11;
        LOWORD(v63[1]) = v10;
        BYTE2(v63[1]) = BYTE2(v10);
        BYTE3(v63[1]) = BYTE3(v10);
        BYTE4(v63[1]) = BYTE4(v10);
        BYTE5(v63[1]) = BYTE5(v10);
        outlined copy of Data._Representation(v11, v10);
        outlined copy of Data._Representation(v13, v12);
        goto LABEL_59;
      }

      if (v11 >> 32 < v11)
      {
        goto LABEL_124;
      }

      outlined copy of Data._Representation(v11, v10);
      outlined copy of Data._Representation(v13, v12);
      v30 = __DataStorage._bytes.getter();
      if (v30)
      {
        v32 = __DataStorage._offset.getter();
        if (__OFSUB__(v11, v32))
        {
          goto LABEL_129;
        }

        v30 += v11 - v32;
      }

LABEL_56:
      MEMORY[0x1B274CD90]();
      closure #1 in static Data.== infix(_:_:)(v30, v14, v15, v63);
      v6 = a1;
      v2 = v58;
      v3 = v59;
      if ((v63[0] & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_60;
    }

    if (v16 == 2)
    {
      v29 = *(v11 + 16);
      v54 = *(v11 + 24);
      outlined copy of Data._Representation(v11, v10);
      outlined copy of Data._Representation(v13, v12);
      v30 = __DataStorage._bytes.getter();
      if (v30)
      {
        v31 = __DataStorage._offset.getter();
        if (__OFSUB__(v29, v31))
        {
          goto LABEL_128;
        }

        v30 += v29 - v31;
      }

      if (__OFSUB__(v54, v29))
      {
        goto LABEL_125;
      }

      goto LABEL_56;
    }

    memset(v63, 0, 14);
    outlined copy of Data._Representation(v11, v10);
    outlined copy of Data._Representation(v13, v12);
LABEL_59:
    closure #1 in static Data.== infix(_:_:)(v63, v14, v15, &v62);
    v3 = v59;
    if (!v62)
    {
      goto LABEL_4;
    }

LABEL_60:
    v34 = v6[3];
    v33 = v6[4];
    v35 = v12 >> 62;
    v36 = v33 >> 62;
    if (v12 >> 62 == 3)
    {
      if (v13)
      {
        v37 = 0;
      }

      else
      {
        v37 = v12 == 0xC000000000000000;
      }

      v38 = 0;
      v39 = v37 && v33 >> 62 == 3;
      if (v39 && !v34 && v33 == 0xC000000000000000)
      {
        outlined consume of Data._Representation(v11, v10);
        v52 = 0;
        v53 = 0xC000000000000000;
        goto LABEL_114;
      }

LABEL_82:
      if (v36 <= 1)
      {
        goto LABEL_83;
      }

      goto LABEL_88;
    }

    if (v35 <= 1)
    {
      if (!v35)
      {
        v38 = BYTE6(v12);
        if (v36 <= 1)
        {
          goto LABEL_83;
        }

        goto LABEL_88;
      }

      LODWORD(v38) = HIDWORD(v13) - v13;
      if (__OFSUB__(HIDWORD(v13), v13))
      {
        goto LABEL_122;
      }

      v38 = v38;
      goto LABEL_82;
    }

    if (v35 == 2)
    {
      v41 = *(v13 + 16);
      v40 = *(v13 + 24);
      v25 = __OFSUB__(v40, v41);
      v38 = v40 - v41;
      if (v25)
      {
        goto LABEL_123;
      }

      goto LABEL_82;
    }

    v38 = 0;
    if (v36 <= 1)
    {
LABEL_83:
      if (v36)
      {
        LODWORD(v42) = HIDWORD(v34) - v34;
        if (__OFSUB__(HIDWORD(v34), v34))
        {
          goto LABEL_120;
        }

        v42 = v42;
      }

      else
      {
        v42 = BYTE6(v33);
      }

      goto LABEL_90;
    }

LABEL_88:
    if (v36 != 2)
    {
      if (!v38)
      {
        break;
      }

LABEL_4:
      outlined consume of Data._Representation(v11, v10);
      outlined consume of Data._Representation(v13, v12);
      goto LABEL_5;
    }

    v44 = *(v34 + 16);
    v43 = *(v34 + 24);
    v25 = __OFSUB__(v43, v44);
    v42 = v43 - v44;
    if (v25)
    {
      goto LABEL_121;
    }

LABEL_90:
    if (v38 != v42)
    {
      goto LABEL_4;
    }

    if (v38 < 1)
    {
      break;
    }

    if (v35 > 1)
    {
      if (v35 == 2)
      {
        v45 = *(v13 + 16);
        v55 = *(v13 + 24);
        v46 = __DataStorage._bytes.getter();
        if (v46)
        {
          v47 = __DataStorage._offset.getter();
          if (__OFSUB__(v45, v47))
          {
            goto LABEL_130;
          }

          v46 += v45 - v47;
        }

        if (__OFSUB__(v55, v45))
        {
          goto LABEL_127;
        }

        goto LABEL_110;
      }

      memset(v63, 0, 14);
    }

    else
    {
      if (v35)
      {
        if (v13 >> 32 < v13)
        {
          goto LABEL_126;
        }

        v48 = __DataStorage._bytes.getter();
        if (v48)
        {
          v56 = v48;
          v49 = __DataStorage._offset.getter();
          if (__OFSUB__(v13, v49))
          {
            goto LABEL_131;
          }

          v46 = v13 - v49 + v56;
        }

        else
        {
          v46 = 0;
        }

LABEL_110:
        MEMORY[0x1B274CD90]();
        closure #1 in static Data.== infix(_:_:)(v46, v34, v33, v63);
        outlined consume of Data._Representation(v11, v10);
        outlined consume of Data._Representation(v13, v12);
        if (v63[0])
        {
          goto LABEL_112;
        }

        v6 = a1;
        v2 = v58;
        v3 = v59;
        goto LABEL_5;
      }

      v63[0] = v13;
      LOWORD(v63[1]) = v12;
      BYTE2(v63[1]) = BYTE2(v12);
      BYTE3(v63[1]) = BYTE3(v12);
      BYTE4(v63[1]) = BYTE4(v12);
      BYTE5(v63[1]) = BYTE5(v12);
    }

    closure #1 in static Data.== infix(_:_:)(v63, v34, v33, &v62);
    outlined consume of Data._Representation(v11, v10);
    outlined consume of Data._Representation(v13, v12);
    if (v62)
    {
      goto LABEL_112;
    }

    v3 = v59;
LABEL_5:
    v7 = v61;
    v8 = v60;
LABEL_6:
    v5 = (v5 + 1) & v7;
    if (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
    {
      goto LABEL_112;
    }
  }

  outlined consume of Data._Representation(v11, v10);
  v52 = v13;
  v53 = v12;
LABEL_114:
  outlined consume of Data._Representation(v52, v53);
LABEL_112:
  v50 = *MEMORY[0x1E69E9840];
  return v5;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15SwiftTLSLibrary17PAKEServerRecordsV9RecordKeyV_AC0eG0VTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15SwiftTLSLibrary17PAKEServerRecordsV9RecordKeyVAC0eG0VGMd, &_ss18_DictionaryStorageCy15SwiftTLSLibrary17PAKEServerRecordsV9RecordKeyVAC0eG0VGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    for (i = v1 - 1; ; --i)
    {
      v6 = *(v4 + 144);
      *&v26[128] = *(v4 + 128);
      *&v26[144] = v6;
      *&v26[160] = *(v4 + 160);
      v7 = *(v4 + 80);
      *&v26[64] = *(v4 + 64);
      *&v26[80] = v7;
      v8 = *(v4 + 112);
      *&v26[96] = *(v4 + 96);
      *&v26[112] = v8;
      v9 = *(v4 + 16);
      *v26 = *v4;
      *&v26[16] = v9;
      v10 = *(v4 + 48);
      *&v26[32] = *(v4 + 32);
      *&v26[48] = v10;
      *v27 = *v26;
      *&v27[8] = *&v26[8];
      *&v27[24] = *&v26[24];
      outlined init with copy of (PAKEServerRecords.RecordKey, PAKEServerRecord)(v26, v25);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v27);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = v3[6] + 40 * result;
      v14 = *&v27[16];
      *v13 = *v27;
      *(v13 + 16) = v14;
      *(v13 + 32) = *&v27[32];
      v15 = (v3[7] + (result << 7));
      v16 = *&v26[104];
      v17 = *&v26[120];
      v18 = *&v26[136];
      *(v15 + 106) = *&v26[146];
      v15[5] = v17;
      v15[6] = v18;
      v15[4] = v16;
      v19 = *&v26[88];
      v20 = *&v26[72];
      v21 = *&v26[56];
      *v15 = *&v26[40];
      v15[1] = v21;
      v15[2] = v20;
      v15[3] = v19;
      v22 = v3[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_11;
      }

      v3[2] = v24;
      if (!i)
      {

        return v3;
      }

      v4 += 168;
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PAKECredential and conformance PAKECredential()
{
  result = lazy protocol witness table cache variable for type PAKECredential and conformance PAKECredential;
  if (!lazy protocol witness table cache variable for type PAKECredential and conformance PAKECredential)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PAKECredential and conformance PAKECredential);
  }

  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

uint64_t getEnumTagSinglePayload for PAKECredential(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 49))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for PAKECredential(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2 + 1;
    }
  }

  return result;
}

uint64_t outlined init with copy of (PAKEServerRecords.RecordKey, PAKEServerRecord)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17PAKEServerRecordsV9RecordKeyV_AA0cE0VtMd, &_s15SwiftTLSLibrary17PAKEServerRecordsV9RecordKeyV_AA0cE0VtMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s15SwiftTLSLibrary10ByteBufferV25readPeerCertificateBundleAA0fgH0VSgyAA8TLSErrorOYKF@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v41 = a1;
  v4 = type metadata accessor for P256.Signing.PublicKey();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v38 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4P256O7SigningO9PublicKeyVSgMd, &_s9CryptoKit4P256O7SigningO9PublicKeyVSgMR);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v38 - v17;
  v19 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs5UInt8V_Tt0g5();
  if ((v19 & 0x100) != 0)
  {
    goto LABEL_10;
  }

  if (v19 == 1)
  {
    (*(v5 + 56))(a2, 1, 1, v4);
LABEL_19:
    v33 = type metadata accessor for PeerCertificateBundle(0);
    return (*(*(v33 - 8) + 56))(a2, 0, 1, v33);
  }

  if (v19)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, logger);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_1B25F5000, v27, v28, "invalid serialized session", v29, 2u);
      MEMORY[0x1B274ECF0](v29, -1, -1);
    }

    v39 = xmmword_1B26C6440;
    v40 = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    result = swift_willThrowTypedImpl();
    v30 = 7;
    goto LABEL_17;
  }

  result = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt64V_Tt0g5();
  if (v21)
  {
LABEL_7:
    v24 = *(v5 + 56);
    v24(v18, 1, 1, v4);
LABEL_8:
    outlined init with take of P256.Signing.PublicKey?(v18, v16, &_s9CryptoKit4P256O7SigningO9PublicKeyVSgMd, &_s9CryptoKit4P256O7SigningO9PublicKeyVSgMR);
    if ((*(v5 + 48))(v16, 1, v4) == 1)
    {
      outlined destroy of P256.Signing.PrivateKey?(v16, &_s9CryptoKit4P256O7SigningO9PublicKeyVSgMd, &_s9CryptoKit4P256O7SigningO9PublicKeyVSgMR);
LABEL_10:
      v25 = type metadata accessor for PeerCertificateBundle(0);
      return (*(*(v25 - 8) + 56))(a2, 1, 1, v25);
    }

    v32 = *(v5 + 32);
    v32(v9, v16, v4);
    v32(a2, v9, v4);
    v24(a2, 0, 1, v4);
    goto LABEL_19;
  }

  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    result = ByteBuffer.readSlice(length:)(result);
    if (v22 >> 60 == 15)
    {
      goto LABEL_7;
    }

    v34 = v22;
    v35 = v22 >> 62;
    if ((v22 >> 62) > 1)
    {
      if (v35 == 2)
      {
        v36 = *(result + 24);
      }

      else
      {
        v36 = 0;
      }
    }

    else if (v35)
    {
      v36 = result >> 32;
    }

    else
    {
      v36 = BYTE6(v22);
    }

    if (v36 >= v23)
    {
      v38[0] = result;
      v38[1] = v23;
      *&v39 = Data._Representation.subscript.getter();
      *(&v39 + 1) = v37;
      P256.Signing.PublicKey.init<A>(rawRepresentation:)();
      if (!v2)
      {
        outlined consume of ByteBuffer?(v38[0], v34);
        (*(v5 + 32))(v18, v11, v4);
        v24 = *(v5 + 56);
        v24(v18, 0, 1, v4);
        goto LABEL_8;
      }

      outlined consume of ByteBuffer?(v38[0], v34);
      v39 = xmmword_1B26C6420;
      v40 = 2;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      result = swift_willThrowTypedImpl();
      v30 = 32;
LABEL_17:
      v31 = v41;
      *v41 = v30;
      v31[1] = 0;
      *(v31 + 16) = 2;
      return result;
    }
  }

  __break(1u);
  return result;
}

unint64_t _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt64V_Tt0g5()
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = v0[2];
  v2 = v1 + 8;
  if (__OFADD__(v1, 8))
  {
    __break(1u);
LABEL_16:
    __break(1u);
  }

  v3 = *v0;
  v4 = v0[1];
  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v5 == 2)
    {
      if (*(v3 + 24) >= v2)
      {
        goto LABEL_7;
      }
    }

    else if (v2 < 1)
    {
      goto LABEL_7;
    }

LABEL_13:
    result = 0;
    goto LABEL_14;
  }

  if (v5)
  {
    v6 = v3 >> 32;
  }

  else
  {
    v6 = BYTE6(v4);
  }

  if (v6 < v2)
  {
    goto LABEL_13;
  }

LABEL_7:
  v9 = *v0;
  v10 = v0[1];
  if (v2 < v1)
  {
    goto LABEL_16;
  }

  outlined copy of Data._Representation(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
  lazy protocol witness table accessor for type Data and conformance Data();
  lazy protocol witness table accessor for type Range<Int> and conformance Range<A>();
  DataProtocol.copyBytes<A>(to:from:)();
  outlined consume of Data._Representation(v9, v10);
  result = bswap64(0);
  v0[2] = v2;
LABEL_14:
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned Int)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t specialized static PeerCertificateBundle.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for P256.Signing.PublicKey();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary21PeerCertificateBundleV0E033_9D809D834761BB6AED97717D65905FEBLLO_AFtMd, &_s15SwiftTLSLibrary21PeerCertificateBundleV0E033_9D809D834761BB6AED97717D65905FEBLLO_AFtMR);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = &v30 - v15;
  v17 = *(v14 + 56);
  outlined init with copy of PeerCertificateBundle.Bundle(a1, &v30 - v15);
  outlined init with copy of PeerCertificateBundle.Bundle(a2, &v16[v17]);
  v18 = *(v5 + 48);
  LODWORD(a2) = v18(v16, 1, v4);
  result = v18(&v16[v17], 1, v4);
  if (a2 == 1)
  {
    if (result == 1)
    {
      return result;
    }

    outlined destroy of PeerCertificateBundle.Bundle(&v16[v17]);
  }

  else if (result == 1)
  {
    (*(v5 + 8))(v16, v4);
  }

  else
  {
    v20 = *(v5 + 32);
    v20(v11, v16, v4);
    v21 = (v20)(v9, &v16[v17], v4);
    v22 = MEMORY[0x1B274D470](v21);
    v24 = v23;
    v25 = MEMORY[0x1B274D470]();
    v27 = v26;
    v28 = specialized static Data.== infix(_:_:)(v22, v24, v25, v26);
    outlined consume of Data._Representation(v25, v27);
    outlined consume of Data._Representation(v22, v24);
    v29 = *(v5 + 8);
    v29(v9, v4);
    v29(v11, v4);
    if (v28)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t specialized static PeerCertificateBundle.Bundle.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for P256.Signing.PublicKey();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v31 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary21PeerCertificateBundleV0E033_9D809D834761BB6AED97717D65905FEBLLO_AFtMd, &_s15SwiftTLSLibrary21PeerCertificateBundleV0E033_9D809D834761BB6AED97717D65905FEBLLO_AFtMR);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = &v31 - v15;
  v17 = *(v14 + 56);
  outlined init with copy of PeerCertificateBundle.Bundle(a1, &v31 - v15);
  outlined init with copy of PeerCertificateBundle.Bundle(a2, &v16[v17]);
  v18 = v5[6];
  LODWORD(a2) = v18(v16, 1, v4);
  v19 = v18(&v16[v17], 1, v4);
  if (a2 != 1)
  {
    if (v19 != 1)
    {
      v21 = v5[4];
      v21(v11, v16, v4);
      v22 = (v21)(v9, &v16[v17], v4);
      v23 = MEMORY[0x1B274D470](v22);
      v25 = v24;
      v26 = MEMORY[0x1B274D470]();
      v28 = v27;
      v20 = specialized static Data.== infix(_:_:)(v23, v25, v26, v27);
      outlined consume of Data._Representation(v26, v28);
      outlined consume of Data._Representation(v23, v25);
      v29 = v5[1];
      v29(v9, v4);
      v29(v11, v4);
      return v20 & 1;
    }

    (v5[1])(v16, v4);
    goto LABEL_7;
  }

  if (v19 != 1)
  {
    outlined destroy of PeerCertificateBundle.Bundle(&v16[v17]);
LABEL_7:
    v20 = 0;
    return v20 & 1;
  }

  v20 = 1;
  return v20 & 1;
}

uint64_t outlined destroy of PeerCertificateBundle.Bundle(uint64_t a1)
{
  v2 = type metadata accessor for PeerCertificateBundle.Bundle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
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

uint64_t outlined init with copy of SessionKeyManager<SHA384>.State(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_WORD *protocol witness for RawRepresentable.init(rawValue:) in conformance PAKEScheme@<X0>(_WORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 2) = 0;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PAKEScheme()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PAKEScheme()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

unint64_t PAKEScheme.description.getter(unsigned __int16 a1)
{
  result = 0xD000000000000010;
  if (a1 == 0xFFFF)
  {
    return 0xD000000000000013;
  }

  if (a1 != 32150)
  {
    _StringGuts.grow(_:)(24);

    v3 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1B274D610](v3);

    MEMORY[0x1B274D610](41, 0xE100000000000000);
    return 0xD000000000000015;
  }

  return result;
}

uint64_t ByteBuffer.writePAKEScheme(_:)(unsigned int a1)
{
  v7[5] = *MEMORY[0x1E69E9840];
  v6 = bswap32(a1) >> 16;
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

uint64_t ByteBuffer.readPAKEScheme()()
{
  v0 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt16V_Tt0g5();
  v1 = v0;
  if ((v0 & 0x10000) != 0)
  {
    v1 = 0;
  }

  return v0 & 0x10000 | v1;
}

unint64_t lazy protocol witness table accessor for type PAKEScheme and conformance PAKEScheme()
{
  result = lazy protocol witness table cache variable for type PAKEScheme and conformance PAKEScheme;
  if (!lazy protocol witness table cache variable for type PAKEScheme and conformance PAKEScheme)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PAKEScheme and conformance PAKEScheme);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PAKEScheme and conformance PAKEScheme;
  if (!lazy protocol witness table cache variable for type PAKEScheme and conformance PAKEScheme)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PAKEScheme and conformance PAKEScheme);
  }

  return result;
}

uint64_t static HKDF.expandLabel<A, B>(secret:label:context:length:)@<X0>(int64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, int64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X6>, char a7@<W7>, unint64_t a8@<X8>)
{
  LOBYTE(v9) = a7;
  v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 514, 0, MEMORY[0x1E69E7CC0]);
  if ((a5 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v18 = a5 >> 16;
    if (!(a5 >> 16))
    {
      v8 = v17;
      v24 = a2;
      a2 = *(v17 + 2);
      v18 = *(v17 + 3);
      v19 = v18 >> 1;
      a4 = a2 + 1;
      if (v18 >> 1 > a2)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_17:
  v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), a4, 1, v8);
  v18 = *(v8 + 3);
  v19 = v18 >> 1;
LABEL_4:
  *(v8 + 2) = a4;
  v8[a2 + 32] = BYTE1(a5);
  v20 = a2 + 2;
  if (v19 < v20)
  {
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v20, 1, v8);
  }

  *(v8 + 2) = v20;
  v8[a4 + 32] = a5;
  if ((a3 & 0x1000000000000000) != 0)
  {
    v21 = String.UTF8View._foreignCount()();
    if ((v21 & 0x8000000000000000) != 0)
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

    v21 = v24 & 0xFFFFFFFFFFFFLL;
  }

  if (v21 <= 0xFF)
  {
    goto LABEL_12;
  }

  __break(1u);
LABEL_11:
  v21 = HIBYTE(a3) & 0xF;
LABEL_12:
  v9 = v21 + 6;
  if ((v9 >> 8))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  a6 = *(v8 + 2);
  a8 = *(v8 + 3);
  a1 = a6 + 1;

  if (a6 >= a8 >> 1)
  {
LABEL_21:
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((a8 > 1), a1, 1, v8);
  }

  *(v8 + 2) = a1;
  v8[a6 + 32] = v9;
  specialized Array.append<A>(contentsOf:)(0x203331736C74, 0xE600000000000000);
  v22 = specialized Array.append<A>(contentsOf:)(v24, a3);
  MEMORY[0x1EEE9AC00](v22);
  dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
  lazy protocol witness table accessor for type [UInt8] and conformance <A> [A]();
  static HKDF.expand<A, B>(pseudoRandomKey:info:outputByteCount:)();
}

uint64_t static HKDF.deriveSecret<A>(secret:label:transcriptHash:)@<X0>(int64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, int64_t a4@<X3>, unint64_t a5@<X5>, unint64_t a6@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = dispatch thunk of static Digest.byteCount.getter();
  v15 = *(AssociatedConformanceWitness + 8);
  return static HKDF.expandLabel<A, B>(secret:label:context:length:)(a1, a2, a3, a4, v13, a5, AssociatedTypeWitness, a6);
}

uint64_t static HKDF.tlsExporter<A>(secret:label:context:)@<X0>(int64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, int64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X7>, unint64_t a8@<X8>)
{
  v26 = a6;
  v27 = a7;
  v28 = a8;
  v29 = a4;
  v24 = a2;
  v25 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v24 - v13;
  v15 = type metadata accessor for SymmetricKey();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  static HashFunction.zeroHash.getter(a5);
  static HKDF.deriveSecret<A>(secret:label:transcriptHash:)(a1, v24, v25, v14, v26, v19);
  (*(v11 + 8))(v14, AssociatedTypeWitness);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v21 = dispatch thunk of static Digest.byteCount.getter();
  lazy protocol witness table accessor for type SymmetricKey and conformance SymmetricKey();
  v23 = *(AssociatedConformanceWitness + 8);
  static HKDF.expandLabel<A, B>(secret:label:context:length:)(v19, 0x726574726F707865uLL, 0xE800000000000000, v29, v21, v15, AssociatedTypeWitness, v28);
  return (*(v16 + 8))(v19, v15);
}

unint64_t lazy protocol witness table accessor for type [UInt8] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SymmetricKey and conformance SymmetricKey()
{
  result = lazy protocol witness table cache variable for type SymmetricKey and conformance SymmetricKey;
  if (!lazy protocol witness table cache variable for type SymmetricKey and conformance SymmetricKey)
  {
    type metadata accessor for SymmetricKey();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymmetricKey and conformance SymmetricKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SymmetricKey and conformance SymmetricKey;
  if (!lazy protocol witness table cache variable for type SymmetricKey and conformance SymmetricKey)
  {
    type metadata accessor for SymmetricKey();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymmetricKey and conformance SymmetricKey);
  }

  return result;
}

uint64_t partial apply for closure #1 in static HKDF.extract(inputKeyMaterial:salt:)()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  lazy protocol witness table accessor for type UnsafeRawBufferPointer and conformance UnsafeRawBufferPointer();
  return static HKDF.extract<A>(inputKeyMaterial:salt:)();
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3, char *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary15CertificateTypeVGMd, &_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary15CertificateTypeVGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary10NamedGroupVGMd, &_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary10NamedGroupVGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary15SignatureSchemeVGMd, &_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary15SignatureSchemeVGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary9ExtensionO20PreSharedKeyKexModesV4ModeVGMd, &_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary9ExtensionO20PreSharedKeyKexModesV4ModeVGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary9ExtensionO4PAKEO9PAKEShareVGMd, &_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary9ExtensionO4PAKEO9PAKEShareVGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary9ExtensionO8KeyShareO0gH5EntryVGMd, &_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary9ExtensionO8KeyShareO0gH5EntryVGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary11CipherSuiteVGMd, &_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary11CipherSuiteVGMR);
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 1;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 5);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[32 * v10])
    {
      memmove(v15, v16, 32 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = (v13 - 32 + ((v13 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[2 * v10])
    {
      memmove(v14, v15, 2 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 2 * v10);
  }

  return v12;
}

__n128 HandshakeMessageParser.ParseResult.init(messageBytes:message:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *(a4 + 32);
  *(a5 + 72) = *(a4 + 48);
  v6 = *(a4 + 80);
  *(a5 + 88) = *(a4 + 64);
  *(a5 + 104) = v6;
  *(a5 + 113) = *(a4 + 89);
  result = *a4;
  v8 = *(a4 + 16);
  *(a5 + 24) = *a4;
  *(a5 + 40) = v8;
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 56) = v5;
  return result;
}

uint64_t HandshakeMessageParser.ParseResult.messageBytes.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  outlined copy of Data._Representation(v1, v2);
  return v1;
}

uint64_t HandshakeMessageParser.ParseResult.messageBytes.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = outlined consume of Data._Representation(*v3, v3[1]);
  *v3 = a1;
  v3[1] = a2;
  v3[2] = a3;
  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for HandshakeMessageParser(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for HandshakeMessageParser(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy129_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t storeEnumTagSinglePayload for HandshakeMessageParser.ParseResult(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 128) = 0;
    *result = a2 - 249;
    if (a3 >= 0xF9)
    {
      *(result + 129) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 129) = 0;
    }

    if (a2)
    {
      *(result + 128) = -a2;
    }
  }

  return result;
}

uint64_t ServerHandshakeStateMachine.init(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ServerHandshakeStateMachine.Configuration();
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a2 = xmmword_1B26C5EF0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v26 = 0;
  MEMORY[0x1B274ED00](&v26, 8);
  v9 = v26;
  v26 = 0;
  MEMORY[0x1B274ED00](&v26, 8);
  v10 = v26;
  v26 = 0;
  MEMORY[0x1B274ED00](&v26, 8);
  v11 = v26;
  v26 = 0;
  MEMORY[0x1B274ED00](&v26, 8);
  v12 = v26;
  v13 = type metadata accessor for ServerHandshakeStateMachine(0);
  v14 = (a2 + v13[8]);
  *v14 = v9;
  v14[1] = v10;
  v14[2] = v11;
  v14[3] = v12;
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_0(a1, a2 + v13[9], type metadata accessor for ServerHandshakeStateMachine.Configuration);
  v15 = a2 + v13[6];
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_0(a1, v8, type metadata accessor for ServerHandshakeStateMachine.Configuration);
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_0(v8, v15, type metadata accessor for ServerHandshakeStateMachine.Configuration);
  v16 = type metadata accessor for ServerHandshakeState.IdleState(0);
  v17 = v16[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  swift_storeEnumTagMultiPayload();
  *(v15 + v16[6]) = 0;
  v18 = (v15 + v16[7]);
  *v18 = 0;
  v18[1] = 0;
  v19 = (v15 + v16[8]);
  *v19 = 0;
  v19[1] = 0;
  LOBYTE(v5) = v8[*(v5 + 44)];
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v8, type metadata accessor for ServerHandshakeStateMachine.Configuration);
  *(v15 + v16[9]) = v5;
  type metadata accessor for ServerHandshakeState(0);
  swift_storeEnumTagMultiPayload();
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, logger);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_1B25F5000, v21, v22, "server state machine initialized", v23, 2u);
    MEMORY[0x1B274ECF0](v23, -1, -1);
  }

  return _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(a1, type metadata accessor for ServerHandshakeStateMachine.Configuration);
}

uint64_t _s15SwiftTLSLibrary27ServerHandshakeStateMachineV5epsks21epskSelectionCallback13configurationACSayAA4EPSKVG_ySayAA0a7OfferedL0VG_ySi_AHSgtctcSgAC13ConfigurationVtAA8TLSErrorOYKcfC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v97 = a5;
  v7 = v6;
  v101 = a2;
  v102 = a3;
  v11 = type metadata accessor for ServerHandshakeStateMachine.Configuration();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v98 = &v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ImportedPSK(0);
  v105 = *(v14 - 8);
  v15 = *(v105 + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v106 = &v97 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for RawEPSK(0);
  v17 = *(*(v109 - 8) + 64);
  MEMORY[0x1EEE9AC00](v109);
  v108 = (&v97 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = type metadata accessor for GeneralEPSK(0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x1EEE9AC00](v19 - 8);
  v24 = &v97 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v116 = &v97 - v25;
  v107 = type metadata accessor for EPSK(0);
  v26 = *(v107 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v107);
  v29 = (&v97 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  *a6 = xmmword_1B26C5EF0;
  *(a6 + 16) = 0;
  v100 = a6;
  *(a6 + 24) = 0;
  v120 = MEMORY[0x1E69E7CC0];
  v115 = *(a1 + 16);
  v103 = a4;
  v99 = v11;
  if (v115)
  {
    v30 = 0;
    v114 = *(a4 + *(v11 + 40));
    v31 = *(v26 + 80);
    v112 = v29;
    v113 = a1 + ((v31 + 32) & ~v31);
    v111 = v26;
    v104 = a1;
    while (v30 < *(a1 + 16))
    {
      v33 = *(v26 + 72);
      v118 = v30;
      _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_0(v113 + v33 * v30, v29, type metadata accessor for EPSK);
      if (v114)
      {
        v117 = v7;
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v34 = a1;
        v35 = type metadata accessor for Logger();
        __swift_project_value_buffer(v35, logger);
        v36 = Logger.logObject.getter();
        v37 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          *v38 = 0;
          _os_log_impl(&dword_1B25F5000, v36, v37, "raw epsk added to server", v38, 2u);
          MEMORY[0x1B274ECF0](v38, -1, -1);
        }

        v39 = *v29;
        v40 = v29[1];
        v41 = v29[2];
        v42 = *(v107 + 20);
        v43 = *(v109 + 20);
        v44 = type metadata accessor for SymmetricKey();
        v45 = v108;
        v46 = v108 + v43;
        v29 = v112;
        (*(*(v44 - 8) + 16))(v46, v112 + v42, v44);
        *v45 = v39;
        v45[1] = v40;
        v45[2] = v41;
        outlined init with take of ImportedPSK(v45, v116, type metadata accessor for RawEPSK);
        type metadata accessor for PSK(0);
        swift_storeEnumTagMultiPayload();
        v47 = v120;
        outlined copy of Data._Representation(v39, v40);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v47[2] + 1, 1, v47);
        }

        v49 = v47[2];
        v48 = v47[3];
        v26 = v111;
        a1 = v34;
        if (v49 >= v48 >> 1)
        {
          v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v48 > 1, v49 + 1, 1, v47);
        }

        v7 = v117;
        _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v29, type metadata accessor for EPSK);
        v47[2] = v49 + 1;
        outlined init with take of ImportedPSK(v116, v47 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v49, type metadata accessor for GeneralEPSK);
        v120 = v47;
      }

      else
      {
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v50 = type metadata accessor for Logger();
        __swift_project_value_buffer(v50, logger);
        v51 = Logger.logObject.getter();
        v52 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v51, v52))
        {
          v53 = swift_slowAlloc();
          *v53 = 0;
          _os_log_impl(&dword_1B25F5000, v51, v52, "server importing epsk", v53, 2u);
          MEMORY[0x1B274ECF0](v53, -1, -1);
        }

        v54 = _s15SwiftTLSLibrary4EPSKV18deriveImportedPSKs3forSayAA0E3PSKVGSayAA16TLSKDFIdentifierVG_tAA8TLSErrorOYKF(_s15SwiftTLSLibrary27ServerHandshakeStateMachineV5epsks21epskSelectionCallback13configurationACSayAA4EPSKVG_ySayAA0a7OfferedL0VG_ySi_AHSgtctcSgAC13ConfigurationVtAA8TLSErrorOYKcfCTv_r);
        v57 = v54;
        if (v7)
        {
          v92 = v54;
          v93 = v55;
          v94 = v56;
          outlined consume of (@escaping @callee_guaranteed (@guaranteed [SwiftOfferedEPSK], @guaranteed @escaping @callee_guaranteed (@unowned Int, @in_guaranteed EPSK?) -> ()) -> ())?(v101);

          _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v103, type metadata accessor for ServerHandshakeStateMachine.Configuration);
          _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v29, type metadata accessor for EPSK);

          v95 = v100[2];
          result = outlined consume of ByteBuffer?(*v100, v100[1]);
          v96 = v97;
          *v97 = v92;
          v96[1] = v93;
          *(v96 + 16) = v94;
          return result;
        }

        v7 = 0;
        v58 = *(v54 + 16);
        if (v58)
        {
          v117 = 0;
          v119[0] = MEMORY[0x1E69E7CC0];
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v58, 0);
          v59 = v119[0];
          v60 = v106;
          v61 = *(v105 + 80);
          v110 = v57;
          v62 = v57 + ((v61 + 32) & ~v61);
          v63 = *(v105 + 72);
          do
          {
            _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_0(v62, v60, type metadata accessor for ImportedPSK);
            outlined init with take of ImportedPSK(v60, v24, type metadata accessor for ImportedPSK);
            type metadata accessor for PSK(0);
            swift_storeEnumTagMultiPayload();
            v119[0] = v59;
            v65 = *(v59 + 16);
            v64 = *(v59 + 24);
            if (v65 >= v64 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v64 > 1, v65 + 1, 1);
              v60 = v106;
              v59 = v119[0];
            }

            *(v59 + 16) = v65 + 1;
            outlined init with take of ImportedPSK(v24, v59 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v65, type metadata accessor for GeneralEPSK);
            v62 += v63;
            --v58;
          }

          while (v58);

          v7 = v117;
          v32 = v104;
          v26 = v111;
          v29 = v112;
        }

        else
        {
          v32 = a1;

          v59 = MEMORY[0x1E69E7CC0];
        }

        specialized Array.append<A>(contentsOf:)(v59);
        _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v29, type metadata accessor for EPSK);
        a1 = v32;
      }

      v30 = v118 + 1;
      if (v118 + 1 == v115)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
    goto LABEL_38;
  }

LABEL_28:

  if (one-time initialization token for logger != -1)
  {
LABEL_38:
    swift_once();
  }

  v66 = type metadata accessor for Logger();
  __swift_project_value_buffer(v66, logger);
  v67 = v120;

  v68 = Logger.logObject.getter();
  v69 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    *v70 = 134217984;
    *(v70 + 4) = v67[2];

    _os_log_impl(&dword_1B25F5000, v68, v69, "server has %ld epsks", v70, 0xCu);
    MEMORY[0x1B274ECF0](v70, -1, -1);
  }

  else
  {
  }

  v119[0] = 0;
  MEMORY[0x1B274ED00](v119, 8);
  v71 = v119[0];
  v119[0] = 0;
  MEMORY[0x1B274ED00](v119, 8);
  v72 = v119[0];
  v119[0] = 0;
  MEMORY[0x1B274ED00](v119, 8);
  v73 = v119[0];
  v119[0] = 0;
  MEMORY[0x1B274ED00](v119, 8);
  v74 = v119[0];
  v75 = type metadata accessor for ServerHandshakeStateMachine(0);
  v76 = v100;
  v77 = (v100 + v75[8]);
  *v77 = v71;
  v77[1] = v72;
  v77[2] = v73;
  v77[3] = v74;
  v78 = v103;
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_0(v103, v76 + v75[9], type metadata accessor for ServerHandshakeStateMachine.Configuration);
  v79 = v76 + v75[6];
  v80 = v98;
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_0(v78, v98, type metadata accessor for ServerHandshakeStateMachine.Configuration);
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_0(v80, v79, type metadata accessor for ServerHandshakeStateMachine.Configuration);
  v81 = type metadata accessor for ServerHandshakeState.IdleState(0);
  v82 = v81[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  swift_storeEnumTagMultiPayload();
  *(v79 + v81[6]) = v67;
  v83 = (v79 + v81[7]);
  v85 = v101;
  v84 = v102;
  *v83 = v101;
  v83[1] = v84;
  v86 = (v79 + v81[8]);
  *v86 = 0;
  v86[1] = 0;
  v87 = *(v80 + *(v99 + 36));
  outlined copy of (@escaping @callee_guaranteed (@guaranteed [SwiftTLSOfferedEPSK], @guaranteed @escaping @callee_guaranteed (@guaranteed SecExternalPreSharedKey?) -> ()) -> ())?(v85, v84);
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v80, type metadata accessor for ServerHandshakeStateMachine.Configuration);
  *(v79 + v81[9]) = v87;
  type metadata accessor for ServerHandshakeState(0);
  swift_storeEnumTagMultiPayload();
  v88 = Logger.logObject.getter();
  v89 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v88, v89))
  {
    v90 = swift_slowAlloc();
    *v90 = 0;
    _os_log_impl(&dword_1B25F5000, v88, v89, "server state machine initialized with epsks", v90, 2u);
    MEMORY[0x1B274ECF0](v90, -1, -1);

    outlined consume of (@escaping @callee_guaranteed (@guaranteed [SwiftOfferedEPSK], @guaranteed @escaping @callee_guaranteed (@unowned Int, @in_guaranteed EPSK?) -> ()) -> ())?(v85);
  }

  else
  {
    outlined consume of (@escaping @callee_guaranteed (@guaranteed [SwiftOfferedEPSK], @guaranteed @escaping @callee_guaranteed (@unowned Int, @in_guaranteed EPSK?) -> ()) -> ())?(v85);
  }

  return _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v78, type metadata accessor for ServerHandshakeStateMachine.Configuration);
}

uint64_t _s15SwiftTLSLibrary27ServerHandshakeStateMachineV4pake13configurationACSayAA16PAKEServerRecordVG_AC13ConfigurationVtAA8TLSErrorOYKcfC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a2;
  v32 = type metadata accessor for ServerHandshakeStateMachine.Configuration();
  v5 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a3 = xmmword_1B26C5EF0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
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
    *v11 = 134217984;
    *(v11 + 4) = a1[2];

    _os_log_impl(&dword_1B25F5000, v9, v10, "server has %ld pake records", v11, 0xCu);
    MEMORY[0x1B274ECF0](v11, -1, -1);
  }

  else
  {
  }

  v34 = 0;
  MEMORY[0x1B274ED00](&v34, 8);
  v12 = v34;
  v34 = 0;
  MEMORY[0x1B274ED00](&v34, 8);
  v13 = v34;
  v34 = 0;
  MEMORY[0x1B274ED00](&v34, 8);
  v14 = v34;
  v34 = 0;
  MEMORY[0x1B274ED00](&v34, 8);
  v15 = v34;
  v16 = type metadata accessor for ServerHandshakeStateMachine(0);
  v17 = (a3 + v16[8]);
  *v17 = v12;
  v17[1] = v13;
  v17[2] = v14;
  v17[3] = v15;
  v18 = v33;
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_0(v33, a3 + v16[9], type metadata accessor for ServerHandshakeStateMachine.Configuration);
  v19 = a3 + v16[6];
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_0(v18, v7, type metadata accessor for ServerHandshakeStateMachine.Configuration);
  v20 = specialized PAKEServerRecords.init(_:)(a1);
  v22 = v21;
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_0(v7, v19, type metadata accessor for ServerHandshakeStateMachine.Configuration);
  v23 = type metadata accessor for ServerHandshakeState.IdleState(0);
  v24 = v23[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMd, &_s15SwiftTLSLibrary17SessionKeyManager33_648685FB43080F362C9D5000B9BE8BC2LLV5StateOy9CryptoKit6SHA384V_GMR);
  swift_storeEnumTagMultiPayload();
  *(v19 + v23[6]) = 0;
  v25 = (v19 + v23[7]);
  *v25 = 0;
  v25[1] = 0;
  v26 = (v19 + v23[8]);
  *v26 = v20;
  v26[1] = v22;
  LOBYTE(v20) = v7[*(v32 + 36)];
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v7, type metadata accessor for ServerHandshakeStateMachine.Configuration);
  *(v19 + v23[9]) = v20;
  type metadata accessor for ServerHandshakeState(0);
  swift_storeEnumTagMultiPayload();
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_1B25F5000, v27, v28, "server state machine initialized with pake records", v29, 2u);
    MEMORY[0x1B274ECF0](v29, -1, -1);
  }

  return _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v18, type metadata accessor for ServerHandshakeStateMachine.Configuration);
}

uint64_t *ServerHandshakeStateMachine.receivedNetworkData(_:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v5 == 2)
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
    if (!v5)
    {
      v7 = v6;
    }
  }

  v8 = v7 - v4;
  if (__OFSUB__(v7, v4))
  {
    __break(1u);
  }

  else if (one-time initialization token for logger == -1)
  {
    goto LABEL_10;
  }

  swift_once();
LABEL_10:
  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, logger);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    *(v12 + 4) = v8;
    _os_log_impl(&dword_1B25F5000, v10, v11, "received network data (%ld bytes)", v12, 0xCu);
    MEMORY[0x1B274ECF0](v12, -1, -1);
  }

  return HandshakeMessageParser.appendBytes(_:)(a1);
}

uint64_t _s15SwiftTLSLibrary27ServerHandshakeStateMachineV04stepD033_FF812F446598104118BFC43FA404A9AFLLAC10StepResultAELLOyAA8TLSErrorOYKF@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v3;
  v6 = v2;
  v45 = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState(0);
  v8 = *(*(v45 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v45);
  v41 = v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v40 - v11;
  v13 = type metadata accessor for ServerHandshakeState(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, logger);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v40[1] = v13;
    v21 = v6;
    v22 = a2;
    v23 = a1;
    v24 = v16;
    v25 = v20;
    *v20 = 0;
    _os_log_impl(&dword_1B25F5000, v18, v19, "server attempting step handshake", v20, 2u);
    v26 = v25;
    v16 = v24;
    a1 = v23;
    a2 = v22;
    v6 = v21;
    v5 = v3;
    MEMORY[0x1B274ECF0](v26, -1, -1);
  }

  v27 = type metadata accessor for ServerHandshakeStateMachine(0);
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_0(v6 + *(v27 + 24), v16, type metadata accessor for ServerHandshakeState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload != 6)
      {
        v36 = type metadata accessor for PartialHandshakeResult(0);
        (*(*(v36 - 8) + 56))(a2, 2, 2, v36);
        v29 = type metadata accessor for ServerHandshakeState;
        return _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v16, v29);
      }

      _s15SwiftTLSLibrary27ServerHandshakeStateMachineV24handleReadClientFinished33_FF812F446598104118BFC43FA404A9AFLLAC10StepResultAELLOyAA8TLSErrorOYKF(&v42, a2);
      v29 = type metadata accessor for ServerHandshakeState;
      if (!v5)
      {
        return _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v16, v29);
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {
        _s15SwiftTLSLibrary27ServerHandshakeStateMachineV04sendC17CertificateVerify33_FF812F446598104118BFC43FA404A9AFLLAC10StepResultAELLOyAA8TLSErrorOYKF(&v42, a2);
        v29 = type metadata accessor for ServerHandshakeState;
        if (!v5)
        {
          return _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v16, v29);
        }

        goto LABEL_21;
      }

      _s15SwiftTLSLibrary27ServerHandshakeStateMachineV04sendC8Finished33_FF812F446598104118BFC43FA404A9AFLLAC10StepResultAELLOyAA8TLSErrorOYKF(&v42, a2);
      v29 = type metadata accessor for ServerHandshakeState;
      if (!v5)
      {
        return _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v16, v29);
      }
    }

    v30 = v42;
    v31 = v43;
    v33 = v44;
    v32 = type metadata accessor for ServerHandshakeState;
    goto LABEL_24;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      _s15SwiftTLSLibrary27ServerHandshakeStateMachineV04sendC5Hello33_FF812F446598104118BFC43FA404A9AFLLAC10StepResultAELLOyAA8TLSErrorOYKF(&v42, a2);
      v29 = type metadata accessor for ServerHandshakeState;
      if (!v5)
      {
        return _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v16, v29);
      }
    }

    else
    {
      _s15SwiftTLSLibrary27ServerHandshakeStateMachineV21handleReadClientHello33_FF812F446598104118BFC43FA404A9AFLLAC10StepResultAELLOyAA8TLSErrorOYKF(&v42, a2);
      v29 = type metadata accessor for ServerHandshakeState;
      if (!v5)
      {
        return _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v16, v29);
      }
    }

    goto LABEL_21;
  }

  if (EnumCaseMultiPayload == 2)
  {
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineV04sendC19EncryptedExtensions33_FF812F446598104118BFC43FA404A9AFLLAC10StepResultAELLOyAA8TLSErrorOYKF(&v42, a2);
    v29 = type metadata accessor for ServerHandshakeState;
    if (!v5)
    {
      return _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v16, v29);
    }

LABEL_21:
    v30 = v42;
    v31 = v43;
    v32 = type metadata accessor for ServerHandshakeState;
    v33 = v44;
LABEL_24:
    result = _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v16, v32);
    *a1 = v30;
    *(a1 + 8) = v31;
    *(a1 + 16) = v33;
    return result;
  }

  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_0(v16, v12, type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState);
  v35 = v45;
  if (v12[*(v45 + 40)] != 1)
  {
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v12, type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState);
    v37 = v41;
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_0(v16, v41, type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState);
    if (*(v37 + *(v35 + 48) + 2))
    {
      v38 = v16;
      _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v37, type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState);
      _s15SwiftTLSLibrary27ServerHandshakeStateMachineV04sendC11Certificate33_FF812F446598104118BFC43FA404A9AFLLAC10StepResultAELLOyAA8TLSErrorOYKF(&v42, a2);
      if (v5)
      {
        v30 = v42;
        v31 = v43;
        v32 = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState;
        v33 = v44;
LABEL_36:
        v16 = v38;
        goto LABEL_24;
      }
    }

    else
    {
      v38 = v16;
      _s15SwiftTLSLibrary27ServerHandshakeStateMachineV04sendC8Finished33_FF812F446598104118BFC43FA404A9AFLLAC10StepResultAELLOyAA8TLSErrorOYKF(&v42, a2);
      if (v5)
      {
        v39 = v37;
        v30 = v42;
        v31 = v43;
        v33 = v44;
        _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v39, type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState);
        v32 = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState;
        goto LABEL_36;
      }

      _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v37, type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState);
    }

    v29 = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState;
    v16 = v38;
    return _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v16, v29);
  }

  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV04sendC8Finished33_FF812F446598104118BFC43FA404A9AFLLAC10StepResultAELLOyAA8TLSErrorOYKF(&v42, a2);
  if (v5)
  {
    v30 = v42;
    v31 = v43;
    v33 = v44;
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v12, type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState);
    v32 = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState;
    goto LABEL_24;
  }

  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v12, type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState);
  v29 = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState;
  return _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v16, v29);
}

uint64_t _s15SwiftTLSLibrary27ServerHandshakeStateMachineV21handleReadClientHello33_FF812F446598104118BFC43FA404A9AFLLAC10StepResultAELLOyAA8TLSErrorOYKF@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2;
  v60 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary22PartialHandshakeResultVSgMd, &_s15SwiftTLSLibrary22PartialHandshakeResultVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v33 - v8;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, logger);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1B25F5000, v11, v12, "server expecting client hello", v13, 2u);
    MEMORY[0x1B274ECF0](v13, -1, -1);
  }

  if (v2[1] >> 60 == 15)
  {
    goto LABEL_6;
  }

  result = _s15SwiftTLSLibrary10ByteBufferV18rewindOnNilOrErroryxSgAeCzq_YKXEq_YKs0I0R_r0_lFAA22HandshakeMessageParserV11ParseResultV_AA8TLSErrorOTg504_s15a12TLSLibrary22jkl15V05parsecD0AC11mn7VSgyAA8o9OYKFAgA10cD11VzAIYKXEfU_AHTf1ncn_n(v2, v2, v45, &v47);
  if (v3)
  {
    v19 = v45[0];
    v20 = v45[1];
    v21 = v46;
LABEL_11:
    *a1 = v19;
    *(a1 + 8) = v20;
    *(a1 + 16) = v21;
    return result;
  }

  v41[6] = v53;
  v41[7] = v54;
  v41[2] = v49;
  v41[3] = v50;
  v41[4] = v51;
  v41[5] = v52;
  v41[0] = v47;
  v41[1] = v48;
  v44[5] = v53;
  v44[6] = v54;
  v44[1] = v49;
  v44[2] = v50;
  v44[3] = v51;
  v44[4] = v52;
  v42 = v55;
  LOBYTE(v44[7]) = v55;
  v43 = v47;
  v44[0] = v48;
  if (_s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgWOg(&v43) == 1)
  {
LABEL_6:
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1B25F5000, v14, v15, "incomplete message, waiting for more data", v16, 2u);
      MEMORY[0x1B274ECF0](v16, -1, -1);
    }

    v17 = type metadata accessor for PartialHandshakeResult(0);
    return (*(*(v17 - 8) + 56))(v60, 2, 2, v17);
  }

  v58[3] = *(&v44[3] + 8);
  v58[4] = *(&v44[4] + 8);
  v59[0] = *(&v44[5] + 8);
  *(v59 + 9) = *(&v44[6] + 1);
  v58[0] = *(v44 + 8);
  v58[1] = *(&v44[1] + 8);
  v58[2] = *(&v44[2] + 8);
  if (LOBYTE(v44[7]))
  {
    ServerHandshakeStateMachine.logUnexpectedMessage(message:)(v58);
    v35 = xmmword_1B26C6430;
    v21 = 2;
    LOBYTE(v36) = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    result = outlined destroy of P256.Signing.PrivateKey?(v41, &_s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMd, _s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMR);
    v20 = 0;
    v19 = 4;
    goto LABEL_11;
  }

  v56[4] = *(&v44[4] + 8);
  v56[5] = *(&v44[5] + 8);
  v57 = *(&v44[6] + 1);
  v56[0] = *(v44 + 8);
  v56[1] = *(&v44[1] + 8);
  v56[2] = *(&v44[2] + 8);
  v56[3] = *(&v44[3] + 8);
  v35 = *(v44 + 8);
  v36 = *(&v44[1] + 8);
  v37 = *(&v44[2] + 8);
  v38 = *(&v44[3] + 8);
  *(v40 + 9) = *(&v44[6] + 1);
  v39 = *(&v44[4] + 8);
  v40[0] = *(&v44[5] + 8);
  outlined init with copy of ClientHello(&v35, &v34);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_1B25F5000, v22, v23, "server got client hello", v24, 2u);
    MEMORY[0x1B274ECF0](v24, -1, -1);
  }

  v25 = v43;
  v26 = *&v44[0];
  v27 = v5 + *(type metadata accessor for ServerHandshakeStateMachine(0) + 24);
  _s15SwiftTLSLibrary20ServerHandshakeStateO19receivedClientHello_5bytesAA07PartialD6ResultVSgAA0gH0V_AA10ByteBufferVtAA8TLSErrorOYKF(v56, v25, *(&v25 + 1), v26, v45, v9);
  outlined destroy of P256.Signing.PrivateKey?(v41, &_s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMd, _s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMR);
  outlined destroy of HandshakeMessage(v44 + 8);
  v28 = type metadata accessor for PartialHandshakeResult(0);
  v29 = (*(v28 - 8) + 48);
  v30 = (*v29)(v9, 1, v28);
  v31 = (v29 + 1);
  if (v30 == 1)
  {
    outlined destroy of P256.Signing.PrivateKey?(v9, &_s15SwiftTLSLibrary22PartialHandshakeResultVSgMd, &_s15SwiftTLSLibrary22PartialHandshakeResultVSgMR);
    return (*v31)(v60, 1, 2, v28);
  }

  else
  {
    v32 = v60;
    outlined init with take of ImportedPSK(v9, v60, type metadata accessor for PartialHandshakeResult);
    return (*v31)(v32, 0, 2, v28);
  }
}

uint64_t _s15SwiftTLSLibrary27ServerHandshakeStateMachineV04sendC5Hello33_FF812F446598104118BFC43FA404A9AFLLAC10StepResultAELLOyAA8TLSErrorOYKF@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v112 = a1;
  v101 = a2;
  v127 = *MEMORY[0x1E69E9840];
  v100 = type metadata accessor for PartialHandshakeResult(0);
  v99 = *(v100 - 8);
  v2 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v100);
  v111 = (&v99 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary15PAKEServerStateVSgMd, &_s15SwiftTLSLibrary15PAKEServerStateVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v109 = &v99 - v6;
  v108 = type metadata accessor for PAKEServerState(0);
  v107 = *(v108 - 8);
  v7 = *(v107 + 64);
  MEMORY[0x1EEE9AC00](v108);
  v102 = &v99 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary11GeneralEPSKVSgMd, &_s15SwiftTLSLibrary11GeneralEPSKVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v105 = &v99 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMd, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v99 - v14;
  v103 = type metadata accessor for GeneratedEphemeralPrivateKey(0);
  v16 = *(v103 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v103);
  v20 = &v99 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v104 = &v99 - v21;
  v22 = type metadata accessor for ServerHandshakeState(0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v99 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for ServerHandshakeState.ClientHelloState(0);
  v26 = *(*(v114 - 8) + 64);
  MEMORY[0x1EEE9AC00](v114);
  v113 = &v99 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  __swift_project_value_buffer(v28, logger);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_1B25F5000, v29, v30, "sending server hello", v31, 2u);
    MEMORY[0x1B274ECF0](v31, -1, -1);
  }

  v106 = type metadata accessor for ServerHandshakeStateMachine(0);
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_0(v115 + *(v106 + 24), v25, type metadata accessor for ServerHandshakeState);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v32 = v113;
    outlined init with take of ImportedPSK(v25, v113, type metadata accessor for ServerHandshakeState.ClientHelloState);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary9ExtensionOGMd, &_ss23_ContiguousArrayStorageCy15SwiftTLSLibrary9ExtensionOGMR);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1B26C6030;
    v116 = 1;
    *(v33 + 32) = 1027;
    *(v33 + 40) = 1;
    *(v33 + 112) = 32;
    outlined init with copy of Any?(v32 + *(v114 + 44), v15, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMd, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMR);
    if ((*(v16 + 48))(v15, 1, v103) == 1)
    {
      outlined destroy of P256.Signing.PrivateKey?(v15, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMd, &_s15SwiftTLSLibrary28GeneratedEphemeralPrivateKeyOSgMR);
    }

    else
    {
      v42 = v104;
      outlined init with take of ImportedPSK(v15, v104, type metadata accessor for GeneratedEphemeralPrivateKey);
      _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_0(v42, v20, type metadata accessor for GeneratedEphemeralPrivateKey);
      v43 = qword_1B26C6D78[swift_getEnumCaseMultiPayload()];
      _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v20, type metadata accessor for GeneratedEphemeralPrivateKey);
      v44 = GeneratedEphemeralPrivateKey.publicKeyData.getter();
      v46 = v44;
      v47 = 0;
      v48 = v45 >> 62;
      if ((v45 >> 62) > 1)
      {
        if (v48 == 2)
        {
          v47 = *(v44 + 16);
        }
      }

      else if (v48)
      {
        v47 = v44;
      }

      v54 = *(v33 + 16);
      v53 = *(v33 + 24);
      if (v54 >= v53 >> 1)
      {
        v97 = v45;
        v98 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v53 > 1), v54 + 1, 1, v33);
        v45 = v97;
        v33 = v98;
      }

      v55 = v45 | 0x1000000000000000;
      _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v104, type metadata accessor for GeneratedEphemeralPrivateKey);
      *(v33 + 16) = v54 + 1;
      v56 = v33 + 88 * v54;
      *(v56 + 32) = v43;
      *(v56 + 40) = v46;
      *(v56 + 48) = v55;
      *(v56 + 56) = v47;
      *(v56 + 112) = 64;
      v32 = v113;
    }

    v57 = v114;
    v58 = v105;
    outlined init with copy of Any?(v32 + *(v114 + 72), v105, &_s15SwiftTLSLibrary11GeneralEPSKVSgMd, &_s15SwiftTLSLibrary11GeneralEPSKVSgMR);
    v59 = type metadata accessor for GeneralEPSK(0);
    v60 = (*(*(v59 - 8) + 48))(v58, 1, v59);
    outlined destroy of P256.Signing.PrivateKey?(v58, &_s15SwiftTLSLibrary11GeneralEPSKVSgMd, &_s15SwiftTLSLibrary11GeneralEPSKVSgMR);
    if (v60 != 1)
    {
      v61 = *(v32 + v57[19]);
      v63 = *(v33 + 16);
      v62 = *(v33 + 24);
      if (v63 >= v62 >> 1)
      {
        v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v62 > 1), v63 + 1, 1, v33);
      }

      v125[0] = 1;
      *(v33 + 16) = v63 + 1;
      v64 = v33 + 88 * v63;
      *(v64 + 32) = v61;
      *(v64 + 40) = 0;
      *(v64 + 48) = v125[0];
      *(v64 + 112) = -96;
    }

    v65 = v115;
    v66 = v109;
    outlined init with copy of Any?(v32 + v57[21], v109, &_s15SwiftTLSLibrary15PAKEServerStateVSgMd, &_s15SwiftTLSLibrary15PAKEServerStateVSgMR);
    v67 = v108;
    if ((*(v107 + 48))(v66, 1, v108) == 1)
    {
      outlined destroy of P256.Signing.PrivateKey?(v66, &_s15SwiftTLSLibrary15PAKEServerStateVSgMd, &_s15SwiftTLSLibrary15PAKEServerStateVSgMR);
    }

    else
    {
      v68 = v102;
      outlined init with take of ImportedPSK(v66, v102, type metadata accessor for PAKEServerState);
      v69 = (v68 + *(v67 + 24));
      v70 = v69[2];
      if (v70 >> 60 == 15)
      {
        _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v68, type metadata accessor for PAKEServerState);
        v65 = v115;
      }

      else
      {
        v71 = *v69;
        v72 = v69[1];
        v73 = v69[3];
        v74 = v69[4];
        v75 = v69[5];
        v76 = v69[6];
        v77 = v69[7];
        v78 = v69[8];
        v79 = v69[9];
        v109 = v71;
        *v125 = v71;
        *&v125[8] = v72;
        *&v125[16] = v70;
        *&v125[24] = v73;
        *&v125[32] = v74;
        *&v125[40] = v75;
        v108 = v75;
        v107 = v76;
        *&v125[48] = v76;
        *&v125[56] = v77;
        v105 = v77;
        v104 = v78;
        *&v125[64] = v78;
        *&v125[72] = v79;
        v103 = v79;
        outlined init with copy of Extension.PAKE.PAKEServerHello(v125, &v117);
        v81 = *(v33 + 16);
        v80 = *(v33 + 24);
        if (v81 >= v80 >> 1)
        {
          v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v80 > 1), v81 + 1, 1, v33);
        }

        LOBYTE(v117) = 1;
        _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v102, type metadata accessor for PAKEServerState);
        *(v33 + 16) = v81 + 1;
        v82 = v33 + 88 * v81;
        *(v82 + 32) = v109;
        *(v82 + 40) = v72;
        *(v82 + 48) = v70;
        *(v82 + 56) = v73;
        v83 = v108;
        *(v82 + 64) = v74;
        *(v82 + 72) = v83;
        v84 = v105;
        *(v82 + 80) = v107;
        *(v82 + 88) = v84;
        v85 = v103;
        *(v82 + 96) = v104;
        *(v82 + 104) = v85;
        *(v82 + 112) = -63;
        v65 = v115;
        v32 = v113;
        v57 = v114;
      }
    }

    v86 = (v65 + *(v106 + 32));
    v87 = v32 + v57[14];
    v88 = v57[6];
    v89 = v86[1];
    *&v125[8] = *v86;
    *&v125[24] = v89;
    v90 = *(v87 + 16);
    *&v125[40] = *v87;
    v91 = *(v87 + 32);
    LOWORD(v87) = *(v32 + v88);
    *v125 = 771;
    *&v125[56] = v90;
    *&v125[72] = v91;
    LOWORD(v126) = v87;
    BYTE2(v126) = 0;
    *(&v126 + 1) = v33;
    v92 = v111;
    v93 = v110;
    _s15SwiftTLSLibrary20ServerHandshakeStateO07sendingC5HelloyAA07PartialD6ResultVAA0cG0VzAA8TLSErrorOYKF(v125, v123, v111);
    if (!v93)
    {
      v119 = *&v125[32];
      v120 = *&v125[48];
      v121 = *&v125[64];
      v122 = v126;
      v117 = *v125;
      v118 = *&v125[16];
      outlined destroy of ServerHello(&v117);
      _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v32, type metadata accessor for ServerHandshakeState.ClientHelloState);
      v96 = v101;
      outlined init with take of ImportedPSK(v92, v101, type metadata accessor for PartialHandshakeResult);
      result = (*(v99 + 56))(v96, 0, 2, v100);
      goto LABEL_34;
    }

    v49 = v123[0];
    v51 = v123[1];
    v52 = v124;
    v119 = *&v125[32];
    v120 = *&v125[48];
    v121 = *&v125[64];
    v122 = v126;
    v117 = *v125;
    v118 = *&v125[16];
    outlined destroy of ServerHello(&v117);
    result = _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v32, type metadata accessor for ServerHandshakeState.ClientHelloState);
  }

  else
  {
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v25, type metadata accessor for ServerHandshakeState);
    v34 = ServerHandshakeStateMachine.stateDescription.getter();
    v36 = v35;
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *v125 = v40;
      *v39 = 136315138;
      v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, v125);

      *(v39 + 4) = v41;
      _os_log_impl(&dword_1B25F5000, v37, v38, "invalid state for handleReadClientHello: %s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v40);
      MEMORY[0x1B274ECF0](v40, -1, -1);
      MEMORY[0x1B274ECF0](v39, -1, -1);
    }

    else
    {
    }

    *v125 = xmmword_1B26C6450;
    v49 = 2;
    v125[16] = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    result = swift_willThrowTypedImpl();
    v51 = 0;
    v52 = 2;
  }

  v94 = v112;
  *v112 = v49;
  v94[1] = v51;
  *(v94 + 16) = v52;
LABEL_34:
  v95 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _s15SwiftTLSLibrary27ServerHandshakeStateMachineV04sendC19EncryptedExtensions33_FF812F446598104118BFC43FA404A9AFLLAC10StepResultAELLOyAA8TLSErrorOYKF@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v3;
  v6 = v2;
  v102 = a2;
  v7 = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v104 = &v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PartialHandshakeResult(0);
  v100 = *(v10 - 8);
  v101 = v10;
  v11 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v99 = &v97 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ServerHandshakeState(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v97 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v97 - v18;
  v112 = type metadata accessor for ServerHandshakeState.ServerHelloState(0);
  v20 = *(*(v112 - 1) + 64);
  v21 = MEMORY[0x1EEE9AC00](v112);
  v106 = &v97 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v97 - v23;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  *&v103 = __swift_project_value_buffer(v25, logger);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.info.getter();
  v28 = os_log_type_enabled(v26, v27);
  v107 = v6;
  if (v28)
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_1B25F5000, v26, v27, "sending server EE", v29, 2u);
    v5 = v3;
    v6 = v107;
    MEMORY[0x1B274ECF0](v29, -1, -1);
  }

  v30 = type metadata accessor for ServerHandshakeStateMachine(0);
  v105 = *(v30 + 24);
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_0(v6 + v105, v19, type metadata accessor for ServerHandshakeState);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v19, type metadata accessor for ServerHandshakeState);
    v43 = ServerHandshakeStateMachine.stateDescription.getter();
    v45 = v44;
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *&v110 = v49;
      *v48 = 136315138;
      v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v45, &v110);

      *(v48 + 4) = v50;
      _os_log_impl(&dword_1B25F5000, v46, v47, "invalid state for sendServerEncryptedExtensions: %s", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v49);
      MEMORY[0x1B274ECF0](v49, -1, -1);
      MEMORY[0x1B274ECF0](v48, -1, -1);
    }

    else
    {
    }

    v110 = xmmword_1B26C6450;
    v74 = 2;
    v111 = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    result = swift_willThrowTypedImpl();
    v76 = 0;
    v77 = 2;
    goto LABEL_40;
  }

  outlined init with take of ImportedPSK(v19, v24, type metadata accessor for ServerHandshakeState.ServerHelloState);
  v31 = v24[v112[12] + 2];
  v98 = v17;
  if (v31 == 1)
  {
    v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v34 = *(v32 + 2);
    v33 = *(v32 + 3);
    v35 = v34 + 1;
    if (v34 >= v33 >> 1)
    {
      v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1, v32);
    }

    *(v32 + 2) = v35;
    v36 = &v32[88 * v34];
    *(v36 + 4) = &_s15SwiftTLSLibrary27ServerHandshakeStateMachineV04sendC19EncryptedExtensions33_FF812F446598104118BFC43FA404A9AFLLAC10StepResultAELLOyAA8TLSErrorOYKFTv_r;
    v36[112] = 16;
    v37 = &v24[v112[14]];
    if ((v37[1] & 1) == 0)
    {
      v38 = a1;
      v39 = *v37;
      v40 = *(v32 + 3);
      v41 = v34 + 2;
      if (v41 > (v40 >> 1))
      {
        v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v41, 1, v32);
      }

      LOBYTE(v110) = 1;
      *(v32 + 2) = v41;
      v42 = &v32[88 * v35];
      *(v42 + 4) = v39;
      v42[40] = v110;
      v42[112] = 112;
      a1 = v38;
    }
  }

  else
  {
    v32 = MEMORY[0x1E69E7CC0];
  }

  v51 = &v24[v112[8]];
  v52 = *(v51 + 1);
  if (v52)
  {
    *&v103 = a1;
    v53 = *v51;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v32 + 2) + 1, 1, v32);
    }

    v55 = *(v32 + 2);
    v54 = *(v32 + 3);
    if (v55 >= v54 >> 1)
    {
      v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v54 > 1), v55 + 1, 1, v32);
    }

    LOBYTE(v110) = 1;
    *(v32 + 2) = v55 + 1;
    v56 = &v32[88 * v55];
    *(v56 + 4) = v53;
    *(v56 + 5) = v52;
    v56[48] = v110;
    v56[112] = 48;
    a1 = v103;
  }

  v57 = v107;
  v58 = v107 + *(v30 + 36);
  v59 = v58 + *(type metadata accessor for ServerHandshakeStateMachine.Configuration() + 24);
  v60 = *(v59 + 8);
  v61 = *(v59 + 8);
  if (v61 >> 60 != 15)
  {
    v103 = *(v59 + 8);
    v62 = *v59;
    outlined copy of Data._Representation(*v59, v61);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v32 + 2) + 1, 1, v32);
    }

    v64 = *(v32 + 2);
    v63 = *(v32 + 3);
    v65 = v103;
    if (v64 >= v63 >> 1)
    {
      v96 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v63 > 1), v64 + 1, 1, v32);
      v65 = v103;
      v32 = v96;
    }

    *(v32 + 2) = v64 + 1;
    v66 = &v32[88 * v64];
    *(v66 + 4) = v62;
    *(v66 + 40) = v65;
    v66[112] = 0x80;
  }

  v67 = v24;
  v68 = v106;
  if (v24[v112[11]] == 1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v70 = v104;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v32 + 2) + 1, 1, v32);
    }

    v72 = *(v32 + 2);
    v71 = *(v32 + 3);
    if (v72 >= v71 >> 1)
    {
      v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v71 > 1), v72 + 1, 1, v32);
    }

    LOBYTE(v110) = 1;
    *(v32 + 2) = v72 + 1;
    v73 = &v32[88 * v72];
    *(v73 + 8) = 0;
    v73[36] = v110;
    v73[112] = 80;
    v68 = v106;
  }

  else
  {
    v70 = v104;
  }

  v78 = v57 + v105;
  v79 = v98;
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_0(v78, v98, type metadata accessor for ServerHandshakeState);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    outlined init with take of ImportedPSK(v79, v68, type metadata accessor for ServerHandshakeState.ServerHelloState);
    v80 = v5;
    v81 = _s15SwiftTLSLibrary20ServerHandshakeStateO0c19EncryptedExtensionsE0V07sendingcfG008originalE006serverfG0AE5state_AA10ByteBufferV0jfG5BytestAC0c5HelloE0V_AA0fG0VtAA8TLSErrorOYKFZ(v70, v68, v32, v108);
    v84 = v68;
    if (v80)
    {
      v74 = v108[0];
      v76 = v108[1];
      v77 = v109;

      _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v68, type metadata accessor for ServerHandshakeState.ServerHelloState);
      result = _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v67, type metadata accessor for ServerHandshakeState.ServerHelloState);
LABEL_40:
      *a1 = v74;
      *(a1 + 8) = v76;
      *(a1 + 16) = v77;
      return result;
    }

    v85 = v81;
    v86 = v82;
    v87 = v83;
    v112 = 0;

    _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v84, type metadata accessor for ServerHandshakeState.ServerHelloState);
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v67, type metadata accessor for ServerHandshakeState.ServerHelloState);
    v88 = v107;
    v89 = v105;
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v107 + v105, type metadata accessor for ServerHandshakeState);
    outlined init with take of ImportedPSK(v70, v88 + v89, type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState);
    swift_storeEnumTagMultiPayload();
    v90 = v101;
    v91 = *(v101 + 20);
    v92 = type metadata accessor for EncryptionLevel(0);
    v93 = *(*(v92 - 8) + 56);
    v94 = v99;
    v93(&v99[v91], 1, 1, v92);
    v93(v94 + *(v90 + 24), 1, 1, v92);
    *v94 = v85;
    v94[1] = v86;
    v94[2] = v87;
    *(v94 + *(v90 + 28)) = xmmword_1B26C5EF0;
    v95 = v102;
    outlined init with take of ImportedPSK(v94, v102, type metadata accessor for PartialHandshakeResult);
    return (*(v100 + 56))(v95, 0, 2, v90);
  }

  else
  {
    result = _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v79, type metadata accessor for ServerHandshakeState);
    __break(1u);
  }

  return result;
}

uint64_t _s15SwiftTLSLibrary27ServerHandshakeStateMachineV04sendC8Finished33_FF812F446598104118BFC43FA404A9AFLLAC10StepResultAELLOyAA8TLSErrorOYKF@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v3;
  v6 = v2;
  v8 = type metadata accessor for PartialHandshakeResult(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = (&v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, logger);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v26 = v8;
    v17 = v9;
    v18 = a2;
    v19 = v16;
    *v16 = 0;
    _os_log_impl(&dword_1B25F5000, v14, v15, "sending server finished", v16, 2u);
    v20 = v19;
    a2 = v18;
    v9 = v17;
    v5 = v3;
    v8 = v26;
    MEMORY[0x1B274ECF0](v20, -1, -1);
  }

  v21 = v6 + *(type metadata accessor for ServerHandshakeStateMachine(0) + 24);
  result = _s15SwiftTLSLibrary20ServerHandshakeStateO07sendingC8FinishedAA07PartialD6ResultVyAA8TLSErrorOYKF(&v24, v12);
  if (v5)
  {
    v23 = v25;
    *a1 = v24;
    *(a1 + 16) = v23;
  }

  else
  {
    outlined init with take of ImportedPSK(v12, a2, type metadata accessor for PartialHandshakeResult);
    return (*(v9 + 56))(a2, 0, 2, v8);
  }

  return result;
}

uint64_t _s15SwiftTLSLibrary27ServerHandshakeStateMachineV04sendC11Certificate33_FF812F446598104118BFC43FA404A9AFLLAC10StepResultAELLOyAA8TLSErrorOYKF@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a1;
  v42 = a2;
  v2 = type metadata accessor for ServerHandshakeState.ServerCertificateState(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ServerHandshakeState(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PartialHandshakeResult(0);
  v41 = *(v14 - 1);
  v15 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = (&v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, logger);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_1B25F5000, v19, v20, "sending server certificate", v21, 2u);
    MEMORY[0x1B274ECF0](v21, -1, -1);
  }

  v22 = *(type metadata accessor for ServerHandshakeStateMachine(0) + 24);
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_0(v47 + v22, v13, type metadata accessor for ServerHandshakeState);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    outlined init with take of ImportedPSK(v13, v9, type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState);
    v23 = v44;
    v24 = _s15SwiftTLSLibrary20ServerHandshakeStateO0c11CertificateE0V07sendingcF008originalE0AE5state_AA10ByteBufferV06serverF5BytestAC0c19EncryptedExtensionsE0V_tAA8TLSErrorOYKFZ(v5, v9, v45);
    if (v23)
    {
      v27 = v45[0];
      v28 = v45[1];
      v29 = v46;
      result = _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v9, type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState);
      v31 = v43;
      *v43 = v27;
      v31[1] = v28;
      *(v31 + 16) = v29;
    }

    else
    {
      v32 = v24;
      v33 = v25;
      v34 = v26;
      v44 = 0;
      _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v9, type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState);
      v35 = v47;
      _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v47 + v22, type metadata accessor for ServerHandshakeState);
      outlined init with take of ImportedPSK(v5, v35 + v22, type metadata accessor for ServerHandshakeState.ServerCertificateState);
      swift_storeEnumTagMultiPayload();
      v36 = v14[5];
      v37 = type metadata accessor for EncryptionLevel(0);
      v38 = *(*(v37 - 8) + 56);
      v38(v17 + v36, 1, 1, v37);
      v38(v17 + v14[6], 1, 1, v37);
      *v17 = v32;
      v17[1] = v33;
      v17[2] = v34;
      *(v17 + v14[7]) = xmmword_1B26C5EF0;
      v39 = v42;
      outlined init with take of ImportedPSK(v17, v42, type metadata accessor for PartialHandshakeResult);
      return (*(v41 + 56))(v39, 0, 2, v14);
    }
  }

  else
  {
    result = _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v13, type metadata accessor for ServerHandshakeState);
    __break(1u);
  }

  return result;
}

uint64_t _s15SwiftTLSLibrary27ServerHandshakeStateMachineV04sendC17CertificateVerify33_FF812F446598104118BFC43FA404A9AFLLAC10StepResultAELLOyAA8TLSErrorOYKF@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a1;
  v42 = a2;
  v2 = type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ServerHandshakeState.ServerCertificateState(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ServerHandshakeState(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PartialHandshakeResult(0);
  v41 = *(v14 - 1);
  v15 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = (&v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, logger);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_1B25F5000, v19, v20, "sending server certificate verify", v21, 2u);
    MEMORY[0x1B274ECF0](v21, -1, -1);
  }

  v22 = *(type metadata accessor for ServerHandshakeStateMachine(0) + 24);
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_0(v47 + v22, v13, type metadata accessor for ServerHandshakeState);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    outlined init with take of ImportedPSK(v13, v9, type metadata accessor for ServerHandshakeState.ServerCertificateState);
    v23 = v44;
    v24 = _s15SwiftTLSLibrary20ServerHandshakeStateO0c17CertificateVerifyE0V07sendingcfG008originalE0AE5state_AA10ByteBufferV06serverfG5BytestAC0cfE0V_tAA8TLSErrorOYKFZ(v5, v9, v45);
    if (v23)
    {
      v27 = v45[0];
      v28 = v45[1];
      v29 = v46;
      result = _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v9, type metadata accessor for ServerHandshakeState.ServerCertificateState);
      v31 = v43;
      *v43 = v27;
      v31[1] = v28;
      *(v31 + 16) = v29;
    }

    else
    {
      v32 = v24;
      v33 = v25;
      v34 = v26;
      v44 = 0;
      _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v9, type metadata accessor for ServerHandshakeState.ServerCertificateState);
      v35 = v47;
      _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v47 + v22, type metadata accessor for ServerHandshakeState);
      outlined init with take of ImportedPSK(v5, v35 + v22, type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState);
      swift_storeEnumTagMultiPayload();
      v36 = v14[5];
      v37 = type metadata accessor for EncryptionLevel(0);
      v38 = *(*(v37 - 8) + 56);
      v38(v17 + v36, 1, 1, v37);
      v38(v17 + v14[6], 1, 1, v37);
      *v17 = v32;
      v17[1] = v33;
      v17[2] = v34;
      *(v17 + v14[7]) = xmmword_1B26C5EF0;
      v39 = v42;
      outlined init with take of ImportedPSK(v17, v42, type metadata accessor for PartialHandshakeResult);
      return (*(v41 + 56))(v39, 0, 2, v14);
    }
  }

  else
  {
    result = _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v13, type metadata accessor for ServerHandshakeState);
    __break(1u);
  }

  return result;
}

uint64_t _s15SwiftTLSLibrary27ServerHandshakeStateMachineV24handleReadClientFinished33_FF812F446598104118BFC43FA404A9AFLLAC10StepResultAELLOyAA8TLSErrorOYKF@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
    _os_log_impl(&dword_1B25F5000, v13, v14, "server expecting client finished", v15, 2u);
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

    return (*(v8 + 56))(v43, 2, 2, v7);
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
    ServerHandshakeStateMachine.logUnexpectedMessage(message:)(v61);
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
    _os_log_impl(&dword_1B25F5000, v28, v29, "server got message expecting finished", v30, 2u);
    MEMORY[0x1B274ECF0](v30, -1, -1);
  }

  v31 = v48;
  v39 = *&v49[0];
  v32 = v6 + *(type metadata accessor for ServerHandshakeStateMachine(0) + 24);
  _s15SwiftTLSLibrary20ServerHandshakeStateO22receivedClientFinished_5bytesAA07PartialD6ResultVAA0H7MessageV_AA10ByteBufferVtAA8TLSErrorOYKF(v42, v41, v40, v31, *(&v31 + 1), v39, v50, v11);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_1B25F5000, v33, v34, "server completed TLS handshake", v36, 2u);
    MEMORY[0x1B274ECF0](v36, -1, -1);
  }

  outlined destroy of HandshakeMessage(v49 + 8);

  outlined destroy of P256.Signing.PrivateKey?(v46, &_s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMd, _s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMR);
  v37 = v43;
  outlined init with take of ImportedPSK(v11, v43, type metadata accessor for PartialHandshakeResult);
  return (*(v8 + 56))(v37, 0, 2, v7);
}

uint64_t _s15SwiftTLSLibrary27ServerHandshakeStateMachineV07processD0AA07PartialD6ResultVSgyAA8TLSErrorOYKF@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a1;
  v3 = v2;
  v36 = a2;
  v4 = type metadata accessor for ServerHandshakeStateMachine.StepResult(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  while (1)
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
      _os_log_impl(&dword_1B25F5000, v9, v10, "server attempting process step", v11, 2u);
      MEMORY[0x1B274ECF0](v11, -1, -1);
    }

    _s15SwiftTLSLibrary27ServerHandshakeStateMachineV04stepD033_FF812F446598104118BFC43FA404A9AFLLAC10StepResultAELLOyAA8TLSErrorOYKF(&v33, v7);
    if (v3)
    {
      break;
    }

    v3 = 0;
    v12 = type metadata accessor for PartialHandshakeResult(0);
    v13 = *(v12 - 8);
    v14 = (*(v13 + 48))(v7, 2, v12);
    if (v14 != 1)
    {
      if (v14)
      {
        v16 = 1;
        v15 = v36;
      }

      else
      {
        v15 = v36;
        outlined init with take of ImportedPSK(v7, v36, type metadata accessor for PartialHandshakeResult);
        v16 = 0;
      }

      return (*(v13 + 56))(v15, v16, 1, v12);
    }
  }

  v17 = v33;
  v18 = v34;
  v19 = v35;
  outlined copy of TLSError(v33, v34, v35);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();
  outlined consume of TLSError(v17, v18, v19);
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v22 = 138412290;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_allocError();
    *v24 = v17;
    *(v24 + 8) = v18;
    *(v24 + 16) = v19;
    outlined copy of TLSError(v17, v18, v19);
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v22 + 4) = v25;
    *v23 = v25;
    _os_log_impl(&dword_1B25F5000, v20, v21, "processing message failed due to error %@", v22, 0xCu);
    outlined destroy of P256.Signing.PrivateKey?(v23, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B274ECF0](v23, -1, -1);
    MEMORY[0x1B274ECF0](v22, -1, -1);
  }

  v30 = v17;
  v31 = v18;
  v32 = v19;
  lazy protocol witness table accessor for type TLSError and conformance TLSError();
  result = swift_willThrowTypedImpl();
  v27 = v29;
  *v29 = v17;
  v27[1] = v18;
  *(v27 + 16) = v19;
  return result;
}

uint64_t ServerHandshakeStateMachine.peerQUICTransportParameters.getter()
{
  ready = type metadata accessor for ServerHandshakeState.ReadyState(0);
  v0 = *(*(ready - 8) + 64);
  MEMORY[0x1EEE9AC00](ready);
  v57 = &v51 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for ServerHandshakeState.ServerFinishedState(0);
  v2 = *(*(v54 - 8) + 64);
  MEMORY[0x1EEE9AC00](v54);
  v55 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState(0);
  v4 = *(*(v52 - 8) + 64);
  MEMORY[0x1EEE9AC00](v52);
  v53 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ServerHandshakeState.ServerCertificateState(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ServerHandshakeState.ServerHelloState(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ServerHandshakeState.ClientHelloState(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for ServerHandshakeState(0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v51 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for ServerHandshakeStateMachine(0);
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_0(v58 + *(v26 + 24), v25, type metadata accessor for ServerHandshakeState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v35 = v25;
        v36 = v55;
        outlined init with take of ImportedPSK(v35, v55, type metadata accessor for ServerHandshakeState.ServerFinishedState);
        v37 = (v36 + *(v54 + 24));
        v28 = *v37;
        v38 = v37[2];
        outlined copy of Data?(*v37, v37[1]);
        v39 = type metadata accessor for ServerHandshakeState.ServerFinishedState;
      }

      else
      {
        v47 = v25;
        v36 = v57;
        outlined init with take of ImportedPSK(v47, v57, type metadata accessor for ServerHandshakeState.ReadyState);
        v48 = (v36 + *(ready + 24));
        v28 = *v48;
        v49 = v48[2];
        outlined copy of Data?(*v48, v48[1]);
        v39 = type metadata accessor for ServerHandshakeState.ReadyState;
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {
        outlined init with take of ImportedPSK(v25, v9, type metadata accessor for ServerHandshakeState.ServerCertificateState);
        v29 = &v9[*(v6 + 28)];
        v28 = *v29;
        v30 = v29[2];
        outlined copy of Data?(*v29, v29[1]);
        v31 = type metadata accessor for ServerHandshakeState.ServerCertificateState;
        v32 = v9;
LABEL_17:
        _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v32, v31);
        return v28;
      }

      v42 = v25;
      v36 = v53;
      outlined init with take of ImportedPSK(v42, v53, type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState);
      v43 = (v36 + *(v52 + 24));
      v28 = *v43;
      v44 = v43[2];
      outlined copy of Data?(*v43, v43[1]);
      v39 = type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState;
    }

    v31 = v39;
    v32 = v36;
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      outlined init with take of ImportedPSK(v25, v17, type metadata accessor for ServerHandshakeState.ServerHelloState);
      v33 = &v17[*(v14 + 28)];
      v28 = *v33;
      v34 = v33[2];
      outlined copy of Data?(*v33, v33[1]);
      v31 = type metadata accessor for ServerHandshakeState.ServerHelloState;
      v32 = v17;
    }

    else
    {
      outlined init with take of ImportedPSK(v25, v13, type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState);
      v45 = &v13[*(v10 + 28)];
      v28 = *v45;
      v46 = v45[2];
      outlined copy of Data?(*v45, v45[1]);
      v31 = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState;
      v32 = v13;
    }

    goto LABEL_17;
  }

  if (EnumCaseMultiPayload)
  {
    outlined init with take of ImportedPSK(v25, v21, type metadata accessor for ServerHandshakeState.ClientHelloState);
    v40 = &v21[*(v18 + 60)];
    v28 = *v40;
    v41 = v40[2];
    outlined copy of Data?(*v40, v40[1]);
    v31 = type metadata accessor for ServerHandshakeState.ClientHelloState;
    v32 = v21;
    goto LABEL_17;
  }

  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v25, type metadata accessor for ServerHandshakeState);
  return 0;
}

uint64_t ServerHandshakeStateMachine.negotiatedCiphersuite.getter()
{
  ready = type metadata accessor for ServerHandshakeState.ReadyState(0);
  v0 = *(*(ready - 8) + 64);
  MEMORY[0x1EEE9AC00](ready);
  v38 = &v34 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for ServerHandshakeState.ServerFinishedState(0);
  v2 = *(*(v37 - 8) + 64);
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState(0);
  v4 = *(*(v35 - 8) + 64);
  MEMORY[0x1EEE9AC00](v35);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for ServerHandshakeState.ServerCertificateState(0);
  v7 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ServerHandshakeState.ServerHelloState(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ServerHandshakeState.ClientHelloState(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for ServerHandshakeState(0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v34 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
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
        v28 = *&v9[*(v34 + 36)];
        v30 = type metadata accessor for ServerHandshakeState.ServerCertificateState;
        v31 = v9;
      }

      else
      {
        outlined init with take of ImportedPSK(v25, v6, type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState);
        v28 = *&v6[*(v35 + 32)];
        v30 = type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState;
        v31 = v6;
      }

      goto LABEL_17;
    }

    if (EnumCaseMultiPayload == 6)
    {
      v13 = v36;
      outlined init with take of ImportedPSK(v25, v36, type metadata accessor for ServerHandshakeState.ServerFinishedState);
      v28 = *&v13[*(v37 + 32)];
      v32 = type metadata accessor for ServerHandshakeState.ServerFinishedState;
    }

    else
    {
      v13 = v38;
      outlined init with take of ImportedPSK(v25, v38, type metadata accessor for ServerHandshakeState.ReadyState);
      v28 = *&v13[*(ready + 32)];
      v32 = type metadata accessor for ServerHandshakeState.ReadyState;
    }

    goto LABEL_16;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      outlined init with take of ImportedPSK(v25, v17, type metadata accessor for ServerHandshakeState.ServerHelloState);
      v28 = *&v17[*(v14 + 36)];
      v30 = type metadata accessor for ServerHandshakeState.ServerHelloState;
      v31 = v17;
LABEL_17:
      _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v31, v30);
      v29 = 0;
      return v28 | (v29 << 16);
    }

    outlined init with take of ImportedPSK(v25, v13, type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState);
    v28 = *&v13[*(v10 + 36)];
    v32 = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState;
LABEL_16:
    v30 = v32;
    v31 = v13;
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload)
  {
    outlined init with take of ImportedPSK(v25, v21, type metadata accessor for ServerHandshakeState.ClientHelloState);
    v28 = *&v21[*(v18 + 24)];
    v30 = type metadata accessor for ServerHandshakeState.ClientHelloState;
    v31 = v21;
    goto LABEL_17;
  }

  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v25, type metadata accessor for ServerHandshakeState);
  v28 = 0;
  v29 = 1;
  return v28 | (v29 << 16);
}

uint64_t ServerHandshakeStateMachine.negotiatedPAKE.getter()
{
  ready = type metadata accessor for ServerHandshakeState.ReadyState(0);
  v0 = *(*(ready - 8) + 64);
  MEMORY[0x1EEE9AC00](ready);
  v40 = &v38 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for ServerHandshakeState.ServerFinishedState(0);
  v2 = *(*(v39 - 8) + 64);
  MEMORY[0x1EEE9AC00](v39);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ServerHandshakeState.ServerHelloState(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary15PAKEServerStateVSgMd, &_s15SwiftTLSLibrary15PAKEServerStateVSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v38 - v15;
  v17 = type metadata accessor for ServerHandshakeState.ClientHelloState(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for ServerHandshakeState(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v38 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for ServerHandshakeStateMachine(0);
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_0(v42 + *(v25 + 24), v24, type metadata accessor for ServerHandshakeState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload <= 5)
    {
      goto LABEL_7;
    }

    if (EnumCaseMultiPayload == 6)
    {
      outlined init with take of ImportedPSK(v24, v4, type metadata accessor for ServerHandshakeState.ServerFinishedState);
      v33 = &v4[*(v39 + 40)];
      v28 = *v33;
      v29 = v33[2];
      v31 = type metadata accessor for ServerHandshakeState.ServerFinishedState;
      v32 = v4;
    }

    else
    {
      v35 = v40;
      outlined init with take of ImportedPSK(v24, v40, type metadata accessor for ServerHandshakeState.ReadyState);
      v36 = v35 + *(ready + 40);
      v28 = *v36;
      v29 = *(v36 + 2);
      v31 = type metadata accessor for ServerHandshakeState.ReadyState;
      v32 = v35;
    }
  }

  else
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        outlined init with take of ImportedPSK(v24, v20, type metadata accessor for ServerHandshakeState.ClientHelloState);
        outlined init with copy of Any?(&v20[*(v17 + 84)], v16, &_s15SwiftTLSLibrary15PAKEServerStateVSgMd, &_s15SwiftTLSLibrary15PAKEServerStateVSgMR);
        _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v20, type metadata accessor for ServerHandshakeState.ClientHelloState);
        v27 = type metadata accessor for PAKEServerState(0);
        if ((*(*(v27 - 8) + 48))(v16, 1, v27) != 1)
        {
          v28 = *&v16[*(v27 + 32)];
          _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v16, type metadata accessor for PAKEServerState);
          v29 = 0;
          return v28 | (v29 << 16);
        }

        outlined destroy of P256.Signing.PrivateKey?(v16, &_s15SwiftTLSLibrary15PAKEServerStateVSgMd, &_s15SwiftTLSLibrary15PAKEServerStateVSgMR);
        goto LABEL_8;
      }

LABEL_7:
      _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v24, type metadata accessor for ServerHandshakeState);
LABEL_8:
      v28 = 0;
      v29 = 1;
      return v28 | (v29 << 16);
    }

    if (EnumCaseMultiPayload == 2)
    {
      outlined init with take of ImportedPSK(v24, v12, type metadata accessor for ServerHandshakeState.ServerHelloState);
      v30 = &v12[*(v9 + 48)];
      v28 = *v30;
      v29 = v30[2];
      v31 = type metadata accessor for ServerHandshakeState.ServerHelloState;
      v32 = v12;
    }

    else
    {
      outlined init with take of ImportedPSK(v24, v8, type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState);
      v34 = &v8[*(v5 + 48)];
      v28 = *v34;
      v29 = v34[2];
      v31 = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState;
      v32 = v8;
    }
  }

  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v32, v31);
  if (v29)
  {
    v28 = 0;
  }

  return v28 | (v29 << 16);
}

uint64_t ServerHandshakeStateMachine.negotiatedEPSK.getter()
{
  ready = type metadata accessor for ServerHandshakeState.ReadyState(0);
  v0 = *(*(ready - 8) + 64);
  MEMORY[0x1EEE9AC00](ready);
  v34 = &v33 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for ServerHandshakeState.ServerFinishedState(0);
  v2 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ServerHandshakeState.ServerHelloState(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary11GeneralEPSKVSgMd, &_s15SwiftTLSLibrary11GeneralEPSKVSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v33 - v15;
  v17 = type metadata accessor for ServerHandshakeState.ClientHelloState(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for ServerHandshakeState(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v33 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for ServerHandshakeStateMachine(0);
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_0(v36 + *(v25 + 24), v24, type metadata accessor for ServerHandshakeState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload <= 5)
    {
      goto LABEL_6;
    }

    if (EnumCaseMultiPayload == 6)
    {
      outlined init with take of ImportedPSK(v24, v4, type metadata accessor for ServerHandshakeState.ServerFinishedState);
      v28 = v4[*(v33 + 48)];
      v29 = type metadata accessor for ServerHandshakeState.ServerFinishedState;
      v30 = v4;
    }

    else
    {
      v31 = v34;
      outlined init with take of ImportedPSK(v24, v34, type metadata accessor for ServerHandshakeState.ReadyState);
      v28 = *(v31 + *(ready + 48));
      v29 = type metadata accessor for ServerHandshakeState.ReadyState;
      v30 = v31;
    }

LABEL_13:
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v30, v29);
    return v28;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      outlined init with take of ImportedPSK(v24, v12, type metadata accessor for ServerHandshakeState.ServerHelloState);
      v28 = v12[*(v9 + 40)];
      v29 = type metadata accessor for ServerHandshakeState.ServerHelloState;
      v30 = v12;
    }

    else
    {
      outlined init with take of ImportedPSK(v24, v8, type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState);
      v28 = v8[*(v5 + 40)];
      v29 = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState;
      v30 = v8;
    }

    goto LABEL_13;
  }

  if (!EnumCaseMultiPayload)
  {
LABEL_6:
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v24, type metadata accessor for ServerHandshakeState);
    return 0;
  }

  outlined init with take of ImportedPSK(v24, v20, type metadata accessor for ServerHandshakeState.ClientHelloState);
  outlined init with copy of Any?(&v20[*(v17 + 72)], v16, &_s15SwiftTLSLibrary11GeneralEPSKVSgMd, &_s15SwiftTLSLibrary11GeneralEPSKVSgMR);
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v20, type metadata accessor for ServerHandshakeState.ClientHelloState);
  v27 = type metadata accessor for GeneralEPSK(0);
  v28 = (*(*(v27 - 8) + 48))(v16, 1, v27) != 1;
  outlined destroy of P256.Signing.PrivateKey?(v16, &_s15SwiftTLSLibrary11GeneralEPSKVSgMd, &_s15SwiftTLSLibrary11GeneralEPSKVSgMR);
  return v28;
}

uint64_t ServerHandshakeStateMachine.epskOffered.getter()
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
        v28 = v9[*(v34 + 48)];
        v29 = type metadata accessor for ServerHandshakeState.ServerCertificateState;
        v30 = v9;
      }

      else
      {
        outlined init with take of ImportedPSK(v25, v6, type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState);
        v28 = v6[*(v35 + 44)];
        v29 = type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState;
        v30 = v6;
      }

      goto LABEL_17;
    }

    if (EnumCaseMultiPayload == 6)
    {
      v13 = v36;
      outlined init with take of ImportedPSK(v25, v36, type metadata accessor for ServerHandshakeState.ServerFinishedState);
      v28 = v13[*(v37 + 52)];
      v31 = type metadata accessor for ServerHandshakeState.ServerFinishedState;
    }

    else
    {
      v13 = v38;
      outlined init with take of ImportedPSK(v25, v38, type metadata accessor for ServerHandshakeState.ReadyState);
      v28 = v13[*(ready + 52)];
      v31 = type metadata accessor for ServerHandshakeState.ReadyState;
    }

    goto LABEL_16;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      outlined init with take of ImportedPSK(v25, v17, type metadata accessor for ServerHandshakeState.ServerHelloState);
      v28 = v17[*(v14 + 60)];
      v29 = type metadata accessor for ServerHandshakeState.ServerHelloState;
      v30 = v17;
LABEL_17:
      _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v30, v29);
      return v28;
    }

    outlined init with take of ImportedPSK(v25, v13, type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState);
    v28 = v13[*(v10 + 56)];
    v31 = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState;
LABEL_16:
    v29 = v31;
    v30 = v13;
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload)
  {
    outlined init with take of ImportedPSK(v25, v21, type metadata accessor for ServerHandshakeState.ClientHelloState);
    v28 = v21[*(v18 + 68)];
    v29 = type metadata accessor for ServerHandshakeState.ClientHelloState;
    v30 = v21;
    goto LABEL_17;
  }

  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v25, type metadata accessor for ServerHandshakeState);
  return 0;
}

uint64_t ServerHandshakeStateMachine.pakeOffered.getter()
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
        v28 = v9[*(v34 + 52)];
        v29 = type metadata accessor for ServerHandshakeState.ServerCertificateState;
        v30 = v9;
      }

      else
      {
        outlined init with take of ImportedPSK(v25, v6, type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState);
        v28 = v6[*(v35 + 48)];
        v29 = type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState;
        v30 = v6;
      }

      goto LABEL_17;
    }

    if (EnumCaseMultiPayload == 6)
    {
      v13 = v36;
      outlined init with take of ImportedPSK(v25, v36, type metadata accessor for ServerHandshakeState.ServerFinishedState);
      v28 = v13[*(v37 + 60)];
      v31 = type metadata accessor for ServerHandshakeState.ServerFinishedState;
    }

    else
    {
      v13 = v38;
      outlined init with take of ImportedPSK(v25, v38, type metadata accessor for ServerHandshakeState.ReadyState);
      v28 = v13[*(ready + 56)];
      v31 = type metadata accessor for ServerHandshakeState.ReadyState;
    }

    goto LABEL_16;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      outlined init with take of ImportedPSK(v25, v17, type metadata accessor for ServerHandshakeState.ServerHelloState);
      v28 = v17[*(v14 + 68)];
      v29 = type metadata accessor for ServerHandshakeState.ServerHelloState;
      v30 = v17;
LABEL_17:
      _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v30, v29);
      return v28;
    }

    outlined init with take of ImportedPSK(v25, v13, type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState);
    v28 = v13[*(v10 + 64)];
    v31 = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState;
LABEL_16:
    v29 = v31;
    v30 = v13;
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload)
  {
    outlined init with take of ImportedPSK(v25, v21, type metadata accessor for ServerHandshakeState.ClientHelloState);
    v28 = v21[*(v18 + 92)];
    v29 = type metadata accessor for ServerHandshakeState.ClientHelloState;
    v30 = v21;
    goto LABEL_17;
  }

  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v25, type metadata accessor for ServerHandshakeState);
  return 0;
}

uint64_t ServerHandshakeStateMachine.negotiatedGroup.getter()
{
  ready = type metadata accessor for ServerHandshakeState.ReadyState(0);
  v0 = *(*(ready - 8) + 64);
  MEMORY[0x1EEE9AC00](ready);
  v46 = &v40 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for ServerHandshakeState.ServerFinishedState(0);
  v2 = *(*(v43 - 8) + 64);
  MEMORY[0x1EEE9AC00](v43);
  v44 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState(0);
  v4 = *(*(v41 - 8) + 64);
  MEMORY[0x1EEE9AC00](v41);
  v42 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ServerHandshakeState.ServerCertificateState(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ServerHandshakeState.ServerHelloState(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ServerHandshakeState.ClientHelloState(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for ServerHandshakeState(0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v40 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for ServerHandshakeStateMachine(0);
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOcTm_0(v47 + *(v26 + 24), v25, type metadata accessor for ServerHandshakeState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v17 = v44;
        outlined init with take of ImportedPSK(v25, v44, type metadata accessor for ServerHandshakeState.ServerFinishedState);
        v32 = &v17[*(v43 + 44)];
        if (v32[2])
        {
          v28 = 0;
        }

        else
        {
          v28 = NamedGroup.metadataDescription.getter(*v32);
        }

        v31 = type metadata accessor for ServerHandshakeState.ServerFinishedState;
      }

      else
      {
        v17 = v46;
        outlined init with take of ImportedPSK(v25, v46, type metadata accessor for ServerHandshakeState.ReadyState);
        v36 = &v17[*(ready + 44)];
        if (v36[2])
        {
          v28 = 0;
        }

        else
        {
          v28 = NamedGroup.metadataDescription.getter(*v36);
        }

        v31 = type metadata accessor for ServerHandshakeState.ReadyState;
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {
        outlined init with take of ImportedPSK(v25, v9, type metadata accessor for ServerHandshakeState.ServerCertificateState);
        v29 = &v9[*(v6 + 44)];
        if (v29[2])
        {
          v28 = 0;
        }

        else
        {
          v28 = NamedGroup.metadataDescription.getter(*v29);
        }

        v37 = type metadata accessor for ServerHandshakeState.ServerCertificateState;
        v38 = v9;
        goto LABEL_38;
      }

      v17 = v42;
      outlined init with take of ImportedPSK(v25, v42, type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState);
      v34 = &v17[*(v41 + 40)];
      if (v34[2])
      {
        v28 = 0;
      }

      else
      {
        v28 = NamedGroup.metadataDescription.getter(*v34);
      }

      v31 = type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState;
    }

LABEL_37:
    v37 = v31;
    v38 = v17;
LABEL_38:
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v38, v37);
    return v28;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      outlined init with take of ImportedPSK(v25, v13, type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState);
      v35 = &v13[*(v10 + 52)];
      if (v35[2])
      {
        v28 = 0;
      }

      else
      {
        v28 = NamedGroup.metadataDescription.getter(*v35);
      }

      v37 = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState;
      v38 = v13;
      goto LABEL_38;
    }

    outlined init with take of ImportedPSK(v25, v17, type metadata accessor for ServerHandshakeState.ServerHelloState);
    v30 = &v17[*(v14 + 52)];
    if (v30[2])
    {
      v28 = 0;
    }

    else
    {
      v28 = NamedGroup.metadataDescription.getter(*v30);
    }

    v31 = type metadata accessor for ServerHandshakeState.ServerHelloState;
    goto LABEL_37;
  }

  if (EnumCaseMultiPayload)
  {
    outlined init with take of ImportedPSK(v25, v21, type metadata accessor for ServerHandshakeState.ClientHelloState);
    v33 = &v21[*(v18 + 28)];
    if (v33[2])
    {
      v28 = 0;
    }

    else
    {
      v28 = NamedGroup.metadataDescription.getter(*v33);
    }

    v37 = type metadata accessor for ServerHandshakeState.ClientHelloState;
    v38 = v21;
    goto LABEL_38;
  }

  _s15SwiftTLSLibrary27ServerHandshakeStateMachineV13ConfigurationVWOhTm_0(v25, type metadata accessor for ServerHandshakeState);
  return 0;
}