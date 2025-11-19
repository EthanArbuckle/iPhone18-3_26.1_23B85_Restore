uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type Date and conformance Date()
{
  result = lazy protocol witness table cache variable for type Date and conformance Date;
  if (!lazy protocol witness table cache variable for type Date and conformance Date)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date and conformance Date);
  }

  return result;
}

void type metadata completion function for CLHistoricalPlaceContext()
{
  type metadata accessor for Date?(319, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for String?(319, &lazy cache variable for type metadata for String?);
    if (v1 <= 0x3F)
    {
      type metadata accessor for String?(319, &lazy cache variable for type metadata for Data?);
      if (v2 <= 0x3F)
      {
        type metadata accessor for CLLocationCoordinate2D(319);
        if (v3 <= 0x3F)
        {
          type metadata accessor for Date?(319, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8]);
          if (v4 <= 0x3F)
          {
            type metadata accessor for CLClientDiagnosticMask(319);
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

void type metadata accessor for Date?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type CLIdentifiableConnectionSequence<CLHistoricalPlaceContext> and conformance CLIdentifiableConnectionSequence<A>()
{
  result = lazy protocol witness table cache variable for type CLIdentifiableConnectionSequence<CLHistoricalPlaceContext> and conformance CLIdentifiableConnectionSequence<A>;
  if (!lazy protocol witness table cache variable for type CLIdentifiableConnectionSequence<CLHistoricalPlaceContext> and conformance CLIdentifiableConnectionSequence<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA24CLHistoricalPlaceContextVGMd, &_s12CoreLocation32CLIdentifiableConnectionSequenceVyAA24CLHistoricalPlaceContextVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLIdentifiableConnectionSequence<CLHistoricalPlaceContext> and conformance CLIdentifiableConnectionSequence<A>);
  }

  return result;
}

uint64_t CLBackgroundActivitySession.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 24) = 0;
  *(v0 + 16) = [objc_opt_self() backgroundActivitySession];
  return v0;
}

uint64_t CLBackgroundActivitySession.init()()
{
  *(v0 + 24) = 0;
  *(v0 + 16) = [objc_opt_self() backgroundActivitySession];
  return v0;
}

uint64_t CLBackgroundActivitySession.getDiagnostics()()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    v2 = *(v0 + 16);
    v3 = type metadata accessor for CLBackgroundActivitySession.Diagnostics(0);
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    swift_allocObject();
    v6 = v2;
    v7 = v0;
    v1 = specialized CLBackgroundActivitySession.Diagnostics.init(_:)(v6);

    v8 = *(v0 + 24);
    *(v7 + 24) = v1;
  }

  return v1;
}

uint64_t CLBackgroundActivitySession.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t CLBackgroundActivitySession.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t CLLocationManager.backgroundActivitySession()()
{
  type metadata accessor for CLBackgroundActivitySession();
  v1 = swift_allocObject();
  *(v1 + 24) = 0;
  *(v1 + 16) = [objc_opt_self() sessionWithLocationManager:v0 queue:0 handler:0];
  return v1;
}

uint64_t CLBackgroundActivitySession.Diagnostics.Iterator.next()(uint64_t a1)
{
  v3 = *(MEMORY[0x1E69E8680] + 4);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy12CoreLocation27CLBackgroundActivitySessionC10DiagnosticV_GMd, &_sScS8IteratorVy12CoreLocation27CLBackgroundActivitySessionC10DiagnosticV_GMR);
  *v4 = v1;
  v4[1] = protocol witness for AsyncIteratorProtocol.next() in conformance CLIdentifiableConnectionSequence<A>.Iterator;

  return MEMORY[0x1EEE6D9D0](a1, v5);
}

uint64_t protocol witness for AsyncIteratorProtocol.next() in conformance CLBackgroundActivitySession.Diagnostics.Iterator(uint64_t a1)
{
  v3 = *(MEMORY[0x1E69E8680] + 4);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy12CoreLocation27CLBackgroundActivitySessionC10DiagnosticV_GMd, &_sScS8IteratorVy12CoreLocation27CLBackgroundActivitySessionC10DiagnosticV_GMR);
  *v4 = v1;
  v4[1] = protocol witness for AsyncIteratorProtocol.next() in conformance CLServiceSession.Diagnostics.Iterator;

  return MEMORY[0x1EEE6D9D0](a1, v5);
}

