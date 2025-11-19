uint64_t protocol witness for AsyncSequence.makeAsyncIterator() in conformance AVMetrics<A>@<X0>(void **a1@<X8>)
{
  AVMetrics.makeAsyncIterator()(a1);

  return swift_unknownObjectRelease();
}

uint64_t AVMergedMetrics.SubscriberDelegate.__allocating_init(streamContinuation:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = direct field offset for AVMergedMetrics.SubscriberDelegate.streamContinuation;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySo13AVMetricEventC_So0bC15StreamPublisher_pt_GMd);
  (*(*(v4 - 8) + 32))(v2 + v3, a1, v4);
  return v2;
}

uint64_t AVMergedMetrics.SubscriberDelegate.init(streamContinuation:)(uint64_t a1)
{
  v3 = direct field offset for AVMergedMetrics.SubscriberDelegate.streamContinuation;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySo13AVMetricEventC_So0bC15StreamPublisher_pt_GMd);
  (*(*(v4 - 8) + 32))(v1 + v3, a1, v4);
  return v1;
}

uint64_t AVMergedMetrics.SubscriberDelegate.publisher(_:didReceive:)(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOySo13AVMetricEventC_So0dE15StreamPublisher_pt__GMd);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v10 - v6;
  v10[0] = a2;
  v10[1] = a1;
  v8 = a2;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySo13AVMetricEventC_So0bC15StreamPublisher_pt_GMd);
  AsyncStream.Continuation.yield(_:)();
  return (*(v5 + 8))(v7, v4);
}

uint64_t @objc AVMergedMetrics.SubscriberDelegate.publisher(_:didReceive:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_unknownObjectRetain();
  v6 = a4;

  AVMergedMetrics.SubscriberDelegate.publisher(_:didReceive:)(a3, v6);
  swift_unknownObjectRelease();
}

uint64_t AVMergedMetrics.SubscriberDelegate.deinit()
{
  v1 = direct field offset for AVMergedMetrics.SubscriberDelegate.streamContinuation;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySo13AVMetricEventC_So0bC15StreamPublisher_pt_GMd);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t AVMergedMetrics.SubscriberDelegate.__deallocating_deinit()
{
  v1 = direct field offset for AVMergedMetrics.SubscriberDelegate.streamContinuation;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySo13AVMetricEventC_So0bC15StreamPublisher_pt_GMd);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t AVMergedMetrics.makeAsyncIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = 8 * v4;
  v41 = a2;
  if (v4 == 1)
  {
    TupleTypeMetadata = type metadata accessor for AVMetrics();
    v7 = TupleTypeMetadata;
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    if (v4)
    {
      v8 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
      v9 = (&v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
      v10 = v4;
      do
      {
        v8 += 8;
        *v9++ = type metadata accessor for AVMetrics();
        --v10;
      }

      while (v10);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v7 = TupleTypeMetadata;
  }

  v11 = *(v7 - 8);
  v12 = MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = &v37;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v37 - v16;
  v39 = &v37;
  v18 = *(v2 + 8);
  v19 = *(v2 + 16);
  v38 = *v2;
  v45[0] = v38;
  v45[1] = v18;
  v46 = v19;
  v20 = *(v2 + 32);
  v21 = *(v2 + 40);
  v43[0] = *(v2 + 24);
  v43[1] = v20;
  v44 = v21;
  MEMORY[0x1EEE9AC00](v15);
  v22 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v11 + 16);
  v24 = v2 + *(a1 + 56);
  v42 = v25;
  v23(v14, v24, v25);
  if (v4)
  {
    v26 = (v42 + 32);
    v27 = (&v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    v28 = v4;
    do
    {
      if (v4 == 1)
      {
        v29 = 0;
        v30 = v17;
      }

      else
      {
        v29 = *v26;
        v30 = &v17[v29];
      }

      v31 = *&v14[v29 + 8];
      v32 = v14[v29 + 16];
      *&v17[v29] = *&v14[v29];
      *(v30 + 1) = v31;
      v30[16] = v32;
      *v27++ = v30;
      swift_unknownObjectRetain();
      v26 += 4;
      --v28;
    }

    while (v28);
  }

  v33 = *(a1 + 24);
  v34 = *(a1 + 32);
  v35 = *(a1 + 40);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  AVMergedMetrics.AsyncIterator.init(chronologicallyMerging:_:_:)(v45, v43, v22, v4, v33, v34, v35, v41);
  return (*(v11 + 8))(v14, v42);
}

uint64_t AVMergedMetrics.AsyncIterator.init(chronologicallyMerging:_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v50 = a7;
  v49 = a6;
  v48 = a5;
  v45[0] = a3;
  v65 = a8;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySo13AVMetricEventC_So0bC15StreamPublisher_pt_GMd);
  v63 = *(v14 - 8);
  v64 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v62 = v45 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOySo13AVMetricEventC_So0dE15StreamPublisher_pt__GMd);
  v59 = *(v16 - 8);
  v60 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v55 = v45 - v17;
  v51 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v47 = *(v51 - 1);
  MEMORY[0x1EEE9AC00](v51);
  v46 = v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x1EEE9AC00](v19);
  v45[1] = v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  MEMORY[0x1EEE9AC00](v21 - 8);
  v67 = a4;
  v68 = a5;
  v69 = a6;
  v70 = a7;
  v66 = type metadata accessor for AVMergedMetrics.AsyncIterator();
  v61 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v23 = v45 - v22;
  v24 = a1[1];
  v52 = *a1;
  v54 = v24;
  v53 = *(a1 + 16);
  v25 = a2[1];
  v56 = *a2;
  v58 = v25;
  v57 = *(a2 + 16);
  v26 = [objc_opt_self() eventStream];
  *v23 = v26;
  type metadata accessor for NSValue(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v27 = v26;
  static DispatchQoS.unspecified.getter();
  v67 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v47 + 104))(v46, *MEMORY[0x1E69E8090], v51);
  v28 = v66;
  v29 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v23 + 2) = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13AVMetricEventC_So0aB15StreamPublisher_ptMd);
  v31 = v59;
  v30 = v60;
  v32 = v55;
  (*(v59 + 104))(v55, *MEMORY[0x1E69E8650], v60);
  v33 = *(v28 + 64);
  v51 = v29;
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v31 + 8))(v32, v30);
  v67 = a4;
  v68 = v48;
  v69 = v49;
  v70 = v50;
  type metadata accessor for AVMergedMetrics.SubscriberDelegate();
  v34 = v62;
  (*(v63 + 16))(v62, &v23[v33], v64);
  v35 = AVMergedMetrics.SubscriberDelegate.__allocating_init(streamContinuation:)(v34);
  *(v23 + 1) = v35;
  v36 = v66;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSySo13AVMetricEventC_So0aB15StreamPublisher_ptGMd);
  AsyncStream.makeAsyncIterator()();
  v37 = v51;
  [v27 setSubscriber:v35 queue:v51];

  v67 = v52;
  v68 = v54;
  LOBYTE(v69) = v53;
  AVMetrics.enableSubscription(forMetricEventStream:)(v27);
  swift_unknownObjectRelease();
  v67 = v56;
  v68 = v58;
  LOBYTE(v69) = v57;
  AVMetrics.enableSubscription(forMetricEventStream:)(v27);
  swift_unknownObjectRelease();

  if (!a4)
  {
    return (*(v61 + 32))(v65, v23, v36);
  }

  v38 = v61;
  v39 = v45[0];
  v40 = a4;
  do
  {
    v41 = *v39++;
    v42 = v41[1];
    v43 = *(v41 + 16);
    v67 = *v41;
    v68 = v42;
    LOBYTE(v69) = v43;
    swift_unknownObjectRetain();
    AVMetrics.enableSubscription(forMetricEventStream:)(v27);
    swift_unknownObjectRelease();
    --v40;
  }

  while (v40);
  (*(v38 + 32))(v65, v23, v36);
  do
  {
    result = swift_unknownObjectRelease();
    --a4;
  }

  while (a4);
  return result;
}

uint64_t AVMergedMetrics.AsyncIterator.next()()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVySo13AVMetricEventC_So0bC15StreamPublisher_pt_GMd);
  *v1 = v0;
  v1[1] = AVMergedMetrics.AsyncIterator.next();

  return MEMORY[0x1EEE6D9D0](v0 + 16, v2);
}

{

  return MEMORY[0x1EEE6DFA0](AVMergedMetrics.AsyncIterator.next(), 0, 0);
}

{
  return (*(v0 + 8))(*(v0 + 16), *(v0 + 24));
}

uint64_t protocol witness for AsyncIteratorProtocol.next() in conformance AVMergedMetrics<A, B, Pack{repeat C}>.AsyncIterator(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = protocol witness for AsyncIteratorProtocol.next() in conformance AVMergedMetrics<A, B, Pack{repeat C}>.AsyncIterator;

  return AVMergedMetrics.AsyncIterator.next()();
}

uint64_t protocol witness for AsyncIteratorProtocol.next() in conformance AVMergedMetrics<A, B, Pack{repeat C}>.AsyncIterator(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;

  if (!v2)
  {
    v8 = *(v6 + 16);
    *v8 = a1;
    v8[1] = a2;
  }

  v9 = *(v7 + 8);

  return v9();
}

uint64_t _s12AVFoundation15AVMergedMetricsV13AsyncIteratorVyxq_q0_q0_Qp_QP_GScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTW(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  v12 = swift_task_alloc();
  *(v6 + 32) = v12;
  *v12 = v6;
  v12[1] = _s12AVFoundation15AVMergedMetricsV13AsyncIteratorVyxq_q0_q0_Qp_QP_GScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ0_;

  return MEMORY[0x1EEE6D8E0](a1, a2, a3, a5, a6, v6 + 16);
}

uint64_t _s12AVFoundation15AVMergedMetricsV13AsyncIteratorVyxq_q0_q0_Qp_QP_GScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ0_()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    **(v2 + 24) = *(v2 + 16);
  }

  v4 = *(v3 + 8);

  return v4();
}

uint64_t protocol witness for AsyncSequence.makeAsyncIterator() in conformance AVMergedMetrics<A, B, Pack{repeat C}>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AVMergedMetrics.makeAsyncIterator()(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

char *AVMetricPlayerItemLikelyToKeepUpEvent.loadedTimeRanges.getter()
{
  v1 = [v0 loadedTimeRanges];
  type metadata accessor for NSValue(0, &lazy cache variable for type metadata for NSValue);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_17:

    return MEMORY[0x1E69E7CC0];
  }

  if (v2 < 0)
  {
    v13 = v2;
  }

  else
  {
    v13 = v2 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = MEMORY[0x1CCA86B70](v13);
  if (!v3)
  {
    goto LABEL_17;
  }

LABEL_3:
  v17 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3 & ~(v3 >> 63), 0);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v6 = v17;
    v7 = v3 - 1;
    if ((v2 & 0xC000000000000001) == 0)
    {
      goto LABEL_6;
    }

LABEL_5:
    for (i = MEMORY[0x1CCA86AE0](v5, v2); ; i = *(v2 + 8 * v5 + 32))
    {
      v9 = i;
      [i CMTimeRangeValue];

      v11 = *(v17 + 16);
      v10 = *(v17 + 24);
      if (v11 >= v10 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
      }

      *(v17 + 16) = v11 + 1;
      v12 = (v17 + 48 * v11);
      v12[3] = v15;
      v12[4] = v16;
      v12[2] = v14;
      if (v7 == v5)
      {
        break;
      }

      ++v5;
      if ((v2 & 0xC000000000000001) != 0)
      {
        goto LABEL_5;
      }

LABEL_6:
      ;
    }

    return v6;
  }

  __break(1u);
  return result;
}

uint64_t type metadata instantiation function for AVMetrics()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AVMetrics(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t storeEnumTagSinglePayload for AVMetrics(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata completion function for AVMetrics.SubscriberDelegate()
{
  result = type metadata accessor for AsyncStream.Continuation();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t type metadata completion function for AVMetrics.AsyncIterator()
{
  result = type metadata accessor for NSValue(319, &lazy cache variable for type metadata for AVMetricEventStream);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for AVMetricEventStreamSubscriber();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for NSValue(319, &lazy cache variable for type metadata for OS_dispatch_queue);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for AsyncStream();
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for AsyncStream.Continuation();
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for AsyncStream.Iterator();
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

unint64_t type metadata accessor for AVMetricEventStreamSubscriber()
{
  result = lazy cache variable for type metadata for AVMetricEventStreamSubscriber;
  if (!lazy cache variable for type metadata for AVMetricEventStreamSubscriber)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for AVMetricEventStreamSubscriber);
  }

  return result;
}

uint64_t type metadata completion function for AVMergedMetrics(uint64_t a1)
{
  result = type metadata accessor for AVMetrics();
  if (v3 <= 0x3F)
  {
    v13[5] = 0;
    v14 = result;
    result = type metadata accessor for AVMetrics();
    if (v4 <= 0x3F)
    {
      v13[6] = 0;
      v15 = result;
      v5 = *(a1 + 16);
      if (v5 == 1)
      {
        result = type metadata accessor for AVMetrics();
        if (v6 > 0x3F)
        {
          return result;
        }

        result = swift_checkMetadataState();
        if (v7 > 0x3F)
        {
          return result;
        }

LABEL_11:
        v13[7] = 0;
        v16 = result;
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }

      MEMORY[0x1EEE9AC00](result);
      if (v5)
      {
        v9 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
        v10 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
        v11 = v5;
        do
        {
          v9 += 8;
          *v10++ = type metadata accessor for AVMetrics();
          --v11;
        }

        while (v11);
      }

      result = swift_getTupleTypeMetadata();
      if (v12 <= 0x3F)
      {
        goto LABEL_11;
      }
    }
  }

  return result;
}

void type metadata completion function for AVMergedMetrics.SubscriberDelegate()
{
  type metadata accessor for AsyncStream<(AVMetricEvent, AVMetricEventStreamPublisher)>.Continuation(319, &lazy cache variable for type metadata for AsyncStream<(AVMetricEvent, AVMetricEventStreamPublisher)>.Continuation, MEMORY[0x1E69E8660]);
  if (v0 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void type metadata completion function for AVMergedMetrics.AsyncIterator()
{
  type metadata accessor for NSValue(319, &lazy cache variable for type metadata for AVMetricEventStream);
  if (v0 <= 0x3F)
  {
    type metadata accessor for AVMetricEventStreamSubscriber();
    if (v1 <= 0x3F)
    {
      type metadata accessor for NSValue(319, &lazy cache variable for type metadata for OS_dispatch_queue);
      if (v2 <= 0x3F)
      {
        type metadata accessor for AsyncStream<(AVMetricEvent, AVMetricEventStreamPublisher)>.Continuation(319, &lazy cache variable for type metadata for AsyncStream<(AVMetricEvent, AVMetricEventStreamPublisher)>, MEMORY[0x1E69E8698]);
        if (v3 <= 0x3F)
        {
          type metadata accessor for AsyncStream<(AVMetricEvent, AVMetricEventStreamPublisher)>.Continuation(319, &lazy cache variable for type metadata for AsyncStream<(AVMetricEvent, AVMetricEventStreamPublisher)>.Continuation, MEMORY[0x1E69E8660]);
          if (v4 <= 0x3F)
          {
            type metadata accessor for AsyncStream<(AVMetricEvent, AVMetricEventStreamPublisher)>.Continuation(319, &lazy cache variable for type metadata for AsyncStream<(AVMetricEvent, AVMetricEventStreamPublisher)>.Iterator, MEMORY[0x1E69E8688]);
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

void type metadata accessor for AsyncStream<(AVMetricEvent, AVMetricEventStreamPublisher)>.Continuation(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSo13AVMetricEventC_So0aB15StreamPublisher_ptMd);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t specialized AVMetrics.SubscriberDelegate.publisher(_:didReceive:)(void *a1)
{
  v2 = type metadata accessor for AsyncStream.Continuation.YieldResult();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v8 - v4;
  v8[1] = swift_dynamicCastUnknownClassUnconditional();
  type metadata accessor for AsyncStream.Continuation();
  v6 = a1;
  AsyncStream.Continuation.yield(_:)();
  return (*(v3 + 8))(v5, v2);
}

unint64_t lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes()
{
  result = lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes;
  if (!lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A];
  if (!lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A]);
  }

  return result;
}

uint64_t AVVideoComposition.outputBufferDescription.getter()
{
  v1 = [v0 outputBufferDescription];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = *(v3 + 16);
  if (v4)
  {
    v13 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
    v5 = v13;
    v6 = v3 + 32;
    do
    {
      outlined init with copy of Sendable(v6, v12);
      outlined init with copy of Sendable(v12, v11);
      type metadata accessor for CMTagCollectionRef(0);
      swift_dynamicCast();
      v7 = MEMORY[0x1CCA86810]();
      __swift_destroy_boxed_opaque_existential_0(v12);
      v13 = v5;
      v9 = *(v5 + 16);
      v8 = *(v5 + 24);
      if (v9 >= v8 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1);
        v5 = v13;
      }

      *(v5 + 16) = v9 + 1;
      *(v5 + 8 * v9 + 32) = v7;
      v6 += 32;
      --v4;
    }

    while (v4);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v5;
}

size_t AVVideoComposition.spatialVideoConfigurations.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo22CMFormatDescriptionRefa9CoreMediaE10ExtensionsV5ValueV35CameraCalibrationDataLensCollectionOSgMd);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v36 = &v35 - v2;
  v3 = type metadata accessor for AVSpatialVideoConfiguration();
  v41 = *(v3 - 1);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v35 - v7;
  v9 = [v0 spatialVideoConfigurations];
  type metadata accessor for NSValue(0, &lazy cache variable for type metadata for AVSpatialVideoConfiguration);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v10 >> 62))
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_25:

    return MEMORY[0x1E69E7CC0];
  }

  if (v10 < 0)
  {
    v34 = v10;
  }

  else
  {
    v34 = v10 & 0xFFFFFFFFFFFFFF8;
  }

  v11 = MEMORY[0x1CCA86B70](v34);
  if (!v11)
  {
    goto LABEL_25;
  }

LABEL_3:
  v42 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11 & ~(v11 >> 63), 0);
  if ((v11 & 0x8000000000000000) == 0)
  {
    v13 = 0;
    v14 = v42;
    v37 = v10 & 0xC000000000000001;
    v38 = v11;
    v39 = v10;
    v40 = v8;
    do
    {
      if (v37)
      {
        v15 = MEMORY[0x1CCA86AE0](v13, v10);
      }

      else
      {
        v15 = *(v10 + 8 * v13 + 32);
      }

      v16 = v15;
      v17 = type metadata accessor for CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection();
      (*(*(v17 - 8) + 56))(v6, 1, 1, v17);
      v18 = &v6[v3[5]];
      *v18 = 0;
      v18[4] = 1;
      v19 = &v6[v3[6]];
      *v19 = 0;
      v19[4] = 1;
      v20 = &v6[v3[7]];
      *v20 = 0;
      v20[4] = 1;
      if ([v16 cameraCalibrationDataLensCollection])
      {
        v21 = v36;
        CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.init(rawValue:)();
        outlined assign with take of CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection?(v21, v6);
      }

      v22 = [v16 horizontalFieldOfView];
      if (v22)
      {
        v23 = v22;
        v24 = [v22 unsignedIntValue];

        *v18 = v24;
        v18[4] = 0;
      }

      v25 = [v16 cameraSystemBaseline];
      if (v25)
      {
        v26 = v25;
        v27 = [v25 unsignedIntValue];

        *v19 = v27;
        v19[4] = 0;
      }

      v28 = [v16 disparityAdjustment];
      v10 = v39;
      if (v28)
      {
        v29 = v28;
        v30 = [v28 intValue];

        *v20 = v30;
        v20[4] = 0;
      }

      else
      {
      }

      v31 = v40;
      outlined init with take of AVSpatialVideoConfiguration(v6, v40);
      v42 = v14;
      v33 = *(v14 + 16);
      v32 = *(v14 + 24);
      if (v33 >= v32 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v32 > 1, v33 + 1, 1);
        v14 = v42;
      }

      ++v13;
      *(v14 + 16) = v33 + 1;
      outlined init with take of AVSpatialVideoConfiguration(v31, v14 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v33);
    }

    while (v38 != v13);

    return v14;
  }

  __break(1u);
  return result;
}

Class @objc AVVideoComposition.sourceSampleDataTrackIDs.getter(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v5.super.isa;
}

char *AVVideoComposition.sourceSampleDataTrackIDs.getter()
{
  v1 = [v0 sourceSampleDataTrackIDs];
  type metadata accessor for NSValue(0, &lazy cache variable for type metadata for NSNumber);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_16:

    return MEMORY[0x1E69E7CC0];
  }

  if (v2 < 0)
  {
    v12 = v2;
  }

  else
  {
    v12 = v2 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = MEMORY[0x1CCA86B70](v12);
  if (!v3)
  {
    goto LABEL_16;
  }

LABEL_3:
  v13 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3 & ~(v3 >> 63), 0);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v6 = v13;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1CCA86AE0](v5, v2);
      }

      else
      {
        v7 = *(v2 + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = [v7 intValue];

      v11 = *(v13 + 16);
      v10 = *(v13 + 24);
      if (v11 >= v10 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
      }

      ++v5;
      *(v13 + 16) = v11 + 1;
      *(v13 + 4 * v11 + 32) = v9;
    }

    while (v3 != v5);

    return v6;
  }

  __break(1u);
  return result;
}

void @objc AVMutableVideoComposition.sourceSampleDataTrackIDs.setter(void *a1)
{
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = a1;
  AVMutableVideoComposition.sourceSampleDataTrackIDs.setter(v2);
}

void AVMutableVideoComposition.sourceSampleDataTrackIDs.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v3 = 32;
    do
    {
      Int32._bridgeToObjectiveC()();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v3 += 4;
      --v2;
    }

    while (v2);
  }

  type metadata accessor for NSValue(0, &lazy cache variable for type metadata for NSNumber);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v1 setSourceSampleDataTrackIDs_];
}

Swift::Void __swiftcall AVMutableVideoComposition.setOutputBufferDescription(_:)(Swift::OpaquePointer_optional a1)
{
  v2 = v1;
  if (a1.value._rawValue)
  {
    rawValue = a1.value._rawValue;
    v4 = *(a1.value._rawValue + 2);
    if (v4)
    {
      v14 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
      v5 = v14;
      v6 = rawValue + 32;
      do
      {

        v7 = Array<A>.tagCollection.getter();
        type metadata accessor for CMTagCollectionRef(0);
        v13 = v8;

        *&v12 = v7;
        v14 = v5;
        v10 = *(v5 + 16);
        v9 = *(v5 + 24);
        if (v10 >= v9 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
          v5 = v14;
        }

        *(v5 + 16) = v10 + 1;
        outlined init with take of Any(&v12, (v5 + 32 * v10 + 32));
        v6 += 8;
        --v4;
      }

      while (v4);
    }

    v11.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v11.super.isa = 0;
  }

  [v2 setOutputBufferDescription_];
}

void *AVCIImageFilteringResult.ciContext.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

uint64_t AVCIImageFilteringResult.init(resultImage:ciContext:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t AVVideoComposition.init(applyingFiltersTo:applier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[21] = a5;
  v6[22] = v5;
  v6[19] = a3;
  v6[20] = a4;
  if (a1)
  {
    swift_getObjectType();
    v7 = dispatch thunk of Actor.unownedExecutor.getter();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v6[23] = v7;
  v6[24] = v9;

  return MEMORY[0x1EEE6DFA0](AVVideoComposition.init(applyingFiltersTo:applier:), v7, v9);
}

uint64_t AVVideoComposition.init(applyingFiltersTo:applier:)()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 10;
  v4 = v1[21];
  v5 = v1[20];
  v12 = v1[19];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = v4;
  v1[14] = partial apply for closure #1 in AVVideoComposition.init(applyingFiltersTo:applier:);
  v1[15] = v7;
  v8 = MEMORY[0x1E69E9820];
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed AVAsynchronousCIImageFilteringRequest) -> ();
  v1[13] = &block_descriptor_2;
  v9 = _Block_copy(v3);
  v1[25] = v9;

  v1[2] = v1;
  v1[7] = v1 + 18;
  v1[3] = AVVideoComposition.init(applyingFiltersTo:applier:);
  v10 = swift_continuation_init();
  v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo18AVVideoCompositionCs5Error_pGMd);
  v1[10] = v8;
  v1[11] = 1107296256;
  v1[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned AVMutableVideoComposition?, @unowned NSError?) -> () with result type AVMutableVideoComposition;
  v1[13] = &block_descriptor_3;
  v1[14] = v10;
  [ObjCClassFromMetadata videoCompositionWithAsset:v12 applyingCIFiltersWithHandler:v9 completionHandler:v3];

  return MEMORY[0x1EEE6DEC8](v2);
}

{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 208) = v2;
  v3 = *(v1 + 192);
  v4 = *(v1 + 184);
  if (v2)
  {
    v5 = AVVideoComposition.init(applyingFiltersTo:applier:);
  }

  else
  {
    v5 = AVVideoComposition.init(applyingFiltersTo:applier:);
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  _Block_release(*(v0 + 200));
  v3 = [swift_getObjCClassFromMetadata() videoCompositionWithVideoComposition_];

  v4 = *(v0 + 8);

  return v4(v3);
}

{
  v1 = v0[25];
  v2 = v0[19];
  swift_willThrow();

  _Block_release(v1);
  v3 = v0[1];

  return v3();
}

uint64_t closure #1 in AVVideoComposition.init(applyingFiltersTo:applier:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v21 - v7;
  v9 = [a1 sourceImage];
  [a1 compositionTime];
  v10 = v21[1];
  v11 = v21[3];
  v12 = v21[2];
  [a1 renderSize];
  v14 = v13;
  v16 = v15;
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v8, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v9;
  v18[5] = v10;
  v18[6] = v12;
  v18[7] = v11;
  v18[8] = v14;
  v18[9] = v16;
  v18[10] = a2;
  v18[11] = a3;
  v18[12] = a1;

  v19 = a1;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v8, &async function pointer to partial apply for closure #1 in closure #1 in AVVideoComposition.init(applyingFiltersTo:applier:), v18);
}

