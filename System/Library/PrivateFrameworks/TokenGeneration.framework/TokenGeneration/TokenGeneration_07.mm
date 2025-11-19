uint64_t specialized closure #1 in AsyncThrowingStream<>.init<A>(_:mapError:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 192);
  v7 = *v3;
  *(v7 + 200) = v2;

  if (v2)
  {

    return MEMORY[0x1EEE6DFA0](specialized closure #1 in AsyncThrowingStream<>.init<A>(_:mapError:), 0, 0);
  }

  else
  {
    v8 = *(v7 + 8);

    return v8(a1, a2);
  }
}

uint64_t specialized closure #1 in AsyncThrowingStream<>.init<A>(_:mapError:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[23] = a4;
  v5[24] = a5;
  v5[21] = a2;
  v5[22] = a3;
  v5[20] = a1;
  return MEMORY[0x1EEE6DFA0](specialized closure #1 in AsyncThrowingStream<>.init<A>(_:mapError:), 0, 0);
}

{
  v5[15] = a4;
  v5[16] = a5;
  v5[13] = a1;
  v5[14] = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23AsyncCompactMapSequenceVy20ModelManagerServices08ResponseD0V10Foundation4DataVGMd, &_ss23AsyncCompactMapSequenceVy20ModelManagerServices08ResponseD0V10Foundation4DataVGMR);
  v5[17] = v6;
  v7 = *(v6 - 8);
  v5[18] = v7;
  v8 = *(v7 + 64) + 15;
  v5[19] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss23AsyncCompactMapSequenceV8IteratorVy20ModelManagerServices08ResponseD0V10Foundation4DataV_GSgMd, &_ss23AsyncCompactMapSequenceV8IteratorVy20ModelManagerServices08ResponseD0V10Foundation4DataV_GSgMR) - 8) + 64) + 15;
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v5[22] = swift_projectBox();

  return MEMORY[0x1EEE6DFA0](specialized closure #1 in AsyncThrowingStream<>.init<A>(_:mapError:), 0, 0);
}

{
  *(v5 + 16) = a1;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = specialized closure #1 in AsyncThrowingStream<>.init<A>(_:mapError:);

  return specialized closure #1 in AsyncThrowingStream<>.init<A>(_:mapError:)(a2, a3, a4, a5);
}

{
  *(v5 + 16) = a1;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = specialized closure #1 in AsyncThrowingStream<>.init<A>(_:mapError:);

  return specialized closure #1 in AsyncThrowingStream<>.init<A>(_:mapError:)(a2, a3, a4, a5);
}

uint64_t specialized Clock.sleep(for:tolerance:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x1EEE6DFA0](specialized Clock.sleep(for:tolerance:), 0, 0);
}

uint64_t specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
  a2[3] = v4;
}

BOOL specialized String.withCString<A>(_:)(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 >= 0x21 || ((0x100003E01uLL >> v3) & 1) == 0)
      {
LABEL_10:
        v5 = _swift_stdlib_strtod_clocale();
        return v5 && *v5 == 0;
      }

      return 0;
    }
  }

  _StringGuts._slowWithCString<A>(_:)();
  if (!v2)
  {
    return v7;
  }

  return v4;
}

uint64_t specialized closure #1 in closure #1 in withTimeout<A>(timeout:_:)()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = specialized closure #1 in closure #1 in withTimeout<A>(timeout:_:);
  }

  else
  {
    v3 = specialized closure #1 in closure #1 in withTimeout<A>(timeout:_:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);
  *v1 = *(v0 + 16);
  *(v1 + 8) = v2;
  return (*(v0 + 8))();
}

{
  v1 = *(v0 + 56);
  return (*(v0 + 8))();
}

{
  v2 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = specialized closure #1 in closure #1 in withTimeout<A>(timeout:_:);
  }

  else
  {
    v3 = specialized closure #1 in closure #1 in withTimeout<A>(timeout:_:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  **(v0 + 32) = *(v0 + 16);
  return (*(v0 + 8))();
}

{
  v1 = *(v0 + 48);
  return (*(v0 + 8))();
}

uint64_t specialized closure #2 in closure #1 in withTimeout<A>(timeout:_:)(uint64_t a1, double a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = specialized closure #2 in closure #1 in withTimeout<A>(timeout:_:);

  return specialized closure #2 in closure #1 in withTimeout<A>(timeout:_:)(a2);
}

{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = specialized closure #2 in closure #1 in withTimeout<A>(timeout:_:);

  return specialized closure #2 in closure #1 in withTimeout<A>(timeout:_:)(a2);
}

uint64_t specialized closure #2 in closure #1 in withTimeout<A>(timeout:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  v9 = *(*v4 + 24);
  v10 = *v4;

  if (!v3)
  {
    v11 = *(v8 + 16);
    *v11 = a1;
    v11[1] = a2;
    v11[2] = a3;
  }

  v12 = *(v10 + 8);

  return v12();
}

uint64_t partial apply for specialized closure #1 in AsyncThrowingStream<>.init<A>(_:mapError:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[10];
  v6 = v1[11];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return specialized closure #1 in AsyncThrowingStream<>.init<A>(_:mapError:)(a1, v4, (v1 + 3), v5, v6);
}

{
  v4 = v1[2];
  v5 = v1[10];
  v6 = v1[11];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return specialized closure #1 in AsyncThrowingStream<>.init<A>(_:mapError:)(a1, v4, (v1 + 3), v5, v6);
}

{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss16AsyncMapSequenceVy15TokenGeneration0D6StreamVySSGSSGMd, &_ss16AsyncMapSequenceVy15TokenGeneration0D6StreamVySSGSSGMR) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return specialized closure #1 in AsyncThrowingStream<>.init<A>(_:mapError:)(a1, v7, v1 + v6, v9, v10);
}

{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss23AsyncCompactMapSequenceVy20ModelManagerServices08ResponseD0V10Foundation4DataVGMd, &_ss23AsyncCompactMapSequenceVy20ModelManagerServices08ResponseD0V10Foundation4DataVGMR) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return specialized closure #1 in AsyncThrowingStream<>.init<A>(_:mapError:)(a1, v6, v1 + v5, v8, v9);
}

uint64_t partial apply for closure #1 in TokenGenerator._oneShotCompletion<A, B>(type:configuration:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = (*(*(v5 - 8) + 80) + 48) & ~*(*(v5 - 8) + 80);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return closure #1 in TokenGenerator._oneShotCompletion<A, B>(type:configuration:)(a1, v1 + v8, v4, v5, v6, v7);
}

uint64_t partial apply for closure #2 in TokenGenerator._oneShotCompletion<A, B>(type:configuration:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return closure #2 in TokenGenerator._oneShotCompletion<A, B>(type:configuration:)(a1, v8, v9, v10, v4, v5, v6, v7);
}

uint64_t partial apply for closure #2 in TokenGenerator._completeSingleElement<A, B>(type:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v10 = *(v4 + 16);
  v17 = *(v4 + 24);
  v12 = *(v4 + 40);
  v11 = *(v4 + 48);
  v14 = *(v4 + 56);
  v13 = *(v4 + 64);
  v15 = swift_task_alloc();
  *(v5 + 16) = v15;
  *v15 = v5;
  v15[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return closure #2 in TokenGenerator._completeSingleElement<A, B>(type:configuration:)(a1, a2, a3, a4 & 1, v11, v14, v13, v10);
}

uint64_t partial apply for closure #2 in TokenGenerator._completeMultiElement<A, B>(type:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v10 = *(v4 + 16);
  v17 = *(v4 + 24);
  v12 = *(v4 + 40);
  v11 = *(v4 + 48);
  v14 = *(v4 + 56);
  v13 = *(v4 + 64);
  v15 = swift_task_alloc();
  *(v5 + 16) = v15;
  *v15 = v5;
  v15[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return closure #2 in TokenGenerator._completeMultiElement<A, B>(type:configuration:)(a1, a2, a3, a4 & 1, v11, v14, v13, v10);
}

uint64_t objectdestroyTm()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);
  v5 = *(v0 + v4);

  return MEMORY[0x1EEE6BDD0](v0, v4 + 8, v2 | 7);
}

uint64_t partial apply for closure #1 in TokenGenerator._streamResponse<A>(configuration:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = (*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80);
  v7 = *(v1 + ((*(*(v4 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return closure #1 in TokenGenerator._streamResponse<A>(configuration:)(a1, v1 + v6, v7, v4, v5);
}

uint64_t objectdestroy_32Tm()
{
  v1 = *(*(v0 + 24) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t partial apply for closure #1 in TokenGenerator._oneShotResponse<A, B>(type:configuration:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = (*(*(v5 - 8) + 80) + 48) & ~*(*(v5 - 8) + 80);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return closure #1 in TokenGenerator._oneShotResponse<A, B>(type:configuration:)(a1, v1 + v8, v4, v5, v6, v7);
}

uint64_t partial apply for closure #2 in TokenGenerator._oneShotResponse<A, B>(type:configuration:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return closure #2 in TokenGenerator._oneShotResponse<A, B>(type:configuration:)(a1, v8, v9, v10, v4, v5, v6, v7);
}

uint64_t partial apply for closure #2 in TokenGenerator._respondMultiElement<A, B>(type:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v10 = *(v4 + 16);
  v17 = *(v4 + 24);
  v12 = *(v4 + 40);
  v11 = *(v4 + 48);
  v14 = *(v4 + 56);
  v13 = *(v4 + 64);
  v15 = swift_task_alloc();
  *(v5 + 16) = v15;
  *v15 = v5;
  v15[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return closure #2 in TokenGenerator._respondMultiElement<A, B>(type:configuration:)(a1, a2, a3, a4 & 1, v11, v14, v13, v10);
}

uint64_t partial apply for closure #2 in TokenGenerator._respondSingleElement<A, B>(type:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v10 = *(v4 + 16);
  v17 = *(v4 + 24);
  v12 = *(v4 + 40);
  v11 = *(v4 + 48);
  v14 = *(v4 + 56);
  v13 = *(v4 + 64);
  v15 = swift_task_alloc();
  *(v5 + 16) = v15;
  *v15 = v5;
  v15[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return closure #2 in TokenGenerator._completeSingleElement<A, B>(type:configuration:)(a1, a2, a3, a4 & 1, v11, v14, v13, v10);
}

unint64_t lazy protocol witness table accessor for type PromptCompletionStream and conformance PromptCompletionStream()
{
  result = lazy protocol witness table cache variable for type PromptCompletionStream and conformance PromptCompletionStream;
  if (!lazy protocol witness table cache variable for type PromptCompletionStream and conformance PromptCompletionStream)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStream and conformance PromptCompletionStream);
  }

  return result;
}

uint64_t objectdestroy_26Tm()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_0(v0 + 3);
  v2 = v0[11];

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t partial apply for closure #1 in TokenGenerator._render<A>(configuration:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return closure #1 in TokenGenerator._tokenCount<A>(configuration:)(a1, v6, v4, v5);
}

{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return closure #1 in TokenGenerator._tokenCount<A>(configuration:)(a1, v6, v4, v5);
}

uint64_t instantiation function for generic protocol witness table for TokenGeneratorCompletionResponseStringStream(uint64_t a1)
{
  result = lazy protocol witness table accessor for type TokenGeneratorCompletionResponse and conformance TokenGeneratorCompletionResponse(&lazy protocol witness table cache variable for type TokenGeneratorCompletionResponseStringStream and conformance TokenGeneratorCompletionResponseStringStream, type metadata accessor for TokenGeneratorCompletionResponseStringStream);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type TokenGeneratorCompletionResponse and conformance TokenGeneratorCompletionResponse(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t instantiation function for generic protocol witness table for TokenGeneratorChatResponseStringStream(uint64_t a1)
{
  result = lazy protocol witness table accessor for type TokenGeneratorCompletionResponse and conformance TokenGeneratorCompletionResponse(&lazy protocol witness table cache variable for type TokenGeneratorChatResponseStringStream and conformance TokenGeneratorChatResponseStringStream, type metadata accessor for TokenGeneratorChatResponseStringStream);
  *(a1 + 8) = result;
  return result;
}

void type metadata accessor for TokenStream<String>()
{
  if (!lazy cache variable for type metadata for TokenStream<String>)
  {
    v0 = type metadata accessor for TokenStream();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TokenStream<String>);
    }
  }
}

void type metadata accessor for StringResponseSanitizerWithConfiguration?()
{
  if (!lazy cache variable for type metadata for StringResponseSanitizerWithConfiguration?)
  {
    type metadata accessor for StringResponseSanitizerWithConfiguration();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StringResponseSanitizerWithConfiguration?);
    }
  }
}

void type metadata accessor for Double?()
{
  if (!lazy cache variable for type metadata for Double?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Double?);
    }
  }
}

void type metadata completion function for TokenGeneratorCompletionResponseStringStream()
{
  type metadata accessor for TokenStream<String>();
  if (v0 <= 0x3F)
  {
    type metadata accessor for StringResponseSanitizerWithConfiguration?();
    if (v1 <= 0x3F)
    {
      type metadata accessor for GenerativeFunctionInstrumenter();
      if (v2 <= 0x3F)
      {
        type metadata accessor for Double?();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v9 = a4(0);
  v10 = *(v9 - 8);
  if (*(v10 + 84) == a2)
  {
    v11 = *(v10 + 48);

    return v11(a1, a2, v9);
  }

  else
  {
    v13 = a5(0);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + *(a3 + 20);

    return v14(v15, a2, v13);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v11 = a5(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a3)
  {
    v13 = *(v12 + 56);

    return v13(a1, a2, a2, v11);
  }

  else
  {
    v15 = a6(0);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + *(a4 + 20);

    return v16(v17, a2, a2, v15);
  }
}

void type metadata accessor for AsyncThrowingStream<String, Error>.Iterator()
{
  if (!lazy cache variable for type metadata for AsyncThrowingStream<String, Error>.Iterator)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v0 = type metadata accessor for AsyncThrowingStream.Iterator();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AsyncThrowingStream<String, Error>.Iterator);
    }
  }
}

uint64_t dispatch thunk of TokenGeneratorResponseStringStreamAsyncSequence.collect()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 24);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = dispatch thunk of TokenGeneratorResponseStringStreamAsyncSequence.collect();

  return v9(a1, a2);
}

uint64_t dispatch thunk of TokenGeneratorResponseStringStreamAsyncSequence.collect()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*v3 + 16);
  v10 = *v3;

  v8 = *(v10 + 8);

  return v8(a1, a2, a3);
}

uint64_t __swift_get_extra_inhabitant_index_123Tm(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMR);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for GenerativeFunctionInstrumenter();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *__swift_store_extra_inhabitant_index_124Tm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMR);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for GenerativeFunctionInstrumenter();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void type metadata completion function for TokenGeneratorResponsePromptCompletionStream()
{
  type metadata accessor for StringResponseSanitizerWithConfiguration?();
  if (v0 <= 0x3F)
  {
    type metadata accessor for GenerativeFunctionInstrumenter();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Double?();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_168Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a2)
  {
    v10 = *(v9 + 48);

    return v10(a1, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for GenerativeFunctionInstrumenter();
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 20);

    return v13(v14, a2, v12);
  }
}

uint64_t __swift_store_extra_inhabitant_index_169Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v11 = *(v10 - 8);
  if (*(v11 + 84) == a3)
  {
    v12 = *(v11 + 56);

    return v12(a1, a2, a2, v10);
  }

  else
  {
    v14 = type metadata accessor for GenerativeFunctionInstrumenter();
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 20);

    return v15(v16, a2, a2, v14);
  }
}

uint64_t type metadata completion function for TokenGeneratorCompletionResponse(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void type metadata accessor for AsyncThrowingStream<PromptCompletionEvent, Error>.Iterator()
{
  if (!lazy cache variable for type metadata for AsyncThrowingStream<PromptCompletionEvent, Error>.Iterator)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s15TokenGeneration21PromptCompletionEvent_pMd, &_s15TokenGeneration21PromptCompletionEvent_pMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v0 = type metadata accessor for AsyncThrowingStream.Iterator();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AsyncThrowingStream<PromptCompletionEvent, Error>.Iterator);
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

uint64_t getEnumTagSinglePayload for TokenGenerator.CompleteGenerableConfigurationInput(uint64_t a1, unsigned int a2)
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
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TokenGenerator.CompleteGenerableConfigurationInput(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 41) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
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

uint64_t destructiveInjectEnumTag for TokenGenerator.CompleteGenerableConfigurationInput(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 56) = a2;
  return result;
}

void type metadata accessor for (prompt: PromptVariant)()
{
  if (!lazy cache variable for type metadata for (prompt: PromptVariant))
  {
    v0 = type metadata accessor for PromptVariant();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for (prompt: PromptVariant));
    }
  }
}

void type metadata accessor for (promptTemplateInfo: PromptTemplateInfo, renderedPrompt: PromptVariant)()
{
  if (!lazy cache variable for type metadata for (promptTemplateInfo: PromptTemplateInfo, renderedPrompt: PromptVariant))
  {
    type metadata accessor for PromptTemplateInfo();
    type metadata accessor for PromptVariant();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (promptTemplateInfo: PromptTemplateInfo, renderedPrompt: PromptVariant));
    }
  }
}

uint64_t partial apply for specialized closure #1 in StreamWithTimeout.Iterator.next()(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return specialized closure #1 in StreamWithTimeout.Iterator.next()(a1, v1);
}

{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return specialized closure #1 in StreamWithTimeout.Iterator.next()(a1, v1);
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t partial apply for specialized closure #1 in closure #1 in withTimeout<A>(timeout:_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return specialized closure #1 in closure #1 in withTimeout<A>(timeout:_:)(a1, v4, v5, v7);
}

{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return specialized closure #1 in closure #1 in withTimeout<A>(timeout:_:)(a1, v4, v5, v7);
}

{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return specialized closure #1 in closure #1 in withTimeout<A>(timeout:_:)(a1, v4, v5, v7);
}

{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return specialized closure #1 in closure #1 in withTimeout<A>(timeout:_:)(a1, v4, v5, v7);
}

{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return specialized closure #1 in closure #1 in withTimeout<A>(timeout:_:)(a1, v4, v5, v7);
}

{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return specialized closure #1 in closure #1 in withTimeout<A>(timeout:_:)(a1, v4, v5, v7);
}

uint64_t partial apply for specialized closure #2 in closure #1 in withTimeout<A>(timeout:_:)()
{
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return specialized closure #2 in closure #1 in withTimeout<A>(timeout:_:)(v4);
}

{
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return specialized closure #2 in closure #1 in withTimeout<A>(timeout:_:)(v4);
}

{
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return specialized closure #2 in closure #1 in withTimeout<A>(timeout:_:)(v4);
}

{
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return specialized closure #2 in closure #1 in withTimeout<A>(timeout:_:)(v4);
}

uint64_t partial apply for closure #1 in TokenGenerator._respond<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(v1 + 16);
  v6 = *(v1 + 40);
  v17 = *(v1 + 32);
  v18 = *(v1 + 24);
  v16 = *(v1 + 48);
  v7 = *(v1 + 64);
  v8 = *(type metadata accessor for GenerativeFunctionInstrumenter() - 8);
  v9 = (*(v8 + 80) + 72) & ~*(v8 + 80);
  v10 = (v9 + *(v8 + 64) + *(*(v6 - 8) + 80)) & ~*(*(v6 - 8) + 80);
  v11 = (*(*(v6 - 8) + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v1 + v11);
  v13 = *(v1 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return closure #1 in TokenGenerator._respond<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:)(a1, v1 + v9, v1 + v10, v12, v13, v5, v18, v17);
}

uint64_t partial apply for closure #2 in TokenGenerator._respond<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:)(uint64_t a1)
{
  v4 = *(v1 + 24);
  v15 = *(v1 + 16);
  v5 = *(v1 + 32);
  v14 = *(v1 + 40);
  v7 = *(v1 + 56);
  v6 = *(v1 + 64);
  v8 = *(v1 + 72);
  v9 = *(v1 + 80);
  v11 = *(v1 + 88);
  v10 = *(v1 + 96);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return closure #2 in TokenGenerator._respond<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:)(a1, v8, v9, v11, v10);
}

uint64_t partial apply for closure #1 in closure #1 in TokenGenerator._respond<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return closure #1 in closure #1 in TokenGenerator._respond<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:)(a1, v4);
}

uint64_t partial apply for closure #1 in closure #2 in closure #1 in TokenGenerator._respond<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v11 = v1[8];
  v10 = v1[9];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return closure #1 in closure #2 in closure #1 in TokenGenerator._respond<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:)(a1);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable () -> (@out PromptCompletion, @error @owned Error)(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return thunk for @escaping @callee_guaranteed @Sendable () -> (@out PromptCompletion, @error @owned Error)(a1, v5);
}

uint64_t partial apply for closure #1 in closure #1 in TokenGenerator._streamResponse<A>(configuration:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return closure #1 in closure #1 in TokenGenerator._streamResponse<A>(configuration:)(a1, v4);
}

uint64_t specialized closure #1 in withTimeout<A>(timeout:_:)(uint64_t a1, uint64_t a2, double a3)
{
  v8 = *v4;
  v9 = *(*v4 + 24);
  v10 = *v4;

  if (!v3)
  {
    v11 = *(v8 + 16);
    *v11 = a1;
    *(v11 + 8) = a2;
    *(v11 + 16) = a3;
  }

  v12 = *(v10 + 8);

  return v12();
}

uint64_t specialized closure #2 in closure #1 in withTimeout<A>(timeout:_:)(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 24);
  v8 = *v3;

  if (!v2)
  {
    v9 = *(v6 + 16);
    *v9 = a1;
    v9[1] = a2;
  }

  v10 = *(v8 + 8);

  return v10();
}

uint64_t specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, uint64_t *a5)
{
  v56 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v45 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v46 = v10;
  v47 = v6;
  while (v9)
  {
    v50 = a4;
    v14 = v11;
LABEL_14:
    v16 = (v14 << 10) | (16 * __clz(__rbit64(v9)));
    v17 = (*(a1 + 48) + v16);
    v18 = *v17;
    v19 = v17[1];
    v20 = (*(a1 + 56) + v16);
    v21 = *v20;
    v22 = v20[1];
    v55[0] = v18;
    v55[1] = v19;
    v55[2] = v21;
    v55[3] = v22;

    a2(&v51, v55);

    v23 = v51;
    v24 = v52;
    v25 = v53;
    v26 = v54;
    v27 = *v56;
    v29 = specialized __RawDictionaryStorage.find<A>(_:)(v51, v52);
    v30 = *(v27 + 16);
    v31 = (v28 & 1) == 0;
    v32 = v30 + v31;
    if (__OFADD__(v30, v31))
    {
      goto LABEL_25;
    }

    v33 = v28;
    if (*(v27 + 24) >= v32)
    {
      if ((v50 & 1) == 0)
      {
        specialized _NativeDictionary.copy()();
      }
    }

    else
    {
      v34 = v56;
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v32, v50 & 1);
      v35 = *v34;
      v36 = specialized __RawDictionaryStorage.find<A>(_:)(v23, v24);
      if ((v33 & 1) != (v37 & 1))
      {
        goto LABEL_27;
      }

      v29 = v36;
    }

    v9 &= v9 - 1;
    v38 = *v56;
    if (v33)
    {

      v12 = (v38[7] + 16 * v29);
      v13 = v12[1];
      *v12 = v25;
      v12[1] = v26;
    }

    else
    {
      v38[(v29 >> 6) + 8] |= 1 << v29;
      v39 = (v38[6] + 16 * v29);
      *v39 = v23;
      v39[1] = v24;
      v40 = (v38[7] + 16 * v29);
      *v40 = v25;
      v40[1] = v26;
      v41 = v38[2];
      v42 = __OFADD__(v41, 1);
      v43 = v41 + 1;
      if (v42)
      {
        goto LABEL_26;
      }

      v38[2] = v43;
    }

    a4 = 1;
    v11 = v14;
    v10 = v46;
    v6 = v47;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      outlined consume of [String : String].Iterator._Variant();
    }

    v9 = *(v6 + 8 * v14);
    ++v15;
    if (v9)
    {
      v50 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t objectdestroy_15Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(*(v2 - 8) + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*(v2 - 8) + 64);
  v6 = v1 + v4;
  v7 = *(v1 + v4 + 8);

  v8 = *(v1 + v4 + 24);

  v9 = *(v2 + 20);
  v10 = type metadata accessor for StringResponseSanitizerWithConfiguration();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v1 + v4 + v9, 1, v10))
  {
    (*(v11 + 8))(v6 + v9, v10);
  }

  v12 = *(v2 + 24);
  v13 = type metadata accessor for GenerativeFunctionInstrumenter();
  (*(*(v13 - 8) + 8))(v6 + v12, v13);

  return MEMORY[0x1EEE6BDD0](v1, v4 + v5, v3 | 7);
}

uint64_t partial apply for specialized closure #1 in closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect()(uint64_t a1)
{
  v4 = *(type metadata accessor for TokenGeneratorChatResponseStringStream(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return specialized closure #1 in closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect()(a1, v1 + v5);
}

{
  v4 = *(type metadata accessor for TokenGeneratorCompletionResponseStringStream(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return specialized closure #1 in closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect()(a1, v1 + v5);
}

uint64_t partial apply for specialized closure #2 in closure #1 in withTimeout<A>(timeout:_:)(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return specialized closure #2 in closure #1 in withTimeout<A>(timeout:_:)(a1, v6);
}

{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return specialized closure #2 in closure #1 in withTimeout<A>(timeout:_:)(a1, v6);
}

uint64_t objectdestroy_289Tm()
{
  v1 = *(v0 + 40);
  v2 = type metadata accessor for GenerativeFunctionInstrumenter();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 72) & ~v4;
  v6 = *(v1 - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + *(v3 + 64) + v7) & ~v7;
  v9 = v4 | v7;
  v10 = (*(v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v0 + v5, v2);
  (*(v6 + 8))(v0 + v8, v1);
  v11 = *(v0 + v10);

  return MEMORY[0x1EEE6BDD0](v0, ((v10 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v9 | 7);
}

uint64_t partial apply for closure #1 in TokenGenerator._complete<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(v1 + 16);
  v6 = *(v1 + 40);
  v17 = *(v1 + 32);
  v18 = *(v1 + 24);
  v16 = *(v1 + 48);
  v7 = *(v1 + 64);
  v8 = *(type metadata accessor for GenerativeFunctionInstrumenter() - 8);
  v9 = (*(v8 + 80) + 72) & ~*(v8 + 80);
  v10 = (v9 + *(v8 + 64) + *(*(v6 - 8) + 80)) & ~*(*(v6 - 8) + 80);
  v11 = (*(*(v6 - 8) + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v1 + v11);
  v13 = *(v1 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return closure #1 in TokenGenerator._complete<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:)(a1, v1 + v9, v1 + v10, v12, v13, v5, v18, v17);
}

uint64_t partial apply for closure #2 in TokenGenerator._complete<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:)(uint64_t a1)
{
  v4 = *(v1 + 24);
  v15 = *(v1 + 16);
  v5 = *(v1 + 32);
  v14 = *(v1 + 40);
  v7 = *(v1 + 56);
  v6 = *(v1 + 64);
  v8 = *(v1 + 72);
  v9 = *(v1 + 80);
  v11 = *(v1 + 88);
  v10 = *(v1 + 96);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return closure #2 in TokenGenerator._complete<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:)(a1, v8, v9, v11, v10);
}

uint64_t partial apply for closure #1 in closure #1 in TokenGenerator._complete<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return closure #1 in closure #1 in TokenGenerator._complete<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:)(a1, v4);
}

uint64_t partial apply for closure #1 in closure #2 in closure #1 in TokenGenerator._complete<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v11 = v1[8];
  v10 = v1[9];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return closure #1 in closure #2 in closure #1 in TokenGenerator._complete<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:)(a1);
}

uint64_t partial apply for closure #1 in TokenGenerator.completeGenerable<A>(type:configurationInput:generativeFunctionInstrumenter:getStringRenderedPromptSanitizerWithConfiguration:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return closure #1 in TokenGenerator.completeGenerable<A>(type:configurationInput:generativeFunctionInstrumenter:getStringRenderedPromptSanitizerWithConfiguration:)(a1, v6, v7, v9, v8, v4, v5);
}

uint64_t outlined assign with take of AsyncCompactMapSequence<ResponseSequence, Data>.Iterator?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t lazy protocol witness table accessor for type TokenStream<String> and conformance TokenStream<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect()(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = (*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return closure #1 in closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect()(a1, v1 + v6, v4, v5);
}

uint64_t objectdestroy_269Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t objectdestroy_349Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t closure #2 in PromptCompletionStream.init(streamResponse:bufferResponse:)partial apply(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return closure #2 in PromptCompletionStream.init(streamResponse:bufferResponse:)(a1, v4, v5, v6);
}

{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return closure #2 in PromptCompletionStream.init(streamResponse:bufferResponse:)(a1, v4, v5, v6);
}

uint64_t partial apply for closure #1 in closure #1 in TokenGenerator._streamCompletion<A>(configuration:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return closure #1 in closure #1 in TokenGenerator._streamCompletion<A>(configuration:)(a1, v4);
}

_BYTE *partial apply for closure #1 in closure #1 in Double.init<A>(_:)@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  if (v4 || v5 == 0)
  {
    v8 = *(v2 + 16);
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v9 = *result == 0;
    }

    else
    {
      v9 = 0;
    }

    *a2 = v9;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t partial apply for closure #2 in static TokenGenerator.scrubIfNeeded(promptTurns:stringRenderedPromptSanitizerWithConfiguration:)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for closure #1 in static TokenGenerator.scrubIfNeeded(promptTurns:stringRenderedPromptSanitizerWithConfiguration:);

  return closure #1 in static TokenGenerator.scrubIfNeeded(promptTurns:stringRenderedPromptSanitizerWithConfiguration:)(a1, a2);
}

uint64_t partial apply for closure #1 in static TokenGenerator.scrubIfNeeded(promptTurns:stringRenderedPromptSanitizerWithConfiguration:)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for closure #1 in static TokenGenerator.scrubIfNeeded(promptTurns:stringRenderedPromptSanitizerWithConfiguration:);

  return closure #1 in static TokenGenerator.scrubIfNeeded(promptTurns:stringRenderedPromptSanitizerWithConfiguration:)(a1, a2);
}

