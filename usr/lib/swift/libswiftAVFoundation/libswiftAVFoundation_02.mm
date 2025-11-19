void closure #1 in static AVAssetExportSession.ProgressStates.Iterator.untilInternalStateWillChange(from:accordingTo:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOySo26AVAssetExportSessionStatusV__GMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v6 - v4;
  v6[1] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySo26AVAssetExportSessionStatusV_GMd);
  AsyncStream.Continuation.yield(_:)();
  (*(v3 + 8))(v5, v2);
  if ((a1 - 3) <= 2)
  {
    AsyncStream.Continuation.finish()();
  }
}

uint64_t protocol witness for AsyncIteratorProtocol.next() in conformance AVAssetExportSession.ProgressStates.Iterator(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_;

  return AVAssetExportSession.ProgressStates.Iterator.next()(a1);
}

uint64_t _sSo20AVAssetExportSessionC12AVFoundationE14ProgressStates33_D1D93B46B4622E2FDA3EC9B1BC7A64BDLLV8IteratorVScIACScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTW(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = _sSo20AVAssetExportSessionC12AVFoundationE14ProgressStates33_D1D93B46B4622E2FDA3EC9B1BC7A64BDLLV8IteratorVScIACScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ0_;

  return AVAssetExportSession.ProgressStates.Iterator.next()(a1);
}

uint64_t protocol witness for AsyncSequence.makeAsyncIterator() in conformance AVAssetExportSession.ProgressStates@<X0>(char *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(type metadata accessor for AVAssetExportSession.ProgressStates.Iterator(0) + 24);
  v6 = type metadata accessor for AVAssetExportSession.ProgressStates.Iterator.StateInternal(0);
  result = (*(*(v6 - 8) + 56))(&a1[v5], 1, 1, v6);
  *a1 = v3;
  *(a1 + 1) = v4;
  return result;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTRyt_Tg5(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = _sSo20AVAssetExportSessionC12AVFoundationE14ProgressStates33_D1D93B46B4622E2FDA3EC9B1BC7A64BDLLV8IteratorVScIACScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ0_;

  return v6(a1);
}

uint64_t specialized static AVAssetExportSession.ProgressStates.Iterator.StateInternal.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AVAssetExportSession.ProgressStates.Iterator.StateInternal(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20AVAssetExportSessionC12AVFoundationE14ProgressStates33_D1D93B46B4622E2FDA3EC9B1BC7A64BDLLV8IteratorV13StateInternalO_AJtMd);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v27 - v13;
  v15 = &v27 + *(v12 + 56) - v13;
  outlined init with copy of AVAssetExportSession.ProgressStates.Iterator.StateInternal(a1, &v27 - v13);
  outlined init with copy of AVAssetExportSession.ProgressStates.Iterator.StateInternal(a2, v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV05startB0_So10NSProgressC8progresstMd);
  v17 = *(*(v16 - 8) + 48);
  v18 = v17(v14, 3, v16);
  if (v18 > 1)
  {
    if (v18 == 2)
    {
      if (v17(v15, 3, v16) != 2)
      {
        goto LABEL_11;
      }
    }

    else if (v17(v15, 3, v16) != 3)
    {
      goto LABEL_11;
    }
  }

  else
  {
    if (!v18)
    {
      v28 = v5;
      outlined init with copy of AVAssetExportSession.ProgressStates.Iterator.StateInternal(v14, v10);
      v19 = *(v16 + 48);
      v20 = *&v10[v19];
      if (!v17(v15, 3, v16))
      {
        v23 = *&v15[v19];
        v24 = v28;
        (*(v28 + 32))(v7, v15, v4);
        v25 = static Date.== infix(_:_:)();
        v26 = *(v24 + 8);
        v26(v10, v4);
        if (v25)
        {
          type metadata accessor for NSValue(0, &lazy cache variable for type metadata for NSObject);
          v21 = static NSObject.== infix(_:_:)();

          v26(v7, v4);
          outlined destroy of AVAssetExportSession.ProgressStates.Iterator.StateInternal(v14);
          return v21 & 1;
        }

        v26(v7, v4);

        outlined destroy of AVAssetExportSession.ProgressStates.Iterator.StateInternal(v14);
        goto LABEL_12;
      }

      (*(v28 + 8))(v10, v4);
LABEL_11:
      outlined destroy of CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection?(v14, &_sSo20AVAssetExportSessionC12AVFoundationE14ProgressStates33_D1D93B46B4622E2FDA3EC9B1BC7A64BDLLV8IteratorV13StateInternalO_AJtMd);
LABEL_12:
      v21 = 0;
      return v21 & 1;
    }

    if (v17(v15, 3, v16) != 1)
    {
      goto LABEL_11;
    }
  }

  outlined destroy of AVAssetExportSession.ProgressStates.Iterator.StateInternal(v14);
  v21 = 1;
  return v21 & 1;
}

uint64_t outlined destroy of AVAssetExportSession.ProgressStates.Iterator.StateInternal(uint64_t a1)
{
  v2 = type metadata accessor for AVAssetExportSession.ProgressStates.Iterator.StateInternal(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of AVAssetExportSession.ProgressStates.Iterator.StateInternal(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AVAssetExportSession.ProgressStates.Iterator.StateInternal(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of AVAssetExportSession.ProgressStates.Iterator.StateInternal(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AVAssetExportSession.ProgressStates.Iterator.StateInternal(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id specialized static AVAssetExportSession.ProgressStates.Iterator.updateProgress(_:exportProgress:exportingStartDate:)(void *a1, float a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 totalUnitCount];
  v9 = result * a2;
  if (COERCE_INT(fabs(v9)) > 2139095039)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v9 <= -9.2234e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v9 >= 9.2234e18)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  [a1 setCompletedUnitCount_];
  static Date.now.getter();
  Date.timeIntervalSince(_:)();
  result = (*(v5 + 8))(v7, v4);
  if (a2 > 0.0)
  {
    return NSProgress.estimatedTimeRemaining.setter();
  }

  return result;
}

uint64_t partial apply for closure #1 in static AVAssetExportSession.ProgressStates.Iterator.advancementToNextInterestingState(after:accordingTo:deadline:)(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = closure #1 in AVAssetReader.outputProvider(for:)partial apply;

  return closure #1 in static AVAssetExportSession.ProgressStates.Iterator.advancementToNextInterestingState(after:accordingTo:deadline:)(a1, a2, v6, v7, v8);
}

uint64_t partial apply for closure #1 in closure #1 in static AVAssetExportSession.ProgressStates.Iterator.advancementToNextInterestingState(after:accordingTo:deadline:)(uint64_t a1)
{
  v4 = *(type metadata accessor for AVAssetExportSession.ProgressStates.Iterator.StateInternal(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in AVAssetReader.outputProvider(for:);

  return closure #1 in closure #1 in static AVAssetExportSession.ProgressStates.Iterator.advancementToNextInterestingState(after:accordingTo:deadline:)(a1, v6, v7, v1 + v5, v8);
}

uint64_t partial apply for closure #2 in closure #1 in static AVAssetExportSession.ProgressStates.Iterator.advancementToNextInterestingState(after:accordingTo:deadline:)(uint64_t a1)
{
  v4 = *(type metadata accessor for Date() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in AVAssetReader.outputProvider(for:);

  return closure #2 in closure #1 in static AVAssetExportSession.ProgressStates.Iterator.advancementToNextInterestingState(after:accordingTo:deadline:)(a1, v6, v7, v1 + v5);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTRyt_Tg5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in AVAssetReader.outputProvider(for:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTRyt_Tg5(a1, v4);
}

uint64_t specialized static AVAssetExportSession.ProgressStates.Iterator.untilInternalStateWillChange(from:accordingTo:)(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = type metadata accessor for Date();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20AVAssetExportSessionC12AVFoundationE14ProgressStates33_D1D93B46B4622E2FDA3EC9B1BC7A64BDLLV8IteratorV13StateInternalO_AJtMd);
  v2[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20AVAssetExportSessionC12AVFoundationE14ProgressStates33_D1D93B46B4622E2FDA3EC9B1BC7A64BDLLV8IteratorV13StateInternalOSgMd);
  v2[12] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVySo26AVAssetExportSessionStatusV_GMd);
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOySo26AVAssetExportSessionStatusV__GMd);
  v2[16] = v5;
  v2[17] = *(v5 - 8);
  v2[18] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySo26AVAssetExportSessionStatusV_GMd);
  v2[19] = v6;
  v7 = *(v6 - 8);
  v2[20] = v7;
  v2[21] = *(v7 + 64);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSySo26AVAssetExportSessionStatusVGMd);
  v2[24] = v8;
  v2[25] = *(v8 - 8);
  v2[26] = swift_task_alloc();
  v9 = type metadata accessor for AVAssetExportSession.ProgressStates.Iterator.StateInternal(0);
  v2[27] = v9;
  v2[28] = *(v9 - 8);
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](specialized static AVAssetExportSession.ProgressStates.Iterator.untilInternalStateWillChange(from:accordingTo:), 0, 0);
}