uint64_t closure #1 in closure #1 in AVVideoComposition.init(applyingFiltersTo:applier:)(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *(v10 + 136) = v12;
  *(v10 + 144) = v13;
  *(v10 + 128) = a10;
  *(v10 + 112) = a1;
  *(v10 + 120) = a2;
  *(v10 + 96) = a8;
  *(v10 + 104) = a9;
  *(v10 + 80) = a6;
  *(v10 + 88) = a7;
  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in AVVideoComposition.init(applyingFiltersTo:applier:), 0, 0);
}

uint64_t closure #1 in closure #1 in AVVideoComposition.init(applyingFiltersTo:applier:)()
{
  v1 = *(v0 + 128);
  v3 = *(v0 + 96);
  v2 = *(v0 + 104);
  v5 = *(v0 + 80);
  v4 = *(v0 + 88);
  *(v0 + 16) = v5;
  *(v0 + 24) = v4;
  *(v0 + 32) = v3;
  *(v0 + 40) = v2;
  *(v0 + 48) = *(v0 + 112);
  v6 = v5;
  v9 = (v1 + *v1);
  v7 = swift_task_alloc();
  *(v0 + 152) = v7;
  *v7 = v0;
  v7[1] = closure #1 in closure #1 in AVVideoComposition.init(applyingFiltersTo:applier:);

  return v9(v0 + 64, v0 + 16);
}

{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = closure #1 in closure #1 in AVVideoComposition.init(applyingFiltersTo:applier:);
  }

  else
  {
    v2 = closure #1 in closure #1 in AVVideoComposition.init(applyingFiltersTo:applier:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 64);
  [*(v0 + 144) finishWithImage:v3 context:v1];

  v4 = *(v0 + 8);

  return v4();
}

{
  v1 = v0[20];
  v2 = v0[18];
  v3 = v0[10];
  v4 = _convertErrorToNSError(_:)();
  [v2 finishWithError_];

  v5 = v0[1];

  return v5();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  outlined init with copy of CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection?(a3, v25 - v10, &_sScPSgMd);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection?(v11, &_sScPSgMd);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      outlined destroy of CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection?(a3, &_sScPSgMd);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection?(a3, &_sScPSgMd);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed AVAsynchronousCIImageFilteringRequest) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

id AVVideoComposition.Configuration.animationTool.getter()
{
  v1 = [*v0 animationTool];

  return v1;
}

void AVVideoComposition.Configuration.animationTool.setter(void *a1)
{
  specialized AVVideoComposition.Configuration.animationTool.setter(a1);
}

void (*AVVideoComposition.Configuration.animationTool.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  *a1 = v3;
  *(v3 + 48) = v1;
  *(v3 + 32) = [*v1 animationTool];
  return AVVideoComposition.Configuration.animationTool.modify;
}

void AVVideoComposition.Configuration.animationTool.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 32);
  v3 = *v4;
  v5 = *(*a1 + 48);
  if (a2)
  {
    v6 = v3;
    isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull();
    v8 = *v5;
    if ((isUniquelyReferenced_nonNull & 1) == 0)
    {
      v9 = v2[6];
      [v8 mutableCopy];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      type metadata accessor for NSValue(0, &lazy cache variable for type metadata for AVMutableVideoComposition);
      swift_dynamicCast();
      v10 = v2[5];

      v8 = v10;
      *v9 = v10;
    }

    [v8 setAnimationTool_];

    v3 = *v4;
  }

  else
  {
    v11 = swift_isUniquelyReferenced_nonNull();
    v12 = *v5;
    if ((v11 & 1) == 0)
    {
      v13 = v2[6];
      [v12 mutableCopy];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      type metadata accessor for NSValue(0, &lazy cache variable for type metadata for AVMutableVideoComposition);
      swift_dynamicCast();
      v14 = v2[5];

      v12 = v14;
      *v13 = v14;
    }

    [v12 setAnimationTool_];
  }

  free(v2);
}

uint64_t (*AVVideoComposition.Configuration.colorPrimaries.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = [*v1 colorPrimaries];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a1 = v5;
  a1[1] = v7;
  return AVVideoComposition.Configuration.colorPrimaries.modify;
}

void AVVideoComposition.Configuration.colorPrimaries.setter(uint64_t a1, uint64_t a2, SEL *a3)
{
  isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull();
  v8 = *v3;
  if ((isUniquelyReferenced_nonNull & 1) == 0)
  {
    [*v3 mutableCopy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    type metadata accessor for NSValue(0, &lazy cache variable for type metadata for AVMutableVideoComposition);
    swift_dynamicCast();
    v8 = v10;

    *v3 = v10;
  }

  if (a2)
  {
    v9 = MEMORY[0x1CCA866B0](a1, a2);
  }

  else
  {
    v9 = 0;
  }

  [v8 *a3];
}

uint64_t (*AVVideoComposition.Configuration.colorTransferFunction.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = [*v1 colorTransferFunction];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a1 = v5;
  a1[1] = v7;
  return AVVideoComposition.Configuration.colorTransferFunction.modify;
}

uint64_t AVVideoComposition.Configuration.colorPrimaries.getter(SEL *a1)
{
  v2 = [*v1 *a1];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

void key path getter for AVVideoComposition.Configuration.colorPrimaries : AVVideoComposition.Configuration(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a3 = v6;
  a3[1] = v8;
}

uint64_t (*AVVideoComposition.Configuration.colorYCbCrMatrix.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = [*v1 colorYCbCrMatrix];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a1 = v5;
  a1[1] = v7;
  return AVVideoComposition.Configuration.colorYCbCrMatrix.modify;
}

uint64_t AVVideoComposition.Configuration.colorPrimaries.modify(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *a1;
  v4 = a1[1];
  if ((a2 & 1) == 0)
  {
    return a3(*a1, v4);
  }

  a3(v5, v4);
}

id AVVideoComposition.Configuration.customVideoCompositorClass.getter()
{
  result = [*v0 customVideoCompositorClass];
  if (result)
  {
    return swift_getObjCClassMetadata();
  }

  return result;
}

id AVVideoComposition.Configuration.customVideoCompositorClass.setter(uint64_t a1)
{
  isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull();
  v4 = *v1;
  if ((isUniquelyReferenced_nonNull & 1) == 0)
  {
    [*v1 mutableCopy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    type metadata accessor for NSValue(0, &lazy cache variable for type metadata for AVMutableVideoComposition);
    swift_dynamicCast();
    v4 = v7;

    *v1 = v7;
  }

  if (a1)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  }

  else
  {
    ObjCClassFromMetadata = 0;
  }

  return [v4 setCustomVideoCompositorClass_];
}

id (*AVVideoComposition.Configuration.customVideoCompositorClass.modify(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  ObjCClassMetadata = [*v1 customVideoCompositorClass];
  if (ObjCClassMetadata)
  {
    ObjCClassMetadata = swift_getObjCClassMetadata();
  }

  *a1 = ObjCClassMetadata;
  return AVVideoComposition.Configuration.customVideoCompositorClass.modify;
}

id key path setter for AVVideoComposition.Configuration.frameDuration : AVVideoComposition.Configuration(uint64_t *a1, id *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull();
  v7 = *a2;
  if ((isUniquelyReferenced_nonNull & 1) == 0)
  {
    [v7 mutableCopy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    type metadata accessor for NSValue(0, &lazy cache variable for type metadata for AVMutableVideoComposition);
    swift_dynamicCast();

    v7 = v9;
    *a2 = v9;
  }

  v10[0] = v3;
  v10[1] = v4;
  v10[2] = v5;
  return [v7 setFrameDuration_];
}

id AVVideoComposition.Configuration.frameDuration.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull();
  v8 = *v3;
  if ((isUniquelyReferenced_nonNull & 1) == 0)
  {
    [v8 mutableCopy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    type metadata accessor for NSValue(0, &lazy cache variable for type metadata for AVMutableVideoComposition);
    swift_dynamicCast();

    v8 = v10;
    *v3 = v10;
  }

  v11[0] = a1;
  v11[1] = a2;
  v11[2] = a3;
  return [v8 setFrameDuration_];
}

void (*AVVideoComposition.Configuration.frameDuration.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  *a1 = v3;
  *(v3 + 40) = v1;
  [*v1 frameDuration];
  return AVVideoComposition.Configuration.frameDuration.modify;
}

void AVVideoComposition.Configuration.frameDuration.modify(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 40);
  v4 = *(*a1 + 56);
  v5 = *(*a1 + 64);
  isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull();
  v7 = *v3;
  if ((isUniquelyReferenced_nonNull & 1) == 0)
  {
    v8 = v1[5];
    [v7 mutableCopy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    type metadata accessor for NSValue(0, &lazy cache variable for type metadata for AVMutableVideoComposition);
    swift_dynamicCast();
    v9 = v1[4];

    v7 = v9;
    *v8 = v9;
  }

  *v1 = v2;
  v1[1] = v4;
  v1[2] = v5;
  [v7 setFrameDuration_];

  free(v1);
}

uint64_t AVVideoComposition.Configuration.instructions.getter()
{
  v1 = [*v0 instructions];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo29AVVideoCompositionInstruction_pMd);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

void key path getter for AVVideoComposition.Configuration.instructions : AVVideoComposition.Configuration(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 instructions];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo29AVVideoCompositionInstruction_pMd);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  *a2 = v4;
}

void AVVideoComposition.Configuration.instructions.setter()
{
  isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull();
  v2 = *v0;
  if ((isUniquelyReferenced_nonNull & 1) == 0)
  {
    [*v0 mutableCopy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    type metadata accessor for NSValue(0, &lazy cache variable for type metadata for AVMutableVideoComposition);
    swift_dynamicCast();
    v2 = v4;

    *v0 = v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo29AVVideoCompositionInstruction_pMd);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 setInstructions_];
}

uint64_t (*AVVideoComposition.Configuration.instructions.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  v3 = [*v1 instructions];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo29AVVideoCompositionInstruction_pMd);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  *a1 = v4;
  return AVVideoComposition.Configuration.instructions.modify;
}

void key path setter for AVVideoComposition.Configuration.outputBufferDescription : AVVideoComposition.Configuration(void **a1, id *a2)
{
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull() & 1) == 0)
  {
    [*a2 mutableCopy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    type metadata accessor for NSValue(0, &lazy cache variable for type metadata for AVMutableVideoComposition);
    swift_dynamicCast();

    *a2 = v5;
  }

  v4.value._rawValue = v3;
  AVMutableVideoComposition.setOutputBufferDescription(_:)(v4);
}

uint64_t AVVideoComposition.Configuration.outputBufferDescription.setter(void *a1)
{
  if ((swift_isUniquelyReferenced_nonNull() & 1) == 0)
  {
    [*v1 mutableCopy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    type metadata accessor for NSValue(0, &lazy cache variable for type metadata for AVMutableVideoComposition);
    swift_dynamicCast();

    *v1 = v5;
  }

  v3.value._rawValue = a1;
  AVMutableVideoComposition.setOutputBufferDescription(_:)(v3);
}

void (*AVVideoComposition.Configuration.outputBufferDescription.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  *a1 = v3;
  *(v3 + 48) = v1;
  *(v3 + 32) = AVVideoComposition.outputBufferDescription.getter();
  return AVVideoComposition.Configuration.outputBufferDescription.modify;
}

void AVVideoComposition.Configuration.outputBufferDescription.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 48);
  if (a2)
  {

    LOBYTE(v5.value._rawValue) = swift_isUniquelyReferenced_nonNull();
    v6 = *v4;
    if ((v5.value._rawValue & 1) == 0)
    {
      v7 = v2[6];
      [v6 mutableCopy];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      type metadata accessor for NSValue(0, &lazy cache variable for type metadata for AVMutableVideoComposition);
      swift_dynamicCast();
      v8 = v2[5];

      *v7 = v8;
    }

    v5.value._rawValue = v3;
    AVMutableVideoComposition.setOutputBufferDescription(_:)(v5);
  }

  else
  {
    LOBYTE(v9.value._rawValue) = swift_isUniquelyReferenced_nonNull();
    v10 = *v4;
    if ((v9.value._rawValue & 1) == 0)
    {
      v11 = v2[6];
      [v10 mutableCopy];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      type metadata accessor for NSValue(0, &lazy cache variable for type metadata for AVMutableVideoComposition);
      swift_dynamicCast();
      v12 = v2[5];

      *v11 = v12;
    }

    v9.value._rawValue = v3;
    AVMutableVideoComposition.setOutputBufferDescription(_:)(v9);
  }

  free(v2);
}

size_t AVVideoComposition.Configuration.spatialVideoConfigurations.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo22CMFormatDescriptionRefa9CoreMediaE10ExtensionsV5ValueV35CameraCalibrationDataLensCollectionOSgMd);
  (MEMORY[0x1EEE9AC00])();
  v35 = &v34 - v1;
  v2 = type metadata accessor for AVSpatialVideoConfiguration();
  v40 = *(v2 - 1);
  v3 = (MEMORY[0x1EEE9AC00])();
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v34 - v6;
  v8 = [*v0 spatialVideoConfigurations];
  type metadata accessor for NSValue(0, &lazy cache variable for type metadata for AVSpatialVideoConfiguration);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v9 >> 62))
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_25:

    return MEMORY[0x1E69E7CC0];
  }

  if (v9 < 0)
  {
    v33 = v9;
  }

  else
  {
    v33 = v9 & 0xFFFFFFFFFFFFFF8;
  }

  v10 = MEMORY[0x1CCA86B70](v33);
  if (!v10)
  {
    goto LABEL_25;
  }

LABEL_3:
  v41 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10 & ~(v10 >> 63), 0);
  if ((v10 & 0x8000000000000000) == 0)
  {
    v12 = 0;
    v13 = v41;
    v36 = v9 & 0xC000000000000001;
    v37 = v10;
    v38 = v9;
    v39 = v7;
    do
    {
      if (v36)
      {
        v14 = MEMORY[0x1CCA86AE0](v12, v9);
      }

      else
      {
        v14 = *(v9 + 8 * v12 + 32);
      }

      v15 = v14;
      v16 = type metadata accessor for CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection();
      (*(*(v16 - 8) + 56))(v5, 1, 1, v16);
      v17 = &v5[v2[5]];
      *v17 = 0;
      v17[4] = 1;
      v18 = &v5[v2[6]];
      *v18 = 0;
      v18[4] = 1;
      v19 = &v5[v2[7]];
      *v19 = 0;
      v19[4] = 1;
      if ([v15 cameraCalibrationDataLensCollection])
      {
        v20 = v35;
        CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.init(rawValue:)();
        outlined assign with take of CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection?(v20, v5);
      }

      v21 = [v15 horizontalFieldOfView];
      if (v21)
      {
        v22 = v21;
        v23 = [v21 unsignedIntValue];

        *v17 = v23;
        v17[4] = 0;
      }

      v24 = [v15 cameraSystemBaseline];
      if (v24)
      {
        v25 = v24;
        v26 = [v24 unsignedIntValue];

        *v18 = v26;
        v18[4] = 0;
      }

      v27 = [v15 disparityAdjustment];
      v9 = v38;
      if (v27)
      {
        v28 = v27;
        v29 = [v27 intValue];

        *v19 = v29;
        v19[4] = 0;
      }

      else
      {
      }

      v30 = v39;
      outlined init with take of AVSpatialVideoConfiguration(v5, v39);
      v41 = v13;
      v32 = *(v13 + 16);
      v31 = *(v13 + 24);
      if (v32 >= v31 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v31 > 1, v32 + 1, 1);
        v13 = v41;
      }

      ++v12;
      *(v13 + 16) = v32 + 1;
      outlined init with take of AVSpatialVideoConfiguration(v30, v13 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v32);
    }

    while (v37 != v12);

    return v13;
  }

  __break(1u);
  return result;
}

void AVVideoComposition.Configuration.spatialVideoConfigurations.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo22CMFormatDescriptionRefa9CoreMediaE10ExtensionsV5ValueV35CameraCalibrationDataLensCollectionOSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v30 - v4;
  v31 = type metadata accessor for CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection();
  v6 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v35 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AVSpatialVideoConfiguration();
  v9 = *(v8 - 1);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull();
  v13 = *v1;
  if ((isUniquelyReferenced_nonNull & 1) == 0)
  {
    [*v1 mutableCopy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    type metadata accessor for NSValue(0, &lazy cache variable for type metadata for AVMutableVideoComposition);
    swift_dynamicCast();
    v13 = v36;

    *v1 = v13;
  }

  v14 = *(a1 + 16);
  if (v14)
  {
    v30[0] = v13;
    v37 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    v15 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v30[1] = a1;
    v16 = a1 + v15;
    v17 = (v6 + 48);
    v18 = *(v9 + 72);
    v33 = (v6 + 32);
    v34 = v18;
    v32 = (v6 + 8);
    v19 = v31;
    do
    {
      outlined init with copy of AVSpatialVideoConfiguration(v16, v11);
      v20 = [objc_allocWithZone(MEMORY[0x1E6988150]) init];
      outlined init with copy of CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection?(v11, v5, &_sSo22CMFormatDescriptionRefa9CoreMediaE10ExtensionsV5ValueV35CameraCalibrationDataLensCollectionOSgMd);
      if ((*v17)(v5, 1, v19) == 1)
      {
        outlined destroy of CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection?(v5, &_sSo22CMFormatDescriptionRefa9CoreMediaE10ExtensionsV5ValueV35CameraCalibrationDataLensCollectionOSgMd);
      }

      else
      {
        (*v33)(v35, v5, v19);
        v21 = CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.rawValue.getter();
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v36 = 0;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd);
          static Array._conditionallyBridgeFromObjectiveC(_:result:)();

          if (v36)
          {
            v22.super.isa = Array._bridgeToObjectiveC()().super.isa;
          }

          else
          {
            v22.super.isa = 0;
          }

          v19 = v31;
        }

        else
        {

          v22.super.isa = 0;
        }

        [v20 setCameraCalibrationDataLensCollection_];

        (*v32)(v35, v19);
      }

      v23 = &v11[v8[5]];
      if ((v23[1] & 1) == 0)
      {
        v24 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInt_];
        [v20 setHorizontalFieldOfView_];
      }

      v25 = &v11[v8[6]];
      if ((v25[1] & 1) == 0)
      {
        v26 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInt_];
        [v20 setCameraSystemBaseline_];
      }

      v27 = &v11[v8[7]];
      if ((v27[1] & 1) == 0)
      {
        v28 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInt_];
        [v20 setDisparityAdjustment_];
      }

      outlined destroy of AVSpatialVideoConfiguration(v11);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v16 += v34;
      --v14;
    }

    while (v14);

    v13 = v30[0];
  }

  else
  {
  }

  type metadata accessor for NSValue(0, &lazy cache variable for type metadata for AVSpatialVideoConfiguration);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v13 setSpatialVideoConfigurations_];
}

uint64_t (*AVVideoComposition.Configuration.spatialVideoConfigurations.modify(size_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = AVVideoComposition.Configuration.spatialVideoConfigurations.getter();
  return AVVideoComposition.Configuration.spatialVideoConfigurations.modify;
}

id AVVideoComposition.Configuration.perFrameHDRDisplayMetadataPolicy.getter()
{
  v1 = [*v0 perFrameHDRDisplayMetadataPolicy];

  return v1;
}

void AVVideoComposition.Configuration.perFrameHDRDisplayMetadataPolicy.setter(void *a1)
{
  specialized AVVideoComposition.Configuration.perFrameHDRDisplayMetadataPolicy.setter(a1);
}

void (*AVVideoComposition.Configuration.perFrameHDRDisplayMetadataPolicy.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  *a1 = v3;
  *(v3 + 48) = v1;
  *(v3 + 32) = [*v1 perFrameHDRDisplayMetadataPolicy];
  return AVVideoComposition.Configuration.perFrameHDRDisplayMetadataPolicy.modify;
}

void AVVideoComposition.Configuration.perFrameHDRDisplayMetadataPolicy.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 32);
  v3 = *v4;
  v5 = *(*a1 + 48);
  if (a2)
  {
    v6 = v3;
    isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull();
    v8 = *v5;
    if ((isUniquelyReferenced_nonNull & 1) == 0)
    {
      v9 = v2[6];
      [v8 mutableCopy];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      type metadata accessor for NSValue(0, &lazy cache variable for type metadata for AVMutableVideoComposition);
      swift_dynamicCast();
      v10 = v2[5];

      v8 = v10;
      *v9 = v10;
    }

    [v8 setPerFrameHDRDisplayMetadataPolicy_];

    v3 = *v4;
  }

  else
  {
    v11 = swift_isUniquelyReferenced_nonNull();
    v12 = *v5;
    if ((v11 & 1) == 0)
    {
      v13 = v2[6];
      [v12 mutableCopy];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      type metadata accessor for NSValue(0, &lazy cache variable for type metadata for AVMutableVideoComposition);
      swift_dynamicCast();
      v14 = v2[5];

      v12 = v14;
      *v13 = v14;
    }

    [v12 setPerFrameHDRDisplayMetadataPolicy_];
  }

  free(v2);
}