uint64_t partial apply for closure #1 in static TokenGenerator.scrubIfNeeded(inputPrompt:stringRenderedPromptSanitizerWithConfiguration:)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for closure #1 in static TokenGenerator.scrubIfNeeded(inputPrompt:stringRenderedPromptSanitizerWithConfiguration:);

  return closure #1 in static TokenGenerator.scrubIfNeeded(inputPrompt:stringRenderedPromptSanitizerWithConfiguration:)(a1, a2);
}

{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t type metadata completion function for TokenGenerator.PromptInputFromGenerativeModel(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void type metadata accessor for ScrubbedPrompt<CompletionPrompt>()
{
  if (!lazy cache variable for type metadata for ScrubbedPrompt<CompletionPrompt>)
  {
    type metadata accessor for CompletionPrompt();
    lazy protocol witness table accessor for type TokenGeneratorCompletionResponse and conformance TokenGeneratorCompletionResponse(&lazy protocol witness table cache variable for type CompletionPrompt and conformance CompletionPrompt, MEMORY[0x1E69C61B8]);
    v0 = type metadata accessor for ScrubbedPrompt();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ScrubbedPrompt<CompletionPrompt>);
    }
  }
}

void type metadata accessor for ScrubbedPrompt<ChatMessagesPrompt>()
{
  if (!lazy cache variable for type metadata for ScrubbedPrompt<ChatMessagesPrompt>)
  {
    type metadata accessor for ChatMessagesPrompt();
    lazy protocol witness table accessor for type TokenGeneratorCompletionResponse and conformance TokenGeneratorCompletionResponse(&lazy protocol witness table cache variable for type ChatMessagesPrompt and conformance ChatMessagesPrompt, MEMORY[0x1E69C61F8]);
    v0 = type metadata accessor for ScrubbedPrompt();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ScrubbedPrompt<ChatMessagesPrompt>);
    }
  }
}

uint64_t Prompt.overestimatedTokenCount()()
{
  v32 = type metadata accessor for Prompt.Component.Value();
  v0 = *(v32 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v31 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for Prompt.Component();
  v3 = *(v30 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = Prompt.components.getter();
  v8 = *(v7 + 16);
  if (v8)
  {
    v33 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
    v9 = v33;
    v11 = *(v3 + 16);
    v10 = v3 + 16;
    v12 = v7 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
    v28 = *(v10 + 56);
    v29 = v11;
    v26 = v7;
    v27 = (v0 + 8);
    v13 = (v10 - 8);
    do
    {
      v14 = v30;
      v15 = v10;
      v29(v6, v12, v30);
      v16 = v31;
      Prompt.Component.value.getter();
      v17 = Prompt.Component.Value.overestimatedTokenCount()();
      (*v27)(v16, v32);
      (*v13)(v6, v14);
      v33 = v9;
      v19 = v9[2];
      v18 = v9[3];
      if (v19 >= v18 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1);
        v9 = v33;
      }

      v9[2] = v19 + 1;
      v9[v19 + 4] = v17;
      v12 += v28;
      --v8;
      v10 = v15;
    }

    while (v8);

    v21 = v9[2];
    if (v21)
    {
LABEL_7:
      v22 = 0;
      v23 = v9 + 4;
      while (1)
      {
        v24 = *v23++;
        v25 = __OFADD__(v22, v24);
        v22 += v24;
        if (v25)
        {
          break;
        }

        if (!--v21)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
      return result;
    }
  }

  else
  {

    v9 = MEMORY[0x1E69E7CC0];
    v21 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v21)
    {
      goto LABEL_7;
    }
  }

  v22 = 0;
LABEL_13:

  return v22;
}

uint64_t TokenGenerator._overestimateTokenCount<A>(configuration:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for ChatLanguageModelProvidingTokenCountable._tokenCount<A>(configuration:) in conformance TokenGenerator;

  return specialized TokenGenerator._overestimateTokenCount<A>(configuration:)(a1, a2, a3);
}

{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for CompletionLanguageModelProvidingTokenCountable._tokenCount<A>(configuration:) in conformance TokenGenerator;

  return specialized TokenGenerator._overestimateTokenCount<A>(configuration:)(a1, a2, a3);
}

uint64_t protocol witness for CompletionLanguageModelProvidingTokenCountOverestimatable._overestimateTokenCount<A>(configuration:) in conformance TokenGenerator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for CompletionLanguageModelProvidingTokenCountable._tokenCount<A>(configuration:) in conformance TokenGenerator;

  return specialized TokenGenerator._overestimateTokenCount<A>(configuration:)(a1, a2, a3);
}

uint64_t protocol witness for ChatLanguageModelProvidingTokenCountOverestimatable._overestimateTokenCount<A>(configuration:) in conformance TokenGenerator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for CompletionLanguageModelProvidingTokenCountable._tokenCount<A>(configuration:) in conformance TokenGenerator;

  return specialized TokenGenerator._overestimateTokenCount<A>(configuration:)(a1, a2, a3);
}

uint64_t Prompt.Component.Value.overestimatedTokenCount()()
{
  v1 = v0;
  v64 = type metadata accessor for Prompt.ImageEmbeddingData();
  v66 = *(v64 - 8);
  v2 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v64);
  v65 = &v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SpecialToken();
  v68 = *(v4 - 8);
  v69 = v4;
  v5 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v67 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for BindableVariable();
  v71 = *(v7 - 8);
  v72 = v7;
  v8 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v70 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Prompt();
  v73 = *(v10 - 8);
  v11 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Prompt();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Prompt.Component.Value();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = (&v64 - v25);
  (*(v20 + 16))(&v64 - v25, v1, v19);
  v27 = (*(v20 + 88))(v26, v19);
  if (v27 == *MEMORY[0x1E69C6318])
  {
    (*(v20 + 96))(v26, v19);
    v28 = (*(v15 + 32))(v18, v26, v14);
    v29 = Prompt.overestimatedTokenCount()(v28);
    (*(v15 + 8))(v18, v14);
    return v29;
  }

  v74 = v14;
  if (v27 != *MEMORY[0x1E69C6328])
  {
    if (v27 == *MEMORY[0x1E69C6320])
    {
      (*(v20 + 96))(v26, v19);
      MEMORY[0x1AC5A3900](*v26, v26[1]);
      v29 = Prompt.overestimatedTokenCount()();
      (*(v73 + 8))(v13, v10);
      return v29;
    }

    v29 = 1;
    if (v27 == *MEMORY[0x1E69C62F8] || v27 == *MEMORY[0x1E69C6310])
    {
      return v29;
    }

    if (v27 == *MEMORY[0x1E69C6300])
    {
      (*(v20 + 8))(v26, v19);
      return 1;
    }

    if (v27 == *MEMORY[0x1E69C62E0])
    {
      (*(v20 + 96))(v26, v19);
      v52 = v70;
      v51 = v71;
      v53 = v72;
      (*(v71 + 32))(v70, v26, v72);
      v54 = BindableVariable.toValue()();
      v29 = Prompt.Component.Value.overestimatedTokenCount()(v54);
      (*(v20 + 8))(v24, v19);
      (*(v51 + 8))(v52, v53);
      return v29;
    }

    if (v27 == *MEMORY[0x1E69C62D8])
    {
      (*(v20 + 96))(v26, v19);
      v56 = v67;
      v55 = v68;
      v57 = v69;
      (*(v68 + 32))(v67, v26, v69);
      v58 = SpecialToken.overestimatedTokenCount.getter();
      v60 = v59;
      (*(v55 + 8))(v56, v57);
      if (v60)
      {
        return 1;
      }

      else
      {
        return v58;
      }
    }

    if (v27 != *MEMORY[0x1E69C6338] && v27 != *MEMORY[0x1E69C62D0] && v27 == *MEMORY[0x1E69C62E8])
    {
      (*(v20 + 96))(v26, v19);
      v62 = v65;
      v61 = v66;
      v63 = v64;
      (*(v66 + 32))(v65, v26, v64);
      v29 = Prompt.ImageEmbeddingData.tokenCount.getter();
      (*(v61 + 8))(v62, v63);
      return v29;
    }

    (*(v20 + 8))(v26, v19);
    return 0;
  }

  (*(v20 + 96))(v26, v19);
  v30 = *v26;
  v31 = *(*v26 + 16);
  if (!v31)
  {
    v50 = *v26;

    v32 = MEMORY[0x1E69E7CC0];
    v46 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v46)
    {
      goto LABEL_13;
    }

    goto LABEL_22;
  }

  v75 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v31, 0);
  v33 = v74;
  v32 = v75;
  v35 = *(v15 + 16);
  v34 = v15 + 16;
  v36 = *(v34 + 64);
  v71 = v30;
  v37 = v30 + ((v36 + 32) & ~v36);
  v72 = *(v34 + 56);
  v73 = v35;
  v38 = (v34 - 8);
  do
  {
    v39 = v34;
    v40 = (v73)(v18, v37, v33);
    v41 = Prompt.overestimatedTokenCount()(v40);
    v33 = v74;
    v42 = v41;
    (*v38)(v18, v74);
    v75 = v32;
    v44 = *(v32 + 16);
    v43 = *(v32 + 24);
    if (v44 >= v43 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v44 + 1, 1);
      v33 = v74;
      v32 = v75;
    }

    *(v32 + 16) = v44 + 1;
    *(v32 + 8 * v44 + 32) = v42;
    v37 += v72;
    --v31;
    v34 = v39;
  }

  while (v31);

  v46 = *(v32 + 16);
  if (!v46)
  {
LABEL_22:

    return 0;
  }

LABEL_13:
  v29 = 0;
  for (i = 32; ; i += 8)
  {
    v48 = *(v32 + i);
    v49 = __OFADD__(v29, v48);
    v29 += v48;
    if (v49)
    {
      break;
    }

    if (!--v46)
    {

      return v29;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized TokenGenerator._overestimateTokenCountSync<A>(configuration:)()
{
  v0 = type metadata accessor for Prompt();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  GenerativeConfigurationProtocol.promptContent.getter();
  v5 = Prompt.overestimatedTokenCount()();
  (*(v1 + 8))(v4, v0);
  return v5;
}

{
  v51 = type metadata accessor for Prompt();
  v0 = *(v51 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v50 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for ChatMessageRole();
  v49 = *(v3 - 8);
  v4 = *(v49 + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v34 - v8;
  v10 = type metadata accessor for ChatMessagePrompt();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  GenerativeConfigurationProtocol.promptContent.getter();
  v15 = v53;
  v16 = *(v53 + 16);
  if (v16)
  {
    v52 = MEMORY[0x1E69E7CC0];
    v38 = v16;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16, 0);
    v17 = v0;
    v18 = 0;
    v19 = v52;
    v48 = v15 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v46 = (v49 + 16);
    v47 = v11 + 16;
    v45 = (v49 + 88);
    v44 = *MEMORY[0x1E69C63E8];
    v37 = *MEMORY[0x1E69C63F8];
    v36 = *MEMORY[0x1E69C63E0];
    v35 = *MEMORY[0x1E69C6400];
    v34 = *MEMORY[0x1E69C63D8];
    v20 = v11;
    v21 = (v49 + 8);
    v49 = v20;
    v42 = (v20 + 8);
    v43 = (v17 + 8);
    v40 = v9;
    v41 = v7;
    v39 = v15;
    do
    {
      if (v18 >= *(v15 + 16))
      {
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      (*(v49 + 16))(v14, v48 + *(v49 + 72) * v18, v10);
      ChatMessagePrompt.role.getter();
      (*v46)(v7, v9, v3);
      v22 = (*v45)(v7, v3);
      if (v22 == v44)
      {
        v23 = *v21;
        (*v21)(v9, v3);
        v23(v7, v3);
      }

      else
      {
        if (v22 != v37 && v22 != v36 && v22 != v35 && v22 != v34)
        {
          goto LABEL_28;
        }

        (*v21)(v9, v3);
      }

      v24 = v50;
      ChatMessagePrompt.prompt.getter();
      v25 = Prompt.overestimatedTokenCount()();
      (*v43)(v24, v51);
      (*v42)(v14, v10);
      if (__OFADD__(v25, 2))
      {
        goto LABEL_25;
      }

      v52 = v19;
      v27 = v19[2];
      v26 = v19[3];
      if (v27 >= v26 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1);
        v19 = v52;
      }

      ++v18;
      v19[2] = v27 + 1;
      v19[v27 + 4] = v25 + 2;
      v15 = v39;
      v9 = v40;
      v7 = v41;
    }

    while (v38 != v18);

    v28 = v19[2];
    if (!v28)
    {
      goto LABEL_21;
    }
  }

  else
  {

    v19 = MEMORY[0x1E69E7CC0];
    v28 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v28)
    {
LABEL_21:
      v29 = 0;
LABEL_22:

      result = v29 + 1;
      if (!__OFADD__(v29, 1))
      {
        return result;
      }

      goto LABEL_27;
    }
  }

  v29 = 0;
  v30 = v19 + 4;
  while (1)
  {
    v31 = *v30++;
    v32 = __OFADD__(v29, v31);
    v29 += v31;
    if (v32)
    {
      break;
    }

    if (!--v28)
    {
      goto LABEL_22;
    }
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t specialized TokenGenerator._overestimateTokenCount<A>(configuration:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = type metadata accessor for Prompt();
  v3[10] = v4;
  v5 = *(v4 - 8);
  v3[11] = v5;
  v6 = *(v5 + 64) + 15;
  v3[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](specialized TokenGenerator._overestimateTokenCount<A>(configuration:), 0, 0);
}

{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = type metadata accessor for Prompt();
  v3[10] = v4;
  v5 = *(v4 - 8);
  v3[11] = v5;
  v6 = *(v5 + 64) + 15;
  v3[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](specialized TokenGenerator._overestimateTokenCount<A>(configuration:), 0, 0);
}

uint64_t specialized TokenGenerator._overestimateTokenCount<A>(configuration:)()
{
  v1 = v0[12];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[7];
  v5 = type metadata accessor for CatalogClient();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  v0[2] = CatalogClient.init()();
  v8 = MEMORY[0x1E69DA6B8];
  v0[5] = v5;
  v0[6] = v8;

  GenerativeConfigurationProtocol<>.renderToTokenGenerationPrompt(catalogClient:)();
  v9 = v0[12];
  v10 = v0[10];
  v11 = v0[11];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v12 = Prompt.overestimatedTokenCount()();

  (*(v11 + 8))(v9, v10);

  v13 = v0[1];

  return v13(v12);
}

{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = type metadata accessor for CatalogClient();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v0[2] = CatalogClient.init()();
  v7 = MEMORY[0x1E69DA6B8];
  v0[5] = v4;
  v0[6] = v7;

  GenerativeConfigurationProtocol<>.renderToTokenGenerationPromptTurns(catalogClient:)();
  v8 = v0[12];
  v9 = v0[10];
  v10 = v0[11];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  static Prompt.transcript(turns:)();

  v11 = Prompt.overestimatedTokenCount()();

  (*(v10 + 8))(v8, v9);

  v12 = v0[1];

  return v12(v11);
}

uint64_t static PromptScrubbing.scrubPrompt(_:scrub:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration22ScrubbedRenderedPromptVyAA0E0VGMd, &_s15TokenGeneration22ScrubbedRenderedPromptVyAA0E0VGMR);
  v4[11] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[12] = swift_task_alloc();
  v7 = type metadata accessor for Prompt();
  v4[13] = v7;
  v8 = *(v7 - 8);
  v4[14] = v8;
  v9 = *(v8 + 64) + 15;
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](static PromptScrubbing.scrubPrompt(_:scrub:), 0, 0);
}

{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;
  v5 = type metadata accessor for Prompt.Turn.Segment();
  v4[11] = v5;
  v6 = *(v5 - 8);
  v4[12] = v6;
  v7 = *(v6 + 64) + 15;
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v8 = type metadata accessor for Prompt.Turn.Role();
  v4[17] = v8;
  v9 = *(v8 - 8);
  v4[18] = v9;
  v10 = *(v9 + 64) + 15;
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v11 = type metadata accessor for Prompt.Turn();
  v4[21] = v11;
  v12 = *(v11 - 8);
  v4[22] = v12;
  v13 = *(v12 + 64) + 15;
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v14 = type metadata accessor for Prompt();
  v4[26] = v14;
  v15 = *(v14 - 8);
  v4[27] = v15;
  v16 = *(v15 + 64) + 15;
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](static PromptScrubbing.scrubPrompt(_:scrub:), 0, 0);
}

uint64_t static PromptScrubbing.scrubPrompt(_:scrub:)()
{
  v1 = v0[17];
  v2 = v0[8];
  v3 = type metadata accessor for CatalogClient();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v0[2] = CatalogClient.init()();
  v6 = MEMORY[0x1E69DA6B8];
  v0[5] = v3;
  v0[6] = v6;
  type metadata accessor for CompletionPrompt();
  lazy protocol witness table accessor for type Prompt and conformance Prompt(&lazy protocol witness table cache variable for type CompletionPrompt and conformance CompletionPrompt, MEMORY[0x1E69C61B8]);
  GenerativeConfigurationProtocol<>.renderToTokenGenerationPrompt(catalogClient:)();
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v7 = swift_task_alloc();
  v0[18] = v7;
  *v7 = v0;
  v7[1] = static PromptScrubbing.scrubPrompt(_:scrub:);
  v8 = v0[17];
  v9 = v0[12];
  v10 = v0[9];
  v11 = v0[10];

  return _s15TokenGeneration15PromptScrubbingO05scrubC0_0E0AA016ScrubbedRenderedC0VyxGx_S2SYaKXEtYaKAA0gC0RzlFZAA0C0V_Tt2g5(v9, v8, v10, v11);
}

{
  v2 = *(*v1 + 144);
  v5 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = static PromptScrubbing.scrubPrompt(_:scrub:);
  }

  else
  {
    v3 = static PromptScrubbing.scrubPrompt(_:scrub:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = v0[16];
  v2 = v0[17];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[12];
  v6 = v0[13];
  v12 = v0[11];
  v7 = v0[7];
  v8 = *(v4 + 16);
  v8(v1, v5, v6);
  v8(v3, v1, v6);
  CompletionPrompt.init(_:)();
  v9 = *(v4 + 8);
  v9(v1, v6);
  v9(v2, v6);
  LOBYTE(v6) = *(v5 + *(v12 + 36));
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v5, &_s15TokenGeneration22ScrubbedRenderedPromptVyAA0E0VGMd, &_s15TokenGeneration22ScrubbedRenderedPromptVyAA0E0VGMR);
  *(v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMR) + 36)) = v6;

  v10 = v0[1];

  return v10();
}

{
  (*(v0[14] + 8))(v0[17], v0[13]);
  v1 = v0[19];
  v3 = v0[16];
  v2 = v0[17];
  v4 = v0[15];
  v5 = v0[12];

  v6 = v0[1];

  return v6();
}

{
  v1 = *(v0 + 64);
  v2 = type metadata accessor for CatalogClient();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  *(v0 + 16) = CatalogClient.init()();
  v5 = MEMORY[0x1E69DA6B8];
  *(v0 + 40) = v2;
  *(v0 + 48) = v5;
  type metadata accessor for ChatMessagesPrompt();
  lazy protocol witness table accessor for type Prompt and conformance Prompt(&lazy protocol witness table cache variable for type ChatMessagesPrompt and conformance ChatMessagesPrompt, MEMORY[0x1E69C61F8]);
  GenerativeConfigurationProtocol<>.renderToTokenGenerationPromptTurns(catalogClient:)();
  v6 = *(v0 + 240);
  v7 = *(v0 + 208);
  v8 = *(v0 + 216);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  static Prompt.transcript(turns:)();

  v9 = Prompt.turns()();
  *(v0 + 248) = v9;
  v10 = *(v8 + 8);
  *(v0 + 256) = v10;
  *(v0 + 264) = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  result = v10(v6, v7);
  v12 = *(v9 + 16);
  *(v0 + 272) = v12;
  if (v12)
  {
    *(v0 + 408) = *(*(v0 + 176) + 80);
    *(v0 + 412) = *MEMORY[0x1E69DA7B0];
    *(v0 + 416) = *MEMORY[0x1E69DA7E8];
    v13 = MEMORY[0x1E69E7CC0];
    *(v0 + 280) = 0;
    *(v0 + 288) = v13;
    v14 = *(v0 + 248);
    if (!*(v14 + 16))
    {
LABEL_38:
      __break(1u);
      return result;
    }

    v15 = 0;
    v16 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v17 = *(v0 + 412);
      v18 = *(v0 + 200);
      v19 = *(v0 + 168);
      v20 = *(v0 + 176);
      v22 = *(v0 + 152);
      v21 = *(v0 + 160);
      v23 = *(v0 + 136);
      v24 = *(v0 + 144);
      v26 = *(v20 + 16);
      v20 += 16;
      v25 = v26;
      v27 = *(v20 + 56);
      v28 = v14 + ((*(v0 + 408) + 32) & ~*(v0 + 408)) + v27 * v15;
      *(v0 + 296) = v27;
      *(v0 + 304) = v26;
      *(v0 + 312) = v20 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v26(v18, v28, v19);
      Prompt.Turn.role.getter();
      (*(v24 + 104))(v22, v17, v23);
      LOBYTE(v18) = static Prompt.Turn.Role.== infix(_:_:)();
      v29 = *(v24 + 8);
      v29(v22, v23);
      v29(v21, v23);
      if (v18)
      {
        v30 = *(v0 + 200);
        result = Prompt.Turn.segments.getter();
        *(v0 + 320) = result;
        v31 = *(result + 16);
        *(v0 + 328) = v31;
        if (v31)
        {
          v32 = 0;
          *(v0 + 420) = *(*(v0 + 96) + 80);
          v33 = MEMORY[0x1E69E7CC0];
          while (1)
          {
            *(v0 + 336) = v32;
            *(v0 + 344) = v33;
            *(v0 + 424) = 0;
            v34 = *(v0 + 320);
            if (v32 >= *(v34 + 16))
            {
              __break(1u);
              goto LABEL_38;
            }

            v35 = *(v0 + 420);
            v36 = *(v0 + 416);
            v38 = *(v0 + 120);
            v37 = *(v0 + 128);
            v39 = *(v0 + 88);
            v40 = *(v0 + 96);
            v41 = *(v40 + 16);
            v42 = *(v40 + 72);
            *(v0 + 352) = v42;
            v41(v37, v34 + ((v35 + 32) & ~v35) + v42 * v32, v39);
            v41(v38, v37, v39);
            if ((*(v40 + 88))(v38, v39) == v36)
            {
              break;
            }

            v41(*(v0 + 104), *(v0 + 128), *(v0 + 88));
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v33[2] + 1, 1, v33);
            }

            v44 = v33[2];
            v43 = v33[3];
            if (v44 >= v43 >> 1)
            {
              v45 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v43 > 1, v44 + 1, 1, v33);
            }

            else
            {
              v45 = v33;
            }

            v96 = *(v0 + 120);
            v47 = *(v0 + 96);
            v46 = *(v0 + 104);
            v48 = *(v0 + 88);
            v49 = (*(v0 + 420) + 32) & ~*(v0 + 420);
            v50 = *(v47 + 8);
            v50(*(v0 + 128), v48);
            *(v45 + 16) = v44 + 1;
            (*(v47 + 32))(v45 + v49 + v44 * v42, v46, v48);
            result = v50(v96, v48);
            v33 = v45;
            v32 = *(v0 + 336) + 1;
            if (v32 == *(v0 + 328))
            {
              v55 = *(v0 + 320);
              goto LABEL_21;
            }
          }

          v72 = *(v0 + 120);
          v73 = *(v0 + 72);
          (*(*(v0 + 96) + 96))(v72, *(v0 + 88));
          v74 = *v72;
          *(v0 + 360) = *v72;
          v75 = v72[1];
          *(v0 + 368) = v75;
          v99 = (v73 + *v73);
          v76 = v73[1];
          v77 = swift_task_alloc();
          *(v0 + 376) = v77;
          *v77 = v0;
          v77[1] = static PromptScrubbing.scrubPrompt(_:scrub:);
          v78 = *(v0 + 80);

          return v99(v74, v75);
        }

LABEL_21:
        v57 = *(v0 + 304);
        v56 = *(v0 + 312);
        v58 = *(v0 + 288);
        v60 = *(v0 + 192);
        v59 = *(v0 + 200);
        v61 = *(v0 + 168);

        Prompt.Turn.segments.setter();
        v57(v60, v59, v61);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v63 = *(v0 + 288);
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v63 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v63[2] + 1, 1, v63);
        }

        v52 = v63[2];
        v64 = v63[3];
        v98 = v63;
        v53 = v52 + 1;
        if (v52 >= v64 >> 1)
        {
          v98 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v64 > 1, v52 + 1, 1, v63);
        }

        v54 = (v0 + 192);
      }

      else
      {
        v25(*(v0 + 184), *(v0 + 200), *(v0 + 168));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16[2] + 1, 1, v16);
        }

        v52 = v16[2];
        v51 = v16[3];
        v98 = v16;
        v53 = v52 + 1;
        if (v52 >= v51 >> 1)
        {
          v98 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v51 > 1, v52 + 1, 1, v98);
        }

        v54 = (v0 + 184);
      }

      v65 = *v54;
      v66 = *(v0 + 296);
      v67 = *(v0 + 272);
      v68 = *(v0 + 168);
      v69 = *(v0 + 176);
      v70 = *(v0 + 280) + 1;
      v71 = (*(v0 + 408) + 32) & ~*(v0 + 408);
      (*(v69 + 8))(*(v0 + 200), v68);
      v98[2] = v53;
      v16 = v98;
      result = (*(v69 + 32))(v98 + v71 + v66 * v52, v65, v68);
      if (v70 == v67)
      {
        v88 = *(v0 + 248);

        goto LABEL_33;
      }

      v15 = *(v0 + 280) + 1;
      *(v0 + 280) = v15;
      *(v0 + 288) = v98;
      v14 = *(v0 + 248);
      if (v15 >= *(v14 + 16))
      {
        goto LABEL_38;
      }
    }
  }