uint64_t specialized static AVAssetExportSession.ProgressStates.Iterator.untilInternalStateWillChange(from:accordingTo:)()
{
  v1 = v0[31];
  v2 = v0[5];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV05startB0_So10NSProgressC8progresstMd);
  v0[32] = v3;
  v4 = *(v3 - 8);
  v0[33] = v4;
  (*(v4 + 56))(v1, 3, 3, v3);
  LOBYTE(v2) = specialized static AVAssetExportSession.ProgressStates.Iterator.StateInternal.== infix(_:_:)(v2, v1);
  v5 = outlined destroy of AVAssetExportSession.ProgressStates.Iterator.StateInternal(v1);
  if (v2)
  {
    __break(1u);
  }

  else
  {
    v9 = v0[23];
    v22 = v0[22];
    v11 = v0[19];
    v10 = v0[20];
    v12 = v0[17];
    v13 = v0[18];
    v14 = v0[16];
    v15 = v0[6];
    type metadata accessor for AVAssetExportSessionStatus(0);
    (*(v12 + 104))(v13, *MEMORY[0x1E69E8650], v14);
    static AsyncStream.makeStream(of:bufferingPolicy:)();
    (*(v12 + 8))(v13, v14);
    (*(v10 + 16))(v22, v9, v11);
    v16 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v17 = swift_allocObject();
    (*(v10 + 32))(v17 + v16, v22, v11);
    v0[4] = v15;
    swift_getKeyPath();
    v18 = swift_allocObject();
    v18[2] = partial apply for closure #1 in static AVAssetExportSession.ProgressStates.Iterator.untilInternalStateWillChange(from:accordingTo:);
    v18[3] = v17;
    v18[4] = v15;
    v19 = v15;

    v0[34] = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

    AsyncStream.makeAsyncIterator()();
    v20 = swift_task_alloc();
    v0[35] = v20;
    *v20 = v0;
    v20[1] = specialized static AVAssetExportSession.ProgressStates.Iterator.untilInternalStateWillChange(from:accordingTo:);
    v8 = v0[13];
    v5 = (v0 + 2);
    v6 = 0;
    v7 = 0;
  }

  return MEMORY[0x1EEE6D9C8](v5, v6, v7, v8);
}

{

  return MEMORY[0x1EEE6DFA0](specialized static AVAssetExportSession.ProgressStates.Iterator.untilInternalStateWillChange(from:accordingTo:), 0, 0);
}

{
  if (*(v0 + 24))
  {
LABEL_16:
    v22 = *(v0 + 272);
    v23 = *(v0 + 200);
    v24 = *(v0 + 208);
    v26 = *(v0 + 184);
    v25 = *(v0 + 192);
    v27 = *(v0 + 152);
    v28 = *(v0 + 160);
    (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));
    dispatch thunk of NSKeyValueObservation.invalidate()();

    (*(v28 + 8))(v26, v27);
    (*(v23 + 8))(v24, v25);

    v29 = *(v0 + 8);

    return v29();
  }

  v1 = *(v0 + 264);
  v44 = *(v0 + 256);
  v2 = *(v0 + 240);
  v3 = *(v0 + 216);
  v4 = *(v0 + 224);
  v6 = *(v0 + 88);
  v5 = *(v0 + 96);
  v7 = *(v0 + 80);
  v9 = *(v0 + 40);
  v8 = *(v0 + 48);
  outlined init with copy of AVAssetExportSession.ProgressStates.Iterator.StateInternal(v9, v5);
  (*(v4 + 56))(v5, 0, 1, v3);
  AVAssetExportSession.ProgressStates.Iterator.StateInternal.init(forSnapshotOf:previousInternalState:)(v8, v5, v2);
  v10 = v6 + *(v7 + 48);
  outlined init with copy of AVAssetExportSession.ProgressStates.Iterator.StateInternal(v2, v6);
  outlined init with copy of AVAssetExportSession.ProgressStates.Iterator.StateInternal(v9, v10);
  v11 = *(v1 + 48);
  v12 = v11(v6, 3, v44);
  v13 = *(v0 + 256);
  if (v12 > 1)
  {
    if (v12 == 2)
    {
      outlined destroy of AVAssetExportSession.ProgressStates.Iterator.StateInternal(*(v0 + 240));
      if (v11(v10, 3, v13) != 2)
      {
        goto LABEL_15;
      }
    }

    else
    {
      outlined destroy of AVAssetExportSession.ProgressStates.Iterator.StateInternal(*(v0 + 240));
      if (v11(v10, 3, v13) != 3)
      {
        goto LABEL_15;
      }
    }
  }

  else if (v12)
  {
    outlined destroy of AVAssetExportSession.ProgressStates.Iterator.StateInternal(*(v0 + 240));
    if (v11(v10, 3, v13) != 1)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v14 = *(v0 + 232);
    outlined init with copy of AVAssetExportSession.ProgressStates.Iterator.StateInternal(*(v0 + 88), v14);
    v15 = *(v13 + 48);
    v16 = *(v14 + v15);
    if (v11(v10, 3, v13))
    {
      v17 = *(v0 + 232);
      v18 = *(v0 + 56);
      v19 = *(v0 + 64);
      outlined destroy of AVAssetExportSession.ProgressStates.Iterator.StateInternal(*(v0 + 240));

      (*(v19 + 8))(v17, v18);
LABEL_15:
      outlined destroy of CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection?(*(v0 + 88), &_sSo20AVAssetExportSessionC12AVFoundationE14ProgressStates33_D1D93B46B4622E2FDA3EC9B1BC7A64BDLLV8IteratorV13StateInternalO_AJtMd);
      goto LABEL_16;
    }

    v30 = *(v0 + 232);
    v31 = *(v0 + 64);
    v32 = *(v0 + 56);
    v33 = *(v10 + v15);
    (*(v31 + 32))(*(v0 + 72), v10, v32);
    v34 = static Date.== infix(_:_:)();
    v35 = *(v31 + 8);
    v35(v30, v32);
    v36 = *(v0 + 240);
    if ((v34 & 1) == 0)
    {
      v40 = *(v0 + 88);
      v41 = *(v0 + 72);
      v42 = *(v0 + 56);

      v35(v41, v42);
      outlined destroy of AVAssetExportSession.ProgressStates.Iterator.StateInternal(v36);
      outlined destroy of AVAssetExportSession.ProgressStates.Iterator.StateInternal(v40);
      goto LABEL_16;
    }

    v37 = *(v0 + 72);
    v38 = *(v0 + 56);
    type metadata accessor for NSValue(0, &lazy cache variable for type metadata for NSObject);
    v39 = static NSObject.== infix(_:_:)();

    v35(v37, v38);
    outlined destroy of AVAssetExportSession.ProgressStates.Iterator.StateInternal(v36);
    if ((v39 & 1) == 0)
    {
      outlined destroy of AVAssetExportSession.ProgressStates.Iterator.StateInternal(*(v0 + 88));
      goto LABEL_16;
    }
  }

  outlined destroy of AVAssetExportSession.ProgressStates.Iterator.StateInternal(*(v0 + 88));
  v20 = swift_task_alloc();
  *(v0 + 280) = v20;
  *v20 = v0;
  v20[1] = specialized static AVAssetExportSession.ProgressStates.Iterator.untilInternalStateWillChange(from:accordingTo:);
  v21 = *(v0 + 104);

  return MEMORY[0x1EEE6D9C8](v0 + 16, 0, 0, v21);
}