id key path setter for AVVideoComposition.Configuration.renderScale : AVVideoComposition.Configuration(int *a1, id *a2)
{
  v3 = *a1;
  isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull();
  v6 = *a2;
  if ((isUniquelyReferenced_nonNull & 1) == 0)
  {
    [v6 mutableCopy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    type metadata accessor for NSValue(0, &lazy cache variable for type metadata for AVMutableVideoComposition);
    swift_dynamicCast();

    v6 = v8;
    *a2 = v8;
  }

  LODWORD(v5) = v3;
  return [v6 setRenderScale_];
}

id AVVideoComposition.Configuration.renderScale.setter(float a1)
{
  isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull();
  v5 = *v1;
  if ((isUniquelyReferenced_nonNull & 1) == 0)
  {
    [v5 mutableCopy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    type metadata accessor for NSValue(0, &lazy cache variable for type metadata for AVMutableVideoComposition);
    swift_dynamicCast();

    v5 = v7;
    *v1 = v7;
  }

  *&v4 = a1;
  return [v5 setRenderScale_];
}

void (*AVVideoComposition.Configuration.renderScale.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  [*v1 renderScale];
  *(v4 + 48) = v5;
  return AVVideoComposition.Configuration.renderScale.modify;
}

void AVVideoComposition.Configuration.renderScale.modify(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 40);
  isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull();
  v6 = *v3;
  if ((isUniquelyReferenced_nonNull & 1) == 0)
  {
    v7 = v1[5];
    [v6 mutableCopy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    type metadata accessor for NSValue(0, &lazy cache variable for type metadata for AVMutableVideoComposition);
    swift_dynamicCast();
    v8 = v1[4];

    v6 = v8;
    *v7 = v8;
  }

  LODWORD(v5) = v2;
  [v6 setRenderScale_];

  free(v1);
}

id key path setter for AVVideoComposition.Configuration.renderSize : AVVideoComposition.Configuration(double *a1, id *a2)
{
  v3 = *a1;
  v4 = a1[1];
  isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull();
  v6 = *a2;
  if ((isUniquelyReferenced_nonNull & 1) == 0)
  {
    [v6 mutableCopy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    type metadata accessor for NSValue(0, &lazy cache variable for type metadata for AVMutableVideoComposition);
    swift_dynamicCast();

    v6 = v8;
    *a2 = v8;
  }

  return [v6 setRenderSize_];
}

id AVVideoComposition.Configuration.renderSize.setter(double a1, double a2)
{
  isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull();
  v6 = *v2;
  if ((isUniquelyReferenced_nonNull & 1) == 0)
  {
    [v6 mutableCopy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    type metadata accessor for NSValue(0, &lazy cache variable for type metadata for AVMutableVideoComposition);
    swift_dynamicCast();

    v6 = v8;
    *v2 = v8;
  }

  return [v6 setRenderSize_];
}

void (*AVVideoComposition.Configuration.renderSize.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 56) = v1;
  [*v1 renderSize];
  *(v4 + 32) = v5;
  *(v4 + 40) = v6;
  return AVVideoComposition.Configuration.renderSize.modify;
}

void AVVideoComposition.Configuration.renderSize.modify(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  v3 = *(*a1 + 56);
  v4 = *(*a1 + 40);
  isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull();
  v6 = *v3;
  if ((isUniquelyReferenced_nonNull & 1) == 0)
  {
    v7 = v1[7];
    [v6 mutableCopy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    type metadata accessor for NSValue(0, &lazy cache variable for type metadata for AVMutableVideoComposition);
    swift_dynamicCast();
    v8 = v1[6];

    v6 = v8;
    *v7 = v8;
  }

  [v6 setRenderSize_];

  free(v1);
}

uint64_t AVVideoComposition.Configuration.sourceSampleDataTrackIDs.getter()
{
  v1 = [*v0 _sourceSampleDataTrackIDs];
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

void key path getter for AVVideoComposition.Configuration.sourceSampleDataTrackIDs : AVVideoComposition.Configuration(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 _sourceSampleDataTrackIDs];
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  *a2 = v4;
}

void AVVideoComposition.Configuration.sourceSampleDataTrackIDs.setter()
{
  isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull();
  v2 = *v0;
  if ((isUniquelyReferenced_nonNull & 1) == 0)
  {
    [*v0 mutableCopy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    type metadata accessor for NSValue(0, &lazy cache variable for type metadata for AVMutableVideoComposition);
    swift_dynamicCast();
    v2 = v4;

    *v0 = v4;
  }

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 set:isa sourceSampleDataTrackIDs:?];
}

uint64_t (*AVVideoComposition.Configuration.sourceSampleDataTrackIDs.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  v3 = [*v1 _sourceSampleDataTrackIDs];
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  *a1 = v4;
  return AVVideoComposition.Configuration.sourceSampleDataTrackIDs.modify;
}

uint64_t AVVideoComposition.Configuration.instructions.modify(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t))
{
  if ((a2 & 1) == 0)
  {
    return a3(*a1);
  }

  a3(v4);
}

void (*AVVideoComposition.Configuration.sourceTrackIDForFrameTiming.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  *a1 = v3;
  *(v3 + 40) = v1;
  *(v3 + 48) = [*v1 sourceTrackIDForFrameTiming];
  return AVVideoComposition.Configuration.sourceTrackIDForFrameTiming.modify;
}

uint64_t AVVideoComposition.Configuration.init(for:prototypeInstruction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[28] = a4;
  v5[29] = a5;
  v5[27] = a1;
  if (a2)
  {
    swift_getObjectType();
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v5[30] = v6;
  v5[31] = v8;

  return MEMORY[0x1EEE6DFA0](AVVideoComposition.Configuration.init(for:prototypeInstruction:), v6, v8);
}

uint64_t AVVideoComposition.Configuration.init(for:prototypeInstruction:)()
{
  v1 = v0;
  v2 = v0 + 18;
  v3 = v0 + 26;
  v6 = v0 + 28;
  v4 = v0[28];
  v5 = v6[1];
  if (v5)
  {
    v7 = v1 + 10;
    v8 = objc_opt_self();
    v1[10] = v1;
    v1[15] = v3;
    v1[11] = AVVideoComposition.Configuration.init(for:prototypeInstruction:);
    v9 = swift_continuation_init();
    v1[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo25AVMutableVideoCompositionCs5Error_pGMd);
    v1[18] = MEMORY[0x1E69E9820];
    v1[19] = 1107296256;
    v1[20] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned AVMutableVideoComposition?, @unowned NSError?) -> () with result type AVMutableVideoComposition;
    v1[21] = &block_descriptor_13;
    v1[22] = v9;
    [v8 videoCompositionWithPropertiesOfAsset:v4 prototypeInstruction:v5 completionHandler:v2];
  }

  else
  {
    v7 = v1 + 2;
    v10 = objc_opt_self();
    v1[2] = v1;
    v1[7] = v3;
    v1[3] = AVVideoComposition.Configuration.init(for:prototypeInstruction:);
    v11 = swift_continuation_init();
    v1[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo25AVMutableVideoCompositionCs5Error_pGMd);
    v1[18] = MEMORY[0x1E69E9820];
    v1[19] = 1107296256;
    v1[20] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned AVMutableVideoComposition?, @unowned NSError?) -> () with result type AVMutableVideoComposition;
    v1[21] = &block_descriptor_9;
    v1[22] = v11;
    [v10 videoCompositionWithPropertiesOfAsset:v4 completionHandler:v2];
  }

  return MEMORY[0x1EEE6DEC8](v7);
}

{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 256) = v2;
  v3 = *(v1 + 248);
  v4 = *(v1 + 240);
  if (v2)
  {
    v5 = AVVideoComposition.Configuration.init(for:prototypeInstruction:);
  }

  else
  {
    v5 = AVVideoComposition.Configuration.init(for:prototypeInstruction:);
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 264) = v2;
  v3 = *(v1 + 248);
  v4 = *(v1 + 240);
  if (v2)
  {
    v5 = AVVideoComposition.Configuration.init(for:prototypeInstruction:);
  }

  else
  {
    v5 = AVVideoComposition.Configuration.init(for:prototypeInstruction:);
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

{
  v1 = *(v0 + 232);

  **(v0 + 216) = *(v0 + 208);
  v2 = *(v0 + 8);

  return v2();
}

{

  **(v0 + 216) = *(v0 + 208);
  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = v0[28];
  v2 = v0[29];
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

{
  v1 = *(v0 + 224);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned AVVideoComposition?, @unowned NSError?) -> () with result type AVVideoComposition(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x1EEE6DEE8](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x1EEE6DEE0](v5);
  }
}

void AVVideoComposition.Configuration.init(animationTool:colorPrimaries:colorTransferFunction:colorYCbCrMatrix:customVideoCompositorClass:frameDuration:instructions:outputBufferDescription:perFrameHDRDisplayMetadataPolicy:renderScale:renderSize:sourceSampleDataTrackIDs:sourceTrackIDForFrameTiming:spatialVideoConfigurations:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, float a10@<S0>, double a11@<D1>, double a12@<D2>, uint64_t a13, int a14, int a15, uint64_t a16, uint64_t a17, void *a18, void *a19, void (**a20)(char *, uint64_t), int a21, uint64_t a22)
{
  v75 = a8;
  v63 = a6;
  v74 = a4;
  v68 = a9;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo22CMFormatDescriptionRefa9CoreMediaE10ExtensionsV5ValueV35CameraCalibrationDataLensCollectionOSgMd);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v32 = &v62 - v31;
  v33 = type metadata accessor for CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection();
  v65 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v76 = &v62 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for AVSpatialVideoConfiguration();
  v64 = *(v35 - 1);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v62 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = [objc_allocWithZone(MEMORY[0x1E6988060]) init];
  v67 = a1;
  [v71 setAnimationTool_];
  if (a3)
  {
    v38 = MEMORY[0x1CCA866B0](a2, a3);
  }

  else
  {
    v38 = 0;
  }

  [v71 setColorPrimaries_];

  if (a5)
  {
    v39 = MEMORY[0x1CCA866B0](v74, a5);
  }

  else
  {
    v39 = 0;
  }

  LODWORD(v73) = a21;
  v72 = a20;
  v69 = a22;
  v70 = a19;
  v66 = a18;
  [v71 setColorTransferFunction_];

  v74 = v33;
  if (a7)
  {
    v40 = MEMORY[0x1CCA866B0](v63, a7);
  }

  else
  {
    v40 = 0;
  }

  [v71 setColorYCbCrMatrix_];

  if (v75)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  }

  else
  {
    ObjCClassFromMetadata = 0;
  }

  v42 = v71;
  [v71 setCustomVideoCompositorClass_];
  v78 = a13;
  v79 = a14;
  v80 = a15;
  v81 = a16;
  [v42 setFrameDuration_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo29AVVideoCompositionInstruction_pMd);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v42 setInstructions_];

  v82.value._rawValue = v66;
  AVMutableVideoComposition.setOutputBufferDescription(_:)(v82);

  [v42 setPerFrameHDRDisplayMetadataPolicy_];
  *&v44 = a10;
  [v42 setRenderScale_];
  [v42 setRenderSize_];
  v45 = Array._bridgeToObjectiveC()().super.isa;

  [v42 set:v45 sourceSampleDataTrackIDs:?];

  [v42 setSourceTrackIDForFrameTiming_];
  v46 = v69;
  v47 = *(v69 + 16);
  if (v47)
  {
    v78 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    v48 = v46 + ((*(v64 + 80) + 32) & ~*(v64 + 80));
    v49 = (v65 + 48);
    v75 = *(v64 + 72);
    v72 = (v65 + 8);
    v73 = (v65 + 32);
    v50 = v74;
    while (1)
    {
      outlined init with copy of AVSpatialVideoConfiguration(v48, v37);
      v51 = [objc_allocWithZone(MEMORY[0x1E6988150]) init];
      outlined init with copy of CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection?(v37, v32, &_sSo22CMFormatDescriptionRefa9CoreMediaE10ExtensionsV5ValueV35CameraCalibrationDataLensCollectionOSgMd);
      if ((*v49)(v32, 1, v50) != 1)
      {
        break;
      }

      outlined destroy of CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection?(v32, &_sSo22CMFormatDescriptionRefa9CoreMediaE10ExtensionsV5ValueV35CameraCalibrationDataLensCollectionOSgMd);
LABEL_24:
      v54 = &v37[v35[5]];
      if ((v54[1] & 1) == 0)
      {
        v55 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInt_];
        [v51 setHorizontalFieldOfView_];
      }

      v56 = &v37[v35[6]];
      if ((v56[1] & 1) == 0)
      {
        v57 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInt_];
        [v51 setCameraSystemBaseline_];
      }

      v58 = &v37[v35[7]];
      if ((v58[1] & 1) == 0)
      {
        v59 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInt_];
        [v51 setDisparityAdjustment_];
      }

      outlined destroy of AVSpatialVideoConfiguration(v37);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v48 += v75;
      if (!--v47)
      {
        goto LABEL_30;
      }
    }

    (*v73)(v76, v32, v50);
    v52 = CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.rawValue.getter();
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v77 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd);
      static Array._conditionallyBridgeFromObjectiveC(_:result:)();

      if (v77)
      {
        v53.super.isa = Array._bridgeToObjectiveC()().super.isa;

LABEL_23:
        [v51 setCameraCalibrationDataLensCollection_];

        v50 = v74;
        (*v72)(v76, v74);
        goto LABEL_24;
      }
    }

    else
    {
    }

    v53.super.isa = 0;
    goto LABEL_23;
  }

LABEL_30:

  type metadata accessor for NSValue(0, &lazy cache variable for type metadata for AVSpatialVideoConfiguration);
  v60 = Array._bridgeToObjectiveC()().super.isa;

  v61 = v71;
  [v71 setSpatialVideoConfigurations_];

  *v68 = v61;
}

id AVVideoComposition.init(configuration:)(void *a1)
{
  v1 = *a1;
  v2 = [swift_getObjCClassFromMetadata() videoCompositionWithVideoComposition_];

  return v2;
}

id AVVideoCompositionInstruction.Configuration.backgroundColor.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t AVVideoCompositionInstruction.Configuration.layerInstructions.setter(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  if (!(a1 >> 62))
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_13:

    v9 = MEMORY[0x1E69E7CC0];
LABEL_14:

    *(v2 + 16) = v9;
    return result;
  }

  if (a1 >= 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  v4 = MEMORY[0x1CCA86B70](a1);
  if (!v4)
  {
    goto LABEL_13;
  }

LABEL_3:
  v11 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v4 & 0x8000000000000000) == 0)
  {
    v10 = v1;
    v6 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1CCA86AE0](v6, v3);
      }

      else
      {
        v7 = *(v3 + 8 * v6 + 32);
      }

      v8 = v7;
      ++v6;
      [v7 mutableCopy];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();

      type metadata accessor for NSValue(0, &lazy cache variable for type metadata for AVMutableVideoCompositionLayerInstruction);
      swift_dynamicCast();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v4 != v6);

    v9 = v11;
    v2 = v10;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t (*AVVideoCompositionInstruction.Configuration.layerInstructions.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = *(v1 + 16);
  a1[1] = v1;

  return AVVideoCompositionInstruction.Configuration.layerInstructions.modify;
}

uint64_t AVVideoCompositionInstruction.Configuration.layerInstructions.modify(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return AVVideoCompositionInstruction.Configuration.layerInstructions.setter(*a1);
  }

  AVVideoCompositionInstruction.Configuration.layerInstructions.setter(v2);
}

uint64_t AVVideoCompositionInstruction.Configuration.requiredSourceSampleDataTrackIDs.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

__n128 AVVideoCompositionInstruction.Configuration.timeRange.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = *(v1 + 32);
  *(a1 + 16) = v2;
  result = *(v1 + 64);
  *(a1 + 32) = result;
  return result;
}

__n128 AVVideoCompositionInstruction.Configuration.timeRange.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 32) = *a1;
  *(v1 + 48) = v2;
  result = *(a1 + 32);
  *(v1 + 64) = result;
  return result;
}

uint64_t AVVideoCompositionInstruction.Configuration.init(backgroundColor:enablePostProcessing:layerInstructions:requiredSourceSampleDataTrackIDs:timeRange:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X4>, uint64_t a6@<X8>)
{
  v6 = MEMORY[0x1E69E7CC0];
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = v6;
  *(a6 + 24) = a4;
  v7 = a5[1];
  *(a6 + 32) = *a5;
  *(a6 + 48) = v7;
  *(a6 + 64) = a5[2];
  return AVVideoCompositionInstruction.Configuration.layerInstructions.setter(a3);
}

id AVVideoCompositionInstruction.init(configuration:)(__int128 *a1)
{
  v1 = a1[3];
  v14 = a1[2];
  v15 = v1;
  v16 = a1[4];
  v2 = a1[1];
  v12 = *a1;
  v13 = v2;
  v3 = [objc_allocWithZone(MEMORY[0x1E6988068]) init];
  [v3 setBackgroundColor_];
  [v3 setEnablePostProcessing_];
  type metadata accessor for NSValue(0, &lazy cache variable for type metadata for AVVideoCompositionLayerInstruction);

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v3 setLayerInstructions_];

  v5 = *(*(&v13 + 1) + 16);
  if (v5)
  {
    *&v11[0] = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    v6 = (*(&v13 + 1) + 32);
    do
    {
      v7 = *v6++;
      [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInt_];
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v5;
    }

    while (v5);
  }

  type metadata accessor for NSValue(0, &lazy cache variable for type metadata for NSNumber);
  v8 = Array._bridgeToObjectiveC()().super.isa;

  [v3 setRequiredSourceSampleDataTrackIDs_];

  v11[0] = v14;
  v11[1] = v15;
  v11[2] = v16;
  [v3 setTimeRange_];
  outlined destroy of AVVideoCompositionInstruction.Configuration(&v12);
  v9 = [swift_getObjCClassFromMetadata() videoCompositionInstructionWithInstruction_];

  return v9;
}

