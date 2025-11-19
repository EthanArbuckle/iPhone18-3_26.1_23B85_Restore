uint64_t one-time initialization function for SILLogger()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, SILLogger);
  __swift_project_value_buffer(v0, SILLogger);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for SILSignpost()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OSSignposter();
  __swift_allocate_value_buffer(v4, SILSignpost);
  __swift_project_value_buffer(v4, SILSignpost);
  if (one-time initialization token for SILLogger != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, SILLogger);
  (*(v1 + 16))(v3, v5, v0);
  return OSSignposter.init(logger:)();
}

uint64_t SILLogger.unsafeMutableAddressor(void *a1, uint64_t (*a2)(void), uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = a2(0);
  }

  else
  {
    swift_once();
    v4 = a2(0);
  }

  return __swift_project_value_buffer(v4, a3);
}

uint64_t Logging.logLevel.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t Logging.log(logType:logModule:logMsg:printer:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v10 = a1 + 1;
  v11 = *(*v5 + 88);
  result = v11();
  if ((result + 1) >= v10)
  {
    if (!a1 || (v13 = v11(), v13 == 3))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_262A9ADB0;
      MEMORY[0x26672FCC0](a3, a4);
      *(v14 + 56) = MEMORY[0x277D837D0];
      *(v14 + 32) = 0x5D52474D4C49535BLL;
      *(v14 + 40) = 0xE900000000000020;
      print(_:separator:terminator:)();
    }

    result = (v11)(v13);
    if (result != 4)
    {
      return a5(a3, a4);
    }
  }

  return result;
}

void closure #1 in Logging.log(_:_:)(uint64_t a1, unint64_t a2, uint64_t (*a3)(void))
{
  if (one-time initialization token for SILLogger != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, SILLogger);

  oslog = Logger.logObject.getter();
  v7 = a3();

  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v11 = v9;
    *v8 = 136315138;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v11);
    _os_log_impl(&dword_262A43000, oslog, v7, "%s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x266730D70](v9, -1, -1);
    MEMORY[0x266730D70](v8, -1, -1);
  }
}

Swift::Void __swiftcall Logging.critical(_:_:)(SILManager::LogModule a1, Swift::String a2)
{
  object = a2._object;
  countAndFlagsBits = a2._countAndFlagsBits;
  if ((*(*v2 + 88))(a1) != 0xFF)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_262A9ADB0;
    MEMORY[0x26672FCC0](countAndFlagsBits, object);
    *(v5 + 56) = MEMORY[0x277D837D0];
    *(v5 + 32) = 0x5D52474D4C49535BLL;
    *(v5 + 40) = 0xE900000000000020;
    print(_:separator:terminator:)();
  }
}

Swift::String __swiftcall Logging.getIndicatorName(_:)(Swift::Int a1)
{
  v1 = 0xE500000000000000;
  v2 = 0x63694D7841;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E55;
  if (a1 == 1)
  {
    v4 = 6515021;
    v3 = 0xE300000000000000;
  }

  if (a1 != 2)
  {
    v2 = v4;
    v1 = v3;
  }

  v5 = a1 == 0;
  if (a1)
  {
    v6 = v2;
  }

  else
  {
    v6 = 7168323;
  }

  if (v5)
  {
    v7 = 0xE300000000000000;
  }

  else
  {
    v7 = v1;
  }

  result._object = v7;
  result._countAndFlagsBits = v6;
  return result;
}

Swift::String __swiftcall Logging.getIndicatorNamesFromMask(_:)(Swift::Int32 a1)
{
  v2 = 0xE000000000000000;
  v10 = 0;
  v11 = 0xE000000000000000;
  LODWORD(v7) = a1;
  lazy protocol witness table accessor for type Int32 and conformance Int32();
  BitmaskIterator.init(_:)(&v7, MEMORY[0x277D849A8], v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SILManager15BitmaskIteratorVys5Int32VGMd);
  v12 = BitmaskIterator.next()();
  if (v12.is_nil)
  {
    v3 = 0;
  }

  else
  {
    do
    {
      v7 = (*(*v1 + 152))(v12.value);
      v8 = v4;

      MEMORY[0x26672FCC0](44, 0xE100000000000000);

      MEMORY[0x26672FCC0](v7, v8);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SILManager15BitmaskIteratorVys5Int32VGMd);
      v12 = BitmaskIterator.next()();
    }

    while (!v12.is_nil);
    v3 = v10;
    v2 = v11;
  }

  v5 = v2;
  result._object = v5;
  result._countAndFlagsBits = v3;
  return result;
}

uint64_t Logging.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 1;
  return result;
}

uint64_t one-time initialization function for Log()
{
  type metadata accessor for Logging();
  result = swift_allocObject();
  *(result + 16) = 1;
  Log = result;
  return result;
}

uint64_t *Log.unsafeMutableAddressor()
{
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  return &Log;
}

SILManager::SILError __swiftcall SILError.log()()
{
  v1 = v0;
  switch(v0)
  {
    case SILManager_SILError_invalidRegion:
      if (one-time initialization token for SILLogger != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      __swift_project_value_buffer(v17, SILLogger);
      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        v6 = "invalidRegion";
        goto LABEL_98;
      }

      break;
    case SILManager_SILError_invalidIndicator:
      if (one-time initialization token for SILLogger != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      __swift_project_value_buffer(v13, SILLogger);
      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        v6 = "invalidIndicator";
        goto LABEL_98;
      }

      break;
    case SILManager_SILError_invalidPosition:
      if (one-time initialization token for SILLogger != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      __swift_project_value_buffer(v15, SILLogger);
      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        v6 = "invalidPosition";
        goto LABEL_98;
      }

      break;
    case SILManager_SILError_invalidAnimationFrame:
      if (one-time initialization token for SILLogger != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      __swift_project_value_buffer(v10, SILLogger);
      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        v6 = "invalidAnimationFrame";
        goto LABEL_98;
      }

      break;
    case SILManager_SILError_invalidRotation:
      if (one-time initialization token for SILLogger != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      __swift_project_value_buffer(v20, SILLogger);
      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        v6 = "invalidRotation";
        goto LABEL_98;
      }

      break;
    case SILManager_SILError_invalidStateTransition:
      if (one-time initialization token for SILLogger != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      __swift_project_value_buffer(v23, SILLogger);
      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        v6 = "invalidStateTransition";
        goto LABEL_98;
      }

      break;
    case SILManager_SILError_invalidMinSILTime:
      if (one-time initialization token for SILLogger != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      __swift_project_value_buffer(v16, SILLogger);
      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        v6 = "invalidMinSILTime";
        goto LABEL_98;
      }

      break;
    case SILManager_SILError_fallbackMicrophoneIndicatorTriggered:
      if (one-time initialization token for SILLogger != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      __swift_project_value_buffer(v26, SILLogger);
      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        v6 = "fallbackMicrophoneIndicatorTriggered";
        goto LABEL_98;
      }

      break;
    case SILManager_SILError_fallbackFaceIDIndicatorTriggered:
      if (one-time initialization token for SILLogger != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      __swift_project_value_buffer(v12, SILLogger);
      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        v6 = "fallbackFaceIDIndicatorTriggered";
        goto LABEL_98;
      }

      break;
    case SILManager_SILError_fallbackCameraIndicatorTriggered:
      if (one-time initialization token for SILLogger != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      __swift_project_value_buffer(v25, SILLogger);
      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        v6 = "fallbackCameraIndicatorTriggered";
        goto LABEL_98;
      }

      break;
    case SILManager_SILError_invalidTightbeamArgument:
      if (one-time initialization token for SILLogger != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      __swift_project_value_buffer(v9, SILLogger);
      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        v6 = "invalidTightbeamArgument";
        goto LABEL_98;
      }

      break;
    case SILManager_SILError_invalidManifest:
      if (one-time initialization token for SILLogger != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      __swift_project_value_buffer(v11, SILLogger);
      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        v6 = "invalidManifest";
        goto LABEL_98;
      }

      break;
    case SILManager_SILError_backendError:
      if (one-time initialization token for SILLogger != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      __swift_project_value_buffer(v22, SILLogger);
      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        v6 = "backendError";
        goto LABEL_98;
      }

      break;
    case SILManager_SILError_invalidRendererID:
      if (one-time initialization token for SILLogger != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      __swift_project_value_buffer(v8, SILLogger);
      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        v6 = "invalidRendererID";
        goto LABEL_98;
      }

      break;
    case SILManager_SILError_surfaceCreationFailed:
      if (one-time initialization token for SILLogger != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      __swift_project_value_buffer(v14, SILLogger);
      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        v6 = "surfaceCreationFailed";
        goto LABEL_98;
      }

      break;
    case SILManager_SILError_decompressionError:
      if (one-time initialization token for SILLogger != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      __swift_project_value_buffer(v7, SILLogger);
      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        v6 = "decompressionError";
        goto LABEL_98;
      }

      break;
    case SILManager_SILError_rotationError:
      if (one-time initialization token for SILLogger != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      __swift_project_value_buffer(v18, SILLogger);
      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        v6 = "rotationError";
        goto LABEL_98;
      }

      break;
    case SILManager_SILError_invalidBlitOffset:
      if (one-time initialization token for SILLogger != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      __swift_project_value_buffer(v24, SILLogger);
      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        v6 = "invalidBlitOffset";
        goto LABEL_98;
      }

      break;
    case SILManager_SILError_pipeNotReady:
      if (one-time initialization token for SILLogger != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      __swift_project_value_buffer(v28, SILLogger);
      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        v6 = "pipeNotReady";
        goto LABEL_98;
      }

      break;
    case SILManager_SILError_invalidSwap:
      if (one-time initialization token for SILLogger != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      __swift_project_value_buffer(v19, SILLogger);
      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        v6 = "invalidSwap";
        goto LABEL_98;
      }

      break;
    case SILManager_SILError_overlappingRegions:
      if (one-time initialization token for SILLogger != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      __swift_project_value_buffer(v21, SILLogger);
      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        v6 = "overlappingRegions";
        goto LABEL_98;
      }

      break;
    case SILManager_SILError_assetReadError:
      if (one-time initialization token for SILLogger != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      __swift_project_value_buffer(v27, SILLogger);
      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        v6 = "assetReadError";
        goto LABEL_98;
      }

      break;
    case SILManager_SILError_unknownError:
      if (one-time initialization token for SILLogger != -1)
      {
        swift_once();
      }

      v29 = type metadata accessor for Logger();
      __swift_project_value_buffer(v29, SILLogger);
      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        v6 = "unknownError";
        goto LABEL_98;
      }

      break;
    default:
      if (one-time initialization token for SILLogger != -1)
      {
        swift_once();
      }

      v2 = type metadata accessor for Logger();
      __swift_project_value_buffer(v2, SILLogger);
      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        v6 = "isAnimating";
LABEL_98:
        _os_log_impl(&dword_262A43000, v3, v4, v6, v5, 2u);
        MEMORY[0x266730D70](v5, -1, -1);
      }

      break;
  }

  return v1;
}

uint64_t specialized LogType.init(rawValue:)(unsigned __int8 a1)
{
  if (a1 <= 5u)
  {
    return (0x40302010005uLL >> (8 * a1));
  }

  else
  {
    return 5;
  }
}

unint64_t specialized LogModule.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of LogModule.init(rawValue:), v2);

  if (v3 >= 8)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t lazy protocol witness table accessor for type Int32 and conformance Int32()
{
  result = lazy protocol witness table cache variable for type Int32 and conformance Int32;
  if (!lazy protocol witness table cache variable for type Int32 and conformance Int32)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int32 and conformance Int32);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LogType and conformance LogType()
{
  result = lazy protocol witness table cache variable for type LogType and conformance LogType;
  if (!lazy protocol witness table cache variable for type LogType and conformance LogType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LogType and conformance LogType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LogModule and conformance LogModule()
{
  result = lazy protocol witness table cache variable for type LogModule and conformance LogModule;
  if (!lazy protocol witness table cache variable for type LogModule and conformance LogModule)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LogModule and conformance LogModule);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LogType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LogType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance Rotation@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized Rotation.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t + infix<A, B>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = (*(a5 + 16))(a3, a5);
  v11 = v10 + (*(a6 + 16))(a4, a6);
  v12 = (*(a5 + 40))(a3, a5);
  v13 = (*(a6 + 40))(a4, a6);
  return (*(a5 + 8))(a3, a5, v11, v12 + v13);
}

uint64_t * infix<A, B>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = (*(a5 + 16))(a3, a5);
  v11 = v10 * (*(a6 + 16))(a4, a6);
  v12 = (*(a5 + 40))(a3, a5);
  v13 = (*(a6 + 40))(a4, a6);
  return (*(a5 + 8))(a3, a5, v11, v12 * v13);
}

CGSize __swiftcall CGSize.init(_:)(Swift::tuple_UInt32_UInt32 a1)
{
  v1 = a1._0;
  v2 = a1._1;
  result.height = v2;
  result.width = v1;
  return result;
}

double (*protocol witness for Vec2.x.modify in conformance CGSize(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *v1;
  return protocol witness for Vec2.x.modify in conformance CGSize;
}

double protocol witness for Vec2.x.modify in conformance CGSize(uint64_t a1)
{
  result = *a1;
  **(a1 + 8) = *a1;
  return result;
}

double (*protocol witness for Vec2.y.modify in conformance CGSize(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 8);
  return protocol witness for Vec2.y.modify in conformance CGSize;
}

double protocol witness for Vec2.y.modify in conformance CGSize(uint64_t a1)
{
  result = *a1;
  *(*(a1 + 8) + 8) = *a1;
  return result;
}

Swift::Bool __swiftcall CGRect.contains(_:)(CGPoint a1)
{
  v5 = v1 + v3;
  if (v1 <= a1.x)
  {
    v7 = v2 == a1.y;
    v6 = v2 >= a1.y;
  }

  else
  {
    v6 = 1;
    v7 = 0;
  }

  v8 = !v7 && v6 || v5 < a1.x;
  return !v8 && v2 + v4 >= a1.y;
}

uint64_t CGRect.shortDescription.getter()
{
  v0 = Double.description.getter();
  MEMORY[0x26672FCC0](v0);

  MEMORY[0x26672FCC0](32, 0xE100000000000000);
  v1 = Double.description.getter();
  MEMORY[0x26672FCC0](v1);

  MEMORY[0x26672FCC0](32, 0xE100000000000000);
  v2 = Double.description.getter();
  MEMORY[0x26672FCC0](v2);

  MEMORY[0x26672FCC0](32, 0xE100000000000000);
  v3 = Double.description.getter();
  MEMORY[0x26672FCC0](v3);

  MEMORY[0x26672FCC0](93, 0xE100000000000000);
  return 91;
}

unint64_t static UInt64.secondsAsTicks(_:)(double a1)
{
  v1 = a1 * 1000000000.0;
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 <= -1.0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v1 < 1.84467441e19)
  {
    return v1;
  }

LABEL_7:
  __break(1u);
  return result;
}

Swift::Void __swiftcall IOSurfaceLike.clear()()
{
  v2 = v1;
  v3 = v0;
  v15 = *MEMORY[0x277D85DE8];
  v14 = 403046784;
  v4 = specialized _copyCollectionToContiguousArray<A>(_:)(&v14, &v15);
  v13 = v2[6];
  __b = v13(0, v3, v2);
  v5 = v2[7];
  v6 = v5(0, v3, v2);
  v7 = v2[2];
  v8 = v7(v3, v2);
  if ((v6 * v8) >> 64 != (v6 * v8) >> 63)
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  memset_pattern4(__b, v4 + 4, v6 * v8);

  v9 = v13(1, v3, v2);
  v10 = v5(1, v3, v2);
  v11 = v7(v3, v2);
  if ((v10 * v11) >> 64 != (v10 * v11) >> 63)
  {
    goto LABEL_5;
  }

  bzero(v9, v10 * v11);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Rotation()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Rotation()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance SensorType@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized SensorType.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t SILImage.rect.setter(double a1, double a2, double a3, double a4)
{
  result = swift_beginAccess();
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
  return result;
}

uint64_t SILImage.Bpr.setter(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 48) = a1;
  return result;
}

uint64_t SILImage.inactiveBuffer.getter()
{
  result = v0[8];
  if (result)
  {
    if (!v0[9])
    {
      return result;
    }
  }

  else
  {
    v2 = (*(*v0 + 144))();
    v3 = (*(*v0 + 296))();
    result = v2 * v3;
    if ((v2 * v3) >> 64 != (v2 * v3) >> 63)
    {
      __break(1u);
      goto LABEL_9;
    }

    result = swift_slowAlloc();
    v0[8] = result;
    if (!v0[9])
    {
      return result;
    }
  }

  result = v0[7];
  if (!result)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

uint64_t SILImage.width.getter()
{
  result = (*(*v0 + 120))();
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v2 < 9.22337204e18)
  {
    return v2;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t SILImage.height.getter()
{
  result = (*(*v0 + 120))();
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v2 < 9.22337204e18)
  {
    return v2;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t SILImage.buffer.getter()
{
  if (v0[9])
  {
    result = v0[8];
    if (result)
    {
      return result;
    }

    __break(1u);
  }

  result = v0[7];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t SILImage.buffer.setter(uint64_t result)
{
  v2 = 64;
  if (!*(v1 + 72))
  {
    v2 = 56;
  }

  *(v1 + v2) = result;
  return result;
}

void *SILImage.buffer.modify(void *result)
{
  result[1] = v1;
  if (v1[9])
  {
    v2 = v1[8];
    if (v2)
    {
LABEL_5:
      *result = v2;
      return SILImage.buffer.modify;
    }

    __break(1u);
  }

  v2 = v1[7];
  if (v2)
  {
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

{
  v1 = result[1];
  v2 = 64;
  if (!*(v1 + 72))
  {
    v2 = 56;
  }

  *(v1 + v2) = *result;
  return result;
}

uint64_t SILImage.__allocating_init(width:height:Bpr:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  *(v6 + 64) = 0;
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;
  *(v6 + 48) = a3;
  result = a3 * a2;
  if ((a3 * a2) >> 64 == (a3 * a2) >> 63)
  {
    *(v6 + 56) = swift_slowAlloc();
    *(v6 + 72) = 0;
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double SILImage.__allocating_init()()
{
  v0 = swift_allocObject();
  result = 0.0;
  v0[1] = 0u;
  v0[2] = 0u;
  v0[3] = 0u;
  v0[4] = 0u;
  return result;
}

uint64_t SILImage.__deallocating_deinit()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    MEMORY[0x266730D70](v1, -1, -1);
  }

  v2 = *(v0 + 64);
  if (v2)
  {
    MEMORY[0x266730D70](v2, -1, -1);
  }

  return MEMORY[0x2821FE8D8](v0, 80, 7);
}

uint64_t SILRenderer.Region.currentPageID.setter(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 24) = a1;
  return result;
}

uint64_t SILRenderer.Region.pageContents.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 32) = a1;
}

uint64_t SILRenderer.Region.needsUpdate(indicator:rotation:frame:blitOffset:softBoundary:glyphScale:)(void *a1, char a2, __int16 a3, uint64_t a4, uint64_t a5, float a6, float a7)
{
  v15 = (*(*v7 + 136))();
  result = (*(*v7 + 160))();
  if ((v15 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v15 < *(result + 16))
  {
    v17 = result + (v15 << 6);
    v18 = *(v17 + 32);
    v19 = *(v17 + 40);
    v20 = *(v17 + 48);
    v21 = *(v17 + 56);
    v23 = *(v17 + 60);
    v22 = *(v17 + 64);
    v24 = *(v17 + 72);

    if (v19 == a4 && v20 == a5)
    {
      v28 = (*((*MEMORY[0x277D85000] & *a1) + 0xA8))(v25);
      v27 = v24 != v28;
      if (v21 != a2)
      {
        v27 = 1;
      }

      if (v18 != a3)
      {
        v27 = 1;
      }

      if (v23 != a6)
      {
        v27 = 1;
      }

      if (v22 != a7)
      {
        v27 = 1;
      }

      if (v24 == v28)
      {
        v29 = 0;
        return v29 | v27;
      }
    }

    else
    {
      v27 = 1;
    }

    v29 = 256;
    return v29 | v27;
  }

  __break(1u);
  return result;
}

uint64_t SILRenderer.Region.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t SILRenderer.displayExtent.getter()
{
  result = outlined init with copy of SILBackend?(v0 + 24, v5, &_s10SILManager10SILBackend_pSgMd);
  v2 = v6;
  if (v6)
  {
    v3 = v7;
    __swift_project_boxed_opaque_existential_1(v5, v6);
    v4 = (*(v3 + 120))(v2, v3);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t SILRenderer.regions.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 96) = a1;
}

uint64_t SILRenderer.decodingBuffer.setter(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 104) = a1;
  return result;
}

uint64_t SILRenderer.rotationBuffer.setter(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 112) = a1;
  return result;
}

uint64_t SILRenderer.decodingScratchBuffer.setter(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 128) = a1;
  return result;
}

uint64_t SILRenderer.renderedCursorsSILImage.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 136) = a1;
}

uint64_t SILRenderer.renderedCursorsAlphaBuffer.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 144) = a1;
}

uint64_t SILRenderer.curSwap.getter()
{
  swift_beginAccess();
  v1 = v0[19];
  outlined copy of (id: UInt64, synchronous: Bool, signpost: OSSignpostIntervalState?)?(v1, v0[20], v0[21]);
  return v1;
}

uint64_t SILRenderer.curSwap.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v7 = v3[19];
  v8 = v3[20];
  v9 = v3[21];
  v3[19] = a1;
  v3[20] = a2;
  v3[21] = a3;
  return outlined consume of (id: UInt64, synchronous: Bool, signpost: OSSignpostIntervalState?)?(v7, v8, v9);
}

uint64_t SILRenderer.sentSwap.setter(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 176) = a1;
  return result;
}

uint64_t SILRenderer.offGlassSwapID.setter(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 184) = a1;
  return result;
}

uint64_t SILRenderer.softBoundaryState.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 192) = a1;
  return result;
}

uint64_t SILRenderer.softBoundaryStateChangeTimestamp.setter(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 200) = a1;
  return result;
}

__n128 SILRenderer.cursorState.getter@<Q0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 232);
  v4 = *(v1 + 264);
  v10 = *(v1 + 248);
  v11 = v4;
  v12 = *(v1 + 280);
  v8 = *(v1 + 216);
  v9 = v3;
  outlined init with copy of SILRenderer.CursorState(&v8, &v7);
  v5 = v11;
  *(a1 + 32) = v10;
  *(a1 + 48) = v5;
  *(a1 + 64) = v12;
  result = v9;
  *a1 = v8;
  *(a1 + 16) = result;
  return result;
}

uint64_t SILRenderer.cursorState.setter(__int128 *a1)
{
  swift_beginAccess();
  v3 = *a1;
  *(v1 + 232) = a1[1];
  v4 = a1[3];
  *(v1 + 248) = a1[2];
  *(v1 + 264) = v4;
  *(v1 + 280) = *(a1 + 8);
  *(v1 + 216) = v3;
}

uint64_t SILRenderer.cursorInfoByType.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 288) = a1;
}

uint64_t SILRenderer.__allocating_init(id:backend:)(int a1, void *a2)
{
  v4 = swift_allocObject();
  SILRenderer.init(id:backend:)(a1, a2);
  return v4;
}