LABEL_33:
  v80 = *(v0 + 256);
  v79 = *(v0 + 264);
  v82 = *(v0 + 232);
  v81 = *(v0 + 240);
  v83 = *(v0 + 216);
  v84 = *(v0 + 224);
  v85 = *(v0 + 208);
  v89 = *(v0 + 200);
  v90 = *(v0 + 192);
  v91 = *(v0 + 184);
  v92 = *(v0 + 160);
  v93 = *(v0 + 152);
  v94 = *(v0 + 128);
  v95 = *(v0 + 120);
  v97 = *(v0 + 112);
  v100 = *(v0 + 104);
  v86 = *(v0 + 56);
  static Prompt.transcript(turns:)();

  (*(v83 + 16))(v84, v82, v85);
  ChatMessagesPrompt.init(renderedPrompt:)(v84, v86);
  v80(v82, v85);
  *(v86 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMR) + 36)) = 0;

  v87 = *(v0 + 8);

  return v87();
}

{
  if (*(v0 + 384) == *(v0 + 360) && *(v0 + 392) == *(v0 + 368))
  {
    v6 = *(v0 + 368);

    v5 = *(v0 + 424);
  }

  else
  {
    v2 = *(v0 + 424);
    v3 = *(v0 + 368);
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v5 = v4 ^ 1 | v2;
  }

  v101 = v5;
  v7 = *(v0 + 392);
  v8 = *(v0 + 344);
  v9 = *(v0 + 416);
  v10 = *(v0 + 112);
  v11 = *(v0 + 88);
  v12 = *(v0 + 96);
  *v10 = *(v0 + 384);
  v10[1] = v7;
  (*(v12 + 104))();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(v0 + 344);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_41:
    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 2) + 1, 1, v14);
  }

  v16 = *(v14 + 2);
  v15 = *(v14 + 3);
  if (v16 >= v15 >> 1)
  {
    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v15 > 1, v16 + 1, 1, v14);
  }

  v17 = *(v0 + 352);
  v18 = *(v0 + 112);
  v19 = *(v0 + 88);
  v20 = *(v0 + 96);
  v21 = (*(v0 + 420) + 32) & ~*(v0 + 420);
  (*(v20 + 8))(*(v0 + 128), v19);
  *(v14 + 2) = v16 + 1;
  (*(v20 + 32))(&v14[v21 + v17 * v16], v18, v19);
  v99 = (v0 + 192);
  v102 = (v0 + 184);
  v104 = v0;
  while (1)
  {
    v22 = *(v0 + 336) + 1;
    v23 = *(v0 + 320);
    if (v22 == *(v0 + 328))
    {
      while (2)
      {
        v25 = *(v0 + 304);
        v24 = *(v0 + 312);
        v26 = *(v0 + 288);
        v28 = *(v0 + 192);
        v27 = *(v0 + 200);
        v29 = *(v0 + 168);

        Prompt.Turn.segments.setter();
        v25(v28, v27, v29);
        v30 = swift_isUniquelyReferenced_nonNull_native();
        v31 = *(v0 + 288);
        if ((v30 & 1) == 0)
        {
          v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v31 + 2) + 1, 1, *(v0 + 288));
        }

        v33 = *(v31 + 2);
        v32 = *(v31 + 3);
        v14 = (v33 + 1);
        if (v33 >= v32 >> 1)
        {
          v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v32 > 1, v33 + 1, 1, v31);
        }

        v34 = v99;
        while (1)
        {
          v105 = *v34;
          v0 = v104;
          v35 = *(v104 + 296);
          v36 = *(v104 + 272);
          v37 = *(v104 + 168);
          v38 = *(v104 + 176);
          v39 = *(v104 + 280) + 1;
          v40 = (*(v104 + 408) + 32) & ~*(v104 + 408);
          (*(v38 + 8))(*(v104 + 200), v37);
          *(v31 + 2) = v14;
          (*(v38 + 32))(&v31[v40 + v35 * v33], v105, v37);
          if (v39 == v36)
          {
            v74 = *(v104 + 248);

            v76 = *(v104 + 256);
            v75 = *(v104 + 264);
            v78 = *(v104 + 232);
            v77 = *(v104 + 240);
            v79 = *(v104 + 216);
            v80 = *(v104 + 224);
            v81 = *(v104 + 208);
            v92 = *(v104 + 200);
            v93 = *(v104 + 192);
            v94 = *(v104 + 184);
            v95 = *(v104 + 160);
            v96 = *(v104 + 152);
            v98 = *(v104 + 128);
            v100 = *(v104 + 120);
            v103 = *(v104 + 112);
            v106 = *(v104 + 104);
            v82 = *(v104 + 56);
            static Prompt.transcript(turns:)();

            (*(v79 + 16))(v80, v78, v81);
            ChatMessagesPrompt.init(renderedPrompt:)(v80, v82);
            v76(v78, v81);
            *(v82 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMR) + 36)) = v101 & 1;

            v83 = *(v104 + 8);

            return v83();
          }

          v41 = *(v104 + 280) + 1;
          *(v104 + 280) = v41;
          *(v104 + 288) = v31;
          v42 = *(v104 + 248);
          if (v41 >= *(v42 + 16))
          {
            __break(1u);
            goto LABEL_40;
          }

          v43 = *(v104 + 412);
          v44 = *(v104 + 200);
          v45 = *(v104 + 168);
          v46 = *(v104 + 176);
          v48 = *(v104 + 152);
          v47 = *(v104 + 160);
          v49 = *(v104 + 136);
          v50 = *(v104 + 144);
          v52 = *(v46 + 16);
          v46 += 16;
          v51 = v52;
          v53 = *(v46 + 56);
          v54 = v42 + ((*(v104 + 408) + 32) & ~*(v104 + 408)) + v53 * v41;
          *(v104 + 296) = v53;
          *(v104 + 304) = v52;
          *(v104 + 312) = v46 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
          v52(v44, v54, v45);
          Prompt.Turn.role.getter();
          (*(v50 + 104))(v48, v43, v49);
          LOBYTE(v44) = static Prompt.Turn.Role.== infix(_:_:)();
          v55 = *(v50 + 8);
          v55(v48, v49);
          v55(v47, v49);
          if (v44)
          {
            break;
          }

          v51(*(v104 + 184), *(v104 + 200), *(v104 + 168));
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v31 + 2) + 1, 1, v31);
          }

          v33 = *(v31 + 2);
          v56 = *(v31 + 3);
          v14 = (v33 + 1);
          v34 = v102;
          if (v33 >= v56 >> 1)
          {
            v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v56 > 1, v33 + 1, 1, v31);
            v34 = v102;
          }
        }

        v57 = *(v104 + 200);
        v23 = Prompt.Turn.segments.getter();
        *(v104 + 320) = v23;
        v58 = *(v23 + 16);
        *(v104 + 328) = v58;
        v14 = MEMORY[0x1E69E7CC0];
        if (!v58)
        {
          continue;
        }

        break;
      }

      v22 = 0;
      *(v104 + 420) = *(*(v104 + 96) + 80);
    }

    *(v0 + 336) = v22;
    *(v0 + 344) = v14;
    *(v0 + 424) = v101 & 1;
    if (v22 >= *(v23 + 16))
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v59 = *(v0 + 420);
    v60 = *(v0 + 416);
    v62 = *(v0 + 120);
    v61 = *(v0 + 128);
    v63 = *(v0 + 88);
    v64 = *(v0 + 96);
    v65 = *(v64 + 16);
    v66 = *(v64 + 72);
    *(v0 + 352) = v66;
    v65(v61, v23 + ((v59 + 32) & ~v59) + v66 * v22, v63);
    v65(v62, v61, v63);
    if ((*(v64 + 88))(v62, v63) == v60)
    {
      break;
    }

    v65(*(v0 + 104), *(v0 + 128), *(v0 + 88));
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 2) + 1, 1, v14);
    }

    v68 = *(v14 + 2);
    v67 = *(v14 + 3);
    if (v68 >= v67 >> 1)
    {
      v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v67 > 1, v68 + 1, 1, v14);
    }

    v97 = *(v0 + 120);
    v70 = *(v0 + 96);
    v69 = *(v0 + 104);
    v71 = *(v0 + 88);
    v72 = (*(v0 + 420) + 32) & ~*(v0 + 420);
    v73 = *(v70 + 8);
    v73(*(v0 + 128), v71);
    *(v14 + 2) = v68 + 1;
    (*(v70 + 32))(&v14[v72 + v68 * v66], v69, v71);
    v73(v97, v71);
  }

  v85 = *(v0 + 120);
  v86 = *(v0 + 72);
  (*(*(v0 + 96) + 96))(v85, *(v0 + 88));
  v87 = *v85;
  *(v0 + 360) = *v85;
  v88 = v85[1];
  *(v0 + 368) = v88;
  v107 = (v86 + *v86);
  v89 = v86[1];
  v90 = swift_task_alloc();
  *(v0 + 376) = v90;
  *v90 = v0;
  v90[1] = static PromptScrubbing.scrubPrompt(_:scrub:);
  v91 = *(v0 + 80);

  return v107(v87, v88);
}

{
  v1 = v0[25];
  v2 = v0[21];
  v3 = v0[22];
  (*(v0[12] + 8))(v0[16], v0[11]);
  (*(v3 + 8))(v1, v2);
  v5 = v0[29];
  v4 = v0[30];
  v6 = v0[28];
  v8 = v0[24];
  v7 = v0[25];
  v9 = v0[23];
  v11 = v0[19];
  v10 = v0[20];
  v12 = v0[15];
  v13 = v0[16];
  v16 = v0[14];
  v17 = v0[13];
  v18 = v0[50];

  v14 = v0[1];

  return v14();
}

uint64_t static PromptScrubbing.scrubPromptIncludingSystemTurns(_:scrub:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration22ScrubbedRenderedPromptVyAA0E0VGMd, &_s15TokenGeneration22ScrubbedRenderedPromptVyAA0E0VGMR);
  v4[11] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[12] = swift_task_alloc();
  v7 = type metadata accessor for Prompt();
  v4[13] = v7;
  v8 = *(v7 - 8);
  v4[14] = v8;
  v9 = *(v8 + 64) + 15;
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](static PromptScrubbing.scrubPromptIncludingSystemTurns(_:scrub:), 0, 0);
}

uint64_t static PromptScrubbing.scrubPromptIncludingSystemTurns(_:scrub:)()
{
  v1 = v0[8];
  v2 = type metadata accessor for CatalogClient();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v0[2] = CatalogClient.init()();
  v5 = MEMORY[0x1E69DA6B8];
  v0[5] = v2;
  v0[6] = v5;
  type metadata accessor for ChatMessagesPrompt();
  lazy protocol witness table accessor for type Prompt and conformance Prompt(&lazy protocol witness table cache variable for type ChatMessagesPrompt and conformance ChatMessagesPrompt, MEMORY[0x1E69C61F8]);
  GenerativeConfigurationProtocol<>.renderToTokenGenerationPromptTurns(catalogClient:)();
  v6 = v0[16];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  static Prompt.transcript(turns:)();

  v7 = swift_task_alloc();
  v0[17] = v7;
  *v7 = v0;
  v7[1] = static PromptScrubbing.scrubPromptIncludingSystemTurns(_:scrub:);
  v8 = v0[16];
  v9 = v0[12];
  v10 = v0[9];
  v11 = v0[10];

  return _s15TokenGeneration15PromptScrubbingO05scrubC0_0E0AA016ScrubbedRenderedC0VyxGx_S2SYaKXEtYaKAA0gC0RzlFZAA0C0V_Tt2g5(v9, v8, v10, v11);
}

{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = static PromptScrubbing.scrubPromptIncludingSystemTurns(_:scrub:);
  }

  else
  {
    v3 = static PromptScrubbing.scrubPromptIncludingSystemTurns(_:scrub:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[13];
  v4 = v0[14];
  v6 = v0[11];
  v5 = v0[12];
  v7 = v0[7];
  (*(v4 + 16))(v1, v5, v3);
  ChatMessagesPrompt.init(renderedPrompt:)(v1, v7);
  (*(v4 + 8))(v2, v3);
  LOBYTE(v3) = *(v5 + *(v6 + 36));
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v5, &_s15TokenGeneration22ScrubbedRenderedPromptVyAA0E0VGMd, &_s15TokenGeneration22ScrubbedRenderedPromptVyAA0E0VGMR);
  *(v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMR) + 36)) = v3;

  v8 = v0[1];

  return v8();
}

{
  (*(v0[14] + 8))(v0[16], v0[13]);
  v1 = v0[18];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[12];

  v5 = v0[1];

  return v5();
}

uint64_t static PromptScrubbing.scrubPrompt(_:scrub:)(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 376);
  v13 = *v3;
  v4[48] = a1;
  v4[49] = a2;
  v4[50] = v2;

  if (v2)
  {
    v6 = v4[46];
    v7 = v4[43];
    v8 = v4[40];
    v9 = v4[36];
    v10 = v4[31];

    v11 = static PromptScrubbing.scrubPrompt(_:scrub:);
  }

  else
  {
    v11 = static PromptScrubbing.scrubPrompt(_:scrub:);
  }

  return MEMORY[0x1EEE6DFA0](v11, 0, 0);
}

uint64_t _s15TokenGeneration15PromptScrubbingO05scrubC0_0E0AA016ScrubbedRenderedC0VyxGx_S2SYaKXEtYaKAA0gC0RzlFZAA0C0V_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[8] = a1;
  v4[9] = a2;
  v5 = type metadata accessor for Prompt();
  v4[12] = v5;
  v6 = *(v5 - 8);
  v4[13] = v6;
  v7 = *(v6 + 64) + 15;
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration15PromptScrubbingO012IntermediateC5State33_102AEF12823D01DEBBEF7FCA4216300ALLVy_AA0C0V0aB16NonStringContentOGMd, &_s15TokenGeneration15PromptScrubbingO012IntermediateC5State33_102AEF12823D01DEBBEF7FCA4216300ALLVy_AA0C0V0aB16NonStringContentOGMR);
  v4[17] = v8;
  v9 = *(v8 - 8);
  v4[18] = v9;
  v10 = *(v9 + 64) + 15;
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_15TokenGeneration15PromptScrubbingO012IntermediateD5State33_102AEF12823D01DEBBEF7FCA4216300ALLVy_AB0D0V0bC16NonStringContentOG7elementtMd, &_sSi6offset_15TokenGeneration15PromptScrubbingO012IntermediateD5State33_102AEF12823D01DEBBEF7FCA4216300ALLVy_AB0D0V0bC16NonStringContentOG7elementtMR);
  v4[31] = v11;
  v12 = *(v11 - 8);
  v4[32] = v12;
  v13 = *(v12 + 64) + 15;
  v4[33] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_15TokenGeneration15PromptScrubbingO012IntermediateD5State33_102AEF12823D01DEBBEF7FCA4216300ALLVy_AB0D0V0bC16NonStringContentOG7elementtSgMd, &_sSi6offset_15TokenGeneration15PromptScrubbingO012IntermediateD5State33_102AEF12823D01DEBBEF7FCA4216300ALLVy_AB0D0V0bC16NonStringContentOG7elementtSgMR) - 8) + 64) + 15;
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss20CollectionDifferenceVySJGMd, &_ss20CollectionDifferenceVySJGMR);
  v4[36] = v15;
  v16 = *(v15 - 8);
  v4[37] = v16;
  v17 = *(v16 + 64) + 15;
  v4[38] = swift_task_alloc();
  v18 = type metadata accessor for Prompt.Attachment();
  v4[39] = v18;
  v19 = *(v18 - 8);
  v4[40] = v19;
  v20 = *(v19 + 64) + 15;
  v4[41] = swift_task_alloc();
  v21 = type metadata accessor for Prompt.Delimiter();
  v4[42] = v21;
  v22 = *(v21 - 8);
  v4[43] = v22;
  v23 = *(v22 + 64) + 15;
  v4[44] = swift_task_alloc();
  v24 = type metadata accessor for Prompt.TokenGenerationNonStringContent();
  v4[45] = v24;
  v25 = *(v24 - 8);
  v4[46] = v25;
  v26 = *(v25 + 64) + 15;
  v4[47] = swift_task_alloc();
  v4[48] = swift_task_alloc();
  v4[49] = swift_task_alloc();
  v4[50] = swift_task_alloc();
  v4[51] = swift_task_alloc();
  v4[52] = swift_task_alloc();
  v4[53] = swift_task_alloc();
  v4[54] = swift_task_alloc();
  v4[55] = swift_task_alloc();
  v4[56] = swift_task_alloc();
  v4[57] = swift_task_alloc();
  v4[58] = swift_task_alloc();
  v4[59] = swift_task_alloc();
  v4[60] = swift_task_alloc();
  v4[61] = swift_task_alloc();
  v4[62] = swift_task_alloc();
  v4[63] = swift_task_alloc();
  v4[64] = swift_task_alloc();
  v4[65] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](_s15TokenGeneration15PromptScrubbingO05scrubC0_0E0AA016ScrubbedRenderedC0VyxGx_S2SYaKXEtYaKAA0gC0RzlFZAA0C0V_Tt2g5TY0_, 0, 0);
}

uint64_t _s15TokenGeneration15PromptScrubbingO05scrubC0_0E0AA016ScrubbedRenderedC0VyxGx_S2SYaKXEtYaKAA0gC0RzlFZAA0C0V_Tt2g5TY0_()
{
  v139 = v0;
  v1 = v0[9];
  v2 = Prompt.string.getter();
  v4 = v3;
  v5 = Prompt.nonStringContent.getter();
  v0[2] = v2;
  v0[3] = v4;
  v138 = v5;

  specialized MutableCollection<>.sort(by:)(&v138);
  v131 = v2;
  v132 = v4;

  v7 = v138;
  v135 = v138[2];
  if (!v135)
  {
    v120 = MEMORY[0x1E69E7CC0];
LABEL_20:

    v39 = v120[2];
    if (!v39)
    {

      v115 = v132;

      v44 = MEMORY[0x1E69E7CC0];
      v116 = v131;
LABEL_74:
      v0[68] = v44;
      v0[67] = v116;
      v0[66] = v115;
      v137 = (v0[10] + *v0[10]);
      v117 = *(v0[10] + 4);
      v118 = swift_task_alloc();
      v0[69] = v118;
      *v118 = v0;
      v118[1] = _s15TokenGeneration15PromptScrubbingO05scrubC0_0E0AA016ScrubbedRenderedC0VyxGx_S2SYaKXEtYaKAA0gC0RzlFZAA0C0V_Tt2g5TQ1_;
      v119 = v0[11];

      return v137(v116, v115);
    }

    v40 = v0[46];
    v41 = v0[43];
    v42 = v0[40];
    v123 = v0[18];
    v122 = v0[17];
    v43 = v120 + ((*(v40 + 80) + 32) & ~*(v40 + 80));
    v130 = (v41 + 32);
    v125 = (v41 + 8);
    v126 = 0;
    v128 = (v42 + 32);
    v124 = (v42 + 8);
    v121 = *(v40 + 72);
    v44 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v45 = v0[51];
      v46 = v0[52];
      v47 = v0[45];
      outlined init with copy of Prompt.TokenGenerationNonStringContent(v43, v46);
      outlined init with copy of Prompt.TokenGenerationNonStringContent(v46, v45);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v49 = v0[51];
      if (EnumCaseMultiPayload == 1)
      {
        v50 = v0[41];
        v51 = v0[39];
        (*v128)(v50, v49, v51);
        v52 = Prompt.Attachment.position.getter();
        v53 = v124;
      }

      else
      {
        v50 = v0[44];
        v51 = v0[42];
        (*v130)(v50, v49, v51);
        v52 = Prompt.Delimiter.position.getter();
        v53 = v125;
      }

      result = (*v53)(v50, v51);
      v54 = v52 + v126;
      if (__OFADD__(v52, v126))
      {
        goto LABEL_78;
      }

      v136 = v44;
      v55 = v0[52];
      v56 = v0[50];
      v57 = v0[45];
      v58 = v0[2];
      v59 = v0[3];
      v60 = String.index(_:offsetBy:)();
      outlined init with copy of Prompt.TokenGenerationNonStringContent(v55, v56);
      v61 = swift_getEnumCaseMultiPayload();
      v62 = v0[50];
      if (v61 == 1)
      {
        v63 = v0[41];
        v64 = v0[39];
        (*v128)(v63, v62, v64);
        v134 = Prompt.Attachment.position.getter();
        v65 = v124;
      }

      else
      {
        v63 = v0[44];
        v64 = v0[42];
        (*v130)(v63, v62, v64);
        v134 = Prompt.Delimiter.position.getter();
        v65 = v125;
      }

      (*v65)(v63, v64);
      v66 = String.count.getter();
      if (v60 < 0x4000)
      {
        goto LABEL_42;
      }

      v67 = HIBYTE(v59) & 0xF;
      if ((v59 & 0x2000000000000000) == 0)
      {
        v67 = v58 & 0xFFFFFFFFFFFFLL;
      }

      if (v60 >> 14 != 4 * v67)
      {
        if (String.subscript.getter() == 10 && v71 == 0xE100000000000000)
        {
LABEL_41:

LABEL_42:
          v72 = v0[49];
          v73 = v0[45];
          v74 = v0[21];
          outlined init with copy of Prompt.TokenGenerationNonStringContent(v0[52], v74);
          outlined init with take of Prompt.TokenGenerationNonStringContent(v74, v72);
          v75 = swift_getEnumCaseMultiPayload();
          v76 = v0[49];
          v77 = v0[21];
          if (v75 == 1)
          {
            v78 = v0[41];
            v79 = v0[39];
            v80 = *v128;
            (*v128)(v78, v76, v79);
            Prompt.Attachment.position.setter();
          }

          else
          {
            v78 = v0[44];
            v79 = v0[42];
            v80 = *v130;
            (*v130)(v78, v76, v79);
            Prompt.Delimiter.position.setter();
          }

          v80(v77, v78, v79);
          v81 = v0[45];
          v82 = v0[21];
          swift_storeEnumTagMultiPayload();
          *(v82 + *(v122 + 36)) = 0;
          *(v82 + *(v122 + 40)) = v134 == v66;
          v44 = v136;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v136[2] + 1, 1, v136);
          }

          v84 = v44[2];
          v83 = v44[3];
          v85 = v84 + 1;
          if (v84 >= v83 >> 1)
          {
            v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v83 > 1, v84 + 1, 1, v44);
          }

          v86 = v0 + 21;
          goto LABEL_50;
        }

        v88 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v88)
        {
          goto LABEL_42;
        }
      }

      String.index(before:)();
      if (String.subscript.getter() == 10 && v68 == 0xE100000000000000)
      {
        goto LABEL_41;
      }

      v69 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v69)
      {
        goto LABEL_42;
      }

      String.index(before:)();
      if (String.subscript.getter() == 13 && v70 == 0xE100000000000000)
      {
      }

      else
      {
        v89 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v89 & 1) == 0)
        {
          if (__OFADD__(v126++, 1))
          {
            goto LABEL_79;
          }

          result = String.insert(_:at:)();
          if (__OFADD__(v54, 1))
          {
            goto LABEL_80;
          }

          v103 = v0[47];
          v104 = v0[45];
          v105 = v0[19];
          outlined init with copy of Prompt.TokenGenerationNonStringContent(v0[52], v105);
          outlined init with take of Prompt.TokenGenerationNonStringContent(v105, v103);
          v106 = swift_getEnumCaseMultiPayload();
          v107 = v0[47];
          v108 = v0[19];
          if (v106 == 1)
          {
            v109 = v0[41];
            v110 = v0[39];
            v111 = *v128;
            (*v128)(v109, v107, v110);
            Prompt.Attachment.position.setter();
          }

          else
          {
            v109 = v0[44];
            v110 = v0[42];
            v111 = *v130;
            (*v130)(v109, v107, v110);
            Prompt.Delimiter.position.setter();
          }

          v111(v108, v109, v110);
          v112 = v0[45];
          v113 = v0[19];
          swift_storeEnumTagMultiPayload();
          *(v113 + *(v122 + 36)) = 1;
          *(v113 + *(v122 + 40)) = v134 == v66;
          v44 = v136;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v136[2] + 1, 1, v136);
          }

          v84 = v44[2];
          v114 = v44[3];
          v85 = v84 + 1;
          if (v84 >= v114 >> 1)
          {
            v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v114 > 1, v84 + 1, 1, v44);
          }

          v86 = v0 + 19;
          goto LABEL_50;
        }
      }

      v90 = v0[48];
      v91 = v0[45];
      v92 = v0[20];
      outlined init with copy of Prompt.TokenGenerationNonStringContent(v0[52], v92);
      outlined init with take of Prompt.TokenGenerationNonStringContent(v92, v90);
      v93 = swift_getEnumCaseMultiPayload();
      v94 = v0[48];
      v95 = v0[20];
      if (v93 == 1)
      {
        v96 = v0[41];
        v97 = v0[39];
        v98 = *v128;
        (*v128)(v96, v94, v97);
        Prompt.Attachment.position.setter();
      }

      else
      {
        v96 = v0[44];
        v97 = v0[42];
        v98 = *v130;
        (*v130)(v96, v94, v97);
        Prompt.Delimiter.position.setter();
      }

      v98(v95, v96, v97);
      v99 = v0[45];
      v100 = v0[20];
      swift_storeEnumTagMultiPayload();
      *(v100 + *(v122 + 36)) = 0;
      *(v100 + *(v122 + 40)) = v134 == v66;
      v44 = v136;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v136[2] + 1, 1, v136);
      }

      v84 = v44[2];
      v101 = v44[3];
      v85 = v84 + 1;
      if (v84 >= v101 >> 1)
      {
        v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v101 > 1, v84 + 1, 1, v44);
      }

      v86 = v0 + 20;
LABEL_50:
      v87 = *v86;
      outlined destroy of Prompt.TokenGenerationNonStringContent(v0[52]);
      v44[2] = v85;
      outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v87, v44 + ((*(v123 + 80) + 32) & ~*(v123 + 80)) + *(v123 + 72) * v84, &_s15TokenGeneration15PromptScrubbingO012IntermediateC5State33_102AEF12823D01DEBBEF7FCA4216300ALLVy_AA0C0V0aB16NonStringContentOGMd, &_s15TokenGeneration15PromptScrubbingO012IntermediateC5State33_102AEF12823D01DEBBEF7FCA4216300ALLVy_AA0C0V0aB16NonStringContentOGMR);
      v43 += v121;
      if (!--v39)
      {

        v116 = v0[2];
        v115 = v0[3];
        goto LABEL_74;
      }
    }
  }

  v8 = 0;
  v9 = v0[46];
  v10 = v0[43];
  v11 = v0[40];
  v133 = (v10 + 32);
  v127 = (v11 + 32);
  v129 = (v10 + 8);
  v12 = (v11 + 8);
  v120 = MEMORY[0x1E69E7CC0];
  while (v8 < v7[2])
  {
    v13 = v0[65];
    v14 = v0[64];
    v15 = v0[45];
    v16 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v17 = *(v9 + 72);
    outlined init with copy of Prompt.TokenGenerationNonStringContent(v7 + v16 + v17 * v8, v13);
    outlined init with copy of Prompt.TokenGenerationNonStringContent(v13, v14);
    v18 = swift_getEnumCaseMultiPayload();
    v19 = v0[64];
    if (v18 == 1)
    {
      v20 = v0[41];
      v21 = v0[39];
      (*v127)(v20, v19, v21);
      v22 = Prompt.Attachment.position.getter();
      (*v12)(v20, v21);
      if (v22 < 0)
      {
        goto LABEL_3;
      }
    }

    else
    {
      v23 = v0[44];
      v24 = v0[42];
      (*v133)(v23, v19, v24);
      v25 = Prompt.Delimiter.position.getter();
      (*v129)(v23, v24);
      if (v25 < 0)
      {
        goto LABEL_3;
      }
    }

    v26 = v0[45];
    outlined init with copy of Prompt.TokenGenerationNonStringContent(v0[65], v0[63]);
    v27 = swift_getEnumCaseMultiPayload();
    v28 = v0[63];
    if (v27 == 1)
    {
      v29 = v0[41];
      v30 = v0[39];
      (*v127)(v29, v28, v30);
      v31 = Prompt.Attachment.position.getter();
      (*v12)(v29, v30);
    }

    else
    {
      v32 = v0[44];
      v33 = v0[42];
      (*v133)(v32, v28, v33);
      v31 = Prompt.Delimiter.position.getter();
      (*v129)(v32, v33);
    }

    if (String.count.getter() >= v31)
    {
      outlined init with take of Prompt.TokenGenerationNonStringContent(v0[65], v0[62]);
      v34 = v120;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v138 = v120;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v120[2] + 1, 1);
        v34 = v138;
      }

      v37 = v34[2];
      v36 = v34[3];
      if (v37 >= v36 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v36 > 1, v37 + 1, 1);
        v34 = v138;
      }

      v38 = v0[62];
      v34[2] = v37 + 1;
      v120 = v34;
      result = outlined init with take of Prompt.TokenGenerationNonStringContent(v38, v34 + v16 + v37 * v17);
      goto LABEL_4;
    }