void partial apply for closure #1 in static AVAssetExportSession.ProgressStates.Iterator.untilInternalStateWillChange(from:accordingTo:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySo26AVAssetExportSessionStatusV_GMd);

  closure #1 in static AVAssetExportSession.ProgressStates.Iterator.untilInternalStateWillChange(from:accordingTo:)(a1);
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t lazy protocol witness table accessor for type AVAssetExportSession.ProgressStates.Iterator and conformance AVAssetExportSession.ProgressStates.Iterator(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata completion function for AVAssetExportSession.ProgressStates.Iterator.StateInternal()
{
  type metadata accessor for (startDate: Date, progress: NSProgress)();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void type metadata accessor for (startDate: Date, progress: NSProgress)()
{
  if (!lazy cache variable for type metadata for (startDate: Date, progress: NSProgress))
  {
    type metadata accessor for Date();
    type metadata accessor for NSValue(255, &lazy cache variable for type metadata for NSProgress);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (startDate: Date, progress: NSProgress));
    }
  }
}

void type metadata completion function for AVAssetExportSession.ProgressStates.Iterator()
{
  type metadata accessor for AVAssetExportSession.ProgressStates.Iterator.StateInternal?();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void type metadata accessor for AVAssetExportSession.ProgressStates.Iterator.StateInternal?()
{
  if (!lazy cache variable for type metadata for AVAssetExportSession.ProgressStates.Iterator.StateInternal?)
  {
    type metadata accessor for AVAssetExportSession.ProgressStates.Iterator.StateInternal(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AVAssetExportSession.ProgressStates.Iterator.StateInternal?);
    }
  }
}

id specialized AVAsynchronousKeyValueLoading.status<A>(of:)(void *a1)
{
  v2 = v1;
  v23[2] = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for CancellationError();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[2];
  v9 = a1[3];
  v10 = MEMORY[0x1CCA866B0](v8, v9);
  v23[0] = 0;
  v11 = [v2 statusOfValueForKey:v10 error:v23];

  result = v11;
  v13 = v23[0];
  if (v11 <= 2)
  {
    if (v11 < 2)
    {
      return result;
    }

    if (v11 == 2)
    {
      v14 = a1[4];
      v22 = v2;
      v15 = v23[0];
      v14(v23, &v22);

      return v23[0];
    }

LABEL_18:
    v23[0] = 0;
    v23[1] = 0xE000000000000000;
    v20 = result;
    v21 = v13;
    _StringGuts.grow(_:)(33);
    MEMORY[0x1CCA86740](0xD000000000000014, 0x80000001C9391F50);
    v22 = v20;
    type metadata accessor for AVKeyValueStatus(0);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x1CCA86740](0x79656B20726F6620, 0xE900000000000020);
    MEMORY[0x1CCA86740](v8, v9);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  if (v11 != 3)
  {
    if (v11 != 4)
    {
      goto LABEL_18;
    }

    v8 = v23[0];
    AVFall2022OSVersions();
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      CancellationError.init()();
      lazy protocol witness table accessor for type CancellationError and conformance CancellationError();
      v17 = swift_allocError();
      (*(v5 + 32))(v18, v7, v4);
      v19 = _convertErrorToNSError(_:)();

      return v19;
    }

    result = AVLocalizedError();
    if (result)
    {
      v16 = result;

      return v16;
    }

    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v23[0])
  {
    return v23[0];
  }

  result = AVLocalizedError();
  if (!result)
  {
    goto LABEL_17;
  }

  return result;
}

uint64_t specialized AVAsynchronousKeyValueLoading.load<A>(_:isolation:)(uint64_t a1, uint64_t a2)
{
  v3[18] = a1;
  v3[19] = v2;
  if (a2)
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

  v3[20] = v4;
  v3[21] = v6;

  return MEMORY[0x1EEE6DFA0](specialized AVAsynchronousKeyValueLoading.load<A>(_:isolation:), v4, v6);
}

uint64_t specialized AVAsynchronousKeyValueLoading.load<A>(_:isolation:)()
{
  v2 = v0[18];
  v1 = v0[19];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C9390590;
  v4 = *(v2 + 24);
  *(v3 + 32) = *(v2 + 16);
  *(v3 + 40) = v4;

  isa = Array._bridgeToObjectiveC()().super.isa;
  v0[22] = isa;

  v0[2] = v0;
  v0[3] = specialized AVAsynchronousKeyValueLoading.load<A>(_:isolation:);
  v6 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5NeverOGMd);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for <A><A1>@escaping @callee_unowned @convention(block) @Sendable () -> () with result type ();
  v0[13] = &block_descriptor_8_0;
  v0[14] = v6;
  [v1 loadValuesAsynchronouslyForKeys:isa completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 160);

  return MEMORY[0x1EEE6DFA0](specialized AVAsynchronousKeyValueLoading.load<A>(_:isolation:), v2, v1);
}