uint64_t CLBackgroundActivitySession.Diagnostics.makeAsyncIterator()()
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, logger);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1C5333000, v1, v2, "#backgroundActivitySession makeAsyncIterator", v3, 2u);
    MEMORY[0x1C6945100](v3, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy12CoreLocation27CLBackgroundActivitySessionC10DiagnosticVGMd, &_sScSy12CoreLocation27CLBackgroundActivitySessionC10DiagnosticVGMR);
  return AsyncStream.makeAsyncIterator()();
}

void closure #1 in CLBackgroundActivitySession.Diagnostics.init(_:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy12CoreLocation27CLBackgroundActivitySessionC10DiagnosticV__GMd, &_sScS12ContinuationV11YieldResultOy12CoreLocation27CLBackgroundActivitySessionC10DiagnosticV__GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v12 - v5;
  v12[1] = a1;
  v7 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy12CoreLocation27CLBackgroundActivitySessionC10DiagnosticV_GMd, &_sScS12ContinuationVy12CoreLocation27CLBackgroundActivitySessionC10DiagnosticV_GMR);
  AsyncStream.Continuation.yield(_:)();
  (*(v3 + 8))(v6, v2);
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, logger);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1C5333000, v9, v10, "#backgroundActivitySession yielding a Diagnostic", v11, 2u);
    MEMORY[0x1C6945100](v11, -1, -1);
  }
}

id closure #2 in CLBackgroundActivitySession.Diagnostics.init(_:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, logger);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1C5333000, v4, v5, "#backgroundActivitySession terminating", v6, 2u);
    MEMORY[0x1C6945100](v6, -1, -1);
  }

  v7 = *(a2 + OBJC_IVAR____TtCC12CoreLocation27CLBackgroundActivitySession11Diagnostics_bas);

  return [v7 invalidate];
}

uint64_t CLBackgroundActivitySession.Diagnostics.deinit()
{
  v1 = OBJC_IVAR____TtCC12CoreLocation27CLBackgroundActivitySession11Diagnostics_stream;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy12CoreLocation27CLBackgroundActivitySessionC10DiagnosticVGMd, &_sScSy12CoreLocation27CLBackgroundActivitySessionC10DiagnosticVGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t CLBackgroundActivitySession.Diagnostics.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCC12CoreLocation27CLBackgroundActivitySession11Diagnostics_stream;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy12CoreLocation27CLBackgroundActivitySessionC10DiagnosticVGMd, &_sScSy12CoreLocation27CLBackgroundActivitySessionC10DiagnosticVGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for AsyncSequence.makeAsyncIterator() in conformance CLBackgroundActivitySession.Diagnostics()
{
  v1 = *v0;
  CLBackgroundActivitySession.Diagnostics.makeAsyncIterator()();
}

uint64_t CLBackgroundActivitySession.diagnostics.getter()
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, logger);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1C5333000, v1, v2, "#backgroundActivitySession creating a Diagnostics AsyncSequence", v3, 2u);
    MEMORY[0x1C6945100](v3, -1, -1);
  }

  return CLBackgroundActivitySession.getDiagnostics()();
}

unint64_t lazy protocol witness table accessor for type CLBackgroundActivitySession.Diagnostics.Iterator and conformance CLBackgroundActivitySession.Diagnostics.Iterator()
{
  result = lazy protocol witness table cache variable for type CLBackgroundActivitySession.Diagnostics.Iterator and conformance CLBackgroundActivitySession.Diagnostics.Iterator;
  if (!lazy protocol witness table cache variable for type CLBackgroundActivitySession.Diagnostics.Iterator and conformance CLBackgroundActivitySession.Diagnostics.Iterator)
  {
    type metadata accessor for CLBackgroundActivitySession.Diagnostics.Iterator(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLBackgroundActivitySession.Diagnostics.Iterator and conformance CLBackgroundActivitySession.Diagnostics.Iterator);
  }

  return result;
}