LABEL_3:
    result = outlined destroy of Prompt.TokenGenerationNonStringContent(v0[65]);
LABEL_4:
    if (v135 == ++v8)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
  return result;
}

uint64_t _s15TokenGeneration15PromptScrubbingO05scrubC0_0E0AA016ScrubbedRenderedC0VyxGx_S2SYaKXEtYaKAA0gC0RzlFZAA0C0V_Tt2g5TQ1_(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 552);
  v9 = *v3;
  v4[70] = a1;
  v4[71] = a2;
  v4[72] = v2;

  if (v2)
  {
    v6 = v4[68];

    v7 = _s15TokenGeneration15PromptScrubbingO05scrubC0_0E0AA016ScrubbedRenderedC0VyxGx_S2SYaKXEtYaKAA0gC0RzlFZAA0C0V_Tt2g5TY3_;
  }

  else
  {
    v7 = _s15TokenGeneration15PromptScrubbingO05scrubC0_0E0AA016ScrubbedRenderedC0VyxGx_S2SYaKXEtYaKAA0gC0RzlFZAA0C0V_Tt2g5TY2_;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t _s15TokenGeneration15PromptScrubbingO05scrubC0_0E0AA016ScrubbedRenderedC0VyxGx_S2SYaKXEtYaKAA0gC0RzlFZAA0C0V_Tt2g5TY2_()
{
  v303 = v0;
  *(v0 + 32) = *(v0 + 560);
  v1 = *(v0 + 544);
  v2 = *(v0 + 528);
  v3 = *(v0 + 304);
  v4 = *(v0 + 288);
  *(v0 + 48) = *(v0 + 536);
  *(v0 + 56) = v2;
  lazy protocol witness table accessor for type String and conformance String();
  BidirectionalCollection<>.difference<A>(from:)();
  v5 = CollectionDifference.removals.getter();
  v262 = *(v1 + 16);
  v266 = v1;
  if (v262)
  {
    v6 = 0;
    v7 = 0;
    v8 = *(v0 + 344);
    v9 = *(v0 + 320);
    v248 = *(v0 + 136);
    v10 = *(v5 + 16);
    v257 = *(v0 + 144);
    v245 = (*(v257 + 80) + 32) & ~*(v257 + 80);
    v253 = *(v0 + 544) + v245;
    v294 = (v8 + 8);
    v299 = v8 + 32;
    v283 = (v9 + 8);
    v289 = (v9 + 32);
    v277 = MEMORY[0x1E69E7CC0];
    v239 = v5 + 65;
    v242 = v10;
    do
    {
      if (v7 >= *(v266 + 16))
      {
        goto LABEL_128;
      }

      v271 = *(v257 + 72);
      outlined init with copy of PromptScrubbing.IntermediatePromptState<Prompt.TokenGenerationNonStringContent>(v253 + v271 * v7, *(v0 + 184));
      v11 = v10;
      if (v6 != v10)
      {
        if ((v6 & 0x8000000000000000) != 0)
        {
          goto LABEL_134;
        }

        v12 = (v239 + 40 * v6);
        while (1)
        {
          if (v6 >= *(v5 + 16))
          {
            goto LABEL_127;
          }

          if ((*v12 & 1) == 0)
          {
            v11 = v6;
            goto LABEL_17;
          }

          v13 = v5;
          v14 = *(v12 - 33);
          v15 = *(v0 + 360);
          outlined init with copy of Prompt.TokenGenerationNonStringContent(*(v0 + 184), *(v0 + 424));
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          v17 = *(v0 + 424);
          if (EnumCaseMultiPayload == 1)
          {
            v18 = *(v0 + 328);
            v19 = *(v0 + 312);
            (*v289)(v18, v17, v19);
            v20 = Prompt.Attachment.position.getter();
            v21 = v283;
          }

          else
          {
            v18 = *(v0 + 352);
            v19 = *(v0 + 336);
            (*v299)(v18, v17, v19);
            v20 = Prompt.Delimiter.position.getter();
            v21 = v294;
          }

          (*v21)(v18, v19);
          if (v14 >= v20)
          {
            break;
          }

          ++v6;
          v12 += 40;
          v5 = v13;
          if (v10 == v6)
          {
            v11 = v10;
            goto LABEL_17;
          }
        }

        v11 = v6;
        v5 = v13;
      }

LABEL_17:
      v22 = *(v0 + 360);
      outlined init with copy of Prompt.TokenGenerationNonStringContent(*(v0 + 184), *(v0 + 432));
      v23 = swift_getEnumCaseMultiPayload();
      v24 = *(v0 + 432);
      if (v23 == 1)
      {
        v25 = *(v0 + 328);
        v26 = *(v0 + 312);
        (*v289)(v25, v24, v26);
        v27 = Prompt.Attachment.position.getter();
        v28 = v283;
      }

      else
      {
        v25 = *(v0 + 352);
        v26 = *(v0 + 336);
        (*v299)(v25, v24, v26);
        v27 = Prompt.Delimiter.position.getter();
        v28 = v294;
      }

      (*v28)(v25, v26);
      v29 = v277;
      if (__OFSUB__(v27, v11))
      {
        goto LABEL_129;
      }

      v31 = *(v0 + 176);
      v30 = *(v0 + 184);
      outlined init with copy of Prompt.TokenGenerationNonStringContent(v30, v31);
      Prompt.TokenGenerationNonStringContent.position.setter();
      v32 = *(v30 + *(v248 + 40));
      *(v31 + *(v248 + 36)) = *(v30 + *(v248 + 36));
      *(v31 + *(v248 + 40)) = v32;
      v33 = v11;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v277[2] + 1, 1, v277);
      }

      v35 = v29[2];
      v34 = v29[3];
      if (v35 >= v34 >> 1)
      {
        v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v34 > 1, v35 + 1, 1, v29);
      }

      ++v7;
      v36 = *(v0 + 176);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v0 + 184), &_s15TokenGeneration15PromptScrubbingO012IntermediateC5State33_102AEF12823D01DEBBEF7FCA4216300ALLVy_AA0C0V0aB16NonStringContentOGMd, &_s15TokenGeneration15PromptScrubbingO012IntermediateC5State33_102AEF12823D01DEBBEF7FCA4216300ALLVy_AA0C0V0aB16NonStringContentOGMR);
      v29[2] = (v35 + 1);
      v277 = v29;
      outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v36, v29 + v245 + v35 * v271, &_s15TokenGeneration15PromptScrubbingO012IntermediateC5State33_102AEF12823D01DEBBEF7FCA4216300ALLVy_AA0C0V0aB16NonStringContentOGMd, &_s15TokenGeneration15PromptScrubbingO012IntermediateC5State33_102AEF12823D01DEBBEF7FCA4216300ALLVy_AA0C0V0aB16NonStringContentOGMR);
      v6 = v33;
      v10 = v242;
    }

    while (v7 != v262);
    v37 = *(v0 + 544);

    v38 = v277;
  }

  else
  {

    v38 = MEMORY[0x1E69E7CC0];
  }

  v39 = *(v0 + 304);
  v40 = *(v0 + 288);

  v41 = CollectionDifference.insertions.getter();
  v42 = v41;
  v284 = v38[2];
  if (v284)
  {
    v43 = v38;
    v44 = 0;
    v45 = 0;
    v46 = *(v0 + 344);
    v47 = *(v0 + 320);
    v249 = *(v0 + 136);
    v48 = *(v41 + 16);
    v272 = *(v0 + 144);
    v278 = v43;
    v246 = (*(v272 + 80) + 32) & ~*(v272 + 80);
    v267 = v43 + v246;
    v258 = (v46 + 32);
    v243 = (v46 + 8);
    v254 = (v47 + 32);
    v240 = (v47 + 8);
    v295 = MEMORY[0x1E69E7CC0];
    v263 = v41 + 32;
    while (1)
    {
      if (v45 >= v278[2])
      {
        goto LABEL_131;
      }

      v49 = *(v0 + 448);
      v50 = *(v0 + 360);
      v51 = *(v0 + 200);
      v52 = *(v272 + 72);
      outlined init with copy of PromptScrubbing.IntermediatePromptState<Prompt.TokenGenerationNonStringContent>(v267 + v52 * v45, v51);
      outlined init with copy of Prompt.TokenGenerationNonStringContent(v51, v49);
      v53 = swift_getEnumCaseMultiPayload();
      v54 = *(v0 + 448);
      if (v53 == 1)
      {
        v55 = *(v0 + 328);
        v56 = *(v0 + 312);
        (*v254)(v55, v54, v56);
        v57 = Prompt.Attachment.position.getter();
        v58 = v240;
      }

      else
      {
        v55 = *(v0 + 352);
        v56 = *(v0 + 336);
        (*v258)(v55, v54, v56);
        v57 = Prompt.Delimiter.position.getter();
        v58 = v243;
      }

      (*v58)(v55, v56);
      v59 = __OFADD__(v57, v44);
      v60 = v57 + v44;
      if (v59)
      {
        break;
      }

      v61 = v263 + 40 * v44;
      v62 = v44;
      v299 = v45 + 1;
      v290 = v52;
      while (v48 != v62)
      {
        if (v44 < 0)
        {
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
          goto LABEL_132;
        }

        if (v62 >= *(v42 + 16))
        {
          goto LABEL_125;
        }

        if (*(v61 + 33) == 1 || *v61 >= v60)
        {
          v44 = v62;
          goto LABEL_46;
        }

        ++v62;
        v61 += 40;
        v59 = __OFADD__(v60++, 1);
        if (v59)
        {
          goto LABEL_126;
        }
      }

      v44 = v48;
LABEL_46:
      v63 = *(v0 + 440);
      v64 = *(v0 + 360);
      v65 = *(v0 + 192);
      outlined init with copy of Prompt.TokenGenerationNonStringContent(*(v0 + 200), v65);
      outlined init with take of Prompt.TokenGenerationNonStringContent(v65, v63);
      v66 = swift_getEnumCaseMultiPayload();
      v67 = *(v0 + 440);
      v68 = *(v0 + 192);
      if (v66 == 1)
      {
        v69 = *(v0 + 328);
        v70 = *(v0 + 312);
        v71 = *v254;
        (*v254)(v69, v67, v70);
        Prompt.Attachment.position.setter();
      }

      else
      {
        v69 = *(v0 + 352);
        v70 = *(v0 + 336);
        v71 = *v258;
        (*v258)(v69, v67, v70);
        Prompt.Delimiter.position.setter();
      }

      v71(v68, v69, v70);
      v72 = *(v0 + 360);
      v73 = *(v0 + 192);
      v74 = *(v0 + 200);
      swift_storeEnumTagMultiPayload();
      v75 = *(v74 + *(v249 + 40));
      *(v73 + *(v249 + 36)) = *(v74 + *(v249 + 36));
      *(v73 + *(v249 + 40)) = v75;
      v76 = v295;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v76 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v295[2] + 1, 1, v295);
      }

      ++v45;
      v78 = v76[2];
      v77 = v76[3];
      if (v78 >= v77 >> 1)
      {
        v295 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v77 > 1, v78 + 1, 1, v76);
      }

      else
      {
        v295 = v76;
      }

      v79 = *(v0 + 192);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v0 + 200), &_s15TokenGeneration15PromptScrubbingO012IntermediateC5State33_102AEF12823D01DEBBEF7FCA4216300ALLVy_AA0C0V0aB16NonStringContentOGMd, &_s15TokenGeneration15PromptScrubbingO012IntermediateC5State33_102AEF12823D01DEBBEF7FCA4216300ALLVy_AA0C0V0aB16NonStringContentOGMR);
      v295[2] = v78 + 1;
      outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v79, v295 + v246 + v78 * v290, &_s15TokenGeneration15PromptScrubbingO012IntermediateC5State33_102AEF12823D01DEBBEF7FCA4216300ALLVy_AA0C0V0aB16NonStringContentOGMd, &_s15TokenGeneration15PromptScrubbingO012IntermediateC5State33_102AEF12823D01DEBBEF7FCA4216300ALLVy_AA0C0V0aB16NonStringContentOGMR);
      if (v299 == v284)
      {

        v80 = v295;
        goto LABEL_57;
      }
    }

LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
LABEL_134:
    __break(1u);
LABEL_135:
    __break(1u);
LABEL_136:
    __break(1u);
LABEL_137:
    __break(1u);
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  v80 = MEMORY[0x1E69E7CC0];
LABEL_57:
  v81 = *(v0 + 568);
  v82 = *(v0 + 560);

  v300 = v82;
  v301 = v81;
  v83 = v80[2];
  if (v83)
  {
    v291 = 0;
    v84 = *(v0 + 344);
    v85 = *(v0 + 320);
    v87 = *(v0 + 136);
    v86 = *(v0 + 144);
    v88 = v80 + ((*(v86 + 80) + 32) & ~*(v86 + 80));
    v268 = *(v86 + 72);
    v273 = (*(v86 + 80) + 32) & ~*(v86 + 80);
    v264 = (v84 + 8);
    v279 = (v85 + 32);
    v285 = (v84 + 32);
    v299 = MEMORY[0x1E69E7CC0];
    v259 = (v85 + 8);
    while (1)
    {
      v89 = *(v0 + 472);
      v90 = *(v0 + 360);
      v91 = *(v0 + 216);
      outlined init with copy of PromptScrubbing.IntermediatePromptState<Prompt.TokenGenerationNonStringContent>(v88, v91);
      outlined init with copy of Prompt.TokenGenerationNonStringContent(v91, v89);
      v92 = swift_getEnumCaseMultiPayload();
      v93 = *(v0 + 472);
      if (v92 == 1)
      {
        v94 = *(v0 + 328);
        v95 = *(v0 + 312);
        (*v279)(v94, v93, v95);
        v96 = Prompt.Attachment.position.getter();
        v97 = v259;
      }

      else
      {
        v94 = *(v0 + 352);
        v95 = *(v0 + 336);
        (*v285)(v94, v93, v95);
        v96 = Prompt.Delimiter.position.getter();
        v97 = v264;
      }

      (*v97)(v94, v95);
      v98 = v96 - v291;
      if (__OFSUB__(v96, v291))
      {
        goto LABEL_130;
      }

      v99 = *(v0 + 216);
      if (*(v99 + *(v87 + 36)) == 1)
      {
        v100 = *(v0 + 360);
        outlined init with copy of Prompt.TokenGenerationNonStringContent(v99, *(v0 + 464));
        v101 = swift_getEnumCaseMultiPayload();
        v102 = *(v0 + 464);
        if (v101 == 1)
        {
          v103 = *(v0 + 328);
          v104 = *(v0 + 312);
          (*v279)(v103, v102, v104);
          v105 = Prompt.Attachment.position.getter();
          v106 = v259;
        }

        else
        {
          v103 = *(v0 + 352);
          v104 = *(v0 + 336);
          (*v285)(v103, v102, v104);
          v105 = Prompt.Delimiter.position.getter();
          v106 = v264;
        }

        (*v106)(v103, v104);
        if (v105)
        {
          if (__OFSUB__(v98, 1))
          {
            goto LABEL_135;
          }

          String.index(_:offsetBy:)();
          if (String.subscript.getter() == 10 && v107 == 0xE100000000000000)
          {

LABEL_73:
            String.remove(at:)();

            v59 = __OFADD__(v291++, 1);
            if (v59)
            {
              goto LABEL_136;
            }

            goto LABEL_76;
          }

          v108 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v108)
          {
            goto LABEL_73;
          }
        }
      }

LABEL_76:
      v109 = *(v0 + 456);
      v110 = *(v0 + 360);
      v111 = *(v0 + 208);
      outlined init with copy of Prompt.TokenGenerationNonStringContent(*(v0 + 216), v111);
      outlined init with take of Prompt.TokenGenerationNonStringContent(v111, v109);
      v112 = swift_getEnumCaseMultiPayload();
      v113 = *(v0 + 456);
      v114 = *(v0 + 208);
      if (v112 == 1)
      {
        v115 = *(v0 + 328);
        v116 = *(v0 + 312);
        v117 = *v279;
        (*v279)(v115, v113, v116);
        Prompt.Attachment.position.setter();
      }

      else
      {
        v115 = *(v0 + 352);
        v116 = *(v0 + 336);
        v117 = *v285;
        (*v285)(v115, v113, v116);
        Prompt.Delimiter.position.setter();
      }

      v117(v114, v115, v116);
      v118 = *(v0 + 360);
      v120 = *(v0 + 208);
      v119 = *(v0 + 216);
      swift_storeEnumTagMultiPayload();
      v121 = *(v119 + *(v87 + 40));
      *(v120 + *(v87 + 36)) = 0;
      *(v120 + *(v87 + 40)) = v121;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v299 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v299 + 16) + 1, 1, v299);
      }

      v123 = *(v299 + 16);
      v122 = *(v299 + 24);
      if (v123 >= v122 >> 1)
      {
        v299 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v122 > 1, v123 + 1, 1, v299);
      }

      v124 = *(v0 + 208);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v0 + 216), &_s15TokenGeneration15PromptScrubbingO012IntermediateC5State33_102AEF12823D01DEBBEF7FCA4216300ALLVy_AA0C0V0aB16NonStringContentOGMd, &_s15TokenGeneration15PromptScrubbingO012IntermediateC5State33_102AEF12823D01DEBBEF7FCA4216300ALLVy_AA0C0V0aB16NonStringContentOGMR);
      *(v299 + 16) = v123 + 1;
      outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v124, v299 + v273 + v123 * v268, &_s15TokenGeneration15PromptScrubbingO012IntermediateC5State33_102AEF12823D01DEBBEF7FCA4216300ALLVy_AA0C0V0aB16NonStringContentOGMd, &_s15TokenGeneration15PromptScrubbingO012IntermediateC5State33_102AEF12823D01DEBBEF7FCA4216300ALLVy_AA0C0V0aB16NonStringContentOGMR);
      v88 += v268;
      if (!--v83)
      {

        v269 = v300;
        v274 = v301;
        goto LABEL_86;
      }
    }
  }

  v269 = v82;
  v274 = v81;

  v299 = MEMORY[0x1E69E7CC0];
LABEL_86:
  v125 = *(v0 + 256);
  v296 = *(v0 + 248);
  v286 = *(v0 + 144);
  v292 = *(v0 + 136);
  v126 = *(v299 + 16);
  v127 = (v125 + 56);
  v128 = (v125 + 48);
  v255 = (*(v0 + 320) + 32);
  v260 = (*(v0 + 344) + 32);
  v129 = 0;

  while (1)
  {
    if (v129 == v126)
    {
      v130 = 1;
      v129 = v126;
    }

    else
    {
      if (v129 >= *(v299 + 16))
      {
        goto LABEL_133;
      }

      v131 = *(v0 + 264);
      v132 = *(v0 + 272);
      v133 = v299 + ((*(v286 + 80) + 32) & ~*(v286 + 80)) + *(v286 + 72) * v129;
      v134 = *(v296 + 48);
      *v131 = v129;
      outlined init with copy of PromptScrubbing.IntermediatePromptState<Prompt.TokenGenerationNonStringContent>(v133, v131 + v134);
      outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v131, v132, &_sSi6offset_15TokenGeneration15PromptScrubbingO012IntermediateD5State33_102AEF12823D01DEBBEF7FCA4216300ALLVy_AB0D0V0bC16NonStringContentOG7elementtMd, &_sSi6offset_15TokenGeneration15PromptScrubbingO012IntermediateD5State33_102AEF12823D01DEBBEF7FCA4216300ALLVy_AB0D0V0bC16NonStringContentOG7elementtMR);
      v130 = 0;
      ++v129;
    }

    v135 = *(v0 + 272);
    v136 = *(v0 + 280);
    v137 = *(v0 + 248);
    (*v127)(v135, v130, 1, v137);
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v135, v136, &_sSi6offset_15TokenGeneration15PromptScrubbingO012IntermediateD5State33_102AEF12823D01DEBBEF7FCA4216300ALLVy_AB0D0V0bC16NonStringContentOG7elementtSgMd, &_sSi6offset_15TokenGeneration15PromptScrubbingO012IntermediateD5State33_102AEF12823D01DEBBEF7FCA4216300ALLVy_AB0D0V0bC16NonStringContentOG7elementtSgMR);
    if ((*v128)(v136, 1, v137) == 1)
    {
      break;
    }

    v138 = *(v0 + 280);
    v139 = *(v0 + 240);
    v140 = *v138;
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v138 + *(v296 + 48), v139, &_s15TokenGeneration15PromptScrubbingO012IntermediateC5State33_102AEF12823D01DEBBEF7FCA4216300ALLVy_AA0C0V0aB16NonStringContentOGMd, &_s15TokenGeneration15PromptScrubbingO012IntermediateC5State33_102AEF12823D01DEBBEF7FCA4216300ALLVy_AA0C0V0aB16NonStringContentOGMR);
    if (*(v139 + *(v292 + 40)))
    {
      v141 = *(v0 + 488);
      v142 = *(v0 + 360);
      v143 = *(v0 + 240);
      v144 = *(v0 + 224);
      String.count.getter();
      outlined init with copy of Prompt.TokenGenerationNonStringContent(v143, v144);
      outlined init with take of Prompt.TokenGenerationNonStringContent(v144, v141);
      v145 = swift_getEnumCaseMultiPayload();
      v146 = *(v0 + 488);
      v147 = *(v0 + 224);
      if (v145 == 1)
      {
        v148 = *(v0 + 328);
        v250 = *(v0 + 312);
        v149 = *v255;
        (*v255)(v148, v146);
        Prompt.Attachment.position.setter();
        (v149)(v147, v148, v250);
      }

      else
      {
        v150 = *(v0 + 352);
        v251 = *(v0 + 336);
        v151 = *(v0 + 224);
        v152 = *v260;
        (*v260)(v150, v146);
        Prompt.Delimiter.position.setter();
        (v152)(v151, v150, v251);
      }

      v153 = *(v0 + 360);
      v154 = *(v0 + 240);
      v155 = *(v0 + 224);
      swift_storeEnumTagMultiPayload();
      *(v155 + *(v292 + 36)) = *(v154 + *(v292 + 36));
      *(v155 + *(v292 + 40)) = 1;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v280 = specialized _ArrayBuffer._consumeAndCreateNew()(v280);
      }

      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v0 + 240), &_s15TokenGeneration15PromptScrubbingO012IntermediateC5State33_102AEF12823D01DEBBEF7FCA4216300ALLVy_AA0C0V0aB16NonStringContentOGMd, &_s15TokenGeneration15PromptScrubbingO012IntermediateC5State33_102AEF12823D01DEBBEF7FCA4216300ALLVy_AA0C0V0aB16NonStringContentOGMR);
      if ((v140 & 0x8000000000000000) != 0)
      {
        goto LABEL_137;
      }

      if (v140 >= v280[2])
      {
        goto LABEL_138;
      }

      outlined assign with take of PromptScrubbing.IntermediatePromptState<Prompt.TokenGenerationNonStringContent>(*(v0 + 224), v280 + ((*(v286 + 80) + 32) & ~*(v286 + 80)) + *(v286 + 72) * v140);
    }

    else
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v0 + 240), &_s15TokenGeneration15PromptScrubbingO012IntermediateC5State33_102AEF12823D01DEBBEF7FCA4216300ALLVy_AA0C0V0aB16NonStringContentOGMd, &_s15TokenGeneration15PromptScrubbingO012IntermediateC5State33_102AEF12823D01DEBBEF7FCA4216300ALLVy_AA0C0V0aB16NonStringContentOGMR);
    }
  }

  v156 = v280[2];
  if (v156)
  {
    v157 = *(v0 + 368);
    v158 = v280 + ((*(v286 + 80) + 32) & ~*(v286 + 80));
    v159 = *(v286 + 72);
    v160 = MEMORY[0x1E69E7CC0];
    v162 = v269;
    v161 = v274;
    do
    {
      v163 = *(v0 + 480);
      v164 = *(v0 + 232);
      outlined init with copy of PromptScrubbing.IntermediatePromptState<Prompt.TokenGenerationNonStringContent>(v158, v164);
      outlined init with take of Prompt.TokenGenerationNonStringContent(v164, v163);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v160 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v160[2] + 1, 1, v160);
      }

      v166 = v160[2];
      v165 = v160[3];
      if (v166 >= v165 >> 1)
      {
        v160 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v165 > 1, v166 + 1, 1, v160);
      }

      v167 = *(v0 + 480);
      v160[2] = v166 + 1;
      outlined init with take of Prompt.TokenGenerationNonStringContent(v167, v160 + ((*(v157 + 80) + 32) & ~*(v157 + 80)) + *(v157 + 72) * v166);
      v158 += v159;
      v156 = (v156 - 1);
    }

    while (v156);
  }

  else
  {

    v160 = MEMORY[0x1E69E7CC0];
    v162 = v269;
    v161 = v274;
  }

  v168 = *(v0 + 96);
  v169 = *(v0 + 72);
  Prompt.init(string:nonStringContent:)(v162, v161, v160, *(v0 + 128));
  lazy protocol witness table accessor for type Prompt and conformance Prompt(&lazy protocol witness table cache variable for type Prompt and conformance Prompt, MEMORY[0x1E69DA850]);
  LOBYTE(v299) = dispatch thunk of static Equatable.== infix(_:_:)();
  if (v299)
  {
    if (one-time initialization token for prompt == -1)
    {
LABEL_113:
      v170 = type metadata accessor for Logger();
      __swift_project_value_buffer(v170, static Log.prompt);
      v171 = Logger.logObject.getter();
      v172 = static os_log_type_t.default.getter();
      v173 = os_log_type_enabled(v171, v172);
      v175 = *(v0 + 296);
      v174 = *(v0 + 304);
      v176 = *(v0 + 288);
      if (v173)
      {
        v177 = swift_slowAlloc();
        *v177 = 0;
        _os_log_impl(&dword_1AB828000, v171, v172, "Input validation did not change the original prompt.", v177, 2u);
        MEMORY[0x1AC5A6CD0](v177, -1, -1);
      }

      (*(v175 + 8))(v174, v176);
      goto LABEL_121;
    }

LABEL_139:
    swift_once();
    goto LABEL_113;
  }

  if (one-time initialization token for prompt != -1)
  {
    swift_once();
  }

  v178 = *(v0 + 120);
  v179 = *(v0 + 128);
  v181 = *(v0 + 104);
  v180 = *(v0 + 112);
  v182 = *(v0 + 96);
  v183 = *(v0 + 72);
  v184 = type metadata accessor for Logger();
  __swift_project_value_buffer(v184, static Log.prompt);
  v185 = *(v181 + 16);
  v185(v178, v183, v182);
  v185(v180, v179, v182);
  v186 = Logger.logObject.getter();
  v187 = static os_log_type_t.default.getter();
  v188 = os_log_type_enabled(v186, v187);
  v190 = *(v0 + 296);
  v189 = *(v0 + 304);
  v191 = *(v0 + 288);
  v193 = *(v0 + 112);
  v192 = *(v0 + 120);
  v195 = *(v0 + 96);
  v194 = *(v0 + 104);
  if (v188)
  {
    v281 = v187;
    v196 = swift_slowAlloc();
    v287 = swift_slowAlloc();
    v302[0] = v287;
    *v196 = 136643075;
    v275 = v186;
    v197 = Prompt.string.getter();
    v297 = v189;
    v199 = v198;
    v200 = *(v194 + 8);
    v200(v192, v195);
    v201 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v197, v199, v302);

    *(v196 + 4) = v201;
    *(v196 + 12) = 2085;
    v202 = Prompt.string.getter();
    v204 = v203;
    v200(v193, v195);
    v205 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v202, v204, v302);

    *(v196 + 14) = v205;
    _os_log_impl(&dword_1AB828000, v275, v281, "Input validation changed the original prompt from %{sensitive}s to %{sensitive}s", v196, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1AC5A6CD0](v287, -1, -1);
    MEMORY[0x1AC5A6CD0](v196, -1, -1);

    (*(v190 + 8))(v297, v191);
  }

  else
  {

    v206 = *(v194 + 8);
    v206(v193, v195);
    v206(v192, v195);
    (*(v190 + 8))(v189, v191);
  }