{
  v1 = *(v0 + 144);

  v2 = specialized AVAsynchronousKeyValueLoading.value<A>(of:)(v1);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t specialized AVAsynchronousKeyValueLoading.value<A>(of:)(void *a1)
{
  result = specialized AVAsynchronousKeyValueLoading.status<A>(of:)(a1);
  if (v2)
  {
    if (v2 == 1)
    {
      v3 = result;
      swift_willThrow();
      return v3;
    }

    else
    {
      v4 = result;
      v5 = v2;
      _StringGuts.grow(_:)(22);

      v6 = specialized AVAsyncProperty.Status.description.getter(v4, v5, &_sSaySo12AVAssetTrackCGMd);
      MEMORY[0x1CCA86740](v6);

      MEMORY[0x1CCA86740](41, 0xE100000000000000);
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  return result;
}

uint64_t specialized closure #1 in AVAsyncProperty<>.init(key:)(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = MEMORY[0x1CCA866B0](a2, a3);
  v7 = [a1 valueForKey_];

  if (v7)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  swift_dynamicCast();
  return v9;
}

uint64_t specialized AVAsyncProperty.Status.description.getter(void *a1, char a2, uint64_t *a3)
{
  if (!a2)
  {
    v9 = 0;
    MEMORY[0x1CCA86740](0x2820646564616F4CLL, 0xE800000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(a3);
    _print_unlocked<A, B>(_:_:)();
    goto LABEL_5;
  }

  if (a2 == 1)
  {
    v9 = 0x282064656C696146;
    v3 = [a1 description];
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    MEMORY[0x1CCA86740](v4, v6);

LABEL_5:
    MEMORY[0x1CCA86740](41, 0xE100000000000000);
    return v9;
  }

  if (a1)
  {
    return 0x676E6964616F4CLL;
  }

  else
  {
    return 0x2074657920746F4ELL;
  }
}

uint64_t AVMutableComposition.insertTimeRange(_:of:at:isolation:)(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 288) = a7;
  *(v8 + 296) = v7;
  *(v8 + 272) = a5;
  *(v8 + 280) = a6;
  *(v8 + 256) = a3;
  *(v8 + 264) = a4;
  *(v8 + 248) = a2;
  v9 = a1[1];
  *(v8 + 400) = *a1;
  *(v8 + 416) = v9;
  *(v8 + 432) = a1[2];
  if (a6)
  {
    swift_getObjectType();
    v10 = dispatch thunk of Actor.unownedExecutor.getter();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  *(v8 + 304) = v10;
  *(v8 + 312) = v12;

  return MEMORY[0x1EEE6DFA0](AVMutableComposition.insertTimeRange(_:of:at:isolation:), v10, v12);
}

uint64_t AVMutableComposition.insertTimeRange(_:of:at:isolation:)()
{
  v1 = swift_allocObject();
  *(v1 + 16) = 0x736B63617274;
  *(v1 + 24) = 0xE600000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12AVFoundation15AVAsyncPropertyCySo7AVAssetCSaySo0D5TrackCGGMd);
  inited = swift_initStackObject();
  v0[40] = inited;
  inited[4] = partial apply for specialized closure #1 in AVAsyncProperty<>.init(key:);
  inited[5] = v1;
  inited[2] = 0x736B63617274;
  inited[3] = 0xE600000000000000;
  v3 = swift_task_alloc();
  v0[41] = v3;
  *v3 = v0;
  v3[1] = AVMutableComposition.insertTimeRange(_:of:at:isolation:);
  v4 = v0[35];

  return specialized AVAsynchronousKeyValueLoading.load<A>(_:isolation:)(inited, v4);
}

{
  v1 = *(v0 + 336);
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v21 = *(v0 + 336);
    }

    else
    {
      v21 = v1 & 0xFFFFFFFFFFFFFF8;
    }

    v2 = MEMORY[0x1CCA86B70](v21);
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v0 + 352) = v2;
  v3 = *(v0 + 336);
  if (v2)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1CCA86AE0](0);
    }

    else
    {
      if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
      }

      v4 = *(v3 + 32);
    }

    v15 = v4;
    *(v0 + 360) = v4;
    *(v0 + 368) = 1;
    v16 = swift_allocObject();
    *(v0 + 376) = v16;
    *(v16 + 16) = 0xD000000000000012;
    *(v16 + 24) = 0x80000001C9391CE0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s12AVFoundation15AVAsyncPropertyCySo12AVAssetTrackCSaySo22CMFormatDescriptionRefaGGMd);
    inited = swift_initStackObject();
    *(v0 + 384) = inited;
    inited[4] = partial apply for specialized closure #1 in AVAsyncProperty<>.init(key:);
    inited[5] = v16;
    inited[2] = 0xD000000000000012;
    inited[3] = 0x80000001C9391CE0;
    isa = Array._bridgeToObjectiveC()().super.isa;
    *(v0 + 392) = isa;
    *(v0 + 16) = v0;
    *(v0 + 24) = AVMutableComposition.insertTimeRange(_:of:at:isolation:);
    v19 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5NeverOGMd);
    *(v0 + 80) = MEMORY[0x1E69E9820];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = @objc completion handler block implementation for <A><A1>@escaping @callee_unowned @convention(block) @Sendable () -> () with result type ();
    *(v0 + 104) = &block_descriptor_9;
    *(v0 + 112) = v19;
    [v15 loadValuesAsynchronouslyForKeys:isa completionHandler:v0 + 80];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }

  else
  {
    v5 = *(v0 + 296);
    v7 = *(v0 + 264);
    v6 = *(v0 + 272);
    v8 = *(v0 + 248);
    v9 = *(v0 + 256);

    *(v0 + 240) = 0;
    v10 = *(v0 + 416);
    *(v0 + 448) = *(v0 + 400);
    *(v0 + 464) = v10;
    *(v0 + 480) = *(v0 + 432);
    *(v0 + 496) = v9;
    *(v0 + 504) = v7;
    *(v0 + 512) = v6;
    v11 = [v5 insertTimeRange:v0 + 448 ofAsset:v8 atTime:v0 + 496 error:v0 + 240];
    v12 = *(v0 + 240);
    if (v11)
    {
      v13 = v12;
    }

    else
    {
      v20 = v12;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }

    v14 = *(v0 + 8);

    return v14();
  }
}

{
  v1 = *(*v0 + 312);
  v2 = *(*v0 + 304);

  return MEMORY[0x1EEE6DFA0](AVMutableComposition.insertTimeRange(_:of:at:isolation:), v2, v1);
}

{
  v1 = *(v0 + 384);

  v3 = specialized AVAsynchronousKeyValueLoading.status<A>(of:)(v1);
  if (v2)
  {
    if (v2 != 1)
    {
      v19 = v2;
      _StringGuts.grow(_:)(22);

      v20 = specialized AVAsyncProperty.Status.description.getter(v3, v19, &_sSaySo22CMFormatDescriptionRefaGMd);
      MEMORY[0x1CCA86740](v20);

      MEMORY[0x1CCA86740](41, 0xE100000000000000);
      return _assertionFailure(_:_:file:line:flags:)();
    }

    v4 = *(v0 + 360);

    swift_willThrow();

    goto LABEL_4;
  }

  v7 = *(v0 + 368);
  v9 = *(v0 + 352);
  v8 = *(v0 + 360);

  outlined consume of AVAsyncProperty<AVAssetTrack, [CMFormatDescriptionRef]>.Status(v3, 0);

  if (v7 == v9)
  {
    v10 = *(v0 + 296);
    v12 = *(v0 + 264);
    v11 = *(v0 + 272);
    v13 = *(v0 + 248);
    v14 = *(v0 + 256);

    *(v0 + 240) = 0;
    v15 = *(v0 + 416);
    *(v0 + 448) = *(v0 + 400);
    *(v0 + 464) = v15;
    *(v0 + 480) = *(v0 + 432);
    *(v0 + 496) = v14;
    *(v0 + 504) = v12;
    *(v0 + 512) = v11;
    v16 = [v10 insertTimeRange:v0 + 448 ofAsset:v13 atTime:v0 + 496 error:v0 + 240];
    v17 = *(v0 + 240);
    if (v16)
    {
      v18 = v17;
      v5 = *(v0 + 8);
      goto LABEL_5;
    }

    v24 = v17;
    _convertNSErrorToError(_:)();

    swift_willThrow();
LABEL_4:
    v5 = *(v0 + 8);
LABEL_5:

    return v5();
  }

  v21 = *(v0 + 368);
  v22 = *(v0 + 336);
  if ((v22 & 0xC000000000000001) != 0)
  {
    v23 = MEMORY[0x1CCA86AE0](*(v0 + 368));
  }

  else
  {
    if (v21 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_22;
    }

    v23 = *(v22 + 8 * v21 + 32);
  }

  v25 = v23;
  *(v0 + 360) = v23;
  *(v0 + 368) = v21 + 1;
  if (__OFADD__(v21, 1))
  {
    __break(1u);
LABEL_22:
    __break(1u);
  }

  v26 = swift_allocObject();
  *(v0 + 376) = v26;
  *(v26 + 16) = 0xD000000000000012;
  *(v26 + 24) = 0x80000001C9391CE0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12AVFoundation15AVAsyncPropertyCySo12AVAssetTrackCSaySo22CMFormatDescriptionRefaGGMd);
  inited = swift_initStackObject();
  *(v0 + 384) = inited;
  inited[4] = partial apply for specialized closure #1 in AVAsyncProperty<>.init(key:);
  inited[5] = v26;
  inited[2] = 0xD000000000000012;
  inited[3] = 0x80000001C9391CE0;
  isa = Array._bridgeToObjectiveC()().super.isa;
  *(v0 + 392) = isa;
  *(v0 + 16) = v0;
  *(v0 + 24) = AVMutableComposition.insertTimeRange(_:of:at:isolation:);
  v29 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5NeverOGMd);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = @objc completion handler block implementation for <A><A1>@escaping @callee_unowned @convention(block) @Sendable () -> () with result type ();
  *(v0 + 104) = &block_descriptor_9;
  *(v0 + 112) = v29;
  [v25 loadValuesAsynchronouslyForKeys:isa completionHandler:v0 + 80];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

