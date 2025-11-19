uint64_t CheckedContinuationCanary.__deallocating_deinit()
{
  outlined destroy of String((v0 + 3));
  if (v0[2])
  {
    _StringGuts.grow(_:)(144);
    MEMORY[0x1865D3D30](0xD000000000000020, 0x800000018161C6B0);
    v1 = v0[3];
    v2 = v0[4];

    MEMORY[0x1865D3D30](v1, v2);

    MEMORY[0x1865D3D30](0xD00000000000006ELL, 0x800000018161D890);
    v3 = String.utf8CString.getter();

    swift_continuation_logFailedCheck(v3 + 32);
  }

  return swift_deallocClassInstance();
}

void *CheckedContinuation.init(continuation:function:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  type metadata accessor for CheckedContinuationCanary();
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  *a4 = result;
  return result;
}

void CheckedContinuation.resume(returning:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(a2 + 16);
  v5 = atomic_exchange((*v2 + 16), 0);
  if (v5)
  {
    (*(*(v4 - 8) + 32))(*(*(v5 + 8) + 40), a1);

    swift_continuation_throwingResume(v5, v6);
  }

  else
  {
    _StringGuts.grow(_:)(98);
    MEMORY[0x1865D3D30](0xD000000000000020, 0x800000018161C6B0);
    v7 = *(v3 + 24);
    v8 = *(v3 + 32);

    MEMORY[0x1865D3D30](v7, v8);

    MEMORY[0x1865D3D30](0xD00000000000003CLL, 0x800000018161C6E0);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    MEMORY[0x1865D3D30](2593, 0xE200000000000000);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

void CheckedContinuation.resume(throwing:)(uint64_t a1, void *a2)
{
  v3 = *v2;
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = atomic_exchange((*v2 + 16), 0);
  if (v7)
  {

    UnsafeContinuation.resume(throwing:)(a1, v7, v4, v5);
  }

  else
  {
    _StringGuts.grow(_:)(97);
    MEMORY[0x1865D3D30](0xD000000000000020, 0x800000018161C6B0);
    v8 = *(v3 + 24);
    v9 = *(v3 + 32);

    MEMORY[0x1865D3D30](v8, v9);

    MEMORY[0x1865D3D30](0xD00000000000003BLL, 0x800000018161C720);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    MEMORY[0x1865D3D30](2593, 0xE200000000000000);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

void UnsafeContinuation.resume(throwing:)(uint64_t a1, continuationChecking *a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocError();
  (*(*(a4 - 8) + 32))(v8, a1, a4);

  swift_continuation_throwingResumeWithError(a2, v7);
}

void withCheckedContinuation<A>(isolation:function:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[14] = a7;
  v8[15] = a8;
  v8[12] = a5;
  v8[13] = a6;
  v8[10] = a1;
  v8[11] = a4;
  if (a2)
  {
    ObjectType = swift_getObjectType();
    v11 = (*(a3 + 8))(ObjectType, a3);
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  swift_task_switch(withCheckedContinuation<A>(isolation:function:_:), v11, v13);
}

void withCheckedContinuation<A>(isolation:function:_:)()
{
  v2 = v0[14];
  v1 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[10];
  v6 = v0[11];
  v0[2] = v0;
  v0[7] = v5;
  v0[3] = _unsafeInheritExecutor_withUnsafeContinuation<A>(_:);
  v7 = swift_continuation_init(v0 + 2, 0);
  closure #1 in withCheckedContinuation<A>(isolation:function:_:)(v7, v3, v2, v6, v4);

  swift_continuation_await((v0 + 2));
}

void withCheckedContinuation<A>(function:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc(64);
  *(v6 + 16) = v13;
  v13[2] = a6;
  v13[3] = a4;
  v13[4] = a5;
  v13[5] = a2;
  v13[6] = a3;
  v14 = swift_task_alloc(80);
  *(v6 + 24) = v14;
  *v14 = v6;
  v14[1] = withCheckedContinuation<A>(function:_:);

  _unsafeInheritExecutor_withUnsafeContinuation<A>(_:)(a1, partial apply for closure #1 in _unsafeInheritExecutor_withCheckedContinuation<A>(function:_:));
}

uint64_t withCheckedContinuation<A>(function:_:)()
{
  v1 = *(*v0 + 16);
  v4 = *v0;
  *(*v0 + 24);
  v1;
  v2 = *(v4 + 8);

  return v2();
}

void _unsafeInheritExecutor_withUnsafeContinuation<A>(_:)(uint64_t a1, void (*a2)(swift *))
{
  v2[2] = v2;
  v2[7] = a1;
  v2[3] = _unsafeInheritExecutor_withUnsafeContinuation<A>(_:);
  v4 = swift_continuation_init(v2 + 2, 0);
  a2(v4);

  swift_continuation_await((v2 + 2));
}

uint64_t closure #1 in withCheckedContinuation<A>(isolation:function:_:)(uint64_t a1, void (*a2)(void **), uint64_t a3, uint64_t a4, uint64_t a5)
{

  type metadata accessor for CheckedContinuationCanary();
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a4;
  v9[4] = a5;
  v11 = v9;
  a2(&v11);
}

void withCheckedThrowingContinuation<A>(isolation:function:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[14] = a7;
  v8[15] = a8;
  v8[12] = a5;
  v8[13] = a6;
  v8[10] = a1;
  v8[11] = a4;
  if (a2)
  {
    ObjectType = swift_getObjectType();
    v11 = (*(a3 + 8))(ObjectType, a3);
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  swift_task_switch(withCheckedThrowingContinuation<A>(isolation:function:_:), v11, v13);
}

void withCheckedThrowingContinuation<A>(isolation:function:_:)()
{
  v2 = v0[14];
  v1 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[10];
  v6 = v0[11];
  v0[2] = v0;
  v0[7] = v5;
  v0[3] = _unsafeInheritExecutor_withUnsafeThrowingContinuation<A>(_:);
  v7 = swift_continuation_init(v0 + 2, 1uLL);
  closure #1 in withCheckedContinuation<A>(isolation:function:_:)(v7, v3, v2, v6, v4);

  swift_continuation_await((v0 + 2));
}

void withCheckedThrowingContinuation<A>(function:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc(64);
  *(v6 + 16) = v13;
  v13[2] = a6;
  v13[3] = a4;
  v13[4] = a5;
  v13[5] = a2;
  v13[6] = a3;
  v14 = swift_task_alloc(80);
  *(v6 + 24) = v14;
  *v14 = v6;
  v14[1] = withCheckedThrowingContinuation<A>(function:_:);

  _unsafeInheritExecutor_withUnsafeThrowingContinuation<A>(_:)(a1, partial apply for closure #1 in _unsafeInheritExecutor_withCheckedThrowingContinuation<A>(function:_:));
}

uint64_t withCheckedThrowingContinuation<A>(function:_:)()
{
  v1 = *(*v0 + 16);
  v4 = *v0;
  *(*v0 + 24);
  v1;
  v2 = *(v4 + 8);

  return v2();
}

uint64_t partial apply for closure #1 in _unsafeInheritExecutor_withCheckedContinuation<A>(function:_:)(uint64_t a1)
{
  v4 = v1[3];
  v3 = v1[4];
  v6 = v1[5];
  v5 = v1[6];
  type metadata accessor for CheckedContinuationCanary();
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = v6;
  v7[4] = v5;

  v9 = v7;
  v4(&v9);
}

void _unsafeInheritExecutor_withUnsafeThrowingContinuation<A>(_:)(uint64_t a1, void (*a2)(swift *))
{
  v2[2] = v2;
  v2[7] = a1;
  v2[3] = _unsafeInheritExecutor_withUnsafeThrowingContinuation<A>(_:);
  v4 = swift_continuation_init(v2 + 2, 1uLL);
  a2(v4);

  swift_continuation_await((v2 + 2));
}

uint64_t Executor.enqueue(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 8))();
}

{
  return (*(a3 + 16))();
}

{
  return (*(a3 + 24))();
}

uint64_t Executor.asSchedulable.getter()
{
  swift_getObjectType();
  v1 = swift_conformsToProtocol2();
  result = 0;
  if (v1)
  {
    if (v0)
    {
      return swift_unknownObjectRetain();
    }
  }

  return result;
}

uint64_t SchedulableExecutor.enqueue<A>(_:after:tolerance:clock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24 = a5;
  v22 = a1;
  v23 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v22 - v18;
  (*(a8 + 32))(a6, a8);
  swift_getAssociatedConformanceWitness();
  dispatch thunk of InstantProtocol.advanced(by:)();
  v20 = *(v13 + 8);
  v20(v17, AssociatedTypeWitness);
  (*(a7 + 24))(v22, v19, v23, a4, a6, a8, v24, a7);
  return (v20)(v19, AssociatedTypeWitness);
}

uint64_t SchedulableExecutor.enqueue<A>(_:at:tolerance:clock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v26 = a5;
  v24 = a7;
  v25 = a3;
  v22 = a2;
  v23 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v15 = &v22 - v14;
  v16 = swift_getAssociatedTypeWitness();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v22 - v19;
  (*(a8 + 32))(a6, a8);
  swift_getAssociatedConformanceWitness();
  dispatch thunk of InstantProtocol.duration(to:)();
  (*(v12 + 8))(v15, AssociatedTypeWitness);
  (*(v24 + 16))(v23, v20, v25, a4, a6, a8, v26);
  return (*(v17 + 8))(v20, v16);
}

uint64_t SerialExecutor.enqueue(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return Executor.enqueue(_:)(a1, a2, *(a3 + 8));
}

{
  return Executor.enqueue(_:)(a1, a2, *(a3 + 8));
}

Swift::Bool_optional __swiftcall SerialExecutor.isIsolatingCurrentContext()()
{
  return 2;
}

{
  return 2;
}

uint64_t SerialExecutor.isMainExecutor.getter(uint64_t a1, uint64_t a2)
{
  swift_createDefaultExecutorsOnce();
  if (static MainActor._executor)
  {
    v5 = qword_1ED42D448;
    ObjectType = swift_getObjectType();
    v7 = *(v5 + 16);
    swift_unknownObjectRetain();
    v8 = SerialExecutor._isSameExecutor<A>(_:)(v2, ObjectType, a1, v7, a2);
    swift_unknownObjectRelease();
    return v8 & 1;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t SerialExecutor._isSameExecutor<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1 == v5)
  {
    v14 = 1;
  }

  else
  {
    v8 = (*(a5 + 40))(a3, a5);
    DispatchQueueForExecutor = swift_getDispatchQueueForExecutor(v8, v9);
    if (DispatchQueueForExecutor)
    {
      v11 = DispatchQueueForExecutor;
      v12 = (*(a4 + 40))(a2, a4);
      v14 = swift_getDispatchQueueForExecutor(v12, v13) == v11;
    }

    else
    {
      swift_unknownObjectRetain();
      if (swift_dynamicCast())
      {
        v14 = (*(a4 + 48))(v16, a2, a4);
        swift_unknownObjectRelease();
      }

      else
      {
        v14 = 0;
      }
    }
  }

  return v14 & 1;
}

void swift_createDefaultExecutors()
{
  if (!_sScTss5NeverORszABRs_rlE16_defaultExecutorSch_pSgvpZ)
  {
    if (one-time initialization token for handle != -1)
    {
      swift_once();
    }

    if (static CoreFoundation.handle)
    {
      type metadata accessor for CFMainExecutor();
      v1 = swift_allocObject();
      *(v1 + 16) = 0;
      static MainActor._executor = v1;
      qword_1ED42D448 = &protocol witness table for DispatchMainExecutor;
      swift_unknownObjectRelease();
      type metadata accessor for CFTaskExecutor();
    }

    else
    {
      type metadata accessor for DispatchMainExecutor();
      v2 = swift_allocObject();
      *(v2 + 16) = 0;
      static MainActor._executor = v2;
      qword_1ED42D448 = &protocol witness table for DispatchMainExecutor;
      swift_unknownObjectRelease();
      type metadata accessor for DispatchGlobalTaskExecutor();
    }

    _sScTss5NeverORszABRs_rlE16_defaultExecutorSch_pSgvpZ = swift_allocObject();
    qword_1ED42D458 = &_ss26DispatchGlobalTaskExecutorCSchsWP;

    swift_unknownObjectRelease();
  }
}

uint64_t UnownedSerialExecutor.executor.setter(uint64_t result, uint64_t a2)
{
  *v2 = result;
  v2[1] = a2;
  return result;
}

void _checkExpectedExecutor(_filenameStart:_filenameLength:_filenameIsASCII:_line:_executor:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, swift *a5, uint64_t a6)
{
  if ((swift_task_isCurrentExecutor(a5, a6) & 1) == 0)
  {

    swift_task_reportUnexpectedExecutor(a1, a2, a3 & 1, a4, a5, a6);
  }
}

void protocol witness for SerialExecutor.checkIsolated() in conformance DispatchQueueShim()
{
  _StringGuts.grow(_:)(60);
  MEMORY[0x1865D3D30](0xD00000000000003ALL, 0x800000018161CF90);
  MEMORY[0x1865D3D30](0xD000000000000011, 0x800000018161AB30);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t _swift_task_isIsolatingCurrentContextSwift(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (*(a3 + 64))(a2, a3);
  if (v3 == 2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v3 & 1;
  }
}

uint64_t swift_getMainExecutor()
{
  swift_createDefaultExecutorsOnce();
  if (static MainActor._executor)
  {
    v0 = *(qword_1ED42D448 + 16);
    return swift_unknownObjectRetain();
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t SerialExecutor.preconditionIsolated(_:file:line:)(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  return SerialExecutor.preconditionIsolated(_:file:line:)(a1, a2, a3, a4, a5, a6, a7, a8);
}

{
  v9 = (*(a8 + 40))(a7, a8);
  result = swift_task_isCurrentExecutor(v9, v10);
  if ((result & 1) == 0)
  {
    _StringGuts.grow(_:)(63);
    MEMORY[0x1865D3D30](0xD00000000000002FLL, 0x800000018161C830);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v12 = MEMORY[0x1865D3D30](0x7475636578652027, 0xEC000000202E726FLL);
    v13 = a1(v12);
    MEMORY[0x1865D3D30](v13);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t Actor.preconditionIsolated(_:file:line:)(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  return Actor.preconditionIsolated(_:file:line:)(a1, a2, a3, a4, a5, a6, a7, a8);
}

{
  v11 = *(a8 + 8);
  v12 = v11(a7, a8);
  result = swift_task_isCurrentExecutor(v12, v13);
  if ((result & 1) == 0)
  {
    _StringGuts.grow(_:)(63);
    MEMORY[0x1865D3D30](0xD00000000000002FLL, 0x800000018161C830);
    v11(a7, a8);
    _print_unlocked<A, B>(_:_:)();
    v15 = MEMORY[0x1865D3D30](0x7475636578652027, 0xEC000000202E726FLL);
    v16 = a1(v15);
    MEMORY[0x1865D3D30](v16);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t static GlobalActor.preconditionIsolated(_:file:line:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(uint64_t, _BYTE *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  (*(a8 + 24))(a7, a8);
  v20 = a1;
  v21 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  a10(a9, v19, a3, a4, a5, a6, AssociatedTypeWitness, AssociatedConformanceWitness);
  return swift_unknownObjectRelease();
}

uint64_t Actor.assumeIsolated<A>(_:file:line:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = v9;
  v16 = (*(a9 + 8))(a7, a9);
  if ((swift_task_isCurrentExecutor(v16, v17) & 1) == 0)
  {
    goto LABEL_8;
  }

  v18 = swift_allocObject();
  v18[2] = a7;
  v18[3] = a8;
  v18[4] = a9;
  v18[5] = a1;
  v18[6] = a2;
  closure #1 in Actor.assumeIsolated<A>(_:file:line:)(_sxqd__s5Error_pIggIrzo_xqd__sAA_pIeggIrzo_ScARzs8SendableRd__r__lTRTA, v18, v11, a7, a8, a9);
  if (v10)
  {
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (!isEscapingClosureAtFileLocation)
    {
      return result;
    }

    __break(1u);
  }

  v21 = swift_isEscapingClosureAtFileLocation();

  if (v21)
  {
    __break(1u);
LABEL_8:
    _StringGuts.grow(_:)(66);
    MEMORY[0x1865D3D30](0xD00000000000003FLL, 0x800000018161DC90);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    MEMORY[0x1865D3D30](46, 0xE100000000000000);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

{
  return Actor.assumeIsolated<A>(_:file:line:)(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t closure #1 in Actor.assumeIsolated<A>(_:file:line:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a6;
  v12[5] = a1;
  v12[6] = a2;

  v14 = a3;
  _sxqd__s5Error_pIeggIrzo_xqd__sAA_pIegnIrzo_ScARzs8SendableRd__r__lTRTA(&v14);
}

uint64_t AsyncSequence.compactMap<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  return AsyncSequence.compactMap<A>(_:)(a1, a2, a3, a4, a5, type metadata accessor for AsyncCompactMapSequence, a6);
}

{
  return AsyncSequence.compactMap<A>(_:)(a1, a2, a3, a4, a5, type metadata accessor for AsyncThrowingCompactMapSequence, a6);
}

uint64_t AsyncCompactMapSequence.Iterator.next()(uint64_t a1, void *a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = a2[3];
  v5 = type metadata accessor for Optional();
  v3[6] = v5;
  v6 = *(v5 - 8);
  v3[7] = v6;
  v3[8] = swift_task_alloc((*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2[4];
  v8 = a2[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3[9] = AssociatedTypeWitness;
  v10 = type metadata accessor for Optional();
  v3[10] = v10;
  v11 = *(v10 - 8);
  v3[11] = v11;
  v3[12] = swift_task_alloc((*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(AssociatedTypeWitness - 8);
  v3[13] = v12;
  v3[14] = swift_task_alloc((*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v3[15] = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v3[16] = AssociatedConformanceWitness;
  v14 = *(AssociatedConformanceWitness + 32);
  v3[17] = v14;
  v3[18] = (AssociatedConformanceWitness + 32) & 0xFFFFFFFFFFFFLL | 0xE013000000000000;
  v15 = swift_checkMetadataState();
  v22 = (v14 + *v14);
  v16 = swift_task_alloc(v14[1]);
  v3[19] = v16;
  *v16 = v3;
  v16[1] = AsyncCompactMapSequence.Iterator.next();
  v17 = v3[18];
  v18 = v3[16];
  v19 = v3[12];
  v20 = v3[4];

  return v22(v19, v15, v18);
}

void AsyncCompactMapSequence.Iterator.next()()
{
  v2 = *(*v1 + 152);
  v4 = *v1;
  *(*v1 + 160) = v0;
  v2;
  if (v0)
  {
    v3 = AsyncCompactMapSequence.Iterator.next();
  }

  else
  {
    v3 = AsyncCompactMapSequence.Iterator.next();
  }

  swift_task_switch(v3, 0, 0);
}

{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 104);
  v4 = *(*v0 + 72);
  v5 = *v0;
  *(*v0 + 176);

  (*(v3 + 8))(v2, v4);

  swift_task_switch(AsyncCompactMapSequence.Iterator.next(), 0, 0);
}

uint64_t AsyncCompactMapSequence.Iterator.next()()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[9];
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v4 = v0[5];
    v5 = v0[2];
    (*(v0[11] + 8))(v1, v0[10]);
    (*(*(v4 - 8) + 56))(v5, 1, 1, v4);
    v6 = v0[12];
    v7 = v0[8];
    v0[14];
    v6;
    v7;
    v8 = v0[1];

    return v8();
  }

  else
  {
    v11 = v0[3];
    v10 = v0[4];
    (*(v2 + 32))(v0[14], v1, v3);
    v12 = (v10 + *(v11 + 44));
    v13 = *v12;
    v0[21] = v12[1];

    v17 = (v13 + *v13);
    v14 = swift_task_alloc(v13[1]);
    v0[22] = v14;
    *v14 = v0;
    v14[1] = AsyncCompactMapSequence.Iterator.next();
    v15 = v0[14];
    v16 = v0[8];

    return v17(v16, v15);
  }
}

{
  v1 = v0[8];
  v2 = v0[5];
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[7] + 8))(v1, v0[6]);
    v4 = v0[17];
    v5 = v0[18];
    v6 = v0[15];
    v7 = swift_checkMetadataState();
    v18 = (v4 + *v4);
    v8 = swift_task_alloc(v4[1]);
    v0[19] = v8;
    *v8 = v0;
    v8[1] = AsyncCompactMapSequence.Iterator.next();
    v9 = v0[18];
    v10 = v0[16];
    v11 = v0[12];
    v12 = v0[4];

    return v18(v11, v7, v10);
  }

  else
  {
    v14 = v0[2];
    (*(v3 + 32))(v14, v1, v2);
    (*(v3 + 56))(v14, 0, 1, v2);
    v15 = v0[12];
    v16 = v0[8];
    v0[14];
    v15;
    v16;
    v17 = v0[1];

    return v17();
  }
}

{
  v1 = v0[12];
  v2 = v0[8];
  v0[14];
  v1;
  v2;
  v3 = v0[1];
  v4 = v0[20];

  return v3();
}

uint64_t _ss23AsyncCompactMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKF(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6[6] = v5;
  v6[7] = a5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v6[8] = a4[3];
  v8 = type metadata accessor for Optional();
  v6[9] = v8;
  v9 = *(v8 - 8);
  v6[10] = v9;
  v6[11] = swift_task_alloc((*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a4[4];
  v11 = a4[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[12] = AssociatedTypeWitness;
  v13 = *(AssociatedTypeWitness - 8);
  v6[13] = v13;
  v6[14] = swift_task_alloc((*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_getAssociatedTypeWitness();
  v6[15] = v14;
  v15 = type metadata accessor for Optional();
  v6[16] = v15;
  v16 = *(v15 - 8);
  v6[17] = v16;
  v6[18] = swift_task_alloc((*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v14 - 8);
  v6[19] = v17;
  v6[20] = swift_task_alloc((*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v6[21] = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6[22] = AssociatedConformanceWitness;
  v19 = *(AssociatedConformanceWitness + 40);
  v6[23] = v19;
  v6[24] = (AssociatedConformanceWitness + 40) & 0xFFFFFFFFFFFFLL | 0x2B1A000000000000;
  v20 = swift_checkMetadataState();
  v30 = (v19 + *v19);
  v21 = swift_task_alloc(v19[1]);
  v6[25] = v21;
  *v21 = v6;
  v21[1] = _ss23AsyncCompactMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKFTQ0_;
  v22 = v6[24];
  v23 = v6[22];
  v24 = v6[18];
  v25 = v6[14];
  v26 = v6[6];
  v27 = v6[3];
  v28 = v6[4];

  return v30(v24, v27, v28, v25, v20, v23);
}

void _ss23AsyncCompactMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKFTQ0_()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *v1;
  *(*v1 + 200);
  v5 = v2[3];
  if (v0)
  {
    if (v5)
    {
      v6 = v3[4];
      ObjectType = swift_getObjectType();
      v8 = (*(v6 + 8))(ObjectType, v6);
      v10 = v9;
    }

    else
    {
      v8 = 0;
      v10 = 0;
    }

    v15 = _ss23AsyncCompactMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKFTY4_;
    v16 = v8;
  }

  else
  {
    if (v5)
    {
      v11 = v3[4];
      v12 = swift_getObjectType();
      v13 = (*(v11 + 8))(v12, v11);
      v10 = v14;
    }

    else
    {
      v13 = 0;
      v10 = 0;
    }

    v3[26] = v13;
    v3[27] = v10;
    v15 = _ss23AsyncCompactMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKFTY1_;
    v16 = v13;
  }

  swift_task_switch(v15, v16, v10);
}

uint64_t _ss23AsyncCompactMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKFTY1_()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[15];
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v4 = v0[8];
    v5 = v0[2];
    (*(v0[17] + 8))(v1, v0[16]);
    (*(*(v4 - 8) + 56))(v5, 1, 1, v4);
    v6 = v0[18];
    v7 = v0[14];
    v8 = v0[11];
    v0[20];
    v6;
    v7;
    v8;
    v9 = v0[1];

    return v9();
  }

  else
  {
    v12 = v0[5];
    v11 = v0[6];
    (*(v2 + 32))(v0[20], v1, v3);
    v13 = (v11 + *(v12 + 44));
    v14 = *v13;
    v0[28] = v13[1];

    v18 = (v14 + *v14);
    v15 = swift_task_alloc(v14[1]);
    v0[29] = v15;
    *v15 = v0;
    v15[1] = _ss23AsyncCompactMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKFTQ2_;
    v16 = v0[20];
    v17 = v0[11];

    return v18(v17, v16);
  }
}

void _ss23AsyncCompactMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKFTQ2_()
{
  v1 = *v0;
  v2 = *(*v0 + 224);
  v3 = *(*v0 + 160);
  v4 = *(*v0 + 152);
  v5 = *(*v0 + 120);
  v8 = *v0;
  *(*v0 + 232);

  (*(v4 + 8))(v3, v5);
  v6 = *(v1 + 216);
  v7 = *(v1 + 208);

  swift_task_switch(_ss23AsyncCompactMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKFTY3_, v7, v6);
}

uint64_t _ss23AsyncCompactMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKFTY3_()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[10] + 8))(v1, v0[9]);
    v4 = v0[23];
    v5 = v0[24];
    v6 = v0[21];
    v7 = swift_checkMetadataState();
    v22 = (v4 + *v4);
    v8 = swift_task_alloc(v4[1]);
    v0[25] = v8;
    *v8 = v0;
    v8[1] = _ss23AsyncCompactMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKFTQ0_;
    v9 = v0[24];
    v10 = v0[22];
    v11 = v0[18];
    v12 = v0[14];
    v13 = v0[6];
    v14 = v0[3];
    v15 = v0[4];

    return v22(v11, v14, v15, v12, v7, v10);
  }

  else
  {
    v17 = v0[2];
    (*(v3 + 32))(v17, v1, v2);
    (*(v3 + 56))(v17, 0, 1, v2);
    v18 = v0[18];
    v19 = v0[14];
    v20 = v0[11];
    v0[20];
    v18;
    v19;
    v20;
    v21 = v0[1];

    return v21();
  }
}

uint64_t _ss23AsyncCompactMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKFTY4_()
{
  v1 = v0[20];
  v2 = v0[18];
  v3 = v0[14];
  v4 = v0[11];
  (*(v0[13] + 32))(v0[7], v3, v0[12]);
  v1;
  v2;
  v3;
  v4;
  v5 = v0[1];

  return v5();
}

uint64_t protocol witness for AsyncIteratorProtocol.next() in conformance AsyncCompactMapSequence<A, B>.Iterator(uint64_t a1, void *a2)
{
  v5 = swift_task_alloc(192);
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for AsyncIteratorProtocol.next() in conformance AsyncCompactMapSequence<A, B>.Iterator;

  return AsyncCompactMapSequence.Iterator.next()(a1, a2);
}

uint64_t _ss23AsyncCompactMapSequenceV8IteratorVyxq__GScIsScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTW(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5[2] = a4;
  v10 = a5[4];
  v11 = a5[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[3] = AssociatedTypeWitness;
  v13 = *(AssociatedTypeWitness - 8);
  v5[4] = v13;
  v14 = swift_task_alloc((*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v5[5] = v14;
  v15 = swift_task_alloc(240);
  v5[6] = v15;
  *v15 = v5;
  v15[1] = _ss23AsyncCompactMapSequenceV8IteratorVyxq__GScIsScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ0_;

  return _ss23AsyncCompactMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKF(a1, a2, a3, a5, v14);
}

uint64_t AsyncSequence.dropFirst(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1 < 0)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v4 = v3;
    (*(*(a2 - 8) + 32))(a3, v4, a2);
    result = type metadata accessor for AsyncDropFirstSequence();
    *(a3 + *(result + 36)) = a1;
  }

  return result;
}

uint64_t (*AsyncDropFirstSequence.Iterator.count.modify(uint64_t a1, uint64_t a2))()
{
  result = UnownedSerialExecutor.executor.modify;
  v4 = v2 + *(a2 + 36);
  return result;
}

void AsyncDropFirstSequence.Iterator.next()(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *(a2 + 24);
  v3[6] = *(a2 + 16);
  v3[7] = swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for Optional();
  v3[8] = v4;
  v5 = *(v4 - 8);
  v3[9] = v5;
  v3[10] = swift_task_alloc((*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);

  swift_task_switch(AsyncDropFirstSequence.Iterator.next(), 0, 0);
}

uint64_t AsyncDropFirstSequence.Iterator.next()()
{
  v1 = v0[4];
  v2 = *(v0[3] + 36);
  v3 = *(v1 + v2);
  if (v3 < 1)
  {
    v12 = v0[5];
    v13 = v0[6];
    *(v1 + v2) = 0;
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v14 = *(AssociatedConformanceWitness + 32);
    v8 = swift_checkMetadataState();
    v18 = (v14 + *v14);
    v15 = swift_task_alloc(v14[1]);
    v0[14] = v15;
    *v15 = v0;
    v15[1] = AsyncDropFirstSequence.Iterator.next();
    v16 = v0[4];
    v10 = v0[2];
  }

  else
  {
    v0[11] = v3;
    v4 = v0[5];
    v5 = v0[6];
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v7 = *(AssociatedConformanceWitness + 32);
    v8 = swift_checkMetadataState();
    v18 = (v7 + *v7);
    v9 = swift_task_alloc(v7[1]);
    v0[12] = v9;
    *v9 = v0;
    v9[1] = AsyncDropFirstSequence.Iterator.next();
    v10 = v0[10];
    v11 = v0[4];
  }

  return v18(v10, v8, AssociatedConformanceWitness);
}

{
  v1 = v0[10];
  v2 = v0[7];
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v5 = v0[3];
    v4 = v0[4];
    v6 = v0[2];
    (*(v0[9] + 8))(v1, v0[8]);
    *(v4 + *(v5 + 36)) = 0;
    (*(v3 + 56))(v6, 1, 1, v2);
    v0[10];
    v7 = v0[1];

    return v7();
  }

  else
  {
    v9 = v0[11];
    (*(v0[9] + 8))(v1, v0[8]);
    if (v9 <= 1)
    {
      v18 = v0[5];
      v19 = v0[6];
      *(v0[4] + *(v0[3] + 36)) = 0;
      swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v20 = *(AssociatedConformanceWitness + 32);
      v14 = swift_checkMetadataState();
      v23 = (v20 + *v20);
      v21 = swift_task_alloc(v20[1]);
      v0[14] = v21;
      *v21 = v0;
      v21[1] = AsyncDropFirstSequence.Iterator.next();
      v22 = v0[4];
      v16 = v0[2];
    }

    else
    {
      v0[11] = v9 - 1;
      v10 = v0[5];
      v11 = v0[6];
      swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v13 = *(AssociatedConformanceWitness + 32);
      v14 = swift_checkMetadataState();
      v23 = (v13 + *v13);
      v15 = swift_task_alloc(v13[1]);
      v0[12] = v15;
      *v15 = v0;
      v15[1] = AsyncDropFirstSequence.Iterator.next();
      v16 = v0[10];
      v17 = v0[4];
    }

    return v23(v16, v14, AssociatedConformanceWitness);
  }
}

{
  v1 = *v0;
  v4 = *v0;
  *(*v0 + 112);
  *(v1 + 80);
  v2 = *(v4 + 8);

  return v2();
}

{
  v1 = v0[13];
  v0[10];
  v2 = v0[1];

  return v2();
}

void AsyncDropFirstSequence.Iterator.next()()
{
  v2 = *(*v1 + 96);
  v4 = *v1;
  *(*v1 + 104) = v0;
  v2;
  if (v0)
  {
    v3 = AsyncDropFirstSequence.Iterator.next();
  }

  else
  {
    v3 = AsyncDropFirstSequence.Iterator.next();
  }

  swift_task_switch(v3, 0, 0);
}

void _ss22AsyncDropFirstSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = v5;
  v6[7] = a5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v6[8] = *(a4 + 24);
  v6[9] = *(a4 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[10] = AssociatedTypeWitness;
  v10 = *(AssociatedTypeWitness - 8);
  v6[11] = v10;
  v11 = *(v10 + 64) + 15;
  v6[12] = swift_task_alloc(v11 & 0xFFFFFFFFFFFFFFF0);
  v6[13] = swift_task_alloc(v11 & 0xFFFFFFFFFFFFFFF0);
  v6[14] = swift_getAssociatedTypeWitness();
  v12 = type metadata accessor for Optional();
  v6[15] = v12;
  v13 = *(v12 - 8);
  v6[16] = v13;
  v6[17] = swift_task_alloc((*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    v15 = (*(a3 + 8))(ObjectType, a3);
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  v6[18] = v15;
  v6[19] = v17;

  swift_task_switch(_ss22AsyncDropFirstSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTY0_, v15, v17);
}

uint64_t _ss22AsyncDropFirstSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTY0_()
{
  v1 = v0[6];
  v2 = *(v0[5] + 36);
  v3 = *(v1 + v2);
  if (v3 < 1)
  {
    v15 = v0[8];
    v16 = v0[9];
    *(v1 + v2) = 0;
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v17 = *(AssociatedConformanceWitness + 40);
    v8 = swift_checkMetadataState();
    v21 = (v17 + *v17);
    v18 = swift_task_alloc(v17[1]);
    v0[22] = v18;
    *v18 = v0;
    v18[1] = _ss22AsyncDropFirstSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTQ3_;
    v11 = v0[12];
    v19 = v0[6];
    v13 = v0[3];
    v14 = v0[4];
    v10 = v0[2];
  }

  else
  {
    v0[20] = v3;
    v4 = v0[8];
    v5 = v0[9];
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v7 = *(AssociatedConformanceWitness + 40);
    v8 = swift_checkMetadataState();
    v21 = (v7 + *v7);
    v9 = swift_task_alloc(v7[1]);
    v0[21] = v9;
    *v9 = v0;
    v9[1] = _ss22AsyncDropFirstSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTQ1_;
    v10 = v0[17];
    v11 = v0[13];
    v12 = v0[6];
    v13 = v0[3];
    v14 = v0[4];
  }

  return v21(v10, v13, v14, v11, v8, AssociatedConformanceWitness);
}

void _ss22AsyncDropFirstSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTQ1_()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 168);
  v4 = *(v2 + 152);
  v5 = *(v2 + 144);
  if (v0)
  {
    v6 = _ss22AsyncDropFirstSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTY4_;
  }

  else
  {
    v6 = _ss22AsyncDropFirstSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTY2_;
  }

  swift_task_switch(v6, v5, v4);
}

uint64_t _ss22AsyncDropFirstSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTY2_()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v5 = v0[5];
    v4 = v0[6];
    v6 = v0[2];
    (*(v0[16] + 8))(v1, v0[15]);
    *(v4 + *(v5 + 36)) = 0;
    (*(v3 + 56))(v6, 1, 1, v2);
    v7 = v0[12];
    v8 = v0[13];
    v0[17];
    v8;
    v7;
    v9 = v0[1];

    return v9();
  }

  else
  {
    v11 = v0[20];
    (*(v0[16] + 8))(v1, v0[15]);
    if (v11 <= 1)
    {
      v23 = v0[8];
      v24 = v0[9];
      *(v0[6] + *(v0[5] + 36)) = 0;
      swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v25 = *(AssociatedConformanceWitness + 40);
      v16 = swift_checkMetadataState();
      v28 = (v25 + *v25);
      v26 = swift_task_alloc(v25[1]);
      v0[22] = v26;
      *v26 = v0;
      v26[1] = _ss22AsyncDropFirstSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTQ3_;
      v19 = v0[12];
      v27 = v0[6];
      v21 = v0[3];
      v22 = v0[4];
      v18 = v0[2];
    }

    else
    {
      v0[20] = v11 - 1;
      v12 = v0[8];
      v13 = v0[9];
      swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v15 = *(AssociatedConformanceWitness + 40);
      v16 = swift_checkMetadataState();
      v28 = (v15 + *v15);
      v17 = swift_task_alloc(v15[1]);
      v0[21] = v17;
      *v17 = v0;
      v17[1] = _ss22AsyncDropFirstSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTQ1_;
      v18 = v0[17];
      v19 = v0[13];
      v20 = v0[6];
      v21 = v0[3];
      v22 = v0[4];
    }

    return v28(v18, v21, v22, v19, v16, AssociatedConformanceWitness);
  }
}

void _ss22AsyncDropFirstSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTQ3_()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *v1;
  v3;
  if (v0)
  {
    v5 = v2[18];
    v6 = v2[19];

    swift_task_switch(_ss22AsyncDropFirstSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTY5_, v5, v6);
  }

  else
  {
    v7 = v2[17];
    v10 = v2 + 12;
    v8 = v2[12];
    v9 = v10[1];
    v7;
    v9;
    v8;
    v11 = *(v4 + 8);

    v11();
  }
}

uint64_t _ss22AsyncDropFirstSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTY4_()
{
  v1 = v0[17];
  v3 = v0[12];
  v2 = v0[13];
  (*(v0[11] + 32))(v0[7], v2, v0[10]);
  v1;
  v2;
  v3;
  v4 = v0[1];

  return v4();
}

uint64_t _ss22AsyncDropFirstSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTY5_()
{
  v1 = v0[17];
  v2 = v0[12];
  v3 = v0[13];
  (*(v0[11] + 32))(v0[7], v2, v0[10]);
  v1;
  v3;
  v2;
  v4 = v0[1];

  return v4();
}

void protocol witness for AsyncIteratorProtocol.next() in conformance AsyncDropFirstSequence<A>.Iterator(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc(128);
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for AsyncIteratorProtocol.next() in conformance AsyncCompactMapSequence<A, B>.Iterator;

  AsyncDropFirstSequence.Iterator.next()(a1, a2);
}

void _ss22AsyncDropFirstSequenceV8IteratorVyx_GScIsScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTW(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v11 = *(a5 + 16);
  v10 = *(a5 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[3] = AssociatedTypeWitness;
  v13 = *(AssociatedTypeWitness - 8);
  v5[4] = v13;
  v14 = swift_task_alloc((*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v5[5] = v14;
  v15 = swift_task_alloc(192);
  v5[6] = v15;
  *v15 = v5;
  v15[1] = _ss23AsyncCompactMapSequenceV8IteratorVyxq__GScIsScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ0_;

  _ss22AsyncDropFirstSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF(a1, a2, a3, a5, v14);
}

uint64_t AsyncDropFirstSequence.dropFirst(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = *(a2 + 16);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((v11 & 0x8000000000000000) == 0)
  {
    (*(v9 + 16))(v13, v4, v8);
    v14 = *(v4 + *(a2 + 36));
    (*(*(a2 - 8) + 8))(v4, a2);
    v15 = __OFADD__(v14, a1);
    v16 = v14 + a1;
    if (!v15)
    {
      v17 = *(a2 + 24);
      (*(v9 + 32))(a3, v13, v8);
      result = type metadata accessor for AsyncDropFirstSequence();
      *(a3 + *(result + 36)) = v16;
      return result;
    }

    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t AsyncSequence.drop(while:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  return AsyncSequence.drop(while:)(a1, a2, a3, a4, type metadata accessor for AsyncDropWhileSequence, a5);
}

{
  return AsyncSequence.drop(while:)(a1, a2, a3, a4, type metadata accessor for AsyncThrowingDropWhileSequence, a5);
}

uint64_t key path getter for AsyncDropWhileSequence.Iterator.predicate : <A>AsyncDropWhileSequence<A>.Iterator@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = *(a2 + a3 - 16);
  v6 = *(a2 + a3 - 8);
  v7 = (a1 + *(type metadata accessor for AsyncDropWhileSequence.Iterator() + 36));
  v8 = *v7;
  v9 = v7[1];
  if (*v7)
  {
    v10 = swift_allocObject();
    v10[2] = v5;
    v10[3] = v6;
    v10[4] = v8;
    v10[5] = v9;
    v11 = &async function pointer to partial apply for thunk for @escaping @callee_guaranteed @async (@in_guaranteed A.AsyncSequence.Element) -> (@unowned Bool);
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  *a4 = v11;
  a4[1] = v10;

  return _sScS12ContinuationV11TerminationOyx__GRi_zRi0_zlyxIseghn_SglWOy_0(v8);
}

uint64_t thunk for @escaping @callee_guaranteed @async (@in_guaranteed A.AsyncSequence.Element) -> (@unowned Bool)(uint64_t a1, uint64_t a2, int *a3)
{
  *(v3 + 16) = a1;
  v7 = (a3 + *a3);
  v5 = swift_task_alloc(a3[1]);
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = thunk for @escaping @callee_guaranteed @async (@in_guaranteed A.AsyncSequence.Element) -> (@unowned Bool);

  return v7(a2);
}

uint64_t thunk for @escaping @callee_guaranteed @async (@in_guaranteed A.AsyncSequence.Element) -> (@unowned Bool)(char a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;
  *(*v1 + 24);
  *v3 = a1;
  v4 = *(v6 + 8);

  return v4();
}

uint64_t key path setter for AsyncDropWhileSequence.Iterator.predicate : <A>AsyncDropWhileSequence<A>.Iterator(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 16);
  v6 = *(a3 + a4 - 8);
  v7 = *a1;
  v8 = a1[1];
  if (*a1)
  {
    v9 = swift_allocObject();
    v9[2] = v5;
    v9[3] = v6;
    v9[4] = v7;
    v9[5] = v8;
    v10 = &async function pointer to partial apply for thunk for @escaping @callee_guaranteed @async (@in_guaranteed A.AsyncSequence.Element) -> (@out Bool);
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  v11 = (a2 + *(type metadata accessor for AsyncDropWhileSequence.Iterator() + 36));
  v12 = *v11;
  v13 = v11[1];
  _sScS12ContinuationV11TerminationOyx__GRi_zRi0_zlyxIseghn_SglWOy_0(v7);
  result = _sScS12ContinuationV11TerminationOyx__GRi_zRi0_zlyxIseghn_SglWOe_0(v12);
  *v11 = v10;
  v11[1] = v9;
  return result;
}

uint64_t thunk for @escaping @callee_guaranteed @async (@in_guaranteed A.AsyncSequence.Element) -> (@out Bool)(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc(a2[1]);
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = thunk for @escaping @callee_guaranteed @async (@in_guaranteed A.AsyncSequence.Element) -> (@out Bool);

  return v6(v2 + 24, a1);
}

uint64_t thunk for @escaping @callee_guaranteed @async (@in_guaranteed A.AsyncSequence.Element) -> (@out Bool)()
{
  v1 = *v0;
  v5 = *v0;
  *(*v0 + 16);
  v2 = *(v1 + 24);
  v3 = *(v5 + 8);

  return v3(v2);
}

uint64_t AsyncDropWhileSequence.Iterator.predicate.getter(uint64_t a1)
{
  v1 = sub_1815F1618(a1);
  _sScS12ContinuationV11TerminationOyx__GRi_zRi0_zlyxIseghn_SglWOy_0(v1);
  return v1;
}

uint64_t AsyncDropWhileSequence.Iterator.predicate.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 36));
  v7 = v6[1];
  result = _sScS12ContinuationV11TerminationOyx__GRi_zRi0_zlyxIseghn_SglWOe_0(*v6);
  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t (*AsyncDropWhileSequence.Iterator.predicate.modify(uint64_t a1, uint64_t a2))()
{
  result = UnownedSerialExecutor.executor.modify;
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t AsyncDropWhileSequence.Iterator.init(_:predicate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = (a4 + *(type metadata accessor for AsyncDropWhileSequence.Iterator() + 36));
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = (*(*(AssociatedTypeWitness - 8) + 32))(a4, a1, AssociatedTypeWitness);
  *v8 = a2;
  v8[1] = a3;
  return result;
}

void AsyncDropWhileSequence.Iterator.next()(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *(a2 + 24);
  v3[6] = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3[7] = AssociatedTypeWitness;
  v5 = type metadata accessor for Optional();
  v3[8] = v5;
  v6 = *(v5 - 8);
  v3[9] = v6;
  v3[10] = swift_task_alloc((*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(AssociatedTypeWitness - 8);
  v3[11] = v7;
  v3[12] = swift_task_alloc((*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);

  swift_task_switch(AsyncDropWhileSequence.Iterator.next(), 0, 0);
}

uint64_t AsyncDropWhileSequence.Iterator.next()()
{
  v1 = v0[4];
  v2 = *(v0[3] + 36);
  v3 = *(v1 + v2);
  if (v3)
  {
    v0[13] = v3;
    v5 = v0[5];
    v4 = v0[6];
    v0[14] = *(v1 + v2 + 8);
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v7 = *(AssociatedConformanceWitness + 32);
    _sScS12ContinuationV11TerminationOyx__GRi_zRi0_zlyxIseghn_SglWOy_0(v3);
    v8 = swift_checkMetadataState();
    v20 = (v7 + *v7);
    v9 = swift_task_alloc(v7[1]);
    v0[15] = v9;
    *v9 = v0;
    v9[1] = AsyncDropWhileSequence.Iterator.next();
    v10 = v0[10];
    v11 = v0[4];
    v12 = v8;
  }

  else
  {
    v13 = v0[5];
    v14 = v0[6];
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v15 = *(AssociatedConformanceWitness + 32);
    v16 = swift_checkMetadataState();
    v20 = (v15 + *v15);
    v17 = swift_task_alloc(v15[1]);
    v0[20] = v17;
    *v17 = v0;
    v17[1] = AsyncDropWhileSequence.Iterator.next();
    v18 = v0[4];
    v10 = v0[2];
    v12 = v16;
  }

  return v20(v10, v12, AssociatedConformanceWitness);
}

{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[7];
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v4 = v0[14];
    v6 = v0[8];
    v5 = v0[9];
    _sScS12ContinuationV11TerminationOyx__GRi_zRi0_zlyxIseghn_SglWOe_0(v0[13]);
    (*(v5 + 8))(v1, v6);
    (*(v0[11] + 56))(v0[2], 1, 1, v0[7]);
    v7 = v0[10];
    v0[12];
    v7;
    v8 = v0[1];

    return v8();
  }

  else
  {
    v11 = v0[13];
    v10 = v0[14];
    v12 = v0[12];
    v13 = *(v2 + 32);
    v0[17] = v13;
    v0[18] = (v2 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v13(v12, v1, v3);
    v16 = (v11 + *v11);
    v14 = swift_task_alloc(v11[1]);
    v0[19] = v14;
    *v14 = v0;
    v14[1] = AsyncDropWhileSequence.Iterator.next();
    v15 = v0[12];

    return v16(v15);
  }
}

{
  if (*(v0 + 168))
  {
    v1 = *(v0 + 24);
    v2 = *(v0 + 32);
    (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 56));
    v3 = *(v1 + 36);
    v4 = *(v2 + v3);
    if (v4)
    {
      *(v0 + 104) = v4;
      v6 = *(v0 + 40);
      v5 = *(v0 + 48);
      *(v0 + 112) = *(*(v0 + 32) + v3 + 8);
      swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v8 = *(AssociatedConformanceWitness + 32);
      _sScS12ContinuationV11TerminationOyx__GRi_zRi0_zlyxIseghn_SglWOy_0(v4);
      v9 = swift_checkMetadataState();
      v30 = (v8 + *v8);
      v10 = swift_task_alloc(v8[1]);
      *(v0 + 120) = v10;
      *v10 = v0;
      v10[1] = AsyncDropWhileSequence.Iterator.next();
      v11 = *(v0 + 80);
      v12 = *(v0 + 32);
      v13 = v9;
    }

    else
    {
      v24 = *(v0 + 40);
      v25 = *(v0 + 48);
      swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v26 = *(AssociatedConformanceWitness + 32);
      v27 = swift_checkMetadataState();
      v30 = (v26 + *v26);
      v28 = swift_task_alloc(v26[1]);
      *(v0 + 160) = v28;
      *v28 = v0;
      v28[1] = AsyncDropWhileSequence.Iterator.next();
      v29 = *(v0 + 32);
      v11 = *(v0 + 16);
      v13 = v27;
    }

    return v30(v11, v13, AssociatedConformanceWitness);
  }

  else
  {
    v15 = *(v0 + 136);
    v14 = *(v0 + 144);
    v16 = *(v0 + 96);
    v17 = *(v0 + 56);
    v18 = *(v0 + 16);
    v19 = (*(v0 + 32) + *(*(v0 + 24) + 36));
    v20 = v19[1];
    _sScS12ContinuationV11TerminationOyx__GRi_zRi0_zlyxIseghn_SglWOe_0(*v19);
    *v19 = 0;
    v19[1] = 0;
    v15(v18, v16, v17);
    (*(*(v0 + 88) + 56))(*(v0 + 16), 0, 1, *(v0 + 56));
    v21 = *(v0 + 80);
    *(v0 + 96);
    v21;
    v22 = *(v0 + 8);

    return v22();
  }
}

{
  v1 = *v0;
  v5 = *v0;
  *(*v0 + 160);
  v2 = *(v1 + 80);
  *(v1 + 96);
  v2;
  v3 = *(v5 + 8);

  return v3();
}

{
  v1 = v0[16];
  v2 = v0[10];
  v0[12];
  v2;
  v3 = v0[1];

  return v3();
}

void AsyncDropWhileSequence.Iterator.next()()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v6 = *v1;
  *(*v1 + 128) = v0;
  v3;
  if (v0)
  {
    v4 = *(v2 + 112);
    _sScS12ContinuationV11TerminationOyx__GRi_zRi0_zlyxIseghn_SglWOe_0(*(v2 + 104));
    v5 = AsyncDropWhileSequence.Iterator.next();
  }

  else
  {
    v5 = AsyncDropWhileSequence.Iterator.next();
  }

  swift_task_switch(v5, 0, 0);
}

void AsyncDropWhileSequence.Iterator.next()(char a1)
{
  v2 = *(*v1 + 152);
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 168) = a1;
  v2;
  _sScS12ContinuationV11TerminationOyx__GRi_zRi0_zlyxIseghn_SglWOe_0(v4);

  swift_task_switch(AsyncDropWhileSequence.Iterator.next(), 0, 0);
}

void _ss22AsyncDropWhileSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = v5;
  v6[7] = a5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v6[8] = *(a4 + 24);
  v6[9] = *(a4 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[10] = AssociatedTypeWitness;
  v10 = *(AssociatedTypeWitness - 8);
  v6[11] = v10;
  v11 = *(v10 + 64) + 15;
  v6[12] = swift_task_alloc(v11 & 0xFFFFFFFFFFFFFFF0);
  v6[13] = swift_task_alloc(v11 & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_getAssociatedTypeWitness();
  v6[14] = v12;
  v13 = type metadata accessor for Optional();
  v6[15] = v13;
  v14 = *(v13 - 8);
  v6[16] = v14;
  v6[17] = swift_task_alloc((*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v12 - 8);
  v6[18] = v15;
  v6[19] = swift_task_alloc((*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    v17 = (*(a3 + 8))(ObjectType, a3);
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0;
  }

  v6[20] = v17;
  v6[21] = v19;

  swift_task_switch(_ss22AsyncDropWhileSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTY0_, v17, v19);
}

uint64_t _ss22AsyncDropWhileSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTY0_()
{
  v1 = v0[6];
  v2 = *(v0[5] + 36);
  v3 = *(v1 + v2);
  if (v3)
  {
    v0[22] = v3;
    v5 = v0[8];
    v4 = v0[9];
    v0[23] = *(v1 + v2 + 8);
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v7 = *(AssociatedConformanceWitness + 40);
    _sScS12ContinuationV11TerminationOyx__GRi_zRi0_zlyxIseghn_SglWOy_0(v3);
    v8 = swift_checkMetadataState();
    v23 = (v7 + *v7);
    v9 = swift_task_alloc(v7[1]);
    v0[24] = v9;
    *v9 = v0;
    v9[1] = _ss22AsyncDropWhileSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTQ1_;
    v10 = v0[17];
    v11 = v0[13];
    v12 = v0[6];
    v13 = v0[3];
    v14 = v0[4];
    v15 = v8;
  }

  else
  {
    v16 = v0[8];
    v17 = v0[9];
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v18 = *(AssociatedConformanceWitness + 40);
    v19 = swift_checkMetadataState();
    v23 = (v18 + *v18);
    v20 = swift_task_alloc(v18[1]);
    v0[28] = v20;
    *v20 = v0;
    v20[1] = _ss22AsyncDropWhileSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTQ5_;
    v11 = v0[12];
    v21 = v0[6];
    v13 = v0[3];
    v14 = v0[4];
    v10 = v0[2];
    v15 = v19;
  }

  return v23(v10, v13, v14, v11, v15, AssociatedConformanceWitness);
}

void _ss22AsyncDropWhileSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTQ1_()
{
  v2 = *v1;
  v7 = *v1;
  *(*v1 + 192);
  if (v0)
  {
    v3 = v2[23];
    _sScS12ContinuationV11TerminationOyx__GRi_zRi0_zlyxIseghn_SglWOe_0(v2[22]);
    v4 = v2[20];
    v5 = v2[21];
    v6 = _ss22AsyncDropWhileSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTY6_;
  }

  else
  {
    v4 = v2[20];
    v5 = v2[21];
    v6 = _ss22AsyncDropWhileSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTY2_;
  }

  swift_task_switch(v6, v4, v5);
}

uint64_t _ss22AsyncDropWhileSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTY2_()
{
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[14];
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v4 = v0[23];
    v6 = v0[15];
    v5 = v0[16];
    _sScS12ContinuationV11TerminationOyx__GRi_zRi0_zlyxIseghn_SglWOe_0(v0[22]);
    (*(v5 + 8))(v1, v6);
    (*(v0[18] + 56))(v0[2], 1, 1, v0[14]);
    v7 = v0[17];
    v9 = v0[12];
    v8 = v0[13];
    v0[19];
    v7;
    v8;
    v9;
    v10 = v0[1];

    return v10();
  }

  else
  {
    v13 = v0[22];
    v12 = v0[23];
    v14 = v0[19];
    v15 = *(v2 + 32);
    v0[25] = v15;
    v0[26] = (v2 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v15(v14, v1, v3);
    v18 = (v13 + *v13);
    v16 = swift_task_alloc(v13[1]);
    v0[27] = v16;
    *v16 = v0;
    v16[1] = _ss22AsyncDropWhileSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTQ3_;
    v17 = v0[19];

    return v18(v17);
  }
}

void _ss22AsyncDropWhileSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTQ3_(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v4 = *(*v1 + 184);
  v5 = *(*v1 + 176);
  v8 = *v1;
  *(*v1 + 232) = a1;
  v3;
  _sScS12ContinuationV11TerminationOyx__GRi_zRi0_zlyxIseghn_SglWOe_0(v5);
  v6 = *(v2 + 168);
  v7 = *(v2 + 160);

  swift_task_switch(_ss22AsyncDropWhileSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTY4_, v7, v6);
}

uint64_t _ss22AsyncDropWhileSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTY4_()
{
  if (*(v0 + 232))
  {
    v1 = *(v0 + 40);
    v2 = *(v0 + 48);
    (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 112));
    v3 = *(v1 + 36);
    v4 = *(v2 + v3);
    if (v4)
    {
      *(v0 + 176) = v4;
      v6 = *(v0 + 64);
      v5 = *(v0 + 72);
      *(v0 + 184) = *(*(v0 + 48) + v3 + 8);
      swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v8 = *(AssociatedConformanceWitness + 40);
      _sScS12ContinuationV11TerminationOyx__GRi_zRi0_zlyxIseghn_SglWOy_0(v4);
      v9 = swift_checkMetadataState();
      v35 = (v8 + *v8);
      v10 = swift_task_alloc(v8[1]);
      *(v0 + 192) = v10;
      *v10 = v0;
      v10[1] = _ss22AsyncDropWhileSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTQ1_;
      v11 = *(v0 + 136);
      v12 = *(v0 + 104);
      v13 = *(v0 + 48);
      v14 = *(v0 + 24);
      v15 = *(v0 + 32);
      v16 = v9;
    }

    else
    {
      v29 = *(v0 + 64);
      v30 = *(v0 + 72);
      swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v31 = *(AssociatedConformanceWitness + 40);
      v32 = swift_checkMetadataState();
      v35 = (v31 + *v31);
      v33 = swift_task_alloc(v31[1]);
      *(v0 + 224) = v33;
      *v33 = v0;
      v33[1] = _ss22AsyncDropWhileSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTQ5_;
      v12 = *(v0 + 96);
      v34 = *(v0 + 48);
      v14 = *(v0 + 24);
      v15 = *(v0 + 32);
      v11 = *(v0 + 16);
      v16 = v32;
    }

    return v35(v11, v14, v15, v12, v16, AssociatedConformanceWitness);
  }

  else
  {
    v18 = *(v0 + 200);
    v17 = *(v0 + 208);
    v19 = *(v0 + 152);
    v20 = *(v0 + 112);
    v21 = *(v0 + 16);
    v22 = (*(v0 + 48) + *(*(v0 + 40) + 36));
    v23 = v22[1];
    _sScS12ContinuationV11TerminationOyx__GRi_zRi0_zlyxIseghn_SglWOe_0(*v22);
    *v22 = 0;
    v22[1] = 0;
    v18(v21, v19, v20);
    (*(*(v0 + 144) + 56))(*(v0 + 16), 0, 1, *(v0 + 112));
    v24 = *(v0 + 136);
    v26 = *(v0 + 96);
    v25 = *(v0 + 104);
    *(v0 + 152);
    v24;
    v25;
    v26;
    v27 = *(v0 + 8);

    return v27();
  }
}

void _ss22AsyncDropWhileSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTQ5_()
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v4 = *v1;
  v3;
  if (v0)
  {
    v5 = v2[20];
    v6 = v2[21];

    swift_task_switch(_ss22AsyncDropWhileSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTY7_, v5, v6);
  }

  else
  {
    v7 = v2[19];
    v8 = v2[17];
    v11 = v2 + 12;
    v9 = v2[12];
    v10 = v11[1];
    v7;
    v8;
    v10;
    v9;
    v12 = *(v4 + 8);

    v12();
  }
}

uint64_t _ss22AsyncDropWhileSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTY6_()
{
  v1 = v0[19];
  v2 = v0[17];
  v4 = v0[12];
  v3 = v0[13];
  (*(v0[11] + 32))(v0[7], v3, v0[10]);
  v1;
  v2;
  v3;
  v4;
  v5 = v0[1];

  return v5();
}

uint64_t _ss22AsyncDropWhileSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTY7_()
{
  v1 = v0[19];
  v2 = v0[17];
  v3 = v0[12];
  v4 = v0[13];
  (*(v0[11] + 32))(v0[7], v3, v0[10]);
  v1;
  v2;
  v4;
  v3;
  v5 = v0[1];

  return v5();
}

void protocol witness for AsyncIteratorProtocol.next() in conformance AsyncDropWhileSequence<A>.Iterator(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc(176);
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for AsyncIteratorProtocol.next() in conformance AsyncCompactMapSequence<A, B>.Iterator;

  AsyncDropWhileSequence.Iterator.next()(a1, a2);
}

void _ss22AsyncDropWhileSequenceV8IteratorVyx_GScIsScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTW(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v11 = *(a5 + 16);
  v10 = *(a5 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[3] = AssociatedTypeWitness;
  v13 = *(AssociatedTypeWitness - 8);
  v5[4] = v13;
  v14 = swift_task_alloc((*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v5[5] = v14;
  v15 = swift_task_alloc(240);
  v5[6] = v15;
  *v15 = v5;
  v15[1] = _ss23AsyncCompactMapSequenceV8IteratorVyxq__GScIsScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ0_;

  _ss22AsyncDropWhileSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF(a1, a2, a3, a5, v14);
}

uint64_t AsyncSequence.filter(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  return AsyncSequence.drop(while:)(a1, a2, a3, a4, type metadata accessor for AsyncFilterSequence, a5);
}

{
  return AsyncSequence.drop(while:)(a1, a2, a3, a4, type metadata accessor for AsyncThrowingFilterSequence, a5);
}

uint64_t AsyncFilterSequence.isIncluded.getter(uint64_t a1)
{
  v1 = sub_1815F1618(a1);

  return v1;
}

uint64_t AsyncFilterSequence.Iterator.init(_:isIncluded:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a4, a1, AssociatedTypeWitness);
  result = type metadata accessor for AsyncFilterSequence.Iterator();
  v10 = (a4 + *(result + 36));
  *v10 = a2;
  v10[1] = a3;
  return result;
}

uint64_t AsyncFilterSequence.Iterator.next()(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3[5] = AssociatedTypeWitness;
  v7 = type metadata accessor for Optional();
  v3[6] = v7;
  v8 = *(v7 - 8);
  v3[7] = v8;
  v3[8] = swift_task_alloc((*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(AssociatedTypeWitness - 8);
  v3[9] = v9;
  v3[10] = swift_task_alloc((*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v3[11] = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v3[12] = AssociatedConformanceWitness;
  v11 = *(AssociatedConformanceWitness + 32);
  v3[13] = v11;
  v3[14] = (AssociatedConformanceWitness + 32) & 0xFFFFFFFFFFFFLL | 0xE013000000000000;
  v12 = swift_checkMetadataState();
  v19 = (v11 + *v11);
  v13 = swift_task_alloc(v11[1]);
  v3[15] = v13;
  *v13 = v3;
  v13[1] = AsyncFilterSequence.Iterator.next();
  v14 = v3[14];
  v15 = v3[12];
  v16 = v3[8];
  v17 = v3[4];

  return v19(v16, v12, v15);
}

void AsyncFilterSequence.Iterator.next()()
{
  v2 = *(*v1 + 120);
  v4 = *v1;
  *(*v1 + 128) = v0;
  v2;
  if (v0)
  {
    v3 = AsyncFilterSequence.Iterator.next();
  }

  else
  {
    v3 = AsyncFilterSequence.Iterator.next();
  }

  swift_task_switch(v3, 0, 0);
}

uint64_t AsyncFilterSequence.Iterator.next()()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[5];
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    (*(v0[7] + 8))(v1, v0[6]);
    v4 = v0[10];
    v5 = v0[8];
    (*(v0[9] + 56))(v0[2], 1, 1, v0[5]);
    v4;
    v5;
    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = v0[10];
    v10 = v0[3];
    v9 = v0[4];
    v11 = *(v2 + 32);
    v0[17] = v11;
    v0[18] = (v2 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v11(v8, v1, v3);
    v12 = (v9 + *(v10 + 36));
    v13 = *v12;
    v0[19] = v12[1];

    v16 = (v13 + *v13);
    v14 = swift_task_alloc(v13[1]);
    v0[20] = v14;
    *v14 = v0;
    v14[1] = AsyncFilterSequence.Iterator.next();
    v15 = v0[10];

    return v16(v15);
  }
}

{
  if (*(v0 + 168) == 1)
  {
    v1 = *(v0 + 144);
    (*(v0 + 136))(*(v0 + 16), *(v0 + 80), *(v0 + 40));
    v2 = *(v0 + 80);
    v3 = *(v0 + 64);
    (*(*(v0 + 72) + 56))(*(v0 + 16), 0, 1, *(v0 + 40));
    v2;
    v3;
    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 40));
    v6 = *(v0 + 104);
    v7 = *(v0 + 112);
    v8 = *(v0 + 88);
    v9 = swift_checkMetadataState();
    v15 = (v6 + *v6);
    v10 = swift_task_alloc(v6[1]);
    *(v0 + 120) = v10;
    *v10 = v0;
    v10[1] = AsyncFilterSequence.Iterator.next();
    v11 = *(v0 + 112);
    v12 = *(v0 + 96);
    v13 = *(v0 + 64);
    v14 = *(v0 + 32);

    return v15(v13, v9, v12);
  }
}

{
  v1 = v0[8];
  v0[10];
  v1;
  v2 = v0[1];
  v3 = v0[16];

  return v2();
}

void AsyncFilterSequence.Iterator.next()(char a1)
{
  v2 = *(*v1 + 160);
  v3 = *(*v1 + 152);
  v4 = *v1;
  *(*v1 + 168) = a1;
  v2;

  swift_task_switch(AsyncFilterSequence.Iterator.next(), 0, 0);
}

uint64_t _ss19AsyncFilterSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = v5;
  v6[7] = a5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = *(a4 + 16);
  v8 = *(a4 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[8] = AssociatedTypeWitness;
  v10 = *(AssociatedTypeWitness - 8);
  v6[9] = v10;
  v6[10] = swift_task_alloc((*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_getAssociatedTypeWitness();
  v6[11] = v11;
  v12 = type metadata accessor for Optional();
  v6[12] = v12;
  v13 = *(v12 - 8);
  v6[13] = v13;
  v6[14] = swift_task_alloc((*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v11 - 8);
  v6[15] = v14;
  v6[16] = swift_task_alloc((*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v6[17] = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6[18] = AssociatedConformanceWitness;
  v16 = *(AssociatedConformanceWitness + 40);
  v6[19] = v16;
  v6[20] = (AssociatedConformanceWitness + 40) & 0xFFFFFFFFFFFFLL | 0x2B1A000000000000;
  v17 = swift_checkMetadataState();
  v27 = (v16 + *v16);
  v18 = swift_task_alloc(v16[1]);
  v6[21] = v18;
  *v18 = v6;
  v18[1] = _ss19AsyncFilterSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTQ0_;
  v19 = v6[20];
  v20 = v6[18];
  v21 = v6[14];
  v22 = v6[10];
  v23 = v6[6];
  v24 = v6[3];
  v25 = v6[4];

  return v27(v21, v24, v25, v22, v17, v20);
}

void _ss19AsyncFilterSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTQ0_()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *v1;
  *(*v1 + 168);
  v5 = v2[3];
  if (v0)
  {
    if (v5)
    {
      v6 = v3[4];
      ObjectType = swift_getObjectType();
      v8 = (*(v6 + 8))(ObjectType, v6);
      v10 = v9;
    }

    else
    {
      v8 = 0;
      v10 = 0;
    }

    v15 = _ss19AsyncFilterSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTY4_;
    v16 = v8;
  }

  else
  {
    if (v5)
    {
      v11 = v3[4];
      v12 = swift_getObjectType();
      v13 = (*(v11 + 8))(v12, v11);
      v10 = v14;
    }

    else
    {
      v13 = 0;
      v10 = 0;
    }

    v3[22] = v13;
    v3[23] = v10;
    v15 = _ss19AsyncFilterSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTY1_;
    v16 = v13;
  }

  swift_task_switch(v15, v16, v10);
}

uint64_t _ss19AsyncFilterSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTY1_()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[11];
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    (*(v0[13] + 8))(v1, v0[12]);
    v4 = v0[16];
    v5 = v0[14];
    v6 = v0[10];
    (*(v0[15] + 56))(v0[2], 1, 1, v0[11]);
    v4;
    v5;
    v6;
    v7 = v0[1];

    return v7();
  }

  else
  {
    v9 = v0[16];
    v11 = v0[5];
    v10 = v0[6];
    v12 = *(v2 + 32);
    v0[24] = v12;
    v0[25] = (v2 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v12(v9, v1, v3);
    v13 = (v10 + *(v11 + 36));
    v14 = *v13;
    v0[26] = v13[1];

    v17 = (v14 + *v14);
    v15 = swift_task_alloc(v14[1]);
    v0[27] = v15;
    *v15 = v0;
    v15[1] = _ss19AsyncFilterSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTQ2_;
    v16 = v0[16];

    return v17(v16);
  }
}

void _ss19AsyncFilterSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTQ2_(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v4 = *(*v1 + 208);
  v7 = *v1;
  *(*v1 + 224) = a1;
  v3;

  v5 = *(v2 + 184);
  v6 = *(v2 + 176);

  swift_task_switch(_ss19AsyncFilterSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTY3_, v6, v5);
}

uint64_t _ss19AsyncFilterSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTY3_()
{
  if (*(v0 + 224) == 1)
  {
    v1 = *(v0 + 200);
    (*(v0 + 192))(*(v0 + 16), *(v0 + 128), *(v0 + 88));
    v2 = *(v0 + 128);
    v3 = *(v0 + 112);
    v4 = *(v0 + 80);
    (*(*(v0 + 120) + 56))(*(v0 + 16), 0, 1, *(v0 + 88));
    v2;
    v3;
    v4;
    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 88));
    v7 = *(v0 + 152);
    v8 = *(v0 + 160);
    v9 = *(v0 + 136);
    v10 = swift_checkMetadataState();
    v19 = (v7 + *v7);
    v11 = swift_task_alloc(v7[1]);
    *(v0 + 168) = v11;
    *v11 = v0;
    v11[1] = _ss19AsyncFilterSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTQ0_;
    v12 = *(v0 + 160);
    v13 = *(v0 + 144);
    v14 = *(v0 + 112);
    v15 = *(v0 + 80);
    v16 = *(v0 + 48);
    v17 = *(v0 + 24);
    v18 = *(v0 + 32);

    return v19(v14, v17, v18, v15, v10, v13);
  }
}

uint64_t _ss19AsyncFilterSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTY4_()
{
  v1 = v0[16];
  v2 = v0[14];
  v3 = v0[10];
  (*(v0[9] + 32))(v0[7], v3, v0[8]);
  v1;
  v2;
  v3;
  v4 = v0[1];

  return v4();
}

uint64_t protocol witness for AsyncIteratorProtocol.next() in conformance AsyncFilterSequence<A>.Iterator(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc(176);
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for AsyncIteratorProtocol.next() in conformance AsyncCompactMapSequence<A, B>.Iterator;

  return AsyncFilterSequence.Iterator.next()(a1, a2);
}

uint64_t _ss19AsyncFilterSequenceV8IteratorVyx_GScIsScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTW(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v11 = *(a5 + 16);
  v10 = *(a5 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[3] = AssociatedTypeWitness;
  v13 = *(AssociatedTypeWitness - 8);
  v5[4] = v13;
  v14 = swift_task_alloc((*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v5[5] = v14;
  v15 = swift_task_alloc(240);
  v5[6] = v15;
  *v15 = v5;
  v15[1] = _ss23AsyncCompactMapSequenceV8IteratorVyxq__GScIsScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ0_;

  return _ss19AsyncFilterSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF(a1, a2, a3, a5, v14);
}

uint64_t AsyncDropWhileSequence.makeAsyncIterator()(uint64_t a1, uint64_t (*a2)(char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v22 = a2;
  v3 = v2;
  v5 = *(a1 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v8 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness - 8);
  v15 = &v21 - v14;
  (*(v6 + 16))(v10, v3, v5);
  (*(v11 + 40))(v5, v11);
  v16 = (v3 + *(a1 + 36));
  v17 = *v16;
  v18 = v16[1];
  v19 = *(*(a1 - 8) + 8);

  v19(v3, a1);
  return v22(v15, v17, v18, v5, v11);
}

uint64_t AsyncSequence.flatMap<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  return AsyncSequence.flatMap<A>(_:)(a1, a2, a3, a4, a5, a6, type metadata accessor for AsyncFlatMapSequence, a7);
}

{
  return AsyncSequence.flatMap<A>(_:)(a1, a2, a3, a4, a5, a6, type metadata accessor for AsyncThrowingFlatMapSequence, a7);
}

uint64_t AsyncFlatMapSequence.Iterator.transform.getter(uint64_t a1)
{
  v1 = sub_1815F1628(a1);

  return v1;
}

uint64_t (*AsyncFlatMapSequence.Iterator.currentIterator.modify(uint64_t a1, uint64_t a2))()
{
  result = UnownedSerialExecutor.executor.modify;
  v4 = v2 + *(a2 + 56);
  return result;
}

uint64_t (*AsyncFlatMapSequence.Iterator.finished.modify(uint64_t a1, uint64_t a2))()
{
  result = UnownedSerialExecutor.executor.modify;
  v4 = v2 + *(a2 + 60);
  return result;
}

void AsyncFlatMapSequence.Iterator.next()(uint64_t a1, void *a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v5 = a2[3];
  v3[5] = v5;
  v6 = *(v5 - 8);
  v3[6] = v6;
  v7 = *(v6 + 64) + 15;
  v3[7] = swift_task_alloc(v7 & 0xFFFFFFFFFFFFFFF0);
  v3[8] = swift_task_alloc(v7 & 0xFFFFFFFFFFFFFFF0);
  v3[9] = a2[4];
  v3[10] = a2[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3[11] = AssociatedTypeWitness;
  v9 = type metadata accessor for Optional();
  v3[12] = v9;
  v10 = *(v9 - 8);
  v3[13] = v10;
  v3[14] = swift_task_alloc((*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(AssociatedTypeWitness - 8);
  v3[15] = v11;
  v3[16] = swift_task_alloc((*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v3[17] = a2[5];
  v12 = swift_getAssociatedTypeWitness();
  v3[18] = v12;
  v13 = type metadata accessor for Optional();
  v3[19] = v13;
  v14 = *(v13 - 8);
  v3[20] = v14;
  v15 = *(v14 + 64) + 15;
  v3[21] = swift_task_alloc(v15 & 0xFFFFFFFFFFFFFFF0);
  v3[22] = swift_task_alloc(v15 & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v12 - 8);
  v3[23] = v16;
  v17 = *(v16 + 64) + 15;
  v3[24] = swift_task_alloc(v17 & 0xFFFFFFFFFFFFFFF0);
  v3[25] = swift_task_alloc(v17 & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_getAssociatedTypeWitness();
  v3[26] = v18;
  v19 = type metadata accessor for Optional();
  v3[27] = v19;
  v20 = *(v19 - 8);
  v3[28] = v20;
  v21 = *(v20 + 64) + 15;
  v3[29] = swift_task_alloc(v21 & 0xFFFFFFFFFFFFFFF0);
  v3[30] = swift_task_alloc(v21 & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v18 - 8);
  v3[31] = v22;
  v23 = *(v22 + 64) + 15;
  v3[32] = swift_task_alloc(v23 & 0xFFFFFFFFFFFFFFF0);
  v3[33] = swift_task_alloc(v23 & 0xFFFFFFFFFFFFFFF0);

  swift_task_switch(AsyncFlatMapSequence.Iterator.next(), 0, 0);
}

uint64_t AsyncFlatMapSequence.Iterator.next()()
{
  if (*(v0[4] + *(v0[3] + 60)))
  {
    v1 = v0[32];
    v2 = v0[33];
    v4 = v0[29];
    v3 = v0[30];
    v6 = v0[24];
    v5 = v0[25];
    v7 = v0[22];
    v8 = v0[21];
    v9 = v0[16];
    v10 = v0[14];
    v37 = v10;
    v38 = v0[8];
    v40 = v0[7];
    (*(v0[23] + 56))(v0[2], 1, 1, v0[18]);
    v2;
    v1;
    v3;
    v4;
    v5;
    v6;
    v7;
    v8;
    v9;
    v37;
    v38;
    v40;
    v11 = v0[1];

    return v11();
  }

  else
  {
    v13 = v0[30];
    v14 = v0[31];
    v15 = v0[26];
    AsyncFlatMapSequence.Iterator.currentIterator.getter();
    if ((*(v14 + 48))(v13, 1, v15) == 1)
    {
      v16 = v0[9];
      v17 = v0[10];
      (*(v0[28] + 8))(v0[30], v0[27]);
      swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v19 = *(AssociatedConformanceWitness + 32);
      v20 = swift_checkMetadataState();
      v39 = (v19 + *v19);
      v21 = swift_task_alloc(v19[1]);
      v0[38] = v21;
      *v21 = v0;
      v21[1] = AsyncFlatMapSequence.Iterator.next();
      v22 = v0[14];
      v23 = v0[4];
      v24 = v20;
      v25 = AssociatedConformanceWitness;
      v26 = v39;
    }

    else
    {
      v27 = v0[33];
      v28 = v0[30];
      v29 = v0[31];
      v30 = v0[26];
      v31 = v0[17];
      v32 = v0[5];
      v33 = *(v29 + 32);
      v0[34] = v33;
      v0[35] = (v29 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      v33(v27, v28, v30);
      v34 = swift_getAssociatedConformanceWitness();
      v41 = (*(v34 + 32) + **(v34 + 32));
      v35 = swift_task_alloc(*(*(v34 + 32) + 4));
      v0[36] = v35;
      *v35 = v0;
      v35[1] = AsyncFlatMapSequence.Iterator.next();
      v36 = v0[33];
      v24 = v0[26];
      v22 = v0[22];
      v25 = v34;
      v26 = v41;
    }

    return v26(v22, v24, v25);
  }
}

{
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[18];
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v4 = v0[31];
    v5 = v0[29];
    v6 = v0[26];
    v7 = v0[19];
    v8 = v0[20];
    v10 = v0[3];
    v9 = v0[4];
    (*(v4 + 8))(v0[33], v6);
    (*(v8 + 8))(v1, v7);
    v11 = 1;
    (*(v4 + 56))(v5, 1, 1, v6);
    AsyncFlatMapSequence.Iterator.currentIterator.setter(v5, v10);
    if ((*(v0[4] + *(v0[3] + 60)) & 1) == 0)
    {
      v12 = v0[30];
      v13 = v0[31];
      v14 = v0[26];
      AsyncFlatMapSequence.Iterator.currentIterator.getter();
      if ((*(v13 + 48))(v12, 1, v14) == 1)
      {
        v15 = v0[9];
        v16 = v0[10];
        (*(v0[28] + 8))(v0[30], v0[27]);
        swift_getAssociatedTypeWitness();
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        v18 = *(AssociatedConformanceWitness + 32);
        v19 = swift_checkMetadataState();
        v57 = (v18 + *v18);
        v20 = swift_task_alloc(v18[1]);
        v0[38] = v20;
        *v20 = v0;
        v20[1] = AsyncFlatMapSequence.Iterator.next();
        v21 = v0[14];
        v22 = v0[4];
        v23 = v19;
        v24 = AssociatedConformanceWitness;
        v25 = v57;
      }

      else
      {
        v42 = v0[33];
        v43 = v0[30];
        v44 = v0[31];
        v45 = v0[26];
        v46 = v0[17];
        v47 = v0[5];
        v48 = *(v44 + 32);
        v0[34] = v48;
        v0[35] = (v44 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
        v48(v42, v43, v45);
        v49 = swift_getAssociatedConformanceWitness();
        v62 = (*(v49 + 32) + **(v49 + 32));
        v50 = swift_task_alloc(*(*(v49 + 32) + 4));
        v0[36] = v50;
        *v50 = v0;
        v50[1] = AsyncFlatMapSequence.Iterator.next();
        v51 = v0[33];
        v23 = v0[26];
        v21 = v0[22];
        v24 = v49;
        v25 = v62;
      }

      return v25(v21, v23, v24);
    }
  }

  else
  {
    v52 = v0[34];
    v53 = v0[35];
    v26 = v0[33];
    v27 = v0[31];
    v28 = v0[29];
    v30 = v0[25];
    v29 = v0[26];
    v55 = v0[3];
    v58 = v0[4];
    v60 = v0[2];
    v31 = *(v2 + 32);
    v31(v30, v1, v3);
    v52(v28, v26, v29);
    (*(v27 + 56))(v28, 0, 1, v29);
    AsyncFlatMapSequence.Iterator.currentIterator.setter(v28, v55);
    v31(v60, v30, v3);
    v11 = 0;
  }

  v33 = v0[32];
  v32 = v0[33];
  v35 = v0[29];
  v34 = v0[30];
  v37 = v0[24];
  v36 = v0[25];
  v38 = v0[22];
  v39 = v0[21];
  v54 = v0[16];
  v56 = v0[14];
  v59 = v0[8];
  v61 = v0[7];
  (*(v0[23] + 56))(v0[2], v11, 1, v0[18]);
  v32;
  v33;
  v34;
  v35;
  v36;
  v37;
  v38;
  v39;
  v54;
  v56;
  v59;
  v61;
  v40 = v0[1];

  return v40();
}

{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[11];
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v5 = v0[3];
    v4 = v0[4];
    (*(v0[13] + 8))(v1, v0[12]);
    *(v4 + *(v5 + 60)) = 1;
    v6 = v0[32];
    v7 = v0[33];
    v9 = v0[29];
    v8 = v0[30];
    v11 = v0[24];
    v10 = v0[25];
    v12 = v0[22];
    v13 = v0[21];
    v14 = v0[16];
    v15 = v0[14];
    v25 = v15;
    v26 = v0[8];
    v27 = v0[7];
    (*(v0[23] + 56))(v0[2], 1, 1, v0[18]);
    v7;
    v6;
    v8;
    v9;
    v10;
    v11;
    v12;
    v13;
    v14;
    v25;
    v26;
    v27;
    v16 = v0[1];

    return v16();
  }

  else
  {
    v19 = v0[3];
    v18 = v0[4];
    (*(v2 + 32))(v0[16], v1, v3);
    v20 = (v18 + *(v19 + 52));
    v21 = *v20;
    v0[40] = v20[1];

    v28 = (v21 + *v21);
    v22 = swift_task_alloc(v21[1]);
    v0[41] = v22;
    *v22 = v0;
    v22[1] = AsyncFlatMapSequence.Iterator.next();
    v23 = v0[16];
    v24 = v0[8];

    return v28(v24, v23);
  }
}

{
  v1 = v0[32];
  v2 = v0[26];
  v3 = v0[17];
  v4 = v0[5];
  (*(v0[6] + 32))(v0[7], v0[8], v4);
  (*(v3 + 40))(v4, v3);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = (*(AssociatedConformanceWitness + 32) + **(AssociatedConformanceWitness + 32));
  v6 = swift_task_alloc(*(*(AssociatedConformanceWitness + 32) + 4));
  v0[42] = v6;
  *v6 = v0;
  v6[1] = AsyncFlatMapSequence.Iterator.next();
  v7 = v0[32];
  v8 = v0[26];
  v9 = v0[21];

  return v11(v9, v8, AssociatedConformanceWitness);
}

{
  v1 = v0[23];
  v2 = v0[21];
  v3 = v0[18];
  v4 = (*(v1 + 48))(v2, 1, v3);
  v6 = v0[31];
  v5 = v0[32];
  v7 = v0[29];
  v8 = v0[26];
  if (v4 == 1)
  {
    v9 = v0[19];
    v10 = v0[20];
    v12 = v0[3];
    v11 = v0[4];
    (*(v6 + 8))(v0[32], v0[26]);
    (*(v10 + 8))(v2, v9);
    v13 = 1;
    (*(v6 + 56))(v7, 1, 1, v8);
    AsyncFlatMapSequence.Iterator.currentIterator.setter(v7, v12);
    if (*(v0[4] + *(v0[3] + 60)) != 1)
    {
      v14 = v0[30];
      v15 = v0[31];
      v16 = v0[26];
      AsyncFlatMapSequence.Iterator.currentIterator.getter();
      if ((*(v15 + 48))(v14, 1, v16) == 1)
      {
        v17 = v0[9];
        v18 = v0[10];
        (*(v0[28] + 8))(v0[30], v0[27]);
        swift_getAssociatedTypeWitness();
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        v20 = *(AssociatedConformanceWitness + 32);
        v21 = swift_checkMetadataState();
        v54 = (v20 + *v20);
        v22 = swift_task_alloc(v20[1]);
        v0[38] = v22;
        *v22 = v0;
        v22[1] = AsyncFlatMapSequence.Iterator.next();
        v23 = v0[14];
        v24 = v0[4];
        v25 = v21;
        v26 = AssociatedConformanceWitness;
        v27 = v54;
      }

      else
      {
        v41 = v0[33];
        v42 = v0[30];
        v43 = v0[31];
        v44 = v0[26];
        v45 = v0[17];
        v46 = v0[5];
        v47 = *(v43 + 32);
        v0[34] = v47;
        v0[35] = (v43 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
        v47(v41, v42, v44);
        v48 = swift_getAssociatedConformanceWitness();
        v59 = (*(v48 + 32) + **(v48 + 32));
        v49 = swift_task_alloc(*(*(v48 + 32) + 4));
        v0[36] = v49;
        *v49 = v0;
        v49[1] = AsyncFlatMapSequence.Iterator.next();
        v50 = v0[33];
        v25 = v0[26];
        v23 = v0[22];
        v26 = v48;
        v27 = v59;
      }

      return v27(v23, v25, v26);
    }
  }

  else
  {
    v28 = v0[24];
    v29 = v0[3];
    v52 = v28;
    v55 = v0[4];
    v57 = v0[2];
    v30 = *(v1 + 32);
    v30();
    (*(v6 + 32))(v7, v5, v8);
    (*(v6 + 56))(v7, 0, 1, v8);
    AsyncFlatMapSequence.Iterator.currentIterator.setter(v7, v29);
    (v30)(v57, v52, v3);
    v13 = 0;
  }

  v32 = v0[32];
  v31 = v0[33];
  v34 = v0[29];
  v33 = v0[30];
  v36 = v0[24];
  v35 = v0[25];
  v37 = v0[22];
  v38 = v0[21];
  v51 = v0[16];
  v53 = v0[14];
  v56 = v0[8];
  v58 = v0[7];
  (*(v0[23] + 56))(v0[2], v13, 1, v0[18]);
  v31;
  v32;
  v33;
  v34;
  v35;
  v36;
  v37;
  v38;
  v51;
  v53;
  v56;
  v58;
  v39 = v0[1];

  return v39();
}

{
  v1 = v0[37];
  *(v0[4] + *(v0[3] + 60)) = 1;
  swift_willThrow();
  v2 = v0[32];
  v4 = v0[29];
  v3 = v0[30];
  v6 = v0[24];
  v5 = v0[25];
  v8 = v0[21];
  v7 = v0[22];
  v9 = v0[16];
  v10 = v0[14];
  v13 = v0[8];
  v14 = v0[7];
  v15 = v0[37];
  v0[33];
  v2;
  v3;
  v4;
  v5;
  v6;
  v7;
  v8;
  v9;
  v10;
  v13;
  v14;
  v11 = v0[1];

  return v11();
}

{
  v1 = v0[32];
  v3 = v0[29];
  v2 = v0[30];
  v5 = v0[24];
  v4 = v0[25];
  v7 = v0[21];
  v6 = v0[22];
  v8 = v0[16];
  v9 = v0[14];
  v12 = v0[8];
  v13 = v0[7];
  v14 = v0[39];
  v0[33];
  v1;
  v2;
  v3;
  v4;
  v5;
  v6;
  v7;
  v8;
  v9;
  v12;
  v13;
  v10 = v0[1];

  return v10();
}

{
  v1 = v0[43];
  *(v0[4] + *(v0[3] + 60)) = 1;
  swift_willThrow();
  v2 = v0[32];
  v4 = v0[29];
  v3 = v0[30];
  v6 = v0[24];
  v5 = v0[25];
  v8 = v0[21];
  v7 = v0[22];
  v9 = v0[16];
  v10 = v0[14];
  v13 = v0[8];
  v14 = v0[7];
  v15 = v0[43];
  v0[33];
  v2;
  v3;
  v4;
  v5;
  v6;
  v7;
  v8;
  v9;
  v10;
  v13;
  v14;
  v11 = v0[1];

  return v11();
}

void AsyncFlatMapSequence.Iterator.next()()
{
  v2 = *v1;
  v3 = *(*v1 + 288);
  v5 = *v1;
  *(*v1 + 296) = v0;
  v3;
  if (v0)
  {
    (*(v2[31] + 8))(v2[33], v2[26]);
    v4 = AsyncFlatMapSequence.Iterator.next();
  }

  else
  {
    v4 = AsyncFlatMapSequence.Iterator.next();
  }

  swift_task_switch(v4, 0, 0);
}

{
  v2 = *(*v1 + 304);
  v4 = *v1;
  *(*v1 + 312) = v0;
  v2;
  if (v0)
  {
    v3 = AsyncFlatMapSequence.Iterator.next();
  }

  else
  {
    v3 = AsyncFlatMapSequence.Iterator.next();
  }

  swift_task_switch(v3, 0, 0);
}

{
  v1 = *(*v0 + 320);
  v2 = *(*v0 + 128);
  v3 = *(*v0 + 120);
  v4 = *(*v0 + 88);
  v5 = *v0;
  *(*v0 + 328);

  (*(v3 + 8))(v2, v4);

  swift_task_switch(AsyncFlatMapSequence.Iterator.next(), 0, 0);
}

{
  v2 = *v1;
  v3 = *(*v1 + 336);
  v5 = *v1;
  *(*v1 + 344) = v0;
  v3;
  if (v0)
  {
    (*(v2[31] + 8))(v2[32], v2[26]);
    v4 = AsyncFlatMapSequence.Iterator.next();
  }

  else
  {
    v4 = AsyncFlatMapSequence.Iterator.next();
  }

  swift_task_switch(v4, 0, 0);
}

void _ss20AsyncFlatMapSequenceV8IteratorV4next9isolation7ElementQy_SgScA_pSgYi_tYa7FailureQzYKF(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6[6] = v5;
  v6[7] = a5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v10 = a4[3];
  v6[8] = v10;
  v11 = *(v10 - 8);
  v6[9] = v11;
  v12 = *(v11 + 64) + 15;
  v6[10] = swift_task_alloc(v12 & 0xFFFFFFFFFFFFFFF0);
  v6[11] = swift_task_alloc(v12 & 0xFFFFFFFFFFFFFFF0);
  v6[12] = a4[4];
  v6[13] = a4[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[14] = AssociatedTypeWitness;
  v14 = *(AssociatedTypeWitness - 8);
  v6[15] = v14;
  v6[16] = swift_task_alloc((*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_getAssociatedTypeWitness();
  v6[17] = v15;
  v16 = *(v15 - 8);
  v6[18] = v16;
  v17 = *(v16 + 64) + 15;
  v6[19] = swift_task_alloc(v17 & 0xFFFFFFFFFFFFFFF0);
  v6[20] = swift_task_alloc(v17 & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Optional();
  v6[21] = v18;
  v19 = *(v18 - 8);
  v6[22] = v19;
  v20 = *(v19 + 64) + 15;
  v6[23] = swift_task_alloc(v20 & 0xFFFFFFFFFFFFFFF0);
  v6[24] = swift_task_alloc(v20 & 0xFFFFFFFFFFFFFFF0);
  v6[25] = a4[5];
  v21 = swift_getAssociatedTypeWitness();
  v6[26] = v21;
  v22 = *(v21 - 8);
  v6[27] = v22;
  v23 = *(v22 + 64) + 15;
  v6[28] = swift_task_alloc(v23 & 0xFFFFFFFFFFFFFFF0);
  v6[29] = swift_task_alloc(v23 & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for Optional();
  v6[30] = v24;
  v25 = *(v24 - 8);
  v6[31] = v25;
  v26 = *(v25 + 64) + 15;
  v6[32] = swift_task_alloc(v26 & 0xFFFFFFFFFFFFFFF0);
  v6[33] = swift_task_alloc(v26 & 0xFFFFFFFFFFFFFFF0);
  v6[34] = swift_task_alloc(v26 & 0xFFFFFFFFFFFFFFF0);
  v6[35] = swift_task_alloc(v26 & 0xFFFFFFFFFFFFFFF0);
  v27 = swift_getAssociatedTypeWitness();
  v6[36] = v27;
  v28 = *(v27 - 8);
  v6[37] = v28;
  v29 = *(v28 + 64) + 15;
  v6[38] = swift_task_alloc(v29 & 0xFFFFFFFFFFFFFFF0);
  v6[39] = swift_task_alloc(v29 & 0xFFFFFFFFFFFFFFF0);
  v6[40] = swift_task_alloc(v29 & 0xFFFFFFFFFFFFFFF0);
  v6[41] = swift_task_alloc(v29 & 0xFFFFFFFFFFFFFFF0);
  v6[42] = swift_task_alloc(v29 & 0xFFFFFFFFFFFFFFF0);
  v6[43] = swift_task_alloc(v29 & 0xFFFFFFFFFFFFFFF0);
  v30 = swift_getAssociatedTypeWitness();
  v6[44] = v30;
  v31 = type metadata accessor for Optional();
  v6[45] = v31;
  v32 = *(v31 - 8);
  v6[46] = v32;
  v33 = *(v32 + 64) + 15;
  v6[47] = swift_task_alloc(v33 & 0xFFFFFFFFFFFFFFF0);
  v6[48] = swift_task_alloc(v33 & 0xFFFFFFFFFFFFFFF0);
  v34 = *(v30 - 8);
  v6[49] = v34;
  v35 = *(v34 + 64) + 15;
  v6[50] = swift_task_alloc(v35 & 0xFFFFFFFFFFFFFFF0);
  v6[51] = swift_task_alloc(v35 & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    v37 = (*(a3 + 8))(ObjectType, a3);
    v39 = v38;
  }

  else
  {
    v37 = 0;
    v39 = 0;
  }

  v6[52] = v37;
  v6[53] = v39;

  swift_task_switch(_ss20AsyncFlatMapSequenceV8IteratorV4next9isolation7ElementQy_SgScA_pSgYi_tYa7FailureQzYKFTY0_, v37, v39);
}

uint64_t _ss20AsyncFlatMapSequenceV8IteratorV4next9isolation7ElementQy_SgScA_pSgYi_tYa7FailureQzYKFTY0_()
{
  if (*(v0[6] + *(v0[5] + 60)))
  {
    v2 = v0[50];
    v1 = v0[51];
    v3 = v0[47];
    v4 = v0[48];
    v6 = v0[42];
    v5 = v0[43];
    v8 = v0[40];
    v7 = v0[41];
    v9 = v0[39];
    v39 = v0[38];
    v40 = v0[35];
    v41 = v0[34];
    v42 = v0[33];
    v43 = v0[32];
    v44 = v0[29];
    v45 = v0[28];
    v46 = v0[24];
    v47 = v0[23];
    v48 = v0[20];
    v49 = v0[19];
    v50 = v0[16];
    v51 = v0[11];
    v53 = v0[10];
    (*(v0[27] + 56))(v0[2], 1, 1, v0[26]);
    v1;
    v2;
    v4;
    v3;
    v5;
    v6;
    v7;
    v8;
    v9;
    v39;
    v40;
    v41;
    v42;
    v43;
    v44;
    v45;
    v46;
    v47;
    v48;
    v49;
    v50;
    v51;
    v53;
    v10 = v0[1];

    return v10();
  }

  else
  {
    v12 = v0[48];
    v13 = v0[49];
    v14 = v0[44];
    AsyncFlatMapSequence.Iterator.currentIterator.getter();
    if ((*(v13 + 48))(v12, 1, v14) == 1)
    {
      v15 = v0[12];
      v16 = v0[13];
      (*(v0[46] + 8))(v0[48], v0[45]);
      swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v0[57] = AssociatedConformanceWitness;
      v18 = *(AssociatedConformanceWitness + 40);
      v19 = swift_checkMetadataState();
      v0[58] = v19;
      v52 = (v18 + *v18);
      v20 = swift_task_alloc(v18[1]);
      v0[59] = v20;
      *v20 = v0;
      v20[1] = _ss20AsyncFlatMapSequenceV8IteratorV4next9isolation7ElementQy_SgScA_pSgYi_tYa7FailureQzYKFTQ3_;
      v21 = v0[24];
      v22 = v0[20];
      v23 = v0[6];
      v24 = v0[3];
      v25 = v0[4];
      v26 = v19;
      v27 = AssociatedConformanceWitness;
      v28 = v52;
    }

    else
    {
      v29 = v0[51];
      v30 = v0[48];
      v31 = v0[49];
      v32 = v0[44];
      v33 = v0[25];
      v34 = v0[8];
      v35 = *(v31 + 32);
      v0[54] = v35;
      v0[55] = (v31 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      v35(v29, v30, v32);
      v36 = swift_getAssociatedConformanceWitness();
      v54 = (*(v36 + 40) + **(v36 + 40));
      v37 = swift_task_alloc(*(*(v36 + 40) + 4));
      v0[56] = v37;
      *v37 = v0;
      v37[1] = _ss20AsyncFlatMapSequenceV8IteratorV4next9isolation7ElementQy_SgScA_pSgYi_tYa7FailureQzYKFTQ1_;
      v38 = v0[51];
      v26 = v0[44];
      v22 = v0[42];
      v21 = v0[35];
      v24 = v0[3];
      v25 = v0[4];
      v27 = v36;
      v28 = v54;
    }

    return v28(v21, v24, v25, v22, v26, v27);
  }
}

void _ss20AsyncFlatMapSequenceV8IteratorV4next9isolation7ElementQy_SgScA_pSgYi_tYa7FailureQzYKFTQ1_()
{
  v2 = *v1;
  v6 = *v1;
  *(*v1 + 448);
  if (v0)
  {
    (*(v2[49] + 8))(v2[51], v2[44]);
    v3 = v2[52];
    v4 = v2[53];
    v5 = _ss20AsyncFlatMapSequenceV8IteratorV4next9isolation7ElementQy_SgScA_pSgYi_tYa7FailureQzYKFTY9_;
  }

  else
  {
    v3 = v2[52];
    v4 = v2[53];
    v5 = _ss20AsyncFlatMapSequenceV8IteratorV4next9isolation7ElementQy_SgScA_pSgYi_tYa7FailureQzYKFTY2_;
  }

  swift_task_switch(v5, v3, v4);
}

uint64_t _ss20AsyncFlatMapSequenceV8IteratorV4next9isolation7ElementQy_SgScA_pSgYi_tYa7FailureQzYKFTY2_()
{
  v1 = v0[34];
  v2 = v0[26];
  v3 = v0[27];
  (*(v0[31] + 32))(v1, v0[35], v0[30]);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[49];
    v5 = v0[47];
    v6 = v0[44];
    v7 = v0[34];
    v8 = v0[30];
    v9 = v0[31];
    v11 = v0[5];
    v10 = v0[6];
    (*(v4 + 8))(v0[51], v6);
    (*(v9 + 8))(v7, v8);
    v12 = 1;
    (*(v4 + 56))(v5, 1, 1, v6);
    AsyncFlatMapSequence.Iterator.currentIterator.setter(v5, v11);
    if ((*(v0[6] + *(v0[5] + 60)) & 1) == 0)
    {
      v13 = v0[48];
      v14 = v0[49];
      v15 = v0[44];
      AsyncFlatMapSequence.Iterator.currentIterator.getter();
      if ((*(v14 + 48))(v13, 1, v15) == 1)
      {
        v16 = v0[12];
        v17 = v0[13];
        (*(v0[46] + 8))(v0[48], v0[45]);
        swift_getAssociatedTypeWitness();
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        v0[57] = AssociatedConformanceWitness;
        v19 = *(AssociatedConformanceWitness + 40);
        v20 = swift_checkMetadataState();
        v0[58] = v20;
        v73 = (v19 + *v19);
        v21 = swift_task_alloc(v19[1]);
        v0[59] = v21;
        *v21 = v0;
        v21[1] = _ss20AsyncFlatMapSequenceV8IteratorV4next9isolation7ElementQy_SgScA_pSgYi_tYa7FailureQzYKFTQ3_;
        v22 = v0[24];
        v23 = v0[20];
        v24 = v0[6];
        v25 = v0[3];
        v26 = v0[4];
        v27 = v20;
        v28 = AssociatedConformanceWitness;
        v29 = v73;
      }

      else
      {
        v48 = v0[51];
        v49 = v0[48];
        v50 = v0[49];
        v51 = v0[44];
        v52 = v0[25];
        v53 = v0[8];
        v54 = *(v50 + 32);
        v0[54] = v54;
        v0[55] = (v50 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
        v54(v48, v49, v51);
        v55 = swift_getAssociatedConformanceWitness();
        v78 = (*(v55 + 40) + **(v55 + 40));
        v56 = swift_task_alloc(*(*(v55 + 40) + 4));
        v0[56] = v56;
        *v56 = v0;
        v56[1] = _ss20AsyncFlatMapSequenceV8IteratorV4next9isolation7ElementQy_SgScA_pSgYi_tYa7FailureQzYKFTQ1_;
        v57 = v0[51];
        v27 = v0[44];
        v23 = v0[42];
        v22 = v0[35];
        v25 = v0[3];
        v26 = v0[4];
        v28 = v55;
        v29 = v78;
      }

      return v29(v22, v25, v26, v23, v27, v28);
    }
  }

  else
  {
    v30 = v0[54];
    v69 = v0[55];
    v31 = v0[51];
    v32 = v0[49];
    v33 = v0[47];
    v34 = v0[44];
    v35 = v0[29];
    v36 = v0[26];
    v74 = v0[6];
    v71 = v0[5];
    v76 = v0[2];
    v37 = *(v0[27] + 32);
    v37(v35, v0[34], v36);
    v30(v33, v31, v34);
    (*(v32 + 56))(v33, 0, 1, v34);
    AsyncFlatMapSequence.Iterator.currentIterator.setter(v33, v71);
    v37(v76, v35, v36);
    v12 = 0;
  }

  v39 = v0[50];
  v38 = v0[51];
  v40 = v0[47];
  v41 = v0[48];
  v43 = v0[42];
  v42 = v0[43];
  v45 = v0[40];
  v44 = v0[41];
  v58 = v0[39];
  v59 = v0[38];
  v60 = v0[35];
  v61 = v0[34];
  v62 = v0[33];
  v63 = v0[32];
  v64 = v0[29];
  v65 = v0[28];
  v66 = v0[24];
  v67 = v0[23];
  v68 = v0[20];
  v70 = v0[19];
  v72 = v0[16];
  v75 = v0[11];
  v77 = v0[10];
  (*(v0[27] + 56))(v0[2], v12, 1, v0[26]);
  v38;
  v39;
  v41;
  v40;
  v42;
  v43;
  v44;
  v45;
  v58;
  v59;
  v60;
  v61;
  v62;
  v63;
  v64;
  v65;
  v66;
  v67;
  v68;
  v70;
  v72;
  v75;
  v77;
  v46 = v0[1];

  return v46();
}

void _ss20AsyncFlatMapSequenceV8IteratorV4next9isolation7ElementQy_SgScA_pSgYi_tYa7FailureQzYKFTQ3_()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 472);
  v4 = *(v2 + 424);
  v5 = *(v2 + 416);
  if (v0)
  {
    v6 = _ss20AsyncFlatMapSequenceV8IteratorV4next9isolation7ElementQy_SgScA_pSgYi_tYa7FailureQzYKFTY10_;
  }

  else
  {
    v6 = _ss20AsyncFlatMapSequenceV8IteratorV4next9isolation7ElementQy_SgScA_pSgYi_tYa7FailureQzYKFTY4_;
  }

  swift_task_switch(v6, v5, v4);
}

uint64_t _ss20AsyncFlatMapSequenceV8IteratorV4next9isolation7ElementQy_SgScA_pSgYi_tYa7FailureQzYKFTY4_()
{
  v1 = v0[23];
  v2 = v0[14];
  v3 = v0[15];
  (*(v0[22] + 32))(v1, v0[24], v0[21]);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[5];
    v5 = v0[6];
    (*(v0[22] + 8))(v0[23], v0[21]);
    *(v5 + *(v4 + 60)) = 1;
    v7 = v0[50];
    v6 = v0[51];
    v8 = v0[47];
    v9 = v0[48];
    v11 = v0[42];
    v10 = v0[43];
    v13 = v0[40];
    v12 = v0[41];
    v14 = v0[39];
    v24 = v0[38];
    v25 = v0[35];
    v26 = v0[34];
    v27 = v0[33];
    v28 = v0[32];
    v29 = v0[29];
    v30 = v0[28];
    v31 = v0[24];
    v32 = v0[23];
    v33 = v0[20];
    v34 = v0[19];
    v35 = v0[16];
    v36 = v0[11];
    v37 = v0[10];
    (*(v0[27] + 56))(v0[2], 1, 1, v0[26]);
    v6;
    v7;
    v9;
    v8;
    v10;
    v11;
    v12;
    v13;
    v14;
    v24;
    v25;
    v26;
    v27;
    v28;
    v29;
    v30;
    v31;
    v32;
    v33;
    v34;
    v35;
    v36;
    v37;
    v15 = v0[1];

    return v15();
  }

  else
  {
    v17 = v0[5];
    v18 = v0[6];
    (*(v0[15] + 32))(v0[16], v0[23], v0[14]);
    v19 = (v18 + *(v17 + 52));
    v20 = *v19;
    v0[60] = v19[1];

    v38 = (v20 + *v20);
    v21 = swift_task_alloc(v20[1]);
    v0[61] = v21;
    *v21 = v0;
    v21[1] = _ss20AsyncFlatMapSequenceV8IteratorV4next9isolation7ElementQy_SgScA_pSgYi_tYa7FailureQzYKFTQ5_;
    v22 = v0[16];
    v23 = v0[11];

    return v38(v23, v22);
  }
}

void _ss20AsyncFlatMapSequenceV8IteratorV4next9isolation7ElementQy_SgScA_pSgYi_tYa7FailureQzYKFTQ5_()
{
  v1 = *v0;
  v2 = *(*v0 + 480);
  v3 = *(*v0 + 128);
  v4 = *(*v0 + 120);
  v5 = *(*v0 + 112);
  v8 = *v0;
  *(*v0 + 488);

  (*(v4 + 8))(v3, v5);
  v6 = *(v1 + 424);
  v7 = *(v1 + 416);

  swift_task_switch(_ss20AsyncFlatMapSequenceV8IteratorV4next9isolation7ElementQy_SgScA_pSgYi_tYa7FailureQzYKFTY6_, v7, v6);
}

uint64_t _ss20AsyncFlatMapSequenceV8IteratorV4next9isolation7ElementQy_SgScA_pSgYi_tYa7FailureQzYKFTY6_()
{
  v1 = v0[50];
  v2 = v0[44];
  v3 = v0[25];
  v4 = v0[8];
  (*(v0[9] + 32))(v0[10], v0[11], v4);
  (*(v3 + 40))(v4, v3);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = (*(AssociatedConformanceWitness + 40) + **(AssociatedConformanceWitness + 40));
  v6 = swift_task_alloc(*(*(AssociatedConformanceWitness + 40) + 4));
  v0[62] = v6;
  *v6 = v0;
  v6[1] = _ss20AsyncFlatMapSequenceV8IteratorV4next9isolation7ElementQy_SgScA_pSgYi_tYa7FailureQzYKFTQ7_;
  v7 = v0[50];
  v8 = v0[44];
  v9 = v0[40];
  v10 = v0[33];
  v11 = v0[3];
  v12 = v0[4];

  return v14(v10, v11, v12, v9, v8, AssociatedConformanceWitness);
}

void _ss20AsyncFlatMapSequenceV8IteratorV4next9isolation7ElementQy_SgScA_pSgYi_tYa7FailureQzYKFTQ7_()
{
  v2 = *v1;
  v6 = *v1;
  *(*v1 + 496);
  if (v0)
  {
    (*(v2[49] + 8))(v2[50], v2[44]);
    v3 = v2[52];
    v4 = v2[53];
    v5 = _ss20AsyncFlatMapSequenceV8IteratorV4next9isolation7ElementQy_SgScA_pSgYi_tYa7FailureQzYKFTY11_;
  }

  else
  {
    v3 = v2[52];
    v4 = v2[53];
    v5 = _ss20AsyncFlatMapSequenceV8IteratorV4next9isolation7ElementQy_SgScA_pSgYi_tYa7FailureQzYKFTY8_;
  }

  swift_task_switch(v5, v3, v4);
}

uint64_t _ss20AsyncFlatMapSequenceV8IteratorV4next9isolation7ElementQy_SgScA_pSgYi_tYa7FailureQzYKFTY8_()
{
  v1 = v0[32];
  v2 = v0[26];
  v3 = v0[27];
  (*(v0[31] + 32))(v1, v0[33], v0[30]);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v6 = v0[49];
  v5 = v0[50];
  v7 = v0[47];
  v8 = v0[44];
  v9 = v0[32];
  if (v4 == 1)
  {
    v10 = v0[30];
    v11 = v0[31];
    v13 = v0[5];
    v12 = v0[6];
    (*(v6 + 8))(v0[50], v0[44]);
    (*(v11 + 8))(v9, v10);
    v14 = 1;
    (*(v6 + 56))(v7, 1, 1, v8);
    AsyncFlatMapSequence.Iterator.currentIterator.setter(v7, v13);
    if (*(v0[6] + *(v0[5] + 60)) != 1)
    {
      v15 = v0[48];
      v16 = v0[49];
      v17 = v0[44];
      AsyncFlatMapSequence.Iterator.currentIterator.getter();
      if ((*(v16 + 48))(v15, 1, v17) == 1)
      {
        v18 = v0[12];
        v19 = v0[13];
        (*(v0[46] + 8))(v0[48], v0[45]);
        swift_getAssociatedTypeWitness();
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        v0[57] = AssociatedConformanceWitness;
        v21 = *(AssociatedConformanceWitness + 40);
        v22 = swift_checkMetadataState();
        v0[58] = v22;
        v69 = (v21 + *v21);
        v23 = swift_task_alloc(v21[1]);
        v0[59] = v23;
        *v23 = v0;
        v23[1] = _ss20AsyncFlatMapSequenceV8IteratorV4next9isolation7ElementQy_SgScA_pSgYi_tYa7FailureQzYKFTQ3_;
        v24 = v0[24];
        v25 = v0[20];
        v26 = v0[6];
        v27 = v0[3];
        v28 = v0[4];
        v29 = v22;
        v30 = AssociatedConformanceWitness;
        v31 = v69;
      }

      else
      {
        v45 = v0[51];
        v46 = v0[48];
        v47 = v0[49];
        v48 = v0[44];
        v49 = v0[25];
        v50 = v0[8];
        v51 = *(v47 + 32);
        v0[54] = v51;
        v0[55] = (v47 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
        v51(v45, v46, v48);
        v52 = swift_getAssociatedConformanceWitness();
        v74 = (*(v52 + 40) + **(v52 + 40));
        v53 = swift_task_alloc(*(*(v52 + 40) + 4));
        v0[56] = v53;
        *v53 = v0;
        v53[1] = _ss20AsyncFlatMapSequenceV8IteratorV4next9isolation7ElementQy_SgScA_pSgYi_tYa7FailureQzYKFTQ1_;
        v54 = v0[51];
        v29 = v0[44];
        v25 = v0[42];
        v24 = v0[35];
        v27 = v0[3];
        v28 = v0[4];
        v30 = v52;
        v31 = v74;
      }

      return v31(v24, v27, v28, v25, v29, v30);
    }
  }

  else
  {
    v67 = v0[28];
    v32 = v0[26];
    v33 = v0[5];
    v70 = v0[6];
    v72 = v0[2];
    v34 = *(v0[27] + 32);
    v34();
    (*(v6 + 32))(v7, v5, v8);
    (*(v6 + 56))(v7, 0, 1, v8);
    AsyncFlatMapSequence.Iterator.currentIterator.setter(v7, v33);
    (v34)(v72, v67, v32);
    v14 = 0;
  }

  v36 = v0[50];
  v35 = v0[51];
  v37 = v0[47];
  v38 = v0[48];
  v40 = v0[42];
  v39 = v0[43];
  v42 = v0[40];
  v41 = v0[41];
  v55 = v0[39];
  v56 = v0[38];
  v57 = v0[35];
  v58 = v0[34];
  v59 = v0[33];
  v60 = v0[32];
  v61 = v0[29];
  v62 = v0[28];
  v63 = v0[24];
  v64 = v0[23];
  v65 = v0[20];
  v66 = v0[19];
  v68 = v0[16];
  v71 = v0[11];
  v73 = v0[10];
  (*(v0[27] + 56))(v0[2], v14, 1, v0[26]);
  v35;
  v36;
  v38;
  v37;
  v39;
  v40;
  v41;
  v42;
  v55;
  v56;
  v57;
  v58;
  v59;
  v60;
  v61;
  v62;
  v63;
  v64;
  v65;
  v66;
  v68;
  v71;
  v73;
  v43 = v0[1];

  return v43();
}

uint64_t _ss20AsyncFlatMapSequenceV8IteratorV4next9isolation7ElementQy_SgScA_pSgYi_tYa7FailureQzYKFTY9_()
{
  v1 = v0[43];
  v3 = v0[38];
  v2 = v0[39];
  v4 = v0[36];
  v30 = v0[17];
  v34 = v0[13];
  v32 = v0[12];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[5];
  v8 = *(v0[37] + 32);
  v8(v1, v0[42], v4);
  v8(v2, v1, v4);
  *(v5 + *(v7 + 60)) = 1;
  v8(v3, v2, v4);
  swift_dynamicCast();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  swift_willThrowTypedImpl();
  v9 = v0[50];
  v11 = v0[47];
  v10 = v0[48];
  v13 = v0[42];
  v12 = v0[43];
  v15 = v0[40];
  v14 = v0[41];
  v16 = v0[38];
  v17 = v0[39];
  v20 = v0[35];
  v21 = v0[34];
  v22 = v0[33];
  v23 = v0[32];
  v24 = v0[29];
  v25 = v0[28];
  v26 = v0[24];
  v27 = v0[23];
  v28 = v0[20];
  v29 = v0[19];
  v31 = v0[16];
  v33 = v0[11];
  v35 = v0[10];
  v0[51];
  v9;
  v10;
  v11;
  v12;
  v13;
  v14;
  v15;
  v17;
  v16;
  v20;
  v21;
  v22;
  v23;
  v24;
  v25;
  v26;
  v27;
  v28;
  v29;
  v31;
  v33;
  v35;
  v18 = v0[1];

  return v18();
}

uint64_t _ss20AsyncFlatMapSequenceV8IteratorV4next9isolation7ElementQy_SgScA_pSgYi_tYa7FailureQzYKFTY10_()
{
  (*(v0[18] + 32))(v0[7], v0[20], v0[17]);
  v1 = v0[50];
  v3 = v0[47];
  v2 = v0[48];
  v5 = v0[42];
  v4 = v0[43];
  v7 = v0[40];
  v6 = v0[41];
  v8 = v0[38];
  v9 = v0[39];
  v12 = v0[35];
  v13 = v0[34];
  v14 = v0[33];
  v15 = v0[32];
  v16 = v0[29];
  v17 = v0[28];
  v18 = v0[24];
  v19 = v0[23];
  v20 = v0[20];
  v21 = v0[19];
  v22 = v0[16];
  v23 = v0[11];
  v24 = v0[10];
  v0[51];
  v1;
  v2;
  v3;
  v4;
  v5;
  v6;
  v7;
  v9;
  v8;
  v12;
  v13;
  v14;
  v15;
  v16;
  v17;
  v18;
  v19;
  v20;
  v21;
  v22;
  v23;
  v24;
  v10 = v0[1];

  return v10();
}

uint64_t _ss20AsyncFlatMapSequenceV8IteratorV4next9isolation7ElementQy_SgScA_pSgYi_tYa7FailureQzYKFTY11_()
{
  v30 = v0[57];
  v32 = v0[58];
  v1 = v0[41];
  v3 = v0[38];
  v2 = v0[39];
  v4 = v0[36];
  v28 = v0[19];
  v34 = v0[18];
  v5 = v0[17];
  v6 = v0[6];
  v36 = v0[7];
  v7 = v0[5];
  v8 = *(v0[37] + 32);
  v8(v1, v0[40], v4);
  v8(v2, v1, v4);
  *(v6 + *(v7 + 60)) = 1;
  v8(v3, v2, v4);
  swift_dynamicCast();
  swift_getAssociatedConformanceWitness();
  swift_willThrowTypedImpl();
  (*(v34 + 32))(v36, v28, v5);
  v9 = v0[50];
  v11 = v0[47];
  v10 = v0[48];
  v13 = v0[42];
  v12 = v0[43];
  v15 = v0[40];
  v14 = v0[41];
  v16 = v0[38];
  v17 = v0[39];
  v20 = v0[35];
  v21 = v0[34];
  v22 = v0[33];
  v23 = v0[32];
  v24 = v0[29];
  v25 = v0[28];
  v26 = v0[24];
  v27 = v0[23];
  v29 = v0[20];
  v31 = v0[19];
  v33 = v0[16];
  v35 = v0[11];
  v37 = v0[10];
  v0[51];
  v9;
  v10;
  v11;
  v12;
  v13;
  v14;
  v15;
  v17;
  v16;
  v20;
  v21;
  v22;
  v23;
  v24;
  v25;
  v26;
  v27;
  v29;
  v31;
  v33;
  v35;
  v37;
  v18 = v0[1];

  return v18();
}

void protocol witness for AsyncIteratorProtocol.next() in conformance AsyncFlatMapSequence<A, B>.Iterator(uint64_t a1, void *a2)
{
  v5 = swift_task_alloc(352);
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for AsyncIteratorProtocol.next() in conformance AsyncCompactMapSequence<A, B>.Iterator;

  AsyncFlatMapSequence.Iterator.next()(a1, a2);
}

void _ss20AsyncFlatMapSequenceV8IteratorVyxq__GScIsScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTW(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5[2] = a4;
  v10 = a5[4];
  v11 = a5[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[3] = AssociatedTypeWitness;
  v13 = *(AssociatedTypeWitness - 8);
  v5[4] = v13;
  v14 = swift_task_alloc((*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v5[5] = v14;
  v15 = swift_task_alloc(512);
  v5[6] = v15;
  *v15 = v5;
  v15[1] = _ss23AsyncCompactMapSequenceV8IteratorVyxq__GScIsScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ0_;

  _ss20AsyncFlatMapSequenceV8IteratorV4next9isolation7ElementQy_SgScA_pSgYi_tYa7FailureQzYKF(a1, a2, a3, a5, v14);
}

uint64_t _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[3] = AssociatedTypeWitness;
  v13 = *(AssociatedTypeWitness - 8);
  v6[4] = v13;
  v14 = swift_task_alloc((*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v6[5] = v14;
  v15 = swift_task_alloc(80);
  v6[6] = v15;
  *v15 = v6;
  v15[1] = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTQ0_;

  return _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF(a1, a2, a3, a5, a6, v14);
}

uint64_t _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTQ0_()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *v1;
  v3;
  if (v0)
  {
    v5 = v2[5];
    (*(v2[4] + 32))(v2[2], v5, v2[3]);
    v5;
  }

  else
  {
    v2[5];
  }

  v6 = *(v4 + 8);

  return v6();
}

uint64_t _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[3] = a2;
  v10 = *(a5 + 32);
  v13 = (v10 + *v10);
  v11 = swift_task_alloc(v10[1]);
  v6[8] = v11;
  *v11 = v6;
  v11[1] = _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTQ0_;

  return v13(a1, a4, a5);
}

void _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTQ0_()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;
  v2;
  if (v0)
  {
    if (v3[3])
    {
      v4 = v3[4];
      ObjectType = swift_getObjectType();
      v6 = (*(v4 + 8))(ObjectType, v4);
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    swift_task_switch(_sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTY1_, v6, v8);
  }

  else
  {
    v9 = v3[1];

    v9();
  }
}

uint64_t _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTY1_()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  v0[2] = v0[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  swift_getAssociatedTypeWitness();
  swift_dynamicCast();
  swift_getAssociatedConformanceWitness();
  swift_willThrowTypedImpl();
  v4 = v0[1];

  return v4();
}

uint64_t _sScIsE4next7ElementQzSgyYa7FailureQzYKF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4;
  v7[2] = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[3] = AssociatedTypeWitness;
  v10 = *(AssociatedTypeWitness - 8);
  v7[4] = v10;
  v11 = swift_task_alloc((*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v7[5] = v11;
  v12 = *(a3 + 40);
  v15 = (v12 + *v12);
  v13 = swift_task_alloc(v12[1]);
  v7[6] = v13;
  *v13 = v7;
  v13[1] = _sScIsE4next7ElementQzSgyYa7FailureQzYKFTQ0_;

  return (v15)(a1, 0, 0, v11, a2, a3);
}

void _sScIsE4next7ElementQzSgyYa7FailureQzYKFTQ0_()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *v1;
  v3;
  if (v0)
  {

    swift_task_switch(_sScIsE4next7ElementQzSgyYa7FailureQzYKFTY1_, 0, 0);
  }

  else
  {
    *(v2 + 40);
    v5 = *(v4 + 8);

    v5();
  }
}

uint64_t _sScIsE4next7ElementQzSgyYa7FailureQzYKFTY1_()
{
  v1 = v0[5];
  (*(v0[4] + 32))(v0[2], v1, v0[3]);
  v1;
  v2 = v0[1];

  return v2();
}

uint64_t AsyncSequence.map<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  return AsyncSequence.compactMap<A>(_:)(a1, a2, a3, a4, a5, type metadata accessor for AsyncMapSequence, a6);
}

{
  return AsyncSequence.compactMap<A>(_:)(a1, a2, a3, a4, a5, type metadata accessor for AsyncThrowingMapSequence, a6);
}

uint64_t AsyncMapSequence.Iterator.transform.getter(uint64_t a1)
{
  v1 = sub_1815F15A8(a1);

  return v1;
}

uint64_t AsyncCompactMapSequence.Iterator.init(_:transform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t (*a7)(void, uint64_t, uint64_t, uint64_t)@<X6>, uint64_t a8@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a8, a1, AssociatedTypeWitness);
  result = a7(0, a4, a5, a6);
  v18 = (a8 + *(result + 44));
  *v18 = a2;
  v18[1] = a3;
  return result;
}

uint64_t AsyncMapSequence.Iterator.next()(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(a2 + 32);
  v5 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3[5] = AssociatedTypeWitness;
  v7 = type metadata accessor for Optional();
  v3[6] = v7;
  v8 = *(v7 - 8);
  v3[7] = v8;
  v9 = swift_task_alloc((*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v3[8] = v9;
  v10 = *(AssociatedTypeWitness - 8);
  v3[9] = v10;
  v3[10] = swift_task_alloc((*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = *(AssociatedConformanceWitness + 32);
  v13 = swift_checkMetadataState();
  v16 = (v12 + *v12);
  v14 = swift_task_alloc(v12[1]);
  v3[11] = v14;
  *v14 = v3;
  v14[1] = AsyncMapSequence.Iterator.next();

  return v16(v9, v13, AssociatedConformanceWitness);
}

void AsyncMapSequence.Iterator.next()()
{
  v2 = *(*v1 + 88);
  v4 = *v1;
  *(*v1 + 96) = v0;
  v2;
  if (v0)
  {
    v3 = AsyncMapSequence.Iterator.next();
  }

  else
  {
    v3 = AsyncMapSequence.Iterator.next();
  }

  swift_task_switch(v3, 0, 0);
}

{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v4 = *(*v0 + 40);
  v5 = *v0;
  *(*v0 + 112);

  (*(v3 + 8))(v2, v4);

  swift_task_switch(AsyncMapSequence.Iterator.next(), 0, 0);
}

uint64_t AsyncMapSequence.Iterator.next()()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[5];
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    (*(v0[7] + 8))(v1, v0[6]);
    v4 = v0[10];
    v5 = v0[8];
    (*(*(*(v0[3] + 24) - 8) + 56))(v0[2], 1, 1);
    v4;
    v5;
    v6 = v0[1];

    return v6();
  }

  else
  {
    v9 = v0[3];
    v8 = v0[4];
    (*(v2 + 32))(v0[10], v1, v3);
    v10 = (v8 + *(v9 + 44));
    v11 = *v10;
    v0[13] = v10[1];

    v15 = (v11 + *v11);
    v12 = swift_task_alloc(v11[1]);
    v0[14] = v12;
    *v12 = v0;
    v12[1] = AsyncMapSequence.Iterator.next();
    v13 = v0[10];
    v14 = v0[2];

    return v15(v14, v13);
  }
}

{
  v1 = v0[10];
  v2 = v0[8];
  (*(*(*(v0[3] + 24) - 8) + 56))(v0[2], 0, 1);
  v1;
  v2;
  v3 = v0[1];

  return v3();
}

{
  v1 = v0[8];
  v0[10];
  v1;
  v2 = v0[1];
  v3 = v0[12];

  return v2();
}

uint64_t _ss16AsyncMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = v5;
  v6[7] = a5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v9 = *(a4 + 32);
  v10 = *(a4 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[8] = AssociatedTypeWitness;
  v12 = *(AssociatedTypeWitness - 8);
  v6[9] = v12;
  v13 = swift_task_alloc((*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v6[10] = v13;
  v14 = swift_getAssociatedTypeWitness();
  v6[11] = v14;
  v15 = type metadata accessor for Optional();
  v6[12] = v15;
  v16 = *(v15 - 8);
  v6[13] = v16;
  v17 = swift_task_alloc((*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v6[14] = v17;
  v18 = *(v14 - 8);
  v6[15] = v18;
  v6[16] = swift_task_alloc((*(v18 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v20 = *(AssociatedConformanceWitness + 40);
  v21 = swift_checkMetadataState();
  v24 = (v20 + *v20);
  v22 = swift_task_alloc(v20[1]);
  v6[17] = v22;
  *v22 = v6;
  v22[1] = _ss16AsyncMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKFTQ0_;

  return v24(v17, a2, a3, v13, v21, AssociatedConformanceWitness);
}

void _ss16AsyncMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKFTQ0_()
{
  v2 = *v1;
  v3 = *(*v1 + 24);
  v17 = *v1;
  *(*v1 + 136);
  if (v0)
  {
    if (v3)
    {
      v4 = v2[3];
      v5 = v2[4];
      ObjectType = swift_getObjectType();
      v7 = (*(v5 + 8))(ObjectType, v5);
      v9 = v8;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v15 = _ss19AsyncFilterSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTY4_;
    v16 = v7;
  }

  else
  {
    if (v3)
    {
      v10 = v2[3];
      v11 = v2[4];
      v12 = swift_getObjectType();
      v13 = (*(v11 + 8))(v12, v11);
      v9 = v14;
    }

    else
    {
      v13 = 0;
      v9 = 0;
    }

    v2[18] = v13;
    v2[19] = v9;
    v15 = _ss16AsyncMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKFTY1_;
    v16 = v13;
  }

  swift_task_switch(v15, v16, v9);
}

uint64_t _ss16AsyncMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKFTY1_()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[11];
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    (*(v0[13] + 8))(v1, v0[12]);
    v4 = v0[16];
    v5 = v0[14];
    v6 = v0[10];
    (*(*(*(v0[5] + 24) - 8) + 56))(v0[2], 1, 1);
    v4;
    v5;
    v6;
    v7 = v0[1];

    return v7();
  }

  else
  {
    v10 = v0[5];
    v9 = v0[6];
    (*(v2 + 32))(v0[16], v1, v3);
    v11 = (v9 + *(v10 + 44));
    v12 = *v11;
    v0[20] = v11[1];

    v16 = (v12 + *v12);
    v13 = swift_task_alloc(v12[1]);
    v0[21] = v13;
    *v13 = v0;
    v13[1] = _ss16AsyncMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKFTQ2_;
    v14 = v0[16];
    v15 = v0[2];

    return v16(v15, v14);
  }
}

void _ss16AsyncMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKFTQ2_()
{
  v1 = *v0;
  v2 = *(*v0 + 160);
  v3 = *(*v0 + 128);
  v4 = *(*v0 + 120);
  v5 = *(*v0 + 88);
  v8 = *v0;
  *(*v0 + 168);

  (*(v4 + 8))(v3, v5);
  v6 = *(v1 + 152);
  v7 = *(v1 + 144);

  swift_task_switch(_ss16AsyncMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKFTY3_, v7, v6);
}

uint64_t _ss16AsyncMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKFTY3_()
{
  v1 = v0[16];
  v2 = v0[14];
  v3 = v0[10];
  (*(*(*(v0[5] + 24) - 8) + 56))(v0[2], 0, 1);
  v1;
  v2;
  v3;
  v4 = v0[1];

  return v4();
}

uint64_t protocol witness for AsyncIteratorProtocol.next() in conformance AsyncMapSequence<A, B>.Iterator(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc(128);
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for AsyncIteratorProtocol.next() in conformance AsyncCompactMapSequence<A, B>.Iterator;

  return AsyncMapSequence.Iterator.next()(a1, a2);
}

uint64_t _ss16AsyncMapSequenceV8IteratorVyxq__GScIsScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTW(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v10 = *(a5 + 32);
  v11 = *(a5 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[3] = AssociatedTypeWitness;
  v13 = *(AssociatedTypeWitness - 8);
  v5[4] = v13;
  v14 = swift_task_alloc((*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v5[5] = v14;
  v15 = swift_task_alloc(176);
  v5[6] = v15;
  *v15 = v5;
  v15[1] = _ss23AsyncCompactMapSequenceV8IteratorVyxq__GScIsScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ0_;

  return _ss16AsyncMapSequenceV8IteratorV4next9isolationq_SgScA_pSgYi_tYa7FailureQzYKF(a1, a2, a3, a5, v14);
}

uint64_t AsyncCompactMapSequence.makeAsyncIterator()(uint64_t a1, uint64_t (*a2)(char *, uint64_t, uint64_t, uint64_t, void, uint64_t))
{
  v22 = a2;
  v3 = v2;
  v5 = *(a1 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v8 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness - 8);
  v15 = &v21 - v14;
  (*(v6 + 16))(v10, v3, v5);
  (*(v11 + 40))(v5, v11);
  v16 = (v3 + *(a1 + 44));
  v17 = *v16;
  v18 = v16[1];
  v19 = *(*(a1 - 8) + 8);

  v19(v3, a1);
  return v22(v15, v17, v18, v5, *(a1 + 24), v11);
}

uint64_t AsyncSequence.prefix(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1 < 0)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v4 = v3;
    (*(*(a2 - 8) + 32))(a3, v4, a2);
    result = type metadata accessor for AsyncPrefixSequence();
    *(a3 + *(result + 36)) = a1;
  }

  return result;
}

uint64_t AsyncDropFirstSequence.init(_:dropping:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void, uint64_t, uint64_t)@<X4>, uint64_t a6@<X8>)
{
  (*(*(a3 - 8) + 32))(a6, a1);
  result = a5(0, a3, a4);
  *(a6 + *(result + 36)) = a2;
  return result;
}

uint64_t (*AsyncPrefixSequence.Iterator.remaining.modify(uint64_t a1, uint64_t a2))()
{
  result = UnownedSerialExecutor.executor.modify;
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t AsyncDropFirstSequence.Iterator.init(_:count:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void, uint64_t, uint64_t)@<X4>, uint64_t a6@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a6, a1, AssociatedTypeWitness);
  result = a5(0, a3, a4);
  *(a6 + *(result + 36)) = a2;
  return result;
}

void AsyncPrefixSequence.Iterator.next()(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  swift_task_switch(AsyncPrefixSequence.Iterator.next(), 0, 0);
}

uint64_t AsyncPrefixSequence.Iterator.next()()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = *(v1 + 36);
  v4 = *(v2 + v3);
  if (v4)
  {
    *(v2 + v3) = v4 - 1;
    v5 = *(v1 + 16);
    v6 = *(v1 + 24);
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v8 = *(AssociatedConformanceWitness + 32);
    v9 = swift_checkMetadataState();
    v19 = (v8 + *v8);
    v10 = swift_task_alloc(v8[1]);
    v0[5] = v10;
    *v10 = v0;
    v10[1] = AsyncPrefixSequence.Iterator.next();
    v11 = v0[4];
    v12 = v0[2];

    return v19(v12, v9, AssociatedConformanceWitness);
  }

  else
  {
    v14 = v0[2];
    v16 = *(v1 + 16);
    v15 = *(v1 + 24);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    (*(*(AssociatedTypeWitness - 8) + 56))(v14, 1, 1, AssociatedTypeWitness);
    v18 = v0[1];

    return v18();
  }
}

{
  v3 = *v0;
  *(*v0 + 40);
  v1 = *(v3 + 8);

  return v1();
}

void _ss19AsyncPrefixSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = v5;
  v6[7] = a5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v6[8] = *(a4 + 24);
  v6[9] = *(a4 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[10] = AssociatedTypeWitness;
  v10 = *(AssociatedTypeWitness - 8);
  v6[11] = v10;
  v6[12] = swift_task_alloc((*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    v12 = (*(a3 + 8))(ObjectType, a3);
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  v6[13] = v12;
  v6[14] = v14;

  swift_task_switch(_ss19AsyncPrefixSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTY0_, v12, v14);
}

uint64_t _ss19AsyncPrefixSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTY0_()
{
  v1 = v0[6];
  v2 = *(v0[5] + 36);
  v3 = *(v1 + v2);
  v4 = v0[8];
  v5 = v0[9];
  if (v3)
  {
    *(v1 + v2) = v3 - 1;
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v7 = *(AssociatedConformanceWitness + 40);
    v8 = swift_checkMetadataState();
    v21 = (v7 + *v7);
    v9 = swift_task_alloc(v7[1]);
    v0[15] = v9;
    *v9 = v0;
    v9[1] = _ss19AsyncPrefixSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTQ1_;
    v10 = v0[12];
    v11 = v0[6];
    v12 = v0[3];
    v13 = v0[4];
    v14 = v0[2];

    return v21(v14, v12, v13, v10, v8, AssociatedConformanceWitness);
  }

  else
  {
    v16 = v0[2];
    v17 = v0[8];
    v18 = v0[9];
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    (*(*(AssociatedTypeWitness - 8) + 56))(v16, 1, 1, AssociatedTypeWitness);
    v0[12];
    v20 = v0[1];

    return v20();
  }
}

void _ss19AsyncPrefixSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTQ1_()
{
  v2 = *v1;
  v3 = (*v1)[15];
  v4 = *v1;
  v3;
  if (v0)
  {
    v5 = v2[13];
    v6 = v2[14];

    swift_task_switch(_ss19AsyncPrefixSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTY2_, v5, v6);
  }

  else
  {
    v2[12];
    v7 = v4[1];

    v7();
  }
}

uint64_t _ss19AsyncPrefixSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTY2_()
{
  v1 = v0[12];
  (*(v0[11] + 32))(v0[7], v1, v0[10]);
  v1;
  v2 = v0[1];

  return v2();
}

void protocol witness for AsyncIteratorProtocol.next() in conformance AsyncPrefixSequence<A>.Iterator(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc(48);
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for AsyncIteratorProtocol.next() in conformance AsyncCompactMapSequence<A, B>.Iterator;

  AsyncPrefixSequence.Iterator.next()(a1, a2);
}

void _ss19AsyncPrefixSequenceV8IteratorVyx_GScIsScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTW(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v11 = *(a5 + 16);
  v10 = *(a5 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[3] = AssociatedTypeWitness;
  v13 = *(AssociatedTypeWitness - 8);
  v5[4] = v13;
  v14 = swift_task_alloc((*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v5[5] = v14;
  v15 = swift_task_alloc(128);
  v5[6] = v15;
  *v15 = v5;
  v15[1] = _ss23AsyncCompactMapSequenceV8IteratorVyxq__GScIsScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ0_;

  _ss19AsyncPrefixSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF(a1, a2, a3, a5, v14);
}

uint64_t AsyncDropFirstSequence.makeAsyncIterator()(uint64_t a1, uint64_t (*a2)(char *, uint64_t, uint64_t, uint64_t))
{
  v4 = v2;
  v6 = *(a1 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v9 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness - 8);
  v16 = &v19 - v15;
  (*(v7 + 16))(v11, v4, v6);
  (*(v12 + 40))(v6, v12);
  v17 = *(v4 + *(a1 + 36));
  (*(*(a1 - 8) + 8))(v4, a1);
  return a2(v16, v17, v6, v12);
}

uint64_t AsyncSequence.prefix(while:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  return AsyncSequence.prefix(while:)(a1, a2, a3, a4, type metadata accessor for AsyncPrefixWhileSequence, a5);
}

{
  return AsyncSequence.prefix(while:)(a1, a2, a3, a4, type metadata accessor for AsyncThrowingPrefixWhileSequence, a5);
}

uint64_t (*AsyncPrefixWhileSequence.Iterator.baseIterator.modify(uint64_t a1, uint64_t a2))()
{
  result = UnownedSerialExecutor.executor.modify;
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t AsyncPrefixWhileSequence.Iterator.predicate.getter(uint64_t a1)
{
  v1 = sub_1815F1668(a1);

  return v1;
}

void AsyncPrefixWhileSequence.Iterator.next()(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *(a2 + 24);
  v3[6] = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3[7] = AssociatedTypeWitness;
  v5 = type metadata accessor for Optional();
  v3[8] = v5;
  v6 = *(v5 - 8);
  v3[9] = v6;
  v3[10] = swift_task_alloc((*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(AssociatedTypeWitness - 8);
  v3[11] = v7;
  v3[12] = swift_task_alloc((*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);

  swift_task_switch(AsyncPrefixWhileSequence.Iterator.next(), 0, 0);
}

uint64_t AsyncPrefixWhileSequence.Iterator.next()()
{
  if (**(v0 + 32))
  {
    v1 = *(v0 + 96);
    v2 = *(v0 + 80);
    (*(*(v0 + 88) + 56))(*(v0 + 16), 1, 1, *(v0 + 56));
    v1;
    v2;
    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v5 = *(v0 + 40);
    v6 = *(v0 + 48);
    v7 = *(*(v0 + 24) + 36);
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v9 = *(AssociatedConformanceWitness + 32);
    v10 = swift_checkMetadataState();
    v13 = (v9 + *v9);
    v11 = swift_task_alloc(v9[1]);
    *(v0 + 104) = v11;
    *v11 = v0;
    v11[1] = AsyncPrefixWhileSequence.Iterator.next();
    v12 = *(v0 + 80);

    return v13(v12, v10, AssociatedConformanceWitness);
  }
}

{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[7];
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    (*(v0[9] + 8))(v1, v0[8]);
    v4 = v0[12];
    v5 = v0[10];
    (*(v0[11] + 56))(v0[2], 1, 1, v0[7]);
    v4;
    v5;
    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = v0[12];
    v10 = v0[3];
    v9 = v0[4];
    v11 = *(v2 + 32);
    v0[15] = v11;
    v0[16] = (v2 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v11(v8, v1, v3);
    v12 = (v9 + *(v10 + 40));
    v13 = *v12;
    v0[17] = v12[1];

    v16 = (v13 + *v13);
    v14 = swift_task_alloc(v13[1]);
    v0[18] = v14;
    *v14 = v0;
    v14[1] = AsyncPrefixWhileSequence.Iterator.next();
    v15 = v0[12];

    return v16(v15);
  }
}

{
  if (*(v0 + 152) == 1)
  {
    v1 = *(v0 + 128);
    (*(v0 + 120))(*(v0 + 16), *(v0 + 96), *(v0 + 56));
    v2 = 0;
  }

  else
  {
    v3 = *(v0 + 32);
    (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 56));
    v2 = 1;
    *v3 = 1;
  }

  v4 = *(v0 + 96);
  v5 = *(v0 + 80);
  (*(*(v0 + 88) + 56))(*(v0 + 16), v2, 1, *(v0 + 56));
  v4;
  v5;
  v6 = *(v0 + 8);

  return v6();
}

{
  v1 = v0[10];
  v0[12];
  v1;
  v2 = v0[1];
  v3 = v0[14];

  return v2();
}

void AsyncPrefixWhileSequence.Iterator.next()()
{
  v2 = *(*v1 + 104);
  v4 = *v1;
  *(*v1 + 112) = v0;
  v2;
  if (v0)
  {
    v3 = AsyncPrefixWhileSequence.Iterator.next();
  }

  else
  {
    v3 = AsyncPrefixWhileSequence.Iterator.next();
  }

  swift_task_switch(v3, 0, 0);
}

void AsyncPrefixWhileSequence.Iterator.next()(char a1)
{
  v2 = *(*v1 + 144);
  v3 = *(*v1 + 136);
  v4 = *v1;
  *(*v1 + 152) = a1;
  v2;

  swift_task_switch(AsyncPrefixWhileSequence.Iterator.next(), 0, 0);
}

void _ss24AsyncPrefixWhileSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = v5;
  v6[7] = a5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v6[8] = *(a4 + 24);
  v6[9] = *(a4 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[10] = AssociatedTypeWitness;
  v10 = *(AssociatedTypeWitness - 8);
  v6[11] = v10;
  v6[12] = swift_task_alloc((*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_getAssociatedTypeWitness();
  v6[13] = v11;
  v12 = type metadata accessor for Optional();
  v6[14] = v12;
  v13 = *(v12 - 8);
  v6[15] = v13;
  v6[16] = swift_task_alloc((*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v11 - 8);
  v6[17] = v14;
  v6[18] = swift_task_alloc((*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    v16 = (*(a3 + 8))(ObjectType, a3);
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  v6[19] = v16;
  v6[20] = v18;

  swift_task_switch(_ss24AsyncPrefixWhileSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTY0_, v16, v18);
}

uint64_t _ss24AsyncPrefixWhileSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTY0_()
{
  if (**(v0 + 48))
  {
    v1 = *(v0 + 144);
    v2 = *(v0 + 128);
    v3 = *(v0 + 96);
    (*(*(v0 + 136) + 56))(*(v0 + 16), 1, 1, *(v0 + 104));
    v1;
    v2;
    v3;
    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 64);
    v7 = *(v0 + 72);
    v8 = *(*(v0 + 40) + 36);
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v10 = *(AssociatedConformanceWitness + 40);
    v11 = swift_checkMetadataState();
    v17 = (v10 + *v10);
    v12 = swift_task_alloc(v10[1]);
    *(v0 + 168) = v12;
    *v12 = v0;
    v12[1] = _ss24AsyncPrefixWhileSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTQ1_;
    v13 = *(v0 + 128);
    v14 = *(v0 + 96);
    v15 = *(v0 + 24);
    v16 = *(v0 + 32);

    return v17(v13, v15, v16, v14, v11, AssociatedConformanceWitness);
  }
}

void _ss24AsyncPrefixWhileSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTQ1_()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 168);
  v4 = *(v2 + 160);
  v5 = *(v2 + 152);
  if (v0)
  {
    v6 = _ss24AsyncPrefixWhileSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTY5_;
  }

  else
  {
    v6 = _ss24AsyncPrefixWhileSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTY2_;
  }

  swift_task_switch(v6, v5, v4);
}

uint64_t _ss24AsyncPrefixWhileSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTY2_()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[13];
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    (*(v0[15] + 8))(v1, v0[14]);
    v4 = v0[18];
    v5 = v0[16];
    v6 = v0[12];
    (*(v0[17] + 56))(v0[2], 1, 1, v0[13]);
    v4;
    v5;
    v6;
    v7 = v0[1];

    return v7();
  }

  else
  {
    v9 = v0[18];
    v11 = v0[5];
    v10 = v0[6];
    v12 = *(v2 + 32);
    v0[22] = v12;
    v0[23] = (v2 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v12(v9, v1, v3);
    v13 = (v10 + *(v11 + 40));
    v14 = *v13;
    v0[24] = v13[1];

    v17 = (v14 + *v14);
    v15 = swift_task_alloc(v14[1]);
    v0[25] = v15;
    *v15 = v0;
    v15[1] = _ss24AsyncPrefixWhileSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTQ3_;
    v16 = v0[18];

    return v17(v16);
  }
}

void _ss24AsyncPrefixWhileSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTQ3_(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *(*v1 + 192);
  v7 = *v1;
  *(*v1 + 208) = a1;
  v3;

  v5 = *(v2 + 160);
  v6 = *(v2 + 152);

  swift_task_switch(_ss24AsyncPrefixWhileSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTY4_, v6, v5);
}

uint64_t _ss24AsyncPrefixWhileSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTY4_()
{
  if (*(v0 + 208) == 1)
  {
    v1 = *(v0 + 184);
    (*(v0 + 176))(*(v0 + 16), *(v0 + 144), *(v0 + 104));
    v2 = 0;
  }

  else
  {
    v3 = *(v0 + 48);
    (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 104));
    v2 = 1;
    *v3 = 1;
  }

  v4 = *(v0 + 144);
  v5 = *(v0 + 128);
  v6 = *(v0 + 96);
  (*(*(v0 + 136) + 56))(*(v0 + 16), v2, 1, *(v0 + 104));
  v4;
  v5;
  v6;
  v7 = *(v0 + 8);

  return v7();
}

uint64_t _ss24AsyncPrefixWhileSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTY5_()
{
  v1 = v0[18];
  v2 = v0[16];
  v3 = v0[12];
  (*(v0[11] + 32))(v0[7], v3, v0[10]);
  v1;
  v2;
  v3;
  v4 = v0[1];

  return v4();
}

void protocol witness for AsyncIteratorProtocol.next() in conformance AsyncPrefixWhileSequence<A>.Iterator(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc(160);
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for AsyncIteratorProtocol.next() in conformance AsyncCompactMapSequence<A, B>.Iterator;

  AsyncPrefixWhileSequence.Iterator.next()(a1, a2);
}

void _ss24AsyncPrefixWhileSequenceV8IteratorVyx_GScIsScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTW(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v11 = *(a5 + 16);
  v10 = *(a5 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[3] = AssociatedTypeWitness;
  v13 = *(AssociatedTypeWitness - 8);
  v5[4] = v13;
  v14 = swift_task_alloc((*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v5[5] = v14;
  v15 = swift_task_alloc(224);
  v5[6] = v15;
  *v15 = v5;
  v15[1] = _ss23AsyncCompactMapSequenceV8IteratorVyxq__GScIsScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ0_;

  _ss24AsyncPrefixWhileSequenceV8IteratorV4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF(a1, a2, a3, a5, v14);
}

void AsyncSequence.reduce<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[8] = a7;
  v8[9] = v7;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  v10 = *(a6 - 8);
  v8[10] = v10;
  v8[11] = swift_task_alloc((*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[12] = AssociatedTypeWitness;
  v12 = type metadata accessor for Optional();
  v8[13] = v12;
  v13 = *(v12 - 8);
  v8[14] = v13;
  v8[15] = swift_task_alloc((*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(AssociatedTypeWitness - 8);
  v8[16] = v14;
  v8[17] = swift_task_alloc((*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a5 - 8);
  v8[18] = v15;
  v8[19] = swift_task_alloc((*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v8[20] = v16;
  v17 = *(v16 - 8);
  v8[21] = v17;
  v8[22] = swift_task_alloc((*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);

  swift_task_switch(AsyncSequence.reduce<A>(_:_:), 0, 0);
}

uint64_t AsyncSequence.reduce<A>(_:_:)()
{
  v1 = v0[22];
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[18];
  v5 = v0[9];
  v6 = v0[8];
  v7 = v0[6];
  (*(v0[10] + 16))(v0[2], v0[3], v0[7]);
  (*(v4 + 16))(v3, v5, v7);
  (*(v6 + 40))(v7, v6);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v0[23] = AssociatedConformanceWitness;
  v9 = *(AssociatedConformanceWitness + 32);
  v0[24] = v9;
  v0[25] = (AssociatedConformanceWitness + 32) & 0xFFFFFFFFFFFFLL | 0xE013000000000000;
  v17 = (v9 + *v9);
  v10 = swift_task_alloc(v9[1]);
  v0[26] = v10;
  *v10 = v0;
  v10[1] = AsyncSequence.reduce<A>(_:_:);
  v11 = v0[25];
  v13 = v0[22];
  v12 = v0[23];
  v14 = v0[20];
  v15 = v0[15];

  return v17(v15, v14, v12);
}

{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[12];
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v4 = v0[22];
    v5 = v0[19];
    v6 = v0[17];
    v7 = v0[13];
    v8 = v0[14];
    v9 = v0[11];
    (*(v0[21] + 8))(v4, v0[20]);
    (*(v8 + 8))(v1, v7);
    v4;
    v5;
    v6;
    v1;
    v9;
    v10 = v0[1];

    return v10();
  }

  else
  {
    v12 = v0[4];
    (*(v2 + 32))(v0[17], v1, v3);
    v18 = (v12 + *v12);
    v13 = swift_task_alloc(v12[1]);
    v0[28] = v13;
    *v13 = v0;
    v13[1] = AsyncSequence.reduce<A>(_:_:);
    v14 = v0[17];
    v15 = v0[11];
    v16 = v0[5];
    v17 = v0[2];

    return v18(v15, v17, v14);
  }
}

{
  (*(v0[10] + 32))(v0[2], v0[11], v0[7]);
  v1 = v0[25];
  v9 = (v0[24] + *v0[24]);
  v2 = swift_task_alloc(*(v0[24] + 4));
  v0[26] = v2;
  *v2 = v0;
  v2[1] = AsyncSequence.reduce<A>(_:_:);
  v3 = v0[25];
  v5 = v0[22];
  v4 = v0[23];
  v6 = v0[20];
  v7 = v0[15];

  return v9(v7, v6, v4);
}

{
  v1 = v0[27];
  v2 = v0[19];
  v3 = v0[17];
  v4 = v0[15];
  v5 = v0[11];
  v0[22];
  v2;
  v3;
  v4;
  v5;
  v6 = v0[1];

  return v6();
}

{
  v1 = v0[29];
  v2 = v0[19];
  v3 = v0[17];
  v4 = v0[15];
  v5 = v0[11];
  v0[22];
  v2;
  v3;
  v4;
  v5;
  v6 = v0[1];

  return v6();
}

void AsyncSequence.reduce<A>(_:_:)()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v11 = *v1;
  *(*v1 + 216) = v0;
  v3;
  if (v0)
  {
    v5 = v2[21];
    v4 = v2[22];
    v6 = v2[20];
    v7 = v2[10];
    v8 = v2[7];
    v9 = v2[2];
    (*(v5 + 8))(v4, v6);
    (*(v7 + 8))(v9, v8);
    v10 = AsyncSequence.reduce<A>(_:_:);
  }

  else
  {
    v10 = AsyncSequence.reduce<A>(_:_:);
  }

  swift_task_switch(v10, 0, 0);
}

{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v20 = *v1;
  *(*v1 + 232) = v0;
  v3;
  if (v0)
  {
    v5 = v2[21];
    v4 = v2[22];
    v6 = v2[20];
    v8 = v2[16];
    v7 = v2[17];
    v9 = v2[12];
    v10 = v2[10];
    v11 = v2[7];
    v12 = v2[2];
    (*(v8 + 8))(v7, v9);
    (*(v5 + 8))(v4, v6);
    (*(v10 + 8))(v12, v11);
    v13 = AsyncSequence.reduce<A>(_:_:);
  }

  else
  {
    v15 = v2[16];
    v14 = v2[17];
    v16 = v2[12];
    v17 = v2[10];
    v18 = v2[7];
    v19 = v2[2];
    (*(v15 + 8))(v14, v16);
    (*(v17 + 8))(v19, v18);
    v13 = AsyncSequence.reduce<A>(_:_:);
  }

  swift_task_switch(v13, 0, 0);
}

void AsyncSequence.reduce<A>(into:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[8] = a7;
  v8[9] = v7;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[10] = AssociatedTypeWitness;
  v11 = type metadata accessor for Optional();
  v8[11] = v11;
  v12 = *(v11 - 8);
  v8[12] = v12;
  v8[13] = swift_task_alloc((*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(AssociatedTypeWitness - 8);
  v8[14] = v13;
  v8[15] = swift_task_alloc((*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a5 - 8);
  v8[16] = v14;
  v8[17] = swift_task_alloc((*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_getAssociatedTypeWitness();
  v8[18] = v15;
  v16 = *(v15 - 8);
  v8[19] = v16;
  v8[20] = swift_task_alloc((*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);

  swift_task_switch(AsyncSequence.reduce<A>(into:_:), 0, 0);
}

uint64_t AsyncSequence.reduce<A>(into:_:)()
{
  v1 = v0[20];
  v2 = v0[18];
  v3 = v0[8];
  v4 = v0[6];
  (*(v0[16] + 16))(v0[17], v0[9], v4);
  (*(v3 + 40))(v4, v3);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v0[21] = AssociatedConformanceWitness;
  v6 = *(AssociatedConformanceWitness + 32);
  v0[22] = v6;
  v0[23] = (AssociatedConformanceWitness + 32) & 0xFFFFFFFFFFFFLL | 0xE013000000000000;
  v14 = (v6 + *v6);
  v7 = swift_task_alloc(v6[1]);
  v0[24] = v7;
  *v7 = v0;
  v7[1] = AsyncSequence.reduce<A>(into:_:);
  v8 = v0[23];
  v10 = v0[20];
  v9 = v0[21];
  v11 = v0[18];
  v12 = v0[13];

  return v14(v12, v11, v9);
}

{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[10];
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v4 = v0[20];
    v5 = v0[17];
    v6 = v0[15];
    v7 = v0[11];
    v8 = v0[12];
    v9 = v0[7];
    v11 = v0[2];
    v10 = v0[3];
    (*(v0[19] + 8))(v4, v0[18]);
    (*(v8 + 8))(v1, v7);
    (*(*(v9 - 8) + 32))(v11, v10, v9);
    v4;
    v5;
    v6;
    v1;
    v12 = v0[1];

    return v12();
  }

  else
  {
    v14 = v0[4];
    (*(v2 + 32))(v0[15], v1, v3);
    v19 = (v14 + *v14);
    v15 = swift_task_alloc(v14[1]);
    v0[26] = v15;
    *v15 = v0;
    v15[1] = AsyncSequence.reduce<A>(into:_:);
    v16 = v0[15];
    v17 = v0[5];
    v18 = v0[3];

    return v19(v18, v16);
  }
}

{
  v1 = v0[23];
  v9 = (v0[22] + *v0[22]);
  v2 = swift_task_alloc(*(v0[22] + 4));
  v0[24] = v2;
  *v2 = v0;
  v2[1] = AsyncSequence.reduce<A>(into:_:);
  v3 = v0[23];
  v5 = v0[20];
  v4 = v0[21];
  v6 = v0[18];
  v7 = v0[13];

  return v9(v7, v6, v4);
}

{
  v1 = v0[25];
  v2 = v0[17];
  v3 = v0[15];
  v4 = v0[13];
  v0[20];
  v2;
  v3;
  v4;
  v5 = v0[1];

  return v5();
}

{
  v1 = v0[27];
  v2 = v0[17];
  v3 = v0[15];
  v4 = v0[13];
  v0[20];
  v2;
  v3;
  v4;
  v5 = v0[1];

  return v5();
}

void AsyncSequence.reduce<A>(into:_:)()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v10 = *v1;
  *(*v1 + 200) = v0;
  v3;
  if (v0)
  {
    v5 = v2[19];
    v4 = v2[20];
    v6 = v2[18];
    v7 = v2[7];
    v8 = v2[3];
    (*(v5 + 8))(v4, v6);
    (*(*(v7 - 8) + 8))(v8, v7);
    v9 = AsyncSequence.reduce<A>(into:_:);
  }

  else
  {
    v9 = AsyncSequence.reduce<A>(into:_:);
  }

  swift_task_switch(v9, 0, 0);
}

{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v13 = *v1;
  *(*v1 + 216) = v0;
  v3;
  if (v0)
  {
    v5 = v2[19];
    v4 = v2[20];
    v6 = v2[18];
    v8 = v2[14];
    v7 = v2[15];
    v9 = v2[10];
    v10 = v2[7];
    v11 = v2[3];
    (*(v8 + 8))(v7, v9);
    (*(v5 + 8))(v4, v6);
    (*(*(v10 - 8) + 8))(v11, v10);
    v12 = AsyncSequence.reduce<A>(into:_:);
  }

  else
  {
    (*(v2[14] + 8))(v2[15], v2[10]);
    v12 = AsyncSequence.reduce<A>(into:_:);
  }

  swift_task_switch(v12, 0, 0);
}

void _contains<A>(_:where:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[7] = AssociatedTypeWitness;
  v8 = *(AssociatedTypeWitness - 8);
  v5[8] = v8;
  v5[9] = swift_task_alloc((*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Optional();
  v5[10] = swift_task_alloc((*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a4 - 8);
  v5[11] = v10;
  v5[12] = swift_task_alloc((*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_getAssociatedTypeWitness();
  v5[13] = v11;
  v12 = *(v11 - 8);
  v5[14] = v12;
  v5[15] = swift_task_alloc((*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);

  swift_task_switch(_contains<A>(_:where:), 0, 0);
}

uint64_t _contains<A>(_:where:)()
{
  v1 = v0[15];
  v2 = v0[13];
  v4 = v0[5];
  v3 = v0[6];
  (*(v0[11] + 16))(v0[12], v0[2], v4);
  (*(v3 + 40))(v4, v3);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v0[16] = AssociatedConformanceWitness;
  v6 = *(AssociatedConformanceWitness + 32);
  v0[17] = v6;
  v0[18] = (AssociatedConformanceWitness + 32) & 0xFFFFFFFFFFFFLL | 0xE013000000000000;
  v14 = (v6 + *v6);
  v7 = swift_task_alloc(v6[1]);
  v0[19] = v7;
  *v7 = v0;
  v7[1] = _contains<A>(_:where:);
  v8 = v0[18];
  v10 = v0[15];
  v9 = v0[16];
  v11 = v0[13];
  v12 = v0[10];

  return v14(v12, v11, v9);
}

{
  v1 = *(v0 + 80);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = (*(v3 + 48))(v1, 1, v2);
  *(v0 + 184) = v4;
  if (v4 == 1)
  {
    v5 = *(v0 + 120);
    v6 = *(v0 + 96);
    v7 = *(v0 + 72);
    (*(*(v0 + 112) + 8))(v5, *(v0 + 104));
    v5;
    v6;
    v1;
    v7;
    v8 = *(v0 + 8);
    v9 = *(v0 + 184) != 1;

    return v8(v9);
  }

  else
  {
    v11 = *(v0 + 24);
    (*(v3 + 32))(*(v0 + 72), v1, v2);
    v15 = (v11 + *v11);
    v12 = swift_task_alloc(v11[1]);
    *(v0 + 168) = v12;
    *v12 = v0;
    v12[1] = _contains<A>(_:where:);
    v13 = *(v0 + 72);
    v14 = *(v0 + 32);

    return v15(v13);
  }
}

{
  if (*(v0 + 188))
  {
    v1 = *(v0 + 120);
    v2 = *(v0 + 96);
    v4 = *(v0 + 72);
    v3 = *(v0 + 80);
    (*(*(v0 + 112) + 8))(v1, *(v0 + 104));
    v1;
    v2;
    v3;
    v4;
    v5 = *(v0 + 8);
    v6 = *(v0 + 184) != 1;

    return v5(v6);
  }

  else
  {
    v8 = *(v0 + 144);
    v15 = (*(v0 + 136) + **(v0 + 136));
    v9 = swift_task_alloc(*(*(v0 + 136) + 4));
    *(v0 + 152) = v9;
    *v9 = v0;
    v9[1] = _contains<A>(_:where:);
    v10 = *(v0 + 144);
    v12 = *(v0 + 120);
    v11 = *(v0 + 128);
    v13 = *(v0 + 104);
    v14 = *(v0 + 80);

    return v15(v14, v13, v11);
  }
}

void _contains<A>(_:where:)()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 160) = v0;
  v3;
  if (v0)
  {
    (*(v2[14] + 8))(v2[15], v2[13]);
    v4 = _contains<A>(_:where:);
  }

  else
  {
    v4 = _contains<A>(_:where:);
  }

  swift_task_switch(v4, 0, 0);
}

void _contains<A>(_:where:)(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 168);
  v13 = *v2;
  *(*v2 + 176) = v1;
  v5;
  if (v1)
  {
    v7 = *(v4 + 112);
    v6 = *(v4 + 120);
    v8 = *(v4 + 104);
    (*(*(v4 + 64) + 8))(*(v4 + 72), *(v4 + 56));
    (*(v7 + 8))(v6, v8);
    v9 = _contains<A>(_:where:);
  }

  else
  {
    v11 = *(v4 + 64);
    v10 = *(v4 + 72);
    v12 = *(v4 + 56);
    *(v4 + 188) = a1 & 1;
    (*(v11 + 8))(v10, v12);
    v9 = _contains<A>(_:where:);
  }

  swift_task_switch(v9, 0, 0);
}

void AsyncSequence.contains(where:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[7] = AssociatedTypeWitness;
  v8 = *(AssociatedTypeWitness - 8);
  v5[8] = v8;
  v5[9] = swift_task_alloc((*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Optional();
  v5[10] = swift_task_alloc((*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 - 8);
  v5[11] = v10;
  v5[12] = swift_task_alloc((*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_getAssociatedTypeWitness();
  v5[13] = v11;
  v12 = *(v11 - 8);
  v5[14] = v12;
  v5[15] = swift_task_alloc((*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);

  swift_task_switch(AsyncSequence.contains(where:), 0, 0);
}

uint64_t AsyncSequence.contains(where:)()
{
  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[5];
  v4 = v0[4];
  (*(v0[11] + 16))(v0[12], v0[6], v4);
  (*(v3 + 40))(v4, v3);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v0[16] = AssociatedConformanceWitness;
  v6 = *(AssociatedConformanceWitness + 32);
  v0[17] = v6;
  v0[18] = (AssociatedConformanceWitness + 32) & 0xFFFFFFFFFFFFLL | 0xE013000000000000;
  v14 = (v6 + *v6);
  v7 = swift_task_alloc(v6[1]);
  v0[19] = v7;
  *v7 = v0;
  v7[1] = AsyncSequence.contains(where:);
  v8 = v0[18];
  v10 = v0[15];
  v9 = v0[16];
  v11 = v0[13];
  v12 = v0[10];

  return v14(v12, v11, v9);
}

{
  v1 = *(v0 + 80);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = (*(v3 + 48))(v1, 1, v2);
  *(v0 + 184) = v4;
  if (v4 == 1)
  {
    v5 = *(v0 + 120);
    v6 = *(v0 + 96);
    v7 = *(v0 + 72);
    (*(*(v0 + 112) + 8))(v5, *(v0 + 104));
    v5;
    v6;
    v1;
    v7;
    v8 = *(v0 + 8);
    v9 = *(v0 + 184) != 1;

    return v8(v9);
  }

  else
  {
    v11 = *(v0 + 16);
    (*(v3 + 32))(*(v0 + 72), v1, v2);
    v15 = (v11 + *v11);
    v12 = swift_task_alloc(v11[1]);
    *(v0 + 168) = v12;
    *v12 = v0;
    v12[1] = AsyncSequence.contains(where:);
    v13 = *(v0 + 72);
    v14 = *(v0 + 24);

    return v15(v13);
  }
}

{
  v1 = v0[20];
  v2 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v0[15];
  v2;
  v3;
  v4;
  v5 = v0[1];

  return v5(0);
}

{
  if (*(v0 + 188))
  {
    v1 = *(v0 + 120);
    v2 = *(v0 + 96);
    v4 = *(v0 + 72);
    v3 = *(v0 + 80);
    (*(*(v0 + 112) + 8))(v1, *(v0 + 104));
    v1;
    v2;
    v3;
    v4;
    v5 = *(v0 + 8);
    v6 = *(v0 + 184) != 1;

    return v5(v6);
  }

  else
  {
    v8 = *(v0 + 144);
    v15 = (*(v0 + 136) + **(v0 + 136));
    v9 = swift_task_alloc(*(*(v0 + 136) + 4));
    *(v0 + 152) = v9;
    *v9 = v0;
    v9[1] = AsyncSequence.contains(where:);
    v10 = *(v0 + 144);
    v12 = *(v0 + 120);
    v11 = *(v0 + 128);
    v13 = *(v0 + 104);
    v14 = *(v0 + 80);

    return v15(v14, v13, v11);
  }
}

{
  v1 = v0[22];
  v2 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v0[15];
  v2;
  v3;
  v4;
  v5 = v0[1];

  return v5(0);
}

void AsyncSequence.contains(where:)()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 160) = v0;
  v3;
  if (v0)
  {
    (*(v2[14] + 8))(v2[15], v2[13]);
    v4 = AsyncSequence.contains(where:);
  }

  else
  {
    v4 = AsyncSequence.contains(where:);
  }

  swift_task_switch(v4, 0, 0);
}

void AsyncSequence.contains(where:)(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 168);
  v13 = *v2;
  *(*v2 + 176) = v1;
  v5;
  if (v1)
  {
    v7 = *(v4 + 112);
    v6 = *(v4 + 120);
    v8 = *(v4 + 104);
    (*(*(v4 + 64) + 8))(*(v4 + 72), *(v4 + 56));
    (*(v7 + 8))(v6, v8);
    v9 = AsyncSequence.contains(where:);
  }

  else
  {
    v11 = *(v4 + 64);
    v10 = *(v4 + 72);
    v12 = *(v4 + 56);
    *(v4 + 188) = a1 & 1;
    (*(v11 + 8))(v10, v12);
    v9 = AsyncSequence.contains(where:);
  }

  swift_task_switch(v9, 0, 0);
}

void AsyncSequence.allSatisfy(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  swift_task_switch(AsyncSequence.allSatisfy(_:), 0, 0);
}

void AsyncSequence.allSatisfy(_:)()
{
  v1 = swift_task_alloc(48);
  *(v0 + 56) = v1;
  v2 = *(v0 + 16);
  *(v1 + 16) = *(v0 + 32);
  *(v1 + 32) = v2;
  v3 = swift_task_alloc(192);
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = AsyncSequence.allSatisfy(_:);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 32);

  AsyncSequence.contains(where:)(&async function pointer to partial apply for closure #1 in AsyncSequence.allSatisfy(_:), v1, v6, v4);
}

void AsyncSequence.allSatisfy(_:)(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  *(*v2 + 72) = v1;
  v5;
  if (v1)
  {

    swift_task_switch(AsyncSequence.allSatisfy(_:), 0, 0);
  }

  else
  {
    *(v4 + 56);
    v7 = *(v6 + 8);

    v7((a1 & 1) == 0);
  }
}

uint64_t AsyncSequence.allSatisfy(_:)()
{
  v0[7];
  v1 = v0[1];
  v2 = v0[9];

  return v1(0);
}

uint64_t closure #1 in AsyncSequence.allSatisfy(_:)(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc(a2[1]);
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = closure #1 in AsyncSequence.allSatisfy(_:);

  return v6(a1);
}

uint64_t closure #1 in AsyncSequence.allSatisfy(_:)(char a1)
{
  v4 = *(*v2 + 16);
  v5 = *v2;
  v4;
  v6 = *(v5 + 8);
  if (v1)
  {
    v7 = 0;
  }

  else
  {
    v7 = (a1 & 1) == 0;
  }

  return v6(v7);
}

void AsyncSequence<>.contains(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[7] = AssociatedTypeWitness;
  v8 = *(AssociatedTypeWitness - 8);
  v5[8] = v8;
  v5[9] = swift_task_alloc((*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Optional();
  v5[10] = swift_task_alloc((*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 - 8);
  v5[11] = v10;
  v5[12] = swift_task_alloc((*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_getAssociatedTypeWitness();
  v5[13] = v11;
  v12 = *(v11 - 8);
  v5[14] = v12;
  v5[15] = swift_task_alloc((*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);

  swift_task_switch(AsyncSequence<>.contains(_:), 0, 0);
}

uint64_t AsyncSequence<>.contains(_:)()
{
  v1 = v0[15];
  v2 = v0[13];
  v4 = v0[3];
  v3 = v0[4];
  (*(v0[11] + 16))(v0[12], v0[6], v4);
  (*(v3 + 40))(v4, v3);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v0[16] = AssociatedConformanceWitness;
  v6 = *(AssociatedConformanceWitness + 32);
  v0[17] = v6;
  v0[18] = (AssociatedConformanceWitness + 32) & 0xFFFFFFFFFFFFLL | 0xE013000000000000;
  v14 = (v6 + *v6);
  v7 = swift_task_alloc(v6[1]);
  v0[19] = v7;
  *v7 = v0;
  v7[1] = AsyncSequence<>.contains(_:);
  v8 = v0[18];
  v10 = v0[15];
  v9 = v0[16];
  v11 = v0[13];
  v12 = v0[10];

  return v14(v12, v11, v9);
}

{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  v4 = (*(v3 + 48))(v1, 1, v2);
  if (v4 == 1)
  {
LABEL_4:
    v9 = v0[15];
    v10 = v0[12];
    v11 = v0[9];
    (*(v0[14] + 8))(v9, v0[13]);
    v9;
    v10;
    v1;
    v11;
    v12 = v0[1];

    return v12(v4 != 1);
  }

  v5 = v0[9];
  v6 = v0[5];
  v7 = v0[2];
  (*(v3 + 32))(v5, v1, v2);
  v8 = dispatch thunk of static Equatable.== infix(_:_:)();
  (*(v3 + 8))(v5, v2);
  if (v8)
  {
    v1 = v0[10];
    goto LABEL_4;
  }

  v14 = v0[18];
  v21 = (v0[17] + *v0[17]);
  v15 = swift_task_alloc(*(v0[17] + 4));
  v0[19] = v15;
  *v15 = v0;
  v15[1] = AsyncSequence<>.contains(_:);
  v16 = v0[18];
  v18 = v0[15];
  v17 = v0[16];
  v19 = v0[13];
  v20 = v0[10];

  return v21(v20, v19, v17);
}

{
  v1 = v0[12];
  v3 = v0[9];
  v2 = v0[10];
  v0[15];
  v1;
  v2;
  v3;
  v4 = v0[1];
  v5 = v0[20];

  return v4(0);
}

void AsyncSequence<>.contains(_:)()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 160) = v0;
  v3;
  if (v0)
  {
    (*(v2[14] + 8))(v2[15], v2[13]);
    v4 = AsyncSequence<>.contains(_:);
  }

  else
  {
    v4 = AsyncSequence<>.contains(_:);
  }

  swift_task_switch(v4, 0, 0);
}

void _first<A>(_:where:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[8] = AssociatedTypeWitness;
  v9 = *(AssociatedTypeWitness - 8);
  v6[9] = v9;
  v6[10] = swift_task_alloc((*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Optional();
  v6[11] = swift_task_alloc((*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a5 - 8);
  v6[12] = v11;
  v6[13] = swift_task_alloc((*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_getAssociatedTypeWitness();
  v6[14] = v12;
  v13 = *(v12 - 8);
  v6[15] = v13;
  v6[16] = swift_task_alloc((*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);

  swift_task_switch(_first<A>(_:where:), 0, 0);
}

uint64_t _first<A>(_:where:)()
{
  v1 = v0[16];
  v2 = v0[14];
  v4 = v0[6];
  v3 = v0[7];
  (*(v0[12] + 16))(v0[13], v0[3], v4);
  (*(v3 + 40))(v4, v3);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v0[17] = AssociatedConformanceWitness;
  v6 = *(AssociatedConformanceWitness + 32);
  v0[18] = v6;
  v0[19] = (AssociatedConformanceWitness + 32) & 0xFFFFFFFFFFFFLL | 0xE013000000000000;
  v14 = (v6 + *v6);
  v7 = swift_task_alloc(v6[1]);
  v0[20] = v7;
  *v7 = v0;
  v7[1] = _first<A>(_:where:);
  v8 = v0[19];
  v10 = v0[16];
  v9 = v0[17];
  v11 = v0[14];
  v12 = v0[11];

  return v14(v12, v11, v9);
}

{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[15] + 8))(v0[16], v0[14]);
    v4 = v0[16];
    v5 = v0[13];
    v7 = v0[10];
    v6 = v0[11];
    (*(v0[9] + 56))(v0[2], 1, 1, v0[8]);
    v4;
    v5;
    v6;
    v7;
    v8 = v0[1];

    return v8();
  }

  else
  {
    v10 = v0[10];
    v11 = v0[4];
    v12 = *(v3 + 32);
    v0[22] = v12;
    v0[23] = (v3 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v12(v10, v1, v2);
    v16 = (v11 + *v11);
    v13 = swift_task_alloc(v11[1]);
    v0[24] = v13;
    *v13 = v0;
    v13[1] = _first<A>(_:where:);
    v14 = v0[10];
    v15 = v0[5];

    return v16(v14);
  }
}

{
  if (*(v0 + 208) == 1)
  {
    v2 = *(v0 + 176);
    v1 = *(v0 + 184);
    v3 = *(v0 + 80);
    v4 = *(v0 + 64);
    v5 = *(v0 + 16);
    (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));
    v2(v5, v3, v4);
    v6 = *(v0 + 128);
    v7 = *(v0 + 104);
    v9 = *(v0 + 80);
    v8 = *(v0 + 88);
    (*(*(v0 + 72) + 56))(*(v0 + 16), 0, 1, *(v0 + 64));
    v6;
    v7;
    v8;
    v9;
    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));
    v12 = *(v0 + 152);
    v19 = (*(v0 + 144) + **(v0 + 144));
    v13 = swift_task_alloc(*(*(v0 + 144) + 4));
    *(v0 + 160) = v13;
    *v13 = v0;
    v13[1] = _first<A>(_:where:);
    v14 = *(v0 + 152);
    v16 = *(v0 + 128);
    v15 = *(v0 + 136);
    v17 = *(v0 + 112);
    v18 = *(v0 + 88);

    return v19(v18, v17, v15);
  }
}

void _first<A>(_:where:)()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v5 = *v1;
  *(*v1 + 168) = v0;
  v3;
  if (v0)
  {
    (*(v2[15] + 8))(v2[16], v2[14]);
    v4 = _first<A>(_:where:);
  }

  else
  {
    v4 = _first<A>(_:where:);
  }

  swift_task_switch(v4, 0, 0);
}

void _first<A>(_:where:)(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 192);
  v10 = *v2;
  *(*v2 + 200) = v1;
  v5;
  if (v1)
  {
    v7 = *(v4 + 120);
    v6 = *(v4 + 128);
    v8 = *(v4 + 112);
    (*(*(v4 + 72) + 8))(*(v4 + 80), *(v4 + 64));
    (*(v7 + 8))(v6, v8);
    v9 = _first<A>(_:where:);
  }

  else
  {
    *(v4 + 208) = a1 & 1;
    v9 = _first<A>(_:where:);
  }

  swift_task_switch(v9, 0, 0);
}

void AsyncSequence.first(where:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[8] = AssociatedTypeWitness;
  v9 = *(AssociatedTypeWitness - 8);
  v6[9] = v9;
  v6[10] = swift_task_alloc((*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Optional();
  v6[11] = swift_task_alloc((*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a4 - 8);
  v6[12] = v11;
  v6[13] = swift_task_alloc((*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_getAssociatedTypeWitness();
  v6[14] = v12;
  v13 = *(v12 - 8);
  v6[15] = v13;
  v6[16] = swift_task_alloc((*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);

  swift_task_switch(AsyncSequence.first(where:), 0, 0);
}

uint64_t AsyncSequence.first(where:)()
{
  v1 = v0[16];
  v2 = v0[14];
  v3 = v0[6];
  v4 = v0[5];
  (*(v0[12] + 16))(v0[13], v0[7], v4);
  (*(v3 + 40))(v4, v3);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v0[17] = AssociatedConformanceWitness;
  v6 = *(AssociatedConformanceWitness + 32);
  v0[18] = v6;
  v0[19] = (AssociatedConformanceWitness + 32) & 0xFFFFFFFFFFFFLL | 0xE013000000000000;
  v14 = (v6 + *v6);
  v7 = swift_task_alloc(v6[1]);
  v0[20] = v7;
  *v7 = v0;
  v7[1] = AsyncSequence.first(where:);
  v8 = v0[19];
  v10 = v0[16];
  v9 = v0[17];
  v11 = v0[14];
  v12 = v0[11];

  return v14(v12, v11, v9);
}

{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[15] + 8))(v0[16], v0[14]);
    v4 = v0[16];
    v5 = v0[13];
    v7 = v0[10];
    v6 = v0[11];
    (*(v0[9] + 56))(v0[2], 1, 1, v0[8]);
    v4;
    v5;
    v6;
    v7;
    v8 = v0[1];

    return v8();
  }

  else
  {
    v10 = v0[10];
    v11 = v0[3];
    v12 = *(v3 + 32);
    v0[22] = v12;
    v0[23] = (v3 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v12(v10, v1, v2);
    v16 = (v11 + *v11);
    v13 = swift_task_alloc(v11[1]);
    v0[24] = v13;
    *v13 = v0;
    v13[1] = AsyncSequence.first(where:);
    v14 = v0[10];
    v15 = v0[4];

    return v16(v14);
  }
}

{
  v1 = v0[21];
  v2 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v0[16];
  v2;
  v3;
  v4;
  v5 = v0[1];

  return v5();
}

{
  if (*(v0 + 208) == 1)
  {
    v2 = *(v0 + 176);
    v1 = *(v0 + 184);
    v3 = *(v0 + 80);
    v4 = *(v0 + 64);
    v5 = *(v0 + 16);
    (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));
    v2(v5, v3, v4);
    v6 = *(v0 + 128);
    v7 = *(v0 + 104);
    v9 = *(v0 + 80);
    v8 = *(v0 + 88);
    (*(*(v0 + 72) + 56))(*(v0 + 16), 0, 1, *(v0 + 64));
    v6;
    v7;
    v8;
    v9;
    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));
    v12 = *(v0 + 152);
    v19 = (*(v0 + 144) + **(v0 + 144));
    v13 = swift_task_alloc(*(*(v0 + 144) + 4));
    *(v0 + 160) = v13;
    *v13 = v0;
    v13[1] = AsyncSequence.first(where:);
    v14 = *(v0 + 152);
    v16 = *(v0 + 128);
    v15 = *(v0 + 136);
    v17 = *(v0 + 112);
    v18 = *(v0 + 88);

    return v19(v18, v17, v15);
  }
}

{
  v1 = v0[25];
  v2 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v0[16];
  v2;
  v3;
  v4;
  v5 = v0[1];

  return v5();
}

void AsyncSequence.first(where:)()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v5 = *v1;
  *(*v1 + 168) = v0;
  v3;
  if (v0)
  {
    (*(v2[15] + 8))(v2[16], v2[14]);
    v4 = AsyncSequence.first(where:);
  }

  else
  {
    v4 = AsyncSequence.first(where:);
  }

  swift_task_switch(v4, 0, 0);
}

void AsyncSequence.first(where:)(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 192);
  v10 = *v2;
  *(*v2 + 200) = v1;
  v5;
  if (v1)
  {
    v7 = *(v4 + 120);
    v6 = *(v4 + 128);
    v8 = *(v4 + 112);
    (*(*(v4 + 72) + 8))(*(v4 + 80), *(v4 + 64));
    (*(v7 + 8))(v6, v8);
    v9 = AsyncSequence.first(where:);
  }

  else
  {
    *(v4 + 208) = a1 & 1;
    v9 = AsyncSequence.first(where:);
  }

  swift_task_switch(v9, 0, 0);
}

void AsyncSequence.min(by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[8] = AssociatedTypeWitness;
  v9 = type metadata accessor for Optional();
  v6[9] = v9;
  v10 = *(v9 - 8);
  v6[10] = v10;
  v11 = *(v10 + 64) + 15;
  v6[11] = swift_task_alloc(v11 & 0xFFFFFFFFFFFFFFF0);
  v6[12] = swift_task_alloc(v11 & 0xFFFFFFFFFFFFFFF0);
  v12 = *(AssociatedTypeWitness - 8);
  v6[13] = v12;
  v13 = *(v12 + 64) + 15;
  v6[14] = swift_task_alloc(v13 & 0xFFFFFFFFFFFFFFF0);
  v6[15] = swift_task_alloc(v13 & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a4 - 8);
  v6[16] = v14;
  v6[17] = swift_task_alloc((*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_getAssociatedTypeWitness();
  v6[18] = v15;
  v16 = *(v15 - 8);
  v6[19] = v16;
  v6[20] = swift_task_alloc((*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);

  swift_task_switch(AsyncSequence.min(by:), 0, 0);
}

uint64_t AsyncSequence.min(by:)()
{
  v1 = v0[20];
  v2 = v0[18];
  v3 = v0[6];
  v4 = v0[5];
  (*(v0[16] + 16))(v0[17], v0[7], v4);
  (*(v3 + 40))(v4, v3);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v0[21] = AssociatedConformanceWitness;
  v6 = *(AssociatedConformanceWitness + 32);
  v0[22] = v6;
  v0[23] = (AssociatedConformanceWitness + 32) & 0xFFFFFFFFFFFFLL | 0xE013000000000000;
  v12 = (v6 + *v6);
  v7 = swift_task_alloc(v6[1]);
  v0[24] = v7;
  *v7 = v0;
  v7[1] = AsyncSequence.min(by:);
  v8 = v0[20];
  v9 = v0[18];
  v10 = v0[12];

  return v12(v10, v9, AssociatedConformanceWitness);
}

{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[8];
  v4 = *(v2 + 48);
  v0[26] = v4;
  v0[27] = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v1, 1, v3) == 1)
  {
    v5 = v0[9];
    v6 = v0[10];
    v7 = v0[2];
    (*(v0[19] + 8))(v0[20], v0[18]);
    (*(v6 + 8))(v1, v5);
    (*(v2 + 56))(v7, 1, 1, v3);
    v8 = v0[17];
    v10 = v0[14];
    v9 = v0[15];
    v12 = v0[11];
    v11 = v0[12];
    v0[20];
    v8;
    v9;
    v10;
    v11;
    v12;
    v13 = v0[1];

    return v13();
  }

  else
  {
    v15 = v0[15];
    v16 = *(v2 + 32);
    v0[28] = v16;
    v0[29] = (v2 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v16(v15, v1, v3);
    v17 = v0[23];
    v24 = (v0[22] + *v0[22]);
    v18 = swift_task_alloc(*(v0[22] + 4));
    v0[30] = v18;
    *v18 = v0;
    v18[1] = AsyncSequence.min(by:);
    v19 = v0[23];
    v21 = v0[20];
    v20 = v0[21];
    v22 = v0[18];
    v23 = v0[11];

    return v24(v23, v22, v20);
  }
}

{
  v1 = *(v0 + 216);
  v2 = *(v0 + 88);
  v3 = *(v0 + 64);
  if ((*(v0 + 208))(v2, 1, v3) == 1)
  {
    v5 = *(v0 + 224);
    v4 = *(v0 + 232);
    v6 = *(v0 + 120);
    v7 = *(v0 + 104);
    v8 = *(v0 + 72);
    v9 = *(v0 + 80);
    v10 = *(v0 + 16);
    (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));
    (*(v9 + 8))(v2, v8);
    v5(v10, v6, v3);
    (*(v7 + 56))(v10, 0, 1, v3);
    v11 = *(v0 + 136);
    v13 = *(v0 + 112);
    v12 = *(v0 + 120);
    v15 = *(v0 + 88);
    v14 = *(v0 + 96);
    *(v0 + 160);
    v11;
    v12;
    v13;
    v14;
    v15;
    v16 = *(v0 + 8);

    return v16();
  }

  else
  {
    v18 = *(v0 + 232);
    v19 = *(v0 + 24);
    (*(v0 + 224))(*(v0 + 112), v2, v3);
    v24 = (v19 + *v19);
    v20 = swift_task_alloc(v19[1]);
    *(v0 + 256) = v20;
    *v20 = v0;
    v20[1] = AsyncSequence.min(by:);
    v22 = *(v0 + 112);
    v21 = *(v0 + 120);
    v23 = *(v0 + 32);

    return v24(v22, v21);
  }
}

{
  v1 = *(*(v0 + 104) + 8);
  if (*(v0 + 272))
  {
    v3 = *(v0 + 224);
    v2 = *(v0 + 232);
    v4 = *(v0 + 112);
    v5 = *(v0 + 120);
    v6 = *(v0 + 64);
    v1(v5, v6);
    v3(v5, v4, v6);
  }

  else
  {
    v1(*(v0 + 112), *(v0 + 64));
  }

  v7 = *(v0 + 184);
  v15 = (*(v0 + 176) + **(v0 + 176));
  v8 = swift_task_alloc(*(*(v0 + 176) + 4));
  *(v0 + 240) = v8;
  *v8 = v0;
  v8[1] = AsyncSequence.min(by:);
  v9 = *(v0 + 184);
  v11 = *(v0 + 160);
  v10 = *(v0 + 168);
  v12 = *(v0 + 144);
  v13 = *(v0 + 88);

  return v15(v13, v12, v10);
}

void AsyncSequence.min(by:)()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v5 = *v1;
  *(*v1 + 200) = v0;
  v3;
  if (v0)
  {
    (*(v2[19] + 8))(v2[20], v2[18]);
    v4 = AsyncSequence.min(by:);
  }

  else
  {
    v4 = AsyncSequence.min(by:);
  }

  swift_task_switch(v4, 0, 0);
}

{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v8 = *v1;
  *(*v1 + 248) = v0;
  v3;
  if (v0)
  {
    v5 = v2[19];
    v4 = v2[20];
    v6 = v2[18];
    (*(v2[13] + 8))(v2[15], v2[8]);
    (*(v5 + 8))(v4, v6);
    v7 = AsyncSequence.min(by:);
  }

  else
  {
    v7 = AsyncSequence.min(by:);
  }

  swift_task_switch(v7, 0, 0);
}

void AsyncSequence.min(by:)(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 256);
  v15 = *v2;
  *(*v2 + 264) = v1;
  v5;
  if (v1)
  {
    v7 = *(v4 + 152);
    v6 = *(v4 + 160);
    v8 = *(v4 + 144);
    v9 = *(v4 + 112);
    v10 = *(v4 + 120);
    v11 = *(v4 + 104);
    v12 = *(v4 + 64);
    v13 = *(v11 + 8);
    v13(v9, v12);
    v13(v10, v12);
    (*(v7 + 8))(v6, v8);
    v14 = AsyncSequence.min(by:);
  }

  else
  {
    *(v4 + 272) = a1 & 1;
    v14 = AsyncSequence.min(by:);
  }

  swift_task_switch(v14, 0, 0);
}

void AsyncSequence.max(by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[8] = AssociatedTypeWitness;
  v9 = type metadata accessor for Optional();
  v6[9] = v9;
  v10 = *(v9 - 8);
  v6[10] = v10;
  v11 = *(v10 + 64) + 15;
  v6[11] = swift_task_alloc(v11 & 0xFFFFFFFFFFFFFFF0);
  v6[12] = swift_task_alloc(v11 & 0xFFFFFFFFFFFFFFF0);
  v12 = *(AssociatedTypeWitness - 8);
  v6[13] = v12;
  v13 = *(v12 + 64) + 15;
  v6[14] = swift_task_alloc(v13 & 0xFFFFFFFFFFFFFFF0);
  v6[15] = swift_task_alloc(v13 & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a4 - 8);
  v6[16] = v14;
  v6[17] = swift_task_alloc((*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_getAssociatedTypeWitness();
  v6[18] = v15;
  v16 = *(v15 - 8);
  v6[19] = v16;
  v6[20] = swift_task_alloc((*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);

  swift_task_switch(AsyncSequence.max(by:), 0, 0);
}

uint64_t AsyncSequence.max(by:)()
{
  v1 = v0[20];
  v2 = v0[18];
  v3 = v0[6];
  v4 = v0[5];
  (*(v0[16] + 16))(v0[17], v0[7], v4);
  (*(v3 + 40))(v4, v3);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v0[21] = AssociatedConformanceWitness;
  v6 = *(AssociatedConformanceWitness + 32);
  v0[22] = v6;
  v0[23] = (AssociatedConformanceWitness + 32) & 0xFFFFFFFFFFFFLL | 0xE013000000000000;
  v12 = (v6 + *v6);
  v7 = swift_task_alloc(v6[1]);
  v0[24] = v7;
  *v7 = v0;
  v7[1] = AsyncSequence.max(by:);
  v8 = v0[20];
  v9 = v0[18];
  v10 = v0[12];

  return v12(v10, v9, AssociatedConformanceWitness);
}

{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[8];
  v4 = *(v2 + 48);
  v0[26] = v4;
  v0[27] = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v1, 1, v3) == 1)
  {
    v5 = v0[9];
    v6 = v0[10];
    v7 = v0[2];
    (*(v0[19] + 8))(v0[20], v0[18]);
    (*(v6 + 8))(v1, v5);
    (*(v2 + 56))(v7, 1, 1, v3);
    v8 = v0[17];
    v10 = v0[14];
    v9 = v0[15];
    v12 = v0[11];
    v11 = v0[12];
    v0[20];
    v8;
    v9;
    v10;
    v11;
    v12;
    v13 = v0[1];

    return v13();
  }

  else
  {
    v15 = v0[15];
    v16 = *(v2 + 32);
    v0[28] = v16;
    v0[29] = (v2 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v16(v15, v1, v3);
    v17 = v0[23];
    v24 = (v0[22] + *v0[22]);
    v18 = swift_task_alloc(*(v0[22] + 4));
    v0[30] = v18;
    *v18 = v0;
    v18[1] = AsyncSequence.max(by:);
    v19 = v0[23];
    v21 = v0[20];
    v20 = v0[21];
    v22 = v0[18];
    v23 = v0[11];

    return v24(v23, v22, v20);
  }
}

{
  v1 = *(v0 + 216);
  v2 = *(v0 + 88);
  v3 = *(v0 + 64);
  if ((*(v0 + 208))(v2, 1, v3) == 1)
  {
    v5 = *(v0 + 224);
    v4 = *(v0 + 232);
    v6 = *(v0 + 120);
    v7 = *(v0 + 104);
    v8 = *(v0 + 72);
    v9 = *(v0 + 80);
    v10 = *(v0 + 16);
    (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));
    (*(v9 + 8))(v2, v8);
    v5(v10, v6, v3);
    (*(v7 + 56))(v10, 0, 1, v3);
    v11 = *(v0 + 136);
    v13 = *(v0 + 112);
    v12 = *(v0 + 120);
    v15 = *(v0 + 88);
    v14 = *(v0 + 96);
    *(v0 + 160);
    v11;
    v12;
    v13;
    v14;
    v15;
    v16 = *(v0 + 8);

    return v16();
  }

  else
  {
    v18 = *(v0 + 232);
    v19 = *(v0 + 24);
    (*(v0 + 224))(*(v0 + 112), v2, v3);
    v24 = (v19 + *v19);
    v20 = swift_task_alloc(v19[1]);
    *(v0 + 256) = v20;
    *v20 = v0;
    v20[1] = AsyncSequence.max(by:);
    v21 = *(v0 + 112);
    v22 = *(v0 + 120);
    v23 = *(v0 + 32);

    return v24(v22, v21);
  }
}

{
  v1 = *(*(v0 + 104) + 8);
  if (*(v0 + 272))
  {
    v3 = *(v0 + 224);
    v2 = *(v0 + 232);
    v4 = *(v0 + 112);
    v5 = *(v0 + 120);
    v6 = *(v0 + 64);
    v1(v5, v6);
    v3(v5, v4, v6);
  }

  else
  {
    v1(*(v0 + 112), *(v0 + 64));
  }

  v7 = *(v0 + 184);
  v15 = (*(v0 + 176) + **(v0 + 176));
  v8 = swift_task_alloc(*(*(v0 + 176) + 4));
  *(v0 + 240) = v8;
  *v8 = v0;
  v8[1] = AsyncSequence.max(by:);
  v9 = *(v0 + 184);
  v11 = *(v0 + 160);
  v10 = *(v0 + 168);
  v12 = *(v0 + 144);
  v13 = *(v0 + 88);

  return v15(v13, v12, v10);
}

{
  v1 = v0[25];
  v2 = v0[17];
  v4 = v0[14];
  v3 = v0[15];
  v6 = v0[11];
  v5 = v0[12];
  v0[20];
  v2;
  v3;
  v4;
  v5;
  v6;
  v7 = v0[1];

  return v7();
}

{
  v1 = v0[31];
  v2 = v0[17];
  v4 = v0[14];
  v3 = v0[15];
  v6 = v0[11];
  v5 = v0[12];
  v0[20];
  v2;
  v3;
  v4;
  v5;
  v6;
  v7 = v0[1];

  return v7();
}

{
  v1 = v0[33];
  v2 = v0[17];
  v4 = v0[14];
  v3 = v0[15];
  v6 = v0[11];
  v5 = v0[12];
  v0[20];
  v2;
  v3;
  v4;
  v5;
  v6;
  v7 = v0[1];

  return v7();
}

void AsyncSequence.max(by:)()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v5 = *v1;
  *(*v1 + 200) = v0;
  v3;
  if (v0)
  {
    (*(v2[19] + 8))(v2[20], v2[18]);
    v4 = AsyncSequence.max(by:);
  }

  else
  {
    v4 = AsyncSequence.max(by:);
  }

  swift_task_switch(v4, 0, 0);
}

{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v8 = *v1;
  *(*v1 + 248) = v0;
  v3;
  if (v0)
  {
    v5 = v2[19];
    v4 = v2[20];
    v6 = v2[18];
    (*(v2[13] + 8))(v2[15], v2[8]);
    (*(v5 + 8))(v4, v6);
    v7 = AsyncSequence.max(by:);
  }

  else
  {
    v7 = AsyncSequence.max(by:);
  }

  swift_task_switch(v7, 0, 0);
}

void AsyncSequence.max(by:)(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 256);
  v15 = *v2;
  *(*v2 + 264) = v1;
  v5;
  if (v1)
  {
    v7 = *(v4 + 152);
    v6 = *(v4 + 160);
    v8 = *(v4 + 144);
    v9 = *(v4 + 112);
    v10 = *(v4 + 120);
    v11 = *(v4 + 104);
    v12 = *(v4 + 64);
    v13 = *(v11 + 8);
    v13(v9, v12);
    v13(v10, v12);
    (*(v7 + 8))(v6, v8);
    v14 = AsyncSequence.max(by:);
  }

  else
  {
    *(v4 + 272) = a1 & 1;
    v14 = AsyncSequence.max(by:);
  }

  swift_task_switch(v14, 0, 0);
}

void AsyncSequence<>.min()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  swift_task_switch(AsyncSequence<>.min(), 0, 0);
}

void AsyncSequence<>.min()()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = swift_allocObject();
  v0[7] = v5;
  v5[2] = v3;
  v5[3] = v1;
  v5[4] = v2;
  v5[5] = AssociatedTypeWitness;
  v6 = swift_task_alloc(64);
  v0[8] = v6;
  v6[2] = v3;
  v6[3] = v1;
  v6[4] = v2;
  v6[5] = partial apply for implicit closure #1 in AsyncSequence<>.min();
  v6[6] = v5;
  v7 = swift_task_alloc(288);
  v0[9] = v7;
  *v7 = v0;
  v7[1] = AsyncSequence<>.min();
  v8 = v0[6];
  v9 = v0[3];
  v10 = v0[4];
  v11 = v0[2];

  AsyncSequence.min(by:)(v11, &async function pointer to partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A.AsyncSequence.Element, @in_guaranteed A.AsyncSequence.Element) -> (@unowned Bool), v6, v9, v10);
}

{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;
  v2;
  if (v0)
  {

    swift_task_switch(AsyncSequence<>.min(), 0, 0);
  }

  else
  {
    v4 = v3[7];
    v5 = v3[8];

    v5;
    v6 = v3[1];

    v6();
  }
}

uint64_t thunk for @escaping @callee_guaranteed (@in_guaranteed A.AsyncSequence.Element, @in_guaranteed A.AsyncSequence.Element) -> (@unowned Bool)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3();
  v5 = *(v3 + 8);
  v6 = v4 & 1;

  return v5(v6);
}

void AsyncSequence<>.max()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  swift_task_switch(AsyncSequence<>.max(), 0, 0);
}

void AsyncSequence<>.max()()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = swift_allocObject();
  v0[7] = v5;
  v5[2] = v3;
  v5[3] = v1;
  v5[4] = v2;
  v5[5] = AssociatedTypeWitness;
  v6 = swift_task_alloc(64);
  v0[8] = v6;
  v6[2] = v3;
  v6[3] = v1;
  v6[4] = v2;
  v6[5] = partial apply for implicit closure #1 in AsyncSequence<>.max();
  v6[6] = v5;
  v7 = swift_task_alloc(288);
  v0[9] = v7;
  *v7 = v0;
  v7[1] = AsyncSequence<>.max();
  v8 = v0[6];
  v9 = v0[3];
  v10 = v0[4];
  v11 = v0[2];

  AsyncSequence.max(by:)(v11, &thunk for @escaping @callee_guaranteed (@in_guaranteed A.AsyncSequence.Element, @in_guaranteed A.AsyncSequence.Element) -> (@unowned Bool)partial apply, v6, v9, v10);
}

{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;
  v2;
  if (v0)
  {

    swift_task_switch(AsyncSequence<>.max(), 0, 0);
  }

  else
  {
    v4 = v3[7];
    v5 = v3[8];

    v5;
    v6 = v3[1];

    v6();
  }
}

uint64_t AsyncSequence<>.max()()
{
  v1 = v0[7];
  v2 = v0[8];

  v2;
  v3 = v0[1];
  v4 = v0[10];

  return v3();
}

uint64_t (*AsyncThrowingCompactMapSequence.Iterator.finished.modify(uint64_t a1, uint64_t a2))()
{
  result = UnownedSerialExecutor.executor.modify;
  v4 = v2 + *(a2 + 48);
  return result;
}

void AsyncThrowingCompactMapSequence.Iterator.next()(uint64_t a1, void *a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = a2[3];
  v5 = type metadata accessor for Optional();
  v3[6] = v5;
  v6 = *(v5 - 8);
  v3[7] = v6;
  v3[8] = swift_task_alloc((*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v3[9] = a2[4];
  v3[10] = a2[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3[11] = AssociatedTypeWitness;
  v8 = type metadata accessor for Optional();
  v3[12] = v8;
  v9 = *(v8 - 8);
  v3[13] = v9;
  v3[14] = swift_task_alloc((*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(AssociatedTypeWitness - 8);
  v3[15] = v10;
  v3[16] = swift_task_alloc((*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);

  swift_task_switch(AsyncThrowingCompactMapSequence.Iterator.next(), 0, 0);
}

uint64_t AsyncThrowingCompactMapSequence.Iterator.next()()
{
  if (*(v0[4] + *(v0[3] + 48)) == 1)
  {
    (*(*(v0[5] - 8) + 56))(v0[2], 1, 1);
    v1 = v0[14];
    v2 = v0[8];
    v0[16];
    v1;
    v2;
    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v0[9];
    v6 = v0[10];
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v8 = *(AssociatedConformanceWitness + 32);
    v9 = swift_checkMetadataState();
    v13 = (v8 + *v8);
    v10 = swift_task_alloc(v8[1]);
    v0[17] = v10;
    *v10 = v0;
    v10[1] = AsyncThrowingCompactMapSequence.Iterator.next();
    v11 = v0[14];
    v12 = v0[4];

    return v13(v11, v9, AssociatedConformanceWitness);
  }
}

{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[11];
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v5 = v0[4];
    v4 = v0[5];
    v6 = v0[2];
    v7 = v0[3];
    (*(v0[13] + 8))(v1, v0[12]);
    *(v5 + *(v7 + 48)) = 1;
    (*(*(v4 - 8) + 56))(v6, 1, 1, v4);
    v8 = v0[14];
    v9 = v0[8];
    v0[16];
    v8;
    v9;
    v10 = v0[1];

    return v10();
  }

  else
  {
    v13 = v0[3];
    v12 = v0[4];
    (*(v2 + 32))(v0[16], v1, v3);
    v14 = (v12 + *(v13 + 44));
    v15 = *v14;
    v0[19] = v14[1];

    v19 = (v15 + *v15);
    v16 = swift_task_alloc(v15[1]);
    v0[20] = v16;
    *v16 = v0;
    v16[1] = AsyncThrowingCompactMapSequence.Iterator.next();
    v17 = v0[16];
    v18 = v0[8];

    return v19(v18, v17);
  }
}

{
  v1 = v0[8];
  v2 = v0[5];
  v3 = *(v2 - 8);
  v4 = v3;
  if ((*(v3 + 48))(v1, 1, v2) != 1)
  {
    v8 = v0[2];
    (*(v4 + 32))(v8, v1, v2);
    (*(v4 + 56))(v8, 0, 1, v2);
    goto LABEL_5;
  }

  v6 = v0[3];
  v5 = v0[4];
  (*(v0[7] + 8))(v1, v0[6]);
  if (*(v5 + *(v6 + 48)) == 1)
  {
    v7 = v0[5];
    (*(v3 + 56))(v0[2], 1, 1);
LABEL_5:
    v9 = v0[14];
    v10 = v0[8];
    v0[16];
    v9;
    v10;
    v11 = v0[1];

    return v11();
  }

  v13 = v0[9];
  v14 = v0[10];
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16 = *(AssociatedConformanceWitness + 32);
  v17 = swift_checkMetadataState();
  v21 = (v16 + *v16);
  v18 = swift_task_alloc(v16[1]);
  v0[17] = v18;
  *v18 = v0;
  v18[1] = AsyncThrowingCompactMapSequence.Iterator.next();
  v19 = v0[14];
  v20 = v0[4];

  return v21(v19, v17, AssociatedConformanceWitness);
}

{
  v1 = v0[18];
  v2 = v0[14];
  v3 = v0[8];
  v0[16];
  v2;
  v3;
  v4 = v0[1];

  return v4();
}

{
  v1 = v0[21];
  *(v0[4] + *(v0[3] + 48)) = 1;
  swift_willThrow();
  v2 = v0[21];
  v3 = v0[14];
  v4 = v0[8];
  v0[16];
  v3;
  v4;
  v5 = v0[1];

  return v5();
}

void AsyncThrowingCompactMapSequence.Iterator.next()()
{
  v2 = *(*v1 + 136);
  v4 = *v1;
  *(*v1 + 144) = v0;
  v2;
  if (v0)
  {
    v3 = AsyncThrowingCompactMapSequence.Iterator.next();
  }

  else
  {
    v3 = AsyncThrowingCompactMapSequence.Iterator.next();
  }

  swift_task_switch(v3, 0, 0);
}

{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *v1;
  *(*v1 + 168) = v0;
  v3;
  v5 = v2[19];
  (*(v2[15] + 8))(v2[16], v2[11]);

  if (v0)
  {
    v6 = AsyncThrowingCompactMapSequence.Iterator.next();
  }

  else
  {
    v6 = AsyncThrowingCompactMapSequence.Iterator.next();
  }

  swift_task_switch(v6, 0, 0);
}

void AsyncThrowingCompactMapSequence.Iterator.next(isolation:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v5[7] = a4[3];
  v9 = type metadata accessor for Optional();
  v5[8] = v9;
  v10 = *(v9 - 8);
  v5[9] = v10;
  v5[10] = swift_task_alloc((*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v5[11] = a4[4];
  v5[12] = a4[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[13] = AssociatedTypeWitness;
  v12 = *(AssociatedTypeWitness - 8);
  v5[14] = v12;
  v5[15] = swift_task_alloc((*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_getAssociatedTypeWitness();
  v5[16] = v13;
  v14 = type metadata accessor for Optional();
  v5[17] = v14;
  v15 = *(v14 - 8);
  v5[18] = v15;
  v5[19] = swift_task_alloc((*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v13 - 8);
  v5[20] = v16;
  v5[21] = swift_task_alloc((*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    v18 = (*(a3 + 8))(ObjectType, a3);
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0;
  }

  v5[22] = v18;
  v5[23] = v20;

  swift_task_switch(AsyncThrowingCompactMapSequence.Iterator.next(isolation:), v18, v20);
}

uint64_t AsyncThrowingCompactMapSequence.Iterator.next(isolation:)()
{
  if (*(v0[6] + *(v0[5] + 48)) == 1)
  {
    (*(*(v0[7] - 8) + 56))(v0[2], 1, 1);
    v1 = v0[19];
    v2 = v0[15];
    v3 = v0[10];
    v0[21];
    v1;
    v2;
    v3;
    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[11];
    v7 = v0[12];
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v0[24] = AssociatedConformanceWitness;
    v9 = *(AssociatedConformanceWitness + 40);
    v10 = swift_checkMetadataState();
    v0[25] = v10;
    v17 = (v9 + *v9);
    v11 = swift_task_alloc(v9[1]);
    v0[26] = v11;
    *v11 = v0;
    v11[1] = AsyncThrowingCompactMapSequence.Iterator.next(isolation:);
    v12 = v0[19];
    v13 = v0[15];
    v14 = v0[6];
    v15 = v0[3];
    v16 = v0[4];

    return v17(v12, v15, v16, v13, v10, AssociatedConformanceWitness);
  }
}

{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[16];
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v5 = v0[6];
    v4 = v0[7];
    v6 = v0[5];
    v7 = v0[2];
    (*(v0[18] + 8))(v1, v0[17]);
    *(v5 + *(v6 + 48)) = 1;
    (*(*(v4 - 8) + 56))(v7, 1, 1, v4);
    v8 = v0[19];
    v9 = v0[15];
    v10 = v0[10];
    v0[21];
    v8;
    v9;
    v10;
    v11 = v0[1];

    return v11();
  }

  else
  {
    v14 = v0[5];
    v13 = v0[6];
    (*(v2 + 32))(v0[21], v1, v3);
    v15 = (v13 + *(v14 + 44));
    v16 = *v15;
    v0[27] = v15[1];

    v20 = (v16 + *v16);
    v17 = swift_task_alloc(v16[1]);
    v0[28] = v17;
    *v17 = v0;
    v17[1] = AsyncThrowingCompactMapSequence.Iterator.next(isolation:);
    v18 = v0[21];
    v19 = v0[10];

    return v20(v19, v18);
  }
}

{
  v1 = v0[10];
  v2 = v0[7];
  v3 = *(v2 - 8);
  v4 = v3;
  if ((*(v3 + 48))(v1, 1, v2) != 1)
  {
    v8 = v0[2];
    (*(v4 + 32))(v8, v1, v2);
    (*(v4 + 56))(v8, 0, 1, v2);
    goto LABEL_5;
  }

  v6 = v0[5];
  v5 = v0[6];
  (*(v0[9] + 8))(v1, v0[8]);
  if (*(v5 + *(v6 + 48)) == 1)
  {
    v7 = v0[7];
    (*(v3 + 56))(v0[2], 1, 1);
LABEL_5:
    v9 = v0[19];
    v10 = v0[15];
    v11 = v0[10];
    v0[21];
    v9;
    v10;
    v11;
    v12 = v0[1];

    return v12();
  }

  v14 = v0[11];
  v15 = v0[12];
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v0[24] = AssociatedConformanceWitness;
  v17 = *(AssociatedConformanceWitness + 40);
  v18 = swift_checkMetadataState();
  v0[25] = v18;
  v25 = (v17 + *v17);
  v19 = swift_task_alloc(v17[1]);
  v0[26] = v19;
  *v19 = v0;
  v19[1] = AsyncThrowingCompactMapSequence.Iterator.next(isolation:);
  v20 = v0[19];
  v21 = v0[15];
  v22 = v0[6];
  v23 = v0[3];
  v24 = v0[4];

  return v25(v20, v23, v24, v21, v18, AssociatedConformanceWitness);
}

{
  v1 = v0[24];
  v2 = v0[25];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[13];
  swift_getAssociatedConformanceWitness();
  swift_allocError();
  (*(v4 + 32))(v6, v3, v5);
  v7 = v0[19];
  v8 = v0[15];
  v9 = v0[10];
  v0[21];
  v7;
  v8;
  v9;
  v10 = v0[1];

  return v10();
}

{
  v1 = v0[29];
  *(v0[6] + *(v0[5] + 48)) = 1;
  swift_willThrow();
  v2 = v0[29];
  v3 = v0[19];
  v4 = v0[15];
  v5 = v0[10];
  v0[21];
  v3;
  v4;
  v5;
  v6 = v0[1];

  return v6();
}

void AsyncThrowingCompactMapSequence.Iterator.next(isolation:)()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 208);
  v4 = *(v2 + 184);
  v5 = *(v2 + 176);
  if (v0)
  {
    v6 = AsyncThrowingCompactMapSequence.Iterator.next(isolation:);
  }

  else
  {
    v6 = AsyncThrowingCompactMapSequence.Iterator.next(isolation:);
  }

  swift_task_switch(v6, v5, v4);
}

{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v4 = *v1;
  *(*v1 + 232) = v0;
  v3;
  v5 = v2[27];
  (*(v2[20] + 8))(v2[21], v2[16]);

  v6 = v2[23];
  v7 = v2[22];
  if (v0)
  {
    v8 = AsyncThrowingCompactMapSequence.Iterator.next(isolation:);
  }

  else
  {
    v8 = AsyncThrowingCompactMapSequence.Iterator.next(isolation:);
  }

  swift_task_switch(v8, v7, v6);
}

void protocol witness for AsyncIteratorProtocol.next() in conformance AsyncThrowingCompactMapSequence<A, B>.Iterator(uint64_t a1, void *a2)
{
  v5 = swift_task_alloc(176);
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for AsyncIteratorProtocol.next() in conformance AsyncCompactMapSequence<A, B>.Iterator;

  AsyncThrowingCompactMapSequence.Iterator.next()(a1, a2);
}

void _ss31AsyncThrowingCompactMapSequenceV8IteratorVyxq__GScIsScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTW(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  *(v5 + 16) = a4;
  v10 = swift_task_alloc(240);
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = _ss31AsyncThrowingCompactMapSequenceV8IteratorVyxq__GScIsScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ0_;

  AsyncThrowingCompactMapSequence.Iterator.next(isolation:)(a1, a2, a3, a5);
}

uint64_t (*AsyncThrowingDropWhileSequence.Iterator.finished.modify(uint64_t a1, uint64_t a2))()
{
  result = UnownedSerialExecutor.executor.modify;
  v4 = v2 + *(a2 + 40);
  return result;
}

uint64_t (*AsyncThrowingDropWhileSequence.Iterator.doneDropping.modify(uint64_t a1, uint64_t a2))()
{
  result = UnownedSerialExecutor.executor.modify;
  v4 = v2 + *(a2 + 44);
  return result;
}

uint64_t AsyncThrowingDropWhileSequence.Iterator.init(_:predicate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for AsyncThrowingDropWhileSequence.Iterator();
  *(a4 + v8[10]) = 0;
  *(a4 + v8[11]) = 0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = (*(*(AssociatedTypeWitness - 8) + 32))(a4, a1, AssociatedTypeWitness);
  v11 = (a4 + v8[9]);
  *v11 = a2;
  v11[1] = a3;
  return result;
}

void AsyncThrowingDropWhileSequence.Iterator.next()(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *(a2 + 24);
  v3[6] = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3[7] = AssociatedTypeWitness;
  v5 = type metadata accessor for Optional();
  v3[8] = v5;
  v6 = *(v5 - 8);
  v3[9] = v6;
  v3[10] = swift_task_alloc((*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(AssociatedTypeWitness - 8);
  v3[11] = v7;
  v3[12] = swift_task_alloc((*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);

  swift_task_switch(AsyncThrowingDropWhileSequence.Iterator.next(), 0, 0);
}

uint64_t AsyncThrowingDropWhileSequence.Iterator.next()()
{
  v2 = v0[3];
  v1 = v0[4];
  if (*(v1 + *(v2 + 40)))
  {
    (*(v0[11] + 56))(v0[2], 1, 1, v0[7]);
    v3 = v0[10];
    v0[12];
    v3;
    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = *(v1 + *(v2 + 44));
    v7 = v0[5];
    v8 = v0[6];
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v10 = *(AssociatedConformanceWitness + 32);
    v11 = swift_checkMetadataState();
    v16 = (v10 + *v10);
    v12 = swift_task_alloc(v10[1]);
    if (v6)
    {
      v0[20] = v12;
      *v12 = v0;
      v12[1] = AsyncThrowingDropWhileSequence.Iterator.next();
      v13 = v0[4];
      v14 = v0[2];
    }

    else
    {
      v0[13] = v12;
      *v12 = v0;
      v12[1] = AsyncThrowingDropWhileSequence.Iterator.next();
      v14 = v0[10];
      v15 = v0[4];
    }

    return v16(v14, v11, AssociatedConformanceWitness);
  }
}

{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[7];
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    (*(v0[9] + 8))(v1, v0[8]);
    (*(v0[11] + 56))(v0[2], 1, 1, v0[7]);
    v4 = v0[10];
    v0[12];
    v4;
    v5 = v0[1];

    return v5();
  }

  else
  {
    v7 = v0[12];
    v9 = v0[3];
    v8 = v0[4];
    v10 = *(v2 + 32);
    v0[15] = v10;
    v0[16] = (v2 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v10(v7, v1, v3);
    v11 = (v8 + *(v9 + 36));
    v12 = *v11;
    v0[17] = v11[1];

    v15 = (v12 + *v12);
    v13 = swift_task_alloc(v12[1]);
    v0[18] = v13;
    *v13 = v0;
    v13[1] = AsyncThrowingDropWhileSequence.Iterator.next();
    v14 = v0[12];

    return v15(v14);
  }
}

{
  if ((*(v0 + 168) & 1) == 0)
  {
    v5 = *(v0 + 120);
    v4 = *(v0 + 128);
    v6 = *(v0 + 96);
    v7 = *(v0 + 56);
    v8 = *(v0 + 16);
    *(*(v0 + 32) + *(*(v0 + 24) + 44)) = 1;
    v5(v8, v6, v7);
    v3 = 0;
    goto LABEL_5;
  }

  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 56));
  if (*(v2 + *(v1 + 40)))
  {
    v3 = 1;
LABEL_5:
    (*(*(v0 + 88) + 56))(*(v0 + 16), v3, 1, *(v0 + 56));
    v9 = *(v0 + 80);
    *(v0 + 96);
    v9;
    v10 = *(v0 + 8);

    return v10();
  }

  v12 = *(*(v0 + 32) + *(*(v0 + 24) + 44));
  v13 = *(v0 + 40);
  v14 = *(v0 + 48);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16 = *(AssociatedConformanceWitness + 32);
  v17 = swift_checkMetadataState();
  v22 = (v16 + *v16);
  v18 = swift_task_alloc(v16[1]);
  if (v12)
  {
    *(v0 + 160) = v18;
    *v18 = v0;
    v18[1] = AsyncThrowingDropWhileSequence.Iterator.next();
    v19 = *(v0 + 32);
    v20 = *(v0 + 16);
  }

  else
  {
    *(v0 + 104) = v18;
    *v18 = v0;
    v18[1] = AsyncThrowingDropWhileSequence.Iterator.next();
    v20 = *(v0 + 80);
    v21 = *(v0 + 32);
  }

  return v22(v20, v17, AssociatedConformanceWitness);
}

void AsyncThrowingDropWhileSequence.Iterator.next()()
{
  v2 = *(*v1 + 104);
  v4 = *v1;
  *(*v1 + 112) = v0;
  v2;
  if (v0)
  {
    v3 = AsyncThrowingDropWhileSequence.Iterator.next();
  }

  else
  {
    v3 = AsyncThrowingDropWhileSequence.Iterator.next();
  }

  swift_task_switch(v3, 0, 0);
}

void AsyncThrowingDropWhileSequence.Iterator.next()(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 144);
  v6 = *v2;
  *(v4 + 152) = v1;
  v5;
  v7 = *(v4 + 136);
  if (v1)
  {
    v9 = *(v4 + 88);
    v8 = *(v4 + 96);
    v10 = *(v4 + 56);

    (*(v9 + 8))(v8, v10);
    v11 = AsyncThrowingDropWhileSequence.Iterator.next();
  }

  else
  {

    *(v4 + 168) = a1 & 1;
    v11 = AsyncThrowingDropWhileSequence.Iterator.next();
  }

  swift_task_switch(v11, 0, 0);
}

void AsyncThrowingDropWhileSequence.Iterator.next(isolation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v5[7] = *(a4 + 24);
  v5[8] = *(a4 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[9] = AssociatedTypeWitness;
  v9 = *(AssociatedTypeWitness - 8);
  v5[10] = v9;
  v10 = *(v9 + 64) + 15;
  v5[11] = swift_task_alloc(v10 & 0xFFFFFFFFFFFFFFF0);
  v5[12] = swift_task_alloc(v10 & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_getAssociatedTypeWitness();
  v5[13] = v11;
  v12 = type metadata accessor for Optional();
  v5[14] = v12;
  v13 = *(v12 - 8);
  v5[15] = v13;
  v5[16] = swift_task_alloc((*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v11 - 8);
  v5[17] = v14;
  v5[18] = swift_task_alloc((*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    v16 = (*(a3 + 8))(ObjectType, a3);
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  v5[19] = v16;
  v5[20] = v18;

  swift_task_switch(AsyncThrowingDropWhileSequence.Iterator.next(isolation:), v16, v18);
}

uint64_t AsyncThrowingDropWhileSequence.Iterator.next(isolation:)()
{
  v2 = v0[5];
  v1 = v0[6];
  if (*(v1 + *(v2 + 40)))
  {
    (*(v0[17] + 56))(v0[2], 1, 1, v0[13]);
    v3 = v0[16];
    v5 = v0[11];
    v4 = v0[12];
    v0[18];
    v3;
    v4;
    v5;
    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = *(v1 + *(v2 + 44));
    v10 = v0[7];
    v9 = v0[8];
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    if (v8)
    {
      v0[29] = AssociatedConformanceWitness;
      v12 = *(AssociatedConformanceWitness + 40);
      v13 = swift_checkMetadataState();
      v0[30] = v13;
      v23 = (v12 + *v12);
      v14 = swift_task_alloc(v12[1]);
      v0[31] = v14;
      *v14 = v0;
      v14[1] = AsyncThrowingDropWhileSequence.Iterator.next(isolation:);
      v15 = v0[11];
      v16 = v0[6];
      v17 = v0[3];
      v18 = v0[4];
      v19 = v0[2];
    }

    else
    {
      v0[21] = AssociatedConformanceWitness;
      v20 = *(AssociatedConformanceWitness + 40);
      v13 = swift_checkMetadataState();
      v0[22] = v13;
      v23 = (v20 + *v20);
      v21 = swift_task_alloc(v20[1]);
      v0[23] = v21;
      *v21 = v0;
      v21[1] = AsyncThrowingDropWhileSequence.Iterator.next(isolation:);
      v19 = v0[16];
      v15 = v0[12];
      v22 = v0[6];
      v17 = v0[3];
      v18 = v0[4];
    }

    return v23(v19, v17, v18, v15, v13, AssociatedConformanceWitness);
  }
}

{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[13];
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    (*(v0[15] + 8))(v1, v0[14]);
    (*(v0[17] + 56))(v0[2], 1, 1, v0[13]);
    v4 = v0[16];
    v6 = v0[11];
    v5 = v0[12];
    v0[18];
    v4;
    v5;
    v6;
    v7 = v0[1];

    return v7();
  }

  else
  {
    v9 = v0[18];
    v11 = v0[5];
    v10 = v0[6];
    v12 = *(v2 + 32);
    v0[24] = v12;
    v0[25] = (v2 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v12(v9, v1, v3);
    v13 = (v10 + *(v11 + 36));
    v14 = *v13;
    v0[26] = v13[1];

    v17 = (v14 + *v14);
    v15 = swift_task_alloc(v14[1]);
    v0[27] = v15;
    *v15 = v0;
    v15[1] = AsyncThrowingDropWhileSequence.Iterator.next(isolation:);
    v16 = v0[18];

    return v17(v16);
  }
}

{
  if ((*(v0 + 256) & 1) == 0)
  {
    v5 = *(v0 + 192);
    v4 = *(v0 + 200);
    v6 = *(v0 + 144);
    v7 = *(v0 + 104);
    v8 = *(v0 + 16);
    *(*(v0 + 48) + *(*(v0 + 40) + 44)) = 1;
    v5(v8, v6, v7);
    v3 = 0;
    goto LABEL_5;
  }

  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 104));
  if (*(v2 + *(v1 + 40)))
  {
    v3 = 1;
LABEL_5:
    (*(*(v0 + 136) + 56))(*(v0 + 16), v3, 1, *(v0 + 104));
    v9 = *(v0 + 128);
    v11 = *(v0 + 88);
    v10 = *(v0 + 96);
    *(v0 + 144);
    v9;
    v10;
    v11;
    v12 = *(v0 + 8);

    return v12();
  }

  v14 = *(*(v0 + 48) + *(*(v0 + 40) + 44));
  v16 = *(v0 + 56);
  v15 = *(v0 + 64);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  if (v14)
  {
    *(v0 + 232) = AssociatedConformanceWitness;
    v18 = *(AssociatedConformanceWitness + 40);
    v19 = swift_checkMetadataState();
    *(v0 + 240) = v19;
    v29 = (v18 + *v18);
    v20 = swift_task_alloc(v18[1]);
    *(v0 + 248) = v20;
    *v20 = v0;
    v20[1] = AsyncThrowingDropWhileSequence.Iterator.next(isolation:);
    v21 = *(v0 + 88);
    v22 = *(v0 + 48);
    v23 = *(v0 + 24);
    v24 = *(v0 + 32);
    v25 = *(v0 + 16);
  }

  else
  {
    *(v0 + 168) = AssociatedConformanceWitness;
    v26 = *(AssociatedConformanceWitness + 40);
    v19 = swift_checkMetadataState();
    *(v0 + 176) = v19;
    v29 = (v26 + *v26);
    v27 = swift_task_alloc(v26[1]);
    *(v0 + 184) = v27;
    *v27 = v0;
    v27[1] = AsyncThrowingDropWhileSequence.Iterator.next(isolation:);
    v25 = *(v0 + 128);
    v21 = *(v0 + 96);
    v28 = *(v0 + 48);
    v23 = *(v0 + 24);
    v24 = *(v0 + 32);
  }

  return v29(v25, v23, v24, v21, v19, AssociatedConformanceWitness);
}

{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[12];
  v4 = v0[9];
  v5 = v0[10];
  swift_getAssociatedConformanceWitness();
  swift_allocError();
  (*(v5 + 32))(v6, v3, v4);
  v7 = v0[16];
  v9 = v0[11];
  v8 = v0[12];
  v0[18];
  v7;
  v8;
  v9;
  v10 = v0[1];

  return v10();
}

{
  v1 = v0[28];
  *(v0[6] + *(v0[5] + 40)) = 1;
  swift_willThrow();
  v2 = v0[28];
  v3 = v0[16];
  v5 = v0[11];
  v4 = v0[12];
  v0[18];
  v3;
  v4;
  v5;
  v6 = v0[1];

  return v6();
}

{
  v1 = v0[29];
  v2 = v0[30];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[9];
  swift_getAssociatedConformanceWitness();
  swift_allocError();
  (*(v4 + 32))(v6, v3, v5);
  v7 = v0[16];
  v9 = v0[11];
  v8 = v0[12];
  v0[18];
  v7;
  v8;
  v9;
  v10 = v0[1];

  return v10();
}

void AsyncThrowingDropWhileSequence.Iterator.next(isolation:)()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 184);
  v4 = *(v2 + 160);
  v5 = *(v2 + 152);
  if (v0)
  {
    v6 = AsyncThrowingDropWhileSequence.Iterator.next(isolation:);
  }

  else
  {
    v6 = AsyncThrowingDropWhileSequence.Iterator.next(isolation:);
  }

  swift_task_switch(v6, v5, v4);
}

{
  v2 = *v1;
  v3 = *(*v1 + 248);
  v4 = *v1;
  v3;
  if (v0)
  {
    v5 = v2[19];
    v6 = v2[20];

    swift_task_switch(AsyncThrowingDropWhileSequence.Iterator.next(isolation:), v5, v6);
  }

  else
  {
    v7 = v2[18];
    v8 = v2[16];
    v11 = v2 + 11;
    v9 = v2[11];
    v10 = v11[1];
    v7;
    v8;
    v10;
    v9;
    v12 = *(v4 + 8);

    v12();
  }
}

void AsyncThrowingDropWhileSequence.Iterator.next(isolation:)(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 216);
  v6 = *v2;
  *(v4 + 224) = v1;
  v5;
  v7 = *(v4 + 208);
  if (v1)
  {
    v8 = *(v4 + 136);
    v9 = *(v4 + 144);
    v10 = *(v4 + 104);

    (*(v8 + 8))(v9, v10);
    v11 = *(v4 + 152);
    v12 = *(v4 + 160);
    v13 = AsyncThrowingDropWhileSequence.Iterator.next(isolation:);
  }

  else
  {

    *(v4 + 256) = a1 & 1;
    v11 = *(v4 + 152);
    v12 = *(v4 + 160);
    v13 = AsyncThrowingDropWhileSequence.Iterator.next(isolation:);
  }

  swift_task_switch(v13, v11, v12);
}

void protocol witness for AsyncIteratorProtocol.next() in conformance AsyncThrowingDropWhileSequence<A>.Iterator(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc(176);
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for AsyncIteratorProtocol.next() in conformance AsyncCompactMapSequence<A, B>.Iterator;

  AsyncThrowingDropWhileSequence.Iterator.next()(a1, a2);
}

void _ss30AsyncThrowingDropWhileSequenceV8IteratorVyx_GScIsScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTW(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  v10 = swift_task_alloc(272);
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = _ss31AsyncThrowingCompactMapSequenceV8IteratorVyxq__GScIsScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ0_;

  AsyncThrowingDropWhileSequence.Iterator.next(isolation:)(a1, a2, a3, a5);
}

uint64_t AsyncSequence.drop(while:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void, uint64_t, uint64_t)@<X4>, uint64_t a6@<X8>)
{
  (*(*(a3 - 8) + 32))(a6, v6);
  v13 = (a6 + *(a5(0, a3, a4) + 36));
  *v13 = a1;
  v13[1] = a2;
}

uint64_t AsyncDropFirstSequence.Iterator.baseIterator.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(*(AssociatedTypeWitness - 8) + 16);

  return v7(a2, v2, AssociatedTypeWitness);
}

uint64_t AsyncDropFirstSequence.Iterator.baseIterator.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(*(AssociatedTypeWitness - 8) + 40);

  return v7(v2, a1, AssociatedTypeWitness);
}

uint64_t (*AsyncThrowingFilterSequence.Iterator.finished.modify(uint64_t a1, uint64_t a2))()
{
  result = UnownedSerialExecutor.executor.modify;
  v4 = v2 + *(a2 + 40);
  return result;
}

uint64_t AsyncThrowingFilterSequence.Iterator.init(_:isIncluded:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for AsyncThrowingFilterSequence.Iterator();
  *(a4 + *(v8 + 40)) = 0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = (*(*(AssociatedTypeWitness - 8) + 32))(a4, a1, AssociatedTypeWitness);
  v11 = (a4 + *(v8 + 36));
  *v11 = a2;
  v11[1] = a3;
  return result;
}

void AsyncThrowingFilterSequence.Iterator.next()(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *(a2 + 24);
  v3[6] = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3[7] = AssociatedTypeWitness;
  v5 = type metadata accessor for Optional();
  v3[8] = v5;
  v6 = *(v5 - 8);
  v3[9] = v6;
  v3[10] = swift_task_alloc((*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(AssociatedTypeWitness - 8);
  v3[11] = v7;
  v3[12] = swift_task_alloc((*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);

  swift_task_switch(AsyncThrowingFilterSequence.Iterator.next(), 0, 0);
}

uint64_t AsyncThrowingFilterSequence.Iterator.next()()
{
  if (*(v0[4] + *(v0[3] + 40)))
  {
    v1 = v0[12];
    v2 = v0[10];
    (*(v0[11] + 56))(v0[2], 1, 1, v0[7]);
    v1;
    v2;
    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v0[5];
    v6 = v0[6];
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v8 = *(AssociatedConformanceWitness + 32);
    v9 = swift_checkMetadataState();
    v13 = (v8 + *v8);
    v10 = swift_task_alloc(v8[1]);
    v0[13] = v10;
    *v10 = v0;
    v10[1] = AsyncThrowingFilterSequence.Iterator.next();
    v11 = v0[10];
    v12 = v0[4];

    return v13(v11, v9, AssociatedConformanceWitness);
  }
}

{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[7];
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    (*(v0[9] + 8))(v1, v0[8]);
    v4 = v0[12];
    v5 = v0[10];
    (*(v0[11] + 56))(v0[2], 1, 1, v0[7]);
    v4;
    v5;
    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = v0[12];
    v10 = v0[3];
    v9 = v0[4];
    v11 = *(v2 + 32);
    v0[15] = v11;
    v0[16] = (v2 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v11(v8, v1, v3);
    v12 = (v9 + *(v10 + 36));
    v13 = *v12;
    v0[17] = v12[1];

    v16 = (v13 + *v13);
    v14 = swift_task_alloc(v13[1]);
    v0[18] = v14;
    *v14 = v0;
    v14[1] = AsyncThrowingFilterSequence.Iterator.next();
    v15 = v0[12];

    return v16(v15);
  }
}

{
  if (*(v0 + 160))
  {
    v1 = *(v0 + 128);
    (*(v0 + 120))(*(v0 + 16), *(v0 + 96), *(v0 + 56));
    v2 = 0;
LABEL_5:
    v5 = *(v0 + 96);
    v6 = *(v0 + 80);
    (*(*(v0 + 88) + 56))(*(v0 + 16), v2, 1, *(v0 + 56));
    v5;
    v6;
    v7 = *(v0 + 8);

    return v7();
  }

  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 56));
  if (*(v4 + *(v3 + 40)) == 1)
  {
    v2 = 1;
    goto LABEL_5;
  }

  v9 = *(v0 + 40);
  v10 = *(v0 + 48);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = *(AssociatedConformanceWitness + 32);
  v13 = swift_checkMetadataState();
  v17 = (v12 + *v12);
  v14 = swift_task_alloc(v12[1]);
  *(v0 + 104) = v14;
  *v14 = v0;
  v14[1] = AsyncThrowingFilterSequence.Iterator.next();
  v15 = *(v0 + 80);
  v16 = *(v0 + 32);

  return v17(v15, v13, AssociatedConformanceWitness);
}

{
  v1 = v0[19];
  *(v0[4] + *(v0[3] + 40)) = 1;
  swift_willThrow();
  v2 = v0[19];
  v3 = v0[10];
  v0[12];
  v3;
  v4 = v0[1];

  return v4();
}

void AsyncThrowingFilterSequence.Iterator.next()()
{
  v2 = *(*v1 + 104);
  v4 = *v1;
  *(*v1 + 112) = v0;
  v2;
  if (v0)
  {
    v3 = AsyncThrowingDropWhileSequence.Iterator.next();
  }

  else
  {
    v3 = AsyncThrowingFilterSequence.Iterator.next();
  }

  swift_task_switch(v3, 0, 0);
}

void AsyncThrowingFilterSequence.Iterator.next()(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 144);
  v6 = *v2;
  *(v4 + 152) = v1;
  v5;
  v7 = *(v4 + 136);
  if (v1)
  {
    v9 = *(v4 + 88);
    v8 = *(v4 + 96);
    v10 = *(v4 + 56);

    (*(v9 + 8))(v8, v10);
    v11 = AsyncThrowingFilterSequence.Iterator.next();
  }

  else
  {

    *(v4 + 160) = a1 & 1;
    v11 = AsyncThrowingFilterSequence.Iterator.next();
  }

  swift_task_switch(v11, 0, 0);
}

void AsyncThrowingFilterSequence.Iterator.next(isolation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v5[7] = *(a4 + 24);
  v5[8] = *(a4 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[9] = AssociatedTypeWitness;
  v9 = *(AssociatedTypeWitness - 8);
  v5[10] = v9;
  v5[11] = swift_task_alloc((*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_getAssociatedTypeWitness();
  v5[12] = v10;
  v11 = type metadata accessor for Optional();
  v5[13] = v11;
  v12 = *(v11 - 8);
  v5[14] = v12;
  v5[15] = swift_task_alloc((*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v10 - 8);
  v5[16] = v13;
  v5[17] = swift_task_alloc((*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    v15 = (*(a3 + 8))(ObjectType, a3);
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  v5[18] = v15;
  v5[19] = v17;

  swift_task_switch(AsyncThrowingFilterSequence.Iterator.next(isolation:), v15, v17);
}

uint64_t AsyncThrowingFilterSequence.Iterator.next(isolation:)()
{
  if (*(v0[6] + *(v0[5] + 40)))
  {
    v1 = v0[17];
    v2 = v0[15];
    v3 = v0[11];
    (*(v0[16] + 56))(v0[2], 1, 1, v0[12]);
    v1;
    v2;
    v3;
    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[7];
    v7 = v0[8];
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v0[20] = AssociatedConformanceWitness;
    v9 = *(AssociatedConformanceWitness + 40);
    v10 = swift_checkMetadataState();
    v0[21] = v10;
    v17 = (v9 + *v9);
    v11 = swift_task_alloc(v9[1]);
    v0[22] = v11;
    *v11 = v0;
    v11[1] = AsyncThrowingFilterSequence.Iterator.next(isolation:);
    v12 = v0[15];
    v13 = v0[11];
    v14 = v0[6];
    v15 = v0[3];
    v16 = v0[4];

    return v17(v12, v15, v16, v13, v10, AssociatedConformanceWitness);
  }
}

{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[12];
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    (*(v0[14] + 8))(v1, v0[13]);
    v4 = v0[17];
    v5 = v0[15];
    v6 = v0[11];
    (*(v0[16] + 56))(v0[2], 1, 1, v0[12]);
    v4;
    v5;
    v6;
    v7 = v0[1];

    return v7();
  }

  else
  {
    v9 = v0[17];
    v11 = v0[5];
    v10 = v0[6];
    v12 = *(v2 + 32);
    v0[23] = v12;
    v0[24] = (v2 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v12(v9, v1, v3);
    v13 = (v10 + *(v11 + 36));
    v14 = *v13;
    v0[25] = v13[1];

    v17 = (v14 + *v14);
    v15 = swift_task_alloc(v14[1]);
    v0[26] = v15;
    *v15 = v0;
    v15[1] = AsyncThrowingFilterSequence.Iterator.next(isolation:);
    v16 = v0[17];

    return v17(v16);
  }
}

{
  if (*(v0 + 224))
  {
    v1 = *(v0 + 192);
    (*(v0 + 184))(*(v0 + 16), *(v0 + 136), *(v0 + 96));
    v2 = 0;
LABEL_5:
    v5 = *(v0 + 136);
    v6 = *(v0 + 120);
    v7 = *(v0 + 88);
    (*(*(v0 + 128) + 56))(*(v0 + 16), v2, 1, *(v0 + 96));
    v5;
    v6;
    v7;
    v8 = *(v0 + 8);

    return v8();
  }

  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 96));
  if (*(v4 + *(v3 + 40)) == 1)
  {
    v2 = 1;
    goto LABEL_5;
  }

  v10 = *(v0 + 56);
  v11 = *(v0 + 64);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *(v0 + 160) = AssociatedConformanceWitness;
  v13 = *(AssociatedConformanceWitness + 40);
  v14 = swift_checkMetadataState();
  *(v0 + 168) = v14;
  v21 = (v13 + *v13);
  v15 = swift_task_alloc(v13[1]);
  *(v0 + 176) = v15;
  *v15 = v0;
  v15[1] = AsyncThrowingFilterSequence.Iterator.next(isolation:);
  v16 = *(v0 + 120);
  v17 = *(v0 + 88);
  v18 = *(v0 + 48);
  v19 = *(v0 + 24);
  v20 = *(v0 + 32);

  return v21(v16, v19, v20, v17, v14, AssociatedConformanceWitness);
}

{
  v1 = v0[20];
  v2 = v0[21];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[9];
  swift_getAssociatedConformanceWitness();
  swift_allocError();
  (*(v4 + 32))(v6, v3, v5);
  v7 = v0[15];
  v8 = v0[11];
  v0[17];
  v7;
  v8;
  v9 = v0[1];

  return v9();
}

{
  v1 = v0[27];
  *(v0[6] + *(v0[5] + 40)) = 1;
  swift_willThrow();
  v2 = v0[27];
  v3 = v0[15];
  v4 = v0[11];
  v0[17];
  v3;
  v4;
  v5 = v0[1];

  return v5();
}

void AsyncThrowingFilterSequence.Iterator.next(isolation:)()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 176);
  v4 = *(v2 + 152);
  v5 = *(v2 + 144);
  if (v0)
  {
    v6 = AsyncThrowingFilterSequence.Iterator.next(isolation:);
  }

  else
  {
    v6 = AsyncThrowingFilterSequence.Iterator.next(isolation:);
  }

  swift_task_switch(v6, v5, v4);
}

void AsyncThrowingFilterSequence.Iterator.next(isolation:)(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 208);
  v6 = *v2;
  *(v4 + 216) = v1;
  v5;
  v7 = *(v4 + 200);
  if (v1)
  {
    v8 = *(v4 + 128);
    v9 = *(v4 + 136);
    v10 = *(v4 + 96);

    (*(v8 + 8))(v9, v10);
    v11 = *(v4 + 144);
    v12 = *(v4 + 152);
    v13 = AsyncThrowingFilterSequence.Iterator.next(isolation:);
  }

  else
  {

    *(v4 + 224) = a1 & 1;
    v11 = *(v4 + 144);
    v12 = *(v4 + 152);
    v13 = AsyncThrowingFilterSequence.Iterator.next(isolation:);
  }

  swift_task_switch(v13, v11, v12);
}

void protocol witness for AsyncIteratorProtocol.next() in conformance AsyncThrowingFilterSequence<A>.Iterator(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc(176);
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for AsyncIteratorProtocol.next() in conformance AsyncCompactMapSequence<A, B>.Iterator;

  AsyncThrowingFilterSequence.Iterator.next()(a1, a2);
}

void _ss27AsyncThrowingFilterSequenceV8IteratorVyx_GScIsScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTW(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  v10 = swift_task_alloc(240);
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = _ss31AsyncThrowingCompactMapSequenceV8IteratorVyxq__GScIsScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ0_;

  AsyncThrowingFilterSequence.Iterator.next(isolation:)(a1, a2, a3, a5);
}

uint64_t AsyncSequence.flatMap<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t (*a7)(void, void *)@<X6>, uint64_t a8@<X8>)
{
  (*(*(a3 - 8) + 32))(a8, v8);
  v19[0] = a3;
  v19[1] = a4;
  v19[2] = a5;
  v19[3] = a6;
  v17 = (a8 + *(a7(0, v19) + 52));
  *v17 = a1;
  v17[1] = a2;
}

uint64_t AsyncFlatMapSequence.init(_:transform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t (*a8)(void, void *)@<X7>, uint64_t a9@<X8>)
{
  (*(*(a4 - 8) + 32))(a9, a1, a4);
  v19[0] = a4;
  v19[1] = a5;
  v19[2] = a6;
  v19[3] = a7;
  result = a8(0, v19);
  v18 = (a9 + *(result + 52));
  *v18 = a2;
  v18[1] = a3;
  return result;
}

uint64_t AsyncFlatMapSequence.Iterator.currentIterator.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 56);
  v5 = *(a1 + 40);
  v6 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for Optional();
  v8 = *(*(v7 - 8) + 16);

  return v8(a2, v2 + v4, v7);
}

uint64_t AsyncFlatMapSequence.Iterator.currentIterator.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  v5 = *(a2 + 40);
  v6 = *(a2 + 24);
  swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for Optional();
  v8 = *(*(v7 - 8) + 40);

  return v8(v2 + v4, a1, v7);
}

uint64_t (*AsyncThrowingFlatMapSequence.Iterator.currentIterator.modify(uint64_t a1, uint64_t a2))()
{
  result = UnownedSerialExecutor.executor.modify;
  v4 = v2 + *(a2 + 56);
  return result;
}

uint64_t (*AsyncThrowingFlatMapSequence.Iterator.finished.modify(uint64_t a1, uint64_t a2))()
{
  result = UnownedSerialExecutor.executor.modify;
  v4 = v2 + *(a2 + 60);
  return result;
}

uint64_t AsyncFlatMapSequence.Iterator.init(_:transform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t (*a8)(void, void *)@<X7>, uint64_t a9@<X8>)
{
  v19[0] = a4;
  v19[1] = a5;
  v19[2] = a6;
  v19[3] = a7;
  v12 = a8(0, v19);
  v13 = v12[14];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 56))(a9 + v13, 1, 1, AssociatedTypeWitness);
  *(a9 + v12[15]) = 0;
  v15 = swift_getAssociatedTypeWitness();
  result = (*(*(v15 - 8) + 32))(a9, a1, v15);
  v17 = (a9 + v12[13]);
  *v17 = a2;
  v17[1] = a3;
  return result;
}

void AsyncThrowingFlatMapSequence.Iterator.next()(uint64_t a1, void *a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v5 = a2[3];
  v3[5] = v5;
  v6 = *(v5 - 8);
  v3[6] = v6;
  v7 = *(v6 + 64) + 15;
  v3[7] = swift_task_alloc(v7 & 0xFFFFFFFFFFFFFFF0);
  v3[8] = swift_task_alloc(v7 & 0xFFFFFFFFFFFFFFF0);
  v3[9] = swift_task_alloc(v7 & 0xFFFFFFFFFFFFFFF0);
  v3[10] = a2[4];
  v3[11] = a2[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3[12] = AssociatedTypeWitness;
  v9 = type metadata accessor for Optional();
  v3[13] = v9;
  v10 = *(v9 - 8);
  v3[14] = v10;
  v3[15] = swift_task_alloc((*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(AssociatedTypeWitness - 8);
  v3[16] = v11;
  v3[17] = swift_task_alloc((*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v3[18] = a2[5];
  v12 = swift_getAssociatedTypeWitness();
  v3[19] = v12;
  v13 = type metadata accessor for Optional();
  v3[20] = v13;
  v14 = *(v13 - 8);
  v3[21] = v14;
  v15 = *(v14 + 64) + 15;
  v3[22] = swift_task_alloc(v15 & 0xFFFFFFFFFFFFFFF0);
  v3[23] = swift_task_alloc(v15 & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v12 - 8);
  v3[24] = v16;
  v17 = *(v16 + 64) + 15;
  v3[25] = swift_task_alloc(v17 & 0xFFFFFFFFFFFFFFF0);
  v3[26] = swift_task_alloc(v17 & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_getAssociatedTypeWitness();
  v3[27] = v18;
  v19 = type metadata accessor for Optional();
  v3[28] = v19;
  v20 = *(v19 - 8);
  v3[29] = v20;
  v21 = *(v20 + 64) + 15;
  v3[30] = swift_task_alloc(v21 & 0xFFFFFFFFFFFFFFF0);
  v3[31] = swift_task_alloc(v21 & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v18 - 8);
  v3[32] = v22;
  v23 = *(v22 + 64) + 15;
  v3[33] = swift_task_alloc(v23 & 0xFFFFFFFFFFFFFFF0);
  v3[34] = swift_task_alloc(v23 & 0xFFFFFFFFFFFFFFF0);

  swift_task_switch(AsyncThrowingFlatMapSequence.Iterator.next(), 0, 0);
}

uint64_t AsyncThrowingFlatMapSequence.Iterator.next()()
{
  if (*(v0[4] + *(v0[3] + 60)))
  {
    v2 = v0[33];
    v1 = v0[34];
    v4 = v0[30];
    v3 = v0[31];
    v6 = v0[25];
    v5 = v0[26];
    v7 = v0[23];
    v8 = v0[22];
    v9 = v0[17];
    v10 = v0[15];
    v37 = v10;
    v38 = v0[9];
    v39 = v0[8];
    v41 = v0[7];
    (*(v0[24] + 56))(v0[2], 1, 1, v0[19]);
    v1;
    v2;
    v3;
    v4;
    v5;
    v6;
    v7;
    v8;
    v9;
    v37;
    v38;
    v39;
    v41;
    v11 = v0[1];

    return v11();
  }

  else
  {
    v13 = v0[31];
    v14 = v0[32];
    v15 = v0[27];
    AsyncFlatMapSequence.Iterator.currentIterator.getter();
    if ((*(v14 + 48))(v13, 1, v15) == 1)
    {
      v16 = v0[10];
      v17 = v0[11];
      (*(v0[29] + 8))(v0[31], v0[28]);
      swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v19 = *(AssociatedConformanceWitness + 32);
      v20 = swift_checkMetadataState();
      v40 = (v19 + *v19);
      v21 = swift_task_alloc(v19[1]);
      v0[39] = v21;
      *v21 = v0;
      v21[1] = AsyncThrowingFlatMapSequence.Iterator.next();
      v22 = v0[15];
      v23 = v0[4];
      v24 = v20;
      v25 = AssociatedConformanceWitness;
      v26 = v40;
    }

    else
    {
      v27 = v0[34];
      v28 = v0[31];
      v29 = v0[32];
      v30 = v0[27];
      v31 = v0[18];
      v32 = v0[5];
      v33 = *(v29 + 32);
      v0[35] = v33;
      v0[36] = (v29 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      v33(v27, v28, v30);
      v34 = swift_getAssociatedConformanceWitness();
      v42 = (*(v34 + 32) + **(v34 + 32));
      v35 = swift_task_alloc(*(*(v34 + 32) + 4));
      v0[37] = v35;
      *v35 = v0;
      v35[1] = AsyncThrowingFlatMapSequence.Iterator.next();
      v36 = v0[34];
      v24 = v0[27];
      v22 = v0[23];
      v25 = v34;
      v26 = v42;
    }

    return v26(v22, v24, v25);
  }
}

{
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[19];
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v4 = v0[32];
    v5 = v0[30];
    v6 = v0[27];
    v7 = v0[20];
    v8 = v0[21];
    v10 = v0[3];
    v9 = v0[4];
    (*(v4 + 8))(v0[34], v6);
    (*(v8 + 8))(v1, v7);
    v11 = 1;
    (*(v4 + 56))(v5, 1, 1, v6);
    AsyncFlatMapSequence.Iterator.currentIterator.setter(v5, v10);
    if ((*(v0[4] + *(v0[3] + 60)) & 1) == 0)
    {
      v12 = v0[31];
      v13 = v0[32];
      v14 = v0[27];
      AsyncFlatMapSequence.Iterator.currentIterator.getter();
      if ((*(v13 + 48))(v12, 1, v14) == 1)
      {
        v15 = v0[10];
        v16 = v0[11];
        (*(v0[29] + 8))(v0[31], v0[28]);
        swift_getAssociatedTypeWitness();
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        v18 = *(AssociatedConformanceWitness + 32);
        v19 = swift_checkMetadataState();
        v58 = (v18 + *v18);
        v20 = swift_task_alloc(v18[1]);
        v0[39] = v20;
        *v20 = v0;
        v20[1] = AsyncThrowingFlatMapSequence.Iterator.next();
        v21 = v0[15];
        v22 = v0[4];
        v23 = v19;
        v24 = AssociatedConformanceWitness;
        v25 = v58;
      }

      else
      {
        v42 = v0[34];
        v43 = v0[31];
        v44 = v0[32];
        v45 = v0[27];
        v46 = v0[18];
        v47 = v0[5];
        v48 = *(v44 + 32);
        v0[35] = v48;
        v0[36] = (v44 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
        v48(v42, v43, v45);
        v49 = swift_getAssociatedConformanceWitness();
        v63 = (*(v49 + 32) + **(v49 + 32));
        v50 = swift_task_alloc(*(*(v49 + 32) + 4));
        v0[37] = v50;
        *v50 = v0;
        v50[1] = AsyncThrowingFlatMapSequence.Iterator.next();
        v51 = v0[34];
        v23 = v0[27];
        v21 = v0[23];
        v24 = v49;
        v25 = v63;
      }

      return v25(v21, v23, v24);
    }
  }

  else
  {
    v52 = v0[35];
    v54 = v0[36];
    v26 = v0[34];
    v27 = v0[32];
    v28 = v0[30];
    v30 = v0[26];
    v29 = v0[27];
    v56 = v0[3];
    v59 = v0[4];
    v61 = v0[2];
    v31 = *(v2 + 32);
    v31(v30, v1, v3);
    v52(v28, v26, v29);
    (*(v27 + 56))(v28, 0, 1, v29);
    AsyncFlatMapSequence.Iterator.currentIterator.setter(v28, v56);
    v31(v61, v30, v3);
    v11 = 0;
  }

  v33 = v0[33];
  v32 = v0[34];
  v35 = v0[30];
  v34 = v0[31];
  v37 = v0[25];
  v36 = v0[26];
  v38 = v0[23];
  v39 = v0[22];
  v53 = v0[17];
  v55 = v0[15];
  v57 = v0[9];
  v60 = v0[8];
  v62 = v0[7];
  (*(v0[24] + 56))(v0[2], v11, 1, v0[19]);
  v32;
  v33;
  v34;
  v35;
  v36;
  v37;
  v38;
  v39;
  v53;
  v55;
  v57;
  v60;
  v62;
  v40 = v0[1];

  return v40();
}

{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[12];
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    (*(v0[14] + 8))(v1, v0[13]);
    v5 = v0[33];
    v4 = v0[34];
    v7 = v0[30];
    v6 = v0[31];
    v9 = v0[25];
    v8 = v0[26];
    v10 = v0[23];
    v11 = v0[22];
    v12 = v0[17];
    v13 = v0[15];
    v23 = v13;
    v24 = v0[9];
    v25 = v0[8];
    v26 = v0[7];
    (*(v0[24] + 56))(v0[2], 1, 1, v0[19]);
    v4;
    v5;
    v6;
    v7;
    v8;
    v9;
    v10;
    v11;
    v12;
    v23;
    v24;
    v25;
    v26;
    v14 = v0[1];

    return v14();
  }

  else
  {
    v17 = v0[3];
    v16 = v0[4];
    (*(v2 + 32))(v0[17], v1, v3);
    v18 = (v16 + *(v17 + 52));
    v19 = *v18;
    v0[41] = v18[1];

    v27 = (v19 + *v19);
    v20 = swift_task_alloc(v19[1]);
    v0[42] = v20;
    *v20 = v0;
    v20[1] = AsyncThrowingFlatMapSequence.Iterator.next();
    v21 = v0[17];
    v22 = v0[8];

    return v27(v22, v21);
  }
}

{
  v1 = v0[33];
  v2 = v0[27];
  v3 = v0[18];
  v4 = v0[9];
  v6 = v0[6];
  v5 = v0[7];
  v7 = v0[5];
  (*(v6 + 32))(v4, v0[8], v7);
  (*(v6 + 16))(v5, v4, v7);
  (*(v3 + 40))(v7, v3);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = (*(AssociatedConformanceWitness + 32) + **(AssociatedConformanceWitness + 32));
  v9 = swift_task_alloc(*(*(AssociatedConformanceWitness + 32) + 4));
  v0[44] = v9;
  *v9 = v0;
  v9[1] = AsyncThrowingFlatMapSequence.Iterator.next();
  v10 = v0[33];
  v11 = v0[27];
  v12 = v0[22];

  return v14(v12, v11, AssociatedConformanceWitness);
}

{
  v1 = v0[24];
  v2 = v0[22];
  v3 = v0[19];
  v4 = (*(v1 + 48))(v2, 1, v3);
  v6 = v0[32];
  v5 = v0[33];
  v7 = v0[30];
  v8 = v0[27];
  if (v4 == 1)
  {
    v9 = v0[20];
    v10 = v0[21];
    v12 = v0[3];
    v11 = v0[4];
    (*(v6 + 8))(v0[33], v0[27]);
    (*(v10 + 8))(v2, v9);
    v13 = 1;
    (*(v6 + 56))(v7, 1, 1, v8);
    AsyncFlatMapSequence.Iterator.currentIterator.setter(v7, v12);
    if (*(v0[4] + *(v0[3] + 60)) != 1)
    {
      v14 = v0[31];
      v15 = v0[32];
      v16 = v0[27];
      AsyncFlatMapSequence.Iterator.currentIterator.getter();
      if ((*(v15 + 48))(v14, 1, v16) == 1)
      {
        v17 = v0[10];
        v18 = v0[11];
        (*(v0[29] + 8))(v0[31], v0[28]);
        swift_getAssociatedTypeWitness();
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        v20 = *(AssociatedConformanceWitness + 32);
        v21 = swift_checkMetadataState();
        v55 = (v20 + *v20);
        v22 = swift_task_alloc(v20[1]);
        v0[39] = v22;
        *v22 = v0;
        v22[1] = AsyncThrowingFlatMapSequence.Iterator.next();
        v23 = v0[15];
        v24 = v0[4];
        v25 = v21;
        v26 = AssociatedConformanceWitness;
        v27 = v55;
      }

      else
      {
        v41 = v0[34];
        v42 = v0[31];
        v43 = v0[32];
        v44 = v0[27];
        v45 = v0[18];
        v46 = v0[5];
        v47 = *(v43 + 32);
        v0[35] = v47;
        v0[36] = (v43 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
        v47(v41, v42, v44);
        v48 = swift_getAssociatedConformanceWitness();
        v60 = (*(v48 + 32) + **(v48 + 32));
        v49 = swift_task_alloc(*(*(v48 + 32) + 4));
        v0[37] = v49;
        *v49 = v0;
        v49[1] = AsyncThrowingFlatMapSequence.Iterator.next();
        v50 = v0[34];
        v25 = v0[27];
        v23 = v0[23];
        v26 = v48;
        v27 = v60;
      }

      return v27(v23, v25, v26);
    }
  }

  else
  {
    v28 = v0[25];
    v29 = v0[3];
    v53 = v28;
    v56 = v0[4];
    v58 = v0[2];
    v30 = *(v1 + 32);
    v30();
    (*(v6 + 32))(v7, v5, v8);
    (*(v6 + 56))(v7, 0, 1, v8);
    AsyncFlatMapSequence.Iterator.currentIterator.setter(v7, v29);
    (v30)(v58, v53, v3);
    v13 = 0;
  }

  v32 = v0[33];
  v31 = v0[34];
  v34 = v0[30];
  v33 = v0[31];
  v36 = v0[25];
  v35 = v0[26];
  v37 = v0[23];
  v38 = v0[22];
  v51 = v0[17];
  v52 = v0[15];
  v54 = v0[9];
  v57 = v0[8];
  v59 = v0[7];
  (*(v0[24] + 56))(v0[2], v13, 1, v0[19]);
  v31;
  v32;
  v33;
  v34;
  v35;
  v36;
  v37;
  v38;
  v51;
  v52;
  v54;
  v57;
  v59;
  v39 = v0[1];

  return v39();
}

{
  v1 = v0[38];
  *(v0[4] + *(v0[3] + 60)) = 1;
  swift_willThrow();
  v2 = v0[33];
  v4 = v0[30];
  v3 = v0[31];
  v6 = v0[25];
  v5 = v0[26];
  v8 = v0[22];
  v7 = v0[23];
  v9 = v0[17];
  v10 = v0[15];
  v13 = v0[9];
  v14 = v0[8];
  v15 = v0[7];
  v16 = v0[38];
  v0[34];
  v2;
  v3;
  v4;
  v5;
  v6;
  v7;
  v8;
  v9;
  v10;
  v13;
  v14;
  v15;
  v11 = v0[1];

  return v11();
}

{
  v1 = v0[33];
  v3 = v0[30];
  v2 = v0[31];
  v5 = v0[25];
  v4 = v0[26];
  v7 = v0[22];
  v6 = v0[23];
  v8 = v0[17];
  v9 = v0[15];
  v12 = v0[9];
  v13 = v0[8];
  v14 = v0[7];
  v15 = v0[40];
  v0[34];
  v1;
  v2;
  v3;
  v4;
  v5;
  v6;
  v7;
  v8;
  v9;
  v12;
  v13;
  v14;
  v10 = v0[1];

  return v10();
}

{
  v1 = v0[43];
  v2 = v0[32];
  v3 = v0[30];
  v4 = v0[27];
  v5 = v0[3];
  *(v0[4] + *(v5 + 60)) = 1;
  (*(v2 + 56))(v3, 1, 1, v4);
  AsyncFlatMapSequence.Iterator.currentIterator.setter(v3, v5);
  swift_willThrow();
  if (!v1)
  {
    (*(v0[6] + 8))(v0[9], v0[5]);
  }

  v6 = v0[33];
  v8 = v0[30];
  v7 = v0[31];
  v10 = v0[25];
  v9 = v0[26];
  v12 = v0[22];
  v11 = v0[23];
  v13 = v0[17];
  v14 = v0[15];
  v17 = v0[9];
  v18 = v0[8];
  v19 = v0[7];
  v0[34];
  v6;
  v7;
  v8;
  v9;
  v10;
  v11;
  v12;
  v13;
  v14;
  v17;
  v18;
  v19;
  v15 = v0[1];

  return v15();
}

{
  v1 = v0[45];
  v2 = v0[43];
  v3 = v0[32];
  v4 = v0[30];
  v5 = v0[27];
  v6 = v0[3];
  *(v0[4] + *(v6 + 60)) = 1;
  (*(v3 + 56))(v4, 1, 1, v5);
  AsyncFlatMapSequence.Iterator.currentIterator.setter(v4, v6);
  swift_willThrow();
  if (!v2)
  {
    (*(v0[6] + 8))(v0[9], v0[5]);
  }

  v7 = v0[33];
  v9 = v0[30];
  v8 = v0[31];
  v11 = v0[25];
  v10 = v0[26];
  v13 = v0[22];
  v12 = v0[23];
  v14 = v0[17];
  v15 = v0[15];
  v18 = v0[9];
  v19 = v0[8];
  v20 = v0[7];
  v0[34];
  v7;
  v8;
  v9;
  v10;
  v11;
  v12;
  v13;
  v14;
  v15;
  v18;
  v19;
  v20;
  v16 = v0[1];

  return v16();
}