LABEL_121:
  v207 = *(v0 + 528);
  v208 = *(v0 + 520);
  v209 = *(v0 + 504);
  v210 = *(v0 + 512);
  v211 = *(v0 + 488);
  v212 = *(v0 + 496);
  v214 = *(v0 + 472);
  v213 = *(v0 + 480);
  v219 = *(v0 + 464);
  v220 = *(v0 + 456);
  v221 = *(v0 + 448);
  v222 = *(v0 + 440);
  v223 = *(v0 + 432);
  v224 = *(v0 + 424);
  v225 = *(v0 + 416);
  v226 = *(v0 + 408);
  v227 = *(v0 + 400);
  v228 = *(v0 + 392);
  v229 = *(v0 + 384);
  v230 = *(v0 + 376);
  v231 = *(v0 + 352);
  v232 = *(v0 + 328);
  v233 = *(v0 + 304);
  v234 = *(v0 + 280);
  v235 = *(v0 + 272);
  v236 = *(v0 + 264);
  v237 = *(v0 + 240);
  v238 = *(v0 + 232);
  v241 = *(v0 + 224);
  v244 = *(v0 + 216);
  v247 = *(v0 + 208);
  v252 = *(v0 + 200);
  v256 = *(v0 + 192);
  v261 = *(v0 + 184);
  v276 = *(v0 + 168);
  v282 = *(v0 + 160);
  v288 = *(v0 + 152);
  v265 = *(v0 + 176);
  v270 = *(v0 + 128);
  v293 = *(v0 + 120);
  v298 = *(v0 + 112);
  v215 = *(v0 + 96);
  v216 = *(v0 + 64);
  (*(*(v0 + 104) + 32))(v216);

  *(v216 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration22ScrubbedRenderedPromptVyAA0E0VGMd, &_s15TokenGeneration22ScrubbedRenderedPromptVyAA0E0VGMR) + 36)) = (v299 & 1) == 0;

  v217 = *(v0 + 8);

  return v217();
}

uint64_t _s15TokenGeneration15PromptScrubbingO05scrubC0_0E0AA016ScrubbedRenderedC0VyxGx_S2SYaKXEtYaKAA0gC0RzlFZAA0C0V_Tt2g5TY3_()
{
  v1 = v0[66];
  v2 = v0[65];
  v3 = v0[63];
  v4 = v0[64];
  v6 = v0[61];
  v5 = v0[62];
  v7 = v0[59];
  v8 = v0[60];
  v9 = v0[57];
  v10 = v0[58];
  v14 = v0[56];
  v15 = v0[55];
  v16 = v0[54];
  v17 = v0[53];
  v18 = v0[52];
  v19 = v0[51];
  v20 = v0[50];
  v21 = v0[49];
  v22 = v0[48];
  v23 = v0[47];
  v24 = v0[44];
  v25 = v0[41];
  v26 = v0[38];
  v27 = v0[35];
  v28 = v0[34];
  v29 = v0[33];
  v30 = v0[30];
  v31 = v0[29];
  v32 = v0[28];
  v33 = v0[27];
  v34 = v0[26];
  v35 = v0[25];
  v36 = v0[24];
  v37 = v0[23];
  v38 = v0[22];
  v39 = v0[21];
  v40 = v0[20];
  v41 = v0[19];
  v42 = v0[16];
  v43 = v0[15];
  v44 = v0[14];

  v11 = v0[1];
  v12 = v0[72];

  return v11();
}

uint64_t ChatMessagesPrompt.init(renderedPrompt:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = type metadata accessor for Prompt.Turn();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v37);
  v36 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v34 = v27 - v8;
  v35 = type metadata accessor for ChatMessagePrompt();
  v9 = *(v35 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = Prompt.turns()();
  v14 = *(v13 + 16);
  if (v14)
  {
    v27[2] = a2;
    v28 = a1;
    v38 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14, 0);
    v15 = v38;
    v16 = *(v4 + 16);
    v32 = v4 + 16;
    v33 = v16;
    v17 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v27[1] = v13;
    v18 = v13 + v17;
    v19 = *(v4 + 72);
    v30 = (v4 + 8);
    v31 = v19;
    v29 = v9 + 32;
    v20 = v16;
    do
    {
      v21 = v34;
      v22 = v37;
      v20(v34, v18, v37);
      v20(v36, v21, v22);
      ChatMessagePrompt.init(_:)();
      (*v30)(v21, v22);
      v38 = v15;
      v24 = *(v15 + 16);
      v23 = *(v15 + 24);
      if (v24 >= v23 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v23 > 1, v24 + 1, 1);
        v15 = v38;
      }

      *(v15 + 16) = v24 + 1;
      (*(v9 + 32))(v15 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v24, v12, v35);
      v18 += v31;
      --v14;
    }

    while (v14);

    a1 = v28;
  }

  else
  {
  }

  ChatMessagesPrompt.init(_:)();
  v25 = type metadata accessor for Prompt();
  return (*(*(v25 - 8) + 8))(a1, v25);
}

BOOL specialized closure #1 in static PromptScrubbing.scrubPrompt<A>(_:scrub:)(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v22 = a2;
  v2 = type metadata accessor for Prompt.Attachment();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Prompt.Delimiter();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Prompt.TokenGenerationNonStringContent();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v21 - v17;
  outlined init with copy of Prompt.TokenGenerationNonStringContent(v21, &v21 - v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v6, v18, v2);
    v21 = Prompt.Attachment.position.getter();
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    (*(v8 + 32))(v11, v18, v7);
    v21 = Prompt.Delimiter.position.getter();
    (*(v8 + 8))(v11, v7);
  }

  outlined init with copy of Prompt.TokenGenerationNonStringContent(v22, v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v6, v16, v2);
    v19 = Prompt.Attachment.position.getter();
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    (*(v8 + 32))(v11, v16, v7);
    v19 = Prompt.Delimiter.position.getter();
    (*(v8 + 8))(v11, v7);
  }

  return v21 < v19;
}

uint64_t protocol witness for RenderedPromptConvertible.render() in conformance CompletionPrompt(uint64_t a1, uint64_t a2)
{
  v3[8] = v2;
  v3[9] = a2;
  v3[7] = a1;
  return MEMORY[0x1EEE6DFA0](protocol witness for RenderedPromptConvertible.render() in conformance CompletionPrompt, 0, 0);
}

uint64_t protocol witness for RenderedPromptConvertible.render() in conformance CompletionPrompt()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = type metadata accessor for CatalogClient();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v7 = CatalogClient.init()();
  v8 = MEMORY[0x1E69DA6B8];
  v0[5] = v4;
  v0[6] = v8;
  v0[2] = v7;
  lazy protocol witness table accessor for type Prompt and conformance Prompt(&lazy protocol witness table cache variable for type CompletionPrompt and conformance CompletionPrompt, MEMORY[0x1E69C61B8]);
  GenerativeConfigurationProtocol<>.renderToTokenGenerationPrompt(catalogClient:)();
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v9 = v0[1];

  return v9();
}

uint64_t protocol witness for RenderedPromptConvertible.render() in conformance ChatMessagesPrompt(uint64_t a1, uint64_t a2)
{
  v3[8] = v2;
  v3[9] = a2;
  v3[7] = a1;
  return MEMORY[0x1EEE6DFA0](protocol witness for RenderedPromptConvertible.render() in conformance ChatMessagesPrompt, 0, 0);
}

uint64_t protocol witness for RenderedPromptConvertible.render() in conformance ChatMessagesPrompt()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = type metadata accessor for CatalogClient();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v0[2] = CatalogClient.init()();
  v6 = MEMORY[0x1E69DA6B8];
  v0[5] = v3;
  v0[6] = v6;
  lazy protocol witness table accessor for type Prompt and conformance Prompt(&lazy protocol witness table cache variable for type ChatMessagesPrompt and conformance ChatMessagesPrompt, MEMORY[0x1E69C61F8]);
  GenerativeConfigurationProtocol<>.renderToTokenGenerationPromptTurns(catalogClient:)();
  v7 = v0[7];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  static Prompt.transcript(turns:)();

  v8 = v0[1];

  return v8();
}

uint64_t type metadata accessor for Prompt.TokenGenerationNonStringContent()
{
  result = type metadata singleton initialization cache for Prompt.TokenGenerationNonStringContent;
  if (!type metadata singleton initialization cache for Prompt.TokenGenerationNonStringContent)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for Prompt(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Prompt and conformance Prompt(&lazy protocol witness table cache variable for type Prompt and conformance Prompt, MEMORY[0x1E69DA850]);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for Prompt.Delimiter(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Prompt and conformance Prompt(&lazy protocol witness table cache variable for type Prompt.Delimiter and conformance Prompt.Delimiter, MEMORY[0x1E69DA828]);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for Prompt.Attachment(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Prompt and conformance Prompt(&lazy protocol witness table cache variable for type Prompt.Attachment and conformance Prompt.Attachment, MEMORY[0x1E69DA700]);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata completion function for Prompt.TokenGenerationNonStringContent()
{
  result = type metadata accessor for Prompt.Delimiter();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Prompt.Attachment();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t Prompt.TokenGenerationNonStringContent.position.setter()
{
  v1 = type metadata accessor for Prompt.Attachment();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Prompt.Delimiter();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Prompt.TokenGenerationNonStringContent();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with take of Prompt.TokenGenerationNonStringContent(v0, v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *(v2 + 32);
    v15(v5, v14, v1);
    Prompt.Attachment.position.setter();
    v15(v0, v5, v1);
  }

  else
  {
    v16 = *(v7 + 32);
    v16(v10, v14, v6);
    Prompt.Delimiter.position.setter();
    v16(v0, v10, v6);
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t instantiation function for generic protocol witness table for Prompt.TokenGenerationNonStringContent(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Prompt and conformance Prompt(&lazy protocol witness table cache variable for type Prompt.TokenGenerationNonStringContent and conformance Prompt.TokenGenerationNonStringContent, type metadata accessor for Prompt.TokenGenerationNonStringContent);
  *(a1 + 8) = result;
  return result;
}

uint64_t Prompt.nonStringContent.getter()
{
  v32 = type metadata accessor for Prompt.TokenGenerationNonStringContent();
  v1 = *(v32 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x1EEE9AC00](v32);
  v5 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v30 - v6;
  v8 = Prompt.delimiters.getter();
  v9 = *(v8 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (v9)
  {
    v31 = v0;
    v36 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9, 0);
    v11 = v36;
    v35 = type metadata accessor for Prompt.Delimiter();
    v12 = *(v35 - 8);
    v13 = *(v12 + 16);
    v33 = v12 + 16;
    v34 = v13;
    v14 = *(v12 + 80);
    v30[1] = v8;
    v15 = v8 + ((v14 + 32) & ~v14);
    v16 = *(v12 + 72);
    do
    {
      v34(v7, v15, v35);
      swift_storeEnumTagMultiPayload();
      v36 = v11;
      v18 = *(v11 + 16);
      v17 = *(v11 + 24);
      if (v18 >= v17 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v17 > 1, v18 + 1, 1);
        v11 = v36;
      }

      *(v11 + 16) = v18 + 1;
      outlined init with take of Prompt.TokenGenerationNonStringContent(v7, v11 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v18);
      v15 += v16;
      --v9;
    }

    while (v9);

    v10 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v11 = MEMORY[0x1E69E7CC0];
  }

  v19 = Prompt.attachments.getter();
  v20 = *(v19 + 16);
  if (v20)
  {
    v36 = v10;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v20, 0);
    v21 = v36;
    v35 = type metadata accessor for Prompt.Attachment();
    v22 = *(v35 - 8);
    v23 = *(v22 + 16);
    v33 = v22 + 16;
    v34 = v23;
    v24 = *(v22 + 80);
    v31 = v19;
    v25 = v19 + ((v24 + 32) & ~v24);
    v26 = *(v22 + 72);
    do
    {
      v34(v5, v25, v35);
      swift_storeEnumTagMultiPayload();
      v36 = v21;
      v28 = *(v21 + 16);
      v27 = *(v21 + 24);
      if (v28 >= v27 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v27 > 1, v28 + 1, 1);
        v21 = v36;
      }

      *(v21 + 16) = v28 + 1;
      outlined init with take of Prompt.TokenGenerationNonStringContent(v5, v21 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v28);
      v25 += v26;
      --v20;
    }

    while (v20);
  }

  else
  {

    v21 = MEMORY[0x1E69E7CC0];
  }

  v36 = v11;
  specialized Array.append<A>(contentsOf:)(v21);
  return v36;
}

uint64_t Prompt.init(string:nonStringContent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for Prompt.Attachment();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v76 = &v65 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v83 = &v65 - v16;
  v81 = type metadata accessor for Prompt.Delimiter();
  v79 = *(v81 - 8);
  v17 = *(v79 + 64);
  v18 = MEMORY[0x1EEE9AC00](v81);
  v75 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v74 = &v65 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v65 - v22;
  v85 = type metadata accessor for Prompt.TokenGenerationNonStringContent();
  v24 = *(*(v85 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v85);
  v78 = &v65 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v29 = &v65 - v28;
  v30 = MEMORY[0x1EEE9AC00](v27);
  v82 = &v65 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v80 = &v65 - v33;
  v34 = *(a3 + 16);
  if (v34)
  {
    v66 = v13;
    v67 = v8;
    v77 = v9;
    v69 = a4;
    v70 = a1;
    v71 = a2;
    v35 = *(v32 + 80);
    v68 = a3;
    v36 = a3 + ((v35 + 32) & ~v35);
    v84 = *(v32 + 72);
    v37 = (v79 + 32);
    v38 = MEMORY[0x1E69E7CC0];
    v39 = v36;
    v40 = v34;
    v72 = v34;
    v73 = v29;
    do
    {
      v41 = v80;
      outlined init with copy of Prompt.TokenGenerationNonStringContent(v39, v80);
      outlined init with take of Prompt.TokenGenerationNonStringContent(v41, v29);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        outlined destroy of Prompt.TokenGenerationNonStringContent(v29);
      }

      else
      {
        v42 = *v37;
        v43 = v23;
        v44 = v75;
        v45 = v81;
        (*v37)(v75, v29, v81);
        v46 = v74;
        v47 = v44;
        v23 = v43;
        v42(v74, v47, v45);
        v42(v43, v46, v45);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v38[2] + 1, 1, v38);
        }

        v49 = v38[2];
        v48 = v38[3];
        v50 = v38;
        v51 = v79;
        v34 = v72;
        v29 = v73;
        if (v49 >= v48 >> 1)
        {
          v52 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v48 > 1, v49 + 1, 1, v38);
          v51 = v79;
          v50 = v52;
        }

        v50[2] = v49 + 1;
        v38 = v50;
        v42(v50 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v49, v23, v81);
      }

      v39 += v84;
      --v40;
    }

    while (v40);
    v53 = v78;
    v54 = (v77 + 32);
    v55 = MEMORY[0x1E69E7CC0];
    v57 = v66;
    v56 = v67;
    do
    {
      v58 = v82;
      outlined init with copy of Prompt.TokenGenerationNonStringContent(v36, v82);
      outlined init with take of Prompt.TokenGenerationNonStringContent(v58, v53);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v59 = v38;
        v60 = *v54;
        (*v54)(v57, v53, v56);
        v61 = v76;
        v60(v76, v57, v56);
        v60(v83, v61, v56);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v55 + 2) + 1, 1, v55);
        }

        v63 = *(v55 + 2);
        v62 = *(v55 + 3);
        if (v63 >= v62 >> 1)
        {
          v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v62 > 1, v63 + 1, 1, v55);
        }

        *(v55 + 2) = v63 + 1;
        v60(&v55[((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v63], v83, v56);
        v53 = v78;
        v38 = v59;
      }

      else
      {
        outlined destroy of Prompt.TokenGenerationNonStringContent(v53);
      }

      v36 += v84;
      --v34;
    }

    while (v34);
  }

  return Prompt.init(string:delimiters:attachments:)();
}

Swift::Int specialized MutableCollection<>.sort(by:)(void **a1)
{
  v2 = *(type metadata accessor for Prompt.TokenGenerationNonStringContent() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v6);
  *a1 = v3;
  return result;
}

Swift::Int specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for Prompt.TokenGenerationNonStringContent();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for Prompt.TokenGenerationNonStringContent() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }

  return result;
}

uint64_t specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(char *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v68 = a1;
  v67 = type metadata accessor for Prompt.Attachment();
  v7 = *(v67 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v67);
  v66 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for Prompt.Delimiter();
  v10 = *(v65 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v65);
  v64 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for Prompt.TokenGenerationNonStringContent();
  v13 = *(*(v69 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v69);
  v58 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v49 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v49 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v49 - v23;
  result = MEMORY[0x1EEE9AC00](v22);
  v28 = &v49 - v27;
  v51 = a2;
  if (a3 != a2)
  {
    v29 = *a4;
    v30 = *(v26 + 72);
    v61 = (v10 + 8);
    v62 = (v10 + 32);
    v59 = (v7 + 8);
    v60 = (v7 + 32);
    v31 = v29 + v30 * (a3 - 1);
    v56 = -v30;
    v57 = v29;
    v32 = &v68[-a3];
    v50 = v30;
    v33 = v29 + v30 * a3;
    v68 = v18;
    v63 = v21;
LABEL_5:
    v54 = v31;
    v55 = a3;
    v52 = v33;
    v53 = v32;
    v34 = v32;
    while (1)
    {
      outlined init with copy of Prompt.TokenGenerationNonStringContent(v33, v28);
      outlined init with copy of Prompt.TokenGenerationNonStringContent(v31, v24);
      outlined init with copy of Prompt.TokenGenerationNonStringContent(v28, v21);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v35 = v66;
        v36 = v21;
        v37 = v67;
        (*v60)(v66, v36, v67);
        v38 = Prompt.Attachment.position.getter();
        (*v59)(v35, v37);
      }

      else
      {
        v39 = v64;
        v40 = v65;
        (*v62)(v64, v21, v65);
        v38 = Prompt.Delimiter.position.getter();
        v41 = v40;
        v18 = v68;
        (*v61)(v39, v41);
      }

      outlined init with copy of Prompt.TokenGenerationNonStringContent(v24, v18);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v42 = v66;
        v43 = v67;
        (*v60)(v66, v18, v67);
        v44 = Prompt.Attachment.position.getter();
        v45 = v59;
      }

      else
      {
        v42 = v64;
        v43 = v65;
        (*v62)(v64, v18, v65);
        v44 = Prompt.Delimiter.position.getter();
        v45 = v61;
      }

      (*v45)(v42, v43);
      outlined destroy of Prompt.TokenGenerationNonStringContent(v24);
      result = outlined destroy of Prompt.TokenGenerationNonStringContent(v28);
      v46 = v38 < v44;
      v18 = v68;
      v21 = v63;
      if (!v46)
      {
LABEL_4:
        a3 = v55 + 1;
        v31 = v54 + v50;
        v32 = v53 - 1;
        v33 = v52 + v50;
        if (v55 + 1 == v51)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v57)
      {
        break;
      }

      v47 = v58;
      outlined init with take of Prompt.TokenGenerationNonStringContent(v33, v58);
      swift_arrayInitWithTakeFrontToBack();
      result = outlined init with take of Prompt.TokenGenerationNonStringContent(v47, v31);
      v31 += v56;
      v33 += v56;
      if (__CFADD__(v34++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(unint64_t *a1, uint64_t a2, unint64_t a3, int64_t a4)
{
  v5 = v4;
  v158 = a1;
  v182 = type metadata accessor for Prompt.Attachment();
  v8 = *(v182 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v182);
  v181 = &v153 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = type metadata accessor for Prompt.Delimiter();
  v11 = *(v180 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v180);
  v179 = &v153 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Prompt.TokenGenerationNonStringContent();
  v167 = *(v14 - 8);
  v15 = *(v167 + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v162 = &v153 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v174 = &v153 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v153 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v153 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23);
  v187 = &v153 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v186 = &v153 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v31 = MEMORY[0x1EEE9AC00](v30);
  v32 = MEMORY[0x1EEE9AC00](v31);
  v173 = &v153 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v171 = &v153 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v156 = &v153 - v37;
  result = MEMORY[0x1EEE9AC00](v36);
  v155 = &v153 - v41;
  v42 = *(a3 + 8);
  v169 = a3;
  if (v42 < 1)
  {
    v45 = MEMORY[0x1E69E7CC0];
LABEL_110:
    v8 = *v158;
    if (!*v158)
    {
      goto LABEL_151;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_112:
      v188 = v45;
      v147 = *(v45 + 16);
      if (v147 >= 2)
      {
        v148 = v167;
        while (*a3)
        {
          v149 = *(v45 + 16 * v147);
          v150 = v45;
          v151 = *(v45 + 16 * (v147 - 1) + 32);
          v45 = *(v45 + 16 * (v147 - 1) + 40);
          specialized _merge<A>(low:mid:high:buffer:by:)(*a3 + *(v148 + 72) * v149, *a3 + *(v148 + 72) * v151, *a3 + *(v148 + 72) * v45, v8);
          if (v5)
          {
          }

          if (v45 < v149)
          {
            goto LABEL_138;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v150 = specialized _ArrayBuffer._consumeAndCreateNew()(v150);
          }

          if (v147 - 2 >= *(v150 + 2))
          {
            goto LABEL_139;
          }

          v152 = &v150[16 * v147];
          *v152 = v149;
          *(v152 + 1) = v45;
          v188 = v150;
          result = specialized Array.remove(at:)(v147 - 1);
          v45 = v188;
          v147 = *(v188 + 16);
          a3 = v169;
          if (v147 <= 1)
          {
          }
        }

        goto LABEL_149;
      }
    }

LABEL_145:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v45);
    v45 = result;
    goto LABEL_112;
  }

  v43 = v42;
  v164 = v40;
  v165 = v39;
  v44 = 0;
  v177 = (v11 + 8);
  v178 = (v11 + 32);
  v175 = (v8 + 8);
  v176 = (v8 + 32);
  v45 = MEMORY[0x1E69E7CC0];
  v157 = a4;
  v184 = v14;
  v185 = v22;
  v183 = v25;
  while (1)
  {
    v160 = v44;
    if (v44 + 1 >= v43)
    {
      v60 = v44 + 1;
    }

    else
    {
      v46 = v44;
      v172 = v43;
      v47 = *a3;
      v159 = v5;
      v48 = *(v167 + 72);
      v49 = v47 + v48 * (v44 + 1);
      v50 = v155;
      outlined init with copy of Prompt.TokenGenerationNonStringContent(v49, v155);
      v170 = v47;
      v51 = v47 + v48 * v46;
      v52 = v156;
      outlined init with copy of Prompt.TokenGenerationNonStringContent(v51, v156);
      v53 = v159;
      LODWORD(v166) = specialized closure #1 in static PromptScrubbing.scrubPrompt<A>(_:scrub:)(v50, v52);
      v159 = v53;
      if (v53)
      {
        outlined destroy of Prompt.TokenGenerationNonStringContent(v52);
        outlined destroy of Prompt.TokenGenerationNonStringContent(v50);
      }

      outlined destroy of Prompt.TokenGenerationNonStringContent(v52);
      result = outlined destroy of Prompt.TokenGenerationNonStringContent(v50);
      v54 = v46 + 2;
      v8 = v170 + v48 * (v46 + 2);
      v55 = v48;
      v168 = v48;
      v5 = v159;
      while (1)
      {
        v60 = v172;
        if (v172 == v54)
        {
          break;
        }

        v61 = v45;
        v62 = v171;
        outlined init with copy of Prompt.TokenGenerationNonStringContent(v8, v171);
        outlined init with copy of Prompt.TokenGenerationNonStringContent(v49, v173);
        v63 = v164;
        outlined init with copy of Prompt.TokenGenerationNonStringContent(v62, v164);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v64 = v181;
          v65 = v63;
          v66 = v182;
          (*v176)(v181, v65, v182);
          v170 = Prompt.Attachment.position.getter();
          v67 = v175;
        }

        else
        {
          v64 = v179;
          v68 = v63;
          v66 = v180;
          (*v178)(v179, v68, v180);
          v170 = Prompt.Delimiter.position.getter();
          v67 = v177;
        }

        (*v67)(v64, v66);
        v69 = v165;
        outlined init with copy of Prompt.TokenGenerationNonStringContent(v173, v165);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v57 = v181;
          v56 = v182;
          (*v176)(v181, v69, v182);
          v58 = Prompt.Attachment.position.getter();
          v59 = v57;
          v22 = v185;
          (*v175)(v59, v56);
        }

        else
        {
          v70 = v179;
          v71 = v180;
          (*v178)(v179, v69, v180);
          v58 = Prompt.Delimiter.position.getter();
          (*v177)(v70, v71);
        }

        outlined destroy of Prompt.TokenGenerationNonStringContent(v173);
        result = outlined destroy of Prompt.TokenGenerationNonStringContent(v171);
        ++v54;
        v55 = v168;
        v8 += v168;
        v49 += v168;
        v45 = v61;
        v25 = v183;
        if (((v166 ^ (v170 >= v58)) & 1) == 0)
        {
          v60 = v54 - 1;
          break;
        }
      }

      a4 = v157;
      a3 = v169;
      if (v166)
      {
        if (v60 < v160)
        {
          goto LABEL_144;
        }

        if (v160 < v60)
        {
          v72 = v45;
          v73 = v60;
          v74 = v55 * (v60 - 1);
          v75 = v60 * v55;
          v172 = v60;
          v76 = v160;
          v77 = v160 * v55;
          do
          {
            if (v76 != --v73)
            {
              v78 = *v169;
              if (!*v169)
              {
                goto LABEL_148;
              }

              v8 = v78 + v77;
              outlined init with take of Prompt.TokenGenerationNonStringContent(v78 + v77, v162);
              if (v77 < v74 || v8 >= v78 + v75)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v77 != v74)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = outlined init with take of Prompt.TokenGenerationNonStringContent(v162, v78 + v74);
              v25 = v183;
              v55 = v168;
            }

            ++v76;
            v74 -= v55;
            v75 -= v55;
            v77 += v55;
          }

          while (v76 < v73);
          v5 = v159;
          a3 = v169;
          a4 = v157;
          v45 = v72;
          v22 = v185;
          v60 = v172;
        }
      }
    }

    v79 = *(a3 + 8);
    if (v60 >= v79)
    {
      goto LABEL_41;
    }

    if (__OFSUB__(v60, v160))
    {
      goto LABEL_141;
    }

    if (v60 - v160 >= a4)
    {
LABEL_41:
      v8 = v60;
      goto LABEL_42;
    }

    v80 = v160 + a4;
    if (__OFADD__(v160, a4))
    {
      goto LABEL_142;
    }

    v81 = v160;
    if (v80 >= v79)
    {
      v8 = *(a3 + 8);
    }

    else
    {
      v8 = v80;
    }

    if (v8 < v160)
    {
LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
      goto LABEL_145;
    }

    if (v60 == v8)
    {
      v8 = v60;
      goto LABEL_43;
    }

    v154 = v45;
    v159 = v5;
    v126 = *a3;
    v127 = *(v167 + 72);
    v128 = *a3 + v127 * (v60 - 1);
    v129 = -v127;
    v130 = v160 - v60;
    v161 = v127;
    a3 = v126 + v60 * v127;
    v163 = v8;
LABEL_96:
    v172 = v60;
    v166 = a3;
    v168 = v130;
    v170 = v128;
    v131 = v128;
LABEL_97:
    v132 = v186;
    outlined init with copy of Prompt.TokenGenerationNonStringContent(a3, v186);
    outlined init with copy of Prompt.TokenGenerationNonStringContent(v131, v187);
    outlined init with copy of Prompt.TokenGenerationNonStringContent(v132, v25);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v133 = v181;
      v134 = v182;
      (*v176)(v181, v25, v182);
      v135 = Prompt.Attachment.position.getter();
      v136 = v134;
      v22 = v185;
      (*v175)(v133, v136);
    }

    else
    {
      v137 = v179;
      v138 = v180;
      (*v178)(v179, v25, v180);
      v135 = Prompt.Delimiter.position.getter();
      (*v177)(v137, v138);
    }

    outlined init with copy of Prompt.TokenGenerationNonStringContent(v187, v22);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v139 = v181;
      v140 = v22;
      v141 = v182;
      (*v176)(v181, v140, v182);
      v142 = Prompt.Attachment.position.getter();
      v143 = v175;
    }

    else
    {
      v139 = v179;
      v144 = v22;
      v141 = v180;
      (*v178)(v179, v144, v180);
      v142 = Prompt.Delimiter.position.getter();
      v143 = v177;
    }

    (*v143)(v139, v141);
    outlined destroy of Prompt.TokenGenerationNonStringContent(v187);
    result = outlined destroy of Prompt.TokenGenerationNonStringContent(v186);
    if (v135 < v142)
    {
      break;
    }

    v22 = v185;
    v25 = v183;