Swift::Int SILRenderer.init(id:backend:)(int a1, void *a2)
{
  v4 = v3;
  v160 = a2;
  LODWORD(v5) = a1;
  v167 = type metadata accessor for Logger();
  v166 = *(v167 - 8);
  v6 = MEMORY[0x28223BE20](v167);
  v8 = &v154 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v169 = &v154 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v154 - v11;
  v13 = MEMORY[0x277D84F90];
  v165 = v2;
  *(v2 + 96) = MEMORY[0x277D84F90];
  v14 = v2 + 96;
  *(v2 + 152) = 0;
  v15 = v2 + 152;
  *(v2 + 160) = 0;
  *(v2 + 168) = 1;
  *(v2 + 184) = 0;
  *(v2 + 192) = 0;
  *(v2 + 200) = 0;
  *(v2 + 288) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_So20SILManagerCursorInfoVTt0g5Tf4g_n(v13);
  if (one-time initialization token for g_renderers != -1)
  {
LABEL_87:
    swift_once();
  }

  swift_beginAccess();
  rawValue = g_renderers._rawValue;
  v157 = v4;
  v164 = v8;
  v163 = v14;
  v4 = g_renderers._rawValue & 0xFFFFFFFFFFFFFF8;
  if (g_renderers._rawValue >> 62)
  {
    if (g_renderers._rawValue < 0)
    {
      v77 = g_renderers._rawValue;
    }

    else
    {
      v77 = g_renderers._rawValue & 0xFFFFFFFFFFFFFF8;
    }

    v14 = MEMORY[0x2667300B0](v77);
  }

  else
  {
    v14 = *((g_renderers._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = (rawValue & 0xC000000000000001);

  v17 = 0;
  while (v14 != v17)
  {
    if (v8)
    {
      v19 = MEMORY[0x266730000](v17, rawValue);
      LODWORD(v162) = v5;
      v20 = *(v19 + 16);
      swift_unknownObjectRelease();
      v51 = v20 == v162;
      LODWORD(v5) = v162;
      if (v51)
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (v17 >= *((rawValue & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
        goto LABEL_87;
      }

      if (*(*(rawValue + 8 * v17 + 32) + 16) == v5)
      {
        LODWORD(v162) = v5;
LABEL_19:

        v34 = SILLogger.unsafeMutableAddressor();
        v35 = v166;
        v36 = v167;
        (*(v166 + 16))(v12, v34, v167);
        v37 = Logger.logObject.getter();
        v38 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          *v39 = 67109120;
          *(v39 + 4) = v162;
          _os_log_impl(&dword_262A43000, v37, v38, "Renderer ID: %u already exists", v39, 8u);
          MEMORY[0x266730D70](v39, -1, -1);
        }

        (*(v35 + 8))(v12, v36);
        v40 = SILManager_SILError_invalidRendererID;
LABEL_23:
        v41 = v165;
        lazy protocol witness table accessor for type SILError and conformance SILError();
        swift_allocError();
        *v42 = v40;
        swift_willThrow();
        v43 = 0;
        goto LABEL_44;
      }
    }

    v18 = __OFADD__(v17++, 1);
    if (v18)
    {
      goto LABEL_84;
    }
  }

  v21 = *SILManifest.manifest.unsafeMutableAddressor();
  if (!v21)
  {
    v40 = SILError.log()();
    goto LABEL_23;
  }

  v22 = v165;
  LODWORD(v162) = v5;
  *(v165 + 16) = v5;
  v5 = v160;
  outlined init with copy of SILFileHandle(v160, (v22 + 3));
  v22[8] = v21;
  swift_beginAccess();
  v23 = v22[19];
  v24 = v22[20];
  v25 = v22[21];
  *v15 = 0;
  *(v15 + 8) = 0;
  v22[21] = 1;
  *&v168 = v21;
  v159 = v21;
  outlined consume of (id: UInt64, synchronous: Bool, signpost: OSSignpostIntervalState?)?(v23, v24, v25);
  v22[22] = 0;
  v26 = v5[3];
  v27 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v26);
  v28 = (*(v27 + 120))(v26, v27);
  v29 = v28;
  v30 = HIDWORD(v28);
  outlined init with copy of SILBackend?((v22 + 3), &v176, &_s10SILManager10SILBackend_pSgMd);
  v31 = *(&v177 + 1);
  if (*(&v177 + 1))
  {
    v32 = v178;
    __swift_project_boxed_opaque_existential_1(&v176, *(&v177 + 1));
    v33 = (*(v32 + 112))(v31, v32);
    __swift_destroy_boxed_opaque_existential_1Tm(&v176);
  }

  else
  {
    outlined destroy of SILValidator.RegionState?(&v176, &_s10SILManager10SILBackend_pSgMd);
    v33 = 0;
  }

  type metadata accessor for SILValidator();
  v44 = SILValidator.__allocating_init(displaySize:animationHistoryEnabled:)(v29, v30, v33 & 1);
  v45 = v165;
  *(v165 + 208) = v44;
  v46 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  v46[2] = 2;
  v46[4] = 0;
  v46[5] = 0;
  *(v45 + 216) = 4294967040;
  *(v45 + 224) = &outlined read-only object #0 of SILRenderer.CursorState.init();
  *(v45 + 232) = 1065353216;
  *(v45 + 240) = xmmword_262A9AF80;
  *(v45 + 256) = 0;
  *(v45 + 258) = v181;
  *(v45 + 262) = v182;
  *(v45 + 264) = -1;
  *(v45 + 272) = 0;
  *(v45 + 280) = v46;
  v161 = OBJC_IVAR____TtC10SILManager11SILManifest_indicators;
  v47 = *&v159[OBJC_IVAR____TtC10SILManager11SILManifest_indicators];
  if (v47 >> 62)
  {
    goto LABEL_95;
  }

  for (i = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = MEMORY[0x2667300B0](v78))
  {

    if (!i)
    {
      break;
    }

    v15 = 0;
    v14 = 0x776F64616853;
    v4 = v47 & 0xC000000000000001;
    v12 = (v47 & 0xFFFFFFFFFFFFFF8);
    v8 = 0xE600000000000000;
    while (1)
    {
      if (v4)
      {
        v49 = MEMORY[0x266730000](v15, v47);
      }

      else
      {
        if (v15 >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_86;
        }

        v49 = *(v47 + 8 * v15 + 32);
      }

      v50 = v49;
      v5 = (v15 + 1);
      if (__OFADD__(v15, 1))
      {
        goto LABEL_85;
      }

      v51 = *&v49[OBJC_IVAR____TtC10SILManager12SILAssetDesc_name] == 0x776F64616853 && *&v49[OBJC_IVAR____TtC10SILManager12SILAssetDesc_name + 8] == 0xE600000000000000;
      if (v51 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      ++v15;
      if (v5 == i)
      {
        goto LABEL_41;
      }
    }

    v64 = v165;
    *(v165 + 72) = v50;
    v47 = v159;
    v65 = *&v159[v161];
    if (v65 >> 62)
    {
      if (v65 < 0)
      {
        v79 = *&v159[v161];
      }

      else
      {
        v79 = v65 & 0xFFFFFFFFFFFFFF8;
      }

      v5 = MEMORY[0x2667300B0](v79);
    }

    else
    {
      v5 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v66 = v50;
    v154 = v66;
    if (v5)
    {
      v67 = 0;
      v47 = 0xEB00000000687079;
      while (1)
      {
        if ((v65 & 0xC000000000000001) != 0)
        {
          v66 = MEMORY[0x266730000](v67, v65);
          v68 = (v67 + 1);
          if (__OFADD__(v67, 1))
          {
LABEL_64:
            __break(1u);
LABEL_65:
            v64 = v165;
            v47 = v159;
            v71 = v50;
            goto LABEL_67;
          }
        }

        else
        {
          if (v67 >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_93;
          }

          v66 = *(v65 + 8 * v67 + 32);
          v68 = (v67 + 1);
          if (__OFADD__(v67, 1))
          {
            goto LABEL_64;
          }
        }

        v50 = v66;
        v69 = v66 + OBJC_IVAR____TtC10SILManager12SILAssetDesc_name;
        v66 = *(v66 + OBJC_IVAR____TtC10SILManager12SILAssetDesc_name);
        if (v66 == 0x6C476172656D6143 && *(v69 + 8) == 0xEB00000000687079)
        {
          goto LABEL_65;
        }

        v66 = _stringCompareWithSmolCheck(_:_:expecting:)();
        if (v66)
        {
          goto LABEL_65;
        }

        ++v67;
        if (v68 == v5)
        {
          v71 = 0;
          v64 = v165;
          v47 = v159;
          goto LABEL_67;
        }
      }
    }

    v71 = 0;
LABEL_67:
    v72 = *(v47 + v161);
    v158 = v71;
    if (v72 >> 62)
    {
      if (v72 < 0)
      {
        v80 = v72;
      }

      else
      {
        v80 = v72 & 0xFFFFFFFFFFFFFF8;
      }

      v66 = MEMORY[0x2667300B0](v80);
      v5 = v66;
      v71 = v158;
      if (!v66)
      {
LABEL_107:
        v156 = 0;
LABEL_108:
        if (v71 && *&v71[OBJC_IVAR____TtC10SILManager12SILAssetDesc_framesCount])
        {
          v66 = v158;
          v81 = v158;
        }

        else
        {
          v81 = 0;
        }

        v64[10] = v81;
        v82 = v156;
        if (v156 && *&v156[OBJC_IVAR____TtC10SILManager12SILAssetDesc_framesCount])
        {
          v66 = v156;
          v83 = v82;
        }

        else
        {
          v83 = 0;
        }

        v64[11] = v83;
        v84 = MEMORY[0x277D85000];
        v85 = (*((*MEMORY[0x277D85000] & *v47) + 0xB8))(v66);
        v86 = (*((*v84 & *v47) + 0xD8))();
        result = v86 * v85;
        if ((v86 * v85) >> 64 == (v86 * v85) >> 63)
        {
          v64[15] = result;
          v64[13] = swift_slowAlloc();
          v64[14] = swift_slowAlloc();
          compression_decode_scratch_buffer_size(COMPRESSION_LZFSE);
          v87 = swift_slowAlloc();
          v64[16] = v87;
          v88 = (*((*v84 & *v47) + 0xC0))(v87);
          result = scaleDimension(dim:scale:)(v88, 1.26);
          v64[18] = MEMORY[0x277D84F90];
          v89 = (v64 + 18);
          v90 = OBJC_IVAR____TtC10SILManager11SILManifest_numCursorTypes;
          v91 = *(v47 + OBJC_IVAR____TtC10SILManager11SILManifest_numCursorTypes);
          if ((v91 & 0x8000000000000000) == 0)
          {
            if (v91)
            {
              v92 = result * result;
              if ((result * result) >> 64 != (result * result) >> 63)
              {
                __break(1u);
LABEL_159:
                __break(1u);
LABEL_160:
                __break(1u);
                return result;
              }

              do
              {
                v93 = swift_slowAlloc();
                swift_beginAccess();
                v94 = *v89;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                *v89 = v94;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v94 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v94 + 2) + 1, 1, v94);
                  *v89 = v94;
                }

                v97 = *(v94 + 2);
                v96 = *(v94 + 3);
                if (v97 >= v96 >> 1)
                {
                  v94 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v96 > 1), v97 + 1, 1, v94);
                }

                *(v94 + 2) = v97 + 1;
                v98 = &v94[16 * v97];
                *(v98 + 4) = v93;
                *(v98 + 5) = v92;
                *v89 = v94;
                swift_endAccess();
                --v91;
              }

              while (v91);
            }

            type metadata accessor for SILImage();
            v99 = swift_allocObject();
            v99[1] = 0u;
            v99[2] = 0u;
            v99[3] = 0u;
            v99[4] = 0u;
            v100 = _sSa9repeating5countSayxGx_SitcfC10SILManager8SILImageC_Tt1g5Tf4gn_n(v99, *&v159[v90]);

            *(v165 + 136) = v100;
            v175 = MEMORY[0x277D84F90];
            v101 = 4;
            specialized ContiguousArray.reserveCapacity(_:)();
            v169 = type metadata accessor for SILRenderer.Region();
            v168 = xmmword_262A9AF70;
            do
            {
              v102 = swift_allocObject();
              *&v178 = 0;
              v176 = 0u;
              v177 = 0u;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SILManager13IOSurfaceLike_pSgMd);
              v103 = static Array._allocateBufferUninitialized(minimumCapacity:)();
              *(v103 + 16) = 3;
              outlined init with copy of SILBackend?(&v176, v103 + 32, &_s10SILManager13IOSurfaceLike_pSgMd);
              outlined init with copy of SILBackend?(&v176, v103 + 72, &_s10SILManager13IOSurfaceLike_pSgMd);
              v104 = v177;
              *(v103 + 112) = v176;
              *(v103 + 128) = v104;
              *(v103 + 144) = v178;
              v102[2] = v103;
              v102[3] = 0;
              v105 = static Array._allocateBufferUninitialized(minimumCapacity:)();
              *(v105 + 16) = 3;
              *(v105 + 32) = -1;
              *(v105 + 40) = 0;
              *(v105 + 48) = 0;
              *(v105 + 56) = 0;
              *(v105 + 60) = 0;
              v106 = v168;
              *(v105 + 72) = v168;
              *(v105 + 88) = 1;
              *(v105 + 96) = -1;
              *(v105 + 104) = 0;
              *(v105 + 112) = 0;
              *(v105 + 120) = 0;
              *(v105 + 124) = 0;
              *(v105 + 136) = v106;
              *(v105 + 152) = 1;
              *(v105 + 160) = -1;
              *(v105 + 168) = 0;
              *(v105 + 176) = 0;
              *(v105 + 184) = 0;
              *(v105 + 188) = 0;
              *(v105 + 200) = v106;
              *(v105 + 216) = 1;
              v102[4] = v105;
              specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
              specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
              specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              specialized ContiguousArray._endMutation()();
              --v101;
            }

            while (v101);
            v107 = v175;
            v108 = v163;
            swift_beginAccess();
            *v108 = v107;

            v109 = SILLogger.unsafeMutableAddressor();
            v110 = v166;
            v111 = v164;
            v112 = v167;
            (*(v166 + 16))(v164, v109, v167);
            v113 = Logger.logObject.getter();
            v114 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v113, v114))
            {
              v115 = swift_slowAlloc();
              *v115 = 67109120;
              *(v115 + 4) = v162;
              _os_log_impl(&dword_262A43000, v113, v114, "Created SILRenderer %u", v115, 8u);
              MEMORY[0x266730D70](v115, -1, -1);
            }

            (*(v110 + 8))(v111, v112);
            v116 = v160[3];
            v117 = v160[4];
            __swift_project_boxed_opaque_existential_1(v160, v116);
            (*(v117 + 120))(v116, v117);
            result = *&v159[v161];
            if (!(result >> 62))
            {
              v118 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_131:
              v119 = MEMORY[0x277D85000];
              v155 = result;

              if (v118)
              {
                v120 = 0;
                v164 = v155 & 0xC000000000000001;
                v163 = v155 & 0xFFFFFFFFFFFFFF8;
                v162 = v155 + 32;
                v161 = v118;
                do
                {
                  if (v164)
                  {
                    v129 = MEMORY[0x266730000](v120, v155);
                    v18 = __OFADD__(v120, 1);
                    v130 = v120 + 1;
                    if (v18)
                    {
LABEL_148:
                      __break(1u);
                      break;
                    }
                  }

                  else
                  {
                    if (v120 >= *(v163 + 16))
                    {
                      __break(1u);
                      goto LABEL_153;
                    }

                    v129 = *(v162 + 8 * v120);
                    v18 = __OFADD__(v120, 1);
                    v130 = v120 + 1;
                    if (v18)
                    {
                      goto LABEL_148;
                    }
                  }

                  v166 = v130;
                  v170 = 0;
                  v171 = 0xE000000000000000;
                  v131 = *((*v119 & *v129) + 0x138);
                  v132 = (*v119 & *v129) + 312;
                  v169 = v129;
                  *&v168 = v131;
                  v167 = v132;
                  result = v131(v129);
                  if (!result)
                  {
                    goto LABEL_159;
                  }

                  v133 = *(result + 24);

                  v134 = *&v133[OBJC_IVAR____TtC10SILManager14SILConstraints_boundingBoxes];

                  v135 = *(v134 + 16);

                  v136 = *(v135 + 16);
                  if (v136)
                  {
                    v137 = v135 + 56;
                    do
                    {
                      v173 = 0;
                      v174 = 0xE000000000000000;
                      _StringGuts.grow(_:)(26);

                      v173 = 540702811;
                      v174 = 0xE400000000000000;
                      v138 = Double.description.getter();
                      MEMORY[0x26672FCC0](v138);

                      MEMORY[0x26672FCC0](540703008, 0xE400000000000000);
                      v139 = Double.description.getter();
                      MEMORY[0x26672FCC0](v139);

                      MEMORY[0x26672FCC0](540702496, 0xE400000000000000);
                      v140 = Double.description.getter();
                      MEMORY[0x26672FCC0](v140);

                      MEMORY[0x26672FCC0](540698656, 0xE400000000000000);
                      v141 = Double.description.getter();
                      MEMORY[0x26672FCC0](v141);

                      MEMORY[0x26672FCC0](2653, 0xE200000000000000);
                      MEMORY[0x26672FCC0](v173, v174);

                      v137 += 32;
                      --v136;
                    }

                    while (v136);
                  }

                  result = (v168)(v142);
                  if (!result)
                  {
                    goto LABEL_160;
                  }

                  v143 = *(result + 24);

                  v144 = *&v143[OBJC_IVAR____TtC10SILManager14SILConstraints_boundingBoxes];

                  v145 = *(v144 + 24);

                  *&v168 = v145;
                  v146 = *(v145 + 16);
                  if (v146)
                  {
                    v147 = v168 + 56;
                    do
                    {
                      v173 = 0;
                      v174 = 0xE000000000000000;
                      _StringGuts.grow(_:)(36);

                      v173 = 540702811;
                      v174 = 0xE400000000000000;
                      v148 = Double.description.getter();
                      MEMORY[0x26672FCC0](v148);

                      MEMORY[0x26672FCC0](540703008, 0xE400000000000000);
                      v149 = Double.description.getter();
                      MEMORY[0x26672FCC0](v149);

                      MEMORY[0x26672FCC0](540702496, 0xE400000000000000);
                      v150 = Double.description.getter();
                      MEMORY[0x26672FCC0](v150);

                      MEMORY[0x26672FCC0](540698656, 0xE400000000000000);
                      v151 = Double.description.getter();
                      MEMORY[0x26672FCC0](v151);

                      MEMORY[0x26672FCC0](0x6D616E796428205DLL, 0xEC0000000A296369);
                      MEMORY[0x26672FCC0](v173, v174);

                      v147 += 32;
                      --v146;
                    }

                    while (v146);
                  }

                  v121 = Log.unsafeMutableAddressor();
                  swift_beginAccess();
                  v122 = *v121;
                  v173 = 0;
                  v174 = 0xE000000000000000;

                  _StringGuts.grow(_:)(22);
                  v124 = *&v169[OBJC_IVAR____TtC10SILManager12SILAssetDesc_name];
                  v123 = *&v169[OBJC_IVAR____TtC10SILManager12SILAssetDesc_name + 8];
                  v125 = v169;

                  v173 = v124;
                  v174 = v123;
                  v126 = MEMORY[0x26672FCC0](58, 0xE100000000000000);
                  v119 = MEMORY[0x277D85000];
                  v127 = (*((*MEMORY[0x277D85000] & *v125) + 0xA8))(v126);

                  v172 = v127;
                  v128 = dispatch thunk of CustomStringConvertible.description.getter();
                  MEMORY[0x26672FCC0](v128);

                  MEMORY[0x26672FCC0](0x7274736E6F63200ALL, 0xEF203A73746E6961);
                  MEMORY[0x26672FCC0](v170, v171);

                  (*(*v122 + 128))(4, v173, v174);

                  v120 = v166;
                }

                while (v166 != v161);
              }

              swift_beginAccess();
              v41 = v165;

              MEMORY[0x26672FDA0](v152);
              if (*((g_renderers._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((g_renderers._rawValue & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              swift_endAccess();

              __swift_destroy_boxed_opaque_existential_1Tm(v160);
              return v41;
            }

LABEL_155:
            v153 = result;
            if (result >= 0)
            {
              result &= 0xFFFFFFFFFFFFFF8uLL;
            }

            v118 = MEMORY[0x2667300B0](result);
            result = v153;
            goto LABEL_131;
          }
        }

        else
        {
LABEL_153:
          __break(1u);
        }

        __break(1u);
        goto LABEL_155;
      }
    }

    else
    {
      v5 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v5)
      {
        goto LABEL_107;
      }
    }

    v73 = 0;
    while (1)
    {
      if ((v72 & 0xC000000000000001) != 0)
      {
        v74 = MEMORY[0x266730000](v73, v72);
      }

      else
      {
        if (v73 >= *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_94;
        }

        v74 = *(v72 + 8 * v73 + 32);
      }

      v47 = v74;
      v75 = (v73 + 1);
      if (__OFADD__(v73, 1))
      {
        break;
      }

      v66 = *&v74[OBJC_IVAR____TtC10SILManager12SILAssetDesc_name];
      v76 = v66 == 0x6F68706F7263694DLL && *(v47 + OBJC_IVAR____TtC10SILManager12SILAssetDesc_name + 8) == 0xEF6870796C47656ELL;
      if (v76 || (v66 = _stringCompareWithSmolCheck(_:_:expecting:)(), (v66 & 1) != 0))
      {
        v156 = v47;
        v64 = v165;
        v47 = v159;
        v71 = v158;
        goto LABEL_108;
      }

      ++v73;
      v71 = v158;
      if (v75 == v5)
      {
        v156 = 0;
        v64 = v165;
        v47 = v159;
        goto LABEL_108;
      }
    }

LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    if (v47 < 0)
    {
      v78 = v47;
    }

    else
    {
      v78 = v47 & 0xFFFFFFFFFFFFFF8;
    }
  }

LABEL_41:

  v52 = SILLogger.unsafeMutableAddressor();
  v53 = v166;
  v54 = v169;
  v55 = v167;
  (*(v166 + 16))(v169, v52, v167);
  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    *v58 = 0;
    _os_log_impl(&dword_262A43000, v56, v57, "SoftBoundary indicator not found in manifest", v58, 2u);
    MEMORY[0x266730D70](v58, -1, -1);
  }

  (*(v53 + 8))(v54, v55);
  v59 = SILError.log()();
  lazy protocol witness table accessor for type SILError and conformance SILError();
  swift_allocError();
  *v60 = v59;
  swift_willThrow();

  v41 = v165;
  outlined destroy of SILValidator.RegionState?(v165 + 24, &_s10SILManager10SILBackend_pSgMd);

  v43 = 1;
LABEL_44:

  outlined consume of (id: UInt64, synchronous: Bool, signpost: OSSignpostIntervalState?)?(*(v41 + 152), *(v41 + 160), *(v41 + 168));
  if (v43)
  {

    v61 = *(v41 + 232);
    v62 = *(v41 + 264);
    v178 = *(v41 + 248);
    v179 = v62;
    v180 = *(v41 + 280);
    v176 = *(v41 + 216);
    v177 = v61;
    outlined destroy of SILRenderer.CursorState(&v176);
  }

  type metadata accessor for SILRenderer();
  swift_deallocPartialClassInstance();
  __swift_destroy_boxed_opaque_existential_1Tm(v160);
  return v41;
}

uint64_t SILRenderer.deinit()
{
  swift_beginAccess();
  MEMORY[0x266730D70](*(v0 + 104), -1, -1);
  swift_beginAccess();
  MEMORY[0x266730D70](*(v0 + 112), -1, -1);
  swift_beginAccess();
  MEMORY[0x266730D70](*(v0 + 128), -1, -1);
  result = swift_beginAccess();
  v2 = *(*(v0 + 144) + 16);
  if (v2)
  {
    v3 = 0;
    v4 = 32;
    while (1)
    {
      v5 = *(v0 + 144);
      if (v3 >= *(v5 + 16))
      {
        break;
      }

      result = *(v5 + v4);
      if (result)
      {
        result = MEMORY[0x266730D70](result, -1, -1);
      }

      ++v3;
      v4 += 16;
      if (v2 == v3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    swift_beginAccess();
    *(v0 + 136) = MEMORY[0x277D84F90];

    outlined destroy of SILValidator.RegionState?(v0 + 24, &_s10SILManager10SILBackend_pSgMd);

    outlined consume of (id: UInt64, synchronous: Bool, signpost: OSSignpostIntervalState?)?(*(v0 + 152), *(v0 + 160), *(v0 + 168));

    return v0;
  }

  return result;
}

uint64_t SILRenderer.__deallocating_deinit()
{
  SILRenderer.deinit();

  return MEMORY[0x2821FE8D8](v0, 296, 7);
}

Swift::Int_optional __swiftcall SILRenderer.findNextAvailablePage(region_id:curSwapID:)(Swift::Int region_id, Swift::UInt64 curSwapID)
{
  v3 = v2;
  v6 = (*(*v2 + 256))();
  v8 = v6;
  if ((v6 & 0xC000000000000001) == 0)
  {
    if (region_id < 0)
    {
      __break(1u);
    }

    else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) > region_id)
    {
      region_id = *(v6 + 8 * region_id + 32);

      goto LABEL_5;
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

LABEL_21:
  region_id = MEMORY[0x266730000](region_id, v8);
LABEL_5:

  v10 = 0;
  v11 = 0;
  while (1)
  {
    v12 = v11;
    if (v11 == 3)
    {
      break;
    }

    v13 = *(*region_id + 160);
    v8 = region_id;
    v14 = (v13)(v9);
    if (v12 >= *(v14 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v15 = *(v14 + v10 + 88);

    if (v15 == 1)
    {
      goto LABEL_15;
    }

    v8 = region_id;
    v6 = (v13)(v16);
    if (v12 >= *(v6 + 16))
    {
      goto LABEL_19;
    }

    if (*(v6 + v10 + 88))
    {
      goto LABEL_24;
    }

    v17 = *(v6 + v10 + 80);

    if ((*(*v3 + 448))(v18) < v17)
    {
      v8 = region_id;
      v6 = v13();
      if (v12 >= *(v6 + 16))
      {
        goto LABEL_20;
      }

      if (*(v6 + v10 + 88))
      {
        goto LABEL_25;
      }

      v19 = *(v6 + v10 + 80);

      v10 += 64;
      v11 = v12 + 1;
      if (v19 != curSwapID)
      {
        continue;
      }
    }

LABEL_15:

    v6 = v12;
    goto LABEL_17;
  }

  v6 = 0;
LABEL_17:
  v7 = v12 == 3;
LABEL_26:
  result.value = v6;
  result.is_nil = v7;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SILRenderer.updateRegionSurface(region_id:swapID:extent:)(Swift::Int region_id, Swift::UInt64 swapID, Swift::Int extent)
{
  v4 = v3;
  v104 = swapID;
  v110 = region_id;
  v107 = type metadata accessor for Logger();
  v106 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v105 = &v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = type metadata accessor for OSSignpostID();
  v102 = *(v123 - 8);
  v7 = MEMORY[0x28223BE20](v123);
  v100 = &v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = (&v98 - v9);
  v127 = type metadata accessor for OSSignposter();
  v103 = *(v127 - 8);
  v11 = MEMORY[0x28223BE20](v127);
  v99 = &v98 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v126 = &v98 - v13;
  outlined init with copy of SILBackend?(v3 + 24, &v142, &_s10SILManager10SILBackend_pSgMd);
  v14 = *(&v143 + 1);
  if (!*(&v143 + 1))
  {
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
    return;
  }

  v15 = v144;
  __swift_project_boxed_opaque_existential_1(&v142, *(&v143 + 1));
  v16 = (*(v15 + 16))(v14, v15);
  if (v16 <= extent)
  {
    v17 = extent;
  }

  else
  {
    v17 = v16;
  }

  v18 = __swift_destroy_boxed_opaque_existential_1Tm(&v142);
  v20 = v17 + 7;
  if (__OFADD__(v17, 7))
  {
    goto LABEL_46;
  }

  v21 = (*v3 + 256);
  v15 = *v21;
  v22 = (*v21)(v18);
  v17 = v22;
  v19 = &v138;
  if ((v22 & 0xC000000000000001) != 0)
  {
LABEL_47:
    v23 = MEMORY[0x266730000](*(v19 - 32), v17);
  }

  else
  {
    if ((v110 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_49;
    }

    if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) <= v110)
    {
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    v23 = *(v22 + 8 * v110 + 32);
  }

  v17 = (*(*v23 + 136))(v24);
  v25 = *(*v23 + 112);
  v111 = v23;
  v26 = v25();
  if (v17 < 0)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (v17 >= *(v26 + 16))
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v122 = v10;
  v128 = v4;
  v27 = v20 & 0xFFFFFFFFFFFFFFF8;
  v108 = v17;
  outlined init with copy of SILBackend?(v26 + 40 * v17 + 32, &v142, &_s10SILManager13IOSurfaceLike_pSgMd);

  v28 = *(&v143 + 1);
  if (*(&v143 + 1))
  {
    v29 = v144;
    v30 = __swift_project_boxed_opaque_existential_1(&v142, *(&v143 + 1));
    v4 = &v98;
    v31 = *(v28 - 8);
    MEMORY[0x28223BE20](v30);
    v33 = v27;
    v34 = &v98 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v31 + 16))(v34);
    outlined destroy of SILValidator.RegionState?(&v142, &_s10SILManager13IOSurfaceLike_pSgMd);
    v35 = (*(v29 + 1))(v28, v29);
    v36 = v34;
    v27 = v33;
    v37 = (*(v31 + 8))(v36, v28);
    if (v35 == v33)
    {
      while (1)
      {
        v78 = (*(*v111 + 176))(&v142);
        v80 = v95;
        v81 = *v95;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v80 = v81;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v81 = specialized _ArrayBuffer._consumeAndCreateNew()(v81);
          *v80 = v81;
        }

        if (v108 < *(v81 + 2))
        {
          v97 = &v81[64 * v108];
          *(v97 + 10) = v104;
          v97[88] = 0;
          v78(&v142, 0);

          return;
        }

        __break(1u);
LABEL_75:
        v81 = specialized _ArrayBuffer._consumeAndCreateNew()(v81);
        *v80 = v81;
LABEL_62:
        if (v108 >= *(v81 + 2))
        {
          __break(1u);
        }

        else
        {
          outlined assign with take of IOSurfaceLike?(&v139, &v81[40 * v108 + 32]);
          v78(&v136, 0);
          v78 = (*(*v111 + 176))(&v136);
          v80 = v83;
          v81 = *v83;
          v84 = swift_isUniquelyReferenced_nonNull_native();
          *v80 = v81;
          if (v84)
          {
            goto LABEL_64;
          }
        }

        v81 = specialized _ArrayBuffer._consumeAndCreateNew()(v81);
        *v80 = v81;
LABEL_64:
        v85 = v100;
        if (v108 >= *(v81 + 2))
        {
          __break(1u);
          goto LABEL_79;
        }

        v86 = &v81[64 * v108];
        *(v86 + 16) = -1;
        *(v86 + 34) = v145;
        *(v86 + 19) = v146;
        *(v86 + 5) = 0;
        *(v86 + 6) = 0;
        v86[56] = 0;
        *(v86 + 57) = v134;
        v86[59] = v135;
        *(v86 + 15) = 0;
        *(v86 + 16) = 0;
        *(v86 + 72) = xmmword_262A9AF70;
        v86[88] = 1;
        v78(&v136, 0);
        v87 = Log.unsafeMutableAddressor();
        swift_beginAccess();
        v88 = *(**v87 + 168);

        LOBYTE(v87) = v88(v89);

        if (v87)
        {
          v90 = SILSignpost.unsafeMutableAddressor();
          (*(v103 + 16))(v99, v90, v127);
          static OSSignpostID.exclusive.getter();
          v91 = OSSignposter.logHandle.getter();
          v92 = static os_signpost_type_t.event.getter();
          if (OS_os_log.signpostsEnabled.getter())
          {
            v93 = swift_slowAlloc();
            *v93 = 134218752;
            *(v93 + 4) = v110;
            *(v93 + 12) = 2048;
            *(v93 + 14) = v108;
            *(v93 + 22) = 2048;
            *(v93 + 24) = v104;
            *(v93 + 32) = 2048;
            *(v93 + 34) = v101;
            v94 = OSSignpostID.rawValue.getter();
            _os_signpost_emit_with_name_impl(&dword_262A43000, v91, v92, v94, "SIL Create Surface", "reg:%ld page:%ld swap: %llu indSz: %ld", v93, 0x2Au);
            MEMORY[0x266730D70](v93, -1, -1);
          }

          (*(v102 + 8))(v85, v123);
          (*(v103 + 8))(v99, v127);
        }

        __swift_destroy_boxed_opaque_existential_1Tm(&v142);
      }
    }
  }

  else
  {
    v37 = outlined destroy of SILValidator.RegionState?(&v142, &_s10SILManager13IOSurfaceLike_pSgMd);
  }

  v101 = v27;
  v10 = v128;
  v38 = v15(v37);
  v17 = v38;
  if (v38 >> 62)
  {
LABEL_52:
    if (v17 < 0)
    {
      v70 = v17;
    }

    else
    {
      v70 = v17 & 0xFFFFFFFFFFFFFF8;
    }

    v39 = MEMORY[0x2667300B0](v70);
    if (v39)
    {
      goto LABEL_18;
    }

    goto LABEL_56;
  }

  v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v39)
  {
LABEL_18:
    v20 = 0;
    v116 = v17 & 0xC000000000000001;
    v115 = v17 & 0xFFFFFFFFFFFFFF8;
    v114 = v17 + 32;
    v125 = 0x8000000262A9F400;
    v121 = (v103 + 16);
    v120 = (v102 + 8);
    v119 = (v103 + 8);
    v124 = xmmword_262A9AF70;
    v118 = 0x8000300uLL;
    v113 = v17;
    v112 = v39;
    do
    {
      if (v116)
      {
        v15 = MEMORY[0x266730000](v20, v17);
        v19 = (v20 + 1);
        if (__OFADD__(v20, 1))
        {
          goto LABEL_41;
        }
      }

      else
      {
        v19 = *(v115 + 16);
        if (v20 >= v19)
        {
          goto LABEL_45;
        }

        v15 = *(v114 + 8 * v20);

        v19 = (v20 + 1);
        if (__OFADD__(v20, 1))
        {
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
          goto LABEL_47;
        }
      }

      v117 = v19;
      v131 = v20;
      v40 = 0;
      v4 = *(*v15 + 160);
      v41 = *v15 + 160;
      v42 = 4;
      v20 = 88;
      v129 = v4;
      v130 = v41;
      do
      {
        v43 = v4();
        v19 = *(v43 + 16);
        if (v40 >= v19)
        {
          goto LABEL_42;
        }

        v44 = *(v43 + v20 - 8);
        v17 = *(v43 + v20);

        if ((v17 & 1) == 0)
        {
          v46 = *(*v10 + 448);
          v133 = v44;
          v47 = v46(v45);
          if (v47 >= v133)
          {
            v48 = Log.unsafeMutableAddressor();
            swift_beginAccess();
            v132 = v48;
            v49 = *v48;
            *&v142 = 0;
            *(&v142 + 1) = 0xE000000000000000;

            _StringGuts.grow(_:)(38);

            *&v142 = 0xD000000000000014;
            *(&v142 + 1) = v125;
            v139 = v131;
            v10 = MEMORY[0x277D83B88];
            v50 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x26672FCC0](v50);

            MEMORY[0x26672FCC0](0x3A6567617020, 0xE600000000000000);
            v139 = v40;
            v51 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x26672FCC0](v51);

            MEMORY[0x26672FCC0](0x207061777320, 0xE600000000000000);
            v139 = v133;
            v52 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x26672FCC0](v52);

            (*(*v49 + 120))(4, v142, *(&v142 + 1));

            v144 = 0;
            v142 = 0u;
            v143 = 0u;
            v17 = (*(*v15 + 128))(&v139);
            v54 = v53;
            v55 = *v53;
            v56 = swift_isUniquelyReferenced_nonNull_native();
            *v54 = v55;
            if ((v56 & 1) == 0)
            {
              v55 = specialized _ArrayBuffer._consumeAndCreateNew()(v55);
              *v54 = v55;
            }

            v4 = &v139;
            v19 = v55[2];
            if (v40 >= v19)
            {
              goto LABEL_43;
            }

            outlined assign with take of IOSurfaceLike?(&v142, &v55[v42]);
            (v17)(&v139, 0);
            v17 = (*(*v15 + 176))(&v139);
            v58 = v57;
            v59 = *v57;
            v60 = swift_isUniquelyReferenced_nonNull_native();
            *v58 = v59;
            if ((v60 & 1) == 0)
            {
              v59 = specialized _ArrayBuffer._consumeAndCreateNew()(v59);
              *v58 = v59;
            }

            v19 = *(v59 + 2);
            if (v40 >= v19)
            {
              goto LABEL_44;
            }

            v61 = &v59[v20];
            *(v61 - 28) = -1;
            *(v61 - 54) = v136;
            *(v61 - 25) = v137;
            *(v61 - 6) = 0;
            *(v61 - 5) = 0;
            *(v61 - 32) = 0;
            *(v61 - 31) = v145;
            *(v61 - 29) = BYTE2(v145);
            *(v61 - 28) = 0;
            *(v61 - 1) = v124;
            *v61 = 1;
            (v17)(&v139, 0);
            v62 = v132;
            swift_beginAccess();
            v63 = *(**v62 + 168);

            v17 = v63(v64);

            if (v17)
            {
              v65 = SILSignpost.unsafeMutableAddressor();
              (*v121)(v126, v65, v127);
              v66 = v122;
              static OSSignpostID.exclusive.getter();
              v17 = OSSignposter.logHandle.getter();
              LODWORD(v132) = static os_signpost_type_t.event.getter();
              v67 = OS_os_log.signpostsEnabled.getter();
              v4 = v129;
              if (v67)
              {
                v68 = swift_slowAlloc();
                *v68 = v118;
                *(v68 + 4) = v131;
                *(v68 + 12) = 2048;
                *(v68 + 14) = v40;
                *(v68 + 22) = 2048;
                *(v68 + 24) = v133;
                v69 = OSSignpostID.rawValue.getter();
                _os_signpost_emit_with_name_impl(&dword_262A43000, v17, v132, v69, "SIL Release Surface", "reg:%ld page:%ld swap: %llu", v68, 0x20u);
                MEMORY[0x266730D70](v68, -1, -1);
              }

              (*v120)(v66, v123);
              (*v119)(v126, v127);
              v10 = v128;
            }

            else
            {
              v10 = v128;
              v4 = v129;
            }
          }
        }

        v20 += 64;
        v42 += 5;
        ++v40;
      }

      while (v20 != 280);

      v20 = v117;
      v17 = v113;
    }

    while (v117 != v112);
  }