{
  swift_setDeallocating();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t AVMutableComposition.insertTimeRange(_:of:at:isolation:)(uint64_t a1)
{
  v3 = *v2;
  v3[42] = a1;
  v3[43] = v1;

  if (v1)
  {
    v4 = v3[38];
    v5 = v3[39];
    v6 = AVMutableComposition.insertTimeRange(_:of:at:isolation:);
  }

  else
  {
    swift_setDeallocating();

    v4 = v3[38];
    v5 = v3[39];
    v6 = AVMutableComposition.insertTimeRange(_:of:at:isolation:);
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t partial apply for specialized closure #1 in AVAsyncProperty<>.init(key:)@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized closure #1 in AVAsyncProperty<>.init(key:)(*a1, *(v2 + 16), *(v2 + 24), &_sSaySo12AVAssetTrackCGMd);
  *a2 = result;
  return result;
}

{
  result = specialized closure #1 in AVAsyncProperty<>.init(key:)(*a1, *(v2 + 16), *(v2 + 24), &_sSaySo22CMFormatDescriptionRefaGMd);
  *a2 = result;
  return result;
}

void outlined consume of AVAsyncProperty<AVAssetTrack, [CMFormatDescriptionRef]>.Status(void *a1, char a2)
{
  if (a2 == 1)
  {
  }

  else if (!a2)
  {
  }
}

char *AVCapturePhotoOutput.supportedFlashModes.getter()
{
  v1 = [v0 supportedFlashModes];
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
      v9 = [v7 integerValue];

      v11 = *(v13 + 16);
      v10 = *(v13 + 24);
      if (v11 >= v10 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
      }

      ++v5;
      *(v13 + 16) = v11 + 1;
      *(v13 + 8 * v11 + 32) = v9;
    }

    while (v3 != v5);

    return v6;
  }

  __break(1u);
  return result;
}

void AVSampleBufferVideoRenderer.presentationTimeExpectation.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
}

id key path setter for AVSampleBufferVideoRenderer.presentationTimeExpectation : AVSampleBufferVideoRenderer(uint64_t *a1, void **a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = *(a1 + 24);
  v8 = *a2;
  if (v7 == 1)
  {
    if (v6 | v5 | v4)
    {
      v9 = sel_expectMonotonicallyIncreasingUpcomingSampleBufferPresentationTimes;
    }

    else
    {
      v9 = sel_resetUpcomingSampleBufferPresentationTimeExpectations;
    }

    return [v8 v9];
  }

  else
  {
    v11[3] = v2;
    v11[4] = v3;
    v11[0] = v4;
    v11[1] = v5;
    v11[2] = v6;
    return [v8 expectMinimumUpcomingSampleBufferPresentationTime_];
  }
}

id AVSampleBufferVideoRenderer.presentationTimeExpectation.setter(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (*(a1 + 24) == 1)
  {
    if (v3 | v2 | *a1)
    {
      v4 = sel_expectMonotonicallyIncreasingUpcomingSampleBufferPresentationTimes;
    }

    else
    {
      v4 = sel_resetUpcomingSampleBufferPresentationTimeExpectations;
    }

    return [v1 v4];
  }

  else
  {
    v6[0] = *a1;
    v6[1] = v2;
    v6[2] = v3;
    return [v1 expectMinimumUpcomingSampleBufferPresentationTime_];
  }
}

void (*AVSampleBufferVideoRenderer.presentationTimeExpectation.modify(uint64_t *a1))(char **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  *a1 = v3;
  *v3 = v1;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 8) = 0;
  *(v3 + 32) = 1;
  return AVSampleBufferVideoRenderer.presentationTimeExpectation.modify;
}

void AVSampleBufferVideoRenderer.presentationTimeExpectation.modify(char **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v4 = *(*a1 + 2);
  v3 = *(*a1 + 3);
  if ((*a1)[32])
  {
    v5 = *v1;
    if (v3 | v4 | v2)
    {
      [v5 expectMonotonicallyIncreasingUpcomingSampleBufferPresentationTimes];
    }

    else
    {
      [v5 resetUpcomingSampleBufferPresentationTimeExpectations];
    }
  }

  else
  {
    v6 = *v1;
    *(v1 + 36) = v2;
    *(v1 + 44) = v4;
    *(v1 + 52) = v3;
    [v6 expectMinimumUpcomingSampleBufferPresentationTime_];
  }

  free(v1);
}

void AVSampleBufferVideoRenderer.recommendedPixelBufferAttributes.getter()
{
  v1 = [v0 recommendedPixelBufferAttributes];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8Sendable_pMd);
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  JUMPOUT(0x1CCA865F0);
}