LABEL_95:
    v60 = v172 + 1;
    v128 = v170 + v161;
    v130 = v168 - 1;
    a3 = v166 + v161;
    v8 = v163;
    if (v172 + 1 != v163)
    {
      goto LABEL_96;
    }

    v5 = v159;
    v45 = v154;
LABEL_42:
    v81 = v160;
LABEL_43:
    if (v8 < v81)
    {
      goto LABEL_140;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v163 = v8;
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v45 + 16) + 1, 1, v45);
      v45 = result;
    }

    v8 = *(v45 + 16);
    v82 = *(v45 + 24);
    v83 = v8 + 1;
    if (v8 >= v82 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v82 > 1), v8 + 1, 1, v45);
      v45 = result;
    }

    *(v45 + 16) = v83;
    v84 = v45 + 16 * v8;
    v85 = v163;
    *(v84 + 32) = v81;
    *(v84 + 40) = v85;
    v172 = *v158;
    if (!v172)
    {
      goto LABEL_150;
    }

    if (v8)
    {
      while (2)
      {
        a3 = v83 - 1;
        if (v83 >= 4)
        {
          v90 = v45 + 32 + 16 * v83;
          v91 = *(v90 - 64);
          v92 = *(v90 - 56);
          v96 = __OFSUB__(v92, v91);
          v93 = v92 - v91;
          if (v96)
          {
            goto LABEL_127;
          }

          v95 = *(v90 - 48);
          v94 = *(v90 - 40);
          v96 = __OFSUB__(v94, v95);
          v88 = v94 - v95;
          v89 = v96;
          if (v96)
          {
            goto LABEL_128;
          }

          v97 = (v45 + 16 * v83);
          v99 = *v97;
          v98 = v97[1];
          v96 = __OFSUB__(v98, v99);
          v100 = v98 - v99;
          if (v96)
          {
            goto LABEL_130;
          }

          v96 = __OFADD__(v88, v100);
          v101 = v88 + v100;
          if (v96)
          {
            goto LABEL_133;
          }

          if (v101 >= v93)
          {
            v119 = (v45 + 32 + 16 * a3);
            v121 = *v119;
            v120 = v119[1];
            v96 = __OFSUB__(v120, v121);
            v122 = v120 - v121;
            if (v96)
            {
              goto LABEL_137;
            }

            if (v88 < v122)
            {
              a3 = v83 - 2;
            }
          }

          else
          {
LABEL_63:
            if (v89)
            {
              goto LABEL_129;
            }

            v102 = (v45 + 16 * v83);
            v104 = *v102;
            v103 = v102[1];
            v105 = __OFSUB__(v103, v104);
            v106 = v103 - v104;
            v107 = v105;
            if (v105)
            {
              goto LABEL_132;
            }

            v108 = (v45 + 32 + 16 * a3);
            v110 = *v108;
            v109 = v108[1];
            v96 = __OFSUB__(v109, v110);
            v111 = v109 - v110;
            if (v96)
            {
              goto LABEL_135;
            }

            if (__OFADD__(v106, v111))
            {
              goto LABEL_136;
            }

            if (v106 + v111 < v88)
            {
              goto LABEL_77;
            }

            if (v88 < v111)
            {
              a3 = v83 - 2;
            }
          }
        }

        else
        {
          if (v83 == 3)
          {
            v86 = *(v45 + 32);
            v87 = *(v45 + 40);
            v96 = __OFSUB__(v87, v86);
            v88 = v87 - v86;
            v89 = v96;
            goto LABEL_63;
          }

          v112 = (v45 + 16 * v83);
          v114 = *v112;
          v113 = v112[1];
          v96 = __OFSUB__(v113, v114);
          v106 = v113 - v114;
          v107 = v96;
LABEL_77:
          if (v107)
          {
            goto LABEL_131;
          }

          v115 = v45 + 16 * a3;
          v117 = *(v115 + 32);
          v116 = *(v115 + 40);
          v96 = __OFSUB__(v116, v117);
          v118 = v116 - v117;
          if (v96)
          {
            goto LABEL_134;
          }

          if (v118 < v106)
          {
            break;
          }
        }

        v8 = a3 - 1;
        if (a3 - 1 >= v83)
        {
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
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
          goto LABEL_143;
        }

        if (!*v169)
        {
          goto LABEL_147;
        }

        v123 = *(v45 + 32 + 16 * v8);
        v124 = *(v45 + 32 + 16 * a3 + 8);
        specialized _merge<A>(low:mid:high:buffer:by:)(*v169 + *(v167 + 72) * v123, *v169 + *(v167 + 72) * *(v45 + 32 + 16 * a3), *v169 + *(v167 + 72) * v124, v172);
        if (v5)
        {
        }

        if (v124 < v123)
        {
          goto LABEL_125;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v45 = specialized _ArrayBuffer._consumeAndCreateNew()(v45);
        }

        if (v8 >= *(v45 + 16))
        {
          goto LABEL_126;
        }

        v125 = v45 + 16 * v8;
        *(v125 + 32) = v123;
        *(v125 + 40) = v124;
        v188 = v45;
        result = specialized Array.remove(at:)(a3);
        v45 = v188;
        v83 = *(v188 + 16);
        if (v83 <= 1)
        {
          break;
        }

        continue;
      }
    }

    a3 = v169;
    v43 = v169[1];
    v44 = v163;
    a4 = v157;
    if (v163 >= v43)
    {
      goto LABEL_110;
    }
  }

  v22 = v185;
  v25 = v183;
  if (v126)
  {
    v145 = v174;
    outlined init with take of Prompt.TokenGenerationNonStringContent(a3, v174);
    swift_arrayInitWithTakeFrontToBack();
    outlined init with take of Prompt.TokenGenerationNonStringContent(v145, v131);
    v131 += v129;
    a3 += v129;
    if (__CFADD__(v130++, 1))
    {
      goto LABEL_95;
    }

    goto LABEL_97;
  }

  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v82 = a4;
  v94 = type metadata accessor for Prompt.Attachment();
  v80 = *(v94 - 8);
  v7 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v94);
  v93 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for Prompt.Delimiter();
  v9 = *(v92 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v92);
  v91 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for Prompt.TokenGenerationNonStringContent();
  v12 = *(*(v97 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v97);
  v86 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v79 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v95 = &v79 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v90 = &v79 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v88 = &v79 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v79 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24);
  v96 = &v79 - v28;
  result = MEMORY[0x1EEE9AC00](v27);
  v31 = &v79 - v30;
  v33 = *(v32 + 72);
  if (!v33)
  {
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v33 == -1)
  {
    goto LABEL_72;
  }

  v34 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v33 == -1)
  {
    goto LABEL_73;
  }

  v89 = a3;
  v87 = a2;
  v35 = (a2 - a1) / v33;
  v100 = a1;
  v36 = v82;
  v99 = v82;
  if (v35 >= v34 / v33)
  {
    v40 = v34 / v33 * v33;
    if (v82 < v87 || v87 + v40 <= v82)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v82 != v87)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v60 = v36 + v40;
    if (v40 >= 1)
    {
      v61 = -v33;
      v83 = (v9 + 8);
      v84 = (v9 + 32);
      v62 = v80;
      v80 += 8;
      v81 = (v62 + 32);
      v63 = v60;
      v64 = v89;
      v88 = v17;
      v85 = -v33;
      do
      {
        v89 = v60;
        v65 = v87;
        v87 += v61;
        v96 = v65;
        while (1)
        {
          if (v65 <= a1)
          {
            v100 = v65;
            v98 = v89;
            goto LABEL_70;
          }

          v66 = v64;
          v67 = v63 + v61;
          v68 = v90;
          outlined init with copy of Prompt.TokenGenerationNonStringContent(v63 + v61, v90);
          outlined init with copy of Prompt.TokenGenerationNonStringContent(v87, v95);
          outlined init with copy of Prompt.TokenGenerationNonStringContent(v68, v17);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v69 = v93;
            v70 = v94;
            (*v81)(v93, v17, v94);
            v71 = Prompt.Attachment.position.getter();
            (*v80)(v69, v70);
          }

          else
          {
            v72 = v91;
            v73 = v92;
            (*v84)(v91, v17, v92);
            v71 = Prompt.Delimiter.position.getter();
            (*v83)(v72, v73);
          }

          v74 = v86;
          outlined init with copy of Prompt.TokenGenerationNonStringContent(v95, v86);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v75 = v93;
            v76 = v94;
            (*v81)(v93, v74, v94);
            v77 = Prompt.Attachment.position.getter();
            v78 = v80;
          }

          else
          {
            v75 = v91;
            v76 = v92;
            (*v84)(v91, v74, v92);
            v77 = Prompt.Delimiter.position.getter();
            v78 = v83;
          }

          (*v78)(v75, v76);
          v61 = v85;
          v64 = v66 + v85;
          outlined destroy of Prompt.TokenGenerationNonStringContent(v95);
          outlined destroy of Prompt.TokenGenerationNonStringContent(v90);
          if (v71 < v77)
          {
            break;
          }

          v60 = v67;
          v17 = v88;
          if (v66 < v63 || v64 >= v63)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v66 != v63)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v63 = v67;
          v65 = v96;
          if (v67 <= v82)
          {
            v87 = v96;
            goto LABEL_69;
          }
        }

        v17 = v88;
        if (v66 < v96 || v64 >= v96)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v66 != v96)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      while (v63 > v82);
    }

LABEL_69:
    v100 = v87;
    v98 = v60;
  }

  else
  {
    v37 = v35 * v33;
    v38 = v82;
    if (v82 < a1 || a1 + v37 <= v82)
    {
      swift_arrayInitWithTakeFrontToBack();
      v39 = v89;
    }

    else
    {
      v39 = v89;
      if (v82 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v95 = v38 + v37;
    v98 = v38 + v37;
    v41 = v37 < 1;
    v42 = v87;
    if (!v41 && v87 < v39)
    {
      v85 = v9 + 8;
      v86 = (v9 + 32);
      v83 = (v80 + 8);
      v84 = (v80 + 32);
      v90 = v26;
      do
      {
        v44 = v42;
        outlined init with copy of Prompt.TokenGenerationNonStringContent(v42, v31);
        outlined init with copy of Prompt.TokenGenerationNonStringContent(v38, v96);
        outlined init with copy of Prompt.TokenGenerationNonStringContent(v31, v26);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v45 = v93;
          v46 = v94;
          (*v84)(v93, v26, v94);
          v47 = Prompt.Attachment.position.getter();
          v48 = v83;
        }

        else
        {
          v45 = v91;
          v46 = v92;
          (*v86)(v91, v26, v92);
          v47 = Prompt.Delimiter.position.getter();
          v48 = v85;
        }

        (*v48)(v45, v46);
        v49 = v33;
        v50 = v88;
        outlined init with copy of Prompt.TokenGenerationNonStringContent(v96, v88);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v51 = v93;
          v52 = v50;
          v53 = v94;
          (*v84)(v93, v52, v94);
          v54 = Prompt.Attachment.position.getter();
          v55 = v83;
        }

        else
        {
          v51 = v91;
          v56 = v50;
          v53 = v92;
          (*v86)(v91, v56, v92);
          v54 = Prompt.Delimiter.position.getter();
          v55 = v85;
        }

        (*v55)(v51, v53);
        outlined destroy of Prompt.TokenGenerationNonStringContent(v96);
        outlined destroy of Prompt.TokenGenerationNonStringContent(v31);
        if (v47 >= v54)
        {
          v33 = v49;
          v59 = v38 + v49;
          v42 = v44;
          if (a1 < v38 || a1 >= v59)
          {
            swift_arrayInitWithTakeFrontToBack();
            v58 = v89;
            v26 = v90;
          }

          else
          {
            v58 = v89;
            v26 = v90;
            if (a1 != v38)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v99 = v59;
          v38 = v59;
        }

        else
        {
          v57 = v44;
          v33 = v49;
          v42 = v44 + v49;
          if (a1 < v44 || a1 >= v42)
          {
            swift_arrayInitWithTakeFrontToBack();
            v58 = v89;
            v26 = v90;
          }

          else
          {
            v58 = v89;
            v26 = v90;
            if (a1 != v57)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }
        }

        a1 += v33;
        v100 = a1;
      }

      while (v38 < v95 && v42 < v58);
    }
  }

LABEL_70:
  specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v100, &v99, &v98);
  return 1;
}

uint64_t specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for Prompt.TokenGenerationNonStringContent();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t specialized static Prompt.TokenGenerationNonStringContent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v31 = a1;
  v32 = a2;
  v30 = type metadata accessor for Prompt.Attachment();
  v2 = *(v30 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Prompt.Delimiter();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Prompt.TokenGenerationNonStringContent();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v29 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV0aB16NonStringContentO_AEtMd, &_s15TokenGeneration6PromptV0aB16NonStringContentO_AEtMR);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v22 = &v29 - v21;
  v23 = *(v20 + 56);
  outlined init with copy of Prompt.TokenGenerationNonStringContent(v31, &v29 - v21);
  outlined init with copy of Prompt.TokenGenerationNonStringContent(v32, &v22[v23]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with copy of Prompt.TokenGenerationNonStringContent(v22, v15);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v24 = v30;
      (*(v2 + 32))(v5, &v22[v23], v30);
      v25 = static Prompt.Attachment.== infix(_:_:)();
      v26 = *(v2 + 8);
      v26(v5, v24);
      v26(v15, v24);
LABEL_9:
      outlined destroy of Prompt.TokenGenerationNonStringContent(v22);
      return v25 & 1;
    }

    (*(v2 + 8))(v15, v30);
  }

  else
  {
    outlined init with copy of Prompt.TokenGenerationNonStringContent(v22, v17);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v7 + 32))(v10, &v22[v23], v6);
      v25 = static Prompt.Delimiter.== infix(_:_:)();
      v27 = *(v7 + 8);
      v27(v10, v6);
      v27(v17, v6);
      goto LABEL_9;
    }

    (*(v7 + 8))(v17, v6);
  }

  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v22, &_s15TokenGeneration6PromptV0aB16NonStringContentO_AEtMd, &_s15TokenGeneration6PromptV0aB16NonStringContentO_AEtMR);
  v25 = 0;
  return v25 & 1;
}

uint64_t outlined init with copy of Prompt.TokenGenerationNonStringContent(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Prompt.TokenGenerationNonStringContent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Prompt.TokenGenerationNonStringContent(uint64_t a1)
{
  v2 = type metadata accessor for Prompt.TokenGenerationNonStringContent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t lazy protocol witness table accessor for type Prompt and conformance Prompt(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined init with take of Prompt.TokenGenerationNonStringContent(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Prompt.TokenGenerationNonStringContent();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of PromptScrubbing.IntermediatePromptState<Prompt.TokenGenerationNonStringContent>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration15PromptScrubbingO012IntermediateC5State33_102AEF12823D01DEBBEF7FCA4216300ALLVy_AA0C0V0aB16NonStringContentOGMd, &_s15TokenGeneration15PromptScrubbingO012IntermediateC5State33_102AEF12823D01DEBBEF7FCA4216300ALLVy_AA0C0V0aB16NonStringContentOGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of PromptScrubbing.IntermediatePromptState<Prompt.TokenGenerationNonStringContent>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration15PromptScrubbingO012IntermediateC5State33_102AEF12823D01DEBBEF7FCA4216300ALLVy_AA0C0V0aB16NonStringContentOGMd, &_s15TokenGeneration15PromptScrubbingO012IntermediateC5State33_102AEF12823D01DEBBEF7FCA4216300ALLVy_AA0C0V0aB16NonStringContentOGMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t type metadata completion function for PromptScrubbing.IntermediatePromptState(uint64_t a1)
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

uint64_t getEnumTagSinglePayload for PromptScrubbing.IntermediatePromptState(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_25;
  }

  v9 = v6 + 2;
  v10 = 8 * (v6 + 2);
  if ((v6 + 2) > 3)
  {
    goto LABEL_7;
  }

  v12 = ((v8 + ~(-1 << v10)) >> v10) + 1;
  if (HIWORD(v12))
  {
    v11 = *(a1 + v9);
    if (v11)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v12 <= 0xFF)
    {
      if (v12 < 2)
      {
        goto LABEL_25;
      }

LABEL_7:
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_25;
      }

LABEL_14:
      v13 = (v11 - 1) << v10;
      if (v9 > 3)
      {
        v13 = 0;
      }

      if (v9)
      {
        if (v9 > 3)
        {
          LODWORD(v9) = 4;
        }

        if (v9 > 2)
        {
          if (v9 == 3)
          {
            LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            LODWORD(v9) = *a1;
          }
        }

        else if (v9 == 1)
        {
          LODWORD(v9) = *a1;
        }

        else
        {
          LODWORD(v9) = *a1;
        }
      }

      return v7 + (v9 | v13) + 1;
    }

    v11 = *(a1 + v9);
    if (*(a1 + v9))
    {
      goto LABEL_14;
    }
  }

LABEL_25:
  if (v5 >= 0xFE)
  {
    return (*(v4 + 48))();
  }

  v15 = *(a1 + v6);
  if (v15 < 2)
  {
    return 0;
  }

  return ((v15 + 2147483646) & 0x7FFFFFFF) + 1;
}

unsigned int *storeEnumTagSinglePayload for PromptScrubbing.IntermediatePromptState(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = v8 + 2;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    v12 = 1;
    if (v9 <= 3)
    {
      v13 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      v14 = HIWORD(v13);
      if (v13 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v13 >= 2)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      if (v14)
      {
        v12 = 4;
      }

      else
      {
        v12 = v16;
      }
    }

    if (v7 >= a2)
    {
LABEL_21:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v12)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0xFE)
      {
        *(result + v8) = a2 + 1;
      }

      else
      {
        v22 = *(v5 + 56);

        return v22();
      }

      return result;
    }
  }

  else
  {
    v12 = 0;
    if (v7 >= a2)
    {
      goto LABEL_21;
    }
  }

  v17 = ~v7 + a2;
  if (v9 >= 4)
  {
    v18 = result;
    bzero(result, v8 + 2);
    result = v18;
    *v18 = v17;
    v19 = 1;
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v19 = (v17 >> (8 * v9)) + 1;
  if (v8 == -2)
  {
LABEL_41:
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v20 = v17 & ~(-1 << (8 * v9));
  v21 = result;
  bzero(result, v9);
  result = v21;
  if (v9 == 3)
  {
    *v21 = v20;
    *(v21 + 2) = BYTE2(v20);
    goto LABEL_41;
  }

  if (v9 == 2)
  {
    *v21 = v20;
    if (v12 > 1)
    {
LABEL_45:
      if (v12 == 2)
      {
        *(result + v9) = v19;
      }

      else
      {
        *(result + v9) = v19;
      }

      return result;
    }
  }

  else
  {
    *v21 = v17;
    if (v12 > 1)
    {
      goto LABEL_45;
    }
  }

LABEL_42:
  if (v12)
  {
    *(result + v9) = v19;
  }

  return result;
}

uint64_t type metadata completion function for ScrubbedRenderedPrompt(uint64_t a1)
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

uint64_t getEnumTagSinglePayload for ScrubbedRenderedPrompt(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_25;
  }

  v9 = v6 + 1;
  v10 = 8 * (v6 + 1);
  if ((v6 + 1) > 3)
  {
    goto LABEL_7;
  }

  v12 = ((v8 + ~(-1 << v10)) >> v10) + 1;
  if (HIWORD(v12))
  {
    v11 = *(a1 + v9);
    if (v11)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v12 <= 0xFF)
    {
      if (v12 < 2)
      {
        goto LABEL_25;
      }

LABEL_7:
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_25;
      }

LABEL_14:
      v13 = (v11 - 1) << v10;
      if (v9 > 3)
      {
        v13 = 0;
      }

      if (v9)
      {
        if (v9 > 3)
        {
          LODWORD(v9) = 4;
        }

        if (v9 > 2)
        {
          if (v9 == 3)
          {
            LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            LODWORD(v9) = *a1;
          }
        }

        else if (v9 == 1)
        {
          LODWORD(v9) = *a1;
        }

        else
        {
          LODWORD(v9) = *a1;
        }
      }

      return v7 + (v9 | v13) + 1;
    }

    v11 = *(a1 + v9);
    if (*(a1 + v9))
    {
      goto LABEL_14;
    }
  }

LABEL_25:
  if (v5 >= 0xFE)
  {
    return (*(v4 + 48))();
  }

  v15 = *(a1 + v6);
  if (v15 < 2)
  {
    return 0;
  }

  return ((v15 + 2147483646) & 0x7FFFFFFF) + 1;
}

unsigned int *storeEnumTagSinglePayload for ScrubbedRenderedPrompt(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = v8 + 1;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    v12 = 1;
    if (v9 <= 3)
    {
      v13 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      v14 = HIWORD(v13);
      if (v13 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v13 >= 2)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      if (v14)
      {
        v12 = 4;
      }

      else
      {
        v12 = v16;
      }
    }

    if (v7 >= a2)
    {
LABEL_21:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v12)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0xFE)
      {
        *(result + v8) = a2 + 1;
      }

      else
      {
        v22 = *(v5 + 56);

        return v22();
      }

      return result;
    }
  }

  else
  {
    v12 = 0;
    if (v7 >= a2)
    {
      goto LABEL_21;
    }
  }

  v17 = ~v7 + a2;
  if (v9 >= 4)
  {
    v18 = result;
    bzero(result, v8 + 1);
    result = v18;
    *v18 = v17;
    v19 = 1;
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v19 = (v17 >> (8 * v9)) + 1;
  if (v8 == -1)
  {
LABEL_41:
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v20 = v17 & ~(-1 << (8 * v9));
  v21 = result;
  bzero(result, v9);
  result = v21;
  if (v9 == 3)
  {
    *v21 = v20;
    *(v21 + 2) = BYTE2(v20);
    goto LABEL_41;
  }

  if (v9 == 2)
  {
    *v21 = v20;
    if (v12 > 1)
    {
LABEL_45:
      if (v12 == 2)
      {
        *(result + v9) = v19;
      }

      else
      {
        *(result + v9) = v19;
      }

      return result;
    }
  }

  else
  {
    *v21 = v17;
    if (v12 > 1)
    {
      goto LABEL_45;
    }
  }

LABEL_42:
  if (v12)
  {
    *(result + v9) = v19;
  }

  return result;
}

uint64_t static _OverrideConfigurationHelper.samplingParameters(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 176);
  v3 = *(a1 + 144);
  v30 = *(a1 + 160);
  v31 = v2;
  v4 = *(a1 + 176);
  v32 = *(a1 + 192);
  v5 = *(a1 + 112);
  v7 = *(a1 + 80);
  v26 = *(a1 + 96);
  v6 = v26;
  v27 = v5;
  v8 = *(a1 + 112);
  v9 = *(a1 + 144);
  v28 = *(a1 + 128);
  v10 = v28;
  v29 = v9;
  v11 = *(a1 + 48);
  v13 = *(a1 + 16);
  v22 = *(a1 + 32);
  v12 = v22;
  v23 = v11;
  v14 = *(a1 + 48);
  v15 = *(a1 + 80);
  v24 = *(a1 + 64);
  v16 = v24;
  v25 = v15;
  v17 = *(a1 + 16);
  v21[0] = *a1;
  v18 = v21[0];
  v21[1] = v17;
  *(a2 + 160) = v30;
  *(a2 + 176) = v4;
  *(a2 + 192) = *(a1 + 192);
  *(a2 + 96) = v6;
  *(a2 + 112) = v8;
  *(a2 + 128) = v10;
  *(a2 + 144) = v3;
  *(a2 + 32) = v12;
  *(a2 + 48) = v14;
  *(a2 + 64) = v16;
  *(a2 + 80) = v7;
  v33 = *(a1 + 208);
  *(a2 + 208) = *(a1 + 208);
  *a2 = v18;
  *(a2 + 16) = v13;
  return outlined init with copy of SamplingParameters(v21, v20);
}

uint64_t static _OverrideConfigurationHelper.draftCache(_:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels12OverrideHintOySaySSGGMd, &_s16GenerativeModels12OverrideHintOySaySSGGMR);
  OverrideHint.value.getter();
  return v1;
}

uint64_t static _OverrideConfigurationHelper.grammar(_:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels12OverrideHintOySSGMd, &_s16GenerativeModels12OverrideHintOySSGMR);
  OverrideHint.value.getter();
  return v1;
}

uint64_t register<A>(documents:registrationCallback:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for URL();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  v9 = type metadata accessor for DocumentResource();
  v5[11] = v9;
  v10 = *(v9 - 8);
  v5[12] = v10;
  v11 = *(v10 + 64) + 15;
  v5[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](register<A>(documents:registrationCallback:), 0, 0);
}