LABEL_56:

  v71 = SILLogger.unsafeMutableAddressor();
  (*(v106 + 16))(v105, v71, v107);
  v72 = Logger.logObject.getter();
  v73 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    *v74 = 134218752;
    *(v74 + 4) = v110;
    *(v74 + 12) = 2048;
    *(v74 + 14) = v108;
    *(v74 + 22) = 2048;
    *(v74 + 24) = v104;
    *(v74 + 32) = 2048;
    *(v74 + 34) = v101;
    _os_log_impl(&dword_262A43000, v72, v73, "New surface reg:%ld page:%ld swap %llu size: %ld", v74, 0x2Au);
    MEMORY[0x266730D70](v74, -1, -1);
  }

  (*(v106 + 8))(v105, v107);
  outlined init with copy of SILBackend?(v10 + 24, &v139, &_s10SILManager10SILBackend_pSgMd);
  v75 = v140;
  if (!v140)
  {
    goto LABEL_80;
  }

  v76 = v141;
  __swift_project_boxed_opaque_existential_1(&v139, v140);
  v77 = v109;
  (*(v76 + 16))(&v142, v101, v101, v75, v76);
  if (!v77)
  {
    v109 = 0;
    __swift_destroy_boxed_opaque_existential_1Tm(&v139);
    __swift_project_boxed_opaque_existential_1(&v142, *(&v143 + 1));
    IOSurfaceLike.clear()();
    outlined init with copy of SILFileHandle(&v142, &v139);
    v78 = (*(*v111 + 128))(&v136);
    v80 = v79;
    v81 = *v79;
    v82 = swift_isUniquelyReferenced_nonNull_native();
    *v80 = v81;
    if ((v82 & 1) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_62;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(&v139);
}

void one-time initialization function for degammaLUT()
{
  v0 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v0 + 16) = 256;
  bzero((v0 + 32), 0x400uLL);
  v1 = xmmword_262A9AF90;
  v2 = vdup_n_s32(0x3B808081u);
  v3 = 32;
  v6 = vdupq_n_s64(2uLL);
  do
  {
    v9 = v1;
    v4 = vmul_f32(vcvt_f32_f64(vcvtq_f64_u64(v1)), v2);
    v7 = v4.f32[0];
    v8 = powf(v4.f32[1], 2.2);
    *&v5 = powf(v7, 2.2);
    *(&v5 + 1) = v8;
    *(v0 + v3) = v5;
    v1 = vaddq_s64(v9, v6);
    v3 += 8;
  }

  while (v3 != 1056);
  static SILRenderer.degammaLUT = v0;
}

void one-time initialization function for regammaLUT()
{
  v0 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v0 + 16) = 4096;
  bzero((v0 + 32), 0x4000uLL);
  v1 = 0;
  while (1)
  {
    v2 = powf(v1 * 0.0002442, 0.45455) * 255.0;
    if ((LODWORD(v2) & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
      break;
    }

    if (v2 <= -1.0)
    {
      goto LABEL_8;
    }

    if (v2 >= 4295000000.0)
    {
      goto LABEL_9;
    }

    *(v0 + 4 * v1++ + 32) = v2;
    if (v1 == 4096)
    {
      static SILRenderer.regammaLUT = v0;
      return;
    }
  }

  __break(1u);
LABEL_8:
  __break(1u);
LABEL_9:
  __break(1u);
}

void SILRenderer.preRenderCursors(manifest:)(uint64_t a1)
{
  v3 = v2;
  v4 = *(a1 + OBJC_IVAR____TtC10SILManager11SILManifest_sortedCursorsByResolution);
  v5 = *(*v1 + 544);
  v144 = *v1 + 544;
  v145 = v1;
  v143 = v5;
  v5(v150);
  outlined destroy of SILRenderer.CursorState(v150);
  if (!*(v4 + 16) || (v6 = specialized __RawDictionaryStorage.find<A>(_:)(v150[4]), (v7 & 1) == 0))
  {
    v13 = Log.unsafeMutableAddressor();
    swift_beginAccess();
    v14 = *v13;

    _StringGuts.grow(_:)(47);

    v143(v164, v15);
    outlined destroy of SILRenderer.CursorState(v164);
    v149 = v164[4];
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x26672FCC0](v16);

    (*(*v14 + 144))(4, 0xD00000000000002DLL, 0x8000000262A9F9A0);

    return;
  }

  isUniquelyReferenced_nonNull_bridgeObject = *(*(v4 + 56) + 8 * v6);
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_194;
  }

  v9 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
LABEL_146:
    v120 = (*(*v145 + 560))(v146);
    *(v121 + 40) = 1;
    v120(v146, 0);
    return;
  }

LABEL_5:
  v10 = *(*v145 + 376);
  v128 = *v145 + 376;
  v129 = v10;
  v130 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
  v124 = isUniquelyReferenced_nonNull_bridgeObject + 32;
  v125 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
  v127 = isUniquelyReferenced_nonNull_bridgeObject;

  v11 = 0;
  v12 = MEMORY[0x277D85000];
  v126 = v9;
  while (v130)
  {
    isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x266730000](v11, v127);
    v17 = __OFADD__(v11, 1);
    v18 = v11 + 1;
    if (v17)
    {
      goto LABEL_178;
    }

LABEL_14:
    v19 = *((*v12 & *isUniquelyReferenced_nonNull_bridgeObject) + 0x180);
    v20 = (*v12 & *isUniquelyReferenced_nonNull_bridgeObject) + 384;
    v142 = isUniquelyReferenced_nonNull_bridgeObject;
    v134 = v20;
    v21 = v19();
    isUniquelyReferenced_nonNull_bridgeObject = v129();
    if ((v21 & 0x8000000000000000) != 0)
    {
      goto LABEL_179;
    }

    if (v21 >= *(isUniquelyReferenced_nonNull_bridgeObject + 16))
    {
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
      v122 = isUniquelyReferenced_nonNull_bridgeObject;
      if (isUniquelyReferenced_nonNull_bridgeObject >= 0)
      {
        isUniquelyReferenced_nonNull_bridgeObject &= 0xFFFFFFFFFFFFFF8uLL;
      }

      v9 = MEMORY[0x2667300B0](isUniquelyReferenced_nonNull_bridgeObject);
      isUniquelyReferenced_nonNull_bridgeObject = v122;
      if (!v9)
      {
        goto LABEL_146;
      }

      goto LABEL_5;
    }

    v22 = isUniquelyReferenced_nonNull_bridgeObject + 16 * v21;
    v24 = *(v22 + 32);
    v23 = *(v22 + 40);

    v141 = v24;
    if (v24)
    {
      if ((v23 & 0x8000000000000000) != 0)
      {
        goto LABEL_193;
      }

      if (v23)
      {
        bzero(v141, v23);
      }
    }

    v133 = v19;
    v131 = v18;
    v25 = *((*v12 & *v142) + 0xC0);
    v26 = (*v12 & *v142) + 192;
    v27 = v142;
    v139 = v26;
    v140 = v25;
    v25(v146);
    v28 = v147;
    if (!v147)
    {
      goto LABEL_199;
    }

    v29 = v12;
    v30 = v148;
    __swift_project_boxed_opaque_existential_1(v146, v147);
    v31 = *(v27 + OBJC_IVAR____TtC10SILManager13SILCursorDesc_overlayOffset);
    v32 = (*((*v29 & *v27) + 0x198))();
    v33 = (*(v30 + 8))(v31, v32, v28, v30);
    if (v3)
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v146);
      return;
    }

    v135 = v33;
    v34 = __swift_destroy_boxed_opaque_existential_1Tm(v146);
    (v140)(v146, v34);
    v35 = v147;
    if (!v147)
    {
      goto LABEL_200;
    }

    v36 = v148;
    __swift_project_boxed_opaque_existential_1(v146, v147);
    v37 = *(v27 + OBJC_IVAR____TtC10SILManager13SILCursorDesc_outlineOffset);
    v38 = (*((*MEMORY[0x277D85000] & *v27) + 0x1B0))();
    v132 = (*(v36 + 8))(v37, v38, v35, v36);
    v39 = __swift_destroy_boxed_opaque_existential_1Tm(v146);
    (v140)(v146, v39);
    v40 = v147;
    if (!v147)
    {
      goto LABEL_201;
    }

    v41 = v148;
    v140 = __swift_project_boxed_opaque_existential_1(v146, v147);
    v139 = *(v27 + OBJC_IVAR____TtC10SILManager13SILCursorDesc_fillOffset);
    v42 = *v27;
    v43 = v27;
    v44 = MEMORY[0x277D85000];
    v45 = (*((*MEMORY[0x277D85000] & v42) + 0x1C8))();
    v46 = (*(v41 + 8))(v139, v45, v40, v41);
    v138 = 0;
    v139 = v46;
    v47 = __swift_destroy_boxed_opaque_existential_1Tm(v146);
    v140 = OBJC_IVAR____TtC10SILManager12SILAssetDesc_extent;
    v48 = *&v43[OBJC_IVAR____TtC10SILManager12SILAssetDesc_extent];
    v3 = (*((*v44 & *v43) + 0x1E0))(v47);
    type metadata accessor for SILImage();
    v49 = swift_allocObject();
    *(v49 + 16) = 0;
    *(v49 + 24) = 0;
    *(v49 + 56) = 0;
    *(v49 + 64) = 0;
    *(v49 + 32) = v48;
    *(v49 + 40) = v48;
    *(v49 + 48) = v3;
    isUniquelyReferenced_nonNull_bridgeObject = v3 * v48;
    if ((v3 * v48) >> 64 != (v3 * v48) >> 63)
    {
      goto LABEL_181;
    }

    v137 = v43;
    v50 = swift_slowAlloc();
    *(v49 + 56) = v50;
    *(v49 + 72) = 0;
    isUniquelyReferenced_nonNull_bridgeObject = swift_beginAccess();
    v51 = *(v49 + 32);
    if ((*&v51 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_182;
    }

    if (v51 <= -9.22337204e18)
    {
      goto LABEL_183;
    }

    if (v51 >= 9.22337204e18)
    {
      goto LABEL_184;
    }

    v52 = *(v49 + 40);
    if ((*&v52 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_185;
    }

    if (v52 <= -9.22337204e18)
    {
      goto LABEL_186;
    }

    if (v52 >= 9.22337204e18)
    {
      goto LABEL_187;
    }

    if ((v51 * v52) >> 64 != (v51 * v52) >> 63)
    {
      goto LABEL_188;
    }

    v136 = v49;
    memcpy(v50, (v135 + 32), *(v135 + 16));

    v54 = *&v137[OBJC_IVAR____TtC10SILManager12SILAssetDesc_name + 8];
    v146[0] = *&v137[OBJC_IVAR____TtC10SILManager12SILAssetDesc_name];
    v146[1] = v54;
    MEMORY[0x28223BE20](v53);
    v123[2] = v146;

    v55 = v138;
    v56 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v123, &outlined read-only object #0 of SILRenderer.preRenderCursors(manifest:));
    v138 = v55;
    swift_arrayDestroy();

    v58 = v143;
    if (v56)
    {
      v143(v151, v57);
      v59 = outlined destroy of SILRenderer.CursorState(v151);
      v60 = HIDWORD(v151[0]);
      v58(v152, v59);
      outlined destroy of SILRenderer.CursorState(v152);
      v61 = v152[0];
    }

    else
    {
      v143(v153, v57);
      v62 = outlined destroy of SILRenderer.CursorState(v153);
      v60 = v153[0];
      v58(v154, v62);
      outlined destroy of SILRenderer.CursorState(v154);
      v61 = HIDWORD(v154[0]);
    }

    v63 = v136;
    v64 = v139;
    v65 = *(v132 + 16);
    if (v65)
    {
      v66 = (v132 + 32);
      v67 = v50;
      do
      {
        v69 = *v66++;
        v68 = v69;
        if (v69)
        {
          v70 = *v67;
          v71 = v70 ^ 0xFF;
          *v67 = (v70 + ((32897 * v71 * v68) >> 23)) | ((((32897 * v71 * BYTE2(v60)) >> 23) + ((32897 * BYTE2(*v67) * v70) >> 23)) << 16) | ((((32897 * v71 * HIBYTE(v60)) >> 23) + ((32897 * HIBYTE(*v67) * v70) >> 23)) << 24) | ((((32897 * v71 * BYTE1(v60)) >> 23) + ((32897 * BYTE1(*v67) * v70) >> 23)) << 8);
        }

        ++v67;
        --v65;
      }

      while (v65);
    }

    v72 = *(v64 + 16);
    if (v72)
    {
      v73 = (v64 + 32);
      do
      {
        v75 = *v73++;
        v74 = v75;
        if (v75)
        {
          v76 = *v50;
          *v50 = (v76 + ((32897 * (v76 ^ 0xFFu) * v74) >> 23)) | ((((32897 * (v76 ^ 0xFF) * BYTE2(v61)) >> 23) + ((32897 * BYTE2(*v50) * v76) >> 23)) << 16) | ((((32897 * (v76 ^ 0xFF) * HIBYTE(v61)) >> 23) + ((32897 * HIBYTE(*v50) * v76) >> 23)) << 24) | ((((32897 * (v76 ^ 0xFF) * BYTE1(v61)) >> 23) + ((32897 * BYTE1(*v50) * v76) >> 23)) << 8);
        }

        ++v50;
        --v72;
      }

      while (v72);
    }

    v3 = v145;
    v78 = v143;
    v143(v155, v77);
    v79 = outlined destroy of SILRenderer.CursorState(v155);
    v80 = v156;
    (v78)(v157, v79);
    outlined destroy of SILRenderer.CursorState(v157);
    v81 = specialized SILRenderer.imageScale(image:scaleX:scaleY:)(v63, v80, v158);
    v82 = *(v140 + v137);

    v78(v159);
    outlined destroy of SILRenderer.CursorState(v159);
    v83 = scaleDimension(dim:scale:)(v82, v160);
    v84 = (v133)(v83);
    v85 = *(*v3 + 368);

    v86 = v85(v146);
    v88 = v87;
    v89 = *v87;
    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    *v88 = v89;
    if (!isUniquelyReferenced_nonNull_bridgeObject || v89 < 0 || (v89 & 0x4000000000000000) != 0)
    {
      isUniquelyReferenced_nonNull_bridgeObject = specialized _ArrayBuffer._consumeAndCreateNew()(v89);
      v89 = isUniquelyReferenced_nonNull_bridgeObject;
      *v88 = isUniquelyReferenced_nonNull_bridgeObject;
    }

    if ((v84 & 0x8000000000000000) != 0)
    {
      goto LABEL_189;
    }

    if (v84 >= *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_190;
    }

    *((v89 & 0xFFFFFFFFFFFFFF8) + 8 * v84 + 0x20) = v81;

    v90 = v86(v146, 0);
    v91 = (*(*v81 + 288))(v90);
    v3 = *(*v81 + 296);
    isUniquelyReferenced_nonNull_bridgeObject = (v3)();
    if ((v91 * isUniquelyReferenced_nonNull_bridgeObject) >> 64 != (v91 * isUniquelyReferenced_nonNull_bridgeObject) >> 63)
    {
      goto LABEL_191;
    }

    v92 = (*v81 + 304);
    v93 = *v92;
    v140 = (*v92)();
    v94 = (*(*v81 + 144))();
    isUniquelyReferenced_nonNull_bridgeObject = (v3)();
    v3 = v94 * isUniquelyReferenced_nonNull_bridgeObject;
    if ((v94 * isUniquelyReferenced_nonNull_bridgeObject) >> 64 != (v94 * isUniquelyReferenced_nonNull_bridgeObject) >> 63)
    {
      goto LABEL_192;
    }

    v135 = v81;
    isUniquelyReferenced_nonNull_bridgeObject = v93();
    if (v3 >= 1)
    {
      v95 = isUniquelyReferenced_nonNull_bridgeObject;
      v96 = 0;
      v139 = v3;
      do
      {
        if (__OFADD__(v96, 4))
        {
          v97 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v97 = v96 + 4;
        }

        if (__OFADD__(v96, 3))
        {
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
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
LABEL_172:
          __break(1u);
LABEL_173:
          __break(1u);
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
LABEL_179:
          __break(1u);
          goto LABEL_180;
        }

        LODWORD(v142) = *(v95 + v96);
        v98 = *(v95 + v96 + 1);
        v3 = *(v95 + v96 + 2);
        v99 = *(v95 + v96 + 3);
        (v143)(&v161);
        v100 = v162;
        v165 = v162;

        outlined destroy of SILRenderer.CursorState(&v161);
        if (*(v100 + 16) == 9 && *(v100 + 32) == 1.0 && *(v100 + 36) == 0.0 && *(v100 + 40) == 0.0 && *(v100 + 44) == 0.0 && *(v100 + 48) == 1.0 && *(v100 + 52) == 0.0 && *(v100 + 56) == 0.0 && *(v100 + 60) == 0.0)
        {
          v101 = *(v100 + 64);
          isUniquelyReferenced_nonNull_bridgeObject = outlined destroy of SILValidator.RegionState?(&v165, &_sSaySfGMd);
          if (v101 == 1.0)
          {
            goto LABEL_139;
          }
        }

        else
        {
          isUniquelyReferenced_nonNull_bridgeObject = outlined destroy of SILValidator.RegionState?(&v165, &_sSaySfGMd);
        }

        v143(v163, isUniquelyReferenced_nonNull_bridgeObject);
        v103 = v163[1];

        isUniquelyReferenced_nonNull_bridgeObject = outlined destroy of SILRenderer.CursorState(v163);
        if (one-time initialization token for degammaLUT != -1)
        {
          isUniquelyReferenced_nonNull_bridgeObject = swift_once();
        }

        v104 = *(static SILRenderer.degammaLUT + 16);
        if (v104 <= v98)
        {
          goto LABEL_148;
        }

        if (v104 <= v3)
        {
          goto LABEL_149;
        }

        if (v104 <= v99)
        {
          goto LABEL_150;
        }

        v105 = *(v103 + 16);
        if (!v105)
        {
          goto LABEL_151;
        }

        if (v105 == 1)
        {
          goto LABEL_152;
        }

        if (v105 < 3)
        {
          goto LABEL_153;
        }

        if (v105 == 3)
        {
          goto LABEL_154;
        }

        if (v105 < 5)
        {
          goto LABEL_155;
        }

        if (v105 == 5)
        {
          goto LABEL_156;
        }

        if (v105 < 7)
        {
          goto LABEL_157;
        }

        if (v105 == 7)
        {
          goto LABEL_158;
        }

        if (v105 < 9)
        {
          goto LABEL_159;
        }

        v106 = *(static SILRenderer.degammaLUT + 32 + 4 * v98);
        v107 = *(static SILRenderer.degammaLUT + 32 + 4 * v3);
        v108 = *(static SILRenderer.degammaLUT + 32 + 4 * v99);
        v109 = ((v106 * *(v103 + 32)) + (v107 * *(v103 + 36))) + (v108 * *(v103 + 40));
        v110 = ((v106 * *(v103 + 44)) + (v107 * *(v103 + 48))) + (v108 * *(v103 + 52));
        v111 = ((v106 * *(v103 + 56)) + (v107 * *(v103 + 60))) + (v108 * *(v103 + 64));
        if (v109 >= 1.0)
        {
          v3 = 1166012416;
          if (v110 >= 1.0)
          {
            v110 = 1.0;
            if (v111 >= 1.0)
            {
              v112 = 1.0;
              v109 = 1.0;
            }

            else
            {
              if (v111 < 0.0)
              {
                v112 = 0.0;
              }

              else
              {
                v112 = v111;
              }

              v109 = 1.0;
            }

            goto LABEL_121;
          }

          if (v110 >= 0.0)
          {
            v109 = 1.0;
            if (v111 < 1.0)
            {
              goto LABEL_118;
            }
          }

          else
          {
            v110 = 0.0;
            v109 = 1.0;
            if (v111 < 1.0)
            {
              goto LABEL_98;
            }
          }

          goto LABEL_111;
        }

        v3 = 1166012416;
        if (v109 >= 0.0)
        {
          if (v110 >= 1.0)
          {
            v110 = 1.0;
            if (v111 < 1.0)
            {
              goto LABEL_118;
            }

LABEL_111:
            v112 = 1.0;
            goto LABEL_121;
          }

          if (v110 >= 0.0)
          {
            v112 = 1.0;
            if (v111 < 1.0)
            {
LABEL_118:
              if (v111 < 0.0)
              {
                v112 = 0.0;
              }

              else
              {
                v112 = v111;
              }
            }
          }

          else
          {
            v110 = 0.0;
            v112 = 1.0;
            if (v111 < 1.0)
            {
LABEL_98:
              if (v111 < 0.0)
              {
                v112 = 0.0;
              }

              else
              {
                v112 = v111;
              }
            }
          }
        }

        else
        {
          if (v110 >= 1.0)
          {
            v109 = 0.0;
            v110 = 1.0;
            if (v111 < 1.0)
            {
              goto LABEL_114;
            }

            goto LABEL_111;
          }

          if (v110 >= 0.0)
          {
            v109 = 0.0;
            v112 = 1.0;
            if (v111 < 1.0)
            {
LABEL_114:
              if (v111 < 0.0)
              {
                v112 = 0.0;
              }

              else
              {
                v112 = v111;
              }
            }
          }

          else
          {
            v110 = 0.0;
            v112 = 1.0;
            v109 = 0.0;
            if (v111 < 1.0)
            {
              goto LABEL_98;
            }
          }
        }

LABEL_121:
        if (one-time initialization token for regammaLUT != -1)
        {
          isUniquelyReferenced_nonNull_bridgeObject = swift_once();
        }

        v113 = v109 * 4095.0;
        if (COERCE_INT(fabs(v109 * 4095.0)) > 2139095039)
        {
          goto LABEL_160;
        }

        if (v113 <= -9.2234e18)
        {
          goto LABEL_162;
        }

        if (v113 >= 9.2234e18)
        {
          goto LABEL_164;
        }

        v114 = v113;
        if (v113 < 0)
        {
          goto LABEL_166;
        }

        v115 = *(static SILRenderer.regammaLUT + 16);
        if (v115 <= v114)
        {
          goto LABEL_167;
        }

        v116 = v110 * 4095.0;
        if (COERCE_INT(fabs(v110 * 4095.0)) > 2139095039)
        {
          goto LABEL_168;
        }

        if (v116 <= -9.2234e18)
        {
          goto LABEL_169;
        }

        if (v116 >= 9.2234e18)
        {
          goto LABEL_170;
        }

        v117 = v116;
        if (v116 < 0)
        {
          goto LABEL_171;
        }

        if (v115 <= v117)
        {
          goto LABEL_172;
        }

        v118 = v112 * 4095.0;
        if (COERCE_INT(fabs(v112 * 4095.0)) > 2139095039)
        {
          goto LABEL_173;
        }

        if (v118 <= -9.2234e18)
        {
          goto LABEL_174;
        }

        if (v118 >= 9.2234e18)
        {
          goto LABEL_175;
        }

        v119 = v118;
        if (v118 < 0)
        {
          goto LABEL_176;
        }

        if (v115 <= v119)
        {
          goto LABEL_177;
        }

        LODWORD(v98) = *(static SILRenderer.regammaLUT + 32 + 4 * v114);
        v3 = *(static SILRenderer.regammaLUT + 32 + 4 * v117);
        LODWORD(v99) = *(static SILRenderer.regammaLUT + 32 + 4 * v119);

LABEL_139:
        if ((2 * v98) >= 0xFFFFFE80)
        {
          goto LABEL_161;
        }

        LODWORD(v102) = 2 * v3 + 384;
        if ((2 * v3) >= 0xFFFFFE80)
        {
          goto LABEL_163;
        }

        if ((2 * v99) >= 0xFFFFFE80)
        {
          goto LABEL_165;
        }

        v3 = v139;
        *(v140 + (v102 & 0xFFFFFFFFFFFFFFFCLL)) = ((2 * v98 + 384) << 20) & 0x3FE00000 | (((v102 >> 1) & 0x1FF) << 11) | (2 * v99 + 384) & 0x3FE;
        *(v141 + v96 / 4) = v142;
        v96 = v97;
      }

      while (v97 < v3);
    }

    v11 = v131;
    v3 = v138;
    v12 = MEMORY[0x277D85000];
    if (v131 == v126)
    {

      goto LABEL_146;
    }
  }

  if (v11 < *(v125 + 16))
  {
    isUniquelyReferenced_nonNull_bridgeObject = *(v124 + 8 * v11);
    v17 = __OFADD__(v11, 1);
    v18 = v11 + 1;
    if (v17)
    {
      goto LABEL_178;
    }

    goto LABEL_14;
  }

  __break(1u);
LABEL_199:
  __break(1u);
LABEL_200:
  __break(1u);
LABEL_201:
  __break(1u);
}