id key path setter for AVVideoComposition.Configuration.sourceTrackIDForFrameTiming : AVVideoComposition.Configuration(unsigned int *a1, id *a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t a6, SEL *a7)
{
  v10 = *a1;
  isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull();
  v12 = *a2;
  if ((isUniquelyReferenced_nonNull & 1) == 0)
  {
    [v12 mutableCopy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    type metadata accessor for NSValue(0, a5);
    swift_dynamicCast();

    v12 = v14;
    *a2 = v14;
  }

  return [v12 *a7];
}

id AVVideoComposition.Configuration.sourceTrackIDForFrameTiming.setter(uint64_t a1, unint64_t *a2, uint64_t a3, SEL *a4)
{
  isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull();
  v9 = *v4;
  if ((isUniquelyReferenced_nonNull & 1) == 0)
  {
    [v9 mutableCopy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    type metadata accessor for NSValue(0, a2);
    swift_dynamicCast();

    v9 = v11;
    *v4 = v11;
  }

  return [v9 *a4];
}

void (*AVVideoCompositionLayerInstruction.Configuration.trackID.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  *a1 = v3;
  *(v3 + 40) = v1;
  *(v3 + 48) = [*v1 trackID];
  return AVVideoCompositionLayerInstruction.Configuration.trackID.modify;
}

void AVVideoComposition.Configuration.sourceTrackIDForFrameTiming.modify(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, SEL *a5)
{
  v7 = *a1;
  v8 = *(*a1 + 48);
  v9 = *(*a1 + 40);
  isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull();
  v11 = *v9;
  if ((isUniquelyReferenced_nonNull & 1) == 0)
  {
    v12 = v7[5];
    [v11 mutableCopy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    type metadata accessor for NSValue(0, a3);
    swift_dynamicCast();
    v13 = v7[4];

    v11 = v13;
    *v12 = v13;
  }

  [v11 *a5];

  free(v7);
}

id AVVideoCompositionLayerInstruction.Configuration.init(trackID:)@<X0>(uint64_t a1@<X0>, id *a2@<X8>)
{
  v4 = [objc_allocWithZone(MEMORY[0x1E6988070]) init];
  *a2 = v4;
  if ((swift_isUniquelyReferenced_nonNull() & 1) == 0)
  {
    [v4 mutableCopy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    type metadata accessor for NSValue(0, &lazy cache variable for type metadata for AVMutableVideoCompositionLayerInstruction);
    swift_dynamicCast();
    v4 = v6;

    *a2 = v6;
  }

  return [v4 setTrackID_];
}

void AVVideoCompositionLayerInstruction.Configuration.init(assetTrack:)(void *a1@<X0>, void *a2@<X8>)
{
  v4 = [objc_opt_self() videoCompositionLayerInstructionWithAssetTrack_];

  *a2 = v4;
}

id AVVideoCompositionLayerInstruction.cropRectangleRamp(at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v22 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = *(MEMORY[0x1E6960CA8] + 16);
  v15 = *MEMORY[0x1E6960CA8];
  v16 = v6;
  v17 = *(MEMORY[0x1E6960CA8] + 32);
  v14[0] = a1;
  v14[1] = a2;
  v14[2] = a3;
  result = [v4 getCropRectangleRampForTime:v14 startCropRectangle:&v20 endCropRectangle:&v18 timeRange:&v15];
  if (result)
  {
    v8 = 0;
    v9 = v18;
    v10 = v19;
    LOBYTE(v14[0]) = 0;
    v11 = v16;
    *a4 = v15;
    *(a4 + 16) = v11;
    v12 = v20;
    v13 = v21;
    *(a4 + 32) = v17;
    *(a4 + 48) = v12;
  }

  else
  {
    v8 = 1;
    LOBYTE(v14[0]) = 1;
    v13 = 0uLL;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    v9 = 0uLL;
    v10 = 0uLL;
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0u;
  }

  *(a4 + 64) = v13;
  *(a4 + 80) = v9;
  *(a4 + 96) = v10;
  *(a4 + 112) = v8;
  return result;
}

id AVVideoCompositionLayerInstruction.opacityRamp(at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v15[0] = 0;
  v6 = *(MEMORY[0x1E6960CA8] + 16);
  v12 = *MEMORY[0x1E6960CA8];
  v13 = v6;
  v14 = *(MEMORY[0x1E6960CA8] + 32);
  v11[0] = a1;
  v11[1] = a2;
  v11[2] = a3;
  result = [v4 getOpacityRampForTime:v11 startOpacity:v15 + 4 endOpacity:v15 timeRange:&v12];
  if (result)
  {
    v8 = 0;
    v9 = v15[0];
    LOBYTE(v11[0]) = 0;
    v10 = v13;
    *a4 = v12;
    *(a4 + 16) = v10;
    *(a4 + 32) = v14;
    *(a4 + 48) = HIDWORD(v9);
    *(a4 + 52) = v9;
  }

  else
  {
    v8 = 1;
    LOBYTE(v11[0]) = 1;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0;
  }

  *(a4 + 56) = v8;
  return result;
}

double AVVideoCompositionLayerInstruction.transformRamp(at:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = *(MEMORY[0x1E6960CA8] + 16);
  v12 = *MEMORY[0x1E6960CA8];
  v13 = v6;
  v14 = *(MEMORY[0x1E6960CA8] + 32);
  *&v21 = a1;
  *(&v21 + 1) = a2;
  *&v22 = a3;
  if ([v4 getTransformRampForTime:&v21 startTransform:&v18 endTransform:&v15 timeRange:&v12])
  {
    v21 = v12;
    v22 = v13;
    v23 = v14;
    v24 = v18;
    v25 = v19;
    v26 = v20;
    v27 = v15;
    v28 = v16;
    v29 = v17;
    _sSo34AVVideoCompositionLayerInstructionC12AVFoundationE13TransformRampVSgWOi_(&v21);
  }

  else
  {
    _sSo34AVVideoCompositionLayerInstructionC12AVFoundationE13TransformRampVSgWOi0_(&v21);
  }

  v7 = v28;
  *(a4 + 96) = v27;
  *(a4 + 112) = v7;
  *(a4 + 128) = v29;
  *(a4 + 144) = v30;
  v8 = v24;
  *(a4 + 32) = v23;
  *(a4 + 48) = v8;
  v9 = v26;
  *(a4 + 64) = v25;
  *(a4 + 80) = v9;
  result = *&v21;
  v11 = v22;
  *a4 = v21;
  *(a4 + 16) = v11;
  return result;
}

Swift::Void __swiftcall AVVideoCompositionLayerInstruction.Configuration.setOpacity(_:at:)(Swift::Float _, CMTime at)
{
  epoch = at.epoch;
  v4 = *&at.timescale;
  value = at.value;
  isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull();
  v9 = *v2;
  if ((isUniquelyReferenced_nonNull & 1) == 0)
  {
    [v9 mutableCopy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    type metadata accessor for NSValue(0, &lazy cache variable for type metadata for AVMutableVideoCompositionLayerInstruction);
    swift_dynamicCast();

    v9 = v10;
    *v2 = v10;
  }

  v11[0] = value;
  v11[1] = v4;
  v11[2] = epoch;
  *&v8 = _;
  [v9 setOpacity:v11 atTime:v8];
}

id AVVideoCompositionLayerInstruction.Configuration.addOpacityRamp(_:)(__int128 *a1)
{
  v2 = a1[1];
  v10 = *a1;
  v11 = v2;
  v12 = a1[2];
  v3 = *(a1 + 12);
  v4 = *(a1 + 13);
  isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull();
  v6 = *v1;
  if ((isUniquelyReferenced_nonNull & 1) == 0)
  {
    [v6 mutableCopy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    type metadata accessor for NSValue(0, &lazy cache variable for type metadata for AVMutableVideoCompositionLayerInstruction);
    swift_dynamicCast();

    v6 = v9;
    *v1 = v9;
  }

  v8[0] = v10;
  v8[1] = v11;
  v8[2] = v12;
  return [v6 setOpacityRampFromStartOpacity:v8 toEndOpacity:COERCE_DOUBLE(__PAIR64__(DWORD1(v12) timeRange:{v3)), COERCE_DOUBLE(__PAIR64__(DWORD1(v11), v4))}];
}

Swift::Void __swiftcall AVVideoCompositionLayerInstruction.Configuration.setTransform(_:at:)(CGAffineTransform *_, CMTime at)
{
  epoch = at.epoch;
  v4 = *&at.timescale;
  value = at.value;
  v10 = *&_->c;
  v11 = *&_->a;
  tx = _->tx;
  ty = _->ty;
  isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull();
  v9 = *v2;
  if ((isUniquelyReferenced_nonNull & 1) == 0)
  {
    [v9 mutableCopy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    type metadata accessor for NSValue(0, &lazy cache variable for type metadata for AVMutableVideoCompositionLayerInstruction);
    swift_dynamicCast();

    v9 = v12[0];
    *v2 = v12[0];
  }

  v13[0] = v11;
  v13[1] = v10;
  v14 = tx;
  v15 = ty;
  v12[0] = value;
  v12[1] = v4;
  v12[2] = epoch;
  [v9 setTransform:v13 atTime:{v12, v10, v11}];
}

id AVVideoCompositionLayerInstruction.Configuration.addTransformRamp(_:)(__int128 *a1)
{
  v2 = a1[1];
  v22 = *a1;
  v23 = v2;
  v3 = a1[3];
  v24 = a1[2];
  v4 = *(a1 + 10);
  v5 = *(a1 + 11);
  v11 = a1[4];
  v12 = a1[7];
  v13 = a1[6];
  v14 = v3;
  v6 = *(a1 + 16);
  v7 = *(a1 + 17);
  isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull();
  v9 = *v1;
  if ((isUniquelyReferenced_nonNull & 1) == 0)
  {
    [v9 mutableCopy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    type metadata accessor for NSValue(0, &lazy cache variable for type metadata for AVMutableVideoCompositionLayerInstruction);
    swift_dynamicCast();

    v9 = *&v16[0];
    *v1 = *&v16[0];
  }

  v19[0] = v14;
  v19[1] = v11;
  v20 = v4;
  v21 = v5;
  v16[0] = v13;
  v16[1] = v12;
  v17 = v6;
  v18 = v7;
  v15[0] = v22;
  v15[1] = v23;
  v15[2] = v24;
  return [v9 setTransformRampFromStartTransform:v19 toEndTransform:v16 timeRange:{v15, v11, v12, v13, v14}];
}

Swift::Void __swiftcall AVVideoCompositionLayerInstruction.Configuration.setCropRectangle(_:at:)(__C::CGRect _, CMTime at)
{
  epoch = at.epoch;
  v4 = *&at.timescale;
  value = at.value;
  height = _.size.height;
  width = _.size.width;
  y = _.origin.y;
  x = _.origin.x;
  isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull();
  v11 = *v2;
  if ((isUniquelyReferenced_nonNull & 1) == 0)
  {
    [v11 mutableCopy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    type metadata accessor for NSValue(0, &lazy cache variable for type metadata for AVMutableVideoCompositionLayerInstruction);
    swift_dynamicCast();

    v11 = v12;
    *v2 = v12;
  }

  v13[0] = value;
  v13[1] = v4;
  v13[2] = epoch;
  [v11 setCropRectangle:v13 atTime:{x, y, width, height}];
}

id AVVideoCompositionLayerInstruction.Configuration.addCropRectangleRamp(_:)(double *a1)
{
  v2 = *(a1 + 1);
  v16 = *a1;
  v17 = v2;
  v18 = *(a1 + 2);
  v3 = a1[6];
  v4 = a1[7];
  v5 = a1[8];
  v6 = a1[9];
  v7 = a1[10];
  v8 = a1[11];
  v9 = a1[12];
  v10 = a1[13];
  isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull();
  v12 = *v1;
  if ((isUniquelyReferenced_nonNull & 1) == 0)
  {
    [v12 mutableCopy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    type metadata accessor for NSValue(0, &lazy cache variable for type metadata for AVMutableVideoCompositionLayerInstruction);
    swift_dynamicCast();

    v12 = v15;
    *v1 = v15;
  }

  v14[0] = v16;
  v14[1] = v17;
  v14[2] = v18;
  return [v12 setCropRectangleRampFromStartCropRectangle:v14 toEndCropRectangle:v3 timeRange:{v4, v5, v6, v7, v8, v9, v10}];
}

id AVVideoCompositionLayerInstruction.init(configuration:)(void *a1)
{
  v1 = *a1;
  result = [swift_getObjCClassFromMetadata() videoCompositionLayerInstructionWithLayerInstruction_];
  if (result)
  {
    v3 = result;

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

__n128 AVVideoCompositionLayerInstruction.CropRectangleRamp.timeRange.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v2;
  result = *(v1 + 32);
  *(a1 + 32) = result;
  return result;
}

__n128 AVVideoCompositionLayerInstruction.CropRectangleRamp.timeRange.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v2;
  result = *(a1 + 32);
  *(v1 + 32) = result;
  return result;
}

void AVVideoCompositionLayerInstruction.CropRectangleRamp.start.setter(double a1, double a2, double a3, double a4)
{
  v4[6] = a1;
  v4[7] = a2;
  v4[8] = a3;
  v4[9] = a4;
}

void AVVideoCompositionLayerInstruction.CropRectangleRamp.end.setter(double a1, double a2, double a3, double a4)
{
  v4[10] = a1;
  v4[11] = a2;
  v4[12] = a3;
  v4[13] = a4;
}

_OWORD *AVVideoCompositionLayerInstruction.CropRectangleRamp.init(timeRange:start:end:)@<X0>(_OWORD *result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>, double a7@<D4>, double a8@<D5>, double a9@<D6>, double a10@<D7>)
{
  v10 = result[1];
  *a2 = *result;
  *(a2 + 16) = v10;
  *(a2 + 32) = result[2];
  *(a2 + 48) = a3;
  *(a2 + 56) = a4;
  *(a2 + 64) = a5;
  *(a2 + 72) = a6;
  *(a2 + 80) = a7;
  *(a2 + 88) = a8;
  *(a2 + 96) = a9;
  *(a2 + 104) = a10;
  return result;
}

BOOL static AVVideoCompositionLayerInstruction.CropRectangleRamp.== infix(_:_:)(double *a1, double *a2)
{
  v2 = a1[6];
  v3 = a1[7];
  v4 = a1[8];
  v5 = a1[9];
  v17 = a1[11];
  v18 = a1[10];
  v15 = a1[13];
  v16 = a1[12];
  v6 = a2[6];
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  v13 = a2[11];
  v14 = a2[10];
  v11 = a2[13];
  v12 = a2[12];
  if ((static CMTimeRange.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v19.origin.x = v2;
  v19.origin.y = v3;
  v19.size.width = v4;
  v19.size.height = v5;
  v21.origin.x = v6;
  v21.origin.y = v7;
  v21.size.width = v8;
  v21.size.height = v9;
  result = CGRectEqualToRect(v19, v21);
  if (result)
  {
    v20.origin.y = v17;
    v20.origin.x = v18;
    v20.size.height = v15;
    v20.size.width = v16;
    v22.origin.y = v13;
    v22.origin.x = v14;
    v22.size.height = v11;
    v22.size.width = v12;
    return CGRectEqualToRect(v20, v22);
  }

  return result;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance AVVideoCompositionLayerInstruction.CropRectangleRamp(double *a1, double *a2)
{
  v2 = a1[6];
  v3 = a1[7];
  v4 = a1[8];
  v5 = a1[9];
  v17 = a1[11];
  v18 = a1[10];
  v15 = a1[13];
  v16 = a1[12];
  v6 = a2[6];
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  v13 = a2[11];
  v14 = a2[10];
  v11 = a2[13];
  v12 = a2[12];
  if ((static CMTimeRange.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v19.origin.x = v2;
  v19.origin.y = v3;
  v19.size.width = v4;
  v19.size.height = v5;
  v21.origin.x = v6;
  v21.origin.y = v7;
  v21.size.width = v8;
  v21.size.height = v9;
  result = CGRectEqualToRect(v19, v21);
  if (result)
  {
    v20.origin.y = v17;
    v20.origin.x = v18;
    v20.size.height = v15;
    v20.size.width = v16;
    v22.origin.y = v13;
    v22.origin.x = v14;
    v22.size.height = v11;
    v22.size.width = v12;
    return CGRectEqualToRect(v20, v22);
  }

  return result;
}

__n128 AVVideoCompositionLayerInstruction.OpacityRamp.timeRange.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v2;
  result = *(v1 + 32);
  *(a1 + 32) = result;
  return result;
}

__n128 AVVideoCompositionLayerInstruction.OpacityRamp.timeRange.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v2;
  result = *(a1 + 32);
  *(v1 + 32) = result;
  return result;
}

_OWORD *AVVideoCompositionLayerInstruction.OpacityRamp.init(timeRange:start:end:)@<X0>(_OWORD *result@<X0>, uint64_t a2@<X8>, float a3@<S0>, float a4@<S1>)
{
  v4 = result[1];
  *a2 = *result;
  *(a2 + 16) = v4;
  *(a2 + 32) = result[2];
  *(a2 + 48) = a3;
  *(a2 + 52) = a4;
  return result;
}

BOOL static AVVideoCompositionLayerInstruction.OpacityRamp.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 48);
  v2 = *(a1 + 52);
  v5 = *(a2 + 48);
  v4 = *(a2 + 52);
  v6 = static CMTimeRange.== infix(_:_:)();
  result = 0;
  if ((v6 & 1) != 0 && v3 == v5)
  {
    return v2 == v4;
  }

  return result;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance AVVideoCompositionLayerInstruction.OpacityRamp(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 48);
  v2 = *(a1 + 52);
  v5 = *(a2 + 48);
  v4 = *(a2 + 52);
  v6 = static CMTimeRange.== infix(_:_:)();
  result = 0;
  if ((v6 & 1) != 0 && v3 == v5)
  {
    return v2 == v4;
  }

  return result;
}

__n128 AVVideoCompositionLayerInstruction.TransformRamp.timeRange.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v2;
  result = *(v1 + 32);
  *(a1 + 32) = result;
  return result;
}

__n128 AVVideoCompositionLayerInstruction.TransformRamp.timeRange.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v2;
  result = *(a1 + 32);
  *(v1 + 32) = result;
  return result;
}

__n128 AVVideoCompositionLayerInstruction.TransformRamp.start.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  *a1 = *(v1 + 48);
  *(a1 + 16) = v2;
  result = *(v1 + 80);
  *(a1 + 32) = result;
  return result;
}

__n128 AVVideoCompositionLayerInstruction.TransformRamp.start.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 48) = *a1;
  *(v1 + 64) = v2;
  result = *(a1 + 32);
  *(v1 + 80) = result;
  return result;
}

__n128 AVVideoCompositionLayerInstruction.TransformRamp.end.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 112);
  *a1 = *(v1 + 96);
  *(a1 + 16) = v2;
  result = *(v1 + 128);
  *(a1 + 32) = result;
  return result;
}

__n128 AVVideoCompositionLayerInstruction.TransformRamp.end.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 96) = *a1;
  *(v1 + 112) = v2;
  result = *(a1 + 32);
  *(v1 + 128) = result;
  return result;
}

__n128 AVVideoCompositionLayerInstruction.TransformRamp.init(timeRange:start:end:)@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  result = *a1;
  v7 = *(a1 + 16);
  v8 = *(a1 + 32);
  v9 = *a2;
  v10 = a2[1];
  v11 = a3[2];
  v5 = *a3;
  v6 = a3[1];
  *(a4 + 80) = a2[2];
  *(a4 + 96) = v5;
  *(a4 + 112) = v6;
  *(a4 + 128) = v11;
  *(a4 + 48) = v9;
  *(a4 + 64) = v10;
  *(a4 + 16) = v7;
  *(a4 + 32) = v8;
  *a4 = result;
  return result;
}

uint64_t static AVVideoCompositionLayerInstruction.TransformRamp.== infix(_:_:)()
{
  if (static CMTimeRange.== infix(_:_:)() & 1) != 0 && (static CGAffineTransform.== infix(_:_:)())
  {
    v0 = static CGAffineTransform.== infix(_:_:)();
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AVVideoCompositionLayerInstruction.TransformRamp()
{
  if (static CMTimeRange.== infix(_:_:)() & 1) != 0 && (static CGAffineTransform.== infix(_:_:)())
  {
    v0 = static CGAffineTransform.== infix(_:_:)();
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

uint64_t AVVideoCompositionCoreAnimationTool.Configuration.layers.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t AVVideoCompositionCoreAnimationTool.Configuration.init(postProcessingAsVideoLayers:containingLayer:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

double AVVideoCompositionCoreAnimationTool.Configuration.init(postProcessingAsVideoLayer:containingLayer:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v6 = swift_allocObject();
  *&result = 1;
  *(v6 + 16) = xmmword_1C9390C20;
  *(v6 + 32) = a1;
  *a3 = v6;
  a3[1] = a2;
  return result;
}

id AVVideoCompositionCoreAnimationTool.init(configuration:)(uint64_t a1)
{
  v1 = *(a1 + 8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  type metadata accessor for NSValue(0, &lazy cache variable for type metadata for CALayer);
  v3 = v1;

  isa = Array._bridgeToObjectiveC()().super.isa;

  v5 = [ObjCClassFromMetadata videoCompositionCoreAnimationToolWithPostProcessingAsVideoLayers:isa inLayer:v3];

  return v5;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_;

  return v6(a1);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t outlined init with take of AVSpatialVideoConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AVSpatialVideoConfiguration();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id specialized AVVideoComposition.Configuration.animationTool.setter(uint64_t a1)
{
  isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull();
  v4 = *v1;
  if ((isUniquelyReferenced_nonNull & 1) == 0)
  {
    [v4 mutableCopy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    type metadata accessor for NSValue(0, &lazy cache variable for type metadata for AVMutableVideoComposition);
    swift_dynamicCast();

    v4 = v6;
    *v1 = v6;
  }

  return [v4 setAnimationTool_];
}

uint64_t outlined init with copy of AVSpatialVideoConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AVSpatialVideoConfiguration();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of AVSpatialVideoConfiguration(uint64_t a1)
{
  v2 = type metadata accessor for AVSpatialVideoConfiguration();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id specialized AVVideoComposition.Configuration.perFrameHDRDisplayMetadataPolicy.setter(uint64_t a1)
{
  isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull();
  v4 = *v1;
  if ((isUniquelyReferenced_nonNull & 1) == 0)
  {
    [v4 mutableCopy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    type metadata accessor for NSValue(0, &lazy cache variable for type metadata for AVMutableVideoComposition);
    swift_dynamicCast();

    v4 = v6;
    *v1 = v6;
  }

  return [v4 setPerFrameHDRDisplayMetadataPolicy_];
}

double _sSo34AVVideoCompositionLayerInstructionC12AVFoundationE13TransformRampVSgWOi0_(uint64_t a1)
{
  result = 0.0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 144) = 1;
  return result;
}

uint64_t keypath_set_18Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v6 = *a1;
  v7 = a1[1];

  return a5(v6, v7);
}

uint64_t getEnumTagSinglePayload for AVCIImageFilteringParameters(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t storeEnumTagSinglePayload for AVCIImageFilteringParameters(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
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

uint64_t getEnumTagSinglePayload for AVVideoCompositionInstruction.Configuration(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for AVVideoCompositionInstruction.Configuration(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AVVideoComposition.Configuration(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for AVVideoComposition.Configuration(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t getEnumTagSinglePayload for AVVideoCompositionLayerInstruction.CropRectangleRamp(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 112))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AVVideoCompositionLayerInstruction.CropRectangleRamp(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 112) = v3;
  return result;
}

__n128 __swift_memcpy56_4(uint64_t a1, uint64_t a2)
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

uint64_t getEnumTagSinglePayload for AVVideoCompositionLayerInstruction.OpacityRamp(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 56))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AVVideoCompositionLayerInstruction.OpacityRamp(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 56) = v3;
  return result;
}

__n128 __swift_memcpy144_8(uint64_t a1, uint64_t a2)
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
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t getEnumTagSinglePayload for AVVideoCompositionLayerInstruction.TransformRamp(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 144))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AVVideoCompositionLayerInstruction.TransformRamp(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 144) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for AVCIImageFilteringResult(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for AVCIImageFilteringResult(uint64_t result, int a2, int a3)
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

uint64_t partial apply for closure #1 in closure #1 in AVVideoComposition.init(applyingFiltersTo:applier:)(uint64_t a1)
{
  v4 = *(v1 + 3);
  v14 = *(v1 + 2);
  v5 = *(v1 + 4);
  v6 = *(v1 + 5);
  v7 = *(v1 + 6);
  v8 = *(v1 + 7);
  v9 = v1[8];
  v10 = v1[9];
  v11 = *(v1 + 10);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = closure #1 in AVAssetReader.outputProvider(for:)partial apply;

  return closure #1 in closure #1 in AVVideoComposition.init(applyingFiltersTo:applier:)(v9, v10, a1, v14, v4, v5, v6, v7, v8, v11);
}

uint64_t outlined init with copy of CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection?(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection?(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in AVAssetReader.outputProvider(for:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v4);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA_99(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = closure #1 in AVAssetReader.outputProvider(for:)partial apply;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v4);
}

uint64_t untilReadyForMoreMediaData(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  if (a1)
  {
    swift_getObjectType();
    v4 = dispatch thunk of Actor.unownedExecutor.getter();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v3[6] = v4;
  v3[7] = v6;

  return MEMORY[0x1EEE6DFA0](untilReadyForMoreMediaData(for:), v4, v6);
}

uint64_t untilReadyForMoreMediaData(for:)()
{
  v1 = v0[5];
  v0[2] = 0;
  v2 = swift_allocObject();
  v0[8] = v2;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  v3 = swift_task_alloc();
  v0[9] = v3;
  v3[2] = v0 + 2;
  v3[3] = v1;
  v3[4] = v2;
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = untilReadyForMoreMediaData(for:);

  return MEMORY[0x1EEE6DDE0]();
}

{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return MEMORY[0x1EEE6DFA0](untilReadyForMoreMediaData(for:), v3, v2);
}

{
  v1 = *(v0 + 16);
  if (v1)
  {
    dispatch thunk of NSKeyValueObservation.invalidate()();
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFSo18AVAssetWriterInputC12AVFoundationE16PassDescriptions33_0DBEBA44EF5A78124CEEE30A91094244LLV8IteratorV_Tg5(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = type metadata accessor for AVAssetWriterInput.PassDescriptions.Iterator();
  v4 = lazy protocol witness table accessor for type AVAssetWriterInput.PassDescriptions.Iterator and conformance AVAssetWriterInput.PassDescriptions.Iterator(&lazy protocol witness table cache variable for type AVAssetWriterInput.PassDescriptions.Iterator and conformance AVAssetWriterInput.PassDescriptions.Iterator, type metadata accessor for AVAssetWriterInput.PassDescriptions.Iterator);
  v5 = swift_task_alloc();
  v2[6] = v5;
  *v5 = v2;
  v5[1] = _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFSo18AVAssetWriterInputC12AVFoundationE16PassDescriptions33_0DBEBA44EF5A78124CEEE30A91094244LLV8IteratorV_Tg5TQ0_;

  return MEMORY[0x1EEE6D8C8](v2 + 2, v3, v4);
}

uint64_t _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFSo18AVAssetWriterInputC12AVFoundationE16PassDescriptions33_0DBEBA44EF5A78124CEEE30A91094244LLV8IteratorV_Tg5TQ0_()
{
  v2 = *(*v1 + 32);
  *(*v1 + 56) = v0;

  if (v0)
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = dispatch thunk of Actor.unownedExecutor.getter();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFSo18AVAssetWriterInputC12AVFoundationE16PassDescriptions33_0DBEBA44EF5A78124CEEE30A91094244LLV8IteratorV_Tg5TY2_;
  }

  else
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = dispatch thunk of Actor.unownedExecutor.getter();
      v5 = v7;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = AVMetrics.AsyncIterator.next();
  }

  return MEMORY[0x1EEE6DFA0](v6, v3, v5);
}

uint64_t _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFSo18AVAssetWriterInputC12AVFoundationE16PassDescriptions33_0DBEBA44EF5A78124CEEE30A91094244LLV8IteratorV_Tg5TY2_()
{
  v0[3] = v0[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
  swift_dynamicCast();
  swift_willThrowTypedImpl();
  v1 = v0[1];

  return v1();
}

uint64_t _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFSo30AVPlayerItemIntegratedTimelineC12AVFoundationE13PeriodicTimesV8IteratorV_Tg5(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = type metadata accessor for AVPlayerItemIntegratedTimeline.PeriodicTimes.Iterator(0);
  v4 = lazy protocol witness table accessor for type AVAssetWriterInput.PassDescriptions.Iterator and conformance AVAssetWriterInput.PassDescriptions.Iterator(&lazy protocol witness table cache variable for type AVPlayerItemIntegratedTimeline.PeriodicTimes.Iterator and conformance AVPlayerItemIntegratedTimeline.PeriodicTimes.Iterator, type metadata accessor for AVPlayerItemIntegratedTimeline.PeriodicTimes.Iterator);
  v5 = swift_task_alloc();
  v2[5] = v5;
  *v5 = v2;
  v5[1] = _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFSo30AVPlayerItemIntegratedTimelineC12AVFoundationE13PeriodicTimesV8IteratorV_Tg5TQ0_;

  return MEMORY[0x1EEE6D8C8](v2 + 7, v3, v4);
}

uint64_t _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFSo30AVPlayerItemIntegratedTimelineC12AVFoundationE13PeriodicTimesV8IteratorV_Tg5TQ0_()
{
  v2 = *(*v1 + 24);
  *(*v1 + 48) = v0;

  if (v0)
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = dispatch thunk of Actor.unownedExecutor.getter();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFSo30AVPlayerItemIntegratedTimelineC12AVFoundationE13PeriodicTimesV8IteratorV_Tg5TY2_;
  }

  else
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = dispatch thunk of Actor.unownedExecutor.getter();
      v5 = v7;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFSo30AVPlayerItemIntegratedTimelineC12AVFoundationE13PeriodicTimesV8IteratorV_Tg5TY1_;
  }

  return MEMORY[0x1EEE6DFA0](v6, v3, v5);
}

uint64_t _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFSo30AVPlayerItemIntegratedTimelineC12AVFoundationE13BoundaryTimesV8IteratorV_Tg5(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = type metadata accessor for AVPlayerItemIntegratedTimeline.BoundaryTimes.Iterator(0);
  v4 = lazy protocol witness table accessor for type AVAssetWriterInput.PassDescriptions.Iterator and conformance AVAssetWriterInput.PassDescriptions.Iterator(&lazy protocol witness table cache variable for type AVPlayerItemIntegratedTimeline.BoundaryTimes.Iterator and conformance AVPlayerItemIntegratedTimeline.BoundaryTimes.Iterator, type metadata accessor for AVPlayerItemIntegratedTimeline.BoundaryTimes.Iterator);
  v5 = swift_task_alloc();
  v2[5] = v5;
  *v5 = v2;
  v5[1] = _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFSo30AVPlayerItemIntegratedTimelineC12AVFoundationE13BoundaryTimesV8IteratorV_Tg5TQ0_;

  return MEMORY[0x1EEE6D8C8](v2 + 7, v3, v4);
}

uint64_t _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFSo30AVPlayerItemIntegratedTimelineC12AVFoundationE13BoundaryTimesV8IteratorV_Tg5TQ0_()
{
  v2 = *(*v1 + 24);
  *(*v1 + 48) = v0;

  if (v0)
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = dispatch thunk of Actor.unownedExecutor.getter();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFSo30AVPlayerItemIntegratedTimelineC12AVFoundationE13BoundaryTimesV8IteratorV_Tg5TY2_;
  }

  else
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = dispatch thunk of Actor.unownedExecutor.getter();
      v5 = v7;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFSo30AVPlayerItemIntegratedTimelineC12AVFoundationE13BoundaryTimesV8IteratorV_Tg5TY1_;
  }

  return MEMORY[0x1EEE6DFA0](v6, v3, v5);
}

uint64_t _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFSo30AVPlayerItemIntegratedTimelineC12AVFoundationE13BoundaryTimesV8IteratorV_Tg5TY2_()
{
  v0[2] = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
  swift_dynamicCast();
  swift_willThrowTypedImpl();
  v1 = v0[1];

  return v1();
}

Swift::Bool __swiftcall AVAssetWriterInputTaggedPixelBufferGroupAdaptor.appendTaggedBuffers(_:withPresentationTime:)(Swift::OpaquePointer _, CMTime withPresentationTime)
{
  epoch = withPresentationTime.epoch;
  timescale = withPresentationTime.timescale;
  value = withPresentationTime.value;
  flags = withPresentationTime.flags;
  v7 = Array<A>.taggedBufferGroup.getter();
  v9 = value;
  v10 = timescale;
  v11 = flags;
  v12 = epoch;
  LOBYTE(epoch) = [v2 appendTaggedPixelBufferGroup:v7 withPresentationTime:&v9];

  return epoch;
}

uint64_t AVAssetWriterInput.MultiPassController.passDescriptions.getter@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 24);
  if (!v3)
  {
    v4 = [*(v1 + 16) canPerformMultiplePasses];
    v3 = *(v1 + 24);
    if (v4)
    {
      v5 = *(v1 + 16);
      *(v1 + 24) = v5;
      v8 = v3;
      v6 = v5;

      v3 = *(v1 + 24);
    }
  }

  *a1 = v3;

  return MEMORY[0x1EEE66C98]();
}

uint64_t AVAssetWriterInput.MultiPassController.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

unint64_t lazy protocol witness table accessor for type AVAssetWriterInput.PassDescriptions and conformance AVAssetWriterInput.PassDescriptions()
{
  result = lazy protocol witness table cache variable for type AVAssetWriterInput.PassDescriptions and conformance AVAssetWriterInput.PassDescriptions;
  if (!lazy protocol witness table cache variable for type AVAssetWriterInput.PassDescriptions and conformance AVAssetWriterInput.PassDescriptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AVAssetWriterInput.PassDescriptions and conformance AVAssetWriterInput.PassDescriptions);
  }

  return result;
}

uint64_t type metadata accessor for AVAssetWriterInput.PassDescriptions.Iterator()
{
  result = type metadata singleton initialization cache for AVAssetWriterInput.PassDescriptions.Iterator;
  if (!type metadata singleton initialization cache for AVAssetWriterInput.PassDescriptions.Iterator)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void closure #1 in AVAssetWriterInput.PassDescriptions.Iterator.init(input:)(uint64_t a1, void *a2)
{
  v21 = a1;
  v22 = a2;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySo33AVAssetWriterInputPassDescriptionC_GMd);
  v2 = *(v20 - 8);
  v19 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v18 = &v17 - v3;
  v17 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v4 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x1EEE9AC00](v7);
  v8 = type metadata accessor for DispatchQoS();
  MEMORY[0x1EEE9AC00](v8 - 8);
  type metadata accessor for NSValue(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type AVAssetWriterInput.PassDescriptions.Iterator and conformance AVAssetWriterInput.PassDescriptions.Iterator(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8090], v17);
  v9 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v10 = v18;
  v11 = v20;
  (*(v2 + 16))(v18, v21, v20);
  v12 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v13 = swift_allocObject();
  v14 = v22;
  *(v13 + 16) = v22;
  (*(v2 + 32))(v13 + v12, v10, v11);
  aBlock[4] = partial apply for closure #1 in closure #1 in AVAssetWriterInput.PassDescriptions.Iterator.init(input:);
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_3;
  v15 = _Block_copy(aBlock);
  v16 = v14;

  [v16 respondToEachPassDescriptionOnQueue:v9 usingBlock:v15];
  _Block_release(v15);
}

void closure #1 in closure #1 in AVAssetWriterInput.PassDescriptions.Iterator.init(input:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOySo33AVAssetWriterInputPassDescriptionC__GMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v7 - v4;
  v6 = [a1 currentPassDescription];
  if (v6)
  {
    v7[1] = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySo33AVAssetWriterInputPassDescriptionC_GMd);
    AsyncStream.Continuation.yield(_:)();
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySo33AVAssetWriterInputPassDescriptionC_GMd);
    AsyncStream.Continuation.finish()();
  }
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t protocol witness for AsyncIteratorProtocol.next() in conformance AVAssetWriterInput.PassDescriptions.Iterator(uint64_t a1, uint64_t a2)
{
  v3[4] = v2;
  v3[5] = a2;
  v3[3] = a1;
  return MEMORY[0x1EEE6DFA0](protocol witness for AsyncIteratorProtocol.next() in conformance AVAssetWriterInput.PassDescriptions.Iterator, 0, 0);
}

uint64_t protocol witness for AsyncIteratorProtocol.next() in conformance AVAssetWriterInput.PassDescriptions.Iterator()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = *(v1 + 24);
  if (*(v2 + v3) == 1)
  {
    [*(v2 + *(v1 + 20)) markCurrentPassAsFinished];
  }

  *(v2 + v3) = 1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVySo33AVAssetWriterInputPassDescriptionC_GMd);
  *v4 = v0;
  v4[1] = protocol witness for AsyncIteratorProtocol.next() in conformance AVAssetWriterInput.PassDescriptions.Iterator;

  return MEMORY[0x1EEE6D9D0](v0 + 2, v5);
}

{

  return MEMORY[0x1EEE6DFA0](protocol witness for AsyncIteratorProtocol.next() in conformance AVAssetWriterInput.PassDescriptions.Iterator, 0, 0);
}

{
  **(v0 + 24) = *(v0 + 16);
  return (*(v0 + 8))();
}

uint64_t _sSo18AVAssetWriterInputC12AVFoundationE16PassDescriptions33_0DBEBA44EF5A78124CEEE30A91094244LLV8IteratorVScIACScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTW(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = _sSo18AVAssetWriterInputC12AVFoundationE16PassDescriptions33_0DBEBA44EF5A78124CEEE30A91094244LLV8IteratorVScIACScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ0_;

  return _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFSo18AVAssetWriterInputC12AVFoundationE16PassDescriptions33_0DBEBA44EF5A78124CEEE30A91094244LLV8IteratorV_Tg5(a2, a3);
}

uint64_t _sSo18AVAssetWriterInputC12AVFoundationE16PassDescriptions33_0DBEBA44EF5A78124CEEE30A91094244LLV8IteratorVScIACScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ0_(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t protocol witness for AsyncSequence.makeAsyncIterator() in conformance AVAssetWriterInput.PassDescriptions@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOySo33AVAssetWriterInputPassDescriptionC__GMd);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSySo33AVAssetWriterInputPassDescriptionCGMd);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15[-v9];
  v11 = *v1;
  v12 = type metadata accessor for AVAssetWriterInput.PassDescriptions.Iterator();
  *(a1 + *(v12 + 24)) = 0;
  *(a1 + *(v12 + 20)) = v11;
  type metadata accessor for NSValue(0, &lazy cache variable for type metadata for AVAssetWriterInputPassDescription);
  v16 = v11;
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8650], v3);
  v13 = v11;
  AsyncStream.init(_:bufferingPolicy:_:)();
  AsyncStream.makeAsyncIterator()();

  return (*(v8 + 8))(v10, v7);
}