uint64_t register<A>(documents:registrationCallback:)()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCySay26GenerativeModelsFoundation26DocumentResourceIdentifierVGSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCySay26GenerativeModelsFoundation26DocumentResourceIdentifierVGSo16os_unfair_lock_sVGMR);
  v2 = swift_allocObject();
  *(v0 + 112) = v2;
  *(v2 + 24) = 0;
  v3 = (v2 + 24);
  v4 = MEMORY[0x1E69E7CC0];
  *(v2 + 16) = MEMORY[0x1E69E7CC0];
  v5 = *(v1 + 16);
  if (v5)
  {
    v34 = v2;
    v6 = *(v0 + 96);
    v7 = *(v0 + 64);
    v40 = v4;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
    v8 = v1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v35 = (v7 + 8);
    v36 = *(v7 + 72);
    v37 = v6;
    v9 = *(v7 + 16);
    do
    {
      v10 = *(v0 + 104);
      v12 = *(v0 + 72);
      v11 = *(v0 + 80);
      v13 = *(v0 + 56);
      v9(v11, v8, v13);
      v9(v12, v11, v13);
      DocumentResource.init(url:)();
      (*v35)(v11, v13);
      v15 = *(v40 + 16);
      v14 = *(v40 + 24);
      if (v15 >= v14 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v14 > 1, v15 + 1, 1);
      }

      v16 = *(v0 + 104);
      v17 = *(v0 + 88);
      *(v40 + 16) = v15 + 1;
      (*(v37 + 32))(v40 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v15, v16, v17);
      v8 += v36;
      --v5;
    }

    while (v5);
    v18 = *(v0 + 32);
    v19 = *(v0 + 16);
    v38 = *(v0 + 40);
    v20 = (*(v0 + 24))(v40);
    *(v0 + 120) = v20;

    v21 = swift_task_alloc();
    *(v0 + 128) = v21;
    *(v21 + 16) = v38;
    *(v21 + 32) = v20;
    *(v21 + 40) = v19;
    *(v21 + 48) = v34;
    v22 = *(MEMORY[0x1E69E88A0] + 4);
    v23 = swift_task_alloc();
    *(v0 + 136) = v23;
    *v23 = v0;
    v23[1] = register<A>(documents:registrationCallback:);
    v24 = MEMORY[0x1E69E7CA8] + 8;
    v25 = MEMORY[0x1E69E7CA8] + 8;
    v26 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DD58](v23, v24, v25, 0, 0, &async function pointer to partial apply for closure #2 in register<A>(documents:registrationCallback:), v21, v26);
  }

  else
  {
    v27 = *(v0 + 104);
    v29 = *(v0 + 72);
    v28 = *(v0 + 80);
    v30 = v2;
    os_unfair_lock_lock((v2 + 24));
    v31 = *(v30 + 16);

    os_unfair_lock_unlock(v3);

    v32 = *(v0 + 8);

    return v32(v31);
  }
}

{
  v1 = v0[13];
  v2 = v0[14];
  v4 = v0[9];
  v3 = v0[10];
  os_unfair_lock_lock((v2 + 24));
  v5 = *(v2 + 16);

  os_unfair_lock_unlock((v2 + 24));

  v6 = v0[1];

  return v6(v5);
}

void register<A>(documents:registrationCallback:)()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = *(v2 + 120);
    v6 = *(v2 + 128);

    MEMORY[0x1EEE6DFA0](register<A>(documents:registrationCallback:), 0, 0);
  }
}

uint64_t closure #2 in register<A>(documents:registrationCallback:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[19] = a6;
  v7[20] = a7;
  v7[17] = a4;
  v7[18] = a5;
  v7[15] = a2;
  v7[16] = a3;
  v8 = *(a6 - 8);
  v7[21] = v8;
  v7[22] = *(v8 + 64);
  v7[23] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v7[24] = swift_task_alloc();
  v7[25] = swift_task_alloc();
  v7[26] = swift_getTupleTypeMetadata2();
  v10 = type metadata accessor for Optional();
  v7[27] = v10;
  v11 = *(v10 - 8);
  v7[28] = v11;
  v12 = *(v11 + 64) + 15;
  v7[29] = swift_task_alloc();
  v7[30] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #2 in register<A>(documents:registrationCallback:), 0, 0);
}

uint64_t closure #2 in register<A>(documents:registrationCallback:)()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 208);
  v4 = *(v0 + 168);
  v3 = *(v0 + 176);
  v5 = *(v0 + 152);
  *(v0 + 104) = *(v0 + 128);
  v6 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1AC5A5C70](v6, WitnessTable);
  *(v0 + 112) = *(v0 + 96);
  type metadata accessor for EnumeratedSequence();
  EnumeratedSequence.makeIterator()();
  v41 = v4;
  v42 = v2;
  v43 = v2 - 8;
  v44 = (v1 + 32);
  v40 = v3 + 7;
  type metadata accessor for EnumeratedSequence.Iterator();
  while (1)
  {
    v11 = *(v0 + 232);
    v10 = *(v0 + 240);
    v13 = *(v0 + 208);
    v12 = *(v0 + 216);
    EnumeratedSequence.Iterator.next()();
    (*v44)(v10, v11, v12);
    v14 = (*(*v43 + 48))(v10, 1, v13);
    v15 = *(v0 + 240);
    if (v14 == 1)
    {
      break;
    }

    v16 = *(v0 + 200);
    v47 = v16;
    v51 = *(v0 + 192);
    v17 = *(v0 + 184);
    v45 = v17;
    v48 = *(v0 + 136);
    v49 = *v15;
    v50 = *(v0 + 144);
    v18 = *(v42 + 48);
    v19 = type metadata accessor for TaskPriority();
    v46 = *(v19 - 8);
    v53 = *(v0 + 152);
    (*(v46 + 56))(v16, 1, 1, v19);
    v20 = *(v41 + 32);
    v20(v17, &v15[v18], v53);
    v21 = (*(v41 + 80) + 48) & ~*(v41 + 80);
    v22 = (v40 + v21) & 0xFFFFFFFFFFFFFFF8;
    v23 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
    v24 = swift_allocObject();
    *(v24 + 16) = 0;
    v52 = (v24 + 16);
    *(v24 + 24) = 0;
    *(v24 + 32) = v53;
    v20((v24 + v21), v45, v53);
    *(v24 + v22) = v48;
    *(v24 + v23) = v49;
    *(v24 + ((v23 + 15) & 0xFFFFFFFFFFFFFFF8)) = v50;
    outlined init with copy of TaskPriority?(v47, v51);
    v25 = (*(v46 + 48))(v51, 1, v19);

    v26 = *(v0 + 192);
    if (v25 == 1)
    {
      outlined destroy of TaskPriority?(*(v0 + 192));
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v46 + 8))(v26, v19);
    }

    if (*v52)
    {
      v27 = *(v24 + 24);
      v28 = *v52;
      swift_getObjectType();
      swift_unknownObjectRetain();
      v29 = dispatch thunk of Actor.unownedExecutor.getter();
      v31 = v30;
      swift_unknownObjectRelease();
    }

    else
    {
      v29 = 0;
      v31 = 0;
    }

    v32 = **(v0 + 120);

    if (v31 | v29)
    {
      v8 = v0 + 16;
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = v29;
      *(v0 + 40) = v31;
    }

    else
    {
      v8 = 0;
    }

    v9 = *(v0 + 200);
    *(v0 + 72) = 1;
    *(v0 + 80) = v8;
    *(v0 + 88) = v32;
    swift_task_create();

    outlined destroy of TaskPriority?(v9);
  }

  v33 = *(v0 + 232);
  v35 = *(v0 + 192);
  v34 = *(v0 + 200);
  v36 = *(v0 + 184);
  v37 = *(v0 + 48);

  v38 = *(v0 + 8);

  return v38();
}

uint64_t closure #1 in closure #2 in register<A>(documents:registrationCallback:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = a8;
  v8[16] = v30;
  v8[13] = a6;
  v8[14] = a7;
  v8[11] = a4;
  v8[12] = a5;
  v10 = type metadata accessor for DocumentResourceIdentifier();
  v8[17] = v10;
  v11 = *(v10 - 8);
  v8[18] = v11;
  v12 = *(v11 + 64) + 15;
  v8[19] = swift_task_alloc();
  v13 = type metadata accessor for DocumentRegistration.Progress();
  v8[20] = v13;
  v14 = *(v13 - 8);
  v8[21] = v14;
  v15 = *(v14 + 64) + 15;
  v8[22] = swift_task_alloc();
  v16 = type metadata accessor for DocumentRegistration.Status();
  v8[23] = v16;
  v17 = *(v16 - 8);
  v8[24] = v17;
  v18 = *(v17 + 64) + 15;
  v8[25] = swift_task_alloc();
  v19 = type metadata accessor for DocumentRegistration();
  v8[26] = v19;
  v20 = *(v19 - 8);
  v8[27] = v20;
  v21 = *(v20 + 64) + 15;
  v8[28] = swift_task_alloc();
  v22 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeModelsFoundation20DocumentRegistrationVSgMd, &_s26GenerativeModelsFoundation20DocumentRegistrationVSgMR) - 8) + 64) + 15;
  v8[29] = swift_task_alloc();
  v23 = *(a8 - 8);
  v8[30] = v23;
  v24 = *(v23 + 64) + 15;
  v8[31] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[32] = AssociatedTypeWitness;
  v26 = *(AssociatedTypeWitness - 8);
  v8[33] = v26;
  v27 = *(v26 + 64) + 15;
  v8[34] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #2 in register<A>(documents:registrationCallback:), 0, 0);
}

uint64_t closure #1 in closure #2 in register<A>(documents:registrationCallback:)()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 128);
  (*(*(v0 + 240) + 16))(*(v0 + 248), *(v0 + 88), *(v0 + 120));
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  v3 = MEMORY[0x1E69A1528];
  *(v0 + 296) = *MEMORY[0x1E69A1520];
  *(v0 + 300) = *v3;
  v4 = *(v0 + 256);
  v6 = *(v0 + 120);
  v5 = *(v0 + 128);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = *(MEMORY[0x1E69E85B0] + 4);
  v9 = swift_task_alloc();
  *(v0 + 280) = v9;
  *v9 = v0;
  v9[1] = closure #1 in closure #2 in register<A>(documents:registrationCallback:);
  v10 = *(v0 + 272);
  v11 = *(v0 + 256);
  v12 = *(v0 + 232);

  return MEMORY[0x1EEE6D8D0](v12, 0, 0, v0 + 80, v11, AssociatedConformanceWitness);
}

{
  v2 = *(*v1 + 280);
  v5 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v3 = closure #1 in closure #2 in register<A>(documents:registrationCallback:);
  }

  else
  {
    v3 = closure #1 in closure #2 in register<A>(documents:registrationCallback:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = v0[31];
  v3 = v0[28];
  v2 = v0[29];
  v4 = v0[25];
  v5 = v0[22];
  v6 = v0[19];
  (*(v0[33] + 8))(v0[34], v0[32]);
  v7 = v0[10];

  v8 = v0[1];

  return v8();
}

void closure #1 in closure #2 in register<A>(documents:registrationCallback:)()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 208);
  v3 = *(v0 + 216);
  if ((*(v3 + 48))(v1, 1, v2) != 1)
  {
    v10 = *(v0 + 296);
    v12 = *(v0 + 192);
    v11 = *(v0 + 200);
    v13 = *(v0 + 184);
    (*(v3 + 32))(*(v0 + 224), v1, v2);
    DocumentRegistration.status.getter();
    v14 = (*(v12 + 88))(v11, v13);
    if (v14 == v10)
    {
      v15 = *(v0 + 200);
      v16 = *(v0 + 176);
      v17 = *(v0 + 160);
      v18 = *(v0 + 168);
      v19 = *(v0 + 104);
      (*(*(v0 + 192) + 96))(v15, *(v0 + 184));
      (*(v18 + 32))(v16, v15, v17);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1ABA1D930;
      *(v0 + 64) = 0;
      *(v0 + 72) = 0xE000000000000000;
      _StringGuts.grow(_:)(32);
      v21 = *(v0 + 72);
      *(v0 + 48) = *(v0 + 64);
      *(v0 + 56) = v21;
      v22 = MEMORY[0x1AC5A5BC0](0x746E656D75636F44, 0xEE00203A4C525520);
      if (v19 < 0)
      {
        __break(1u);
      }

      else
      {
        v29 = *(v0 + 96);
        v28 = *(v0 + 104);
        if (*(v29 + 16) > v28)
        {
          v30 = *(v0 + 216);
          v67 = *(v0 + 224);
          v31 = *(v0 + 208);
          v33 = *(v0 + 168);
          v32 = *(v0 + 176);
          v34 = *(v0 + 160);
          v35 = *(type metadata accessor for URL() - 8);
          v36 = v29 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v28;
          lazy protocol witness table accessor for type URL and conformance URL();
          v37 = dispatch thunk of CustomStringConvertible.description.getter();
          MEMORY[0x1AC5A5BC0](v37);

          MEMORY[0x1AC5A5BC0](0x6572676F7250202CLL, 0xED0000202D207373);
          DocumentRegistration.Progress.progress.getter();
          Float.write<A>(to:)();
          MEMORY[0x1AC5A5BC0](37, 0xE100000000000000);
          v38 = *(v0 + 48);
          v39 = *(v0 + 56);
          *(v20 + 56) = MEMORY[0x1E69E6158];
          *(v20 + 32) = v38;
          *(v20 + 40) = v39;
          print(_:separator:terminator:)();

          (*(v33 + 8))(v32, v34);
          (*(v30 + 8))(v67, v31);
LABEL_9:
          v40 = *(v0 + 256);
          v42 = *(v0 + 120);
          v41 = *(v0 + 128);
          AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
          v44 = *(MEMORY[0x1E69E85B0] + 4);
          v45 = swift_task_alloc();
          *(v0 + 280) = v45;
          *v45 = v0;
          v45[1] = closure #1 in closure #2 in register<A>(documents:registrationCallback:);
          v46 = *(v0 + 272);
          v26 = *(v0 + 256);
          v22 = *(v0 + 232);
          v25 = v0 + 80;
          v23 = 0;
          v24 = 0;
          v27 = AssociatedConformanceWitness;

          goto _$sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj;
        }
      }

      __break(1u);
    }

    else
    {
      if (v14 != *(v0 + 300))
      {
        _assertionFailure(_:_:file:line:flags:)();
        return;
      }

      v47 = *(v0 + 200);
      v49 = *(v0 + 144);
      v48 = *(v0 + 152);
      v50 = *(v0 + 136);
      v51 = *(v0 + 104);
      (*(*(v0 + 192) + 96))(v47, *(v0 + 184));
      (*(v49 + 32))(v48, v47, v50);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_1ABA1D930;
      *(v0 + 32) = 0;
      *(v0 + 40) = 0xE000000000000000;
      _StringGuts.grow(_:)(28);
      v53 = *(v0 + 40);

      strcpy((v0 + 16), "Document URL: ");
      *(v0 + 31) = -18;
      if ((v51 & 0x8000000000000000) == 0)
      {
        v55 = *(v0 + 96);
        v54 = *(v0 + 104);
        if (*(v55 + 16) > v54)
        {
          v56 = *(v0 + 288);
          v57 = *(v0 + 152);
          v58 = *(v0 + 112);
          v59 = *(type metadata accessor for URL() - 8);
          v60 = v55 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v54;
          lazy protocol witness table accessor for type URL and conformance URL();
          v61 = dispatch thunk of CustomStringConvertible.description.getter();
          MEMORY[0x1AC5A5BC0](v61);

          MEMORY[0x1AC5A5BC0](0x747369676552202CLL, 0xEC00000064657265);
          v62 = *(v0 + 16);
          v63 = *(v0 + 24);
          *(v52 + 56) = MEMORY[0x1E69E6158];
          *(v52 + 32) = v62;
          *(v52 + 40) = v63;
          print(_:separator:terminator:)();

          *(swift_task_alloc() + 16) = v57;
          os_unfair_lock_lock((v58 + 24));
          partial apply for closure #1 in closure #1 in closure #2 in register<A>(documents:registrationCallback:)((v58 + 16));
          os_unfair_lock_unlock((v58 + 24));
          if (v56)
          {
            return;
          }

          v65 = *(v0 + 144);
          v64 = *(v0 + 152);
          v66 = *(v0 + 136);
          (*(*(v0 + 216) + 8))(*(v0 + 224), *(v0 + 208));

          (*(v65 + 8))(v64, v66);
          goto LABEL_9;
        }

LABEL_22:
        __break(1u);
_$sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj:
        MEMORY[0x1EEE6D8D0](v22, v23, v24, v25, v26, v27);
        return;
      }
    }

    __break(1u);
    goto LABEL_22;
  }

  v4 = *(v0 + 248);
  v5 = *(v0 + 224);
  v6 = *(v0 + 200);
  v7 = *(v0 + 176);
  v8 = *(v0 + 152);
  (*(*(v0 + 264) + 8))(*(v0 + 272), *(v0 + 256));

  v9 = *(v0 + 8);

  v9();
}

uint64_t closure #1 in closure #1 in closure #2 in register<A>(documents:registrationCallback:)(void **a1, uint64_t a2)
{
  v4 = type metadata accessor for DocumentResourceIdentifier();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a2, v4);
  v9 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9[2] + 1, 1, v9);
  }

  v11 = v9[2];
  v10 = v9[3];
  if (v11 >= v10 >> 1)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v10 > 1, v11 + 1, 1, v9);
  }

  v9[2] = v11 + 1;
  result = (*(v5 + 32))(v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v11, v8, v4);
  *a1 = v9;
  return result;
}

uint64_t partial apply for closure #2 in register<A>(documents:registrationCallback:)(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return closure #2 in register<A>(documents:registrationCallback:)(a1, a2, v8, v9, v10, v6, v7);
}

uint64_t partial apply for closure #1 in closure #2 in register<A>(documents:registrationCallback:)(uint64_t a1)
{
  v3 = v1[4];
  v4 = (*(*(v3 - 8) + 80) + 48) & ~*(*(v3 - 8) + 80);
  v5 = (*(*(v3 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = v1[2];
  v8 = v1[3];
  v9 = *(v1 + v5);
  v10 = *(v1 + v6);
  v11 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return closure #1 in closure #2 in register<A>(documents:registrationCallback:)(a1, v7, v8, v1 + v4, v9, v10, v11, v3);
}

uint64_t outlined init with copy of TaskPriority?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of TaskPriority?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type URL and conformance URL()
{
  result = lazy protocol witness table cache variable for type URL and conformance URL;
  if (!lazy protocol witness table cache variable for type URL and conformance URL)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URL and conformance URL);
  }

  return result;
}

uint64_t makeSamplingStrategy(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore14AutomationJSONV29SamplingStrategyConfigurationOSgMd, &_s19TokenGenerationCore14AutomationJSONV29SamplingStrategyConfigurationOSgMR);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = (&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v17 - v9;
  outlined init with copy of AutomationJSON.SamplingStrategyConfiguration?(a1, &v17 - v9);
  v11 = type metadata accessor for AutomationJSON.SamplingStrategyConfiguration();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) != 1)
  {
    outlined init with copy of AutomationJSON.SamplingStrategyConfiguration?(v10, v8);
    v15 = (*(v12 + 88))(v8, v11);
    if (v15 == *MEMORY[0x1E69DA870])
    {
      (*(v12 + 96))(v8, v11);
      v13 = *v8;
      v14 = 1;
      goto LABEL_9;
    }

    if (v15 == *MEMORY[0x1E69DA880])
    {
      (*(v12 + 96))(v8, v11);
      v14 = 0;
      v13 = *v8;
      goto LABEL_9;
    }

    if (v15 == *MEMORY[0x1E69DA878])
    {
      v13 = 0;
      v14 = 2;
      goto LABEL_9;
    }

    (*(v12 + 8))(v8, v11);
  }

  v13 = 0;
  v14 = -1;
LABEL_9:
  *a2 = v13;
  *(a2 + 8) = v14;
  return outlined destroy of AutomationJSON.SamplingStrategyConfiguration?(v10);
}

uint64_t outlined destroy of AutomationJSON.SamplingStrategyConfiguration?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore14AutomationJSONV29SamplingStrategyConfigurationOSgMd, &_s19TokenGenerationCore14AutomationJSONV29SamplingStrategyConfigurationOSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AutomationJSON.samplingStrategy.getter@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore14AutomationJSONV29SamplingStrategyConfigurationOSgMd, &_s19TokenGenerationCore14AutomationJSONV29SamplingStrategyConfigurationOSgMR);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v10 - v7;
  a1(v6);
  makeSamplingStrategy(from:)(v8, a2);
  return outlined destroy of AutomationJSON.SamplingStrategyConfiguration?(v8);
}

uint64_t outlined init with copy of AutomationJSON.SamplingStrategyConfiguration?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore14AutomationJSONV29SamplingStrategyConfigurationOSgMd, &_s19TokenGenerationCore14AutomationJSONV29SamplingStrategyConfigurationOSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type CachePolicy and conformance CachePolicy()
{
  result = lazy protocol witness table cache variable for type CachePolicy and conformance CachePolicy;
  if (!lazy protocol witness table cache variable for type CachePolicy and conformance CachePolicy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CachePolicy and conformance CachePolicy);
  }

  return result;
}

uint64_t ClassificationGenerator.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v4 = *(v1 + 80);
  v10 = *(v1 + 64);
  v3 = v10;
  v11 = v4;
  v12 = *(v1 + 96);
  v6 = *(v1 + 32);
  v9[0] = *(v1 + 16);
  v5 = v9[0];
  v9[1] = v6;
  v9[2] = v2;
  *(a1 + 80) = v12;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v6;
  return outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v9, v8, &_s15TokenGeneration20SessionConfigurationVSgMd, &_s15TokenGeneration20SessionConfigurationVSgMR);
}

uint64_t ClassificationGenerator.__allocating_init(configuration:)(__int128 *a1)
{
  v2 = swift_allocObject();
  v3 = a1[3];
  v4 = a1[1];
  v20 = a1[2];
  v21 = v3;
  v5 = a1[3];
  v22 = a1[4];
  v6 = a1[1];
  v18 = *a1;
  v19 = v6;
  v16[1] = v4;
  v16[2] = v20;
  v7 = a1[4];
  v16[3] = v5;
  v16[4] = v7;
  v23 = *(a1 + 80);
  v17 = *(a1 + 80);
  v16[0] = v18;
  outlined init with copy of SessionConfiguration(&v18, v15);
  v8 = specialized ModelManagerSession.init(configuration:)(v16);
  *(v2 + 128) = &type metadata for ModelManagerSession;
  *(v2 + 136) = &protocol witness table for ModelManagerSession;
  *(v2 + 104) = v8;
  v9 = v21;
  *(v2 + 48) = v20;
  *(v2 + 64) = v9;
  *(v2 + 80) = v22;
  *(v2 + 96) = v23;
  v10 = v19;
  *(v2 + 16) = v18;
  *(v2 + 32) = v10;
  v11 = type metadata accessor for EventReporter();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  LOBYTE(v16[0]) = 1;
  *(v2 + 144) = EventReporter.init(userIdentifier:reportToBiome:)();
  return v2;
}

uint64_t ClassificationGenerator.init(configuration:)(__int128 *a1)
{
  v2 = a1[3];
  v3 = a1[1];
  v19 = a1[2];
  v20 = v2;
  v4 = a1[3];
  v21 = a1[4];
  v5 = a1[1];
  v17 = *a1;
  v18 = v5;
  v15[1] = v3;
  v15[2] = v19;
  v6 = a1[4];
  v15[3] = v4;
  v15[4] = v6;
  v22 = *(a1 + 80);
  v16 = *(a1 + 80);
  v15[0] = v17;
  outlined init with copy of SessionConfiguration(&v17, v14);
  v7 = specialized ModelManagerSession.init(configuration:)(v15);
  *(v1 + 128) = &type metadata for ModelManagerSession;
  *(v1 + 136) = &protocol witness table for ModelManagerSession;
  *(v1 + 104) = v7;
  v8 = v20;
  *(v1 + 48) = v19;
  *(v1 + 64) = v8;
  *(v1 + 80) = v21;
  *(v1 + 96) = v22;
  v9 = v18;
  *(v1 + 16) = v17;
  *(v1 + 32) = v9;
  v10 = type metadata accessor for EventReporter();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  LOBYTE(v15[0]) = 1;
  *(v1 + 144) = EventReporter.init(userIdentifier:reportToBiome:)();
  return v1;
}

void ClassificationParameters.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

uint64_t ClassificationGenerator.classify(prompt:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 168) = a2;
  *(v4 + 176) = v3;
  *(v4 + 160) = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR) - 8) + 64) + 15;
  *(v4 + 184) = swift_task_alloc();
  v7 = type metadata accessor for ClassifyPromptResponse(0);
  *(v4 + 192) = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  *(v4 + 200) = swift_task_alloc();
  v9 = type metadata accessor for OneShotRequest(0);
  *(v4 + 208) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v4 + 216) = swift_task_alloc();
  v11 = type metadata accessor for Prompt();
  *(v4 + 224) = v11;
  v12 = *(v11 - 8);
  *(v4 + 232) = v12;
  v13 = *(v12 + 64) + 15;
  *(v4 + 240) = swift_task_alloc();
  *(v4 + 248) = swift_task_alloc();
  v14 = type metadata accessor for PromptVariant();
  *(v4 + 256) = v14;
  v15 = *(v14 - 8);
  *(v4 + 264) = v15;
  v16 = *(v15 + 64) + 15;
  *(v4 + 272) = swift_task_alloc();
  *(v4 + 280) = swift_task_alloc();
  v17 = type metadata accessor for ClassifyPromptRequest(0);
  *(v4 + 288) = v17;
  v18 = *(*(v17 - 8) + 64) + 15;
  *(v4 + 296) = swift_task_alloc();
  v19 = type metadata accessor for UUID();
  *(v4 + 304) = v19;
  v20 = *(v19 - 8);
  *(v4 + 312) = v20;
  v21 = *(v20 + 64) + 15;
  *(v4 + 320) = swift_task_alloc();
  *(v4 + 328) = *a3;
  *(v4 + 376) = *(a3 + 16);

  return MEMORY[0x1EEE6DFA0](ClassificationGenerator.classify(prompt:parameters:), 0, 0);
}