uint64_t SILRenderer.renderCursorToSurface(manifest:surface:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = (*v2 + 544);
  v7 = *v6;
  (*v6)(v78);
  v8 = outlined destroy of SILRenderer.CursorState(v78);
  v9 = v78[6];
  (v7)(v79, v8);
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  if (v9 >= *(v80 + 16))
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v10 = *(v80 + 8 * v9 + 32);
  v11 = outlined destroy of SILRenderer.CursorState(v79);
  a1 = *(a1 + OBJC_IVAR____TtC10SILManager11SILManifest_cursorsByResolutionByType);
  (v7)(v81, v11);
  outlined destroy of SILRenderer.CursorState(v81);
  if (!*(a1 + 16))
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v12 = specialized __RawDictionaryStorage.find<A>(_:)(v81[4]);
  if ((v13 & 1) == 0)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    v26 = MEMORY[0x266730000](a2, a1);
    goto LABEL_11;
  }

  v71 = a2;
  v14 = *(*(a1 + 56) + 8 * v12);

  v72 = v7;
  (v7)(v82, v15);
  outlined destroy of SILRenderer.CursorState(v82);
  if (!*(v14 + 16))
  {
    goto LABEL_54;
  }

  v16 = specialized __RawDictionaryStorage.find<A>(_:)(v82[3]);
  if ((v17 & 1) == 0)
  {
    goto LABEL_54;
  }

  v18 = *(*(v14 + 56) + 8 * v16);

  v19 = Log.unsafeMutableAddressor();
  swift_beginAccess();
  v68 = v19;
  v20 = *v19;
  v85 = 0;
  v86 = 0xE000000000000000;

  _StringGuts.grow(_:)(43);

  v85 = 0x6E697265646E6552;
  v86 = 0xEA00000000002067;
  v21 = *&v18[OBJC_IVAR____TtC10SILManager12SILAssetDesc_name];
  v22 = *&v18[OBJC_IVAR____TtC10SILManager12SILAssetDesc_name + 8];

  MEMORY[0x26672FCC0](v21, v22);

  MEMORY[0x26672FCC0](0xD00000000000001DLL, 0x8000000262A9F930);
  v74 = v10;
  v83[0] = v10;
  v23 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26672FCC0](v23);

  (*(*v20 + 128))(4, v85, v86);

  v9 = *((*MEMORY[0x277D85000] & *v18) + 0x180);
  v75 = v18;
  a2 = (v9)(v24);
  v25 = (*(*v2 + 352))();
  a1 = v25;
  if ((v25 & 0xC000000000000001) != 0)
  {
    goto LABEL_34;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_36;
  }

  if (a2 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v26 = *(v25 + 8 * a2 + 32);

LABEL_11:

  v28 = (*(*v26 + 144))(v27);
  v29 = *(*v26 + 296);
  v30 = v29();
  if ((v28 * v30) >> 64 != (v28 * v30) >> 63)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v70 = v28 * v30;
  v69 = (*(*v26 + 304))();
  v31 = (v9)();
  v32 = (*(*v2 + 376))();
  if ((v31 & 0x8000000000000000) != 0)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v31 >= *(v32 + 16))
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v33 = v32 + 16 * v31;
  v34 = *(v33 + 40);
  __src = *(v33 + 32);

  if ((v74 & 0x8000000000000000) != 0)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (HIDWORD(v74))
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v36 = (v29)(v35);
  if ((v36 & 0x8000000000000000) != 0)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v37 = v36;
  if (HIDWORD(v36))
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v38 = (*(*v26 + 288))();
  if ((v38 & 0x8000000000000000) != 0)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v39 = v38;
  if (HIDWORD(v38))
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  __n = v34;
  v40 = *&v75[OBJC_IVAR____TtC10SILManager13SILCursorDesc_hotx];
  v72(v83);
  outlined destroy of SILRenderer.CursorState(v83);
  v41 = scaleDimension(dim:scale:)(v40, v84);
  if ((v41 & 0x8000000000000000) != 0)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v42 = v41;
  if (HIDWORD(v41))
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v65 = v37;
  v43 = *&v75[OBJC_IVAR____TtC10SILManager13SILCursorDesc_hoty];
  v72(&v85);
  outlined destroy of SILRenderer.CursorState(&v85);
  v44 = scaleDimension(dim:scale:)(v43, v87);
  if ((v44 & 0x8000000000000000) != 0)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v45 = v44;
  if (HIDWORD(v44))
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v46 = (v9)();
  v73 = (*(*v2 + 584))(v77);
  v48 = v47;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v76 = *v48;
  *v48 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v74 | (v65 << 32), v39 | (v42 << 32), v45, v46, isUniquelyReferenced_nonNull_native);
  *v48 = v76;

  v73(v77, 0);
  v50 = v71[3];
  v51 = v71[4];
  __swift_project_boxed_opaque_existential_1(v71, v50);
  v52 = (*(v51 + 48))(0, v50, v51);
  result = memcpy((v52 + v74), v69, v70);
  v54 = v74 + v70;
  if (__OFADD__(v74, v70))
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v55 = __OFADD__(v54, 127);
  v56 = v54 + 127;
  if (v55)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (__src)
  {
    v57 = v56 & 0xFFFFFFFFFFFFFF80;
    memcpy((v52 + (v56 & 0xFFFFFFFFFFFFFF80)), __src, __n);
    v58 = v57 + __n;
    if (!__OFADD__(v57, __n))
    {
      v55 = __OFADD__(v58, 127);
      v59 = v58 + 127;
      if (!v55)
      {
        v60 = v59 & 0xFFFFFFFFFFFFFF80;
        v61 = (*(*v3 + 560))(v77);
        *(v62 + 41) = 1;
        v61(v77, 0);
        swift_beginAccess();
        v63 = *v68;

        _StringGuts.grow(_:)(57);
        MEMORY[0x26672FCC0](0xD000000000000020, 0x8000000262A9F950);
        v88 = v60;
        v64 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x26672FCC0](v64);

        MEMORY[0x26672FCC0](0xD000000000000017, 0x8000000262A9F980);
        (*(*v63 + 128))(4, 0, 0xE000000000000000);
      }

      goto LABEL_53;
    }

LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:

    __break(1u);
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SILRenderer.setPower(power_state:sync:)(Swift::Bool power_state, Swift::Bool sync)
{
  outlined init with copy of SILBackend?(v2 + 24, v5, &_s10SILManager10SILBackend_pSgMd);
  v3 = v6;
  if (v6)
  {
    v4 = v7;
    __swift_project_boxed_opaque_existential_1(v5, v6);
    (*(v4 + 8))(1, 1, v3, v4);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SILRenderer.setCursor(power_state:)(Swift::Bool power_state)
{
  v4 = v2[8];
  if (*(*(v4 + OBJC_IVAR____TtC10SILManager11SILManifest_cursorsByResolutionByName) + 16))
  {
    v5 = v2;
    v6 = power_state;
    v7 = (*v2 + 256);
    v8 = *v7;
    v9 = v7;
    v10 = (*v7)();
    v11 = v10;
    if ((v10 & 0xC000000000000001) != 0)
    {
      v1 = MEMORY[0x266730000](3, v10);
    }

    else
    {
      if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) < 4uLL)
      {
        __break(1u);
        goto LABEL_44;
      }

      v1 = *(v10 + 56);
    }

    if (v6)
    {
      v13 = (v8)(v12);
      v11 = v13;
      if ((v13 & 0xC000000000000001) == 0)
      {
        if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) < 4uLL)
        {
LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

        v6 = *(v13 + 56);

        goto LABEL_9;
      }

LABEL_44:
      v6 = MEMORY[0x266730000](3, v11);
LABEL_9:

      v11 = (*(*v6 + 112))(v14);

      if (*(v11 + 16))
      {
        outlined init with copy of SILBackend?(v11 + 32, &v43, &_s10SILManager13IOSurfaceLike_pSgMd);

        if (*(&v44 + 1))
        {

          outlined destroy of SILValidator.RegionState?(&v43, &_s10SILManager13IOSurfaceLike_pSgMd);
          return;
        }

        v24 = outlined destroy of SILValidator.RegionState?(&v43, &_s10SILManager13IOSurfaceLike_pSgMd);
        v25 = (*((*MEMORY[0x277D85000] & *v4) + 0xC0))(v24);
        v4 = scaleDimension(dim:scale:)(v25, 1.26);
        outlined init with copy of SILBackend?((v5 + 3), &v43, &_s10SILManager10SILBackend_pSgMd);
        v6 = *(&v44 + 1);
        if (!*(&v44 + 1))
        {
          goto LABEL_63;
        }

        v8 = v45;
        __swift_project_boxed_opaque_existential_1(&v43, *(&v44 + 1));
        v26 = (*(v8 + 16))(v6, v8);
        if (v26 <= v4)
        {
          v11 = v4;
        }

        else
        {
          v11 = v26;
        }

        __swift_destroy_boxed_opaque_existential_1Tm(&v43);
        if (!__OFADD__(v11, 7))
        {
          v11 = (v11 + 7) & 0xFFFFFFFFFFFFFFF8;
          v27 = v11 * v11;
          if ((v11 * v11) >> 64 == (v11 * v11) >> 63)
          {
            if ((v27 - 0x2000000000000000) >> 62 == 3)
            {
              v28 = (v27 + 127) & 0xFFFFFFFFFFFFFF80;
              v8 = (v28 + 4 * v27);
              if (!__OFADD__(v28, 4 * v27))
              {
                v29 = (v8 / v11) / 5.0;
                v30 = floorf(v29);
                v31 = ceilf(v29);
                if (v29 >= 0.0)
                {
                  v32 = v31;
                }

                else
                {
                  v32 = v30;
                }

                if ((LODWORD(v32) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
                {
                  if (v32 > -9.2234e18)
                  {
                    if (v32 < 9.2234e18)
                    {
                      outlined init with copy of SILBackend?((v5 + 3), &v48, &_s10SILManager10SILBackend_pSgMd);
                      v4 = *(&v49 + 1);
                      if (!*(&v49 + 1))
                      {
LABEL_64:
                        __break(1u);
LABEL_65:
                        __break(1u);
                        return;
                      }

                      v9 = v32;
                      v6 = v50;
                      __swift_project_boxed_opaque_existential_1(&v48, *(&v49 + 1));
                      if (v32 + 0x4000000000000000 >= 0)
                      {
                        (*(v6 + 16))(&v43, 2 * v9, v11, v4, v6);
                        if (v3)
                        {

                          __swift_destroy_boxed_opaque_existential_1Tm(&v48);
                          return;
                        }

                        __swift_destroy_boxed_opaque_existential_1Tm(&v48);
                        v33 = (*v5 + 560);
                        v9 = *v33;
                        v11 = (*v33)(&v48);
                        v6 = v34;
                        v4 = *(v34 + 64);
                        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                        *(v6 + 64) = v4;
                        if (isUniquelyReferenced_nonNull_native)
                        {
                          if (v4[2])
                          {
                            goto LABEL_36;
                          }

                          goto LABEL_58;
                        }

LABEL_57:
                        v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
                        *(v6 + 64) = v4;
                        if (v4[2])
                        {
LABEL_36:
                          v4[4] = 0;
                          (v11)(&v48, 0);
                          v11 = (v9)(&v48);
                          v6 = v36;
                          v4 = *(v36 + 64);
                          v37 = swift_isUniquelyReferenced_nonNull_native();
                          *(v6 + 64) = v4;
                          if (v37)
                          {
                            goto LABEL_37;
                          }

                          goto LABEL_59;
                        }

LABEL_58:
                        __break(1u);
LABEL_59:
                        v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
                        *(v6 + 64) = v4;
LABEL_37:
                        if (v4[2] < 2uLL)
                        {
                          __break(1u);
                        }

                        else
                        {
                          v4[5] = v8;
                          (v11)(&v48, 0);
                          outlined init with copy of SILFileHandle(&v43, &v48);
                          v11 = (*(*v1 + 128))(v42);
                          v6 = v38;
                          v4 = *v38;
                          v39 = swift_isUniquelyReferenced_nonNull_native();
                          *v6 = v4;
                          if (v39)
                          {
                            if (v4[2])
                            {
                              goto LABEL_40;
                            }

LABEL_62:
                            __break(1u);
LABEL_63:
                            __break(1u);
                            goto LABEL_64;
                          }
                        }

                        v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
                        *v6 = v4;
                        if (v4[2])
                        {
LABEL_40:
                          outlined assign with take of IOSurfaceLike?(&v48, (v4 + 4));
                          (v11)(v42, 0);
                          outlined init with copy of SILBackend?((v5 + 3), &v48, &_s10SILManager10SILBackend_pSgMd);
                          v40 = *(&v49 + 1);
                          if (*(&v49 + 1))
                          {
                            v41 = v50;
                            __swift_project_boxed_opaque_existential_1(&v48, *(&v49 + 1));
                            outlined init with copy of SILFileHandle(&v43, v42);
                            (*(v41 + 88))(v42, v40, v41);

                            outlined destroy of SILValidator.RegionState?(v42, &_s10SILManager13IOSurfaceLike_pSgMd);
                            __swift_destroy_boxed_opaque_existential_1Tm(&v43);
                            __swift_destroy_boxed_opaque_existential_1Tm(&v48);
                            return;
                          }

                          goto LABEL_65;
                        }

                        goto LABEL_62;
                      }

LABEL_56:
                      __break(1u);
                      goto LABEL_57;
                    }

LABEL_55:
                    __break(1u);
                    goto LABEL_56;
                  }

LABEL_54:
                  __break(1u);
                  goto LABEL_55;
                }

LABEL_53:
                __break(1u);
                goto LABEL_54;
              }

LABEL_52:
              __break(1u);
              goto LABEL_53;
            }

LABEL_51:
            __break(1u);
            goto LABEL_52;
          }

LABEL_50:
          __break(1u);
          goto LABEL_51;
        }

LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      goto LABEL_47;
    }

    v8 = &v48;
    v50 = 0;
    v49 = 0u;
    v48 = 0u;
    v11 = (*(*v1 + 128))(&v43);
    v6 = v15;
    v4 = *v15;
    v16 = swift_isUniquelyReferenced_nonNull_native();
    *v6 = v4;
    if (v16)
    {
      if (v4[2])
      {
LABEL_14:
        outlined assign with take of IOSurfaceLike?(&v48, (v4 + 4));
        (v11)(&v43, 0);
        v17 = (*(*v5 + 560))(v42);
        v19 = v18;
        v43 = *v18;
        v21 = v18[2];
        v20 = v18[3];
        v22 = v18[1];
        v47 = *(v18 + 8);
        v45 = v21;
        v46 = v20;
        v44 = v22;
        outlined destroy of SILRenderer.CursorState(&v43);
        v23 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v23[2] = 2;
        v23[4] = 0;
        v23[5] = 0;
        *v19 = 4294967040;
        *(v19 + 1) = &outlined read-only object #0 of SILRenderer.CursorState.init();
        *(v19 + 4) = 1065353216;
        *(v19 + 24) = xmmword_262A9AF80;
        *(v19 + 20) = 0;
        *(v19 + 42) = v51;
        *(v19 + 23) = v52;
        v19[3] = xmmword_262A9AF70;
        *(v19 + 8) = v23;
        v17(v42, 0);

        return;
      }
    }

    else
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
      *v6 = v4;
      if (v4[2])
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SILRenderer.renderCursorIfNeeded()()
{
  v1 = type metadata accessor for Logger();
  v50 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v51 = &v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = Log.unsafeMutableAddressor();
  swift_beginAccess();
  v4 = *v3;
  v54 = 0;
  v55 = 0xE000000000000000;

  _StringGuts.grow(_:)(58);
  v5 = MEMORY[0x26672FCC0](0xD000000000000038, 0x8000000262A9F460);
  v6 = *(*v0 + 544);
  v6(v56, v5);
  outlined destroy of SILRenderer.CursorState(v56);
  if (v57)
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (v57)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x26672FCC0](v7, v8);

  (*(*v4 + 128))(4, v54, v55);

  v6(v58, v9);
  v10 = outlined destroy of SILRenderer.CursorState(v58);
  if (v59)
  {
    return;
  }

  v6(v60, v10);
  outlined destroy of SILRenderer.CursorState(v60);
  if ((v61 & 1) == 0)
  {
    v11 = v68;
    SILRenderer.preRenderCursors(manifest:)(v0[8]);
    if (v11)
    {
      return;
    }

    v68 = 0;
  }

  v49 = v1;
  swift_beginAccess();
  v12 = *(**v3 + 128);

  v12(4, 0xD00000000000002BLL, 0x8000000262A9F4A0);

  swift_beginAccess();
  v13 = *v3;
  v54 = 0;
  v55 = 0xE000000000000000;

  _StringGuts.grow(_:)(32);

  v54 = 0xD00000000000001ELL;
  v55 = 0x8000000262A9F4D0;
  v6(v62, v14);
  outlined destroy of SILRenderer.CursorState(v62);
  LODWORD(v52) = v62[0];
  lazy protocol witness table accessor for type UInt32 and conformance UInt32();
  v15 = String.init<A>(_:radix:uppercase:)();
  MEMORY[0x26672FCC0](v15);

  (*(*v13 + 128))(4, v54, v55);

  swift_beginAccess();
  v16 = *v3;
  v54 = 0;
  v55 = 0xE000000000000000;

  _StringGuts.grow(_:)(29);

  v54 = 0xD00000000000001BLL;
  v55 = 0x8000000262A9F4F0;
  v6(v63, v17);
  outlined destroy of SILRenderer.CursorState(v63);
  LODWORD(v52) = HIDWORD(v63[0]);
  v18 = String.init<A>(_:radix:uppercase:)();
  MEMORY[0x26672FCC0](v18);

  (*(*v16 + 128))(4, v54, v55);

  swift_beginAccess();
  v19 = *v3;
  v54 = 0;
  v55 = 0xE000000000000000;

  _StringGuts.grow(_:)(23);
  v20 = MEMORY[0x26672FCC0](0xD000000000000015, 0x8000000262A9F510);
  v6(v64, v20);
  outlined destroy of SILRenderer.CursorState(v64);
  Float.write<A>(to:)();
  (*(*v19 + 128))(4, v54, v55);

  swift_beginAccess();
  v21 = *v3;
  v54 = 0;
  v55 = 0xE000000000000000;

  _StringGuts.grow(_:)(28);

  v54 = 0xD00000000000001ALL;
  v55 = 0x8000000262A9F530;
  v6(v65, v22);
  outlined destroy of SILRenderer.CursorState(v65);
  *&v52 = v65[4];
  v23 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26672FCC0](v23);

  (*(*v21 + 128))(4, v54, v55);

  swift_beginAccess();
  v24 = *v3;
  v54 = 0;
  v55 = 0xE000000000000000;

  _StringGuts.grow(_:)(25);

  v54 = 0xD000000000000017;
  v55 = 0x8000000262A9F550;
  v6(v66, v25);
  outlined destroy of SILRenderer.CursorState(v66);
  *&v52 = v66[6];
  v26 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26672FCC0](v26);

  (*(*v24 + 128))(4, v54, v55);

  swift_beginAccess();
  v27 = *v3;
  v54 = 0;
  v55 = 0xE000000000000000;

  _StringGuts.grow(_:)(26);

  v54 = 0xD000000000000018;
  v55 = 0x8000000262A9F570;
  v6(v67, v28);
  outlined destroy of SILRenderer.CursorState(v67);
  *&v52 = v67[7];
  v29 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26672FCC0](v29);

  (*(*v27 + 128))(4, v54, v55);

  v31 = (*(*v0 + 560))(&v54);
  v32 = *(v30 + 56);
  *(v30 + 48) = v32;
  if (v32 == 1)
  {
    v33 = 0;
  }

  else
  {
    if (v32)
    {
LABEL_29:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return;
    }

    v33 = 1;
  }

  v34 = v49;
  *(v30 + 56) = v33;
  v35 = v31(&v54, 0);
  v36 = (*(*v0 + 256))(v35);
  if ((v36 & 0xC000000000000001) != 0)
  {
    v37 = MEMORY[0x266730000](3, v36);
  }

  else
  {
    if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) < 4uLL)
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v37 = *(v36 + 56);
  }

  v39 = (*(*v37 + 112))(v38);
  if (!*(v39 + 16))
  {
    __break(1u);
    goto LABEL_28;
  }

  outlined init with copy of SILBackend?(v39 + 32, &v52, &_s10SILManager13IOSurfaceLike_pSgMd);

  if (v53)
  {
    outlined init with take of SILFileHandle(&v52, &v54);
    SILRenderer.renderCursorToSurface(manifest:surface:)(v0[8], &v54);
    __swift_destroy_boxed_opaque_existential_1Tm(&v54);
  }

  else
  {
    outlined destroy of SILValidator.RegionState?(&v52, &_s10SILManager13IOSurfaceLike_pSgMd);
    v40 = SILLogger.unsafeMutableAddressor();
    v41 = v50;
    (*(v50 + 16))(v51, v40, v34);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = v34;
      v45 = swift_slowAlloc();
      *v45 = 134217984;
      *(v45 + 4) = 0;
      _os_log_impl(&dword_262A43000, v42, v43, "No cursor surface available for page ID %ld", v45, 0xCu);
      v46 = v45;
      v34 = v44;
      MEMORY[0x266730D70](v46, -1, -1);
    }

    (*(v41 + 8))(v51, v34);
    lazy protocol witness table accessor for type SILError and conformance SILError();
    swift_allocError();
    *v47 = 15;
    swift_willThrow();
  }
}

Swift::UInt64 __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SILRenderer.swapBegin()()
{
  v2 = v0;
  v3 = type metadata accessor for OSSignpostID();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v126 = v117 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v127 = v117 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v117 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v123 = v117 - v13;
  MEMORY[0x28223BE20](v12);
  v124 = v117 - v14;
  v136 = type metadata accessor for OSSignposter();
  v129 = *(v136 - 8);
  v15 = MEMORY[0x28223BE20](v136);
  v128 = v117 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = v117 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v122 = v117 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v125 = v117 - v23;
  v24 = (*v0 + 400);
  v25 = *v24;
  v26 = (*v24)(v22);
  if (v28 != 1)
  {
    v39 = outlined consume of (id: UInt64, synchronous: Bool, signpost: OSSignpostIntervalState?)?(v26, v27, v28);
    v40 = v25(v39);
    if (v42 != 1)
    {
      goto LABEL_36;
    }

    goto LABEL_50;
  }

  v120 = v24;
  v121 = v25;
  v29 = (*v0 + 424);
  v30 = *v29;
  v31 = v29;
  v32 = (*v29)(v26);
  v119 = v4;
  if (v32 < 3)
  {
    v33 = v1;
    goto LABEL_4;
  }

  v43 = v30();
  v44 = v43 != 0;
  v45 = v43 - 1;
  if (!v44)
  {
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v117[1] = v31;
  v117[0] = v3;
  v46 = (*v0 + 712);
  v47 = *v46;
  v48 = (*v46)(v45, 0, 0);
  v118 = v1;
  if (v1)
  {
    return v2;
  }

  v67 = v48;
  v68 = v30();
  if (v67)
  {
    v44 = v68 >= 2;
    v69 = v68 - 2;
    if (!v44)
    {
      goto LABEL_47;
    }

    (*(*v0 + 456))(v69);
    v70 = Log.unsafeMutableAddressor();
    swift_beginAccess();
    v71 = *(**v70 + 168);

    v73 = v71(v72);

    v33 = v118;
    if (v73)
    {
      v74 = SILSignpost.unsafeMutableAddressor();
      (*(v129 + 16))(v125, v74, v136);
      swift_retain_n();
      static OSSignpostID.exclusive.getter();
      v75 = OSSignposter.logHandle.getter();
      v76 = static os_signpost_type_t.event.getter();
      if (OS_os_log.signpostsEnabled.getter())
      {
        v77 = swift_slowAlloc();
        *v77 = 134218240;
        v78 = v30();
        v3 = v117[0];
        if (!v78)
        {
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
          goto LABEL_51;
        }

        *(v77 + 4) = v78 - 1;

        *(v77 + 12) = 2048;
        *(v77 + 14) = (*(*v2 + 448))(v79);

        v80 = v124;
        v81 = OSSignpostID.rawValue.getter();
        _os_signpost_emit_with_name_impl(&dword_262A43000, v75, v76, v81, "SIL SwapWait Passed", "SwapWait passed for %llu, can use surface for swap %llu", v77, 0x16u);
        MEMORY[0x266730D70](v77, -1, -1);
        v82 = v119;
      }

      else
      {

        v3 = v117[0];
        v82 = v119;
        v80 = v124;
      }

      goto LABEL_46;
    }

LABEL_38:
    v3 = v117[0];
    goto LABEL_4;
  }

  v83 = v118;
  v84 = v47(v68, 0, 0);
  if (v83)
  {
    return v2;
  }

  if ((v84 & 1) == 0)
  {
    v105 = SILSignpost.unsafeMutableAddressor();
    (*(v129 + 16))(v19, v105, v136);

    static OSSignpostID.exclusive.getter();
    v106 = OSSignposter.logHandle.getter();
    v107 = static os_signpost_type_t.event.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {
      v108 = v30;
      v109 = swift_slowAlloc();
      *v109 = 134217984;
      *(v109 + 4) = v108();

      v110 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&dword_262A43000, v106, v107, v110, "SIL SwapWait Failed", "SwapWait failed waiting for %llu", v109, 0xCu);
      v111 = v109;
      v30 = v108;
      MEMORY[0x266730D70](v111, -1, -1);
    }

    else
    {
    }

    (*(v119 + 8))(v11, v117[0]);
    (*(v129 + 8))(v19, v136);
    v112 = Log.unsafeMutableAddressor();
    swift_beginAccess();
    v113 = *v112;
    v134 = 0;
    v135 = 0xE000000000000000;

    _StringGuts.grow(_:)(30);

    v134 = 0xD00000000000001CLL;
    v135 = 0x8000000262A9F590;
    v130 = (v30)(v114);
    v115 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x26672FCC0](v115);

    (*(*v113 + 128))(4, v134, v135);

    lazy protocol witness table accessor for type SILError and conformance SILError();
    v2 = swift_allocError();
    *v116 = 19;
    swift_willThrow();
    return v2;
  }

  v33 = 0;
  v85 = v30();
  v44 = v85 != 0;
  v86 = v85 - 1;
  if (!v44)
  {
    goto LABEL_49;
  }

  (*(*v0 + 456))(v86);
  v87 = Log.unsafeMutableAddressor();
  swift_beginAccess();
  v88 = *(**v87 + 168);

  v90 = v88(v89);

  v91 = v122;
  v92 = v123;
  if ((v90 & 1) == 0)
  {
    goto LABEL_38;
  }

  v93 = v30;
  v94 = SILSignpost.unsafeMutableAddressor();
  (*(v129 + 16))(v91, v94, v136);
  swift_retain_n();
  static OSSignpostID.exclusive.getter();
  v75 = OSSignposter.logHandle.getter();
  LODWORD(v125) = static os_signpost_type_t.event.getter();
  v95 = OS_os_log.signpostsEnabled.getter();
  v96 = v91;
  v82 = v119;
  if (v95)
  {
    v97 = swift_slowAlloc();
    *v97 = 134218240;
    *(v97 + 4) = v93();

    *(v97 + 12) = 2048;
    *(v97 + 14) = (*(*v2 + 448))(v98);

    v80 = v92;
    v99 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_262A43000, v75, v125, v99, "SIL SwapWait Passed", "SwapWait passed for %llu, can use surface for swap %llu", v97, 0x16u);
    MEMORY[0x266730D70](v97, -1, -1);
  }

  else
  {

    v80 = v92;
  }

  v125 = v96;
  v3 = v117[0];