void partial apply for closure #1 in closure #1 in AVAssetWriterInput.PassDescriptions.Iterator.init(input:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySo33AVAssetWriterInputPassDescriptionC_GMd);
  v1 = *(v0 + 16);

  closure #1 in closure #1 in AVAssetWriterInput.PassDescriptions.Iterator.init(input:)(v1);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t lazy protocol witness table accessor for type AVAssetWriterInput.PassDescriptions.Iterator and conformance AVAssetWriterInput.PassDescriptions.Iterator(unint64_t *a1, void (*a2)(uint64_t))
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

void closure #1 in untilReadyForMoreMediaData(for:)(uint64_t a1, void **a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v16 - v10;
  v16[1] = a3;
  swift_getKeyPath();
  (*(v9 + 16))(v11, a1, v8);
  v12 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a4;
  (*(v9 + 32))(v13 + v12, v11, v8);

  v14 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

  v15 = *a2;
  *a2 = v14;
}

void closure #1 in closure #1 in untilReadyForMoreMediaData(for:)(id *a1, uint64_t a2, uint64_t a3)
{
  if ([*a1 isReadyForMoreMediaData])
  {
    os_unfair_lock_lock((a3 + 16));
    v4 = *(a3 + 24);
    v5 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
    }

    else
    {
      *(a3 + 24) = v5;
      os_unfair_lock_unlock((a3 + 16));
      if (v5 <= 1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd);
        CheckedContinuation.resume(returning:)();
      }
    }
  }
}

void partial apply for closure #1 in closure #1 in untilReadyForMoreMediaData(for:)(id *a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd);
  v5 = *(v2 + 16);

  closure #1 in closure #1 in untilReadyForMoreMediaData(for:)(a1, a2, v5);
}

void type metadata completion function for AVAssetWriterInput.PassDescriptions.Iterator()
{
  type metadata accessor for AsyncStream<AVAssetWriterInputPassDescription>.Iterator();
  if (v0 <= 0x3F)
  {
    type metadata accessor for NSValue(319, &lazy cache variable for type metadata for AVAssetWriterInput);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for AsyncStream<AVAssetWriterInputPassDescription>.Iterator()
{
  if (!lazy cache variable for type metadata for AsyncStream<AVAssetWriterInputPassDescription>.Iterator)
  {
    type metadata accessor for NSValue(255, &lazy cache variable for type metadata for AVAssetWriterInputPassDescription);
    v0 = type metadata accessor for AsyncStream.Iterator();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AsyncStream<AVAssetWriterInputPassDescription>.Iterator);
    }
  }
}

uint64_t AVAnnotationSerializedData.jsonData.getter()
{
  v1 = *v0;
  outlined copy of Data._Representation(*v0, *(v0 + 8));
  return v1;
}

uint64_t outlined copy of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t AVAnnotationSerializedData.init(jsonData:binaryData:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

id AVAnnotation.init(serializedData:)(uint64_t *a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  isa = Data._bridgeToObjectiveC()().super.isa;
  specialized _arrayForceCast<A, B>(_:)(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd);
  v6 = Array._bridgeToObjectiveC()().super.isa;

  outlined consume of Data._Representation(v1, v2);

  v11[0] = 0;
  v7 = [v4 initWithJSONData:isa representationBinaryDataBindings:v6 error:v11];

  if (v7)
  {
    v8 = v11[0];
  }

  else
  {
    v9 = v11[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v7;
}

uint64_t specialized _arrayForceCast<A, B>(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v9 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v4 = a1 + 32;
    v2 = v9;
    do
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSs11AnyHashableVGMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd);
      swift_dynamicCast();
      v6 = *(v9 + 16);
      v5 = *(v9 + 24);
      if (v6 >= v5 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1);
      }

      *(v9 + 16) = v6 + 1;
      *(v9 + 8 * v6 + 32) = v8;
      v4 += 8;
      --v1;
    }

    while (v1);
  }

  return v2;
}

{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v9 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = v9;
    type metadata accessor for CMTime(0);
    v4 = a1 + 48;
    do
    {
      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      v4 += 24;
      *(v2 + 16) = v6 + 1;
      outlined init with take of Any(&v8, (v2 + 32 * v6 + 32));
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t outlined consume of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void AVAnnotation.serialize()(uint64_t *a1@<X8>)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) init];
  v4 = [objc_allocWithZone(MEMORY[0x1E695DEC8]) init];
  v11 = v4;
  v12[0] = v3;
  [v1 getJSONData:v12 representationBinaryDataBindings:&v11];
  v5 = v11;

  v6 = v12[0];
  v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v12[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSs11AnyHashableVGMd);
  static Array._forceBridgeFromObjectiveC(_:result:)();
  v10 = v12[0];
  if (!v12[0])
  {
    __break(1u);
  }

  *a1 = v7;
  a1[1] = v9;
  a1[2] = v10;
}

void AVAnnotationPathRepresentation.init(paths:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v18 = MEMORY[0x1E69E7CC0];
    v16 = *(a1 + 16);
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v3 = v16;
    v4 = a1;
    v5 = 0;
    v6 = v18;
    v17 = a1 + 32;
    while (v5 < *(v4 + 16))
    {
      v7 = *(v17 + 8 * v5);
      v8 = *(v7 + 16);
      if (v8)
      {

        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
        if (*(v7 + 16))
        {
          CGPointCreateDictionaryRepresentation(*(v7 + 32));
          objc_opt_self();
          swift_dynamicCastObjCClassUnconditional();
          type metadata accessor for NSNumber();
          static Dictionary._forceBridgeFromObjectiveC(_:result:)();
          goto LABEL_13;
        }

        __break(1u);
        break;
      }

      v9 = MEMORY[0x1E69E7CC0];
      v19 = v6;
      v11 = *(v6 + 16);
      v10 = *(v6 + 24);
      if (v11 >= v10 >> 1)
      {
        v12 = v4;
        v13 = v5;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
        v5 = v13;
        v3 = v16;
        v4 = v12;
        v6 = v19;
      }

      ++v5;
      *(v6 + 16) = v11 + 1;
      *(v6 + 8 * v11 + 32) = v9;
      if (v5 == v3)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
  }

  else
  {
LABEL_10:

    v14 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDySSSo8NSNumberCGGMd);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v14 initWithPaths_];
  }
}

uint64_t AVAnnotationPathRepresentation.paths.getter()
{
  v1 = [v0 paths];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDySSSo8NSNumberCGGMd);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = *(v2 + 16);
  if (v3)
  {
    v28 = MEMORY[0x1E69E7CC0];
    v23 = v2;
    v24 = *(v2 + 16);
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
    result = v2;
    v5 = v24;
    v6 = 0;
    v7 = v28;
    v25 = v2 + 32;
    while (v6 < *(result + 16))
    {
      v8 = *(v25 + 8 * v6);
      v9 = *(v8 + 16);
      if (v9)
      {
        v26 = v6;
        v27 = MEMORY[0x1E69E7CC0];

        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9, 0);
        v10 = 0;
        v11 = v27;
        while (v10 < *(v8 + 16))
        {
          type metadata accessor for NSNumber();

          v12.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
          *(&result - 2) = CGPoint.init(dictionaryRepresentation:)(v12.super.isa);
          if (v14)
          {
            goto LABEL_21;
          }

          v15 = result;
          v16 = v13;

          v18 = *(v27 + 16);
          v17 = *(v27 + 24);
          if (v18 >= v17 >> 1)
          {
            result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1);
          }

          ++v10;
          *(v27 + 16) = v18 + 1;
          v19 = v27 + 16 * v18;
          *(v19 + 32) = v15;
          *(v19 + 40) = v16;
          if (v9 == v10)
          {

            result = v23;
            v5 = v24;
            v6 = v26;
            goto LABEL_13;
          }
        }

        __break(1u);
        break;
      }

      v11 = MEMORY[0x1E69E7CC0];
LABEL_13:
      v21 = *(v28 + 16);
      v20 = *(v28 + 24);
      if (v21 >= v20 >> 1)
      {
        v22 = v6;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1);
        v6 = v22;
        result = v23;
        v5 = v24;
      }

      ++v6;
      *(v28 + 16) = v21 + 1;
      *(v28 + 8 * v21 + 32) = v11;
      if (v6 == v5)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

void AVAnnotationPathRepresentation.paths.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v17 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v4 = a1;
    v5 = 0;
    v6 = v17;
    v15 = a1 + 32;
    while (v5 < *(v4 + 16))
    {
      v7 = *(v15 + 8 * v5);
      v8 = *(v7 + 16);
      if (v8)
      {

        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
        if (*(v7 + 16))
        {
          CGPointCreateDictionaryRepresentation(*(v7 + 32));
          objc_opt_self();
          swift_dynamicCastObjCClassUnconditional();
          type metadata accessor for NSNumber();
          static Dictionary._forceBridgeFromObjectiveC(_:result:)();
          goto LABEL_17;
        }

        __break(1u);
        break;
      }

      v9 = MEMORY[0x1E69E7CC0];
      v18 = v6;
      v11 = *(v6 + 16);
      v10 = *(v6 + 24);
      if (v11 >= v10 >> 1)
      {
        v12 = v4;
        v13 = v5;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
        v5 = v13;
        v4 = v12;
        v6 = v18;
      }

      ++v5;
      *(v6 + 16) = v11 + 1;
      *(v6 + 8 * v11 + 32) = v9;
      if (v5 == v2)
      {

        v1 = v14;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  else
  {

LABEL_12:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDySSSo8NSNumberCGGMd);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v1 setPaths_];
  }
}

void (*AVAnnotationPathRepresentation.paths.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = AVAnnotationPathRepresentation.paths.getter();
  return AVAnnotationPathRepresentation.paths.modify;
}

void AVAnnotationPathRepresentation.paths.modify(uint64_t *a1, char a2)
{
  if (a2)
  {

    AVAnnotationPathRepresentation.paths.setter(v2);
  }

  else
  {
    AVAnnotationPathRepresentation.paths.setter(*a1);
  }
}

unint64_t type metadata accessor for NSNumber()
{
  result = lazy cache variable for type metadata for NSNumber;
  if (!lazy cache variable for type metadata for NSNumber)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSNumber);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AVAnnotationSerializedData(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for AVAnnotationSerializedData(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

char *AVCaptureSlider.prominentValues.getter()
{
  v1 = [v0 prominentValues];
  type metadata accessor for NSNumber();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_16:

    return MEMORY[0x1E69E7CC0];
  }

  if (v2 < 0)
  {
    v13 = v2;
  }

  else
  {
    v13 = v2 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = MEMORY[0x1CCA86B70](v13);
  if (!v3)
  {
    goto LABEL_16;
  }

LABEL_3:
  v14 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3 & ~(v3 >> 63), 0);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v6 = v14;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1CCA86AE0](v5, v2);
      }

      else
      {
        v7 = *(v2 + 8 * v5 + 32);
      }

      v8 = v7;
      [v7 floatValue];
      v10 = v9;

      v12 = *(v14 + 16);
      v11 = *(v14 + 24);
      if (v12 >= v11 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
      }

      ++v5;
      *(v14 + 16) = v12 + 1;
      *(v14 + 4 * v12 + 32) = v10;
    }

    while (v3 != v5);

    return v6;
  }

  __break(1u);
  return result;
}

void AVCaptureSlider.prominentValues.setter(uint64_t a1)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = 32;
    do
    {
      v5 = *(a1 + v4);
      v6 = objc_allocWithZone(MEMORY[0x1E696AD98]);
      LODWORD(v7) = v5;
      [v6 initWithFloat_];
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v4 += 4;
      --v3;
    }

    while (v3);
  }

  type metadata accessor for NSNumber();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v1 setProminentValues_];
}

void (*AVCaptureSlider.prominentValues.modify(char **a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = AVCaptureSlider.prominentValues.getter();
  return AVCaptureSlider.prominentValues.modify;
}

void AVCaptureSlider.prominentValues.modify(uint64_t *a1, char a2)
{
  if (a2)
  {

    AVCaptureSlider.prominentValues.setter(v2);
  }

  else
  {
    AVCaptureSlider.prominentValues.setter(*a1);
  }
}

id AVCaptureSlider.init(_:symbolName:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float a5, float a6)
{
  v12 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v13 = MEMORY[0x1CCA866B0](a1, a2);

  v14 = MEMORY[0x1CCA866B0](a3, a4);

  *&v15 = a5;
  *&v16 = a6;
  v17 = [v12 initWithLocalizedTitle:v13 symbolName:v14 minValue:v15 maxValue:v16];

  return v17;
}

id AVCaptureSlider.init(_:symbolName:in:step:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float a5, float a6, float a7)
{
  v14 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v15 = MEMORY[0x1CCA866B0](a1, a2);

  v16 = MEMORY[0x1CCA866B0](a3, a4);

  *&v17 = a5;
  *&v18 = a6;
  *&v19 = a7;
  v20 = [v14 initWithLocalizedTitle:v15 symbolName:v16 minValue:v17 maxValue:v18 step:v19];

  return v20;
}

id AVCaptureSlider.init(_:symbolName:values:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a3;
  v9 = a1;
  v10 = *(a5 + 16);
  if (v10)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v11 = 32;
    do
    {
      v12 = *(a5 + v11);
      v13 = objc_allocWithZone(MEMORY[0x1E696AD98]);
      LODWORD(v14) = v12;
      [v13 initWithFloat_];
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v11 += 4;
      --v10;
    }

    while (v10);

    v7 = a3;
    v9 = a1;
  }

  else
  {
  }

  v15 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v16 = MEMORY[0x1CCA866B0](v9, a2);

  v17 = MEMORY[0x1CCA866B0](v7, a4);

  type metadata accessor for NSNumber();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v19 = [v15 initWithLocalizedTitle:v16 symbolName:v17 values:isa];

  return v19;
}

void AVCaptureSlider.setActionQueue(_:action:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[4] = a2;
  v6[5] = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = thunk for @escaping @callee_guaranteed (@unowned Float) -> ();
  v6[3] = &block_descriptor_4;
  v5 = _Block_copy(v6);

  [v3 setActionQueue:a1 action:v5];
  _Block_release(v5);
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned Float) -> ()(uint64_t a1, float a2)
{
  v3 = *(a1 + 32);

  v3(v4, a2);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

char *AVAsynchronousVideoCompositionRequest.sourceSampleDataTrackIDs.getter()
{
  v1 = [v0 sourceSampleDataTrackIDs];
  type metadata accessor for NSNumber();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_16:

    return MEMORY[0x1E69E7CC0];
  }

  if (v2 < 0)
  {
    v12 = v2;
  }

  else
  {
    v12 = v2 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = MEMORY[0x1CCA86B70](v12);
  if (!v3)
  {
    goto LABEL_16;
  }

LABEL_3:
  v13 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3 & ~(v3 >> 63), 0);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v6 = v13;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1CCA86AE0](v5, v2);
      }

      else
      {
        v7 = *(v2 + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = [v7 intValue];

      v11 = *(v13 + 16);
      v10 = *(v13 + 24);
      if (v11 >= v10 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
      }

      ++v5;
      *(v13 + 16) = v11 + 1;
      *(v13 + 4 * v11 + 32) = v9;
    }

    while (v3 != v5);

    return v6;
  }

  __break(1u);
  return result;
}

Swift::OpaquePointer_optional __swiftcall AVAsynchronousVideoCompositionRequest.sourceTaggedDynamicBuffers(byTrackID:)(Swift::Int32 byTrackID)
{
  v2 = [v1 sourceTaggedBufferGroupByTrackID_];
  if (v2)
  {
    v2 = Array<A>.init(_:)();
  }

  result.value._rawValue = v2;
  result.is_nil = v3;
  return result;
}

id AVAsynchronousVideoCompositionRequest.sourceReadOnlyPixelBuffer(byTrackID:)(uint64_t a1)
{
  result = [v1 sourceFrameByTrackID_];
  if (result)
  {
    type metadata accessor for CVReadOnlyPixelBuffer();
    swift_allocObject();
    return CVReadOnlyPixelBuffer.init(unsafeBuffer:)();
  }

  return result;
}

uint64_t AVAsynchronousVideoCompositionRequest.sourceReadySampleBuffer(byTrackID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if ([v2 sourceSampleBufferByTrackID_])
  {
    CMReadySampleBuffer<>.init(unsafeBuffer:)();
    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CoreMedia19CMReadySampleBufferVySo08CMSampleE3RefaAAE14DynamicContentOGMd);
  v6 = *(*(v5 - 8) + 56);

  return v6(a2, v4, 1, v5);
}

uint64_t AVVideoCompositionRenderContext.makeMutablePixelBuffer()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CoreVideo20CVMutablePixelBufferVSgMd);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  if ([v2 newPixelBuffer])
  {
    CVMutablePixelBuffer.init(unsafeBuffer:)();
    v10 = type metadata accessor for CVMutablePixelBuffer();
    (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  }

  else
  {
    v10 = type metadata accessor for CVMutablePixelBuffer();
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  }

  outlined init with take of CVMutablePixelBuffer?(v9, v7);
  type metadata accessor for CVMutablePixelBuffer();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v7, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v7, v10);
  }

  type metadata accessor for related decl 'e' for AVError(0);
  v13 = -11801;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x1E69E7CC0]);
  lazy protocol witness table accessor for type related decl 'e' for AVError and conformance related decl 'e' for AVError();
  _BridgedStoredNSError.init(_:userInfo:)();
  return swift_willThrow();
}

void _sSo37AVAsynchronousVideoCompositionRequestC12AVFoundationE6finish25withComposedTaggedBuffersySay9CoreMedia21CMTaggedDynamicBufferVG_tFySayAF0mO0VGYTXEfU_TA()
{
  v1 = *(v0 + 16);
  v2 = Array<A>.taggedBufferGroup.getter();
  [v1 finishWithComposedTaggedBufferGroup_];
}

void _sSo37AVAsynchronousVideoCompositionRequestC12AVFoundationE6attach_2toyAC09AVSpatialB13ConfigurationV_04CoreB020CVMutablePixelBufferVztKFySo11CVBufferRefaYTXEfU_TA(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = AVSpatialVideoConfiguration.configuration.getter();
  [v3 attachSpatialVideoConfiguration:v4 toPixelBuffer:a1];
}

uint64_t outlined init with take of CVMutablePixelBuffer?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CoreVideo20CVMutablePixelBufferVSgMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of (String, Any)(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = outlined init with take of Any(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t outlined init with copy of (String, Any)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id static AVPlayer.backgroundPIPAuthorizationTokenDidChangeNotification.getter(void *a1, void **a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v3 = *a2;
  }

  return v3;
}

uint64_t AVAssetVariant.peakBitRate.getter(SEL *a1)
{
  [v1 *a1];
  if (v3 < 0.0)
  {
    return 0;
  }

  [v1 *a1];
  return v5;
}

char *AVAssetVariantVideoAttributes.codecTypes.getter(SEL *a1)
{
  v2 = [v1 *a1];
  type metadata accessor for NSNumber();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_16:

    return MEMORY[0x1E69E7CC0];
  }

  if (v3 < 0)
  {
    v13 = v3;
  }

  else
  {
    v13 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  v4 = MEMORY[0x1CCA86B70](v13);
  if (!v4)
  {
    goto LABEL_16;
  }

LABEL_3:
  v14 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    v7 = v14;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1CCA86AE0](v6, v3);
      }

      else
      {
        v8 = *(v3 + 8 * v6 + 32);
      }

      v9 = v8;
      v10 = [v8 unsignedIntValue];

      v12 = *(v14 + 16);
      v11 = *(v14 + 24);
      if (v12 >= v11 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
      }

      ++v6;
      *(v14 + 16) = v12 + 1;
      *(v14 + 4 * v12 + 32) = v10;
    }

    while (v4 != v6);

    return v7;
  }

  __break(1u);
  return result;
}

id AVAssetVariantAudioRenditionSpecificAttributes.channelCount.getter()
{
  if (([v0 channelCount] & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return [v0 channelCount];
  }
}

uint64_t AVAssetWriterInput.PixelBufferReceiver.sourcePixelBufferAttributes.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CVPixelBufferAttributes();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = [*(v1 + 32) sourcePixelBufferAttributes];
  if (v4)
  {
    v5 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8Sendable_pMd);
    v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    MEMORY[0x1CCA865F0](v6);
    return CVPixelBufferCreationAttributes.init(_:)();
  }

  else
  {
    v8 = type metadata accessor for CVPixelBufferCreationAttributes();
    v9 = *(*(v8 - 8) + 56);

    return v9(a1, 1, 1, v8);
  }
}

id AVAssetWriterInput.PixelBufferReceiver.mutablePixelBufferPool.getter()
{
  v1 = *(v0 + 40);
  v2 = v1;
  if (v1 == 1)
  {
    v2 = [*(v0 + 32) pixelBufferPool];
    if (v2)
    {
      type metadata accessor for CVMutablePixelBuffer.Pool();
      swift_allocObject();
      v2 = CVMutablePixelBuffer.Pool.init(unsafePool:)();
    }

    v3 = *(v0 + 40);
    *(v0 + 40) = v2;

    outlined consume of CVMutablePixelBuffer.Pool??(v3);
  }

  outlined copy of CVMutablePixelBuffer.Pool??(v1);
  return v2;
}

uint64_t AVAssetWriterInput.PixelBufferReceiver.append(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  if (a1)
  {
    swift_getObjectType();
    v8 = dispatch thunk of Actor.unownedExecutor.getter();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v7[9] = v8;
  v7[10] = v10;

  return MEMORY[0x1EEE6DFA0](AVAssetWriterInput.PixelBufferReceiver.append(_:with:), v8, v10);
}

uint64_t AVAssetWriterInput.PixelBufferReceiver.append(_:with:)()
{
  v1 = *(v0[8] + 24);
  v0[11] = v1;
  v2 = v1;
  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = AVAssetWriterInput.PixelBufferReceiver.append(_:with:);
  v5 = v0[2];
  v4 = v0[3];

  return untilReadyForMoreMediaData(for:)(v5, v4, v2);
}

{
  v1 = *v0;
  v2 = *(*v0 + 88);

  v3 = *(v1 + 80);
  v4 = *(v1 + 72);

  return MEMORY[0x1EEE6DFA0](AVAssetWriterInput.PixelBufferReceiver.append(_:with:), v4, v3);
}

{
  if (![*(*(v0 + 64) + 24) isReadyForMoreMediaData])
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  v5 = swift_task_alloc();
  v5[2] = v2;
  v5[3] = v4;
  v5[4] = v3;
  v5[5] = v1;
  _s9CoreVideo21CVReadOnlyPixelBufferC010withUnsafeF0yxxSo11CVBufferRefaKYTXEKRi_zlF();

  if (*(v0 + 104) != 1)
  {
    v7 = *(v2 + 16);
    if ([v7 error])
    {
      swift_willThrow();

      v6 = *(v0 + 8);
      goto LABEL_6;
    }

    return _assertionFailure(_:_:file:line:flags:)();
  }

  v6 = *(v0 + 8);
LABEL_6:

  return v6();
}

uint64_t AVAssetWriterInput.PixelBufferReceiver.appendImmediately(_:with:)()
{
  v1 = [*(v0 + 24) isReadyForMoreMediaData];
  if (!v1)
  {
    goto LABEL_7;
  }

  MEMORY[0x1EEE9AC00](v1);
  _s9CoreVideo21CVReadOnlyPixelBufferC010withUnsafeF0yxxSo11CVBufferRefaKYTXEKRi_zlF();
  if ((v5 & 1) == 0)
  {
    v3 = *(v0 + 16);
    if ([v3 error])
    {
      swift_willThrow();

      return v2 & 1;
    }

LABEL_7:
    v2 = 0;
    return v2 & 1;
  }

  v2 = 1;
  return v2 & 1;
}

id _sSo18AVAssetWriterInputC12AVFoundationE19PixelBufferReceiverC17appendImmediately_4withSb9CoreVideo010CVReadOnlyeF0C_So6CMTimeatKFSbSo11CVBufferRefaYTXEfU_TATm@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = v2[5];
  v6 = *(v2[2] + 32);
  v8[0] = v2[3];
  v8[1] = v2[4];
  v8[2] = v5;
  result = [v6 appendPixelBuffer:a1 withPresentationTime:v8];
  *a2 = result;
  return result;
}