uint64_t ClassificationGenerator.classify(prompt:parameters:)()
{
  v2 = *(v0 + 312);
  v1 = *(v0 + 320);
  v3 = *(v0 + 304);
  v4 = *(v0 + 280);
  v6 = *(v0 + 256);
  v5 = *(v0 + 264);
  v7 = *(v0 + 248);
  v8 = *(v0 + 168);
  UUID.init()();
  v47 = UUID.uuidString.getter();
  v49 = v9;
  v48 = *(v2 + 8);
  v48(v1, v3);
  v10 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0gq5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v11 = *(v5 + 16);
  v11(v4, v8, v6);
  PromptVariant.tgPrompt.getter();
  v41 = *(v0 + 376);
  v39 = *(v0 + 328);
  v40 = *(v0 + 336);
  v42 = *(v0 + 320);
  v12 = *(v0 + 296);
  v34 = *(v0 + 288);
  v35 = *(v0 + 272);
  v38 = *(v0 + 264);
  v36 = *(v0 + 256);
  v37 = *(v0 + 280);
  v14 = *(v0 + 240);
  v13 = *(v0 + 248);
  v16 = *(v0 + 224);
  v15 = *(v0 + 232);
  v43 = *(v0 + 216);
  v44 = *(v0 + 304);
  v45 = *(v0 + 208);
  v46 = *(v0 + 176);

  XPCDictionary.init()();
  (*(v15 + 16))(v14, v13, v16);
  v17 = specialized PromptEnvelope.init(sealing:xpcData:)(v14, v12);
  v18 = (v12 + v34[5]);
  *v18 = v17;
  v18[1] = v19;
  v18[2] = v20;
  v18[3] = v21;
  v11(v35, v37, v36);
  PromptVariantEnvelope.init(sealing:xpcData:)(v35, v12, v12 + v34[6]);
  (*(v15 + 8))(v13, v16);
  (*(v38 + 8))(v37, v36);
  v22 = v12 + v34[7];
  *v22 = v39;
  *(v22 + 8) = v40;
  *(v22 + 16) = v41;

  swift_bridgeObjectRelease_n();
  v23 = (v12 + v34[8]);
  *v23 = v47;
  v23[1] = v49;
  v23[2] = 0xD00000000000001CLL;
  v23[3] = 0x80000001ABA40CF0;
  v23[4] = 0;
  v23[5] = 0;
  v23[6] = v10;
  UUID.init()();
  v24 = UUID.uuidString.getter();
  v26 = v25;

  *(v0 + 344) = v26;
  v48(v42, v44);
  outlined init with copy of ClassifyPromptRequest(v12, v43, type metadata accessor for ClassifyPromptRequest);
  swift_storeEnumTagMultiPayload();
  v27 = *(v46 + 128);
  __swift_project_boxed_opaque_existential_1((v46 + 104), v27);
  v28 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15TokenGeneration16ModelCatalogStubV8AssetKeyV_SayAHGTt0g5Tf4g_n(&outlined read-only object #0 of ClassificationGenerator.classify(prompt:parameters:));
  *(v0 + 352) = v28;
  swift_arrayDestroy();
  v29 = swift_task_alloc();
  *(v0 + 360) = v29;
  lazy protocol witness table accessor for type ClassifyPromptResponse and conformance ClassifyPromptResponse(&lazy protocol witness table cache variable for type ClassifyPromptResponse and conformance ClassifyPromptResponse);
  lazy protocol witness table accessor for type ClassifyPromptResponse and conformance ClassifyPromptResponse(&lazy protocol witness table cache variable for type ClassifyPromptResponse and conformance ClassifyPromptResponse);
  *v29 = v0;
  v29[1] = ClassificationGenerator.classify(prompt:parameters:);
  v30 = *(v0 + 216);
  v31 = *(v0 + 192);
  v32 = *(v0 + 200);

  return InferenceSessionProtocol.request<A>(loggingIdentifier:payload:requiredAssets:expectedResponse:)(v32, v24, v26, v30, v28, v31, v27, v31);
}

{
  v2 = *v1;
  v3 = *(*v1 + 360);
  v4 = *v1;
  *(*v1 + 368) = v0;

  v5 = *(v2 + 352);
  v6 = *(v2 + 344);

  if (v0)
  {
    v7 = ClassificationGenerator.classify(prompt:parameters:);
  }

  else
  {
    v7 = ClassificationGenerator.classify(prompt:parameters:);
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

{
  v1 = *(v0 + 320);
  v2 = *(v0 + 296);
  v3 = *(v0 + 280);
  v19 = *(v0 + 272);
  v20 = *(v0 + 248);
  v21 = *(v0 + 240);
  v4 = *(v0 + 216);
  v5 = *(v0 + 200);
  v6 = *(v0 + 184);
  v7 = *(v0 + 160);
  v8 = (v5 + *(*(v0 + 192) + 20));
  *(v0 + 16) = *v8;
  v9 = v8[4];
  v11 = v8[1];
  v10 = v8[2];
  *(v0 + 64) = v8[3];
  *(v0 + 80) = v9;
  *(v0 + 32) = v11;
  *(v0 + 48) = v10;
  v12 = v8[8];
  v14 = v8[5];
  v13 = v8[6];
  *(v0 + 128) = v8[7];
  *(v0 + 144) = v12;
  *(v0 + 96) = v14;
  *(v0 + 112) = v13;
  v15 = type metadata accessor for XPCDictionary();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v6, v5, v15);
  (*(v16 + 56))(v6, 0, 1, v15);
  ClassificationResponseEnvelope.unseal(_:)(v7);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v6, &_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
  outlined destroy of OneShotRequest(v4, type metadata accessor for OneShotRequest);
  outlined destroy of OneShotRequest(v2, type metadata accessor for ClassifyPromptRequest);
  outlined destroy of OneShotRequest(v5, type metadata accessor for ClassifyPromptResponse);

  v17 = *(v0 + 8);

  return v17();
}

{
  v1 = v0[37];
  outlined destroy of OneShotRequest(v0[27], type metadata accessor for OneShotRequest);
  outlined destroy of OneShotRequest(v1, type metadata accessor for ClassifyPromptRequest);
  v2 = v0[46];
  v3 = v0[40];
  v4 = v0[37];
  v6 = v0[34];
  v5 = v0[35];
  v8 = v0[30];
  v7 = v0[31];
  v9 = v0[27];
  v10 = v0[25];
  v11 = v0[23];

  v12 = v0[1];

  return v12();
}

uint64_t ClassificationGenerator.classify(prompt:promptTemplateInfo:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 176) = a3;
  *(v5 + 184) = v4;
  *(v5 + 160) = a1;
  *(v5 + 168) = a2;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR) - 8) + 64) + 15;
  *(v5 + 192) = swift_task_alloc();
  v8 = type metadata accessor for ClassifyPromptResponse(0);
  *(v5 + 200) = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  *(v5 + 208) = swift_task_alloc();
  v10 = type metadata accessor for OneShotRequest(0);
  *(v5 + 216) = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  *(v5 + 224) = swift_task_alloc();
  v12 = type metadata accessor for Prompt();
  *(v5 + 232) = v12;
  v13 = *(v12 - 8);
  *(v5 + 240) = v13;
  v14 = *(v13 + 64) + 15;
  *(v5 + 248) = swift_task_alloc();
  *(v5 + 256) = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMd, &_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMR) - 8) + 64) + 15;
  *(v5 + 264) = swift_task_alloc();
  v16 = type metadata accessor for PromptVariant();
  *(v5 + 272) = v16;
  v17 = *(v16 - 8);
  *(v5 + 280) = v17;
  v18 = *(v17 + 64) + 15;
  *(v5 + 288) = swift_task_alloc();
  *(v5 + 296) = swift_task_alloc();
  v19 = type metadata accessor for PromptTemplateInfo();
  *(v5 + 304) = v19;
  v20 = *(v19 - 8);
  *(v5 + 312) = v20;
  v21 = *(v20 + 64) + 15;
  *(v5 + 320) = swift_task_alloc();
  *(v5 + 328) = swift_task_alloc();
  v22 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptVSgMd, &_s15TokenGeneration6PromptVSgMR) - 8) + 64) + 15;
  *(v5 + 336) = swift_task_alloc();
  *(v5 + 344) = swift_task_alloc();
  v23 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR) - 8) + 64) + 15;
  *(v5 + 352) = swift_task_alloc();
  *(v5 + 360) = swift_task_alloc();
  *(v5 + 368) = swift_task_alloc();
  v24 = type metadata accessor for ClassifyPromptTemplateRequest(0);
  *(v5 + 376) = v24;
  v25 = *(*(v24 - 8) + 64) + 15;
  *(v5 + 384) = swift_task_alloc();
  *(v5 + 392) = swift_task_alloc();
  v26 = type metadata accessor for UUID();
  *(v5 + 400) = v26;
  v27 = *(v26 - 8);
  *(v5 + 408) = v27;
  v28 = *(v27 + 64) + 15;
  *(v5 + 416) = swift_task_alloc();
  *(v5 + 424) = *a4;
  *(v5 + 472) = *(a4 + 16);

  return MEMORY[0x1EEE6DFA0](ClassificationGenerator.classify(prompt:promptTemplateInfo:parameters:), 0, 0);
}

uint64_t ClassificationGenerator.classify(prompt:promptTemplateInfo:parameters:)()
{
  v2 = *(v0 + 408);
  v1 = *(v0 + 416);
  v3 = *(v0 + 400);
  v5 = *(v0 + 360);
  v4 = *(v0 + 368);
  v6 = *(v0 + 272);
  v7 = *(v0 + 280);
  v8 = *(v0 + 168);
  UUID.init()();
  v90 = UUID.uuidString.getter();
  v91 = v9;
  v10 = *(v2 + 8);
  v10(v1, v3);
  v92 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0gq5Tf4g_n(MEMORY[0x1E69E7CC0]);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v8, v4, &_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v8, v5, &_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR);
  v11 = *(v7 + 48);
  if (v11(v5, 1, v6) == 1)
  {
    v85 = v11;
    v89 = v10;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v0 + 360), &_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR);
    v12 = 1;
  }

  else
  {
    v13 = *(v0 + 344);
    v14 = *(v0 + 360);
    PromptVariant.tgPrompt.getter();
    v85 = v11;
    v89 = v10;
    (*(*(v0 + 280) + 8))(*(v0 + 360), *(v0 + 272));
    v12 = 0;
  }

  v16 = *(v0 + 376);
  v15 = *(v0 + 384);
  v17 = *(v0 + 368);
  v18 = *(v0 + 352);
  v19 = *(v0 + 328);
  v21 = *(v0 + 304);
  v20 = *(v0 + 312);
  v82 = *(v0 + 272);
  v22 = *(v0 + 176);
  (*(*(v0 + 240) + 56))(*(v0 + 344), v12, 1, *(v0 + 232));
  v88 = *(v20 + 16);
  v88(v19, v22, v21);

  XPCDictionary.init()();
  v23 = (v15 + *(v16 + 20));
  *v23 = 0u;
  *(v23 + 1) = 0u;
  v80 = v23;
  v24 = *(v16 + 24);
  v25 = type metadata accessor for PromptVariantEnvelope(0);
  v26 = *(*(v25 - 8) + 56);
  v26(v15 + v24, 1, 1, v25);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, v18, &_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR);
  if (v85(v18, 1, v82) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v0 + 352), &_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR);
  }

  else
  {
    v27 = *(v0 + 384);
    v83 = v26;
    v86 = v24;
    v29 = *(v0 + 288);
    v28 = *(v0 + 296);
    v30 = *(v0 + 272);
    v31 = *(v0 + 280);
    v32 = *(v0 + 264);
    (*(v31 + 32))(v28, *(v0 + 352), v30);
    (*(v31 + 16))(v29, v28, v30);
    PromptVariantEnvelope.init(sealing:xpcData:)(v29, v27, v32);
    (*(v31 + 8))(v28, v30);
    v83(v32, 0, 1, v25);
    outlined assign with take of AsyncCompactMapSequence<ResponseSequence, Data>.Iterator?(v32, v15 + v86, &_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMd, &_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMR);
  }

  v33 = *(v0 + 336);
  v34 = *(v0 + 232);
  v35 = *(v0 + 240);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v0 + 344), v33, &_s15TokenGeneration6PromptVSgMd, &_s15TokenGeneration6PromptVSgMR);
  if ((*(v35 + 48))(v33, 1, v34) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v0 + 336), &_s15TokenGeneration6PromptVSgMd, &_s15TokenGeneration6PromptVSgMR);
  }

  else
  {
    v36 = *(v0 + 384);
    v38 = *(v0 + 248);
    v37 = *(v0 + 256);
    v39 = *(v0 + 232);
    v40 = *(v0 + 240);
    (*(v40 + 32))(v37, *(v0 + 336), v39);
    (*(v40 + 16))(v38, v37, v39);
    v41 = specialized PromptEnvelope.init(sealing:xpcData:)(v38, v36);
    v43 = v42;
    v45 = v44;
    v47 = v46;
    (*(v40 + 8))(v37, v39);
    *v80 = v41;
    v80[1] = v43;
    v80[2] = v45;
    v80[3] = v47;
  }

  v76 = *(v0 + 472);
  v74 = *(v0 + 424);
  v75 = *(v0 + 432);
  v77 = *(v0 + 392);
  v78 = *(v0 + 416);
  v48 = *(v0 + 376);
  v49 = *(v0 + 384);
  v72 = *(v0 + 344);
  v73 = *(v0 + 368);
  v50 = *(v0 + 320);
  v51 = *(v0 + 328);
  v53 = *(v0 + 304);
  v52 = *(v0 + 312);
  v79 = *(v0 + 224);
  v81 = *(v0 + 400);
  v84 = *(v0 + 216);
  v87 = *(v0 + 184);
  v88(v50, v51, v53);
  v54 = (v49 + v48[7]);
  v54[1] = PromptTemplateInfo.templateID.getter();
  v54[2] = v55;
  v56 = PromptTemplateInfo.richVariableBindings.getter();
  v57 = specialized _NativeDictionary.mapValues<A>(_:)(v56, v49);

  *v54 = v57;
  v58 = v54 + *(type metadata accessor for PromptTemplateInfoEnvelope(0) + 24);
  PromptTemplateInfo.locale.getter();
  v59 = *(v52 + 8);
  v59(v50, v53);
  v59(v51, v53);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v72, &_s15TokenGeneration6PromptVSgMd, &_s15TokenGeneration6PromptVSgMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v73, &_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR);
  v60 = v49 + v48[8];
  *v60 = v74;
  *(v60 + 8) = v75;
  *(v60 + 16) = v76;

  swift_bridgeObjectRelease_n();
  v61 = (v49 + v48[9]);
  *v61 = v90;
  v61[1] = v91;
  v61[2] = 0xD00000000000002FLL;
  v61[3] = 0x80000001ABA40D10;
  v61[4] = 0;
  v61[5] = 0;
  v61[6] = v92;
  outlined init with take of ClassifyPromptTemplateRequest(v49, v77);
  UUID.init()();
  v62 = UUID.uuidString.getter();
  v64 = v63;

  *(v0 + 440) = v64;
  v89(v78, v81);
  outlined init with copy of ClassifyPromptRequest(v77, v79, type metadata accessor for ClassifyPromptTemplateRequest);
  swift_storeEnumTagMultiPayload();
  v65 = *(v87 + 128);
  __swift_project_boxed_opaque_existential_1((v87 + 104), v65);
  v66 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15TokenGeneration16ModelCatalogStubV8AssetKeyV_SayAHGTt0g5Tf4g_n(&outlined read-only object #0 of ClassificationGenerator.classify(prompt:promptTemplateInfo:parameters:));
  *(v0 + 448) = v66;
  swift_arrayDestroy();
  v67 = swift_task_alloc();
  *(v0 + 456) = v67;
  lazy protocol witness table accessor for type ClassifyPromptResponse and conformance ClassifyPromptResponse(&lazy protocol witness table cache variable for type ClassifyPromptResponse and conformance ClassifyPromptResponse);
  lazy protocol witness table accessor for type ClassifyPromptResponse and conformance ClassifyPromptResponse(&lazy protocol witness table cache variable for type ClassifyPromptResponse and conformance ClassifyPromptResponse);
  *v67 = v0;
  v67[1] = ClassificationGenerator.classify(prompt:promptTemplateInfo:parameters:);
  v68 = *(v0 + 224);
  v69 = *(v0 + 200);
  v70 = *(v0 + 208);

  return InferenceSessionProtocol.request<A>(loggingIdentifier:payload:requiredAssets:expectedResponse:)(v70, v62, v64, v68, v66, v69, v65, v69);
}

{
  v2 = *v1;
  v3 = *(*v1 + 456);
  v4 = *v1;
  *(*v1 + 464) = v0;

  v5 = *(v2 + 448);
  v6 = *(v2 + 440);

  if (v0)
  {
    v7 = ClassificationGenerator.classify(prompt:promptTemplateInfo:parameters:);
  }

  else
  {
    v7 = ClassificationGenerator.classify(prompt:promptTemplateInfo:parameters:);
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

{
  v1 = *(v0 + 416);
  v2 = *(v0 + 384);
  v3 = *(v0 + 392);
  v19 = *(v0 + 368);
  v20 = *(v0 + 360);
  v21 = *(v0 + 352);
  v22 = *(v0 + 344);
  v23 = *(v0 + 336);
  v24 = *(v0 + 328);
  v25 = *(v0 + 320);
  v26 = *(v0 + 296);
  v27 = *(v0 + 288);
  v28 = *(v0 + 264);
  v29 = *(v0 + 256);
  v30 = *(v0 + 248);
  v4 = *(v0 + 224);
  v5 = *(v0 + 208);
  v6 = *(v0 + 192);
  v7 = *(v0 + 160);
  v8 = (v5 + *(*(v0 + 200) + 20));
  *(v0 + 16) = *v8;
  v9 = v8[1];
  v10 = v8[2];
  v11 = v8[4];
  *(v0 + 64) = v8[3];
  *(v0 + 80) = v11;
  *(v0 + 32) = v9;
  *(v0 + 48) = v10;
  v12 = v8[5];
  v13 = v8[6];
  v14 = v8[8];
  *(v0 + 128) = v8[7];
  *(v0 + 144) = v14;
  *(v0 + 96) = v12;
  *(v0 + 112) = v13;
  v15 = type metadata accessor for XPCDictionary();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v6, v5, v15);
  (*(v16 + 56))(v6, 0, 1, v15);
  ClassificationResponseEnvelope.unseal(_:)(v7);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v6, &_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
  outlined destroy of OneShotRequest(v4, type metadata accessor for OneShotRequest);
  outlined destroy of OneShotRequest(v3, type metadata accessor for ClassifyPromptTemplateRequest);
  outlined destroy of OneShotRequest(v5, type metadata accessor for ClassifyPromptResponse);

  v17 = *(v0 + 8);

  return v17();
}

{
  v1 = v0[49];
  outlined destroy of OneShotRequest(v0[28], type metadata accessor for OneShotRequest);
  outlined destroy of OneShotRequest(v1, type metadata accessor for ClassifyPromptTemplateRequest);
  v22 = v0[58];
  v2 = v0[52];
  v4 = v0[48];
  v3 = v0[49];
  v6 = v0[45];
  v5 = v0[46];
  v8 = v0[43];
  v7 = v0[44];
  v10 = v0[41];
  v9 = v0[42];
  v11 = v0[40];
  v14 = v0[37];
  v15 = v0[36];
  v16 = v0[33];
  v17 = v0[32];
  v18 = v0[31];
  v19 = v0[28];
  v20 = v0[26];
  v21 = v0[24];

  v12 = v0[1];

  return v12();
}

uint64_t ClassificationGenerator.deinit()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  v6 = *(v0 + 72);
  v11 = *(v0 + 96);
  v9 = *(v0 + 80);
  v10 = *(v0 + 88);
  outlined consume of SessionConfiguration?(*(v0 + 16), *(v0 + 24));
  __swift_destroy_boxed_opaque_existential_0((v0 + 104));
  v7 = *(v0 + 144);

  return v0;
}

uint64_t ClassificationGenerator.__deallocating_deinit()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  v6 = *(v0 + 72);
  v11 = *(v0 + 96);
  v9 = *(v0 + 80);
  v10 = *(v0 + 88);
  outlined consume of SessionConfiguration?(*(v0 + 16), *(v0 + 24));
  __swift_destroy_boxed_opaque_existential_0((v0 + 104));
  v7 = *(v0 + 144);

  return swift_deallocClassInstance();
}

uint64_t ClassificationResponse.labels.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t ClassificationResponse.modelInformation.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  *a1 = v1[1];
  a1[1] = v2;
  a1[2] = v3;
}

__n128 ClassificationResponse.modelInformation.setter(__n128 *a1)
{
  v6 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = *(v1 + 8);
  v4 = *(v1 + 24);

  result = v6;
  *(v1 + 8) = v6;
  *(v1 + 24) = v2;
  return result;
}

__n128 ClassificationResponse.init(labels:modelInformation:didFallbackToDefaultThresholds:)@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v12 = *a2;
  v7 = a2[1].n128_u64[0];
  v8 = type metadata accessor for ClassificationResponse();
  v9 = *(v8 + 24);
  v10 = type metadata accessor for Prompt.Rendering();
  (*(*(v10 - 8) + 56))(a4 + v9, 1, 1, v10);
  *a4 = a1;
  result = v12;
  *(a4 + 8) = v12;
  *(a4 + 24) = v7;
  *(a4 + *(v8 + 28)) = a3;
  return result;
}

uint64_t ClassificationResponse.init(labels:modelInformation:didFallbackToDefaultThresholds:renderedPrompt:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v14 = *a2;
  v9 = *(a2 + 2);
  v10 = type metadata accessor for ClassificationResponse();
  v11 = *(v10 + 24);
  v12 = type metadata accessor for Prompt.Rendering();
  (*(*(v12 - 8) + 56))(a5 + v11, 1, 1, v12);
  *a5 = a1;
  *(a5 + 8) = v14;
  *(a5 + 24) = v9;
  *(a5 + *(v10 + 28)) = a3;
  return outlined assign with take of AsyncCompactMapSequence<ResponseSequence, Data>.Iterator?(a4, a5 + v11, &_s15TokenGeneration6PromptV9RenderingVSgMd, &_s15TokenGeneration6PromptV9RenderingVSgMR);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ClassificationParameters.ThresholdConfiguration.CodingKeys()
{
  if (*v0)
  {
    result = 0x6569666963657073;
  }

  else
  {
    result = 0x746C7561666564;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ClassificationParameters.ThresholdConfiguration.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746C7561666564 && a2 == 0xE700000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6569666963657073 && a2 == 0xE900000000000064)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ClassificationParameters.ThresholdConfiguration.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ClassificationParameters.ThresholdConfiguration.CodingKeys and conformance ClassificationParameters.ThresholdConfiguration.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ClassificationParameters.ThresholdConfiguration.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ClassificationParameters.ThresholdConfiguration.CodingKeys and conformance ClassificationParameters.ThresholdConfiguration.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ClassificationParameters.ThresholdConfiguration.DefaultCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ClassificationParameters.ThresholdConfiguration.DefaultCodingKeys and conformance ClassificationParameters.ThresholdConfiguration.DefaultCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ClassificationParameters.ThresholdConfiguration.DefaultCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ClassificationParameters.ThresholdConfiguration.DefaultCodingKeys and conformance ClassificationParameters.ThresholdConfiguration.DefaultCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ClassificationParameters.ThresholdConfiguration.SpecifiedCodingKeys()
{
  Hasher.init(_seed:)();
  MEMORY[0x1AC5A6570](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ClassificationParameters.ThresholdConfiguration.SpecifiedCodingKeys()
{
  Hasher.init(_seed:)();
  MEMORY[0x1AC5A6570](0);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ClassificationParameters.ThresholdConfiguration.SpecifiedCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ClassificationParameters.ThresholdConfiguration.SpecifiedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ClassificationParameters.ThresholdConfiguration.SpecifiedCodingKeys and conformance ClassificationParameters.ThresholdConfiguration.SpecifiedCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ClassificationParameters.ThresholdConfiguration.SpecifiedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ClassificationParameters.ThresholdConfiguration.SpecifiedCodingKeys and conformance ClassificationParameters.ThresholdConfiguration.SpecifiedCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ClassificationParameters.ThresholdConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration24ClassificationParametersV22ThresholdConfigurationO19SpecifiedCodingKeys33_BFC0BB5AAE28658D1EA5FD917AA8E457LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration24ClassificationParametersV22ThresholdConfigurationO19SpecifiedCodingKeys33_BFC0BB5AAE28658D1EA5FD917AA8E457LLOGMR);
  v25 = *(v3 - 8);
  v26 = v3;
  v4 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration24ClassificationParametersV22ThresholdConfigurationO17DefaultCodingKeys33_BFC0BB5AAE28658D1EA5FD917AA8E457LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration24ClassificationParametersV22ThresholdConfigurationO17DefaultCodingKeys33_BFC0BB5AAE28658D1EA5FD917AA8E457LLOGMR);
  v22 = *(v7 - 8);
  v23 = v7;
  v8 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v21 = &v20 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration24ClassificationParametersV22ThresholdConfigurationO10CodingKeys33_BFC0BB5AAE28658D1EA5FD917AA8E457LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration24ClassificationParametersV22ThresholdConfigurationO10CodingKeys33_BFC0BB5AAE28658D1EA5FD917AA8E457LLOGMR);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - v13;
  v15 = v1[1];
  v24 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ClassificationParameters.ThresholdConfiguration.CodingKeys and conformance ClassificationParameters.ThresholdConfiguration.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v15)
  {
    v28 = 1;
    lazy protocol witness table accessor for type ClassificationParameters.ThresholdConfiguration.SpecifiedCodingKeys and conformance ClassificationParameters.ThresholdConfiguration.SpecifiedCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v17 = v26;
    KeyedEncodingContainer.encode(_:forKey:)();
    (*(v25 + 8))(v6, v17);
  }

  else
  {
    v27 = 0;
    lazy protocol witness table accessor for type ClassificationParameters.ThresholdConfiguration.DefaultCodingKeys and conformance ClassificationParameters.ThresholdConfiguration.DefaultCodingKeys();
    v19 = v21;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v22 + 8))(v19, v23);
  }

  return (*(v11 + 8))(v14, v10);
}

uint64_t ClassificationParameters.ThresholdConfiguration.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration24ClassificationParametersV22ThresholdConfigurationO19SpecifiedCodingKeys33_BFC0BB5AAE28658D1EA5FD917AA8E457LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration24ClassificationParametersV22ThresholdConfigurationO19SpecifiedCodingKeys33_BFC0BB5AAE28658D1EA5FD917AA8E457LLOGMR);
  v40 = *(v3 - 8);
  v41 = v3;
  v4 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v37 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration24ClassificationParametersV22ThresholdConfigurationO17DefaultCodingKeys33_BFC0BB5AAE28658D1EA5FD917AA8E457LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration24ClassificationParametersV22ThresholdConfigurationO17DefaultCodingKeys33_BFC0BB5AAE28658D1EA5FD917AA8E457LLOGMR);
  v39 = *(v7 - 8);
  v8 = *(v39 + 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v37 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration24ClassificationParametersV22ThresholdConfigurationO10CodingKeys33_BFC0BB5AAE28658D1EA5FD917AA8E457LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration24ClassificationParametersV22ThresholdConfigurationO10CodingKeys33_BFC0BB5AAE28658D1EA5FD917AA8E457LLOGMR);
  v43 = *(v11 - 8);
  v12 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v37 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ClassificationParameters.ThresholdConfiguration.CodingKeys and conformance ClassificationParameters.ThresholdConfiguration.CodingKeys();
  v16 = v44;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v16)
  {
    goto LABEL_7;
  }

  v38 = v7;
  v18 = v41;
  v17 = v42;
  v44 = a1;
  v19 = v14;
  v20 = KeyedDecodingContainer.allKeys.getter();
  if (*(v20 + 16) != 1)
  {
    v24 = type metadata accessor for DecodingError();
    swift_allocError();
    v26 = v25;
    v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
    *v26 = &type metadata for ClassificationParameters.ThresholdConfiguration;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v24 - 8) + 104))(v26, *MEMORY[0x1E69E6AF8], v24);
    swift_willThrow();
    (*(v43 + 8))(v19, v11);
    swift_unknownObjectRelease();
    a1 = v44;
LABEL_7:
    v32 = a1;
    return __swift_destroy_boxed_opaque_existential_0(v32);
  }

  if (*(v20 + 32))
  {
    v46 = 1;
    lazy protocol witness table accessor for type ClassificationParameters.ThresholdConfiguration.SpecifiedCodingKeys and conformance ClassificationParameters.ThresholdConfiguration.SpecifiedCodingKeys();
    v21 = v6;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v22 = v19;
    v23 = v43;
    v30 = v17;
    v31 = v21;
    v39 = v22;
    v34 = KeyedDecodingContainer.decode(_:forKey:)();
    v36 = v35;
    (*(v40 + 8))(v31, v18);
    (*(v23 + 8))(v39, v11);
    swift_unknownObjectRelease();
  }

  else
  {
    v45 = 0;
    lazy protocol witness table accessor for type ClassificationParameters.ThresholdConfiguration.DefaultCodingKeys and conformance ClassificationParameters.ThresholdConfiguration.DefaultCodingKeys();
    v28 = v10;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v29 = v43;
    v30 = v17;
    (*(v39 + 1))(v28, v38);
    (*(v29 + 8))(v14, v11);
    swift_unknownObjectRelease();
    v34 = 0;
    v36 = 0;
  }

  *v30 = v34;
  v30[1] = v36;
  v32 = v44;
  return __swift_destroy_boxed_opaque_existential_0(v32);
}

uint64_t specialized Collection<>.popFirst()()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 13;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 7;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 5;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 9;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL specialized Collection<>.popFirst()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24) >> 1;
  if (v1 != v2)
  {
    if (v1 >= v2)
    {
      __break(1u);
      return result;
    }

    *(v0 + 16) = v1 + 1;
  }

  return v1 == v2;
}

uint64_t ClassificationParameters.thresholdConfiguration.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

__n128 ClassificationParameters.init(thresholdConfiguration:shouldFallbackToDefaultThresholds:)@<Q0>(__n128 *a1@<X0>, unsigned __int8 a2@<W1>, __n128 *a3@<X8>)
{
  result = *a1;
  *a3 = *a1;
  a3[1].n128_u8[0] = a2;
  return result;
}

uint64_t ClassificationParameters.init(thresholdIdentifier:shouldFallbackToDefaultThresholds:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t specialized Set._Variant.insert(_:)(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

{
  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy15TokenGeneration16ModelCatalogStubV8AssetKeyVGMd, &_ss11_SetStorageCy15TokenGeneration16ModelCatalogStubV8AssetKeyVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    specialized _NativeSet.resize(capacity:)(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_16;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    specialized _NativeSet.resize(capacity:)(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_16;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}