LABEL_46:

  (*(v82 + 8))(v80, v3);
  (*(v129 + 8))(v125, v136);
LABEL_4:
  v34 = v121;
  v35 = v3;
  outlined init with copy of SILBackend?(v2 + 24, v131, &_s10SILManager10SILBackend_pSgMd);
  v36 = v132;
  if (!v132)
  {
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v37 = v133;
  __swift_project_boxed_opaque_existential_1(v131, v132);
  v38 = (*(v37 + 24))(v36, v37);
  if (v33)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v131);
    return v2;
  }

  (*(*v2 + 408))(v38, 0, 0);
  __swift_destroy_boxed_opaque_existential_1Tm(v131);
  v49 = Log.unsafeMutableAddressor();
  swift_beginAccess();
  v50 = *(**v49 + 168);

  v52 = v50(v51);

  if ((v52 & 1) == 0)
  {
LABEL_35:
    v40 = (v34)(v53);
    if (v42 != 1)
    {
LABEL_36:
      v2 = v40;
      outlined consume of (id: UInt64, synchronous: Bool, signpost: OSSignpostIntervalState?)?(v40, v41, v42);
      return v2;
    }

    goto LABEL_52;
  }

  v54 = SILSignpost.unsafeMutableAddressor();
  (*(v129 + 16))(v128, v54, v136);
  static OSSignpostID.exclusive.getter();

  v55 = OSSignposter.logHandle.getter();
  v56 = static os_signpost_type_t.begin.getter();
  if ((OS_os_log.signpostsEnabled.getter() & 1) == 0)
  {

    v64 = v35;
    v65 = v127;
    goto LABEL_33;
  }

  v57 = swift_slowAlloc();
  v58 = v34;
  v59 = v57;
  *v57 = 134217984;
  v60 = v58();
  if (v62 != 1)
  {
    v63 = v60;
    v64 = v35;
    outlined consume of (id: UInt64, synchronous: Bool, signpost: OSSignpostIntervalState?)?(v60, v61, v62);
    *(v59 + 1) = v63;

    v65 = v127;
    v66 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_262A43000, v55, v56, v66, "Swap", "[SILMGR] Swap %llu Begin", v59, 0xCu);
    MEMORY[0x266730D70](v59, -1, -1);

    v34 = v121;
LABEL_33:
    v100 = v119;
    (*(v119 + 16))(v126, v65, v64);
    type metadata accessor for OSSignpostIntervalState();
    swift_allocObject();
    v101 = OSSignpostIntervalState.init(id:isOpen:)();
    (*(v100 + 8))(v65, v64);
    (*(v129 + 8))(v128, v136);
    v103 = (*(*v2 + 416))(v131);
    if (*(v102 + 16) == 1)
    {
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    *(v102 + 16) = v101;

    v53 = v103(v131, 0);
    goto LABEL_35;
  }

LABEL_54:

  __break(1u);
  return result;
}

Swift::UInt64 __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SILRenderer.swap(region_id:indicator_idx:position:zRotation:frame_number:opacity:glyphScale:)(Swift::Int region_id, Swift::Int indicator_idx, CGPoint position, SILManager::Rotation zRotation, Swift::UInt16 frame_number, Swift::Float opacity, Swift::Float glyphScale)
{
  v13 = v8;
  *&v9 = glyphScale;
  v15 = frame_number;
  v370 = zRotation;
  y = position.y;
  x = position.x;
  v380 = indicator_idx;
  v19 = type metadata accessor for OSSignpostID();
  v20 = *(v19 - 8);
  v372 = v19;
  v373 = v20;
  v21 = MEMORY[0x28223BE20](v19);
  v368 = &v341 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v375 = &v341 - v23;
  v24 = type metadata accessor for OSSignposter();
  v377 = *(v24 - 8);
  v378 = v24;
  v25 = MEMORY[0x28223BE20](v24);
  v369 = &v341 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v376 = &v341 - v27;
  v28 = type metadata accessor for Logger();
  v29 = *(v28 - 8);
  v30 = MEMORY[0x28223BE20](v28);
  v31 = MEMORY[0x28223BE20](v30);
  v32 = MEMORY[0x28223BE20](v31);
  v33 = MEMORY[0x28223BE20](v32);
  v34 = MEMORY[0x28223BE20](v33);
  v35 = MEMORY[0x28223BE20](v34);
  v37 = &v341 - v36;
  v38 = MEMORY[0x28223BE20](v35);
  v381 = (&v341 - v39);
  MEMORY[0x28223BE20](v38);
  v41 = MEMORY[0x28223BE20](&v341 - v40);
  v43 = &v341 - v42;
  *&v44 = COERCE_DOUBLE(MEMORY[0x28223BE20](v41));
  v51 = &v341 - v50;
  v382 = region_id;
  if (region_id >= 4)
  {
    v52 = SILLogger.unsafeMutableAddressor();
    (*(v29 + 16))(v51, v52, v28);
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 134217984;
      *(v55 + 4) = v382;
      _os_log_impl(&dword_262A43000, v53, v54, "Invalid region %ld", v55, 0xCu);
      MEMORY[0x266730D70](v55, -1, -1);
    }

    (*(v29 + 8))(v51, v28);
    lazy protocol witness table accessor for type SILError and conformance SILError();
    swift_allocError();
    *v56 = 1;
    return swift_willThrow();
  }

  v383 = v46;
  v384 = v45;
  v365 = *&v37;
  v366 = *&v44;
  v363 = v47;
  v364 = v49;
  v374 = v29;
  v362 = v48;
  v371 = v28;
  v367 = v15;
  v436 = v7;
  v58 = *SILManifest.manifest.unsafeMutableAddressor();
  if (!v58)
  {
LABEL_332:
    __break(1u);
    goto LABEL_333;
  }

  v59 = *((*MEMORY[0x277D85000] & *v58) + 0xA8);
  v60 = v58;
  v61 = v59(v380);
  if (v13)
  {

    return result;
  }

  v62 = v61;

  v63 = v367;
  if (*&v62[OBJC_IVAR____TtC10SILManager12SILAssetDesc_framesCount] <= v367)
  {
    v68 = SILLogger.unsafeMutableAddressor();
    v69 = v374;
    v70 = v371;
    (*(v374 + 16))(v43, v68, v371);
    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v74 = v63;
      v75 = v73;
      *v73 = 33554688;
      *(v73 + 4) = v74;
      _os_log_impl(&dword_262A43000, v71, v72, "Invalid frame ID %hu", v73, 6u);
      MEMORY[0x266730D70](v75, -1, -1);
    }

    (*(v69 + 8))(v43, v70);
    lazy protocol witness table accessor for type SILError and conformance SILError();
    swift_allocError();
    *v76 = 4;
    swift_willThrow();

    return result;
  }

  v64 = v62;
  v29 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v65 = (*v436 + 520);
  v66 = *v65;
  v67 = *(*(*v65)() + 280);
  v360 = v29;
  v67(&v412, v29, v382, v64, v63, x, y, opacity);
  v385 = v66;
  v386 = v65;
  v361 = 0;

  v349 = 24;
  v77 = v367;
  v28 = v66;
  region_id = MEMORY[0x277D85000];
  v350 = BYTE8(v412);
  v12 = v413;
  v10 = v414;
  v411 = v412;
  v358 = v415;
  v356 = v416;
  v357 = v417;
  v78 = v418;
  v11 = v419;
  y = (*((*MEMORY[0x277D85000] & *v64) + 0xF0))(v367);
  x = v79;
  v80 = *((*region_id & *v64) + 0xE0);
  v351 = ((*region_id & *v64) + 224);
  v352 = v80;
  v359 = v80(v77);
  v81 = *((*region_id & *v64) + 0xE8);
  v353 = (*region_id & *v64) + 232;
  v354 = *&v81;
  v355 = v81(v77);
  v82 = *region_id & *v64;
  v384 = v64;
  v383 = *(v82 + 168);
  v83 = v66();
  v84 = (*(*v83 + 192))();

  if (*(v84 + 16))
  {
    v85 = 0;
    v15 = 0;
    v12 = v12 + y;
    v10 = v10 + x;
    v28 = v388;
    v29 = &_s10SILManager12SILValidatorC11RegionStateVSgMd;
    do
    {
      v409[0] = *(v84 + v85 * 8 + 32);
      v86 = *(v84 + v85 * 8 + 48);
      v87 = *(v84 + v85 * 8 + 64);
      v88 = *(v84 + v85 * 8 + 80);
      v410 = *(v84 + v85 * 8 + 96);
      v409[2] = v87;
      v409[3] = v88;
      v409[1] = v86;
      region_id = *&v409[0];
      *v387 = *(v84 + v85 * 8 + 40);
      *&v387[16] = *(v84 + v85 * 8 + 56);
      *&v387[32] = *(v84 + v85 * 8 + 72);
      *&v387[48] = *(v84 + v85 * 8 + 88);
      outlined init with copy of SILBackend?(v409, v388, &_s10SILManager12SILValidatorC11RegionStateVSgMd);

      if (region_id)
      {
        *&v388[0] = region_id;
        *(v388 + 8) = *v387;
        *(&v388[1] + 8) = *&v387[16];
        *(&v388[2] + 8) = *&v387[32];
        *(&v388[3] + 8) = *&v387[48];
        v89 = region_id;
        v90 = outlined destroy of SILValidator.RegionState?(v388, &_s10SILManager12SILValidatorC11RegionStateVSgMd);
        region_id = (*((*MEMORY[0x277D85000] & *v89) + 0xA8))(v90);

        v7 = v384;
        v91 = v383();
        if (region_id == v91)
        {
          region_id = v385();
          v7 = (*(*region_id + 192))();

          if (v15 >= v7[2])
          {
            __break(1u);
LABEL_193:
            __break(1u);
            goto LABEL_194;
          }

          v388[0] = *&v7[v85 + 4];
          v93 = *&v7[v85 + 6];
          v94 = *&v7[v85 + 8];
          v95 = *&v7[v85 + 10];
          *&v388[4] = v7[v85 + 12];
          v388[2] = v94;
          v388[3] = v95;
          v388[1] = v93;
          region_id = *&v388[0];
          v401[0] = *&v7[v85 + 5];
          v28 = v401;
          *(v401 + 12) = *(&v7[v85 + 6] + 4);
          v379.n128_u32[0] = WORD2(v94);
          v96 = *(&v7[v85 + 8] + 6);
          v97 = *(&v7[v85 + 10] + 6);
          LOWORD(v406) = HIWORD(v7[v85 + 12]);
          v404 = v96;
          v405 = v97;
          outlined init with copy of SILBackend?(v388, v387, &_s10SILManager12SILValidatorC11RegionStateVSgMd);

          if (region_id)
          {
            goto LABEL_24;
          }

          *v387 = 0;
          *&v387[8] = v401[0];
          *&v387[20] = *(v401 + 12);
          *&v387[36] = v379.n128_u16[0];
          *&v387[38] = v404;
          *&v387[54] = v405;
          *&v387[70] = v406;
          v91 = outlined destroy of SILValidator.RegionState?(v387, &_s10SILManager12SILValidatorC11RegionStateVSgMd);
          v28 = v388;
        }
      }

      else
      {
        *&v388[0] = 0;
        *(v388 + 8) = *v387;
        *(&v388[1] + 8) = *&v387[16];
        *(&v388[2] + 8) = *&v387[32];
        *(&v388[3] + 8) = *&v387[48];
        v98 = outlined destroy of SILValidator.RegionState?(v388, &_s10SILManager12SILValidatorC11RegionStateVSgMd);
        v7 = v384;
        v91 = (v383)(v98);
      }

      if (v15 == 3)
      {
        goto LABEL_52;
      }

      region_id = (v385)(v91);
      v84 = (*(*region_id + 192))();

      ++v15;
      v85 += 9;
    }

    while (v15 < *(v84 + 16));
  }

  __break(1u);
LABEL_24:
  *v387 = region_id;
  *&v387[8] = v401[0];
  *&v387[20] = *(v28 + 12);
  v99 = v379.n128_u32[0];
  *&v387[36] = v379.n128_u16[0];
  *&v387[38] = v404;
  *&v387[54] = v405;
  *&v387[70] = v406;
  outlined destroy of SILValidator.RegionState?(v387, &_s10SILManager12SILValidatorC11RegionStateVSgMd);
  region_id = v384;
  v100 = v352(v99);
  if ((v359 & 1) != (v100 & 1))
  {
    v101 = v100;
    v102 = Log.unsafeMutableAddressor();
    swift_beginAccess();
    v103 = *v102;
    *&v389 = 0;
    *(&v389 + 1) = 0xE000000000000000;

    _StringGuts.grow(_:)(56);
    MEMORY[0x26672FCC0](0x6F74616369646E49, 0xEA00000000002072);
    v104 = *(region_id + OBJC_IVAR____TtC10SILManager12SILAssetDesc_name);
    v105 = *(region_id + OBJC_IVAR____TtC10SILManager12SILAssetDesc_name + 8);

    MEMORY[0x26672FCC0](v104, v105);

    MEMORY[0x26672FCC0](0xD000000000000012, 0x8000000262A9F610);
    if (v101)
    {
      v106 = 0x6572756365736E49;
    }

    else
    {
      v106 = 0x657275636553;
    }

    if (v101)
    {
      v107 = 0xE800000000000000;
    }

    else
    {
      v107 = 0xE600000000000000;
    }

    MEMORY[0x26672FCC0](v106, v107);

    MEMORY[0x26672FCC0](0x20656D61724620, 0xE700000000000000);
    LOWORD(v399) = v379.n128_u16[0];
    v29 = MEMORY[0x277D84C58];
    v108 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x26672FCC0](v108);

    MEMORY[0x26672FCC0](544175136, 0xE400000000000000);
    if (v359)
    {
      v109 = 0x6572756365736E49;
    }

    else
    {
      v109 = 0x657275636553;
    }

    if (v359)
    {
      v110 = 0xE800000000000000;
    }

    else
    {
      v110 = 0xE600000000000000;
    }

    region_id = v384;
    MEMORY[0x26672FCC0](v109, v110);

    MEMORY[0x26672FCC0](0x20656D61724620, 0xE700000000000000);
    LOWORD(v399) = v367;
    v111 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x26672FCC0](v111);

    (*(*v103 + 120))(7, v389, *(&v389 + 1));
  }

  v7 = region_id;
  v112 = (*&v354)(v379.n128_u32[0]);
  if ((v355 & 1) != (v112 & 1))
  {
    v113 = v112;
    v114 = Log.unsafeMutableAddressor();
    swift_beginAccess();
    v115 = *v114;
    *&v389 = 0;
    *(&v389 + 1) = 0xE000000000000000;

    _StringGuts.grow(_:)(59);
    MEMORY[0x26672FCC0](0x6F74616369646E49, 0xEA00000000002072);
    v116 = *(region_id + OBJC_IVAR____TtC10SILManager12SILAssetDesc_name);
    v117 = *(region_id + OBJC_IVAR____TtC10SILManager12SILAssetDesc_name + 8);

    MEMORY[0x26672FCC0](v116, v117);

    MEMORY[0x26672FCC0](32, 0xE100000000000000);
    *&v399 = v380;
    v118 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x26672FCC0](v118);

    MEMORY[0x26672FCC0](0xD000000000000012, 0x8000000262A9F610);
    if (v113)
    {
      v119 = 0x646579616C6544;
    }

    else
    {
      v119 = 0x616C65642D6E6F4ELL;
    }

    if (v113)
    {
      v120 = 0xE700000000000000;
    }

    else
    {
      v120 = 0xEB00000000646579;
    }

    MEMORY[0x26672FCC0](v119, v120);

    MEMORY[0x26672FCC0](0x20656D61724620, 0xE700000000000000);
    LOWORD(v399) = v379.n128_u16[0];
    v29 = MEMORY[0x277D84CA8];
    v121 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x26672FCC0](v121);

    MEMORY[0x26672FCC0](544175136, 0xE400000000000000);
    if (v355)
    {
      v122 = 0x646579616C6544;
    }

    else
    {
      v122 = 0x616C65642D6E6F4ELL;
    }

    if (v355)
    {
      v123 = 0xE700000000000000;
    }

    else
    {
      v123 = 0xEB00000000646579;
    }

    MEMORY[0x26672FCC0](v122, v123);

    MEMORY[0x26672FCC0](0x20656D61724620, 0xE700000000000000);
    LOWORD(v399) = v367;
    v124 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x26672FCC0](v124);

    region_id = *(&v389 + 1);
    v7 = v115;
    (*(*v115 + 120))(7, v389, *(&v389 + 1));
  }