uint64_t outlined consume of CVMutablePixelBuffer.Pool??(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t AVAssetWriterInput.PixelBufferReceiver.__deallocating_deinit()
{
  outlined consume of CVMutablePixelBuffer.Pool??(*(v0 + 40));

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

void *AVAssetWriter.inputPixelBufferReceiver(for:pixelBufferAttributes:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v28 = type metadata accessor for CVPixelBufferAttributes();
  v6 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CoreVideo31CVPixelBufferCreationAttributesVSgMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v27 - v10;
  v12 = type metadata accessor for CVPixelBufferCreationAttributes();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v27 - v17;
  result = [a1 hasReceiver];
  if (result)
  {
    __break(1u);
  }

  else
  {
    [a1 setHasReceiver_];
    [v3 addInput_];
    outlined init with copy of CVPixelBufferCreationAttributes?(a2, v11);
    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {
      outlined destroy of CVPixelBufferCreationAttributes?(v11);
      isa = 0;
    }

    else
    {
      (*(v13 + 32))(v18, v11, v12);
      (*(v13 + 16))(v16, v18, v12);
      v21 = CVPixelBufferAttributes.init(_:)();
      v22 = MEMORY[0x1CCA86600](v21);
      (*(v6 + 8))(v8, v28);
      specialized _dictionaryUpCast<A, B, C, D>(_:)(v22);

      (*(v13 + 8))(v18, v12);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;
    }

    v23 = [objc_allocWithZone(MEMORY[0x1E6987F08]) initWithAssetWriterInput:a1 sourcePixelBufferAttributes:isa];

    type metadata accessor for AVAssetWriterInput.PixelBufferReceiver();
    v24 = swift_allocObject();
    v24[2] = v3;
    v24[3] = a1;
    v24[4] = v23;
    v24[5] = 1;
    v25 = v3;
    v26 = a1;
    return v24;
  }

  return result;
}

uint64_t outlined init with copy of CVPixelBufferCreationAttributes?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CoreVideo31CVPixelBufferCreationAttributesVSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of CVPixelBufferCreationAttributes?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CoreVideo31CVPixelBufferCreationAttributesVSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *AVAssetWriter.inputPixelBufferReceiverRequestingMultiPass(for:pixelBufferAttributes:)(void *a1, uint64_t a2)
{
  v3 = AVAssetWriter.inputPixelBufferReceiver(for:pixelBufferAttributes:)(a1, a2);
  [a1 setPerformsMultiPassEncodingIfSupported_];
  type metadata accessor for AVAssetWriterInput.MultiPassController();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = 0;
  v5 = a1;
  return v3;
}

uint64_t dispatch thunk of AVAssetWriterInput.PixelBufferReceiver.append(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = (*(*v6 + 232) + **(*v6 + 232));
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = closure #1 in AVAssetReader.outputProvider(for:)partial apply;

  return v16(a1, a2, a3, a4, a5, a6);
}

uint64_t outlined copy of CVMutablePixelBuffer.Pool??(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

char *AVPlayerItemSegment.loadedTimeRanges.getter()
{
  v1 = [v0 loadedTimeRanges];
  type metadata accessor for NSValue();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_17:

    return MEMORY[0x1E69E7CC0];
  }

  if (v2 < 0)
  {
    v13 = v2;
  }

  else
  {
    v13 = v2 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = MEMORY[0x1CCA86B70](v13);
  if (!v3)
  {
    goto LABEL_17;
  }

LABEL_3:
  v17 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3 & ~(v3 >> 63), 0);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v6 = v17;
    v7 = v3 - 1;
    if ((v2 & 0xC000000000000001) == 0)
    {
      goto LABEL_6;
    }

LABEL_5:
    for (i = MEMORY[0x1CCA86AE0](v5, v2); ; i = *(v2 + 8 * v5 + 32))
    {
      v9 = i;
      [i CMTimeRangeValue];

      v11 = *(v17 + 16);
      v10 = *(v17 + 24);
      if (v11 >= v10 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
      }

      *(v17 + 16) = v11 + 1;
      v12 = (v17 + 48 * v11);
      v12[3] = v15;
      v12[4] = v16;
      v12[2] = v14;
      if (v7 == v5)
      {
        break;
      }

      ++v5;
      if ((v2 & 0xC000000000000001) != 0)
      {
        goto LABEL_5;
      }

LABEL_6:
      ;
    }

    return v6;
  }

  __break(1u);
  return result;
}

unint64_t type metadata accessor for NSValue()
{
  result = lazy cache variable for type metadata for NSValue;
  if (!lazy cache variable for type metadata for NSValue)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSValue);
  }

  return result;
}

uint64_t AVPlayerItemIntegratedTimeline.PeriodicTimes.makeAsyncIterator()@<X0>(uint64_t a1@<X8>)
{
  v13[1] = a1;
  v13[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOySo6CMTimea__GMd);
  v2 = *(v13[0] - 8);
  MEMORY[0x1EEE9AC00](v13[0]);
  v4 = v13 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSySo6CMTimeaGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v13 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[3];
  type metadata accessor for CMTime(0);
  v13[4] = v10;
  v13[5] = v9;
  v13[6] = v1[2];
  v13[7] = v11;
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8650], v13[0]);
  AsyncStream.init(_:bufferingPolicy:_:)();
  AsyncStream.makeAsyncIterator()();
  return (*(v6 + 8))(v8, v5);
}

uint64_t closure #1 in AVPlayerItemIntegratedTimeline.PeriodicTimes.Iterator.init(integratedTimeline:forInterval:)(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(uint64_t a1, uint64_t *a2))
{
  v22 = a5;
  v5 = a4;
  v9 = HIDWORD(a4);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySo6CMTimea_GMd);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - v12;
  (*(v11 + 16))(&v21 - v12, a1, v10);
  v14 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v15 = swift_allocObject();
  (*(v11 + 32))(v15 + v14, v13, v10);
  v27 = partial apply for closure #1 in closure #1 in AVPlayerItemIntegratedTimeline.PeriodicTimes.Iterator.init(integratedTimeline:forInterval:);
  v28 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v24 = 1107296256;
  v25 = thunk for @escaping @callee_guaranteed @Sendable (@unowned CMTime) -> ();
  v26 = &block_descriptor_39;
  v16 = _Block_copy(&aBlock);

  aBlock = a3;
  v24 = __PAIR64__(v9, v5);
  v25 = v22;
  v17 = [a2 addPeriodicTimeObserverForInterval:&aBlock queue:0 usingBlock:v16];
  _Block_release(v16);
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = v17;
  v19 = a2;
  return AsyncStream.Continuation.onTermination.setter();
}

uint64_t closure #1 in closure #1 in AVPlayerItemIntegratedTimeline.PeriodicTimes.Iterator.init(integratedTimeline:forInterval:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[1] = a1;
  v8[2] = a2;
  v8[3] = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOySo6CMTimea__GMd);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v8 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySo6CMTimea_GMd);
  AsyncStream.Continuation.yield(_:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@unowned CMTime) -> ()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v5 = *(a1 + 32);

  v5(v2, v3, v4);
}

uint64_t AVPlayerItemIntegratedTimeline.PeriodicTimes.Iterator.next()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVySo6CMTimea_GMd);
  *v1 = v0;
  v1[1] = AVPlayerItemIntegratedTimeline.PeriodicTimes.Iterator.next();

  return MEMORY[0x1EEE6D9D0](v0 + 24, v2);
}

{

  return MEMORY[0x1EEE6DFA0](AVPlayerItemIntegratedTimeline.PeriodicTimes.Iterator.next(), 0, 0);
}

uint64_t protocol witness for AsyncIteratorProtocol.next() in conformance AVPlayerItemIntegratedTimeline.PeriodicTimes.Iterator(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVySo6CMTimea_GMd);
  *v2 = v1;
  v2[1] = protocol witness for AsyncIteratorProtocol.next() in conformance AVPlayerItemIntegratedTimeline.PeriodicTimes.Iterator;

  return MEMORY[0x1EEE6D9D0](v1 + 32, v3);
}

uint64_t protocol witness for AsyncIteratorProtocol.next() in conformance AVPlayerItemIntegratedTimeline.PeriodicTimes.Iterator()
{

  return MEMORY[0x1EEE6DFA0](protocol witness for AsyncIteratorProtocol.next() in conformance AVPlayerItemIntegratedTimeline.PeriodicTimes.Iterator, 0, 0);
}

uint64_t _sSo30AVPlayerItemIntegratedTimelineC12AVFoundationE13PeriodicTimesV8IteratorVScIACScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTW(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = _sSo30AVPlayerItemIntegratedTimelineC12AVFoundationE13PeriodicTimesV8IteratorVScIACScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ0_;

  return _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFSo30AVPlayerItemIntegratedTimelineC12AVFoundationE13PeriodicTimesV8IteratorV_Tg5(a2, a3);
}

void protocol witness for AsyncSequence.makeAsyncIterator() in conformance AVPlayerItemIntegratedTimeline.PeriodicTimes(uint64_t a1@<X8>)
{
  v2 = v1;
  v13[1] = a1;
  v13[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOySo6CMTimea__GMd);
  v3 = *(v13[0] - 8);
  MEMORY[0x1EEE9AC00](v13[0]);
  v5 = v13 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSySo6CMTimeaGMd);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v13 - v8;
  v11 = *v1;
  v10 = v1[1];
  v12 = v2[3];
  type metadata accessor for CMTime(0);
  v13[4] = v11;
  v13[5] = v10;
  v13[6] = v2[2];
  v13[7] = v12;
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8650], v13[0]);
  AsyncStream.init(_:bufferingPolicy:_:)();
  AsyncStream.makeAsyncIterator()();
  (*(v7 + 8))(v9, v6);
}

uint64_t AVPlayerItemIntegratedTimeline.BoundaryTimes.makeAsyncIterator()@<X0>(uint64_t a1@<X8>)
{
  v17 = a1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOySo6CMTimea__GMd);
  v2 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v4 = v15 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSySo6CMTimeaGMd);
  v6 = *(v5 - 8);
  result = MEMORY[0x1EEE9AC00](v5);
  v9 = v15 - v8;
  v10 = v1[1];
  if (v10)
  {
    v11 = v1[2];
    v12 = *v1;
    type metadata accessor for CMTime(0);
    v15[1] = v15;
    MEMORY[0x1EEE9AC00](v13);
    v15[-4] = v12;
    v15[-3] = v10;
    v15[-2] = v11;
    (*(v2 + 104))(v4, *MEMORY[0x1E69E8650], v16);
    v14 = v10;
    AsyncStream.init(_:bufferingPolicy:_:)();
    AsyncStream.makeAsyncIterator()();

    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in AVPlayerItemIntegratedTimeline.BoundaryTimes.Iterator.init(integratedTimeline:forSegment:offsetsIntoSegment:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySo6CMTimea_GMd);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = aBlock - v11;
  specialized _arrayForceCast<A, B>(_:)(a4);
  isa = Array._bridgeToObjectiveC()().super.isa;

  (*(v9 + 16))(v12, a1, v8);
  v14 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v15 = (v10 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  (*(v9 + 32))(v16 + v14, v12, v8);
  *(v16 + v15) = a2;
  aBlock[4] = partial apply for closure #1 in closure #1 in AVPlayerItemIntegratedTimeline.BoundaryTimes.Iterator.init(integratedTimeline:forSegment:offsetsIntoSegment:);
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool) -> ();
  aBlock[3] = &block_descriptor_5;
  v17 = _Block_copy(aBlock);
  v18 = a2;

  v19 = [v18 addBoundaryTimeObserverForSegment:a3 offsetsIntoSegment:isa queue:0 usingBlock:v17];
  _Block_release(v17);

  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  *(v20 + 24) = v19;
  v21 = v18;
  return AsyncStream.Continuation.onTermination.setter();
}

void closure #1 in closure #1 in AVPlayerItemIntegratedTimeline.BoundaryTimes.Iterator.init(integratedTimeline:forSegment:offsetsIntoSegment:)(char a1, uint64_t a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOySo6CMTimea__GMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v9 - v7;
  if (a1)
  {
    [a3 currentTime];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySo6CMTimea_GMd);
    AsyncStream.Continuation.yield(_:)();
    (*(v6 + 8))(v8, v5);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySo6CMTimea_GMd);
    AsyncStream.Continuation.finish()();
  }
}

uint64_t AVPlayerItemIntegratedTimeline.BoundaryTimes.Iterator.next()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVySo6CMTimea_GMd);
  *v1 = v0;
  v1[1] = AVPlayerItemIntegratedTimeline.BoundaryTimes.Iterator.next();

  return MEMORY[0x1EEE6D9D0](v0 + 24, v2);
}

{

  return MEMORY[0x1EEE6DFA0](AVPlayerItemIntegratedTimeline.BoundaryTimes.Iterator.next(), 0, 0);
}

{
  return (*(v0 + 8))(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));
}

uint64_t protocol witness for AsyncIteratorProtocol.next() in conformance AVPlayerItemIntegratedTimeline.BoundaryTimes.Iterator(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVySo6CMTimea_GMd);
  *v2 = v1;
  v2[1] = protocol witness for AsyncIteratorProtocol.next() in conformance AVPlayerItemIntegratedTimeline.BoundaryTimes.Iterator;

  return MEMORY[0x1EEE6D9D0](v1 + 32, v3);
}

uint64_t protocol witness for AsyncIteratorProtocol.next() in conformance AVPlayerItemIntegratedTimeline.BoundaryTimes.Iterator()
{

  return MEMORY[0x1EEE6DFA0](protocol witness for AsyncIteratorProtocol.next() in conformance AVPlayerItemIntegratedTimeline.BoundaryTimes.Iterator, 0, 0);
}

{
  v1 = *(v0 + 16);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  *v1 = *(v0 + 32);
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  return (*(v0 + 8))();
}

uint64_t _sSo30AVPlayerItemIntegratedTimelineC12AVFoundationE13BoundaryTimesV8IteratorVScIACScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTW(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = _sSo30AVPlayerItemIntegratedTimelineC12AVFoundationE13BoundaryTimesV8IteratorVScIACScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ0_;

  return _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFSo30AVPlayerItemIntegratedTimelineC12AVFoundationE13BoundaryTimesV8IteratorV_Tg5(a2, a3);
}

uint64_t _sSo30AVPlayerItemIntegratedTimelineC12AVFoundationE13BoundaryTimesV8IteratorVScIACScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ0_(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v10 = *v5;
  v11 = *v5;

  if (!v4)
  {
    v13 = *(v10 + 16);
    *v13 = a1;
    *(v13 + 8) = a2;
    *(v13 + 16) = a3;
    *(v13 + 24) = a4 & 1;
  }

  v12 = *(v11 + 8);

  return v12();
}

void protocol witness for AsyncSequence.makeAsyncIterator() in conformance AVPlayerItemIntegratedTimeline.BoundaryTimes(uint64_t a1@<X8>)
{
  v2 = v1;
  v20 = a1;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOySo6CMTimea__GMd);
  v3 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v5 = &v17 - v4;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSySo6CMTimeaGMd);
  v6 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v8 = &v17 - v7;
  v9 = v1[1];
  if (v9)
  {
    v10 = v2[2];
    v11 = *v2;
    type metadata accessor for CMTime(0);
    v17 = &v17;
    MEMORY[0x1EEE9AC00](v12);
    *(&v17 - 4) = v11;
    *(&v17 - 3) = v9;
    *(&v17 - 2) = v10;
    (*(v3 + 104))(v5, *MEMORY[0x1E69E8650], v18);
    v13 = v9;
    AsyncStream.init(_:bufferingPolicy:_:)();
    v14 = v19;
    AsyncStream.makeAsyncIterator()();

    (*(v6 + 8))(v8, v14);
    v15 = *v2;
    v16 = v2[1];
  }

  else
  {
    __break(1u);
  }
}

uint64_t AVPlayerItemIntegratedTimeline.periodicTimes(forInterval:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = v4;
  a4[1] = a1;
  a4[2] = a2;
  a4[3] = a3;
  return MEMORY[0x1EEE66D28]();
}

uint64_t AVPlayerItemIntegratedTimeline.boundaryTimes(for:offsetsIntoSegment:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = v3;
  a3[1] = a1;
  a3[2] = a2;
  v5 = v3;
  v6 = a1;
}

uint64_t lazy protocol witness table accessor for type AVPlayerItemIntegratedTimeline.PeriodicTimes.Iterator and conformance AVPlayerItemIntegratedTimeline.PeriodicTimes.Iterator(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for AVPlayerItemIntegratedTimeline.PeriodicTimes.Iterator(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AVPlayerItemIntegratedTimeline.PeriodicTimes(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for AVPlayerItemIntegratedTimeline.PeriodicTimes(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void type metadata accessor for AsyncStream<CMTime>.Iterator()
{
  if (!lazy cache variable for type metadata for AsyncStream<CMTime>.Iterator)
  {
    type metadata accessor for CMTime(255);
    v0 = type metadata accessor for AsyncStream.Iterator();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AsyncStream<CMTime>.Iterator);
    }
  }
}

uint64_t getEnumTagSinglePayload for AVPlayerItemIntegratedTimeline.BoundaryTimes(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for AVPlayerItemIntegratedTimeline.BoundaryTimes(uint64_t result, int a2, int a3)
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

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVySo6CMTimea_GMd);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVySo6CMTimea_GMd);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void type metadata completion function for AVPlayerItemIntegratedTimeline.PeriodicTimes.Iterator()
{
  type metadata accessor for AsyncStream<CMTime>.Iterator();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void partial apply for closure #1 in closure #1 in AVPlayerItemIntegratedTimeline.BoundaryTimes.Iterator.init(integratedTimeline:forSegment:offsetsIntoSegment:)(char a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySo6CMTimea_GMd) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  closure #1 in closure #1 in AVPlayerItemIntegratedTimeline.BoundaryTimes.Iterator.init(integratedTimeline:forSegment:offsetsIntoSegment:)(a1, v1 + v4, v5);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t partial apply for closure #1 in closure #1 in AVPlayerItemIntegratedTimeline.PeriodicTimes.Iterator.init(integratedTimeline:forInterval:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySo6CMTimea_GMd);

  return closure #1 in closure #1 in AVPlayerItemIntegratedTimeline.PeriodicTimes.Iterator.init(integratedTimeline:forInterval:)(a1, a2, a3);
}

uint64_t objectdestroy_32Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t AVCaptureSynchronizedDataCollection.makeIterator()@<X0>(void *a1@<X8>)
{
  *a1 = v1;
  type metadata accessor for AVCaptureSynchronizedDataCollection.Iterator();
  v2 = v1;
  swift_unknownObjectRetain();
  return NSFastEnumerationIterator.init(_:)();
}

uint64_t type metadata accessor for AVCaptureSynchronizedDataCollection.Iterator()
{
  result = type metadata singleton initialization cache for AVCaptureSynchronizedDataCollection.Iterator;
  if (!type metadata singleton initialization cache for AVCaptureSynchronizedDataCollection.Iterator)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

AVCaptureSynchronizedData_optional __swiftcall AVCaptureSynchronizedDataCollection.Iterator.next()()
{
  type metadata accessor for AVCaptureSynchronizedDataCollection.Iterator();
  NSFastEnumerationIterator.next()();
  if (!v7)
  {
    outlined destroy of Any?(v6);
    goto LABEL_5;
  }

  type metadata accessor for NSValue(0, &lazy cache variable for type metadata for AVCaptureOutput);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v4 = 0;
    goto LABEL_6;
  }

  v3 = [*v0 synchronizedDataForCaptureOutput_];

  v4 = v3;
LABEL_6:
  result.value._synchronizedDataInternal = v1;
  result.value.super.isa = v4;
  result.is_nil = v2;
  return result;
}

unint64_t protocol witness for IteratorProtocol.next() in conformance AVCaptureSynchronizedDataCollection.Iterator@<X0>(unint64_t *a1@<X8>)
{
  result = AVCaptureSynchronizedDataCollection.Iterator.next()();
  *a1 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type AVCaptureSynchronizedDataCollection.Iterator and conformance AVCaptureSynchronizedDataCollection.Iterator()
{
  result = lazy protocol witness table cache variable for type AVCaptureSynchronizedDataCollection.Iterator and conformance AVCaptureSynchronizedDataCollection.Iterator;
  if (!lazy protocol witness table cache variable for type AVCaptureSynchronizedDataCollection.Iterator and conformance AVCaptureSynchronizedDataCollection.Iterator)
  {
    type metadata accessor for AVCaptureSynchronizedDataCollection.Iterator();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AVCaptureSynchronizedDataCollection.Iterator and conformance AVCaptureSynchronizedDataCollection.Iterator);
  }

  return result;
}

uint64_t protocol witness for Sequence.makeIterator() in conformance AVCaptureSynchronizedDataCollection@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  *a1 = v2;
  type metadata accessor for AVCaptureSynchronizedDataCollection.Iterator();
  v3 = v2;
  return NSFastEnumerationIterator.init(_:)();
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance AVCaptureSynchronizedDataCollection()
{
  v1 = *v0;
  specialized _copySequenceToContiguousArray<A>(_:)(*v0);
  v3 = v2;

  return v3;
}

uint64_t specialized Sequence._copyContents(initializing:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for AVCaptureSynchronizedDataCollection.Iterator();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v9 = v3;
  v10 = v3;
  result = NSFastEnumerationIterator.init(_:)();
  if (!a2)
  {
LABEL_12:
    v12 = 0;
LABEL_17:
    outlined init with take of AVCaptureSynchronizedDataCollection.Iterator(v9, a1);
    return v12;
  }

  if (!a3)
  {
    v12 = 0;
    goto LABEL_17;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v17 = a3;
    v18 = a1;
    v12 = 0;
    v13 = a3 - 1;
    a1 = 0x1E833C000uLL;
    while (1)
    {
      NSFastEnumerationIterator.next()();
      if (!v21)
      {
        outlined destroy of Any?(v20);
        goto LABEL_16;
      }

      type metadata accessor for NSValue(0, &lazy cache variable for type metadata for AVCaptureOutput);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_16;
      }

      v14 = v19;
      v15 = [v10 synchronizedDataForCaptureOutput_];

      if (!v15)
      {
        goto LABEL_16;
      }

      *(a2 + 8 * v12) = v15;
      if (v13 == v12)
      {
        break;
      }

      if (__OFADD__(++v12, 1))
      {
        __break(1u);
        goto LABEL_12;
      }
    }

    v12 = v17;
LABEL_16:
    a1 = v18;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t type metadata completion function for AVCaptureSynchronizedDataCollection.Iterator()
{
  result = type metadata accessor for NSValue(319, &lazy cache variable for type metadata for AVCaptureSynchronizedDataCollection);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for NSFastEnumerationIterator();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t outlined init with take of AVCaptureSynchronizedDataCollection.Iterator(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AVCaptureSynchronizedDataCollection.Iterator();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void specialized _copySequenceToContiguousArray<A>(_:)(void *a1)
{
  v2 = type metadata accessor for AVCaptureSynchronizedDataCollection.Iterator();
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = (&v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v5 = a1;
  v6 = *(v3 + 28);
  v7 = a1;
  swift_unknownObjectRetain();
  NSFastEnumerationIterator.init(_:)();
  NSFastEnumerationIterator.next()();
  v8 = MEMORY[0x1E69E7CC0];
  if (v34)
  {
    v9 = type metadata accessor for NSValue(0, &lazy cache variable for type metadata for AVCaptureOutput);
    v10 = 0;
    v11 = v8 + 4;
    v31 = v5;
    while ((swift_dynamicCast() & 1) != 0)
    {
      v12 = v32;
      v13 = [v7 synchronizedDataForCaptureOutput_];

      if (!v13)
      {
        break;
      }

      if (!v10)
      {
        v14 = v8[3];
        if (((v14 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_28;
        }

        v15 = v7;
        v16 = v6;
        v17 = v9;
        v18 = v14 & 0xFFFFFFFFFFFFFFFELL;
        if (v18 <= 1)
        {
          v19 = 1;
        }

        else
        {
          v19 = v18;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
        v20 = swift_allocObject();
        v21 = _swift_stdlib_malloc_size(v20);
        v22 = v21 - 32;
        if (v21 < 32)
        {
          v22 = v21 - 25;
        }

        v23 = v22 >> 3;
        v20[2] = v19;
        v20[3] = (2 * (v22 >> 3)) | 1;
        v24 = (v20 + 4);
        v25 = v8[3] >> 1;
        if (v8[2])
        {
          v26 = v8 + 4;
          if (v20 != v8 || v24 >= v26 + 8 * v25)
          {
            memmove(v20 + 4, v26, 8 * v25);
          }

          v8[2] = 0;
        }

        v11 = (v24 + 8 * v25);
        v10 = (v23 & 0x7FFFFFFFFFFFFFFFLL) - v25;

        v8 = v20;
        v9 = v17;
        v6 = v16;
        v7 = v15;
        v5 = v31;
      }

      v27 = __OFSUB__(v10--, 1);
      if (v27)
      {
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      *v11++ = v13;
      NSFastEnumerationIterator.next()();
      if (!v34)
      {
        goto LABEL_22;
      }
    }
  }

  else
  {
    v10 = 0;
LABEL_22:
    outlined destroy of Any?(v33);
  }

  outlined destroy of AVCaptureSynchronizedDataCollection.Iterator(v5);
  v28 = v8[3];
  if (v28 >= 2)
  {
    v29 = v28 >> 1;
    v27 = __OFSUB__(v29, v10);
    v30 = v29 - v10;
    if (v27)
    {
LABEL_29:
      __break(1u);
    }

    else
    {
      v8[2] = v30;
    }
  }
}

uint64_t outlined destroy of AVCaptureSynchronizedDataCollection.Iterator(uint64_t a1)
{
  v2 = type metadata accessor for AVCaptureSynchronizedDataCollection.Iterator();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool) -> ()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

AVPlayerItem __swiftcall AVPlayerItem.init(asset:automaticallyLoadedAssetKeys:)(AVAsset asset, Swift::OpaquePointer automaticallyLoadedAssetKeys)
{
  v2 = asset._asset;
  isa = asset.super.isa;
  if (asset._asset >> 62)
  {
    if (asset._asset < 0)
    {
      v21 = asset._asset;
    }

    else
    {
      v21 = asset._asset & 0xFFFFFFFFFFFFFF8;
    }

    v4 = MEMORY[0x1CCA86B70](v21);
    if (!v4)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v4 = *((asset._asset & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      goto LABEL_19;
    }
  }

  v26 = MEMORY[0x1E69E7CC0];
  v5 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4 & ~(v4 >> 63), 0);
  if (v4 < 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  if ((v2 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    do
    {
      v8 = MEMORY[0x1CCA86AE0](v7, v2);
      v10 = *(v8 + 16);
      v9 = *(v8 + 24);

      swift_unknownObjectRelease();
      v12 = *(v26 + 16);
      v11 = *(v26 + 24);
      if (v12 >= v11 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
      }

      ++v7;
      *(v26 + 16) = v12 + 1;
      v13 = v26 + 16 * v12;
      *(v13 + 32) = v10;
      *(v13 + 40) = v9;
    }

    while (v4 != v7);
  }

  else
  {
    v14 = 32;
    do
    {
      v15 = *(v2 + v14);
      v17 = *(v15 + 16);
      v16 = *(v15 + 24);
      v19 = *(v26 + 16);
      v18 = *(v26 + 24);

      if (v19 >= v18 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1);
      }

      *(v26 + 16) = v19 + 1;
      v20 = v26 + 16 * v19;
      *(v20 + 32) = v17;
      *(v20 + 40) = v16;
      v14 += 8;
      --v4;
    }

    while (v4);
  }

LABEL_19:

  v22 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v23 = Array._bridgeToObjectiveC()().super.isa;

  v24 = [v22 initWithAsset:isa automaticallyLoadedAssetKeys:v23];

  v5 = v24;
LABEL_21:
  result._playerItem = v6;
  result.super.isa = v5;
  return result;
}

uint64_t AVPlayerItem.seek(to:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](AVPlayerItem.seek(to:), 0, 0);
}

uint64_t AVPlayerItem.seek(to:)()
{
  v1 = swift_task_alloc();
  v0[2].i64[0] = v1;
  v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2 = swift_task_alloc();
  v0[2].i64[1] = v2;
  *v2 = v0;
  v2[1] = AVPlayerItem.seek(to:);
  v3 = MEMORY[0x1E69E6370];

  return MEMORY[0x1EEE6DDE0](&v0[3], 0, 0, 0x3A6F74286B656573, 0xE900000000000029, partial apply for closure #1 in AVPlayerItem.seek(to:), v1, v3);
}

{

  return MEMORY[0x1EEE6DFA0](AVPlayerItem.seek(to:), 0, 0);
}

{
  return (*(v0 + 8))(*(v0 + 48));
}

void closure #1 in AVPlayerItem.seek(to:)(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = aBlock - v6;
  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v5 + 16))(v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v7, v4);
  aBlock[4] = partial apply for closure #1 in closure #1 in AVPlayerItem.seek(to:);
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool) -> ();
  aBlock[3] = &block_descriptor_6;
  v11 = _Block_copy(aBlock);

  [a2 seekToDate:isa completionHandler:v11];
  _Block_release(v11);
}

char *AVPlayerItem.speedRamp.getter()
{
  v1 = [v0 speedRamp];
  if (!v1)
  {
    return v1;
  }

  type metadata accessor for NSValue();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_4;
    }

    goto LABEL_18;
  }

  if (v2 < 0)
  {
    v12 = v2;
  }

  else
  {
    v12 = v2 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = MEMORY[0x1CCA86B70](v12);
  if (!v3)
  {
LABEL_18:

    return MEMORY[0x1E69E7CC0];
  }

LABEL_4:
  v19 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3 & ~(v3 >> 63), 0);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v1 = v19;
    v6 = v3 - 1;
    if ((v2 & 0xC000000000000001) == 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    for (i = MEMORY[0x1CCA86AE0](v5, v2); ; i = *(v2 + 8 * v5 + 32))
    {
      v8 = i;
      [i CMTimeMappingValue];

      v10 = v19[2];
      v9 = v19[3];
      if (v10 >= v9 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
      }

      v19[2] = v10 + 1;
      v11 = &v19[12 * v10];
      v11[2] = v13;
      v11[3] = v14;
      v11[6] = v17;
      v11[7] = v18;
      v11[4] = v15;
      v11[5] = v16;
      if (v6 == v5)
      {
        break;
      }

      ++v5;
      if ((v2 & 0xC000000000000001) != 0)
      {
        goto LABEL_6;
      }

LABEL_7:
      ;
    }

    return v1;
  }

  __break(1u);
  return result;
}

void AVPlayerItem.speedRamp.setter(objc_class *a1)
{
  isa = a1;
  if (a1)
  {
    v3 = *(a1 + 2);
    if (v3)
    {
      v18 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray.reserveCapacity(_:)();
      v4 = objc_opt_self();
      v5 = v3 - 1;
      for (i = 32; ; i += 96)
      {
        v7 = *(isa + i + 48);
        v14 = *(isa + i + 32);
        v15 = v7;
        v8 = *(isa + i + 80);
        v16 = *(isa + i + 64);
        v17 = v8;
        v9 = *(isa + i + 16);
        v12 = *(isa + i);
        v13 = v9;
        v11[2] = v14;
        v11[3] = v7;
        v11[4] = v16;
        v11[5] = v8;
        v11[0] = v12;
        v11[1] = v9;
        v10 = [v4 valueWithCMTimeMapping_];
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        if (!v5)
        {
          break;
        }

        --v5;
      }
    }

    else
    {
    }

    type metadata accessor for NSValue();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  [v1 setSpeedRamp_];
}

void (*AVPlayerItem.speedRamp.modify(char **a1))(objc_class **a1, char a2)
{
  a1[1] = v1;
  *a1 = AVPlayerItem.speedRamp.getter();
  return AVPlayerItem.speedRamp.modify;
}

void AVPlayerItem.speedRamp.modify(objc_class **a1, char a2)
{
  if (a2)
  {

    AVPlayerItem.speedRamp.setter(v2);
  }

  else
  {
    AVPlayerItem.speedRamp.setter(*a1);
  }
}

uint64_t partial apply for closure #1 in closure #1 in AVPlayerItem.seek(to:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd);
  return CheckedContinuation.resume(returning:)();
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t AVAssetImageGenerator.image(at:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[24] = a3;
  v4[25] = v3;
  v4[22] = a1;
  v4[23] = a2;
  return MEMORY[0x1EEE6DFA0](AVAssetImageGenerator.image(at:), 0, 0);
}

uint64_t AVAssetImageGenerator.image(at:)()
{
  v1 = v0 + 2;
  v3 = v0[24];
  v2 = v0[25];
  v5 = v0[22];
  v4 = v0[23];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = AVAssetImageGenerator.image(at:);
  v6 = swift_continuation_init();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo10CGImageRefa_So6CMTimeats5Error_pGMd);
  v0[27] = v5;
  v8 = v0 + 27;
  *(v8 - 10) = v7;
  *(v8 - 17) = MEMORY[0x1E69E9820];
  *(v8 - 16) = 1107296256;
  *(v8 - 15) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned CGImageRef?, @unowned CMTime, @unowned NSError?) -> () with result type (CGImageRef, CMTime);
  *(v8 - 14) = &block_descriptor_7;
  *(v8 - 13) = v6;
  v8[1] = v4;
  v8[2] = v3;
  [v2 generateCGImageAsynchronouslyForTime:v8 completionHandler:?];

  return MEMORY[0x1EEE6DEC8](v1);
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 208) = v1;
  if (v1)
  {
    v2 = AVAssetImageGenerator.image(at:);
  }

  else
  {
    v2 = AVAssetImageGenerator.image(at:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  return (*(v0 + 8))(*(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168));
}

{
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned CGImageRef?, @unowned CMTime, @unowned NSError?) -> () with result type (CGImageRef, CMTime)(uint64_t a1, void *a2, uint64_t *a3, void *a4)
{
  v6 = *a3;
  v7 = a3[1];
  v8 = a3[2];
  v9 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v10 = *v9;
  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v11 = swift_allocError();
    *v12 = a4;
    v13 = a4;

    return MEMORY[0x1EEE6DEE8](v10, v11);
  }

  else
  {
    if (a2)
    {
      v14 = *(v10[8] + 40);
      *v14 = a2;
      v14[1] = v6;
      v14[2] = v7;
      v14[3] = v8;
      v15 = a2;
      v9 = v10;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x1EEE6DEE0](v9);
  }
}

uint64_t AVAssetImageGenerator.images(for:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOySo21AVAssetImageGeneratorC12AVFoundationE6ImagesV7ElementO__GMd);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSySo21AVAssetImageGeneratorC12AVFoundationE6ImagesV7ElementOGMd);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v16[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v16[-v12];
  v17 = v1;
  v18 = a1;
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8650], v3);
  AsyncStream.init(_:bufferingPolicy:_:)();
  (*(v8 + 16))(v11, v13, v7);
  AsyncStream.makeAsyncIterator()();
  v14 = *(v8 + 8);
  v14(v11, v7);
  return (v14)(v13, v7);
}