void type metadata completion function for CLBackgroundActivitySession.Diagnostics()
{
  type metadata accessor for AsyncStream<CLBackgroundActivitySession.Diagnostic>(319, &lazy cache variable for type metadata for AsyncStream<CLBackgroundActivitySession.Diagnostic>, MEMORY[0x1E69E8698]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void type metadata completion function for CLBackgroundActivitySession.Diagnostics.Iterator()
{
  type metadata accessor for AsyncStream<CLBackgroundActivitySession.Diagnostic>(319, &lazy cache variable for type metadata for AsyncStream<CLBackgroundActivitySession.Diagnostic>.Iterator, MEMORY[0x1E69E8688]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void type metadata accessor for AsyncStream<CLBackgroundActivitySession.Diagnostic>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for CLBackgroundActivitySession.Diagnostic);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t specialized CLBackgroundActivitySession.Diagnostics.init(_:)(void *a1)
{
  v35 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOy12CoreLocation27CLBackgroundActivitySessionC10DiagnosticV__GMd, &_sScS12ContinuationV15BufferingPolicyOy12CoreLocation27CLBackgroundActivitySessionC10DiagnosticV__GMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v32 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy12CoreLocation27CLBackgroundActivitySessionC10DiagnosticV_GMd, &_sScS12ContinuationVy12CoreLocation27CLBackgroundActivitySessionC10DiagnosticV_GMR);
  v33 = *(v6 - 8);
  v7 = *(v33 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v32 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy12CoreLocation27CLBackgroundActivitySessionC10DiagnosticVGMd, &_sScSy12CoreLocation27CLBackgroundActivitySessionC10DiagnosticVGMR);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v32 - v15;
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8650], v1);
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  v17 = v5;
  v18 = v34;
  (*(v2 + 8))(v17, v1);
  v36 = v13;
  v37 = v12;
  v19 = v12;
  v20 = v6;
  v21 = v33;
  (*(v13 + 16))(v18 + OBJC_IVAR____TtCC12CoreLocation27CLBackgroundActivitySession11Diagnostics_stream, v16, v19);
  v22 = v35;
  *(v18 + OBJC_IVAR____TtCC12CoreLocation27CLBackgroundActivitySession11Diagnostics_bas) = v35;
  (*(v21 + 16))(v9, v11, v20);
  v23 = (*(v21 + 80) + 16) & ~*(v21 + 80);
  v24 = swift_allocObject();
  (*(v21 + 32))(v24 + v23, v9, v20);
  aBlock[4] = partial apply for closure #1 in CLBackgroundActivitySession.Diagnostics.init(_:);
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed CLServiceSessionDiagnostic) -> ();
  aBlock[3] = &block_descriptor_4;
  v25 = _Block_copy(aBlock);
  v26 = v22;

  [v26 setHandler_];
  _Block_release(v25);
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  __swift_project_value_buffer(v27, logger);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_1C5333000, v28, v29, "#backgroundActivitySession successfully created", v30, 2u);
    MEMORY[0x1C6945100](v30, -1, -1);
  }

  AsyncStream.Continuation.onTermination.setter();
  (*(v21 + 8))(v11, v20);
  (*(v36 + 8))(v16, v37);
  return v18;
}

void partial apply for closure #1 in CLBackgroundActivitySession.Diagnostics.init(_:)(void *a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy12CoreLocation27CLBackgroundActivitySessionC10DiagnosticV_GMd, &_sScS12ContinuationVy12CoreLocation27CLBackgroundActivitySessionC10DiagnosticV_GMR) - 8) + 80);

  closure #1 in CLBackgroundActivitySession.Diagnostics.init(_:)(a1);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return MEMORY[0x1EEE6ACD8]();
}

{
  return MEMORY[0x1EEE6AD28]();
}

CLLocationCoordinate2D CLLocationCoordinate2DMake(CLLocationDegrees latitude, CLLocationDegrees longitude)
{
  MEMORY[0x1EEDE89C8](latitude, longitude);
  result.longitude = v3;
  result.latitude = v2;
  return result;
}