LABEL_52:
  v51 = v384;
  v28 = v382;
  v15 = v436;
  if (v359)
  {
    outlined init with copy of SILBackend?((v436 + 3), v388, &_s10SILManager10SILBackend_pSgMd);
    v13 = *(&v388[1] + 1);
    if (!*(&v388[1] + 1))
    {
      goto LABEL_339;
    }

    v125 = *&v388[2];
    __swift_project_boxed_opaque_existential_1(v388, *(&v388[1] + 1));
    (*(v125 + 64))(v28, 0, 0, 2, v13, v125);
    __swift_destroy_boxed_opaque_existential_1Tm(v388);
  }

  LODWORD(x) = (*(*v15 + 736))(v360);
  if (*&x <= 0.001 || *(v51 + OBJC_IVAR____TtC10SILManager12SILAssetDesc_flipbook))
  {
    v29 = *(v51 + OBJC_IVAR____TtC10SILManager12SILAssetDesc_extent) & ~(*(v51 + OBJC_IVAR____TtC10SILManager12SILAssetDesc_extent) >> 63);
  }

  else if (*(*(v15 + 72) + OBJC_IVAR____TtC10SILManager12SILAssetDesc_extent) <= *(v51 + OBJC_IVAR____TtC10SILManager12SILAssetDesc_extent))
  {
    v29 = *(v51 + OBJC_IVAR____TtC10SILManager12SILAssetDesc_extent);
  }

  else
  {
    v29 = *(*(v15 + 72) + OBJC_IVAR____TtC10SILManager12SILAssetDesc_extent);
  }

  v126 = v436;
  v127 = v361;
  v128 = (*(*v436 + 696))();
  v361 = v127;
  if (v127)
  {

    v388[0] = v411;
    *&v388[1] = v12;
    *(&v388[1] + 1) = v10;
    *&v388[2] = v358;
    *(&v388[2] + 1) = v356;
    *&v388[3] = v357;
    *(&v388[3] + 1) = v78;
    *&v388[4] = v11;
    return outlined destroy of SILValidator.RegionState(v388);
  }

  v129 = v128;
  v130 = (*v126 + 256);
  region_id = *v130;
  v43 = v130;
  v131 = (*v130)();
  if ((v131 & 0xC000000000000001) != 0)
  {
    v383 = MEMORY[0x266730000](v28, v131);
  }

  else
  {
    v133 = *((v131 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v133 <= v28)
    {
      __break(1u);
      goto LABEL_228;
    }

    v383 = *(v131 + 8 * v28 + 32);
  }

  v134 = v436;
  v135 = *(*v436 + 600);
  v360 = v129;
  v136 = v135(v28, v129);
  if (v137)
  {

    v138 = SILSignpost.unsafeMutableAddressor();
    (*(v377 + 16))(v376, v138, v378);

    v139 = v375;
    static OSSignpostID.exclusive.getter();
    v140 = OSSignposter.logHandle.getter();
    v141 = static os_signpost_type_t.event.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {
      v142 = swift_slowAlloc();
      *v142 = 134218496;
      *(v142 + 4) = v28;
      *(v142 + 12) = 2048;
      *(v142 + 14) = v360;
      *(v142 + 22) = 2048;
      *(v142 + 24) = (*(*v134 + 448))();

      v143 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&dword_262A43000, v140, v141, v143, "SIL SurfaceNotFound", "reg: %ld swap %llu offGlassSwapID %llu", v142, 0x20u);
      v144 = v142;
      v139 = v375;
      MEMORY[0x266730D70](v144, -1, -1);
    }

    else
    {
    }

    v147 = v383;
    v148 = v372;

    (*(v373 + 8))(v139, v148);
    (*(v377 + 8))(v376, v378);
    v149 = SILLogger.unsafeMutableAddressor();
    v150 = *(v374 + 16);
    v385 = (v374 + 16);
    v386 = v149;
    v380 = v150;
    (v150)(*&v366);

    v151 = v134;
    v152 = Logger.logObject.getter();
    v153 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v152, v153))
    {
      v154 = swift_slowAlloc();
      v155 = v28;
      v156 = v154;
      *v154 = 134218496;
      *(v154 + 4) = v155;
      *(v154 + 12) = 2048;
      *(v154 + 14) = v360;
      *(v154 + 22) = 2048;
      *(v154 + 24) = (*(*v151 + 448))();

      _os_log_impl(&dword_262A43000, v152, v153, "swapBegin succeeded, but surface not found for region %ld swap %llu offGlassSwapID %llu", v156, 0x20u);
      MEMORY[0x266730D70](v156, -1, -1);
    }

    else
    {
    }

    v157 = v381;
    v158 = v374 + 8;
    v15 = v371;
    v436 = *(v374 + 8);
    v159 = (v436)(*&v366, v371);
    v160 = 0;
    region_id = 0;
    v159.n128_u64[0] = 134218496;
    v379 = v159;
    v374 = v158;
    do
    {
      v380(v157, v386, v15);
      swift_retain_n();
      v161 = Logger.logObject.getter();
      v28 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v161, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = v379.n128_u32[0];
        *(v29 + 4) = v382;
        *(v29 + 12) = 2048;
        *(v29 + 14) = region_id;
        *(v29 + 22) = 2048;
        v92 = (*(*v147 + 160))();
        if (region_id >= *(v92 + 16))
        {
          goto LABEL_193;
        }

        v162 = *(v92 + v160 + 80);
        v163 = *(v92 + v160 + 88);

        if (v163)
        {
          v164 = -1;
        }

        else
        {
          v164 = v162;
        }

        v147 = v383;
        *(v29 + 24) = v164;

        _os_log_impl(&dword_262A43000, v161, v28, "region[%ld].page[%ld].swapID = %llu", v29, 0x20u);
        MEMORY[0x266730D70](v29, -1, -1);

        v15 = v371;
      }

      else
      {
      }

      v157 = v381;
      (v436)(v381, v15);
      v160 += 64;
      ++region_id;
    }

    while (v160 != 192);

    v388[0] = v411;
    *&v388[1] = v12;
    *(&v388[1] + 1) = v10;
    *&v388[2] = v358;
    *(&v388[2] + 1) = v356;
    *&v388[3] = v357;
    *(&v388[3] + 1) = v78;
    *&v388[4] = v11;
    outlined destroy of SILValidator.RegionState(v388);
    return v360;
  }

  v13 = v136;
  v145 = (region_id)();
  v7 = v145;
  if ((v145 & 0xC000000000000001) != 0)
  {
    region_id = MEMORY[0x266730000](v28, v145);
    v15 = v367;
  }

  else
  {
    v15 = v367;
    if (*((v145 & 0xFFFFFFFFFFFFFF8) + 0x10) <= v28)
    {
LABEL_304:
      __break(1u);
      goto LABEL_305;
    }

    region_id = *(v145 + 8 * v28 + 32);
  }

  y = v29;

  v7 = region_id;
  (*(*region_id + 144))(v13);

  if (v29 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_304;
  }

  v7 = v436;
  v29 = v371;
  if (y >= 9.22337204e18)
  {
LABEL_305:
    __break(1u);
LABEL_306:
    __break(1u);
LABEL_307:
    __break(1u);
    goto LABEL_308;
  }

  v146 = v361;
  (*(*v436 + 608))(v28, v360, y);
  v28 = v146;
  if (v146)
  {

    v388[0] = v411;
    *&v388[1] = v12;
    *(&v388[1] + 1) = v10;
    *&v388[2] = v358;
    *(&v388[2] + 1) = v356;
    *&v388[3] = v357;
    *(&v388[3] + 1) = v78;
    *&v388[4] = v11;
    return outlined destroy of SILValidator.RegionState(v388);
  }

  v165 = *(v51 + OBJC_IVAR____TtC10SILManager12SILAssetDesc_framesBuffer);

  v166 = (v165 + 28 * v15);
  v428[0] = *v166;
  *(v428 + 12) = *(v166 + 12);
  v7 = v383;
  v13 = (*(*v383 + 136))();
  v167 = (*v7 + 112);
  v351 = *v167;
  v348 = v167;
  v168 = v351();
  if (v13 < 0)
  {
LABEL_308:
    __break(1u);
    goto LABEL_309;
  }

  v7 = v168;
  if (v13 >= *(v168 + 16))
  {
LABEL_309:
    __break(1u);
LABEL_310:
    __break(1u);
    goto LABEL_311;
  }

  *&v376 = v10;
  v353 = v13;
  outlined init with copy of SILBackend?(v168 + 40 * v13 + 32, v388, &_s10SILManager13IOSurfaceLike_pSgMd);
  if (!*(&v388[1] + 1))
  {
LABEL_375:
    __break(1u);
LABEL_376:
    __break(1u);
LABEL_377:
    __break(1u);
LABEL_378:
    __break(1u);
LABEL_379:
    __break(1u);
    goto LABEL_380;
  }

  region_id = *(&v388[1] + 1);
  v169 = *&v388[2];
  v7 = __swift_project_boxed_opaque_existential_1(v388, *(&v388[1] + 1));
  v13 = (*(v169 + 72))(0, region_id, v169);
  v43 = (*(v169 + 64))(0, region_id, v169);
  __swift_destroy_boxed_opaque_existential_1Tm(v388);
  y = y * 0.5;
  v10 = round(v12 - y);
  if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_310;
  }

  if (v10 <= -9.22337204e18)
  {
LABEL_311:
    __break(1u);
    goto LABEL_312;
  }

  v379.n128_f64[0] = v12;
  if (v10 >= 9.22337204e18)
  {
LABEL_312:
    __break(1u);
    goto LABEL_313;
  }

  v12 = round(*&v376 - y);
  v15 = v10 & (v10 >> 63);
  v170 = swift_allocObject();
  v381 = v170;
  *(v170 + 16) = v15;
  region_id = v170 + 16;
  if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_313:
    __break(1u);
    goto LABEL_314;
  }

  v361 = v78;
  v7 = v436;
  if (v12 <= -9.22337204e18)
  {
LABEL_314:
    __break(1u);
    goto LABEL_315;
  }

  LODWORD(v352) = LODWORD(x);
  v15 = v381;
  if (v12 >= 9.22337204e18)
  {
LABEL_315:
    __break(1u);
LABEL_316:
    __break(1u);
    goto LABEL_317;
  }

  v171 = v11;
  v11 = v13;
  x = v43;
  v381[3] = v12 & (v12 >> 63);
  if (v10 < 0.0)
  {
    v10 = 0.0;
  }

  if (v12 < 0.0)
  {
    v12 = 0.0;
  }

  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  *(v13 + 24) = v12;
  v172 = (*(*v7 + 248))();
  v366 = v11;
  v354 = v43;
  v173 = v172 - v11 + -1.0;
  v174 = HIDWORD(v172) - x + -1.0;
  v347 = v13 + 16;
  v175 = *(v13 + 16);
  v176 = *(v13 + 24);
  *&v177 = v173;
  v375 = v13;
  if (v173 >= v175 && (*&v177 = v175, v174 >= v176))
  {
    v181 = *region_id;
    v10 = *&v376;
    v12 = v379.n128_f64[0];
    v43 = v386;
    x = v366;
    v11 = v171;
    v180 = v361;
  }

  else
  {
    v178 = v175 - v173;
    if (v178 < *(v15 + 16))
    {
      v178 = *(v15 + 16);
    }

    v179 = *(v15 + 24);
    if (v176 - v174 >= v179)
    {
      v179 = v176 - v174;
    }

    if (v174 < v176)
    {
      v176 = HIDWORD(v172) - x + -1.0;
    }

    *(v13 + 16) = v177;
    *(v13 + 24) = v176;
    v10 = *&v376;
    v12 = v379.n128_f64[0];
    v43 = v386;
    if (v178 <= -9.22337204e18)
    {
LABEL_323:
      __break(1u);
      goto LABEL_324;
    }

    x = v366;
    if (v178 >= 9.22337204e18)
    {
LABEL_324:
      __break(1u);
LABEL_325:
      __break(1u);
      goto LABEL_326;
    }

    v11 = v171;
    v180 = v361;
    if ((*&v178 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v179 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_325;
    }

    if (v179 <= -9.22337204e18)
    {
LABEL_326:
      __break(1u);
      goto LABEL_327;
    }

    if (v179 >= 9.22337204e18)
    {
LABEL_327:
      __break(1u);
LABEL_328:
      __break(1u);
      goto LABEL_329;
    }

    v181 = v178;
    *(v15 + 16) = v178;
    *(v15 + 24) = v179;
    v175 = *&v177;
  }

  if (y <= -9.22337204e18)
  {
    goto LABEL_316;
  }

  if (y >= 9.22337204e18)
  {
LABEL_317:
    __break(1u);
    goto LABEL_318;
  }

  v182 = y;
  if (__OFADD__(v181, y))
  {
LABEL_318:
    __break(1u);
    goto LABEL_319;
  }

  if ((*&y & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_319:
    __break(1u);
    goto LABEL_320;
  }

  if (x <= -9.22337204e18)
  {
LABEL_320:
    __break(1u);
LABEL_321:
    __break(1u);
LABEL_322:
    __break(1u);
    goto LABEL_323;
  }

  if (x >= 9.22337204e18)
  {
    goto LABEL_321;
  }

  if (v181 + y > x)
  {
    goto LABEL_131;
  }

  v183 = *(v15 + 24);
  if (__OFADD__(v183, v182))
  {
    goto LABEL_328;
  }

  if (v354 <= -9.22337204e18)
  {
LABEL_329:
    __break(1u);
    goto LABEL_330;
  }

  if (v354 >= 9.22337204e18)
  {
LABEL_330:
    __break(1u);
LABEL_331:
    __break(1u);
    goto LABEL_332;
  }

  if (v183 + v182 > v354)
  {
    goto LABEL_131;
  }

  v189 = __OFSUB__(0, v182);
  v190 = -v182;
  if (v189)
  {
    goto LABEL_331;
  }

  if (v181 < v190 || v183 < v190)
  {
LABEL_131:
    v184 = SILLogger.unsafeMutableAddressor();
    (*(v374 + 16))(COERCE_DOUBLE(*&v365), v184, v29);
    swift_retain_n();
    v185 = Logger.logObject.getter();
    v186 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v185, v186))
    {
      v187 = swift_slowAlloc();
      *v187 = 134218240;
      swift_beginAccess();
      *(v187 + 4) = v381[2];

      *(v187 + 12) = 2048;
      *(v187 + 14) = v381[3];

      _os_log_impl(&dword_262A43000, v185, v186, "Invalid blit offset (%ld, %ld)", v187, 0x16u);
      MEMORY[0x266730D70](v187, -1, -1);
    }

    else
    {
    }

    (*(v374 + 8))(COERCE_DOUBLE(*&v365), v29);
    lazy protocol witness table accessor for type SILError and conformance SILError();
    swift_allocError();
    *v188 = 18;
    swift_willThrow();

    v388[0] = v411;
    *&v388[1] = v12;
    *(&v388[1] + 1) = v10;
    *&v388[2] = v358;
    *(&v388[2] + 1) = v356;
    *&v388[3] = v357;
    *(&v388[3] + 1) = v180;
    *&v388[4] = v11;
    outlined destroy of SILValidator.RegionState(v388);
  }

  v15 = 0;
  v365 = v175;
  v11 = v175 + x;
  v356 = v176 + v354;
  v357 = v176;
  v346 = (v374 + 16);
  v374 += 8;
  v13 = 32;
  *&v177 = 134219010;
  v345 = v177;
  region_id = 32;
  do
  {
    if (v382 != v15)
    {
      v361 = v28;
      v29 = v43;
      v43 = v436;
      v28 = v385;
      v51 = v385();
      v7 = (*(*v51 + 192))();

      if (v15 >= v7[2])
      {
        goto LABEL_306;
      }

      v404 = *(v7 + region_id);
      v191 = *(v7 + region_id + 16);
      v192 = *(v7 + region_id + 32);
      v193 = *(v7 + region_id + 48);
      v408 = *(v7 + region_id + 64);
      v406 = v192;
      v407 = v193;
      v405 = v191;
      outlined init with copy of SILBackend?(&v404, v388, &_s10SILManager12SILValidatorC11RegionStateVSgMd);

      v7 = (v28)(v194);
      v51 = (*(*v7 + 168))(v7);

      if (v15 >= *(v51 + 16))
      {
        goto LABEL_307;
      }

      v43 = v29;
      v195 = *(v51 + v13);

      v28 = v371;
      if (v195 == 1)
      {
        v51 = (v385)(v196);
        v7 = (*(*v51 + 168))();

        if (v15 >= v7[2])
        {
          goto LABEL_322;
        }

        v388[0] = *(v7 + v13);
        v197 = *(v7 + v13 + 16);
        v198 = *(v7 + v13 + 32);
        v199 = *(v7 + v13 + 64);
        v388[3] = *(v7 + v13 + 48);
        v388[4] = v199;
        v388[1] = v197;
        v388[2] = v198;
        outlined init with copy of SILBackend?(v388, v387, &_sSb5dirty_10SILManager12SILValidatorC11RegionStateVSgtMd);

        outlined destroy of SILValidator.RegionState?(&v404, &_s10SILManager12SILValidatorC11RegionStateVSgMd);
        v200 = *(&v388[1] + 8);
        v401[2] = *(&v388[2] + 8);
        v402 = *(&v388[3] + 8);
        v403 = *(&v388[4] + 1);
        v201 = *(v388 + 8);
      }

      else
      {
        v401[2] = v406;
        v402 = v407;
        v403 = v408;
        v201 = v404;
        v200 = v405;
      }

      v401[0] = v201;
      v401[1] = v200;
      v202 = v201;
      v399 = *(v401 + 8);
      v400 = *(&v401[1] + 8);
      if (!v201)
      {
        goto LABEL_141;
      }

      y = *(&v401[2] + 1);
      v203 = *(&v402 + 1);
      if (v365 >= *(&v401[2] + 1) + *(&v402 + 1))
      {
        outlined destroy of SILValidator.RegionState?(v401, &_s10SILManager12SILValidatorC11RegionStateVSgMd);
LABEL_141:
        v12 = v379.n128_f64[0];
        v28 = v361;
        goto LABEL_142;
      }

      v204 = v402;
      v205 = v403;
      if (v357 >= *&v402 + v403 || *(&v401[2] + 1) >= v11 || *&v402 >= v356)
      {
        outlined destroy of SILValidator.RegionState?(v401, &_s10SILManager12SILValidatorC11RegionStateVSgMd);
        v10 = *&v376;
        goto LABEL_141;
      }

      if (v15 <= v382)
      {
        v388[2] = v401[2];
        v388[3] = v402;
        *&v388[4] = v403;
        v388[0] = v401[0];
        v388[1] = v401[1];
        v325 = outlined init with copy of SILValidator.RegionState(v388, v387);
        v326 = (v385)(v325);
        v327 = (*(*v326 + 144))();

        if (v327)
        {
          v430 = v399;
          v431 = v400;
          v429 = v202;
          v432 = y;
          v433 = v204;
          v434 = v203;
          v435 = v205;
          *&v387[32] = v401[2];
          *&v387[48] = v402;
          *&v387[64] = v403;
          *v387 = v401[0];
          *&v387[16] = v401[1];
          outlined init with copy of SILValidator.RegionState(v387, &v389);
          v328 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
          (*(*v327 + 136))(v382, &v429, v360, 21, v328);
          outlined destroy of SILValidator.RegionState?(v401, &_s10SILManager12SILValidatorC11RegionStateVSgMd);
        }

        v329 = SILLogger.unsafeMutableAddressor();
        (*v346)(v362, v329, v371);
        *&v387[32] = v401[2];
        *&v387[48] = v402;
        *&v387[64] = v403;
        *v387 = v401[0];
        *&v387[16] = v401[1];
        outlined init with copy of SILValidator.RegionState(v387, &v389);
        v330 = Logger.logObject.getter();
        v331 = static os_log_type_t.error.getter();
        outlined destroy of SILValidator.RegionState?(v401, &_s10SILManager12SILValidatorC11RegionStateVSgMd);
        if (os_log_type_enabled(v330, v331))
        {
          v332 = swift_slowAlloc();
          v333 = swift_slowAlloc();
          *&v389 = v333;
          *v332 = 134218754;
          *(v332 + 4) = v382;
          *(v332 + 12) = 2080;
          v334 = CGRect.shortDescription.getter();
          v336 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v334, v335, &v389);

          *(v332 + 14) = v336;
          *(v332 + 22) = 2080;
          v337 = CGRect.shortDescription.getter();
          v339 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v337, v338, &v389);

          *(v332 + 24) = v339;
          *(v332 + 32) = 2048;
          *(v332 + 34) = v15;
          _os_log_impl(&dword_262A43000, v330, v331, "Swap region %ld at %s overlaps with swap %s region %ld.", v332, 0x2Au);
          swift_arrayDestroy();
          MEMORY[0x266730D70](v333, -1, -1);
          MEMORY[0x266730D70](v332, -1, -1);
        }

        (*v374)(v362, v371);
        lazy protocol witness table accessor for type SILValidator.SILValidationErrors and conformance SILValidator.SILValidationErrors();
        swift_allocError();
        *v340 = v15;
        swift_willThrow();
        outlined destroy of SILValidator.RegionState?(v401, &_s10SILManager12SILValidatorC11RegionStateVSgMd);

        outlined destroy of SILValidator.RegionState?(v401, &_s10SILManager12SILValidatorC11RegionStateVSgMd);
        v389 = v411;
        v390 = v379.n128_f64[0];
        v391 = v376;
        v392 = v358;
        v393 = v365;
        v394 = v357;
        v395 = v366;
        goto LABEL_300;
      }

      *&v387[32] = v401[2];
      *&v387[48] = v402;
      *&v387[64] = v403;
      *v387 = v401[0];
      *&v387[16] = v401[1];
      outlined init with copy of SILValidator.RegionState(v387, &v389);
      v206 = SILLogger.unsafeMutableAddressor();
      v207 = v364;
      (*v346)(v364, v206, v28);
      v388[2] = v401[2];
      v388[3] = v402;
      *&v388[4] = v403;
      v388[0] = v401[0];
      v388[1] = v401[1];
      outlined init with copy of SILValidator.RegionState(v388, &v389);
      v208 = Logger.logObject.getter();
      v209 = static os_log_type_t.error.getter();
      outlined destroy of SILValidator.RegionState?(v401, &_s10SILManager12SILValidatorC11RegionStateVSgMd);
      if (os_log_type_enabled(v208, v209))
      {
        v210 = swift_slowAlloc();
        v343 = v209;
        v211 = v210;
        v344 = swift_slowAlloc();
        *&v389 = v344;
        *v211 = v345;
        *(v211 + 4) = v382;
        *(v211 + 12) = 2080;
        v212 = CGRect.shortDescription.getter();
        v342 = v208;
        v341 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v212, v213, &v389);

        *(v211 + 14) = v341;
        *(v211 + 22) = 2080;
        v214 = CGRect.shortDescription.getter();
        v341 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v214, v215, &v389);

        v216 = v342;
        *(v211 + 24) = v341;
        *(v211 + 32) = 2048;
        *(v211 + 34) = v15;
        *(v211 + 42) = 2048;
        *(v211 + 44) = v15;
        _os_log_impl(&dword_262A43000, v216, v343, "Swap region %ld at %s overlapping %s region %ld. Region %ld will be disabled", v211, 0x34u);
        v217 = v344;
        swift_arrayDestroy();
        MEMORY[0x266730D70](v217, -1, -1);
        MEMORY[0x266730D70](v211, -1, -1);

        (*v374)(v364, v28);
      }

      else
      {

        (*v374)(v207, v28);
      }

      v10 = *&v376;
      v12 = v379.n128_f64[0];
      v218 = v361;
      (*(*v436 + 720))((1 << v15), 0);
      v28 = v218;
      if (v218)
      {
        outlined destroy of SILValidator.RegionState?(v401, &_s10SILManager12SILValidatorC11RegionStateVSgMd);

        outlined destroy of SILValidator.RegionState?(v401, &_s10SILManager12SILValidatorC11RegionStateVSgMd);
        v389 = v411;
        v390 = v12;
        v391 = *&v10;
        v392 = v358;
        v393 = v365;
        v394 = v357;
        v395 = x;
LABEL_300:
        v396 = v354;
        v279 = &v389;
        goto LABEL_301;
      }

      outlined destroy of SILValidator.RegionState?(v401, &_s10SILManager12SILValidatorC11RegionStateVSgMd);
      outlined destroy of SILValidator.RegionState?(v401, &_s10SILManager12SILValidatorC11RegionStateVSgMd);
    }

LABEL_142:
    ++v15;
    region_id += 72;
    v13 += 80;
  }

  while (v15 != 4);
  v361 = v28;
  v219 = Log.unsafeMutableAddressor();
  swift_beginAccess();
  v220 = *v219;
  *&v388[0] = 0;
  *(&v388[0] + 1) = 0xE000000000000000;

  _StringGuts.grow(_:)(140);
  MEMORY[0x26672FCC0](0x6765722070617753, 0xEC000000206E6F69);
  *v387 = v382;
  v221 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26672FCC0](v221);

  MEMORY[0x26672FCC0](0x74616369646E6920, 0xEB0000000020726FLL);
  *v387 = v380;
  v222 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26672FCC0](v222);

  MEMORY[0x26672FCC0](0x2820746120, 0xE500000000000000);
  v29 = v375;
  v223 = Double.description.getter();
  MEMORY[0x26672FCC0](v223);

  MEMORY[0x26672FCC0](43, 0xE100000000000000);
  v224 = v381;
  *v387 = v381[2];
  v225 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26672FCC0](v225);

  MEMORY[0x26672FCC0](8236, 0xE200000000000000);
  v226 = Double.description.getter();
  MEMORY[0x26672FCC0](v226);

  MEMORY[0x26672FCC0](43, 0xE100000000000000);
  *v387 = v224[3];
  v227 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26672FCC0](v227);

  MEMORY[0x26672FCC0](0x20746F722029, 0xE600000000000000);
  v387[0] = v370;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x26672FCC0](0x20656D61726620, 0xE700000000000000);
  *v387 = v367;
  v228 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26672FCC0](v228);

  MEMORY[0x26672FCC0](0x7974696361706F20, 0xE900000000000020);
  Float.write<A>(to:)();
  MEMORY[0x26672FCC0](0x3A44496567617020, 0xE900000000000020);
  *v387 = v353;
  v229 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26672FCC0](v229);

  MEMORY[0x26672FCC0](0x756F4274666F7320, 0xEF203A797261646ELL);
  Float.write<A>(to:)();
  MEMORY[0x26672FCC0](0x63536870796C6720, 0xED0000203A656C61);
  Float.write<A>(to:)();
  MEMORY[0x26672FCC0](0x646579616C656420, 0xEA0000000000203ALL);
  if (v355)
  {
    v230 = 1702195828;
  }

  else
  {
    v230 = 0x65736C6166;
  }

  if (v355)
  {
    v231 = 0xE400000000000000;
  }

  else
  {
    v231 = 0xE500000000000000;
  }

  MEMORY[0x26672FCC0](v230, v231);

  MEMORY[0x26672FCC0](0x72756365736E6920, 0xEB00000000203A65);
  if (v359)
  {
    v232 = 1702195828;
  }

  else
  {
    v232 = 0x65736C6166;
  }

  if (v359)
  {
    v233 = 0xE400000000000000;
  }

  else
  {
    v233 = 0xE500000000000000;
  }

  MEMORY[0x26672FCC0](v232, v233);

  (*(*v220 + 120))(4, *&v388[0], *(&v388[0] + 1));

  v234 = SILSignpost.unsafeMutableAddressor();
  (*(v377 + 16))(v369, v234, v378);
  swift_retain_n();
  v235 = v368;
  static OSSignpostID.exclusive.getter();
  region_id = OSSignposter.logHandle.getter();
  v236 = static os_signpost_type_t.event.getter();

  if (OS_os_log.signpostsEnabled.getter())
  {
    v237 = swift_slowAlloc();
    *v237 = 134219520;
    v238 = v382;
    *(v237 + 4) = v382;
    *(v237 + 12) = 2048;
    *(v237 + 14) = v380;
    *(v237 + 22) = 2048;
    swift_beginAccess();
    v239 = *(v29 + 24);
    *(v237 + 24) = *(v29 + 16);
    *(v237 + 32) = 2048;

    *(v237 + 34) = v239;
    *(v237 + 42) = 2048;
    *(v237 + 44) = opacity;
    *(v237 + 52) = 2048;
    *(v237 + 54) = v360;
    *(v237 + 62) = 2048;
    *(v237 + 64) = v353;
    v240 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_262A43000, region_id, v236, v240, "SIL Swap", "region: %ld, id: %ld at (%f, %f), opacity: %f, swapID: %llu, pageID: %ld", v237, 0x48u);
    MEMORY[0x266730D70](v237, -1, -1);

    v43 = v384;
    v51 = v238;
  }

  else
  {

    v43 = v384;
    v51 = v382;
  }

  v241 = v436;
  v28 = v385;
  y = v357;
  v11 = v365;
  (*(v373 + 8))(v235, v372);
  (*(v377 + 8))(v369, v378);
  v242 = (*(*v383 + 184))(v43, v370, v367, v381[2], v381[3], *&v352, *&v9);
  v15 = v371;
  if ((v242 & 1) == 0 || opacity <= 0.0)
  {
    goto LABEL_279;
  }

  v51 = v383;
  v28 = v361;
  if ((v242 & 0x100) != 0)
  {
    v243 = SILLogger.unsafeMutableAddressor();
    (*v346)(v363, v243, v15);
    v244 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v244, v13))
    {
      region_id = swift_slowAlloc();
      *region_id = 134217984;
      *(region_id + 4) = v353;
      _os_log_impl(&dword_262A43000, v244, v13, "Clearing pageID:%ld", region_id, 0xCu);
      MEMORY[0x266730D70](region_id, -1, -1);
    }

    v245 = (*v374)(v363, v15);
    v7 = v51;
    v246 = (v351)(v245);
    if (v353 >= *(v246 + 16))
    {
      goto LABEL_336;
    }

    outlined init with copy of SILBackend?(v246 + 40 * v353 + 32, v388, &_s10SILManager13IOSurfaceLike_pSgMd);
    if (*(&v388[1] + 1))
    {

      __swift_project_boxed_opaque_existential_1(v388, *(&v388[1] + 1));
      IOSurfaceLike.clear()();
      __swift_destroy_boxed_opaque_existential_1Tm(v388);
      goto LABEL_185;
    }

LABEL_380:
    __break(1u);
LABEL_381:
    __break(1u);
LABEL_382:
    swift_unexpectedError();
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