uint64_t closure #1 in AVAssetImageGenerator.images(for:)(uint64_t a1, void *a2, uint64_t a3)
{
  v22 = a2;
  v23 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySo21AVAssetImageGeneratorC12AVFoundationE6ImagesV7ElementO_GMd);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v20 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - v8;
  v10 = *(v5 + 16);
  v10(&v20 - v8, a1, v4);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v21 = swift_allocObject();
  v12 = *(v5 + 32);
  v12(v21 + v11, v9, v4);
  v13 = v20;
  v10(v20, a1, v4);
  v14 = swift_allocObject();
  v12(v14 + v11, v13, v4);
  type metadata accessor for AVAssetImageGenerator.ImageGeneratorMonitor();
  v15 = swift_allocObject();
  v17 = v21;
  v16 = v22;
  v15[2] = v22;
  v15[3] = 0;
  v15[4] = partial apply for closure #1 in closure #1 in AVAssetImageGenerator.images(for:);
  v15[5] = v17;
  v15[6] = partial apply for closure #2 in closure #1 in AVAssetImageGenerator.images(for:);
  v15[7] = v14;
  v18 = v16;
  AVAssetImageGenerator.ImageGeneratorMonitor.generateImages(forTimes:)(v23);
}

uint64_t closure #1 in closure #1 in AVAssetImageGenerator.images(for:)(__int128 *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOySo21AVAssetImageGeneratorC12AVFoundationE6ImagesV7ElementO__GMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8[-v4];
  v6 = a1[1];
  v9 = *a1;
  v10 = v6;
  v11[0] = a1[2];
  *(v11 + 9) = *(a1 + 41);
  outlined init with copy of AVAssetImageGenerator.Images.Element(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySo21AVAssetImageGeneratorC12AVFoundationE6ImagesV7ElementO_GMd);
  AsyncStream.Continuation.yield(_:)();
  return (*(v3 + 8))(v5, v2);
}

void AVAssetImageGenerator.ImageGeneratorMonitor.generateImages(forTimes:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  v5 = *(a1 + 16);
  if (v5)
  {
    v19 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    v6 = objc_opt_self();
    v7 = (a1 + 48);
    do
    {
      v8 = *v7;
      aBlock = *(v7 - 2);
      v14 = *(v7 - 1);
      v15 = v8;
      v9 = [v6 valueWithCMTime_];
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v7 += 3;
      --v5;
    }

    while (v5);
  }

  type metadata accessor for NSValue();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v11 = swift_allocObject();
  *(v11 + 16) = v2;
  *(v11 + 24) = a1;
  v17 = partial apply for closure #2 in AVAssetImageGenerator.ImageGeneratorMonitor.generateImages(forTimes:);
  v18 = v11;
  aBlock = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = thunk for @escaping @callee_guaranteed @Sendable (@unowned CMTime, @guaranteed CGImageRef?, @unowned CMTime, @unowned AVAssetImageGeneratorResult, @guaranteed Error?) -> ();
  v16 = &block_descriptor_16_0;
  v12 = _Block_copy(&aBlock);

  [v4 generateCGImagesAsynchronouslyForTimes:isa completionHandler:v12];
  _Block_release(v12);
}

void closure #2 in AVAssetImageGenerator.ImageGeneratorMonitor.generateImages(forTimes:)(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11)
{
  v11 = *(a10 + 24);
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v14 = HIDWORD(a2);
  *(a10 + 24) = v13;
  if (a8 == 2)
  {
    v17 = a2;
    v19 = *(a10 + 32);
    v20 = AVLocalizedError();
    if (!v20)
    {
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v21 = v20;
    v23 = a1;
    v24 = __PAIR64__(v14, v17);
    v25 = a3;
    v26 = v20;
    v30 = 1;
    v19(&v23);
  }

  else
  {
    if (a8 == 1)
    {
      if (a9)
      {
        v15 = *(a10 + 32);
        v23 = a1;
        v24 = a2;
        v25 = a3;
        v26 = a9;
        v30 = 1;
        v15(&v23);
        goto LABEL_11;
      }

      goto LABEL_15;
    }

    if (a8)
    {
LABEL_18:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return;
    }

    if (!a4)
    {
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v22 = *(a10 + 32);
    v23 = a1;
    v24 = a2;
    v25 = a3;
    v26 = a4;
    v27 = a5;
    v28 = a6;
    v29 = a7;
    v30 = 0;
    v22(&v23);
  }

LABEL_11:
  if (*(a10 + 24) == *(a11 + 16))
  {
    (*(a10 + 48))(0);
  }
}

void thunk for @escaping @callee_guaranteed @Sendable (@unowned CMTime, @guaranteed CGImageRef?, @unowned CMTime, @unowned AVAssetImageGeneratorResult, @guaranteed Error?) -> ()(uint64_t a1, uint64_t *a2, void *a3, uint64_t *a4, uint64_t a5, void *a6)
{
  v8 = *a2;
  v9 = a2[1];
  v10 = a2[2];
  v11 = *a4;
  v12 = a4[1];
  v13 = a4[2];
  v15 = *(a1 + 32);

  v16 = a3;
  v14 = a6;
  v15(v8, v9, v10, a3, v11, v12, v13, a5, a6);
}

uint64_t AVAssetImageGenerator.ImageGeneratorMonitor.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 64, 7);
}

uint64_t outlined init with copy of AVAssetImageGenerator.Images(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AVAssetImageGenerator.Images();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for AVAssetImageGenerator.Images()
{
  result = type metadata singleton initialization cache for AVAssetImageGenerator.Images;
  if (!type metadata singleton initialization cache for AVAssetImageGenerator.Images)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AVAssetImageGenerator.Images.next()(uint64_t a1)
{
  *(v1 + 144) = a1;
  v2 = swift_task_alloc();
  *(v1 + 152) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVySo21AVAssetImageGeneratorC12AVFoundationE6ImagesV7ElementO_GMd);
  *v2 = v1;
  v2[1] = AVAssetImageGenerator.Images.next();

  return MEMORY[0x1EEE6D9D0](v1 + 80, v3);
}

uint64_t AVAssetImageGenerator.Images.next()()
{

  return MEMORY[0x1EEE6DFA0](AVAssetImageGenerator.Images.next(), 0, 0);
}

{
  v1 = *(v0 + 144);
  v3 = *(v0 + 96);
  v2 = *(v0 + 112);
  *(v0 + 32) = v3;
  *(v0 + 48) = v2;
  *(v0 + 57) = *(v0 + 121);
  v4 = *(v0 + 80);
  *(v0 + 16) = v4;
  v5 = *(v0 + 48);
  *(v1 + 41) = *(v0 + 57);
  v1[1] = v3;
  v1[2] = v5;
  *v1 = v4;
  return (*(v0 + 8))();
}

uint64_t protocol witness for AsyncIteratorProtocol.next() in conformance AVAssetImageGenerator.Images(uint64_t a1)
{
  *(v1 + 144) = a1;
  v2 = swift_task_alloc();
  *(v1 + 152) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVySo21AVAssetImageGeneratorC12AVFoundationE6ImagesV7ElementO_GMd);
  *v2 = v1;
  v2[1] = protocol witness for AsyncIteratorProtocol.next() in conformance AVAssetImageGenerator.Images;

  return MEMORY[0x1EEE6D9D0](v1 + 80, v3);
}

uint64_t protocol witness for AsyncIteratorProtocol.next() in conformance AVAssetImageGenerator.Images()
{

  return MEMORY[0x1EEE6DFA0](protocol witness for AsyncIteratorProtocol.next() in conformance AVAssetImageGenerator.Images, 0, 0);
}

{
  v1 = *(v0 + 144);
  v3 = *(v0 + 96);
  v2 = *(v0 + 112);
  *(v0 + 32) = v3;
  *(v0 + 48) = v2;
  *(v0 + 57) = *(v0 + 121);
  v4 = *(v0 + 80);
  *(v0 + 16) = v4;
  v5 = *(v0 + 48);
  *(v1 + 41) = *(v0 + 57);
  v1[1] = v3;
  v1[2] = v5;
  *v1 = v4;
  return (*(v0 + 8))();
}

uint64_t _sSo21AVAssetImageGeneratorC12AVFoundationE6ImagesVScIACScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTW(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a2;
  v6[4] = a3;
  v10 = swift_task_alloc();
  v6[5] = v10;
  *v10 = v6;
  v10[1] = _sSo21AVAssetImageGeneratorC12AVFoundationE6ImagesVScIACScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ0_;

  return MEMORY[0x1EEE6D8C8](a1, a5, a6);
}

uint64_t _sSo21AVAssetImageGeneratorC12AVFoundationE6ImagesVScIACScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ0_()
{
  v2 = *(*v1 + 24);
  *(*v1 + 48) = v0;

  if (v0)
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = dispatch thunk of Actor.unownedExecutor.getter();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFSo30AVPlayerItemIntegratedTimelineC12AVFoundationE13BoundaryTimesV8IteratorV_Tg5TY2_;
  }

  else
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = dispatch thunk of Actor.unownedExecutor.getter();
      v5 = v7;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = _sSo21AVAssetImageGeneratorC12AVFoundationE6ImagesVScIACScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTY1_;
  }

  return MEMORY[0x1EEE6DFA0](v6, v3, v5);
}

void *AVAssetImageGenerator.Images.Element.image.getter()
{
  v1 = *(v0 + 24);
  if (*(v0 + 56))
  {
    swift_willThrow();
  }

  v2 = v1;
  return v1;
}

id AVAssetImageGenerator.Images.Element.actualTime.getter()
{
  if ((*(v0 + 56) & 1) == 0)
  {
    return *(v0 + 32);
  }

  v1 = *(v0 + 24);
  swift_willThrow();
  return v1;
}

unint64_t lazy protocol witness table accessor for type AVAssetImageGenerator.Images and conformance AVAssetImageGenerator.Images()
{
  result = lazy protocol witness table cache variable for type AVAssetImageGenerator.Images and conformance AVAssetImageGenerator.Images;
  if (!lazy protocol witness table cache variable for type AVAssetImageGenerator.Images and conformance AVAssetImageGenerator.Images)
  {
    type metadata accessor for AVAssetImageGenerator.Images();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AVAssetImageGenerator.Images and conformance AVAssetImageGenerator.Images);
  }

  return result;
}

void type metadata completion function for AVAssetImageGenerator.Images()
{
  type metadata accessor for AsyncStream<AVAssetImageGenerator.Images.Element>.Iterator();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void type metadata accessor for AsyncStream<AVAssetImageGenerator.Images.Element>.Iterator()
{
  if (!lazy cache variable for type metadata for AsyncStream<AVAssetImageGenerator.Images.Element>.Iterator)
  {
    v0 = type metadata accessor for AsyncStream.Iterator();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AsyncStream<AVAssetImageGenerator.Images.Element>.Iterator);
    }
  }
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AVAssetImageGenerator.Images.Element(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 57))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 56);
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

uint64_t storeEnumTagSinglePayload for AVAssetImageGenerator.Images.Element(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

uint64_t block_copy_helper_14_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t outlined init with take of AVAssetImageGenerator.Images(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AVAssetImageGenerator.Images();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in closure #1 in AVAssetImageGenerator.images(for:)(__int128 *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySo21AVAssetImageGeneratorC12AVFoundationE6ImagesV7ElementO_GMd);

  return closure #1 in closure #1 in AVAssetImageGenerator.images(for:)(a1);
}

uint64_t objectdestroy_21Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySo21AVAssetImageGeneratorC12AVFoundationE6ImagesV7ElementO_GMd);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AVAssetWriter.start()()
{
  if (([v0 startWriting] & 1) == 0)
  {
    if ([v0 error])
    {
      swift_willThrow();
    }
  }
}

uint64_t AVAssetWriterInput.TaggedPixelBufferGroupReceiver.sourcePixelBufferAttributes.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CVPixelBufferAttributes();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = [*(v1 + 32) sourcePixelBufferAttributes];
  if (v4)
  {
    v5 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8Sendable_pMd);
    v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    MEMORY[0x1CCA865F0](v6);
    return CVPixelBufferCreationAttributes.init(_:)();
  }

  else
  {
    v8 = type metadata accessor for CVPixelBufferCreationAttributes();
    v9 = *(*(v8 - 8) + 56);

    return v9(a1, 1, 1, v8);
  }
}