uint64_t initializeBufferWithCopyOfBuffer for AVSampleBufferVideoRenderer.PresentationTimeExpectation(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

__n128 __swift_memcpy25_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AVSampleBufferVideoRenderer.PresentationTimeExpectation(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AVSampleBufferVideoRenderer.PresentationTimeExpectation(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 12) = 0;
    *(result + 4) = 0;
    *(result + 17) = 0;
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

  *(result + 25) = v3;
  return result;
}

uint64_t getEnumTag for AVSampleBufferVideoRenderer.PresentationTimeExpectation(uint64_t a1)
{
  if (*(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t destructiveInjectEnumTag for AVSampleBufferVideoRenderer.PresentationTimeExpectation(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 24) = 1;
  }

  else
  {
    *(result + 24) = 0;
  }

  return result;
}

void AVPlayerVideoOutput.taggedBuffers(forHostTime:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = *MEMORY[0x1E6960C70];
  v7 = *(MEMORY[0x1E6960C70] + 16);
  v16 = 0;
  *&v17 = v6;
  *(&v17 + 1) = *(MEMORY[0x1E6960C70] + 8);
  v18 = v7;
  v15[0] = a1;
  v15[1] = a2;
  v15[2] = a3;
  v8 = [v4 copyTaggedBufferGroupForHostTime:v15 presentationTimeStamp:&v17 activeConfiguration:&v16];
  v9 = 0uLL;
  if (v8)
  {
    v10 = v16;
    if (v16)
    {
      v11 = v16;
      v8 = Array<A>.init(taggedBufferGroup:)();
      v14 = v17;
      v12 = v18;

      v9 = v14;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_1C9390590;
      *(v13 + 56) = MEMORY[0x1E69E6158];
      *(v13 + 32) = 0xD00000000000005DLL;
      *(v13 + 40) = 0x80000001C93928D0;
      print(_:separator:terminator:)();

      v9 = 0uLL;
      v8 = 0;
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
    v10 = 0;
  }

  *a4 = v8;
  *(a4 + 8) = v9;
  *(a4 + 24) = v12;
  *(a4 + 32) = v10;
}

double AVPlayerVideoOutput.sample(forHostTime:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = *MEMORY[0x1E6960CC0];
  v7 = *(MEMORY[0x1E6960CC0] + 16);
  v16 = 0;
  *&v17 = v6;
  *(&v17 + 1) = *(MEMORY[0x1E6960CC0] + 8);
  v18 = v7;
  v15[0] = a1;
  v15[1] = a2;
  v15[2] = a3;
  v8 = [v4 copyTaggedBufferGroupForHostTime:v15 presentationTimeStamp:&v17 activeConfiguration:&v16];
  if (v8)
  {
    v9 = v16;
    if (v16)
    {
      v10 = v16;
      v11 = Array<A>.init(_:)();
      v12 = v18;
      v14 = v17;

      *a4 = v11;
      result = *&v14;
      *(a4 + 8) = v14;
      *(a4 + 24) = v12;
      *(a4 + 32) = v9;
      return result;
    }
  }

  *(a4 + 32) = 0;
  result = 0.0;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  return result;
}

id AVVideoOutputSpecification.init(tagCollections:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v14 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = 32;
    v3 = v14;
    do
    {

      v4 = Array<A>.tagCollection.getter();
      type metadata accessor for CMTagCollectionRef(0);
      v13 = v5;

      *&v12 = v4;
      v14 = v3;
      v7 = *(v3 + 16);
      v6 = *(v3 + 24);
      if (v7 >= v6 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1);
        v3 = v14;
      }

      *(v3 + 16) = v7 + 1;
      outlined init with take of Any(&v12, (v3 + 32 * v7 + 32));
      v2 += 8;
      --v1;
    }

    while (v1);
  }

  else
  {
  }

  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  isa = Array._bridgeToObjectiveC()().super.isa;

  v10 = [v8 initWithTagCollections_];

  return v10;
}

Swift::Void __swiftcall AVVideoOutputSpecification.setOutputPixelBufferAttributes(_:for:)(Swift::OpaquePointer_optional _, Swift::OpaquePointer a2)
{
  if (_.value._rawValue)
  {
    v3.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v3.super.isa = 0;
  }

  v4 = Array<A>.tagCollection.getter();
  [v2 setOutputPixelBufferAttributes:v3.super.isa forTagCollection:v4];
}

Swift::Void __swiftcall AVVideoOutputSpecification.setOutputSettings(_:for:)(Swift::OpaquePointer_optional _, Swift::OpaquePointer a2)
{
  if (_.value._rawValue)
  {
    specialized _dictionaryUpCast<A, B, C, D>(_:)(_.value._rawValue);
    v3.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v3.super.isa = 0;
  }

  v4 = Array<A>.tagCollection.getter();
  [v2 setOutputSettings:v3.super.isa forTagCollection:v4];
}

uint64_t AVVideoOutputSpecification.preferredTagCollections.getter(SEL *a1)
{
  v2 = [v1 *a1];
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

uint64_t static Array<A>.createTagsForPreset(preset:)()
{
  v0 = CMTagCollectionCreateWithVideoOutputPreset();
  if (v0 != noErr.getter())
  {
    _StringGuts.grow(_:)(40);

    v1 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1CCA86740](v1);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
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

uint64_t getEnumTagSinglePayload for AVPlayerVideoOutput.Sample(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t storeEnumTagSinglePayload for AVPlayerVideoOutput.Sample(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *static AVPartialAsyncProperty<A>.formatDescriptions.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo22CMFormatDescriptionRefaGMd);
  type metadata accessor for AVAsyncProperty();
  return AVAsyncProperty<>.init(key:)(0xD000000000000012, 0x80000001C9391CE0);
}

void *static AVPartialAsyncProperty<A>.mediaCharacteristics.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo21AVMediaCharacteristicaGMd);
  type metadata accessor for AVAsyncProperty();
  return AVAsyncProperty<>.init(key:)(0xD000000000000014, 0x80000001C9392A00);
}

void *static AVPartialAsyncProperty<A>.extendedLanguageTag.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSSSgMd);
  type metadata accessor for AVAsyncProperty();
  return AVAsyncProperty<>.init(key:)(0xD000000000000013, 0x80000001C9392A60);
}

void *static AVPartialAsyncProperty<A>.timeRange.getter(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  a1(255);
  type metadata accessor for AVAsyncProperty();
  return AVAsyncProperty<>.init(key:)(a2, a3);
}

void *static AVPartialAsyncProperty<A>.minFrameDuration.getter()
{
  type metadata accessor for CMTime(255);
  type metadata accessor for AVAsyncProperty();
  return AVAsyncProperty<>.init(key:)(0xD000000000000010, 0x80000001C9392AC0);
}

void *static AVPartialAsyncProperty<A>.availableTrackAssociationTypes.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo22AVTrackAssociationTypeaGMd);
  type metadata accessor for AVAsyncProperty();
  return AVAsyncProperty<>.init(key:)(0xD00000000000001ELL, 0x80000001C9392B00);
}

NSValue __swiftcall CMTime._bridgeToObjectiveC()()
{
  v5 = v0;
  v6 = v1;
  v7 = v2;
  v3 = [objc_opt_self() valueWithCMTime_];

  return v3;
}

id static CMTime._forceBridgeFromObjectiveC(_:result:)(void *a1, uint64_t a2)
{
  v4 = [a1 objCType];
  type metadata accessor for CMTime(0);
  result = strcmp(v4, "{?=qiIq}");
  if (result)
  {
    __break(1u);
  }

  else
  {
    result = [a1 CMTimeValue];
    *a2 = v6;
    *(a2 + 16) = v7;
    *(a2 + 24) = 0;
  }

  return result;
}

BOOL static CMTime._conditionallyBridgeFromObjectiveC(_:result:)(void *a1, uint64_t a2)
{
  v4 = [a1 objCType];
  type metadata accessor for CMTime(0);
  v5 = strcmp(v4, "{?=qiIq}");
  if (v5)
  {
    v6 = 0;
    v7 = 0uLL;
  }

  else
  {
    [a1 CMTimeValue];
    v7 = v9;
    v6 = v10;
  }

  result = v5 == 0;
  *a2 = v7;
  *(a2 + 16) = v6;
  *(a2 + 24) = v5 != 0;
  return result;
}