LABEL_185:
  v29 = v381[3];
  v378 = v381[2];
  region_id = (*(*v51 + 128))(v388);
  v13 = v247;
  v7 = *v247;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v13 = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_334;
  }

  while (2)
  {
    if (v353 >= v7[2])
    {
      __break(1u);
LABEL_336:
      __break(1u);
      goto LABEL_337;
    }

    v15 = &v7[5 * v353];
    if (!*(v15 + 56))
    {
      goto LABEL_379;
    }

    v92 = SILRenderer.imageRead(indicator:frame:)(v43, v428);
    if (v28)
    {
      goto LABEL_231;
    }

    *&v404 = v92;
    v377 = v92;
    v373 = region_id;
    v374 = v29;
    if (v370 && *&v43[OBJC_IVAR____TtC10SILManager12SILAssetDesc_flipbook])
    {
      v92 = specialized SILRenderer.imageRotate(image:rotation:)(&v404, v370);
      v361 = 0;
    }

    else
    {
LABEL_194:
      v361 = v28;
    }

    if (*&v9 > 0.0 && ((*((*MEMORY[0x277D85000] & *v384) + 0x168))(v92) & 1) == 0)
    {
      v249 = (*((*MEMORY[0x277D85000] & *v384) + 0x170))();
      v250 = 11;
      if (v249)
      {
        v250 = 10;
      }

      v251 = v436[v250];
      if (v251)
      {
        v252 = *&v251[OBJC_IVAR____TtC10SILManager12SILAssetDesc_framesBuffer];
        v427[0] = *v252;
        *(v427 + 12) = *(v252 + 12);
        v253 = v251;
        v254 = v361;
        v255 = SILRenderer.imageRead(indicator:frame:)(v253, v427);
        v361 = v254;
        if (v254)
        {
          goto LABEL_382;
        }

        v256 = v255;
        *v387 = v255;
        if (v370)
        {
          v257 = v361;
          specialized SILRenderer.imageRotate(image:rotation:)(v387, v370);
          v361 = v257;
        }

        v258 = (*&v9 * 0.6) * *(v428 + 1);
        v259 = floorf(v258);
        v260 = ceilf(v258);
        if (v258 >= 0.0)
        {
          v261 = v260;
        }

        else
        {
          v261 = v259;
        }

        if ((LODWORD(v261) & 0x7FFFFFFFu) > 0x7F7FFFFF)
        {
          goto LABEL_372;
        }

        if (v261 <= -9.2234e18)
        {
          goto LABEL_373;
        }

        if (v261 >= 9.2234e18)
        {
          goto LABEL_374;
        }

        v262 = v261;
        if ((v261 & 1) == 0)
        {
          v189 = __OFSUB__(v262, 1);
          v263 = v262 - 1;
          if (v189)
          {
            goto LABEL_376;
          }

          v262 = v263 & ~(v263 >> 63);
        }

        specialized SILRenderer.imageComposite(src:ontoDst:at:)(v256, &v404, (*&v384[OBJC_IVAR____TtC10SILManager12SILAssetDesc_extent] - v262) * 0.5, (*&v384[OBJC_IVAR____TtC10SILManager12SILAssetDesc_extent] - v262) * 0.5, v262, v262);
      }
    }

    if (*&v352 <= 0.0)
    {
      v274 = v377;
    }

    else
    {
      v264 = *((*MEMORY[0x277D85000] & *v384) + 0x180);

      v266 = v264(v265);
      v267 = 8.0;
      if (v266)
      {
        v267 = 12.0;
      }

      v268 = *(v428 + 1) + v267;
      if ((*(v428 + 1) + (*(v428 + 1) * 0.67)) > v268)
      {
        v268 = *(v428 + 1) + (*(v428 + 1) * 0.67);
      }

      v51 = v436[9];
      v269 = *(v51 + OBJC_IVAR____TtC10SILManager12SILAssetDesc_framesBuffer);
      v270 = *(v51 + OBJC_IVAR____TtC10SILManager12SILAssetDesc_framesBuffer + 8);
      if (v269)
      {
        if (!v270)
        {
          goto LABEL_381;
        }

        v133 = v269 + 8;
        v271 = 28 * v270;
        while (1)
        {
          v132 = *(v133 - 4);
          if (v268 <= v132)
          {
            break;
          }

          v133 += 28;
          v271 -= 28;
          if (!v271)
          {
            goto LABEL_223;
          }
        }

LABEL_228:
        v273 = (v133 - 8);
      }

      else
      {
LABEL_223:
        if (!v270)
        {
          goto LABEL_381;
        }

        v272 = v269 + 28 * v270;
        v273 = (v272 - 28);
        v132 = *(v272 - 24);
        v133 = v272 - 20;
      }

      v275 = *v273;
      v276 = *(v133 + 16);
      *v387 = *v133;
      *&v387[16] = v276;
      v424[0] = v275;
      *&v424[1] = v132;
      v425 = *v387;
      v426 = v276;
      v277 = v361;
      v278 = SILRenderer.imageRead(indicator:frame:)(v51, v424);
      v361 = v277;
      if (v277)
      {

        v43 = v384;
        v10 = *&v376;
        v12 = v379.n128_f64[0];
        v11 = v365;
        x = v366;
        y = v357;
        region_id = v373;
LABEL_231:
        (region_id)(v388, 1);

        v388[0] = v411;
        *&v388[1] = v12;
        *(&v388[1] + 1) = v10;
        *&v388[2] = v358;
        *(&v388[2] + 1) = v11;
        *&v388[3] = y;
        *(&v388[3] + 1) = x;
        *&v388[4] = v354;
        v279 = v388;
LABEL_301:
        outlined destroy of SILValidator.RegionState(v279);
      }

      v274 = v278;
      *&v401[0] = v278;
      if (*&v352 < 1.0)
      {
        specialized SILRenderer.imageApplyOpacity(image:opacity:)(v401, *&v352);
      }

      v280 = *(v51 + OBJC_IVAR____TtC10SILManager12SILAssetDesc_extent);
      v281 = *&v384[OBJC_IVAR____TtC10SILManager12SILAssetDesc_extent];
      v189 = __OFSUB__(v280, v281);
      v282 = v280 - v281;
      if (v189)
      {
        goto LABEL_371;
      }

      specialized SILRenderer.imageComposite(src:ontoDst:at:)(v377, v401, (v282 / 2), (v282 / 2), v281, v281);
    }

    v283 = *(v15 + 56);
    v284 = *(v15 + 64);
    __swift_project_boxed_opaque_existential_1((v15 + 32), v283);
    v369 = (*(v284 + 48))(0, v283, v284);
    v13 = *(v15 + 56);
    v51 = *(v15 + 64);
    v7 = __swift_project_boxed_opaque_existential_1((v15 + 32), v13);
    v285 = (*(v51 + 56))(0, v13, v51);
    if ((v285 & 0x8000000000000000) != 0)
    {
      goto LABEL_340;
    }

    v372 = v285;
    if (HIDWORD(v285))
    {
      goto LABEL_341;
    }

    v286 = *(v15 + 56);
    v287 = *(v15 + 64);
    __swift_project_boxed_opaque_existential_1((v15 + 32), v286);
    v368 = (*(v287 + 48))(1, v286, v287);
    v13 = *(v15 + 56);
    v51 = *(v15 + 64);
    v7 = __swift_project_boxed_opaque_existential_1((v15 + 32), v13);
    v288 = (*(v51 + 56))(1, v13, v51);
    if ((v288 & 0x8000000000000000) != 0)
    {
      goto LABEL_342;
    }

    v364 = v288;
    if (HIDWORD(v288))
    {
      goto LABEL_343;
    }

    v289 = v374 & ~(v374 >> 63);
    v290 = v289 * (v372 >> 2);
    v371 = v289;
    if ((v289 * (v372 >> 2)) >> 64 != v290 >> 63)
    {
      goto LABEL_344;
    }

    v29 = v378 & ~(v378 >> 63);
    v363 = v290 + v29;
    if (__OFADD__(v290, v29))
    {
      goto LABEL_345;
    }

    if (v378 < 0)
    {
      v13 = -v378;
      if (__OFSUB__(0, v378))
      {
        goto LABEL_369;
      }

      if (v374 < 0)
      {
        goto LABEL_248;
      }

      v28 = 0;
    }

    else
    {
      v13 = 0;
      v28 = 0;
      if (v374 < 0)
      {
LABEL_248:
        v28 = -v374;
        if (__OFSUB__(0, v374))
        {
          goto LABEL_370;
        }
      }
    }

    v291 = (*v274 + 144);
    v7 = v274;
    v378 = *v291;
    v374 = v291;
    v292 = (v378)();
    v293 = v28 * v292;
    if ((v28 * v292) >> 64 != (v28 * v292) >> 63)
    {
      goto LABEL_346;
    }

    if ((v13 - 0x2000000000000000) >> 62 != 3)
    {
      goto LABEL_347;
    }

    v362 = v293 + 4 * v13;
    if (__OFADD__(v293, 4 * v13))
    {
      goto LABEL_348;
    }

    v7 = v274;
    v294 = (*(*v274 + 288))();
    region_id = v294 - v13;
    if (__OFSUB__(v294, v13))
    {
      goto LABEL_349;
    }

    v13 = *(v15 + 56);
    v51 = *(v15 + 64);
    v7 = __swift_project_boxed_opaque_existential_1((v15 + 32), v13);
    v295 = (*(v51 + 8))(v13, v51);
    if (__OFSUB__(v295, v29))
    {
      goto LABEL_350;
    }

    if (v295 - v29 >= region_id)
    {
      v29 = region_id;
    }

    else
    {
      v29 = v295 - v29;
    }

    v7 = v274;
    v296 = (*(*v274 + 296))();
    v189 = __OFSUB__(v296, v28);
    v28 = v296 - v28;
    if (v189)
    {
      goto LABEL_351;
    }

    v13 = *(v15 + 56);
    v51 = *(v15 + 64);
    v7 = __swift_project_boxed_opaque_existential_1((v15 + 32), v13);
    v297 = (*(v51 + 16))(v13, v51);
    if (__OFSUB__(v297, v371))
    {
      goto LABEL_352;
    }

    if (v297 - v371 >= v28)
    {
      v13 = v28;
    }

    else
    {
      v13 = v297 - v371;
    }

    v7 = v274;
    v51 = (*(*v274 + 304))();
    v298 = (v378)();
    if (v298 > 0xFFFFFFFFLL)
    {
      goto LABEL_353;
    }

    if (v29 > 0xFFFFFFFFLL)
    {
      goto LABEL_354;
    }

    if ((v13 | v29 | v298) < 0)
    {
      goto LABEL_355;
    }

    if (v13 > 0xFFFFFFFFLL)
    {
      goto LABEL_356;
    }

    sil_argb8888_to_b3a8(v51 + v362, v298, &v369[4 * v363], v372, &v368[v363], v364, v29, v13, 0xDAu);

    (v373)(v388, 0);
    v15 = *(*v383 + 176);
    v7 = (v15)(v388);
    region_id = v299;
    v13 = *v299;
    v300 = swift_isUniquelyReferenced_nonNull_native();
    *region_id = v13;
    if ((v300 & 1) == 0)
    {
      goto LABEL_357;
    }

LABEL_267:
    if (v353 >= *(v13 + 16))
    {
      __break(1u);
    }

    else
    {
      v51 = v353 << 6;
      *(v13 + (v353 << 6) + 72) = v380;
      (v7)(v388, 0);
      v7 = (v15)(v388);
      region_id = v301;
      v13 = *v301;
      v302 = swift_isUniquelyReferenced_nonNull_native();
      *region_id = v13;
      if (v302)
      {
        goto LABEL_269;
      }
    }

    v13 = specialized _ArrayBuffer._consumeAndCreateNew()(v13);
    *region_id = v13;
LABEL_269:
    if (v353 >= *(v13 + 16))
    {
      __break(1u);
    }

    else
    {
      *(v13 + v51 + 32) = v367;
      (v7)(v388, 0);
      v7 = (v15)(v388);
      region_id = v303;
      v13 = *v303;
      v304 = swift_isUniquelyReferenced_nonNull_native();
      *region_id = v13;
      if (v304)
      {
        goto LABEL_271;
      }
    }

    v13 = specialized _ArrayBuffer._consumeAndCreateNew()(v13);
    *region_id = v13;
LABEL_271:
    if (v353 >= *(v13 + 16))
    {
      __break(1u);
    }

    else
    {
      *(v13 + v51 + 56) = v370;
      (v7)(v388, 0);
      v28 = v381[2];
      v29 = v381[3];
      v7 = (v15)(v388);
      region_id = v305;
      v13 = *v305;
      v306 = swift_isUniquelyReferenced_nonNull_native();
      *region_id = v13;
      if (v306)
      {
        goto LABEL_273;
      }
    }

    v13 = specialized _ArrayBuffer._consumeAndCreateNew()(v13);
    *region_id = v13;
LABEL_273:
    if (v353 >= *(v13 + 16))
    {
      __break(1u);
    }

    else
    {
      v307 = v13 + v51;
      *(v307 + 40) = v28;
      *(v307 + 48) = v29;
      (v7)(v388, 0);
      v7 = (v15)(v388);
      region_id = v308;
      v13 = *v308;
      v309 = swift_isUniquelyReferenced_nonNull_native();
      *region_id = v13;
      if (v309)
      {
        goto LABEL_275;
      }
    }

    v13 = specialized _ArrayBuffer._consumeAndCreateNew()(v13);
    *region_id = v13;
LABEL_275:
    if (v353 >= *(v13 + 16))
    {
      __break(1u);
    }

    else
    {
      *(v13 + v51 + 60) = v352;
      (v7)(v388, 0);
      v7 = (v15)(v388);
      region_id = v310;
      v13 = *v310;
      v311 = swift_isUniquelyReferenced_nonNull_native();
      *region_id = v13;
      if (v311)
      {
        goto LABEL_277;
      }
    }

    v13 = specialized _ArrayBuffer._consumeAndCreateNew()(v13);
    *region_id = v13;
LABEL_277:
    if (v353 >= *(v13 + 16))
    {
      __break(1u);
      __break(1u);
LABEL_369:
      __break(1u);
LABEL_370:
      __break(1u);
LABEL_371:
      __break(1u);
LABEL_372:
      __break(1u);
LABEL_373:
      __break(1u);
LABEL_374:
      __break(1u);
      goto LABEL_375;
    }

    *(v13 + v51 + 64) = LODWORD(v9);
    (v7)(v388, 0);
    v43 = v384;
    v28 = v385;
    v51 = v382;
    v10 = *&v376;
    v12 = v379.n128_f64[0];
    v241 = v436;
    v11 = v365;
    x = v366;
    y = v357;
LABEL_279:
    outlined init with copy of SILBackend?((v241 + 3), &v389, &_s10SILManager10SILBackend_pSgMd);
    v13 = v391;
    v9 = v354;
    if (!v391)
    {
      goto LABEL_377;
    }

    v15 = v392;
    region_id = __swift_project_boxed_opaque_existential_1(&v389, v391);
    v7 = v383;
    v312 = v351();
    if (v353 >= *(v312 + 16))
    {
LABEL_333:
      __break(1u);
LABEL_334:
      v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
      *v13 = v7;
      continue;
    }

    break;
  }

  outlined init with copy of SILBackend?(v312 + 40 * v353 + 32, &v397, &_s10SILManager13IOSurfaceLike_pSgMd);
  if (!v398)
  {
    goto LABEL_378;
  }

  outlined init with take of SILFileHandle(&v397, &v399);
  v420[1] = 0;
  v420[0] = 0;
  *&v420[2] = x;
  *&v420[3] = v9;
  v421 = 0;
  *v422 = v11;
  *&v422[1] = y;
  *&v422[2] = x;
  *&v422[3] = v9;
  v423 = 0;
  v313 = v361;
  (*(v15 + 32))(v51, v43, &v399, v420, v422, v367, v350, v13, opacity, v15);
  v29 = v313;
  if (v313)
  {

    outlined destroy of SILValidator.RegionState?(&v399, &_s10SILManager13IOSurfaceLike_pSgMd);
    v388[0] = v411;
    *&v388[1] = v12;
    *(&v388[1] + 1) = v10;
    *&v388[2] = v358;
    *(&v388[2] + 1) = v11;
    *&v388[3] = y;
    *(&v388[3] + 1) = x;
    *&v388[4] = v9;
    outlined destroy of SILValidator.RegionState(v388);
    __swift_destroy_boxed_opaque_existential_1Tm(&v389);
  }

  outlined destroy of SILValidator.RegionState?(&v399, &_s10SILManager13IOSurfaceLike_pSgMd);
  v314 = __swift_destroy_boxed_opaque_existential_1Tm(&v389);
  v7 = (v28)(v314);
  v388[0] = v411;
  *&v388[1] = v12;
  *(&v388[1] + 1) = v10;
  *&v388[2] = v358;
  *(&v388[2] + 1) = v11;
  *&v388[3] = y;
  *(&v388[3] + 1) = x;
  *&v388[4] = v9;
  v315 = *(*v7 + 184);
  outlined init with copy of SILValidator.RegionState(v388, v387);
  v13 = v315(v401);
  v15 = v316;
  region_id = *v316;
  v317 = swift_isUniquelyReferenced_nonNull_native();
  *v15 = region_id;
  if ((v317 & 1) == 0)
  {
LABEL_337:
    region_id = specialized _ArrayBuffer._consumeAndCreateNew()(region_id);
    *v15 = region_id;
  }

  v406 = v388[2];
  v407 = v388[3];
  v408 = *&v388[4];
  v404 = v388[0];
  v405 = v388[1];
  if (*(region_id + 16) <= v51)
  {
    __break(1u);
LABEL_339:
    __break(1u);
    __break(1u);
    __break(1u);
LABEL_340:
    __break(1u);
LABEL_341:
    __break(1u);
LABEL_342:
    __break(1u);
LABEL_343:
    __break(1u);
LABEL_344:
    __break(1u);
LABEL_345:
    __break(1u);
LABEL_346:
    __break(1u);
LABEL_347:
    __break(1u);
LABEL_348:
    __break(1u);
LABEL_349:
    __break(1u);
LABEL_350:
    __break(1u);
LABEL_351:
    __break(1u);
LABEL_352:
    __break(1u);
LABEL_353:
    __break(1u);
LABEL_354:
    __break(1u);
LABEL_355:
    __break(1u);
LABEL_356:
    __break(1u);
LABEL_357:
    v13 = specialized _ArrayBuffer._consumeAndCreateNew()(v13);
    *region_id = v13;
    goto LABEL_267;
  }

  v318 = region_id + 80 * v51;
  *(v318 + 32) = 1;
  *v387 = *(v318 + 40);
  v319 = *(v318 + 56);
  v320 = *(v318 + 72);
  v321 = *(v318 + 88);
  *&v387[64] = *(v318 + 104);
  *&v387[32] = v320;
  *&v387[48] = v321;
  *&v387[16] = v319;
  *(v318 + 56) = v405;
  *(v318 + 72) = v406;
  *(v318 + 88) = v407;
  *(v318 + 104) = v408;
  *(v318 + 40) = v404;
  outlined destroy of SILValidator.RegionState?(v387, &_s10SILManager12SILValidatorC11RegionStateVSgMd);
  (v13)(v401, 0);

  v322 = v349;
  if (v349 != 24)
  {
    lazy protocol witness table accessor for type SILError and conformance SILError();
    swift_allocError();
    *v324 = v322;
    swift_willThrow();

    v401[0] = v411;
    *&v401[1] = v12;
    *(&v401[1] + 1) = v10;
    *&v401[2] = v358;
    *(&v401[2] + 1) = v11;
    *&v402 = y;
    *(&v402 + 1) = x;
    v403 = v9;
    v279 = v401;
    goto LABEL_301;
  }

  if (*&v352 <= 0.0)
  {
    v401[0] = v411;
    *&v401[1] = v12;
    *(&v401[1] + 1) = v10;
    *&v401[2] = v358;
    *(&v401[2] + 1) = v11;
    *&v402 = y;
    *(&v402 + 1) = x;
    v403 = v9;
    outlined destroy of SILValidator.RegionState(v401);
  }

  else
  {
    if (*&v352 < 1.0)
    {
      lazy protocol witness table accessor for type SILError and conformance SILError();
      swift_allocError();
      *v323 = 0;
      swift_willThrow();

      v401[0] = v411;
      *&v401[1] = v379.n128_u64[0];
      *(&v401[1] + 1) = v376;
      *&v401[2] = v358;
      *(&v401[2] + 1) = v365;
      *&v402 = v357;
      *(&v402 + 1) = v366;
      v403 = v354;
      v279 = v401;
      goto LABEL_301;
    }

    v401[0] = v411;
    *&v401[1] = v379.n128_u64[0];
    *(&v401[1] + 1) = v376;
    *&v401[2] = v358;
    *(&v401[2] + 1) = v365;
    *&v402 = v357;
    *(&v402 + 1) = v366;
    v403 = v354;
    outlined destroy of SILValidator.RegionState(v401);
  }

  return v360;
}

Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SILRenderer.swapWait(swapID:type:)(Swift::UInt64_optional swapID, SILManager::SwapWaitType type)
{
  v3 = type;
  is_nil = swapID.is_nil;
  value = swapID.value;
  result = outlined init with copy of SILBackend?(v2 + 24, v10, &_s10SILManager10SILBackend_pSgMd);
  v7 = v11;
  if (v11)
  {
    v8 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    if (is_nil)
    {
      value = (*(*v2 + 424))();
    }

    v9 = (*(v8 + 40))(value, v3, v7, v8);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    return v9 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::UInt64 __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SILRenderer.turnOffRegions(regionMask:synchronous:)(Swift::UInt32 regionMask, Swift::Bool synchronous)
{
  v4 = v2;
  v5 = synchronous;
  v6 = *&regionMask;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v41 - v13;
  if ((v6 - 16) > 0xFFFFFFF0)
  {
    result = (*(*v4 + 696))(v12);
    if (v3)
    {
      return result;
    }

    v42 = result;
    if (v6 == 15 && v5)
    {
      v47 = v5;
      v21 = SILLogger.unsafeMutableAddressor();
      (*(v8 + 16))(v11, v21, v7);
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_262A43000, v22, v23, "Turning Off all regions synchronously", v24, 2u);
        MEMORY[0x266730D70](v24, -1, -1);
      }

      (*(v8 + 8))(v11, v7);
      v25 = Log.unsafeMutableAddressor();
      swift_beginAccess();
      v26 = *(**v25 + 144);

      v26(4, 0xD000000000000025, 0x8000000262A9F650);

      LOBYTE(v5) = v47;
    }

    else
    {
      v27 = Log.unsafeMutableAddressor();
      swift_beginAccess();
      v28 = *v27;
      v43 = 0;
      v44 = 0xE000000000000000;

      _StringGuts.grow(_:)(43);

      v43 = 0xD00000000000001FLL;
      v44 = 0x8000000262A9F630;
      v48 = v6;
      lazy protocol witness table accessor for type UInt32 and conformance UInt32();
      v29 = String.init<A>(_:radix:uppercase:)();
      MEMORY[0x26672FCC0](v29);

      MEMORY[0x26672FCC0](0x203A636E7973202CLL, 0xE800000000000000);
      if (v5)
      {
        v30 = 1702195828;
      }

      else
      {
        v30 = 0x65736C6166;
      }

      if (v5)
      {
        v31 = 0xE400000000000000;
      }

      else
      {
        v31 = 0xE500000000000000;
      }

      MEMORY[0x26672FCC0](v30, v31);

      (*(*v28 + 120))(4, v43, v44);
    }

    result = outlined init with copy of SILBackend?(v4 + 24, &v43, &_s10SILManager10SILBackend_pSgMd);
    v32 = v45;
    if (v45)
    {
      v33 = v46;
      __swift_project_boxed_opaque_existential_1(&v43, v45);
      (*(v33 + 48))(v6, v32, v33);
      v34 = __swift_destroy_boxed_opaque_existential_1Tm(&v43);
      v35 = (*(*v4 + 520))(v34);
      (*(*v35 + 224))(v4, v6);

      result = (*(*v4 + 400))(v36);
      if (v38 != 1)
      {
        v39 = v37;
        outlined consume of (id: UInt64, synchronous: Bool, signpost: OSSignpostIntervalState?)?(result, v37, v38);
        result = (*(*v4 + 416))(&v43);
        if (*(v40 + 16) != 1)
        {
          *(v40 + 8) = (v39 | v5) & 1;
          (result)(&v43, 0);
          return v42;
        }

        goto LABEL_26;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_26:
    __break(1u);
    return result;
  }

  v15 = SILLogger.unsafeMutableAddressor();
  (*(v8 + 16))(v14, v15, v7);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 67109120;
    *(v18 + 4) = v6;
    _os_log_impl(&dword_262A43000, v16, v17, "Invalid region mask %u for turnOffRegions", v18, 8u);
    MEMORY[0x266730D70](v18, -1, -1);
  }

  (*(v8 + 8))(v14, v7);
  lazy protocol witness table accessor for type SILError and conformance SILError();
  swift_allocError();
  *v19 = 1;
  return swift_willThrow();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SILRenderer.swapEnd(presentationTime:syncToTsq:)(Swift::UInt64 presentationTime, Swift::Bool syncToTsq)
{
  v106 = presentationTime;
  v3 = v2;
  v5 = type metadata accessor for OSSignpostError();
  v98 = *(v5 - 8);
  v99 = v5;
  MEMORY[0x28223BE20](v5);
  v97 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OSSignpostID();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OSSignposter();
  v104 = *(v11 - 8);
  v105 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for Logger();
  v101 = *(v96 - 8);
  v14 = MEMORY[0x28223BE20](v96);
  v100 = &v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = (*v2 + 400);
  v17 = *v16;
  v18 = (*v16)(v14);
  if (v20 == 1)
  {
    v21 = SILError.log()();
    lazy protocol witness table accessor for type SILError and conformance SILError();
    swift_allocError();
    *v22 = v21;
    swift_willThrow();
    return;
  }

  v102 = v13;
  v103 = v10;
  v92 = v8;
  v93 = v7;
  v23 = outlined consume of (id: UInt64, synchronous: Bool, signpost: OSSignpostIntervalState?)?(v18, v19, v20);
  v24 = (*(*v2 + 520))(v23);
  v94 = v16;
  v95 = v17;
  v25 = v17();
  if (v27 == 1)
  {
    __break(1u);
    goto LABEL_37;
  }

  v28 = v25;
  v29 = v26;
  v30 = v27;
  v111 = (*(*v24 + 232))(v2, v25);
  outlined consume of (id: UInt64, synchronous: Bool, signpost: OSSignpostIntervalState?)?(v28, v29, v30);

  outlined init with copy of SILBackend?(v2 + 24, v108, &_s10SILManager10SILBackend_pSgMd);
  v31 = v109;
  if (!v109)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v32 = v110;
  __swift_project_boxed_opaque_existential_1(v108, v109);
  v33 = v107;
  (*(v32 + 56))(v106, syncToTsq, v31, v32);
  v35 = v102;
  v34 = v103;
  if (v33)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v108);
LABEL_7:
    (*(*v3 + 408))(0, 0, 1);
    return;
  }

  v36 = __swift_destroy_boxed_opaque_existential_1Tm(v108);
  v37 = v95;
  v38 = (v95)(v36);
  if (v40 == 1)
  {
    goto LABEL_38;
  }

  v41 = v39;
  v42 = outlined consume of (id: UInt64, synchronous: Bool, signpost: OSSignpostIntervalState?)?(v38, v39, v40);
  if ((v41 & 1) == 0)
  {
    goto LABEL_20;
  }

  outlined init with copy of SILBackend?(v3 + 24, v108, &_s10SILManager10SILBackend_pSgMd);
  v43 = v109;
  if (!v109)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v44 = v110;
  __swift_project_boxed_opaque_existential_1(v108, v109);
  v45 = v37();
  v107 = v47;
  if (v46 == 1)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v48 = v45;
  v49 = v46;
  v50 = (*(v44 + 40))(v45, 2, v43, v44);
  outlined consume of (id: UInt64, synchronous: Bool, signpost: OSSignpostIntervalState?)?(v48, v107, v49);
  v42 = __swift_destroy_boxed_opaque_existential_1Tm(v108);
  if (v50)
  {
    v35 = v102;
    v34 = v103;
LABEL_19:
    v37 = v95;
LABEL_20:
    v61 = (v37)(v42);
    if (v62 != 1)
    {
      v63 = v61;

      v64 = (*(*v3 + 432))(v63);
      v65 = (v37)(v64);
      if (!v67)
      {
LABEL_33:
        specialized SILRenderer.dumpSwapEnd(_:_:)();
        LOBYTE(v108[0]) = v111;
        v112 = 0;
        lazy protocol witness table accessor for type SILValidator.FBITriggeredType and conformance SILValidator.FBITriggeredType();
        if (dispatch thunk of static Equatable.== infix(_:_:)())
        {
          goto LABEL_7;
        }

        v89.value = SILValidator.FBITriggeredType.toSILError()().value;
        if (v89.value != SILManager_SILError_unknownDefault)
        {
          value = v89.value;
          lazy protocol witness table accessor for type SILError and conformance SILError();
          swift_allocError();
          *v91 = value;
          swift_willThrow();
          (*(*v3 + 408))(0, 0, 1);
          return;
        }

        goto LABEL_45;
      }

      if (v67 != 1)
      {
        outlined consume of (id: UInt64, synchronous: Bool, signpost: OSSignpostIntervalState?)?(v65, v66, v67);
        v68 = SILSignpost.unsafeMutableAddressor();
        v69 = (*(v104 + 16))(v35, v68, v105);
        v70 = (v37)(v69);
        if (v72)
        {
          v73 = v72;
          if (v72 != 1)
          {
            v74 = v70;
            v75 = v71;

            v76 = OSSignposter.logHandle.getter();
            OSSignpostIntervalState.signpostID.getter();
            LODWORD(v107) = static os_signpost_type_t.end.getter();
            if (OS_os_log.signpostsEnabled.getter())
            {

              v77 = v97;
              checkForErrorAndConsumeState(state:)();
              outlined consume of (id: UInt64, synchronous: Bool, signpost: OSSignpostIntervalState?)?(v74, v75, v73);
              v79 = v98;
              v78 = v99;
              if ((*(v98 + 88))(v77, v99) == *MEMORY[0x277D85B00])
              {
                v80 = 0;
                v81 = "[Error] Interval already ended";
              }

              else
              {
                (*(v79 + 8))(v77, v78);
                v81 = "[SILMGR] Swap %llu End";
                v80 = 1;
              }

              v82 = swift_slowAlloc();
              *v82 = 0;
              *(v82 + 1) = v80;
              *(v82 + 2) = 2048;
              v83 = v95();
              if (v85 == 1)
              {
                goto LABEL_46;
              }

              v86 = v83;
              outlined consume of (id: UInt64, synchronous: Bool, signpost: OSSignpostIntervalState?)?(v83, v84, v85);
              *(v82 + 4) = v86;

              v87 = v103;
              v88 = OSSignpostID.rawValue.getter();
              _os_signpost_emit_with_name_impl(&dword_262A43000, v76, v107, v88, "Swap", v81, v82, 0xCu);
              v34 = v87;
              MEMORY[0x266730D70](v82, -1, -1);

              outlined consume of (id: UInt64, synchronous: Bool, signpost: OSSignpostIntervalState?)?(v74, v75, v73);
              v35 = v102;
            }

            else
            {

              outlined consume of (id: UInt64, synchronous: Bool, signpost: OSSignpostIntervalState?)?(v74, v75, v73);
            }

            (*(v92 + 8))(v34, v93);
            (*(v104 + 8))(v35, v105);
            goto LABEL_33;
          }

LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:

          __break(1u);
          goto LABEL_47;
        }

LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    goto LABEL_39;
  }

  v51 = SILLogger.unsafeMutableAddressor();
  v52 = v96;
  (*(v101 + 16))(v100, v51, v96);

  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.error.getter();
  v55 = os_log_type_enabled(v53, v54);
  v35 = v102;
  v34 = v103;
  if (!v55)
  {

    goto LABEL_18;
  }

  LODWORD(v107) = v54;
  v56 = swift_slowAlloc();
  *v56 = 134217984;
  v57 = v95();
  if (v59 != 1)
  {
    v60 = v57;
    outlined consume of (id: UInt64, synchronous: Bool, signpost: OSSignpostIntervalState?)?(v57, v58, v59);
    *(v56 + 4) = v60;

    _os_log_impl(&dword_262A43000, v53, v107, "Swap wait failed for swap %llu", v56, 0xCu);
    MEMORY[0x266730D70](v56, -1, -1);

LABEL_18:
    v42 = (*(v101 + 8))(v100, v52);
    goto LABEL_19;
  }

LABEL_47:

  __break(1u);
}

Swift::Float __swiftcall SILRenderer.softBoundaryStrength(now:)(Swift::UInt64 now)
{
  v3 = (*v1 + 520);
  v4 = *v3;
  v5 = (*v3)();
  (*(*v5 + 120))(&v23);

  if (v25 << 8 == 512)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v24;
  }

  v8 = (v4)(v6);
  (*(*v8 + 120))(v26);

  v9 = v27;
  if (v28 << 8 == 512)
  {
    v9 = 0.0;
  }

  if (v7 <= v9)
  {
    v7 = v9;
  }

  outlined init with copy of SILBackend?(v1 + 24, v20, &_s10SILManager10SILBackend_pSgMd);
  v11 = v21;
  if (!v21)
  {
    goto LABEL_22;
  }

  v12 = v22;
  __swift_project_boxed_opaque_existential_1(v20, v21);
  (*(v12 + 72))(v11, v12);
  v14 = v13;
  v15 = __swift_destroy_boxed_opaque_existential_1Tm(v20);
  v16 = (*(*v1 + 472))(v15);
  if (v14 > 0.0 != (v16 & 1))
  {
    (*(*v1 + 480))(v14 > 0.0);
    if (v7 <= 0.0)
    {
      v17 = 0;
    }

    else
    {
      v17 = now;
    }

    v16 = (*(*v1 + 504))(v17);
  }

  v18 = (*(*v1 + 496))(v16);
  v19 = now - v18;
  if (now < v18)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    return result;
  }

  result = 0.0;
  if (v14 > 0.0)
  {
    result = 1.0;
  }

  if (v19 <= 0x29B926FF)
  {
    result = v19 / 700000000.0;
    if (v14 <= 0.0)
    {
      return 1.0 - result;
    }
  }

  return result;
}