uint64_t AVAssetWriterInput.TaggedPixelBufferGroupReceiver.append(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  if (a1)
  {
    swift_getObjectType();
    v8 = dispatch thunk of Actor.unownedExecutor.getter();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v7[9] = v8;
  v7[10] = v10;

  return MEMORY[0x1EEE6DFA0](AVAssetWriterInput.TaggedPixelBufferGroupReceiver.append(_:with:), v8, v10);
}

uint64_t AVAssetWriterInput.TaggedPixelBufferGroupReceiver.append(_:with:)()
{
  v1 = *(v0[8] + 24);
  v0[11] = v1;
  v2 = v1;
  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = AVAssetWriterInput.TaggedPixelBufferGroupReceiver.append(_:with:);
  v5 = v0[2];
  v4 = v0[3];

  return untilReadyForMoreMediaData(for:)(v5, v4, v2);
}

{
  v1 = *v0;
  v2 = *(*v0 + 88);

  v3 = *(v1 + 80);
  v4 = *(v1 + 72);

  return MEMORY[0x1EEE6DFA0](AVAssetWriterInput.TaggedPixelBufferGroupReceiver.append(_:with:), v4, v3);
}

{
  if (![*(*(v0 + 64) + 24) isReadyForMoreMediaData])
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  v5 = swift_task_alloc();
  v5[2] = v2;
  v5[3] = v4;
  v5[4] = v3;
  v5[5] = v1;
  _sSa9CoreMediaAA21CMTaggedDynamicBufferVRszlE23withUnsafeTaggedBuffersyqd__qd__SayAA0cE0VGKYTXEKRi_d__lF();

  if (*(v0 + 104) != 1)
  {
    v7 = *(v2 + 16);
    if ([v7 error])
    {
      swift_willThrow();

      v6 = *(v0 + 8);
      goto LABEL_6;
    }

    return _assertionFailure(_:_:file:line:flags:)();
  }

  v6 = *(v0 + 8);
LABEL_6:

  return v6();
}

Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AVAssetWriterInput.TaggedPixelBufferGroupReceiver.appendImmediately(_:with:)(Swift::OpaquePointer _, CMTime with)
{
  v3 = [*(v2 + 24) isReadyForMoreMediaData];
  if (!v3)
  {
    goto LABEL_7;
  }

  MEMORY[0x1EEE9AC00](v3);
  _sSa9CoreMediaAA21CMTaggedDynamicBufferVRszlE23withUnsafeTaggedBuffersyqd__qd__SayAA0cE0VGKYTXEKRi_d__lF();
  if ((v7 & 1) == 0)
  {
    v5 = *(v2 + 16);
    if ([v5 error])
    {
      swift_willThrow();

      return v4 & 1;
    }

LABEL_7:
    v4 = 0;
    return v4 & 1;
  }

  v4 = 1;
  return v4 & 1;
}

void _sSo18AVAssetWriterInputC12AVFoundationE30TaggedPixelBufferGroupReceiverC17appendImmediately_4withSbSay9CoreMedia015CMTaggedDynamicG0VG_So6CMTimeatKFSbSayAH0oG0VGYTXEfU_(uint64_t a1@<X1>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X4>, _BYTE *a5@<X8>)
{
  v6 = a3;
  v9 = HIDWORD(a3);
  v10 = *(a1 + 32);
  v11 = Array<A>.taggedBufferGroup.getter();
  v12 = a2;
  v13 = v6;
  v14 = v9;
  v15 = a4;
  LOBYTE(a4) = [v10 appendTaggedPixelBufferGroup:v11 withPresentationTime:&v12];

  *a5 = a4;
}

uint64_t AVAssetWriterInput.TaggedPixelBufferGroupReceiver.__deallocating_deinit()
{
  outlined consume of CVMutablePixelBuffer.Pool??(*(v0 + 40));

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

void *AVAssetWriter.inputTaggedPixelBufferGroupReceiver(for:pixelBufferAttributes:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v28 = type metadata accessor for CVPixelBufferAttributes();
  v6 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CoreVideo31CVPixelBufferCreationAttributesVSgMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v27 - v10;
  v12 = type metadata accessor for CVPixelBufferCreationAttributes();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v27 - v17;
  result = [a1 hasReceiver];
  if (result)
  {
    __break(1u);
  }

  else
  {
    [a1 setHasReceiver_];
    [v3 addInput_];
    outlined init with copy of CVPixelBufferCreationAttributes?(a2, v11);
    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {
      outlined destroy of CVPixelBufferCreationAttributes?(v11);
      isa = 0;
    }

    else
    {
      (*(v13 + 32))(v18, v11, v12);
      (*(v13 + 16))(v16, v18, v12);
      v21 = CVPixelBufferAttributes.init(_:)();
      v22 = MEMORY[0x1CCA86600](v21);
      (*(v6 + 8))(v8, v28);
      specialized _dictionaryUpCast<A, B, C, D>(_:)(v22);

      (*(v13 + 8))(v18, v12);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;
    }

    v23 = [objc_allocWithZone(MEMORY[0x1E6987F10]) initWithAssetWriterInput:a1 sourcePixelBufferAttributes:isa];

    type metadata accessor for AVAssetWriterInput.TaggedPixelBufferGroupReceiver();
    v24 = swift_allocObject();
    v24[2] = v3;
    v24[3] = a1;
    v24[4] = v23;
    v24[5] = 1;
    v25 = v3;
    v26 = a1;
    return v24;
  }

  return result;
}

void *AVAssetWriter.inputTaggedPixelBufferGroupReceiverRequestingMultiPass(for:pixelBufferAttributes:)(void *a1, uint64_t a2)
{
  v3 = AVAssetWriter.inputTaggedPixelBufferGroupReceiver(for:pixelBufferAttributes:)(a1, a2);
  [a1 setPerformsMultiPassEncodingIfSupported_];
  type metadata accessor for AVAssetWriterInput.MultiPassController();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = 0;
  v5 = a1;
  return v3;
}

uint64_t dispatch thunk of AVAssetWriterInput.TaggedPixelBufferGroupReceiver.append(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = (*(*v6 + 232) + **(*v6 + 232));
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = closure #1 in AVAssetReader.outputProvider(for:)partial apply;

  return v16(a1, a2, a3, a4, a5, a6);
}

uint64_t closure #1 in AVAssetExportSession.export(to:as:isolation:)()
{
  if ([*(v0 + 152) status] == 5)
  {
    type metadata accessor for CancellationError();
    lazy protocol witness table accessor for type AVAssetExportSession.ProgressStates.Iterator and conformance AVAssetExportSession.ProgressStates.Iterator(&lazy protocol witness table cache variable for type CancellationError and conformance CancellationError, MEMORY[0x1E69E8550]);
    swift_allocError();
    CancellationError.init()();
    swift_willThrow();
    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v3 = *(v0 + 152);
    *(v0 + 16) = v0;
    *(v0 + 24) = closure #1 in AVAssetExportSession.export(to:as:isolation:);
    v4 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5NeverOGMd);
    *(v0 + 80) = MEMORY[0x1E69E9820];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = @objc completion handler block implementation for <A><A1>@escaping @callee_unowned @convention(block) @Sendable () -> () with result type ();
    *(v0 + 104) = &block_descriptor_39_0;
    *(v0 + 112) = v4;
    [v3 exportAsynchronouslyWithCompletionHandler_];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }
}

{

  return MEMORY[0x1EEE6DFA0](closure #1 in AVAssetExportSession.export(to:as:isolation:), 0, 0);
}

{
  v1 = [*(v0 + 152) status];
  if (v1 == 5)
  {
    goto LABEL_7;
  }

  if (v1 == 4)
  {
    if ([*(v0 + 152) error])
    {
LABEL_8:
      swift_willThrow();
      v2 = *(v0 + 8);
      goto LABEL_9;
    }

    __break(1u);
LABEL_7:
    type metadata accessor for CancellationError();
    lazy protocol witness table accessor for type AVAssetExportSession.ProgressStates.Iterator and conformance AVAssetExportSession.ProgressStates.Iterator(&lazy protocol witness table cache variable for type CancellationError and conformance CancellationError, MEMORY[0x1E69E8550]);
    swift_allocError();
    CancellationError.init()();
    goto LABEL_8;
  }

  if (v1 != 3)
  {
    v4 = *(v0 + 152);
    _StringGuts.grow(_:)(29);
    *(v0 + 80) = 0;
    *(v0 + 88) = 0xE000000000000000;
    MEMORY[0x1CCA86740](0xD00000000000001BLL, 0x80000001C9392860);
    *(v0 + 144) = [v4 status];
    type metadata accessor for AVAssetExportSessionStatus(0);
    _print_unlocked<A, B>(_:_:)();
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v2 = *(v0 + 8);
LABEL_9:

  return v2();
}

uint64_t AVAssetExportSession.export(to:as:isolation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  if (a3)
  {
    swift_getObjectType();
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    a3 = v7;
  }

  else
  {
    v6 = 0;
  }

  v5[7] = v6;
  v5[8] = a3;

  return MEMORY[0x1EEE6DFA0](AVAssetExportSession.export(to:as:isolation:), v6, a3);
}

uint64_t AVAssetExportSession.export(to:as:isolation:)@<X0>(NSURL *a1@<X8>)
{
  v2 = v1[6];
  v3 = v1[3];
  URL._bridgeToObjectiveC()(a1);
  v5 = v4;
  [v2 setOutputURL_];

  [v2 setOutputFileType_];
  v6 = swift_task_alloc();
  v1[9] = v6;
  *(v6 + 16) = v2;
  v7 = swift_task_alloc();
  v1[10] = v7;
  *(v7 + 16) = v2;
  v8 = swift_task_alloc();
  v1[11] = v8;
  *v8 = v1;
  v8[1] = AVAssetExportSession.export(to:as:isolation:);

  return MEMORY[0x1EEE6DE18]();
}

uint64_t AVAssetExportSession.export(to:as:isolation:)()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = AVAssetExportSession.export(to:as:isolation:);
  }

  else
  {

    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = _sSo21AVAssetImageGeneratorC12AVFoundationE6ImagesVScIACScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTY1_;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t partial apply for closure #1 in AVAssetExportSession.export(to:as:isolation:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = closure #1 in AVAssetReader.outputProvider(for:)partial apply;

  return closure #1 in AVAssetExportSession.export(to:as:isolation:)(a1, v4);
}

id AVAssetExportSession.states(updateInterval:)@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  *a1 = v2;
  *(a1 + 8) = a2;
  return v2;
}

uint64_t get_enum_tag_for_layout_string_So20AVAssetExportSessionC12AVFoundationE5StateO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for AVAssetExportSession.State(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AVAssetExportSession.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for AVAssetExportSession.State(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

unint64_t lazy protocol witness table accessor for type AVAssetExportSession.ProgressStates and conformance AVAssetExportSession.ProgressStates()
{
  result = lazy protocol witness table cache variable for type AVAssetExportSession.ProgressStates and conformance AVAssetExportSession.ProgressStates;
  if (!lazy protocol witness table cache variable for type AVAssetExportSession.ProgressStates and conformance AVAssetExportSession.ProgressStates)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AVAssetExportSession.ProgressStates and conformance AVAssetExportSession.ProgressStates);
  }

  return result;
}

uint64_t AVAssetExportSession.ProgressStates.Iterator.StateInternal.init(forSnapshotOf:previousInternalState:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v50 = a3;
  v51 = a2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v47 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20AVAssetExportSessionC12AVFoundationE14ProgressStates33_D1D93B46B4622E2FDA3EC9B1BC7A64BDLLV8IteratorV13StateInternalOSgMd);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v47 - v12;
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [a1 status];
  if (v18 > 2)
  {
    if ((v18 - 3) < 3)
    {
      outlined destroy of CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection?(v51, &_sSo20AVAssetExportSessionC12AVFoundationE14ProgressStates33_D1D93B46B4622E2FDA3EC9B1BC7A64BDLLV8IteratorV13StateInternalOSgMd);

      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV05startB0_So10NSProgressC8progresstMd);
      v20 = *(*(v24 - 8) + 56);
      v21 = v24;
      v22 = v50;
      v23 = 3;
      goto LABEL_8;
    }

LABEL_23:
    aBlock = 0;
    v53 = 0xE000000000000000;
    v46 = v18;
    _StringGuts.grow(_:)(24);
    MEMORY[0x1CCA86740](0xD000000000000016, 0x80000001C9392840);
    v58 = v46;
    type metadata accessor for AVAssetExportSessionStatus(0);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  if (!v18)
  {
    outlined destroy of CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection?(v51, &_sSo20AVAssetExportSessionC12AVFoundationE14ProgressStates33_D1D93B46B4622E2FDA3EC9B1BC7A64BDLLV8IteratorV13StateInternalOSgMd);

    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV05startB0_So10NSProgressC8progresstMd);
    v20 = *(*(v25 - 8) + 56);
    v21 = v25;
    v22 = v50;
    v23 = 1;
    goto LABEL_8;
  }

  if (v18 != 1)
  {
    if (v18 == 2)
    {
      outlined init with copy of CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection?(v51, v13, &_sSo20AVAssetExportSessionC12AVFoundationE14ProgressStates33_D1D93B46B4622E2FDA3EC9B1BC7A64BDLLV8IteratorV13StateInternalOSgMd);
      v27 = type metadata accessor for AVAssetExportSession.ProgressStates.Iterator.StateInternal(0);
      if ((*(*(v27 - 8) + 48))(v13, 1, v27) == 1)
      {
        outlined destroy of CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection?(v13, &_sSo20AVAssetExportSessionC12AVFoundationE14ProgressStates33_D1D93B46B4622E2FDA3EC9B1BC7A64BDLLV8IteratorV13StateInternalOSgMd);
      }

      else
      {
        v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV05startB0_So10NSProgressC8progresstMd);
        v48 = *(v28 - 8);
        v29 = *(v48 + 48);
        v49 = v28;
        if (!v29(v13, 3))
        {
          outlined destroy of CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection?(v51, &_sSo20AVAssetExportSessionC12AVFoundationE14ProgressStates33_D1D93B46B4622E2FDA3EC9B1BC7A64BDLLV8IteratorV13StateInternalOSgMd);

          v41 = v49;
          v42 = *&v13[*(v49 + 48)];
          v43 = *(v15 + 32);
          v43(v17, v13, v14);
          v44 = *(v41 + 48);
          v45 = v50;
          v43(v50, v17, v14);
          *&v45[v44] = v42;
          return (*(v48 + 56))(v45, 0, 3, v41);
        }

        outlined destroy of AVAssetExportSession.ProgressStates.Iterator.StateInternal(v13);
      }

      v30 = [objc_opt_self() progressWithTotalUnitCount_];
      [v30 setKind_];
      v18 = [a1 status];
      if (v18 == 2)
      {
        v18 = [a1 outputURL];
        if (v18)
        {
          v31 = v18;
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          (*(v5 + 32))(v10, v8, v4);
          URL._bridgeToObjectiveC()(v32);
          v34 = v33;
          (*(v5 + 8))(v10, v4);
          [v30 setFileURL_];

          [v30 setPausable_];
          [v30 setCancellable_];
          v35 = swift_allocObject();
          *(v35 + 16) = a1;
          v56 = partial apply for closure #1 in AVAssetExportSession.ProgressStates.Iterator.StateInternal.init(forSnapshotOf:previousInternalState:);
          v57 = v35;
          aBlock = MEMORY[0x1E69E9820];
          v53 = 1107296256;
          v54 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
          v55 = &block_descriptor_8;
          v36 = _Block_copy(&aBlock);
          v37 = a1;

          [v30 setCancellationHandler_];
          _Block_release(v36);
          v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV05startB0_So10NSProgressC8progresstMd);
          v39 = *(v38 + 48);
          v40 = v50;
          static Date.now.getter();

          outlined destroy of CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection?(v51, &_sSo20AVAssetExportSessionC12AVFoundationE14ProgressStates33_D1D93B46B4622E2FDA3EC9B1BC7A64BDLLV8IteratorV13StateInternalOSgMd);
          *&v40[v39] = v30;
          return (*(*(v38 - 8) + 56))(v40, 0, 3, v38);
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
    }

    goto LABEL_23;
  }

  outlined destroy of CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection?(v51, &_sSo20AVAssetExportSessionC12AVFoundationE14ProgressStates33_D1D93B46B4622E2FDA3EC9B1BC7A64BDLLV8IteratorV13StateInternalOSgMd);

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV05startB0_So10NSProgressC8progresstMd);
  v20 = *(*(v19 - 8) + 56);
  v21 = v19;
  v22 = v50;
  v23 = 2;
LABEL_8:

  return v20(v22, v23, 3, v21);
}

uint64_t AVAssetExportSession.ProgressStates.Iterator.next()(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for Date();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20AVAssetExportSessionC12AVFoundationE14ProgressStates33_D1D93B46B4622E2FDA3EC9B1BC7A64BDLLV8IteratorV13StateInternalOSgMd);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v4 = type metadata accessor for AVAssetExportSession.ProgressStates.Iterator.StateInternal(0);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](AVAssetExportSession.ProgressStates.Iterator.next(), 0, 0);
}

uint64_t AVAssetExportSession.ProgressStates.Iterator.next()()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  v3 = *(v0 + 72);
  v4 = *(v0 + 24);
  v5 = *v4;
  *(v0 + 136) = *v4;
  v6 = *(type metadata accessor for AVAssetExportSession.ProgressStates.Iterator(0) + 24);
  *(v0 + 176) = v6;
  outlined init with copy of CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection?(v4 + v6, v3, &_sSo20AVAssetExportSessionC12AVFoundationE14ProgressStates33_D1D93B46B4622E2FDA3EC9B1BC7A64BDLLV8IteratorV13StateInternalOSgMd);
  v7 = v5;
  AVAssetExportSession.ProgressStates.Iterator.StateInternal.init(forSnapshotOf:previousInternalState:)(v7, v3, v2);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV05startB0_So10NSProgressC8progresstMd);
  *(v0 + 144) = v8;
  v9 = *(v8 - 8);
  *(v0 + 152) = v9;
  (*(v9 + 56))(v1, 3, 3, v8);
  LOBYTE(v2) = specialized static AVAssetExportSession.ProgressStates.Iterator.StateInternal.== infix(_:_:)(v2, v1);
  outlined destroy of AVAssetExportSession.ProgressStates.Iterator.StateInternal(v1);
  if (v2)
  {
    goto LABEL_4;
  }

  v10 = *(v0 + 80);
  v11 = *(v0 + 88);
  v12 = *(v0 + 64);
  outlined init with copy of CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection?(v4 + v6, v12, &_sSo20AVAssetExportSessionC12AVFoundationE14ProgressStates33_D1D93B46B4622E2FDA3EC9B1BC7A64BDLLV8IteratorV13StateInternalOSgMd);
  if ((*(v11 + 48))(v12, 1, v10) == 1)
  {
    outlined destroy of CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection?(*(v0 + 64), &_sSo20AVAssetExportSessionC12AVFoundationE14ProgressStates33_D1D93B46B4622E2FDA3EC9B1BC7A64BDLLV8IteratorV13StateInternalOSgMd);
    if (static Task<>.isCancelled.getter())
    {
LABEL_4:
      v13 = *(v0 + 128);
LABEL_5:
      outlined destroy of AVAssetExportSession.ProgressStates.Iterator.StateInternal(v13);
      goto LABEL_6;
    }

LABEL_14:
    v20 = *(v0 + 144);
    v21 = *(v0 + 152);
    v22 = *(v0 + 104);
    outlined init with copy of AVAssetExportSession.ProgressStates.Iterator.StateInternal(*(v0 + 128), v22);
    v23 = *(v21 + 48);
    if (v23(v22, 3, v20))
    {
      outlined destroy of AVAssetExportSession.ProgressStates.Iterator.StateInternal(*(v0 + 104));
    }

    else
    {
      v24 = *(v0 + 136);
      v26 = *(v0 + 40);
      v25 = *(v0 + 48);
      v27 = *(v0 + 32);
      v28 = *(*(v0 + 104) + *(*(v0 + 144) + 48));
      (*(v26 + 32))(v25);
      [v24 progress];
      specialized static AVAssetExportSession.ProgressStates.Iterator.updateProgress(_:exportProgress:exportingStartDate:)(v28, v29);

      (*(v26 + 8))(v25, v27);
    }

    v30 = *(v0 + 144);
    v31 = *(v0 + 176);
    v32 = *(v0 + 128);
    v34 = *(v0 + 88);
    v33 = *(v0 + 96);
    v35 = *(v0 + 80);
    v36 = *(v0 + 24);
    outlined destroy of CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection?(v36 + v31, &_sSo20AVAssetExportSessionC12AVFoundationE14ProgressStates33_D1D93B46B4622E2FDA3EC9B1BC7A64BDLLV8IteratorV13StateInternalOSgMd);
    outlined init with copy of AVAssetExportSession.ProgressStates.Iterator.StateInternal(v32, v36 + v31);
    (*(v34 + 56))(v36 + v31, 0, 1, v35);
    outlined init with take of AVAssetExportSession.ProgressStates.Iterator.StateInternal(v32, v33);
    v37 = v23(v33, 3, v30);
    if (v37 <= 1)
    {
      if (v37)
      {
        v14 = 0;
      }

      else
      {
        v14 = *(*(v0 + 96) + *(*(v0 + 144) + 48));
        (*(*(v0 + 40) + 8))();
      }

LABEL_7:
      **(v0 + 16) = v14;

      v15 = *(v0 + 8);

      return v15();
    }

    if (v37 == 2)
    {
      v14 = 1;
      goto LABEL_7;
    }

LABEL_6:
    v14 = 2;
    goto LABEL_7;
  }

  v17 = *(v0 + 128);
  v18 = *(v0 + 112);
  outlined init with take of AVAssetExportSession.ProgressStates.Iterator.StateInternal(*(v0 + 64), v18);
  if ((specialized static AVAssetExportSession.ProgressStates.Iterator.StateInternal.== infix(_:_:)(v17, v18) & 1) == 0)
  {
    outlined destroy of AVAssetExportSession.ProgressStates.Iterator.StateInternal(*(v0 + 112));
    if (static Task<>.isCancelled.getter())
    {
      goto LABEL_4;
    }

    goto LABEL_14;
  }

  if (static Task<>.isCancelled.getter())
  {
    v19 = *(v0 + 112);
    outlined destroy of AVAssetExportSession.ProgressStates.Iterator.StateInternal(*(v0 + 128));
    v13 = v19;
    goto LABEL_5;
  }

  v38 = *(v0 + 112);
  v39 = *(v0 + 56);
  Date.init(timeIntervalSinceNow:)();
  v40 = swift_task_alloc();
  *(v0 + 160) = v40;
  v40[2] = v7;
  v40[3] = v38;
  v40[4] = v39;
  v41 = swift_task_alloc();
  *(v0 + 168) = v41;
  *v41 = v0;
  v41[1] = AVAssetExportSession.ProgressStates.Iterator.next();

  return MEMORY[0x1EEE6DBF8]();
}

{

  return MEMORY[0x1EEE6DFA0](AVAssetExportSession.ProgressStates.Iterator.next(), 0, 0);
}

{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  v4 = *(v0 + 112);
  v3 = *(v0 + 120);
  v5 = *(v0 + 72);
  v6 = *(v0 + 56);
  v7 = *(v0 + 32);
  v8 = *(v0 + 40);
  outlined init with copy of CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection?(*(v0 + 24) + *(v0 + 176), v5, &_sSo20AVAssetExportSessionC12AVFoundationE14ProgressStates33_D1D93B46B4622E2FDA3EC9B1BC7A64BDLLV8IteratorV13StateInternalOSgMd);
  AVAssetExportSession.ProgressStates.Iterator.StateInternal.init(forSnapshotOf:previousInternalState:)(v2, v5, v3);
  outlined destroy of AVAssetExportSession.ProgressStates.Iterator.StateInternal(v1);
  (*(v8 + 8))(v6, v7);
  outlined destroy of AVAssetExportSession.ProgressStates.Iterator.StateInternal(v4);
  outlined init with take of AVAssetExportSession.ProgressStates.Iterator.StateInternal(v3, v1);
  if (static Task<>.isCancelled.getter())
  {
    outlined destroy of AVAssetExportSession.ProgressStates.Iterator.StateInternal(*(v0 + 128));
LABEL_3:
    v9 = 2;
    goto LABEL_4;
  }

  v12 = *(v0 + 144);
  v13 = *(v0 + 152);
  v14 = *(v0 + 104);
  outlined init with copy of AVAssetExportSession.ProgressStates.Iterator.StateInternal(*(v0 + 128), v14);
  v15 = *(v13 + 48);
  if (v15(v14, 3, v12))
  {
    outlined destroy of AVAssetExportSession.ProgressStates.Iterator.StateInternal(*(v0 + 104));
  }

  else
  {
    v16 = *(v0 + 136);
    v18 = *(v0 + 40);
    v17 = *(v0 + 48);
    v19 = *(v0 + 32);
    v20 = *(*(v0 + 104) + *(*(v0 + 144) + 48));
    (*(v18 + 32))(v17);
    [v16 progress];
    specialized static AVAssetExportSession.ProgressStates.Iterator.updateProgress(_:exportProgress:exportingStartDate:)(v20, v21);

    (*(v18 + 8))(v17, v19);
  }

  v22 = *(v0 + 144);
  v23 = *(v0 + 176);
  v24 = *(v0 + 128);
  v26 = *(v0 + 88);
  v25 = *(v0 + 96);
  v27 = *(v0 + 80);
  v28 = *(v0 + 24);
  outlined destroy of CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection?(v28 + v23, &_sSo20AVAssetExportSessionC12AVFoundationE14ProgressStates33_D1D93B46B4622E2FDA3EC9B1BC7A64BDLLV8IteratorV13StateInternalOSgMd);
  outlined init with copy of AVAssetExportSession.ProgressStates.Iterator.StateInternal(v24, v28 + v23);
  (*(v26 + 56))(v28 + v23, 0, 1, v27);
  outlined init with take of AVAssetExportSession.ProgressStates.Iterator.StateInternal(v24, v25);
  v29 = v15(v25, 3, v22);
  if (v29 > 1)
  {
    if (v29 != 2)
    {
      goto LABEL_3;
    }

    v9 = 1;
  }

  else if (v29)
  {
    v9 = 0;
  }

  else
  {
    v9 = *(*(v0 + 96) + *(*(v0 + 144) + 48));
    (*(*(v0 + 40) + 8))();
  }

LABEL_4:
  **(v0 + 16) = v9;

  v10 = *(v0 + 8);

  return v10();
}

uint64_t closure #1 in static AVAssetExportSession.ProgressStates.Iterator.advancementToNextInterestingState(after:accordingTo:deadline:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[2] = a2;
  v5[3] = a3;
  v6 = type metadata accessor for Date();
  v5[6] = v6;
  v7 = *(v6 - 8);
  v5[7] = v7;
  v5[8] = *(v7 + 64);
  v5[9] = swift_task_alloc();
  v8 = *(type metadata accessor for AVAssetExportSession.ProgressStates.Iterator.StateInternal(0) - 8);
  v5[10] = v8;
  v5[11] = *(v8 + 64);
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  v5[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in static AVAssetExportSession.ProgressStates.Iterator.advancementToNextInterestingState(after:accordingTo:deadline:), 0, 0);
}

uint64_t closure #1 in static AVAssetExportSession.ProgressStates.Iterator.advancementToNextInterestingState(after:accordingTo:deadline:)()
{
  v2 = v0[13];
  v1 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[10];
  v7 = v0[3];
  v6 = v0[4];
  v8 = type metadata accessor for TaskPriority();
  v25 = *(*(v8 - 8) + 56);
  v26 = v8;
  v25(v1, 1, 1);
  outlined init with copy of AVAssetExportSession.ProgressStates.Iterator.StateInternal(v6, v2);
  v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v10 = (v4 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  outlined init with take of AVAssetExportSession.ProgressStates.Iterator.StateInternal(v2, v11 + v9);
  *(v11 + v10) = v7;
  v12 = v7;
  _sScG7addTask8priority9operationyScPSg_xyYaYAcntFyt_Tg5(v1, &async function pointer to partial apply for closure #1 in closure #1 in static AVAssetExportSession.ProgressStates.Iterator.advancementToNextInterestingState(after:accordingTo:deadline:), v11);
  outlined destroy of CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection?(v1, &_sScPSgMd);
  outlined init with copy of AVAssetExportSession.ProgressStates.Iterator.StateInternal(v6, v3);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV05startB0_So10NSProgressC8progresstMd);
  if ((*(*(v13 - 8) + 48))(v3, 3, v13))
  {
    outlined destroy of AVAssetExportSession.ProgressStates.Iterator.StateInternal(v0[12]);
  }

  else
  {
    v14 = v0[14];
    v15 = v0[12];
    v16 = v0[9];
    v18 = v0[6];
    v17 = v0[7];
    v19 = v0[5];

    (*(v17 + 8))(v15, v18);
    (v25)(v14, 1, 1, v26);
    (*(v17 + 16))(v16, v19, v18);
    v20 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = 0;
    *(v21 + 24) = 0;
    (*(v17 + 32))(v21 + v20, v16, v18);
    _sScG7addTask8priority9operationyScPSg_xyYaYAcntFyt_Tg5(v14, &async function pointer to partial apply for closure #2 in closure #1 in static AVAssetExportSession.ProgressStates.Iterator.advancementToNextInterestingState(after:accordingTo:deadline:), v21);
    outlined destroy of CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection?(v14, &_sScPSgMd);
  }

  v22 = swift_task_alloc();
  v0[15] = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScGyytGMd);
  *v22 = v0;
  v22[1] = closure #1 in static AVAssetExportSession.ProgressStates.Iterator.advancementToNextInterestingState(after:accordingTo:deadline:);

  return MEMORY[0x1EEE6D8A0](v0 + 16, 0, 0, v23);
}

{

  return MEMORY[0x1EEE6DFA0](closure #1 in static AVAssetExportSession.ProgressStates.Iterator.advancementToNextInterestingState(after:accordingTo:deadline:), 0, 0);
}

{
  MEMORY[0x1CCA86870](**(v0 + 16), MEMORY[0x1E69E7CA8] + 8);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in closure #1 in static AVAssetExportSession.ProgressStates.Iterator.advancementToNextInterestingState(after:accordingTo:deadline:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_task_alloc();
  *(v5 + 16) = v8;
  *v8 = v5;
  v8[1] = closure #1 in AVAssetReader.outputProvider(for:)partial apply;

  return specialized static AVAssetExportSession.ProgressStates.Iterator.untilInternalStateWillChange(from:accordingTo:)(a4, a5);
}

uint64_t _sScG7addTask8priority9operationyScPSg_xyYaYAcntFyt_Tg5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v20 - v9;
  outlined init with copy of CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection?(a1, v20 - v9, &_sScPSgMd);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    outlined destroy of CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection?(v10, &_sScPSgMd);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v13 = dispatch thunk of Actor.unownedExecutor.getter();
      v15 = v14;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
  v15 = 0;
LABEL_6:
  v16 = *v4;
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  v18 = (v15 | v13);
  if (v15 | v13)
  {
    v21[0] = 0;
    v21[1] = 0;
    v18 = v21;
    v21[2] = v13;
    v21[3] = v15;
  }

  v20[1] = 1;
  v20[2] = v18;
  v20[3] = v16;
  swift_task_create();
}

uint64_t closure #2 in closure #1 in static AVAssetExportSession.ProgressStates.Iterator.advancementToNextInterestingState(after:accordingTo:deadline:)()
{
  v1 = Date.nanosecondsSinceNow.getter();
  v2 = 0x3FFFFFFFFFFFFFFFLL;
  if (v1 < 0x3FFFFFFFFFFFFFFFLL)
  {
    v2 = v1;
  }

  v3 = v2 & ~(v2 >> 63);
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = closure #2 in closure #1 in static AVAssetExportSession.ProgressStates.Iterator.advancementToNextInterestingState(after:accordingTo:deadline:);

  return MEMORY[0x1EEE6DA60](v3);
}

{
  v2 = *v1;
  *(v2 + 32) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](closure #2 in closure #1 in static AVAssetExportSession.ProgressStates.Iterator.advancementToNextInterestingState(after:accordingTo:deadline:), 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t Date.nanosecondsSinceNow.getter()
{
  Date.timeIntervalSinceNow.getter();
  if (v0 <= 0.0)
  {
    v1 = 0x8000000000000400;
  }

  else
  {
    v1 = 0x7FFFFFFFFFFFFC00;
  }

  Date.timeIntervalSinceNow.getter();
  if ((v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    return v1;
  }

  result = Date.timeIntervalSinceNow.getter();
  v5 = v4 * 1000000000.0;
  if (fabs(v5) >= 9.22337204e18)
  {
    return v1;
  }

  if (v5 <= -9.22337204e18)
  {
    __break(1u);
  }

  else if (v5 < 9.22337204e18)
  {
    return v5;
  }

  __break(1u);
  return result;
}