uint64_t static CMTime._unconditionallyBridgeFromObjectiveC(_:)(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = [result objCType];
    type metadata accessor for CMTime(0);
    result = strcmp(v2, "{?=qiIq}");
    if (!result)
    {
      [v1 CMTimeValue];
      return v3;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id protocol witness for _ObjectiveCBridgeable._bridgeToObjectiveC() in conformance CMTime()
{
  v1 = *v0;
  v2 = v0[2];
  v3 = objc_opt_self();
  v6[0] = v1;
  v6[1] = v0[1];
  v6[2] = v2;
  v4 = [v3 valueWithCMTime_];

  return v4;
}

BOOL protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance CMTime(void *a1, uint64_t a2)
{
  v4 = strcmp([a1 objCType], "{?=qiIq}");
  if (v4)
  {
    v5 = 0;
    v6 = 0uLL;
  }

  else
  {
    [a1 CMTimeValue];
    v6 = v8;
    v5 = v9;
  }

  result = v4 == 0;
  *a2 = v6;
  *(a2 + 16) = v5;
  *(a2 + 24) = v4 != 0;
  return result;
}

id protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance CMTime@<X0>(id result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    v2 = result;
    result = strcmp([result objCType], "{?=qiIq}");
    if (!result)
    {
      result = [v2 CMTimeValue];
      v4 = v8;
      v5 = v7;
      *a2 = v6;
      a2[1] = v5;
      a2[2] = v4;
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

NSValue __swiftcall CMTimeRange._bridgeToObjectiveC()()
{
  v1 = v0[1];
  v4[0] = *v0;
  v4[1] = v1;
  v4[2] = v0[2];
  v2 = [objc_opt_self() valueWithCMTimeRange_];

  return v2;
}

id static CMTimeRange._forceBridgeFromObjectiveC(_:result:)(void *a1, uint64_t a2)
{
  v4 = [a1 objCType];
  type metadata accessor for CMTimeRange(0);
  result = strcmp(v4, "{?={?=qiIq}{?=qiIq}}");
  if (result)
  {
    __break(1u);
  }

  else
  {
    result = [a1 CMTimeRangeValue];
    *a2 = v6;
    *(a2 + 16) = v7;
    *(a2 + 32) = v8;
    *(a2 + 48) = 0;
  }

  return result;
}

BOOL static CMTimeRange._conditionallyBridgeFromObjectiveC(_:result:)(void *a1, uint64_t a2)
{
  v4 = [a1 objCType];
  type metadata accessor for CMTimeRange(0);
  v5 = strcmp(v4, "{?={?=qiIq}{?=qiIq}}");
  v6 = 0uLL;
  v7 = 0uLL;
  v8 = 0uLL;
  if (!v5)
  {
    [a1 CMTimeRangeValue];
    v6 = v10;
    v7 = v11;
    v8 = v12;
  }

  result = v5 == 0;
  *a2 = v6;
  *(a2 + 16) = v7;
  *(a2 + 32) = v8;
  *(a2 + 48) = v5 != 0;
  return result;
}

id static CMTimeRange._unconditionallyBridgeFromObjectiveC(_:)@<X0>(id result@<X0>, _OWORD *a2@<X8>)
{
  if (result)
  {
    v2 = result;
    v4 = [result objCType];
    type metadata accessor for CMTimeRange(0);
    result = strcmp(v4, "{?={?=qiIq}{?=qiIq}}");
    if (!result)
    {
      result = [v2 CMTimeRangeValue];
      *a2 = v5;
      a2[1] = v6;
      a2[2] = v7;
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id protocol witness for _ObjectiveCBridgeable._bridgeToObjectiveC() in conformance CMTimeRange()
{
  v1 = v0[1];
  v4[0] = *v0;
  v4[1] = v1;
  v4[2] = v0[2];
  v2 = [objc_opt_self() valueWithCMTimeRange_];

  return v2;
}

id protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance CMTimeRange(void *a1, uint64_t a2)
{
  result = strcmp([a1 objCType], "{?={?=qiIq}{?=qiIq}}");
  if (result)
  {
    __break(1u);
  }

  else
  {
    result = [a1 CMTimeRangeValue];
    *a2 = v5;
    *(a2 + 16) = v6;
    *(a2 + 32) = v7;
    *(a2 + 48) = 0;
  }

  return result;
}

BOOL protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance CMTimeRange(void *a1, uint64_t a2)
{
  v4 = strcmp([a1 objCType], "{?={?=qiIq}{?=qiIq}}");
  v5 = 0uLL;
  v6 = 0uLL;
  v7 = 0uLL;
  if (!v4)
  {
    [a1 CMTimeRangeValue];
    v5 = v9;
    v6 = v10;
    v7 = v11;
  }

  result = v4 == 0;
  *a2 = v5;
  *(a2 + 16) = v6;
  *(a2 + 32) = v7;
  *(a2 + 48) = v4 != 0;
  return result;
}

id protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance CMTimeRange@<X0>(id result@<X0>, _OWORD *a2@<X8>)
{
  if (result)
  {
    v2 = result;
    result = strcmp([result objCType], "{?={?=qiIq}{?=qiIq}}");
    if (!result)
    {
      result = [v2 CMTimeRangeValue];
      *a2 = v4;
      a2[1] = v5;
      a2[2] = v6;
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

NSValue __swiftcall CMTimeMapping._bridgeToObjectiveC()()
{
  v1 = v0[3];
  v6[2] = v0[2];
  v6[3] = v1;
  v2 = v0[5];
  v6[4] = v0[4];
  v6[5] = v2;
  v3 = v0[1];
  v6[0] = *v0;
  v6[1] = v3;
  v4 = [objc_opt_self() valueWithCMTimeMapping_];

  return v4;
}

id static CMTimeMapping._forceBridgeFromObjectiveC(_:result:)(void *a1, uint64_t a2)
{
  v4 = [a1 objCType];
  type metadata accessor for CMTimeMapping(0);
  result = strcmp(v4, "{?={?={?=qiIq}{?=qiIq}}{?={?=qiIq}{?=qiIq}}}");
  if (result)
  {
    __break(1u);
  }

  else
  {
    result = [a1 CMTimeMappingValue];
    *(a2 + 32) = v8;
    *(a2 + 48) = v9;
    *(a2 + 64) = v10;
    *(a2 + 80) = v11;
    *a2 = v6;
    *(a2 + 16) = v7;
    *(a2 + 96) = 0;
  }

  return result;
}

BOOL static CMTimeMapping._conditionallyBridgeFromObjectiveC(_:result:)(void *a1, uint64_t a2)
{
  v4 = [a1 objCType];
  type metadata accessor for CMTimeMapping(0);
  v5 = strcmp(v4, "{?={?={?=qiIq}{?=qiIq}}{?={?=qiIq}{?=qiIq}}}");
  if (v5)
  {
    v6 = 1;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0u;
  }

  else
  {
    [a1 CMTimeMappingValue];
    v6 = 0;
    *(a2 + 32) = v10;
    *(a2 + 48) = v11;
    *(a2 + 64) = v12;
    *(a2 + 80) = v13;
    *a2 = v8;
    *(a2 + 16) = v9;
  }

  result = v5 == 0;
  *(a2 + 96) = v6;
  return result;
}

id static CMTimeMapping._unconditionallyBridgeFromObjectiveC(_:)@<X0>(id result@<X0>, _OWORD *a2@<X8>)
{
  if (result)
  {
    v2 = result;
    v4 = [result objCType];
    type metadata accessor for CMTimeMapping(0);
    result = strcmp(v4, "{?={?={?=qiIq}{?=qiIq}}{?={?=qiIq}{?=qiIq}}}");
    if (!result)
    {
      result = [v2 CMTimeMappingValue];
      a2[2] = v7;
      a2[3] = v8;
      a2[4] = v9;
      a2[5] = v10;
      *a2 = v5;
      a2[1] = v6;
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id protocol witness for _ObjectiveCBridgeable._bridgeToObjectiveC() in conformance CMTimeMapping()
{
  v1 = v0[3];
  v6[2] = v0[2];
  v6[3] = v1;
  v2 = v0[5];
  v6[4] = v0[4];
  v6[5] = v2;
  v3 = v0[1];
  v6[0] = *v0;
  v6[1] = v3;
  v4 = [objc_opt_self() valueWithCMTimeMapping_];

  return v4;
}

id protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance CMTimeMapping(void *a1, uint64_t a2)
{
  result = strcmp([a1 objCType], "{?={?={?=qiIq}{?=qiIq}}{?={?=qiIq}{?=qiIq}}}");
  if (result)
  {
    __break(1u);
  }

  else
  {
    result = [a1 CMTimeMappingValue];
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
    *(a2 + 64) = v9;
    *(a2 + 80) = v10;
    *a2 = v5;
    *(a2 + 16) = v6;
    *(a2 + 96) = 0;
  }

  return result;
}

BOOL protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance CMTimeMapping(void *a1, uint64_t a2)
{
  v4 = strcmp([a1 objCType], "{?={?={?=qiIq}{?=qiIq}}{?={?=qiIq}{?=qiIq}}}");
  if (v4)
  {
    v5 = 1;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0u;
  }

  else
  {
    [a1 CMTimeMappingValue];
    v5 = 0;
    *(a2 + 32) = v9;
    *(a2 + 48) = v10;
    *(a2 + 64) = v11;
    *(a2 + 80) = v12;
    *a2 = v7;
    *(a2 + 16) = v8;
  }

  result = v4 == 0;
  *(a2 + 96) = v5;
  return result;
}

id protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance CMTimeMapping@<X0>(id result@<X0>, _OWORD *a2@<X8>)
{
  if (result)
  {
    v2 = result;
    result = strcmp([result objCType], "{?={?={?=qiIq}{?=qiIq}}{?={?=qiIq}{?=qiIq}}}");
    if (!result)
    {
      result = [v2 CMTimeMappingValue];
      a2[2] = v6;
      a2[3] = v7;
      a2[4] = v8;
      a2[5] = v9;
      *a2 = v4;
      a2[1] = v5;
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

char *AVCaptureVideoDataOutput.availableVideoPixelFormatTypes.getter()
{
  v1 = [v0 availableVideoCVPixelFormatTypes];
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
      v9 = [v7 unsignedIntValue];

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

char *AVCaptureDeviceFormat.supportedColorSpaces.getter()
{
  v1 = [v0 supportedColorSpaces];
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
      v9 = [v7 integerValue];

      v11 = *(v13 + 16);
      v10 = *(v13 + 24);
      if (v11 >= v10 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
      }

      ++v5;
      *(v13 + 16) = v11 + 1;
      *(v13 + 8 * v11 + 32) = v9;
    }

    while (v3 != v5);

    return v6;
  }

  __break(1u);
  return result;
}

char *AVCaptureDeviceFormat.supportedMaxPhotoDimensions.getter()
{
  v1 = [v0 supportedMaxPhotoDimensions];
  type metadata accessor for NSValue(0, &lazy cache variable for type metadata for NSValue);
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
      v9 = [v7 CMVideoDimensionsValue];

      v11 = *(v13 + 16);
      v10 = *(v13 + 24);
      if (v11 >= v10 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
      }

      ++v5;
      *(v13 + 16) = v11 + 1;
      *(v13 + 8 * v11 + 32) = v9;
    }

    while (v3 != v5);

    return v6;
  }

  __break(1u);
  return result;
}

char *AVCaptureDeviceFormat.secondaryNativeResolutionZoomFactors.getter(SEL *a1)
{
  v2 = [v1 *a1];
  type metadata accessor for NSValue(0, &lazy cache variable for type metadata for NSNumber);
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
    v14 = v3;
  }

  else
  {
    v14 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  v4 = MEMORY[0x1CCA86B70](v14);
  if (!v4)
  {
    goto LABEL_16;
  }

LABEL_3:
  v15 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    v7 = v15;
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
      [v8 floatValue];
      v11 = v10;

      v13 = *(v15 + 16);
      v12 = *(v15 + 24);
      if (v13 >= v12 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
      }

      ++v6;
      *(v15 + 16) = v13 + 1;
      *(v15 + 8 * v13 + 32) = v11;
    }

    while (v4 != v6);

    return v7;
  }

  __break(1u);
  return result;
}

char *AVCaptureDeviceFormat.supportedVideoZoomRangesForDepthDataDelivery.getter()
{
  v1 = [v0 supportedVideoZoomRangesForDepthDataDelivery];
  type metadata accessor for NSValue(0, &lazy cache variable for type metadata for AVZoomRange);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    goto LABEL_14;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    while (1)
    {
      v17 = MEMORY[0x1E69E7CC0];
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3 & ~(v3 >> 63), 0);
      if (v3 < 0)
      {
        break;
      }

      v5 = 0;
      v6 = v17;
      while (1)
      {
        v7 = (v2 & 0xC000000000000001) != 0 ? MEMORY[0x1CCA86AE0](v5, v2) : *(v2 + 8 * v5 + 32);
        v8 = v7;
        [v7 minZoomFactor];
        v10 = v9;
        [v8 maxZoomFactor];
        v12 = v11;

        if (v10 > v12)
        {
          break;
        }

        v14 = *(v17 + 16);
        v13 = *(v17 + 24);
        if (v14 >= v13 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
        }

        ++v5;
        *(v17 + 16) = v14 + 1;
        v15 = v17 + 16 * v14;
        *(v15 + 32) = v10;
        *(v15 + 40) = v12;
        if (v3 == v5)
        {

          return v6;
        }
      }

      __break(1u);
LABEL_14:
      if (v2 < 0)
      {
        v16 = v2;
      }

      else
      {
        v16 = v2 & 0xFFFFFFFFFFFFFF8;
      }

      v3 = MEMORY[0x1CCA86B70](v16);
      if (!v3)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_18:

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

void AVCaptureDeviceFormat.systemRecommendedVideoZoomRange.getter()
{
  v1 = [v0 systemRecommendedVideoZoomRange];
  v2 = v1;
  if (v1)
  {
    [v1 minZoomFactor];
    v4 = v3;
    [v2 maxZoomFactor];
    v6 = v5;

    if (v4 > v6)
    {
      __break(1u);
    }
  }
}

void AVCaptureDeviceFormat.systemRecommendedExposureBiasRange.getter()
{
  v1 = [v0 systemRecommendedExposureBiasRange];
  v2 = v1;
  if (v1)
  {
    [v1 minExposureBias];
    v4 = v3;
    [v2 maxExposureBias];
    v6 = v5;

    if (v4 > v6)
    {
      __break(1u);
    }
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AVAssetReader.start()()
{
  if (([v0 startReading] & 1) == 0)
  {
    if ([v0 error])
    {
      swift_willThrow();
    }
  }
}

uint64_t String.subscript.getter()
{
  return MEMORY[0x1EEE690B8]();
}

{
  return MEMORY[0x1EEE69100]();
}

CGPoint_optional __swiftcall CGPoint.init(dictionaryRepresentation:)(CFDictionaryRef dictionaryRepresentation)
{
  v1 = MEMORY[0x1EEDB8C40](dictionaryRepresentation);
  result.value.y = v3;
  result.value.x = v2;
  result.is_nil = v1;
  return result;
}

uint64_t DefaultStringInterpolation.appendInterpolation<A>(_:)()
{
  return MEMORY[0x1EEE6B178]();
}

{
  return MEMORY[0x1EEE6B180]();
}