void *SILRenderer.imageRead(indicator:frame:)(void *a1, uint64_t a2)
{
  v4 = v2;
  v6 = a1;
  result = (*((*MEMORY[0x277D85000] & *a1) + 0xC0))(v21);
  v8 = v22;
  if (v22)
  {
    v9 = v23;
    __swift_project_boxed_opaque_existential_1(v21, v22);
    v10 = *(a2 + 16);
    v11 = *(a2 + 20);
    v12 = (*(v9 + 8))(v10, v11, v8, v9);
    result = __swift_destroy_boxed_opaque_existential_1Tm(v21);
    if (v3)
    {
      return v6;
    }

    v13 = *(v6 + OBJC_IVAR____TtC10SILManager12SILAssetDesc_Bpr);
    v14 = *(v6 + OBJC_IVAR____TtC10SILManager12SILAssetDesc_extent);
    v15 = v13 * v14;
    if ((v13 * v14) >> 64 == (v13 * v14) >> 63)
    {
      type metadata accessor for SILImage();
      v6 = swift_allocObject();
      *(v6 + 16) = 0;
      *(v6 + 24) = 0;
      *(v6 + 64) = 0;
      *(v6 + 32) = v14;
      *(v6 + 40) = v14;
      *(v6 + 48) = v13;
      v16 = swift_slowAlloc();
      *(v6 + 56) = v16;
      *(v6 + 72) = 0;
      v17 = (*(*v4 + 328))();
      v18 = compression_decode_buffer(v16, v15, (v12 + 32), v11, v17, COMPRESSION_LZFSE);

      if (!v18)
      {
        v19 = SILError.log()();
        lazy protocol witness table accessor for type SILError and conformance SILError();
        swift_allocError();
        *v20 = v19;
        swift_willThrow();
      }

      return v6;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t SILIndicatorValidator.__allocating_init(framesCount:constraints:flipbook:)(__int16 a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();

  v7 = MEMORY[0x277D84F90];
  *(v6 + 32) = a1;
  *(v6 + 16) = v7;
  *(v6 + 24) = a2;
  return v6;
}

Swift::Int __swiftcall SILIndicatorValidator.stateInfoIdxForFrame(frame:)(Swift::UInt16 frame)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (v2 + 32);
    while (1)
    {
      v6 = *v5;
      v5 += 12;
      if (v6 > frame)
      {
        break;
      }

      if (v3 == ++v4)
      {
        goto LABEL_7;
      }
    }

    v3 = v4;
  }

LABEL_7:
  if (v3 <= 1)
  {
    v3 = 1;
  }

  return v3 - 1;
}

Swift::Bool __swiftcall SILIndicatorValidator.flipbookFrameSteady(frame:)(Swift::UInt16 frame)
{
  v2 = (*(*v1 + 112))(frame);
  v3 = v2 + 1;
  if (__OFADD__(v2, 1))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v4 = *(v1 + 2);
  v5 = *(v4 + 16);
  if (v3 >= v5)
  {
    v6 = v1 + 16;
  }

  else
  {
    if (v3 < 0)
    {
LABEL_12:
      __break(1u);
      return v2;
    }

    v6 = (v4 + 24 * v3 + 32);
  }

  if (v2 >= v5)
  {
    goto LABEL_10;
  }

  v7 = *(v4 + 24 * v2 + 32) + 1;
  if ((v7 & 0x10000) != 0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  LOBYTE(v2) = *v6 == v7;
  return v2;
}

uint64_t SILIndicatorValidator.validateFlipBookTransitionFrom(now:prevState:toFrame:)(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v5 = v4;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  result = MEMORY[0x28223BE20](v13);
  v17 = &v100 - v16;
  v18 = *(a2 + 36);
  v110 = a3;
  if (v18 == a3)
  {
    return result;
  }

  v106 = v15;
  v19 = *(*v3 + 112);
  v20 = v19(v18);
  if ((v20 & 0x8000000000000000) != 0)
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v109 = v9;
  v21 = *(v3 + 2);
  v22 = *(v21 + 16);
  if (v20 >= v22)
  {
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v104 = v12;
  v23 = (v21 + 32 + 24 * v20);
  v24 = *v23;
  v25 = *(v23 + 1);
  v108 = *(v23 + 2);
  v26 = v23 + 12;
  if (v20 + 1 >= v22)
  {
    v27 = v3 + 16;
  }

  else
  {
    v27 = v26;
  }

  v28 = v110;
  if (v24 <= v110)
  {
    v29 = *v27;
    if (v29 > v110)
    {
      if (v18 < v110)
      {
        LOWORD(v30) = v110 - v18;
        v31 = v109;
LABEL_30:
        result = SILValidator.maxFlipBookFrameJumpCount.unsafeMutableAddressor();
        if (*result >= v30)
        {
          return result;
        }

        v53 = SILLogger.unsafeMutableAddressor();
        (*(v31 + 16))(v17, v53, v8);
        v54 = Logger.logObject.getter();
        v55 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v54, v55))
        {
          v56 = swift_slowAlloc();
          *v56 = 33554944;
          *(v56 + 4) = v110;
          *(v56 + 6) = 512;
          *(v56 + 8) = v18;
          _os_log_impl(&dword_262A43000, v54, v55, "Skipping from frame %hu->%hu exceeds allowed threshold", v56, 0xAu);
          v31 = v109;
          MEMORY[0x266730D70](v56, -1, -1);
        }

        (*(v31 + 8))(v17, v8);
        v57 = SILValidator.DisabledHealthChecks.unsafeMutableAddressor();
        swift_beginAccess();
        v58 = *v57;
        v111 = *SILValidator.DisabledHealthCheckOptions.FlipBookRestrictSkippedFrames.unsafeMutableAddressor();
        v114 = v58;
        lazy protocol witness table accessor for type SILValidator.DisabledHealthCheckOptions and conformance SILValidator.DisabledHealthCheckOptions();
        result = dispatch thunk of SetAlgebra.isSuperset(of:)();
        if (result)
        {
          return result;
        }

        goto LABEL_69;
      }

      v52 = v29 - v18;
      v31 = v109;
      if ((v52 & 0xFFFF0000) == 0)
      {
        v30 = v52 + (v110 - v24);
        if ((v30 & 0x10000) == 0)
        {
          goto LABEL_30;
        }

        goto LABEL_83;
      }

LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
      goto LABEL_84;
    }
  }

  v107 = v25;

  v32 = v19(v28);
  if ((v32 & 0x8000000000000000) != 0)
  {
    goto LABEL_76;
  }

  if (v32 >= *(v21 + 16))
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v33 = (v21 + 32 + 24 * v32);
  v103 = *v33;
  v35 = *(v33 + 1);
  v34 = *(v33 + 2);
  v36 = v107;
  v37 = *(v107 + 16);
  v105 = v8;
  v101 = v37;
  v102 = v34;
  if (v37)
  {
    v38 = *(v35 + 16);
    v39 = v107 + 32;

    v40 = 0;
    v100 = v36 + 32;
LABEL_15:
    if (v40 < *(v36 + 16))
    {
      v41 = (v39 + 4 * v40);
      v42 = *v41;
      v43 = v5;
      v44 = v41[1];
      ++v40;
      if (v42 == v44)
      {
        v45 = closure #1 in FlipBookStateHash.validateTransitionFunc()partial apply;
      }

      else
      {
        v45 = closure #2 in FlipBookStateHash.validateTransitionFunc()partial apply;
      }

      v46 = swift_allocObject();
      *(v46 + 16) = v42;
      *(v46 + 18) = v44;
      v5 = v43;
      v8 = v105;

      v47 = 0;
      do
      {
        if (v38 == v47)
        {

          v39 = v100;
          v36 = v107;
          if (v40 != v101)
          {
            goto LABEL_15;
          }

          goto LABEL_36;
        }

        if (v47 >= *(v35 + 16))
        {
          __break(1u);
          goto LABEL_73;
        }

        v48 = v47 + 1;
        v49 = (v45)(*(v35 + 4 * v47 + 32));
        v47 = v48;
      }

      while ((v49 & 1) == 0);

      v50 = v108;
      v51 = v109;
      if (v103 > v110)
      {
        goto LABEL_37;
      }

      goto LABEL_40;
    }

    goto LABEL_75;
  }

LABEL_36:
  v50 = v108;
  v51 = v109;
LABEL_37:
  v59 = SILLogger.unsafeMutableAddressor();
  (*(v51 + 16))(v106, v59, v8);
  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    *v62 = 33554944;
    *(v62 + 4) = v18;
    *(v62 + 6) = 512;
    *(v62 + 8) = v110;
    _os_log_impl(&dword_262A43000, v60, v61, "Invalid transition from frame %hu to %hu", v62, 0xAu);
    v63 = v62;
    v51 = v109;
    MEMORY[0x266730D70](v63, -1, -1);
  }

  (*(v51 + 8))(v106, v8);
  v64 = SILValidator.DisabledHealthChecks.unsafeMutableAddressor();
  swift_beginAccess();
  v65 = *v64;
  v113 = *SILValidator.DisabledHealthCheckOptions.FlipBookInvalidTransitionToFrame.unsafeMutableAddressor();
  v114 = v65;
  lazy protocol witness table accessor for type SILValidator.DisabledHealthCheckOptions and conformance SILValidator.DisabledHealthCheckOptions();
  if ((dispatch thunk of SetAlgebra.isSuperset(of:)() & 1) == 0)
  {

    v75 = 6;
LABEL_70:
    lazy protocol witness table accessor for type SILError and conformance SILError();
    swift_allocError();
    *v99 = v75;
    return swift_willThrow();
  }

LABEL_40:
  v66 = *(v50 + 16);
  if (v66)
  {
    v113 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v66, 0);
    v67 = v113;
    v68 = (v50 + 32);
    v69 = v113[2];
    do
    {
      v70 = *v68++;
      v71 = v70 - v18;
      if (v71 >= 0)
      {
        v72 = v71;
      }

      else
      {
        v72 = -v71;
      }

      v113 = v67;
      v73 = v67[3];
      v74 = v69 + 1;
      if (v69 >= v73 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v73 > 1), v69 + 1, 1);
        v67 = v113;
      }

      v67[2] = v74;
      v67[v69++ + 4] = v72;
      --v66;
    }

    while (v66);
    v51 = v109;
  }

  else
  {
    v67 = MEMORY[0x277D84F90];
    v74 = *(MEMORY[0x277D84F90] + 16);
    if (!v74)
    {
LABEL_84:

      __break(1u);
      return result;
    }
  }

  v76 = v104;
  v77 = v67[4];
  v78 = v74 - 1;
  if (v74 != 1)
  {
    if (v74 >= 5)
    {
      v79 = v78 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v80 = vdupq_n_s64(v77);
      v81 = (v67 + 7);
      v82 = v78 & 0xFFFFFFFFFFFFFFFCLL;
      v83 = v80;
      do
      {
        v80 = vbslq_s8(vcgtq_s64(v80, v81[-1]), v81[-1], v80);
        v83 = vbslq_s8(vcgtq_s64(v83, *v81), *v81, v83);
        v81 += 2;
        v82 -= 4;
      }

      while (v82);
      v84 = vbslq_s8(vcgtq_s64(v83, v80), v80, v83);
      v85 = vextq_s8(v84, v84, 8uLL).u64[0];
      v77 = vbsl_s8(vcgtd_s64(v85, v84.i64[0]), *v84.i8, v85);
      if (v78 == (v78 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_61;
      }
    }

    else
    {
      v79 = 1;
    }

    v86 = v74 - v79;
    v87 = &v67[v79 + 4];
    do
    {
      v89 = *v87++;
      v88 = v89;
      if (v89 < v77)
      {
        v77 = v88;
      }

      --v86;
    }

    while (v86);
  }

LABEL_61:

  if ((v77 & 0x8000000000000000) != 0)
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  v90 = v105;
  if (v77 >> 16)
  {
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  if (((v110 - v103) & 0xFFFF0000) != 0)
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v91 = (v110 - v103) + v77;
  if ((v91 & 0x10000) != 0)
  {
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  result = SILValidator.maxFlipBookFrameJumpCount.unsafeMutableAddressor();
  if (*result < v91)
  {
    v92 = SILLogger.unsafeMutableAddressor();
    (*(v51 + 16))(v76, v92, v90);
    v93 = Logger.logObject.getter();
    v94 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      *v95 = 33554944;
      *(v95 + 4) = v110;
      *(v95 + 6) = 512;
      *(v95 + 8) = v18;
      _os_log_impl(&dword_262A43000, v93, v94, "Skipping from frame %hu->%hu for transition exceeds allowed threshold", v95, 0xAu);
      v96 = v95;
      v51 = v109;
      MEMORY[0x266730D70](v96, -1, -1);
    }

    (*(v51 + 8))(v76, v90);
    v97 = SILValidator.DisabledHealthChecks.unsafeMutableAddressor();
    swift_beginAccess();
    v98 = *v97;
    v114 = *SILValidator.DisabledHealthCheckOptions.FlipBookRestrictSkippedFrames.unsafeMutableAddressor();
    v112 = v98;
    lazy protocol witness table accessor for type SILValidator.DisabledHealthCheckOptions and conformance SILValidator.DisabledHealthCheckOptions();
    result = dispatch thunk of SetAlgebra.isSuperset(of:)();
    if ((result & 1) == 0)
    {
LABEL_69:
      v75 = 4;
      goto LABEL_70;
    }
  }

  return result;
}

uint64_t SILIndicatorValidator.sensorTypeFrom(indicator:frame:)(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + OBJC_IVAR____TtC10SILManager16SILIndicatorDesc_sensorCategory);
  if (v8 <= 1)
  {
    if (!v8)
    {
      return 0;
    }

    if (v8 == 1)
    {
      return 1;
    }

    goto LABEL_10;
  }

  if (v8 == 2)
  {
    return 2;
  }

  if (v8 != 3)
  {
LABEL_10:
    v10 = SILLogger.unsafeMutableAddressor();
    (*(v5 + 16))(v7, v10, v4);
    v11 = a1;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 134217984;
      *(v14 + 4) = v8;

      _os_log_impl(&dword_262A43000, v12, v13, "Invalid sensor type %ld !!", v14, 0xCu);
      MEMORY[0x266730D70](v14, -1, -1);
    }

    else
    {

      v12 = v11;
    }

    (*(v5 + 8))(v7, v4);
    return 1;
  }

  if ((*((*MEMORY[0x277D85000] & *a1) + 0xE8))(a2))
  {
    return 4;
  }

  else
  {
    return 3;
  }
}

uint64_t SILIndicatorValidator.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 34, 7);
}

Swift::Int_optional __swiftcall BitmaskIterator.next()()
{
  v2 = *(v0 + 16);
  swift_getAssociatedTypeWitness();
  v3 = (MEMORY[0x28223BE20])();
  v29 = &v27 - v4;
  v5 = *(v2 - 8);
  v6 = MEMORY[0x28223BE20](v3);
  v30 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v31 = &v27 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v27 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v27 - v13;
  (*(v5 + 16))(&v27 - v13, v1, v2);
  v15 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v16 = dispatch thunk of BinaryInteger.bitWidth.getter();
  if (v15)
  {
    if (v16 > 64)
    {
      goto LABEL_3;
    }

LABEL_6:
    v21 = dispatch thunk of BinaryInteger._lowWord.getter();
    v18 = *(v5 + 8);
    v18(v14, v2);
    if (v21 <= 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v28 = v12;
    v22 = dispatch thunk of BinaryInteger.trailingZeroBitCount.getter();
    swift_getAssociatedConformanceWitness();
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    v23 = v30;
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    v24 = v22;
    v32 = v22;
    lazy protocol witness table accessor for type Int and conformance Int();
    v25 = v31;
    dispatch thunk of static BinaryInteger.<< infix<A>(_:_:)();
    v18(v23, v2);
    v26 = v28;
    dispatch thunk of static BinaryInteger.~ prefix(_:)();
    v18(v25, v2);
    dispatch thunk of static BinaryInteger.&= infix(_:_:)();
    v18(v26, v2);
    v19 = v24;
    v20 = 0;
    goto LABEL_8;
  }

  if (v16 <= 63)
  {
    goto LABEL_6;
  }

LABEL_3:
  v32 = 0;
  lazy protocol witness table accessor for type Int and conformance Int();
  dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
  v17 = dispatch thunk of static Comparable.< infix(_:_:)();
  v18 = *(v5 + 8);
  v18(v12, v2);
  v18(v14, v2);
  if (v17)
  {
    goto LABEL_7;
  }

LABEL_4:
  v19 = 0;
  v20 = 1;
LABEL_8:
  result.value = v19;
  result.is_nil = v20;
  return result;
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance BitmaskIterator<A>(uint64_t a1)
{
  v3 = specialized Sequence._copyToContiguousArray()();
  (*(*(a1 - 8) + 8))(v1, a1);
  return v3;
}

Swift::Int protocol witness for IteratorProtocol.next() in conformance BitmaskIterator<A>@<X0>(uint64_t a1@<X8>)
{
  v3 = BitmaskIterator.next()();
  *a1 = v3.value;
  *(a1 + 8) = v3.is_nil;
  return v3.value;
}

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = result;
      specialized _NativeDictionary.copy()();
      result = v21;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a5 & 1);
    result = specialized __RawDictionaryStorage.find<A>(_:)(a4);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_14:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    v24 = v23[7] + 20 * result;
    *v24 = a1;
    *(v24 + 8) = a2;
    *(v24 + 16) = a3;
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(result, a4, a1, a2, a3, v23);
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  *(a6[6] + 8 * result) = a2;
  v6 = a6[7] + 20 * result;
  *v6 = a3;
  *(v6 + 8) = a4;
  *(v6 + 16) = a5;
  v7 = a6[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v9;
  }

  return result;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(_BYTE *a1, _BYTE *a2)
{
  if (!a1)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = a2 - a1;
  if (a2 == a1)
  {
    return MEMORY[0x277D84F90];
  }

  result = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(a2 - a1, 0);
  if (a2 > a1)
  {
    if ((v3 & 0x8000000000000000) == 0)
    {
      v6 = result;
      memmove(result + 4, a1, v3);
      return v6;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized Rotation.init(rawValue:)(uint64_t result)
{
  if ((result & 0xFC) != 0)
  {
    return 4;
  }

  else
  {
    return result;
  }
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_So20SILManagerCursorInfoVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySiSo20SILManagerCursorInfoVGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 56); ; i += 8)
    {
      v5 = *(i - 3);
      v13 = *(i - 1);
      v6 = *i;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      v9 = v3[7] + 20 * result;
      *v9 = v13;
      *(v9 + 16) = v6;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t specialized SensorType.init(rawValue:)(uint64_t result)
{
  if (result >= 5u)
  {
    return 5;
  }

  else
  {
    return result;
  }
}

void *specialized SILRenderer.Region.init(extent:surfaces:)(uint64_t a1)
{
  if (a1)
  {
    v2 = specialized _arrayForceCast<A, B>(_:)(a1);
  }

  else
  {
    v8 = 0;
    v6 = 0u;
    v7 = 0u;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SILManager13IOSurfaceLike_pSgMd);
    v2 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v2 + 16) = 3;
    outlined init with copy of SILBackend?(&v6, v2 + 32, &_s10SILManager13IOSurfaceLike_pSgMd);
    outlined init with copy of SILBackend?(&v6, v2 + 72, &_s10SILManager13IOSurfaceLike_pSgMd);
    v3 = v7;
    *(v2 + 112) = v6;
    *(v2 + 128) = v3;
    *(v2 + 144) = v8;
  }

  v1[2] = v2;
  v1[3] = 0;
  v4 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v4 + 16) = 3;
  *(v4 + 32) = -1;
  *(v4 + 40) = 0;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
  *(v4 + 60) = 0;
  *(v4 + 72) = xmmword_262A9AF70;
  *(v4 + 88) = 1;
  *(v4 + 96) = -1;
  *(v4 + 104) = 0;
  *(v4 + 112) = 0;
  *(v4 + 120) = 0;
  *(v4 + 124) = 0;
  *(v4 + 136) = xmmword_262A9AF70;
  *(v4 + 152) = 1;
  *(v4 + 160) = -1;
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;
  *(v4 + 184) = 0;
  *(v4 + 188) = 0;
  *(v4 + 200) = xmmword_262A9AF70;
  *(v4 + 216) = 1;
  v1[4] = v4;
  return v1;
}

uint64_t _sSa9repeating5countSayxGx_SitcfC10SILManager8SILImageC_Tt1g5Tf4gn_n(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x277D84F90];
    }

    v3 = result;
    type metadata accessor for SILImage();
    v4 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    v5 = v4 & 0xFFFFFFFFFFFFFF8;
    *(v5 + 16) = a2;
    *(v5 + 32) = v3;
    v6 = a2 - 1;
    if (v6)
    {
      v7 = (v5 + 40);
      do
      {
        *v7++ = v3;

        --v6;
      }

      while (v6);
    }

    return v4;
  }

  return result;
}

uint64_t outlined copy of (id: UInt64, synchronous: Bool, signpost: OSSignpostIntervalState?)?(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t outlined consume of (id: UInt64, synchronous: Bool, signpost: OSSignpostIntervalState?)?(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t outlined assign with take of IOSurfaceLike?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SILManager13IOSurfaceLike_pSgMd);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t specialized SILRenderer.imageScale(image:scaleX:scaleY:)(uint64_t a1, Swift::Float a2, Swift::Float a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = (*a1 + 288);
  v7 = *v6;
  v8 = (*v6)();
  v9 = (*(*a1 + 296))();
  v10 = scaleDimension(dim:scale:)(v8, a2);
  v11 = scaleDimension(dim:scale:)(v9, a3);
  v12 = *(*a1 + 144);
  v13 = v12();
  v14 = (v13 / v7()) * v10;
  if (COERCE_INT(fabs(v14)) > 2139095039)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v14 <= -9.2234e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v14 >= 9.2234e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v15 = v14;
  type metadata accessor for SILImage();
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  *(v16 + 64) = 0;
  *(v16 + 32) = v10;
  *(v16 + 40) = v11;
  *(v16 + 48) = v15;
  if ((v15 * v11) >> 64 != (v15 * v11) >> 63)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v17 = swift_slowAlloc();
  *(v16 + 56) = v17;
  *(v16 + 72) = 0;
  v18 = (*(*a1 + 304))();
  if ((v9 | v8) < 0)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
  }

  src.data = v18;
  src.height = v9;
  src.width = v8;
  src.rowBytes = v12();
  if ((v11 | v10) < 0)
  {
    goto LABEL_13;
  }

  dest.data = v17;
  dest.height = v11;
  dest.width = v10;
  dest.rowBytes = v15;
  *&transform.b = 0;
  *&transform.tx = 0;
  transform.a = a2;
  transform.d = a3;
  vImageAffineWarp_ARGB8888(&src, &dest, 0, &transform, byte_28753AA38, 0);
  return v16;
}

vImage_Error specialized SILRenderer.imageRotate(image:rotation:)(vImage_Error result, unsigned __int8 a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = 2 * (a2 & 1);
  if (v2 != a2)
  {
    v4 = *result;
    v5 = (*(**result + 304))();
    v6 = (*v4 + 296);
    v7 = *v6;
    v8 = (*v6)();
    if (v8 < 0)
    {
      __break(1u);
    }

    else
    {
      v9 = v8;
      v21 = v5;
      v10 = (*v4 + 288);
      v11 = *v10;
      v12 = (*v10)();
      if ((v12 & 0x8000000000000000) == 0)
      {
        v20 = v11;
        v13 = *(*v4 + 144);
        src.data = v21;
        src.height = v9;
        src.width = v12;
        src.rowBytes = v13();
        v14 = SILImage.inactiveBuffer.getter();
        v15 = v7();
        if ((v15 & 0x8000000000000000) == 0)
        {
          v16 = v15;
          v17 = v20();
          if ((v17 & 0x8000000000000000) == 0)
          {
            dest.data = v14;
            dest.height = v16;
            dest.width = v17;
            dest.rowBytes = v13();
            result = vImageRotate90_ARGB8888(&src, &dest, v2 ^ a2, byte_28753AAB0, 0x200u);
            if (result)
            {
              v18 = SILError.log()();
              lazy protocol witness table accessor for type SILError and conformance SILError();
              swift_allocError();
              *v19 = v18;
              return swift_willThrow();
            }

            else
            {
              v4[9] = v4[9] == 0;
            }

            return result;
          }

LABEL_13:
          __break(1u);
        }

LABEL_12:
        __break(1u);
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_12;
  }

  return result;
}

void specialized SILRenderer.imageComposite(src:ontoDst:at:)(uint64_t a1, uint64_t *a2, double a3, double a4, double a5, double a6)
{
  v10 = a1;
  v11 = a5;
  v12 = v11 / (*(*a1 + 288))();
  *&a6 = a6;
  v13 = *&a6 / (*(*v10 + 296))();
  if (v12 == 1.0 && v13 == 1.0)
  {
  }

  else
  {
    v15 = specialized SILRenderer.imageScale(image:scaleX:scaleY:)(v10, v12, v13);
    v10 = v15;
  }

  v16 = *(*v10 + 120);
  v17 = a3 - (v16)(v15);
  if ((*&v17 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_58;
  }

  if (v17 <= -9.22337204e18)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  if (v17 >= 9.22337204e18)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v18 = v16();
  v20 = a4 - v19;
  if ((*&v20 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  if (v20 <= -9.22337204e18)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (v20 >= 9.22337204e18)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v21 = v17;
  v22 = (*(*v10 + 288))(v18);
  v23 = v17 + v22;
  if (__OFADD__(v17, v22))
  {
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v24 = v20;
  v25 = *a2;
  v26 = (*v25 + 288);
  v27 = *v26;
  v28 = (*v26)();
  if (v28 >= v23)
  {
    v29 = v23;
  }

  else
  {
    v29 = v28;
  }

  v67 = v29;
  v30 = (*(*v10 + 296))();
  v31 = __OFADD__(v24, v30);
  v32 = v24 + v30;
  if (v31)
  {
    goto LABEL_64;
  }

  v33 = (*v25 + 296);
  v34 = *v33;
  v35 = (*v33)();
  if (v35 >= v32)
  {
    v36 = v32;
  }

  else
  {
    v36 = v35;
  }

  v66 = v36;
  if (v27() <= v21)
  {
    goto LABEL_54;
  }

  v37 = v20;
  if (v34() <= v20 || v67 < 0 || v66 < 0)
  {
    goto LABEL_54;
  }

  v38 = v17;
  if (v21 <= 0)
  {
    if (v21 < 0)
    {
      v40 = -v21;
      if (__OFSUB__(0, v21))
      {
LABEL_77:
        __break(1u);
        goto LABEL_78;
      }
    }

    else
    {
      v40 = 0;
    }

    if (v37 <= 0)
    {
      if (v37 < 0)
      {
        v39 = -v37;
        if (__OFSUB__(0, v37))
        {
LABEL_79:
          __break(1u);
          return;
        }

        v37 = 0;
        v38 = 0;
        goto LABEL_41;
      }

      v37 = 0;
    }

    v38 = 0;
    v39 = 0;
    goto LABEL_41;
  }

  if (v37 > 0)
  {
LABEL_29:
    v39 = 0;
    v40 = 0;
    goto LABEL_41;
  }

  if ((v37 & 0x8000000000000000) == 0)
  {
    v37 = 0;
    goto LABEL_29;
  }

  v39 = -v37;
  if (__OFSUB__(0, v37))
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  v37 = 0;
  v40 = 0;
LABEL_41:
  v41 = *(*v10 + 144);
  v42 = v41();
  v43 = v39 * v42;
  if ((v39 * v42) >> 64 != (v39 * v42) >> 63)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  if ((v40 - 0x2000000000000000) >> 62 != 3)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v44 = v43 + 4 * v40;
  if (__OFADD__(v43, 4 * v40))
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v45 = *(*v25 + 144);
  v46 = v45();
  v47 = v37 * v46;
  if ((v37 * v46) >> 64 != (v37 * v46) >> 63)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  if (v38 >> 61)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v31 = __OFADD__(v47, 4 * v38);
  v48 = v47 + 4 * v38;
  if (v31)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v64 = v48;
  v65 = v44;
  v49 = (*(*v10 + 304))();
  v50 = v41();
  if ((v50 & 0x8000000000000000) != 0)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v51 = v50;
  if (HIDWORD(v50))
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v52 = (*(*v25 + 304))();
  v53 = v45();
  if (v53 > 0xFFFFFFFFLL)
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v62 = v67 - v38;
  if ((v67 - v38) > 0xFFFFFFFFLL)
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v63 = v66 - v37;
  if (((v62 | (v66 - v37) | v53) & 0x8000000000000000) != 0)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  if (v63 > 0xFFFFFFFFLL)
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  sil_sover_argb8888(v49 + v65, v51, v52 + v64, v53, v62, v63, v54, v55, v56, v57, v58, v59, v60, v61);
LABEL_54:
}