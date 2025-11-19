void *static DispatchQoS.unspecified.getter@<X0>(void *result@<X0>, _BYTE *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  if (*result != -1)
  {
    v5 = a2;
    v6 = a3;
    v7 = a4;
    result = swift_once();
    a2 = v5;
    a4 = v7;
    a3 = v6;
  }

  v4 = *a3;
  *a4 = *a2;
  *(a4 + 8) = v4;
  return result;
}

void OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)(uint64_t a1, uint64_t a2, char *a3, uint64_t *a4, unsigned __int8 *a5, NSObject *a6)
{
  v7 = *a3;
  v8 = *(a3 + 1);
  v9 = *a4;
  v10 = *a5;
  if ((*a4 & 2) != 0)
  {
    v11 = _swift_dispatch_queue_concurrent();
    if ((v9 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v11 = 0;
  if ((v9 & 4) != 0)
  {
LABEL_5:
    v12 = dispatch_queue_attr_make_initially_inactive(v11);

    v11 = v12;
  }

LABEL_6:
  if (v10)
  {
    if (v10 == DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM)
    {
      v13 = v10;
    }

    else
    {
      v13 = DISPATCH_AUTORELEASE_FREQUENCY_NEVER;
    }

    v14 = dispatch_queue_attr_make_with_autorelease_frequency(v11, v13);

    v11 = v14;
  }

  if (one-time initialization token for unspecified != -1)
  {
    swift_once();
  }

  if (static DispatchQoS.unspecified == v7 && v8 == qword_1ED451E78)
  {
    goto LABEL_20;
  }

  if (v8 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v8 <= 0x7FFFFFFF)
  {
    v16 = dispatch_queue_attr_make_with_qos_class(v11, dword_19342D4F8[v7], v8);

    v11 = v16;
LABEL_20:
    v17 = String.utf8CString.getter();

    dispatch_queue_create_with_target_V2((v17 + 32), v11, a6);

    return;
  }

  __break(1u);
}

dispatch_time_t static DispatchTime.now()@<X0>(dispatch_time_t *a1@<X8>)
{
  result = dispatch_time(0, 0);
  *a1 = result;
  return result;
}

dispatch_time_t DispatchTime.advanced(by:)@<X0>(uint64_t a1@<X0>, dispatch_time_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = 0x7FFFFFFFFFFFFFFFLL;
  if (*a1 <= 0)
  {
    v6 = 0x8000000000000000;
  }

  if ((v4 * 1000) >> 64 == (1000 * v4) >> 63)
  {
    v7 = 1000 * v4;
  }

  else
  {
    v7 = v6;
  }

  if (v5 == 3)
  {
    v8 = *a1;
  }

  else
  {
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v5 != 2)
  {
    v7 = v8;
  }

  if (v4 > 0)
  {
    v9 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = 0x8000000000000000;
  }

  if ((v4 * 1000000000) >> 64 == (1000000000 * v4) >> 63)
  {
    v10 = 1000000000 * v4;
  }

  else
  {
    v10 = v9;
  }

  v11 = 1000000 * v4;
  v12 = (v4 * 1000000) >> 64 != (1000000 * v4) >> 63;
  if (v4 > 0)
  {
    v13 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v13 = 0x8000000000000000;
  }

  if (!v12)
  {
    v13 = v11;
  }

  if (!*(a1 + 8))
  {
    v13 = v10;
  }

  if (*(a1 + 8) <= 1u)
  {
    v14 = v13;
  }

  else
  {
    v14 = v7;
  }

  result = dispatch_time(*v2, v14);
  *a2 = result;
  return result;
}

uint64_t destructiveInjectEnumTag for DispatchTimeInterval(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t _dispatchPreconditionTest(_:)(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (v3)
  {
    if (v3 == 1)
    {
      dispatch_assert_queue_barrier(v2);
    }

    else
    {
      dispatch_assert_queue_not_V2(v2);
    }
  }

  else
  {
    dispatch_assert_queue_V2(v2);
  }

  return 1;
}

uint64_t static OS_dispatch_queue.getSpecific<A>(key:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  specific = dispatch_get_specific(a1);
  if (specific)
  {
    v5 = *(*specific + 88);
    v6 = *(v3 + 80);
    v14 = *(v6 - 8);
    v7 = *(v14 + 16);

    v7(a2, v8 + v5, v6);

    v9 = *(v14 + 56);
    v10 = a2;
    v11 = 0;
    v12 = v6;
  }

  else
  {
    v12 = *(v3 + 80);
    v9 = *(*(v12 - 8) + 56);
    v10 = a2;
    v11 = 1;
  }

  return v9(v10, v11, 1, v12);
}

uint64_t closure #1 in closure #1 in OS_dispatch_queue._syncHelper<A>(fn:execute:rescue:)(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v15 - v12;
  a2(v11);
  (*(*(a5 - 8) + 56))(v13, 0, 1, a5);
  return (*(v9 + 40))(a1, v13, v8);
}

uint64_t OS_dispatch_queue._syncHelper<A>(fn:execute:rescue:)@<X0>(void (*a1)(uint64_t (*)(), char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void (*a4)(id)@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v26 = a7;
  v24 = a5;
  v25 = a4;
  v28 = a1;
  v27 = type metadata accessor for Optional();
  v10 = *(v27 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v27);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v24 - v15;
  v17 = *(a6 - 8);
  (*(v17 + 56))(&v24 - v15, 1, 1, a6);
  v35 = 0;
  v18 = swift_allocObject();
  v18[2] = a6;
  v18[3] = a2;
  v18[4] = a3;
  v30 = a6;
  v31 = v16;
  v32 = thunk for @callee_guaranteed () -> (@out A, @error @owned Error)partial apply;
  v33 = v18;
  v34 = &v35;
  v28(partial apply for closure #1 in closure #1 in OS_dispatch_queue._syncHelper<A>(fn:execute:rescue:), v29);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  v21 = v35;
  if (v35)
  {
    v22 = v35;
    v25(v21);

    return (*(v10 + 8))(v16, v27);
  }

  v23 = v27;
  (*(v10 + 16))(v14, v16, v27);
  result = (*(v17 + 48))(v14, 1, a6);
  if (result == 1)
  {
    goto LABEL_8;
  }

  (*(v10 + 8))(v16, v23);
  return (*(v17 + 32))(v26, v14, a6);
}

uint64_t partial apply for thunk for @callee_guaranteed () -> (@out A, @error @owned Error)()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return v1();
}

uint64_t partial apply for thunk for @callee_guaranteed () -> ()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t OS_dispatch_queue.asyncAndWait<A>(execute:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t (*)(), char *)@<X4>, void (*a5)(id)@<X5>, uint64_t a6@<X8>)
{
  *(swift_allocObject() + 16) = v6;
  v15[2] = a3;
  v13 = v6;
  OS_dispatch_queue._syncHelper<A>(fn:execute:rescue:)(a4, a1, a2, a5, v15, a3, a6);
}

uint64_t implicit closure #2 in implicit closure #1 in OS_dispatch_queue.asyncAndWait<A>(execute:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, void *))
{
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  v16[4] = a5;
  v16[5] = v13;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = thunk for @escaping @callee_guaranteed () -> ();
  v16[3] = a6;
  v14 = _Block_copy(v16);

  a7(a3, v14);
  _Block_release(v14);
  LOBYTE(a7) = swift_isEscapingClosureAtFileLocation();

  if (a7)
  {
    __break(1u);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t thunk for @escaping @callee_guaranteed () -> ()(uint64_t a1)
{
  v1 = *(a1 + 40);
  return (*(a1 + 32))();
}

{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t static OS_dispatch_queue.concurrentPerform(iterations:execute:)(size_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v9[4] = partial apply for thunk for @callee_guaranteed (@unowned Int) -> ();
  v9[5] = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed (@unowned Int) -> ();
  v9[3] = &block_descriptor_0;
  v7 = _Block_copy(v9);

  _swift_dispatch_apply_current(a1, v7);
  _Block_release(v7);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }

  return result;
}

BOOL protocol witness for SetAlgebra.insert(_:) in conformance DispatchWorkItemFlags(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t OS_dispatch_queue.sync<A>(flags:execute:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *a1;
  if (*a1)
  {
    if (v10 != 1)
    {
      v16 = swift_allocObject();
      *(v16 + 16) = v5;
      v21 = v10;
      MEMORY[0x1EEE9AC00](v16);
      v20 = a4;
      v17 = v5;
      OS_dispatch_queue._syncHelper<A>(fn:flags:execute:rescue:)(partial apply for implicit closure #4 in implicit closure #3 in OS_dispatch_queue.sync<A>(flags:execute:), v16, &v21, a2, a3, partial apply for closure #1 in OS_dispatch_queue.asyncAndWait<A>(execute:), v19, a4, a5);
    }

    v11 = swift_allocObject();
    *(v11 + 16) = v5;
    MEMORY[0x1EEE9AC00](v11);
    v20 = a4;
    v12 = v5;
    v13 = partial apply for implicit closure #2 in implicit closure #1 in OS_dispatch_queue.sync<A>(flags:execute:);
  }

  else
  {
    v14 = swift_allocObject();
    *(v14 + 16) = v5;
    MEMORY[0x1EEE9AC00](v14);
    v20 = a4;
    v15 = v5;
    v13 = partial apply for implicit closure #6 in implicit closure #5 in OS_dispatch_queue.sync<A>(flags:execute:);
  }

  OS_dispatch_queue._syncHelper<A>(fn:execute:rescue:)(v13, a2, a3, partial apply for closure #1 in OS_dispatch_queue.asyncAndWait<A>(execute:), v19, a4, a5);
}

uint64_t implicit closure #2 in implicit closure #1 in OS_dispatch_queue.sync<A>(flags:execute:)(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v9[4] = partial apply for thunk for @callee_guaranteed () -> ();
  v9[5] = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed () -> ();
  v9[3] = &block_descriptor_64;
  v7 = _Block_copy(v9);

  dispatch_barrier_sync(a3, v7);
  _Block_release(v7);
  LOBYTE(a3) = swift_isEscapingClosureAtFileLocation();

  if (a3)
  {
    __break(1u);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags()
{
  result = lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags;
  if (!lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags;
  if (!lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags;
  if (!lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags;
  if (!lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags);
  }

  return result;
}

void OS_dispatch_queue.asyncUnsafe(group:qos:flags:execute:)(void *a1, unsigned __int8 *a2, dispatch_block_flags_t *a3, void *aBlock)
{
  v5 = v4;
  v7 = *a2;
  v8 = *(a2 + 1);
  v9 = *a3;
  v10 = _Block_copy(aBlock);
  v11 = _Block_copy(v10);
  if (a1)
  {
    goto LABEL_12;
  }

  if (one-time initialization token for unspecified != -1)
  {
    swift_once();
  }

  if (v7 != static DispatchQoS.unspecified || v8 != qword_1ED451E78)
  {
LABEL_12:
    _Block_copy(v11);
    if (one-time initialization token for unspecified != -1)
    {
      swift_once();
    }

    if (v7 != static DispatchQoS.unspecified || v8 != qword_1ED451E78)
    {
      v19[0] = v7;
      v20 = v8;
      v18 = v9;
      type metadata accessor for DispatchWorkItem();
      swift_initStackObject();
      v14 = DispatchWorkItem.init(qos:flags:block:)(v19, &v18, v11);
      _Block_release(v11);
      v11 = v14[2];
      _Block_copy(v11);

      if (!a1)
      {
        goto LABEL_24;
      }

LABEL_22:
      v17 = a1;
      _swift_dispatch_group_async(v17, v5, v11);
      _Block_release(v10);

LABEL_25:
      _Block_release(v11);
      return;
    }

    if (v9)
    {
      v15 = _Block_copy(v11);
      v16 = _swift_dispatch_block_create(v9, v15);
      _Block_release(v11);
      _Block_release(v15);
      _Block_release(v11);
      v11 = v16;
      if (a1)
      {
        goto LABEL_22;
      }
    }

    else
    {
      _Block_release(v11);
      if (a1)
      {
        goto LABEL_22;
      }
    }

LABEL_24:
    _swift_dispatch_async(v5, v11);
    _Block_release(v10);
    goto LABEL_25;
  }

  if (v9 == DISPATCH_BLOCK_BARRIER)
  {
    _swift_dispatch_barrier_async(v5, v11);
  }

  else
  {
    if (v9)
    {
      goto LABEL_12;
    }

    _swift_dispatch_async(v5, v11);
  }

  _Block_release(v10);

  _Block_release(v11);
}

void _swift_dispatch_async(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  dispatch_async(v3, v4);
}

id static OS_dispatch_queue.main.getter()
{
  main_queue = _swift_dispatch_get_main_queue();

  return main_queue;
}

unint64_t lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes()
{
  result = lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes;
  if (!lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes;
  if (!lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes;
  if (!lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes;
  if (!lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t @objc _destructDispatchSpecificValue(ptr:)(uint64_t result)
{
  if (result)
  {
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t _DispatchSpecificValue.__deallocating_deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t OS_dispatch_queue.getSpecific<A>(key:)@<X0>(uint64_t *key@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *key;
  specific = dispatch_queue_get_specific(v3, key);
  if (specific)
  {
    v7 = *(*specific + 88);
    v8 = *(v5 + 80);
    v16 = *(v8 - 8);
    v9 = *(v16 + 16);

    v9(a2, v10 + v7, v8);

    v11 = *(v16 + 56);
    v12 = a2;
    v13 = 0;
    v14 = v8;
  }

  else
  {
    v14 = *(v5 + 80);
    v11 = *(*(v14 - 8) + 56);
    v12 = a2;
    v13 = 1;
  }

  return v11(v12, v13, 1, v14);
}

uint64_t OS_dispatch_queue.setSpecific<A>(key:value:)(const void *a1)
{
  v11 = *(*a1 + 80);
  v3 = v11;
  type metadata accessor for Optional();
  v4 = type metadata accessor for _DispatchSpecificValue();
  v5 = MEMORY[0x1E69E73E0];
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in OS_dispatch_queue.setSpecific<A>(key:value:), v10, MEMORY[0x1E69E73E0], v4, v6, &context);
  v12 = context;
  v9[2] = v3;
  type metadata accessor for Optional();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #2 in OS_dispatch_queue.setSpecific<A>(key:value:), v9, v5, MEMORY[0x1E69E6878], v7, &context);
  dispatch_queue_set_specific(v1, a1, context, @objc _destructDispatchSpecificValue(ptr:));
}

uint64_t _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v29 = a5;
  v30 = a2;
  v32 = a4;
  v31 = a1;
  v28 = *(a3 - 8);
  v10 = *(v28 + 64);
  v11 = (MEMORY[0x1EEE9AC00])();
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 16);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v11);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v24 = &v28 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v24, v6);
  v26 = 1;
  if ((*(v16 + 48))(v24, 1, v15) != 1)
  {
    (*(v16 + 32))(v20, v24, v15);
    v31(v20, v13);
    (*(v16 + 8))(v20, v15);
    if (v7)
    {
      return (*(v28 + 32))(v29, v13, a3);
    }

    v26 = 0;
  }

  return (*(*(v32 - 8) + 56))(a6, v26, 1);
}

uint64_t closure #1 in OS_dispatch_queue.setSpecific<A>(key:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for _DispatchSpecificValue();
  (*(v6 + 16))(v9, a1, a2);
  result = _DispatchSpecificValue.__allocating_init(value:)(v9);
  *a3 = result;
  return result;
}

uint64_t _DispatchSpecificValue.__allocating_init(value:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  (*(*(*(*v5 + 80) - 8) + 32))(v5 + *(*v5 + 88), a1);
  return v5;
}

unint64_t lazy protocol witness table accessor for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes()
{
  result = lazy protocol witness table cache variable for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes;
  if (!lazy protocol witness table cache variable for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes;
  if (!lazy protocol witness table cache variable for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes;
  if (!lazy protocol witness table cache variable for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes;
  if (!lazy protocol witness table cache variable for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes);
  }

  return result;
}

void OS_dispatch_queue_serial.init(label:qos:attributes:autoreleaseFrequency:target:)(uint64_t a1, uint64_t a2, char *a3, _BYTE *a4, _BYTE *a5, void *a6)
{
  v7 = *a3;
  v8 = *(a3 + 1);
  v9 = *a5;
  if ((*a4 & 4) != 0)
  {
    v10 = dispatch_queue_attr_make_initially_inactive(0);
    if (!v9)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v10 = 0;
    if (!*a5)
    {
      goto LABEL_9;
    }
  }

  if (v9 == DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM)
  {
    v11 = v9;
  }

  else
  {
    v11 = DISPATCH_AUTORELEASE_FREQUENCY_NEVER;
  }

  v12 = dispatch_queue_attr_make_with_autorelease_frequency(v10, v11);

  v10 = v12;
LABEL_9:
  if (one-time initialization token for unspecified != -1)
  {
    swift_once();
  }

  if (static DispatchQoS.unspecified == v7 && v8 == qword_1ED451E78)
  {
    goto LABEL_18;
  }

  if (v8 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v8 <= 0x7FFFFFFF)
  {
    v14 = dispatch_queue_attr_make_with_qos_class(v10, dword_19342D4F8[v7], v8);

    v10 = v14;
LABEL_18:
    v15 = String.utf8CString.getter();

    dispatch_concurrent_queue_create_with_target_4swift((v15 + 32), v10, a6);

    return;
  }

  __break(1u);
}

dispatch_queue_t dispatch_concurrent_queue_create_with_target_4swift(const char *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = dispatch_queue_create_with_target_V2(a1, v5, v6);

  return v7;
}

void OS_dispatch_group.notify(qos:flags:queue:execute:)(unsigned __int8 *a1, dispatch_block_flags_t *a2, void *a3, void *aBlock)
{
  v5 = v4;
  v7 = *a1;
  v8 = *(a1 + 1);
  v9 = *a2;
  v10 = _Block_copy(aBlock);
  _Block_copy(v10);
  if (one-time initialization token for unspecified != -1)
  {
    swift_once();
  }

  if (v7 == static DispatchQoS.unspecified && v8 == qword_1ED451E78)
  {
    if (v9)
    {
      v13 = _Block_copy(v10);
      v14 = _swift_dispatch_block_create(v9, v13);
      _Block_release(v10);
      _Block_release(v13);
      _Block_release(v10);
      v10 = v14;
    }

    else
    {
      _Block_release(v10);
    }
  }

  else
  {
    v16[0] = v7;
    v17 = v8;
    v15 = v9;
    type metadata accessor for DispatchWorkItem();
    swift_initStackObject();
    v12 = DispatchWorkItem.init(qos:flags:block:)(v16, &v15, v10);
    _Block_release(v10);
    v10 = v12[2];
    _Block_copy(v10);
  }

  _swift_dispatch_group_notify(v5, a3, v10);
  _Block_release(v10);
}

void _swift_dispatch_group_notify(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  dispatch_group_notify(v5, v6, v7);
}

dispatch_queue_global_t static OS_dispatch_queue.global(qos:)(char *a1)
{
  global_queue = dispatch_get_global_queue(qword_19342D4C8[*a1], 0);

  return global_queue;
}

dispatch_time_t + infix(_:_:)@<X0>(dispatch_time_t *a1@<X0>, dispatch_time_t *a2@<X8>, double a3@<D0>)
{
  v4 = *a1;
  v5 = toInt64Clamped(_:)(a3 * 1000000000.0);
  result = dispatch_time(v4, v5);
  *a2 = result;
  return result;
}

uint64_t toInt64Clamped(_:)(double a1)
{
  v1 = *&a1 & 0x7FF0000000000000;
  v3 = (*&a1 & 0xFFFFFFFFFFFFFLL) != 0 && v1 == 0x7FF0000000000000;
  result = 0x7FFFFFFFFFFFFFFFLL;
  if (a1 < 9.22337204e18 && !v3)
  {
    if (a1 <= -9.22337204e18)
    {
      return 0x8000000000000000;
    }

    if (v1 == 0x7FF0000000000000)
    {
      __break(1u);
    }

    else if (a1 > -9.22337204e18)
    {
      if (a1 < 9.22337204e18)
      {
        return a1;
      }

LABEL_18:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_18;
  }

  return result;
}

void OS_dispatch_queue.asyncAfterUnsafe(deadline:qos:flags:execute:)(dispatch_time_t *a1, unsigned __int8 *a2, dispatch_block_flags_t *a3, void *aBlock)
{
  v5 = v4;
  v6 = *a1;
  v7 = *a2;
  v8 = *(a2 + 1);
  v9 = *a3;
  v10 = _Block_copy(aBlock);
  v11 = _Block_copy(v10);
  _Block_copy(v11);
  if (one-time initialization token for unspecified != -1)
  {
    swift_once();
  }

  if (v7 == static DispatchQoS.unspecified && v8 == qword_1ED451E78)
  {
    if (v9)
    {
      v14 = _Block_copy(v11);
      v15 = _swift_dispatch_block_create(v9, v14);
      _Block_release(v11);
      _Block_release(v14);
      _Block_release(v11);
      v11 = v15;
    }

    else
    {
      _Block_release(v11);
    }
  }

  else
  {
    v17[0] = v7;
    v18 = v8;
    v16 = v9;
    type metadata accessor for DispatchWorkItem();
    swift_initStackObject();
    v13 = DispatchWorkItem.init(qos:flags:block:)(v17, &v16, v11);
    _Block_release(v11);
    v11 = v13[2];
    _Block_copy(v11);
  }

  _swift_dispatch_after(v6, v5, v11);
  _Block_release(v11);
  _Block_release(v10);
}

void _swift_dispatch_after(dispatch_time_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  dispatch_after(a1, v5, v6);
}

id _swift_dispatch_block_create(dispatch_block_flags_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_block_create(a1, v3);

  return v4;
}

uint64_t DispatchWorkItem.__deallocating_deinit()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t DispatchWorkItem.init(flags:block:)(dispatch_block_flags_t *a1, void *aBlock)
{
  v4 = *a1;
  v5 = _Block_copy(aBlock);
  v6 = _swift_dispatch_block_create(v4, v5);
  _Block_release(v5);
  _Block_release(aBlock);
  *(v2 + 16) = v6;
  return v2;
}

uint64_t storeEnumTagSinglePayload for OS_dispatch_queue.SchedulerOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OS_dispatch_queue.SchedulerOptions(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t OS_dispatch_source.activate()(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClassUnconditional();

  return a2(v2);
}

dispatch_source_t _swift_dispatch_source_create(const dispatch_source_type_s *a1, uintptr_t a2, uintptr_t a3, void *a4)
{
  v7 = a4;
  v8 = dispatch_source_create(a1, a2, a3, v7);
  if (!v8)
  {
    _swift_dispatch_source_create_abort();
  }

  return v8;
}

dispatch_source_t _swift_dispatch_source_create_0(void *a1)
{
  v1 = a1;
  v2 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v1);
  if (!v2)
  {
    _swift_dispatch_source_create_abort();
  }

  return v2;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

dispatch_time_t + infix(_:_:)@<X0>(dispatch_time_t *a1@<X0>, uint64_t *a2@<X1>, dispatch_time_t *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = 0x7FFFFFFFFFFFFFFFLL;
  if (*a2 <= 0)
  {
    v7 = 0x8000000000000000;
  }

  if ((*a2 * 1000) >> 64 == (1000 * *a2) >> 63)
  {
    v8 = 1000 * *a2;
  }

  else
  {
    v8 = v7;
  }

  if (v6 == 3)
  {
    v9 = *a2;
  }

  else
  {
    v9 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v6 != 2)
  {
    v8 = v9;
  }

  if (v5 > 0)
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v10 = 0x8000000000000000;
  }

  if ((v5 * 1000000000) >> 64 == (1000000000 * v5) >> 63)
  {
    v11 = 1000000000 * v5;
  }

  else
  {
    v11 = v10;
  }

  v12 = 1000000 * v5;
  v13 = (v5 * 1000000) >> 64 != (1000000 * v5) >> 63;
  if (v5 > 0)
  {
    v14 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v14 = 0x8000000000000000;
  }

  if (!v13)
  {
    v14 = v12;
  }

  if (!*(a2 + 8))
  {
    v14 = v11;
  }

  if (*(a2 + 8) <= 1u)
  {
    v15 = v14;
  }

  else
  {
    v15 = v8;
  }

  result = dispatch_time(v4, v15);
  *a3 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type DispatchTime and conformance DispatchTime()
{
  result = lazy protocol witness table cache variable for type DispatchTime and conformance DispatchTime;
  if (!lazy protocol witness table cache variable for type DispatchTime and conformance DispatchTime)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DispatchTime and conformance DispatchTime);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type OS_dispatch_queue_serial_executor and conformance OS_dispatch_queue_serial_executor(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for OS_dispatch_queue_serial_executor(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for OS_dispatch_queue_serial_executor(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t protocol witness for SerialExecutor.enqueue(_:) in conformance OS_dispatch_queue_serial_executor()
{
  v1 = UnownedJob.init(_:)();
  _swift_job_set_executor_queue(v1, v0);
  v2 = _swift_job_priority(v1);

  return MEMORY[0x1EEE6FE28](v0, v1, v2);
}

uint64_t OS_dispatch_queue.label.getter()
{
  label = dispatch_queue_get_label(v0);
  result = MEMORY[0x193B167C0](label);
  if (!v3)
  {
    __break(1u);
  }

  return result;
}

void OS_dispatch_source_timer.scheduleRepeating(deadline:interval:leeway:)(dispatch_time_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *a3;
  v7 = *(a3 + 8);
  objc_opt_self();
  v8 = swift_dynamicCastObjCClassUnconditional();
  if (v5 == 4 && v4 == 0)
  {
    v10 = -1;
    goto LABEL_20;
  }

  if (v5 > 1)
  {
    if (v5 == 2)
    {
      v10 = 1000 * v4;
      if ((v4 * 1000) >> 64 == (1000 * v4) >> 63)
      {
        goto LABEL_19;
      }

      if (v4 < 1)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v10 = v4;
      if (v5 == 3)
      {
        goto LABEL_19;
      }
    }

LABEL_18:
    v10 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_20;
  }

  if (v5)
  {
    v11 = 1000000;
  }

  else
  {
    v11 = 1000000000;
  }

  v10 = v4 * v11;
  if ((v4 * v11) >> 64 != (v4 * v11) >> 63)
  {
    if (v4 <= 0)
    {
LABEL_36:
      __break(1u);
      return;
    }

    goto LABEL_18;
  }

LABEL_19:
  if ((v10 & 0x8000000000000000) != 0)
  {
    goto LABEL_36;
  }

LABEL_20:
  if (v7 <= 1)
  {
    if (v7)
    {
      v13 = 1000000;
    }

    else
    {
      v13 = 1000000000;
    }

    goto LABEL_28;
  }

  if (v7 == 2)
  {
    v13 = 1000;
LABEL_28:
    v12 = v6 * v13;
    if ((v6 * v13) >> 64 == (v6 * v13) >> 63)
    {
      goto LABEL_31;
    }

    if (v6 <= 0)
    {
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    goto LABEL_30;
  }

  v12 = v6;
  if (v7 == 3)
  {
LABEL_31:
    if ((v12 & 0x8000000000000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_35;
  }

LABEL_30:
  v12 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_32:

  dispatch_source_set_timer(v8, v3, v10, v12);
}

void OS_dispatch_source.setEventHandler(qos:flags:handler:)(unsigned __int8 *a1, uint64_t *a2, void *aBlock, uint64_t a4, void (*a5)(uint64_t, void *))
{
  v6 = *a1;
  v7 = *(a1 + 1);
  v8 = *a2;
  v9 = _Block_copy(aBlock);
  v10 = v9;
  if (!v9)
  {
    goto LABEL_12;
  }

  _Block_copy(v9);
  if (one-time initialization token for unspecified != -1)
  {
    swift_once();
  }

  v11 = static DispatchQoS.unspecified;
  v12 = qword_1ED451E78;
  _Block_release(v10);
  v13 = v6 == v11 && v7 == v12;
  if (v13 && v8 == 0)
  {
LABEL_12:
    objc_opt_self();
    v18 = swift_dynamicCastObjCClassUnconditional();
    a5(v18, v10);

    _Block_release(v10);
  }

  else
  {
    v20[0] = v6;
    v21 = v7;
    v19 = v8;
    type metadata accessor for DispatchWorkItem();
    swift_initStackObject();
    _Block_copy(v10);
    v15 = DispatchWorkItem.init(qos:flags:block:)(v20, &v19, v10);
    objc_opt_self();
    v16 = swift_dynamicCastObjCClassUnconditional();
    v17 = v15[2];
    _Block_copy(v17);
    a5(v16, v17);
    _Block_release(v10);
    _Block_release(v17);
  }
}

void _swift_dispatch_source_set_event_handler(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  dispatch_source_set_event_handler(v3, v4);
}

void _swift_dispatch_source_set_event_handler_0(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  dispatch_source_set_event_handler(v3, v4);
}

uint64_t storeEnumTagSinglePayload for DispatchQoS(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 5;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DispatchQoS(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && a1[16])
  {
    return (*a1 + 251);
  }

  v3 = *a1;
  v4 = v3 >= 6;
  v5 = v3 - 6;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t getEnumTagSinglePayload for DispatchQoS.QoSClass(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

void *DispatchWorkItem.init(qos:flags:block:)(char *a1, dispatch_block_flags_t *a2, void *aBlock)
{
  v5 = *a1;
  v6 = *(a1 + 1);
  v7 = *a2;
  result = _Block_copy(aBlock);
  v9 = result;
  if (one-time initialization token for unspecified != -1)
  {
    result = swift_once();
  }

  if (static DispatchQoS.unspecified == v5 && v6 == qword_1ED451E78)
  {
    v11 = _swift_dispatch_block_create(v7, v9);
    goto LABEL_11;
  }

  if (v6 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v6 <= 0x7FFFFFFF)
  {
    v11 = _swift_dispatch_block_create_with_qos_class(v7, dword_19342E7BC[v5], v6, v9);
LABEL_11:
    v12 = v11;
    _Block_release(v9);
    _Block_release(aBlock);
    *(v3 + 16) = v12;
    return v3;
  }

  __break(1u);
  return result;
}

dispatch_block_t _swift_dispatch_block_create_with_qos_class(dispatch_block_flags_t a1, dispatch_qos_class_t a2, int a3, void *a4)
{
  v7 = a4;
  v8 = dispatch_block_create_with_qos_class(a1, a2, a3, v7);

  return v8;
}

void _swift_dispatch_apply_current(size_t a1, void *a2)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___swift_dispatch_apply_current_block_invoke;
  block[3] = &unk_1E73E55C0;
  v6 = a2;
  v3 = a2;
  dispatch_apply(a1, 0, block);
  v4 = v6;
}

uint64_t partial apply for thunk for @callee_guaranteed (@unowned Int) -> ()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t lazy protocol witness table accessor for type OS_dispatch_queue.SchedulerTimeType and conformance OS_dispatch_queue.SchedulerTimeType()
{
  result = lazy protocol witness table cache variable for type OS_dispatch_queue.SchedulerTimeType and conformance OS_dispatch_queue.SchedulerTimeType;
  if (!lazy protocol witness table cache variable for type OS_dispatch_queue.SchedulerTimeType and conformance OS_dispatch_queue.SchedulerTimeType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OS_dispatch_queue.SchedulerTimeType and conformance OS_dispatch_queue.SchedulerTimeType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OS_dispatch_queue.SchedulerTimeType and conformance OS_dispatch_queue.SchedulerTimeType;
  if (!lazy protocol witness table cache variable for type OS_dispatch_queue.SchedulerTimeType and conformance OS_dispatch_queue.SchedulerTimeType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OS_dispatch_queue.SchedulerTimeType and conformance OS_dispatch_queue.SchedulerTimeType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OS_dispatch_queue.SchedulerTimeType and conformance OS_dispatch_queue.SchedulerTimeType;
  if (!lazy protocol witness table cache variable for type OS_dispatch_queue.SchedulerTimeType and conformance OS_dispatch_queue.SchedulerTimeType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OS_dispatch_queue.SchedulerTimeType and conformance OS_dispatch_queue.SchedulerTimeType);
  }

  return result;
}

uint64_t getEnumTag for DispatchTimeInterval(uint64_t a1)
{
  if (*(a1 + 8) <= 3u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 4);
  }
}

uint64_t static OS_dispatch_queue.SchedulerTimeType.Stride.milliseconds(_:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v2 = 0x7FFFFFFFFFFFFFFFLL;
  if (result <= 0)
  {
    v2 = 0x8000000000000000;
  }

  if ((result * 1000000) >> 64 == (1000000 * result) >> 63)
  {
    v3 = 1000000 * result;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

uint64_t OS_dispatch_queue.schedule(options:_:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = a1[3];
  if (v6 == 1)
  {
    if (one-time initialization token for unspecified != -1)
    {
      v25 = a2;
      swift_once();
      a2 = v25;
    }

    v7 = 0;
    v8 = static DispatchQoS.unspecified;
    v9 = qword_1ED451E78;
LABEL_12:
    v33 = a2;
    v34 = a3;
    aBlock = MEMORY[0x1E69E9820];
    v30 = 1107296256;
    v31 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v32 = &block_descriptor_1;
    v16 = _Block_copy(&aBlock);
    v17 = _Block_copy(v16);
    v18 = _Block_copy(v17);
    v19 = one-time initialization token for unspecified;

    if (v19 != -1)
    {
      swift_once();
    }

    if (v8 == static DispatchQoS.unspecified && v9 == qword_1ED451E78)
    {
      if (v7 == DISPATCH_BLOCK_BARRIER)
      {
        _swift_dispatch_barrier_async(v4, v18);
        goto LABEL_21;
      }

      if (v7)
      {
        v20 = _Block_copy(v18);
        v21 = _swift_dispatch_block_create(v7, v20);
        _Block_release(v20);
        _Block_release(v18);
        v18 = v21;
      }
    }

    else
    {
      v27[0] = v8;
      v28 = v9;
      v26 = v7;
      type metadata accessor for DispatchWorkItem();
      swift_initStackObject();
      v18 = *(DispatchWorkItem.init(qos:flags:block:)(v27, &v26, v18) + 2);
      _Block_copy(v18);
    }

    _swift_dispatch_async(v4, v18);
LABEL_21:
    _Block_release(v17);
    _Block_release(v18);
    v22 = v16;
    goto LABEL_26;
  }

  v10 = *a1;
  v9 = a1[1];
  v7 = a1[2];
  v8 = *a1;
  if (!v6)
  {
    goto LABEL_12;
  }

  v33 = a2;
  v34 = a3;
  aBlock = MEMORY[0x1E69E9820];
  v30 = 1107296256;
  v31 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v32 = &block_descriptor_3;
  v11 = _Block_copy(&aBlock);
  v12 = _Block_copy(v11);
  v13 = _Block_copy(v12);
  outlined copy of OS_dispatch_queue.SchedulerOptions?(v10, v9, v7, v6);
  outlined copy of OS_dispatch_queue.SchedulerOptions?(v10, v9, v7, v6);

  _Block_copy(v13);
  if (one-time initialization token for unspecified != -1)
  {
    swift_once();
  }

  if (static DispatchQoS.unspecified == v8 && v9 == qword_1ED451E78)
  {
    if (v7)
    {
      v14 = _Block_copy(v13);
      v15 = _swift_dispatch_block_create(v7, v14);
      _Block_release(v13);
      _Block_release(v14);
      _Block_release(v13);
      v13 = v15;
    }

    else
    {
      _Block_release(v13);
    }
  }

  else
  {
    v27[0] = v8;
    v28 = v9;
    v26 = v7;
    type metadata accessor for DispatchWorkItem();
    swift_initStackObject();
    v23 = DispatchWorkItem.init(qos:flags:block:)(v27, &v26, v13);
    _Block_release(v13);
    v13 = v23[2];
    _Block_copy(v13);
  }

  _swift_dispatch_group_async(v6, v4, v13);
  _Block_release(v11);
  outlined consume of OS_dispatch_queue.SchedulerOptions?(v10, v9, v7, v6);
  outlined consume of OS_dispatch_queue.SchedulerOptions?(v10, v9, v7, v6);
  _Block_release(v12);
  outlined consume of OS_dispatch_queue.SchedulerOptions?(v10, v9, v7, v6);
  v22 = v13;
LABEL_26:
  _Block_release(v22);
}

void _swift_dispatch_block_cancel(void *a1)
{
  v1 = a1;
  dispatch_block_cancel(v1);
}

void OS_dispatch_queue.SchedulerTimeType.Stride.init(floatLiteral:)(uint64_t *a1@<X8>, double a2@<D0>)
{
  v2 = trunc(a2 * 1000000000.0);
  v3 = 0x8000000000000000;
  if (a2 > 0.0)
  {
    v3 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v2 < 9.22337204e18 && v2 > -9.22337204e18)
  {
    v3 = (a2 * 1000000000.0);
  }

  *a1 = v3;
}

dispatch_time_t protocol witness for Scheduler.now.getter in conformance OS_dispatch_queue@<X0>(dispatch_time_t *a1@<X8>)
{
  result = dispatch_time(0, 0);
  *a1 = result;
  return result;
}

dispatch_time_t protocol witness for Strideable.advanced(by:) in conformance OS_dispatch_queue.SchedulerTimeType@<X0>(int64_t *a1@<X0>, dispatch_time_t *a2@<X8>)
{
  result = dispatch_time(*v2, *a1);
  *a2 = result;
  return result;
}

void OS_dispatch_queue.schedule(after:interval:tolerance:options:_:)(dispatch_time_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v10 = *a1;
  v11 = *a2;
  v12 = *a3;
  v13 = _swift_dispatch_source_create_0(v6);
  if (((v12 | v11) & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v6 = v13;
  dispatch_source_set_timer(v13, v10, v11, v12);
  v21[4] = a4;
  v21[5] = a5;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 1107296256;
  v21[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v21[3] = &block_descriptor_9;
  a4 = _Block_copy(v21);
  v14 = one-time initialization token for unspecified;

  if (v14 != -1)
  {
LABEL_5:
    swift_once();
  }

  specialized OS_dispatch_source.setEventHandler(qos:flags:handler:)(static DispatchQoS.unspecified, qword_1ED451E78, 0, a4);
  _Block_release(a4);

  dispatch_resume(v6);
  *(swift_allocObject() + 16) = v6;
  v15 = type metadata accessor for AnyCancellable();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v18 = v6;
  v19 = AnyCancellable.init(_:)();
  v20 = MEMORY[0x1E695BF00];
  a6[3] = v15;
  a6[4] = v20;

  *a6 = v19;
}

uint64_t sub_19341FEA0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void specialized OS_dispatch_source.setEventHandler(qos:flags:handler:)(unsigned __int8 a1, uint64_t a2, uint64_t a3, void *aBlock)
{
  v5 = v4;
  v9 = _Block_copy(aBlock);
  v10 = v9;
  if (!v9)
  {
    goto LABEL_12;
  }

  _Block_copy(v9);
  if (one-time initialization token for unspecified != -1)
  {
    swift_once();
  }

  v11 = static DispatchQoS.unspecified;
  v12 = qword_1ED451E78;
  _Block_release(v10);
  v13 = v11 == a1 && v12 == a2;
  if (v13 && a3 == 0)
  {
LABEL_12:
    _swift_dispatch_source_set_event_handler_0(v5, v10);

    _Block_release(v10);
  }

  else
  {
    v17[0] = a1;
    v18 = a2;
    v16 = a3;
    type metadata accessor for DispatchWorkItem();
    swift_initStackObject();
    _Block_copy(v10);
    v15 = *(DispatchWorkItem.init(qos:flags:block:)(v17, &v16, v10) + 2);
    _Block_copy(v15);
    _swift_dispatch_source_set_event_handler_0(v5, v15);
    _Block_release(v10);
    _Block_release(v15);
  }
}

double one-time initialization function for timebaseInfo()
{
  v2[1] = *MEMORY[0x1E69E9840];
  v2[0] = 0x100000001;
  mach_timebase_info(v2);
  result = *v2;
  static DispatchTime.timebaseInfo = v2[0];
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

size_t protocol witness for Collection.endIndex.getter in conformance DispatchData@<X0>(size_t *a1@<X8>)
{
  result = dispatch_data_get_size(*v1);
  *a1 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type OS_dispatch_source.TimerFlags and conformance OS_dispatch_source.TimerFlags()
{
  result = lazy protocol witness table cache variable for type OS_dispatch_source.TimerFlags and conformance OS_dispatch_source.TimerFlags;
  if (!lazy protocol witness table cache variable for type OS_dispatch_source.TimerFlags and conformance OS_dispatch_source.TimerFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OS_dispatch_source.TimerFlags and conformance OS_dispatch_source.TimerFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OS_dispatch_source.TimerFlags and conformance OS_dispatch_source.TimerFlags;
  if (!lazy protocol witness table cache variable for type OS_dispatch_source.TimerFlags and conformance OS_dispatch_source.TimerFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OS_dispatch_source.TimerFlags and conformance OS_dispatch_source.TimerFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OS_dispatch_source.TimerFlags and conformance OS_dispatch_source.TimerFlags;
  if (!lazy protocol witness table cache variable for type OS_dispatch_source.TimerFlags and conformance OS_dispatch_source.TimerFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OS_dispatch_source.TimerFlags and conformance OS_dispatch_source.TimerFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OS_dispatch_source.TimerFlags and conformance OS_dispatch_source.TimerFlags;
  if (!lazy protocol witness table cache variable for type OS_dispatch_source.TimerFlags and conformance OS_dispatch_source.TimerFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OS_dispatch_source.TimerFlags and conformance OS_dispatch_source.TimerFlags);
  }

  return result;
}

void OS_dispatch_source_timer.scheduleRepeating(deadline:interval:leeway:)(dispatch_time_t *a1, uint64_t a2, double a3)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *(a2 + 8);
  objc_opt_self();
  v7 = swift_dynamicCastObjCClassUnconditional();
  if (fabs(a3) == INFINITY)
  {
    v8 = -1;
    if (v6 > 1)
    {
      goto LABEL_3;
    }

LABEL_10:
    if (v6)
    {
      v11 = 1000000;
    }

    else
    {
      v11 = 1000000000;
    }

    goto LABEL_14;
  }

  v10 = a3 * 1000000000.0;
  if (COERCE__INT64(fabs(a3 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (v10 <= -1.0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v10 >= 1.84467441e19)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v8 = v10;
  if (v6 <= 1)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v6 == 2)
  {
    v11 = 1000;
LABEL_14:
    v9 = v5 * v11;
    if ((v5 * v11) >> 64 == (v5 * v11) >> 63)
    {
      goto LABEL_17;
    }

    if (v5 <= 0)
    {
      goto LABEL_24;
    }

    goto LABEL_16;
  }

  v9 = v5;
  if (v6 == 3)
  {
LABEL_17:
    if ((v9 & 0x8000000000000000) == 0)
    {
      goto LABEL_18;
    }

LABEL_24:
    __break(1u);
    return;
  }

LABEL_16:
  v9 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_18:

  dispatch_source_set_timer(v7, v4, v8, v9);
}

void _swift_dispatch_barrier_async(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  dispatch_barrier_async(v3, v4);
}

void partial apply for implicit closure #2 in implicit closure #1 in OS_dispatch_queue.schedule(after:interval:tolerance:options:_:)()
{
  v1 = *(v0 + 16);
  swift_getObjectType();
  OS_dispatch_source.cancel()();
}

uint64_t OS_dispatch_source.setEventHandler(handler:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  objc_opt_self();
  v4 = swift_dynamicCastObjCClassUnconditional();
  v5 = *(a1 + 16);

  return a3(v4, v5);
}

uint64_t OS_dispatch_queue.SchedulerTimeType.Stride.init(integerLiteral:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v2 = 0x7FFFFFFFFFFFFFFFLL;
  if (result <= 0)
  {
    v2 = 0x8000000000000000;
  }

  if ((result * 1000000000) >> 64 == (1000000000 * result) >> 63)
  {
    v3 = 1000000000 * result;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

uint64_t storeEnumTagSinglePayload for DispatchQoS.QoSClass(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t DispatchTime.uptimeNanoseconds.getter()
{
  result = *v0;
  if (*v0 != -1)
  {
    if (one-time initialization token for timebaseInfo != -1)
    {
      v2 = *v0;
      swift_once();
      result = v2;
    }

    if (static DispatchTime.timebaseInfo != HIDWORD(static DispatchTime.timebaseInfo))
    {
      if (is_mul_ok(result, static DispatchTime.timebaseInfo))
      {
        if (HIDWORD(static DispatchTime.timebaseInfo))
        {
          return result * static DispatchTime.timebaseInfo / HIDWORD(static DispatchTime.timebaseInfo);
        }

        else
        {
          __break(1u);
        }
      }

      else
      {
        return -1;
      }
    }
  }

  return result;
}

unint64_t DispatchTime.init(uptimeNanoseconds:)@<X0>(unint64_t result@<X0>, unint64_t *a2@<X8>)
{
  if (result == -1)
  {
    goto LABEL_5;
  }

  if (one-time initialization token for timebaseInfo != -1)
  {
    v6 = result;
    v7 = a2;
    swift_once();
    result = v6;
    a2 = v7;
  }

  if (static DispatchTime.timebaseInfo == HIDWORD(static DispatchTime.timebaseInfo))
  {
LABEL_5:
    *a2 = result;
    return result;
  }

  if (!is_mul_ok(result, HIDWORD(static DispatchTime.timebaseInfo)))
  {
LABEL_10:
    result = -1;
    *a2 = -1;
    return result;
  }

  v2 = static DispatchTime.timebaseInfo - 1;
  if (static DispatchTime.timebaseInfo)
  {
    v3 = result * HIDWORD(static DispatchTime.timebaseInfo);
    v4 = __CFADD__(v3, v2);
    v5 = v3 + v2;
    if (!v4)
    {
      result = v5 / static DispatchTime.timebaseInfo;
      *a2 = result;
      return result;
    }

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

void _swift_dispatch_source_set_cancel_handler(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  dispatch_source_set_cancel_handler(v3, v4);
}

dispatch_source_t static OS_dispatch_source.makeReadSource(fileDescriptor:queue:)(dispatch_source_t result, void *a2, const dispatch_source_type_s *a3)
{
  if ((result & 0x80000000) == 0)
  {
    return _swift_dispatch_source_create(a3, result, 0, a2);
  }

  __break(1u);
  return result;
}

dispatch_time_t static DispatchWallTime.now()@<X0>(dispatch_time_t *a1@<X8>)
{
  result = dispatch_walltime(0, 0);
  *a1 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type OS_dispatch_source.MemoryPressureEvent and conformance OS_dispatch_source.MemoryPressureEvent()
{
  result = lazy protocol witness table cache variable for type OS_dispatch_source.MemoryPressureEvent and conformance OS_dispatch_source.MemoryPressureEvent;
  if (!lazy protocol witness table cache variable for type OS_dispatch_source.MemoryPressureEvent and conformance OS_dispatch_source.MemoryPressureEvent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OS_dispatch_source.MemoryPressureEvent and conformance OS_dispatch_source.MemoryPressureEvent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OS_dispatch_source.MemoryPressureEvent and conformance OS_dispatch_source.MemoryPressureEvent;
  if (!lazy protocol witness table cache variable for type OS_dispatch_source.MemoryPressureEvent and conformance OS_dispatch_source.MemoryPressureEvent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OS_dispatch_source.MemoryPressureEvent and conformance OS_dispatch_source.MemoryPressureEvent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OS_dispatch_source.MemoryPressureEvent and conformance OS_dispatch_source.MemoryPressureEvent;
  if (!lazy protocol witness table cache variable for type OS_dispatch_source.MemoryPressureEvent and conformance OS_dispatch_source.MemoryPressureEvent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OS_dispatch_source.MemoryPressureEvent and conformance OS_dispatch_source.MemoryPressureEvent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OS_dispatch_source.MemoryPressureEvent and conformance OS_dispatch_source.MemoryPressureEvent;
  if (!lazy protocol witness table cache variable for type OS_dispatch_source.MemoryPressureEvent and conformance OS_dispatch_source.MemoryPressureEvent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OS_dispatch_source.MemoryPressureEvent and conformance OS_dispatch_source.MemoryPressureEvent);
  }

  return result;
}

intptr_t _swift_dispatch_block_testcancel(void *a1)
{
  v1 = a1;
  v2 = dispatch_block_testcancel(v1);

  return v2;
}

uint64_t OS_dispatch_queue.schedule(after:tolerance:options:_:)(dispatch_time_t *a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  v6 = *a1;
  if (*(a3 + 3) == 1)
  {
    if (one-time initialization token for unspecified != -1)
    {
      v18 = a4;
      swift_once();
      a4 = v18;
    }

    v7 = 0;
    v8 = &qword_1ED451E78;
    v9 = static DispatchQoS.unspecified;
  }

  else
  {
    v7 = *(a3 + 2);
    v8 = (a3 + 8);
    v9 = *a3;
  }

  v10 = *v8;
  aBlock[4] = a4;
  aBlock[5] = a5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_6;
  v11 = _Block_copy(aBlock);
  v12 = _Block_copy(v11);
  v13 = _Block_copy(v12);

  _Block_copy(v13);
  if (one-time initialization token for unspecified != -1)
  {
    swift_once();
  }

  if (v9 == static DispatchQoS.unspecified && v10 == qword_1ED451E78)
  {
    if (v7)
    {
      v14 = _Block_copy(v13);
      v15 = _swift_dispatch_block_create(v7, v14);
      _Block_release(v13);
      _Block_release(v14);
      _Block_release(v13);
      v13 = v15;
    }

    else
    {
      _Block_release(v13);
    }
  }

  else
  {
    v21[0] = v9;
    v22 = v10;
    v20 = v7;
    type metadata accessor for DispatchWorkItem();
    swift_initStackObject();
    v16 = DispatchWorkItem.init(qos:flags:block:)(v21, &v20, v13);
    _Block_release(v13);
    v13 = v16[2];
    _Block_copy(v13);
  }

  _swift_dispatch_after(v6, v19, v13);
  _Block_release(v13);
  _Block_release(v12);
  _Block_release(v11);
}

dispatch_time_t DispatchWallTime.init(timespec:)@<X0>(__darwin_time_t a1@<X0>, uint64_t a2@<X1>, dispatch_time_t *a3@<X8>)
{
  v7 = *MEMORY[0x1E69E9840];
  when.tv_sec = a1;
  when.tv_nsec = a2;
  result = dispatch_walltime(&when, 0);
  *a3 = result;
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

id DispatchData.init(bytes:)@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (a1)
  {
    v4 = a2 - a1;
    v6 = 0;
    _swift_dispatch_data_create(a1, v4, 0, v6);
    _Block_release(v6);
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    type metadata accessor for OS_dispatch_data();
    swift_dynamicCast();
    result = v8;
  }

  else
  {
    result = _swift_dispatch_data_empty();
  }

  *a3 = result;
  return result;
}

dispatch_data_t _swift_dispatch_data_create(const void *a1, size_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = dispatch_data_create(a1, a2, v7, v8);

  return v9;
}

unint64_t type metadata accessor for OS_dispatch_data()
{
  result = lazy cache variable for type metadata for OS_dispatch_data;
  if (!lazy cache variable for type metadata for OS_dispatch_data)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_dispatch_data);
  }

  return result;
}

uint64_t _sSo17OS_dispatch_queueCSch8DispatchSch7enqueueyys11ExecutorJobVnFTW(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6D880](a1, a2, WitnessTable);
}

uint64_t protocol witness for Executor.enqueue(_:) in conformance OS_dispatch_queue()
{
  return MEMORY[0x1EEE6D888]();
}

{
  return MEMORY[0x1EEE6D880]();
}

uint64_t _sSo17OS_dispatch_queueCSch8DispatchSch7enqueueyyScJFTWTm(uint64_t a1)
{
  _swift_job_set_executor_queue(a1, v1);
  v3 = _swift_job_priority(a1);

  return MEMORY[0x1EEE6FE28](v1, a1, v3);
}

void OS_dispatch_source_data_add.add(data:)(uintptr_t a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClassUnconditional();

  dispatch_source_merge_data(v2, a1);
}

uint64_t storeEnumTagSinglePayload for DispatchTimeInterval(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t getEnumTagSinglePayload for DispatchTimeInterval(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 9))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 8);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_193421108()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void _swift_dispatch_group_async(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  dispatch_group_async(v5, v6, v7);
}

BOOL specialized static DispatchTimeInterval.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  v7 = v3 == 4 && v2 == 0;
  v9 = v5 == 4 && v4 == 0;
  result = v7 & v9;
  if (!v7 && !v9)
  {
    if (v3 <= 1)
    {
      if (v2 > 0)
      {
        v11 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = 0x8000000000000000;
      }

      if ((v2 * 1000000000) >> 64 == (1000000000 * v2) >> 63)
      {
        v12 = 1000000000 * v2;
      }

      else
      {
        v12 = v11;
      }

      v13 = 1000000 * v2;
      v14 = (v2 * 1000000) >> 64 != (1000000 * v2) >> 63;
      if (v2 > 0)
      {
        v2 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v2 = 0x8000000000000000;
      }

      if (!v14)
      {
        v2 = v13;
      }

      if (!v3)
      {
        v2 = v12;
      }
    }

    else
    {
      if (v3 == 2)
      {
        v15 = 1000 * v2;
        v16 = (v2 * 1000) >> 64 != (1000 * v2) >> 63;
        v17 = v2 <= 0;
        v2 = 0x7FFFFFFFFFFFFFFFLL;
        if (v17)
        {
          v2 = 0x8000000000000000;
        }

        if (!v16)
        {
          v2 = v15;
        }

        if (*(a2 + 8) <= 1u)
        {
          goto LABEL_42;
        }

        goto LABEL_34;
      }

      if (v3 != 3)
      {
        v2 = 0x7FFFFFFFFFFFFFFFLL;
        if (*(a2 + 8) <= 1u)
        {
          goto LABEL_42;
        }

        goto LABEL_34;
      }
    }

    if (*(a2 + 8) <= 1u)
    {
LABEL_42:
      if (v4 > 0)
      {
        v18 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v18 = 0x8000000000000000;
      }

      if ((v4 * 1000000000) >> 64 == (1000000000 * v4) >> 63)
      {
        v19 = 1000000000 * v4;
      }

      else
      {
        v19 = v18;
      }

      v20 = 1000000 * v4;
      v21 = (v4 * 1000000) >> 64 != (1000000 * v4) >> 63;
      if (v4 > 0)
      {
        v4 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v4 = 0x8000000000000000;
      }

      if (!v21)
      {
        v4 = v20;
      }

      if (!*(a2 + 8))
      {
        v4 = v19;
      }

      return v2 == v4;
    }

LABEL_34:
    if (v5 == 2)
    {
      v22 = 1000 * v4;
      v23 = (v4 * 1000) >> 64 != (1000 * v4) >> 63;
      v17 = v4 <= 0;
      v4 = 0x7FFFFFFFFFFFFFFFLL;
      if (v17)
      {
        v4 = 0x8000000000000000;
      }

      if (!v23)
      {
        v4 = v22;
      }
    }

    else if (v5 != 3)
    {
      v4 = 0x7FFFFFFFFFFFFFFFLL;
    }

    return v2 == v4;
  }

  return result;
}

unint64_t *DispatchTime.distance(to:)@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  if (*result != -1)
  {
    if (one-time initialization token for timebaseInfo != -1)
    {
      v11 = a2;
      result = swift_once();
      a2 = v11;
    }

    if (static DispatchTime.timebaseInfo != HIDWORD(static DispatchTime.timebaseInfo))
    {
      if (!is_mul_ok(v3, static DispatchTime.timebaseInfo))
      {
        v3 = -1;
        v5 = -1;
        v6 = -1;
        if (v4 == -1)
        {
          goto LABEL_20;
        }

        goto LABEL_13;
      }

      if (!HIDWORD(static DispatchTime.timebaseInfo))
      {
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      v3 = v3 * static DispatchTime.timebaseInfo / HIDWORD(static DispatchTime.timebaseInfo);
    }
  }

  if (v4 == -1)
  {
    goto LABEL_19;
  }

  if (one-time initialization token for timebaseInfo != -1)
  {
    v12 = a2;
    result = swift_once();
    a2 = v12;
  }

LABEL_13:
  if (static DispatchTime.timebaseInfo == HIDWORD(static DispatchTime.timebaseInfo))
  {
    goto LABEL_19;
  }

  if (!is_mul_ok(v4, static DispatchTime.timebaseInfo))
  {
    v5 = -1;
    v6 = -1;
    if (v3 != -1)
    {
LABEL_24:
      v9 = v5 >= v3;
      v10 = v5 - v3;
      if (v9)
      {
        if (v10 >= 0)
        {
          v7 = -v10;
        }

        else
        {
          v7 = 0;
        }

        if (v10 >= 0)
        {
          v8 = 3;
        }

        else
        {
          v8 = 4;
        }

        goto LABEL_33;
      }

      goto LABEL_35;
    }

    goto LABEL_20;
  }

  if (HIDWORD(static DispatchTime.timebaseInfo))
  {
    v4 = v4 * static DispatchTime.timebaseInfo / HIDWORD(static DispatchTime.timebaseInfo);
LABEL_19:
    v5 = v4;
    v6 = v3;
    if (v3 < v4)
    {
LABEL_23:
      v3 = v6;
      if (v6 >= v5)
      {
        v7 = 0;
        v8 = 4;
        goto LABEL_33;
      }

      goto LABEL_24;
    }

LABEL_20:
    v7 = v6 - v5;
    if (v6 < v5)
    {
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    if ((v7 & 0x8000000000000000) == 0)
    {
      v8 = 3;
LABEL_33:
      *a2 = v7;
      *(a2 + 8) = v8;
      return result;
    }

    goto LABEL_23;
  }

LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_19342157C@<X0>(uint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = specialized BidirectionalCollection.index(_:offsetBy:)(*a1, a2);
  *a3 = result;
  return result;
}

void _swift_dispatch_data_apply(void *a1, void *a2)
{
  applier[0] = MEMORY[0x1E69E9820];
  applier[1] = 3221225472;
  applier[2] = ___swift_dispatch_data_apply_block_invoke;
  applier[3] = &unk_1E73E5570;
  v7 = a2;
  v3 = a1;
  v4 = a2;
  dispatch_data_apply(v3, applier);
  v5 = v7;
}

uint64_t DispatchData.enumerateBytes(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = partial apply for closure #1 in DispatchData.enumerateBytesCommon(_:);
  *(v7 + 24) = v6;
  v10[4] = partial apply for thunk for @callee_guaranteed (@in_guaranteed Any, @unowned Int, @unowned UnsafeRawPointer, @unowned Int) -> (@unowned UInt32);
  v10[5] = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = thunk for @escaping @callee_guaranteed (@in_guaranteed Any, @unowned Int, @unowned UnsafeRawPointer, @unowned Int) -> (@unowned UInt32);
  v10[3] = &block_descriptor;
  v8 = _Block_copy(v10);

  _swift_dispatch_data_apply(v5, v8);
  _Block_release(v8);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed (@in_guaranteed Any, @unowned Int, @unowned UnsafeRawPointer, @unowned Int) -> (@unowned UInt32)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  v13[3] = swift_getObjectType();
  v13[0] = a2;
  swift_unknownObjectRetain();
  v11 = v10(v13, a3, a4, a5);
  __swift_destroy_boxed_opaque_existential_0(v13);
  return v11;
}

BOOL ___swift_dispatch_data_apply_block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 32);
  v9 = *(v8 + 16);
  v10 = a2;
  LODWORD(a5) = v9(v8, v10, a3, a4, a5);

  return a5 != 0;
}

uint64_t partial apply for thunk for @callee_guaranteed (@in_guaranteed Any, @unowned Int, @unowned UnsafeRawPointer, @unowned Int) -> (@unowned UInt32)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

BOOL partial apply for closure #1 in DispatchData.enumerateBytesCommon(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v8 = 0;
  v5(a3, a4, a2, &v8);
  return (v8 & 1) == 0;
}

uint64_t specialized BidirectionalCollection.index(_:offsetBy:)(uint64_t result, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
LABEL_5:
    if ((result ^ 0x7FFFFFFFFFFFFFFFuLL) >= a2)
    {
      __break(1u);
      return result;
    }

    goto LABEL_6;
  }

  if (!a2)
  {
    return result;
  }

  if ((result ^ 0x7FFFFFFFFFFFFFFFuLL) <= a2 - 1)
  {
    __break(1u);
    goto LABEL_5;
  }

LABEL_6:
  result += a2;
  return result;
}

uint64_t specialized BidirectionalCollection.distance(from:to:)(unint64_t a1, uint64_t a2)
{
  v2 = a1;
  v4 = __OFSUB__(a2, a1);
  result = a2 - a1;
  v3 = result < 0;
  if (!((result < 0) ^ v4 | (result == 0)))
  {
    v2 -= a2;
    v4 = __OFSUB__(v2, 0x8000000000000001);
    v3 = (v2 + 0x7FFFFFFFFFFFFFFFLL) < 0;
    if (v2 >= 0x8000000000000001)
    {
      return result;
    }

    __break(1u);
  }

  if (v3 == v4)
  {
    return 0;
  }

  v6 = ~a2 + v2;
  v7 = v2 ^ 0x8000000000000000;
  if (v6 >= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v7 <= v6)
  {
LABEL_13:
    __break(1u);
  }

  return result;
}

id protocol witness for Collection.subscript.getter in conformance DispatchData@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  *(a2 + 16) = *v2;
  *a2 = *a1;
  return v3;
}

uint64_t _s8Dispatch0A4DataVSkAASk5index_8offsetBy07limitedE05IndexQzSgAH_SiAHtFTW_0@<X0>(uint64_t *a1@<X0>, int64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

void *protocol witness for SetAlgebra.remove(_:) in conformance DispatchWorkItemFlags@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *protocol witness for SetAlgebra.update(with:) in conformance DispatchWorkItemFlags@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance DispatchWorkItemFlags@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t _sSo33OS_dispatch_queue_serial_executorCScf8DispatchScf7enqueueyys3JobVnFTW_0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6D888](a1, a2, WitnessTable);
}

uint64_t getEnumTagSinglePayload for DispatchWorkItemFlags(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DispatchWorkItemFlags(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_193421D08()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_193421D40()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_193421E04()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

id one-time initialization function for empty()
{
  result = _swift_dispatch_data_empty();
  static DispatchData.empty = result;
  return result;
}

id static DispatchData.empty.getter@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for empty != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = static DispatchData.empty;
  *a1 = static DispatchData.empty;

  return v2;
}

id DispatchData.init(bytes:)@<X0>(const void *a1@<X0>, size_t a2@<X1>, void *a3@<X8>)
{
  if (a1)
  {
    v6 = 0;
    _swift_dispatch_data_create(a1, a2, 0, v6);
    _Block_release(v6);
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    type metadata accessor for OS_dispatch_data();
    swift_dynamicCast();
    result = v8;
  }

  else
  {
    result = _swift_dispatch_data_empty();
  }

  *a3 = result;
  return result;
}

void DispatchData.init(bytesNoCopy:deallocator:)(const void *a1@<X0>, size_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = *(a3 + 8);
  if (v7)
  {
    if (v7 != 1)
    {
      v11 = *a3;
      v9 = *a3;
      _Block_copy(v7);
      outlined consume of DispatchData.Deallocator(v11, v7);
      if (a1)
      {
        goto LABEL_6;
      }

LABEL_8:
      v10 = _swift_dispatch_data_empty();
      _Block_release(v7);

      goto LABEL_9;
    }

    v8 = _swift_dispatch_data_destructor_munmap();
  }

  else
  {
    v8 = _swift_dispatch_data_destructor_free();
  }

  v7 = v8;
  v9 = 0;
  if (!a1)
  {
    goto LABEL_8;
  }

LABEL_6:
  _swift_dispatch_data_create(a1, a2, v9, v7);
  _bridgeAnyObjectToAny(_:)();
  _Block_release(v7);

  swift_unknownObjectRelease();
  type metadata accessor for OS_dispatch_data();
  swift_dynamicCast();
  v10 = v12;
LABEL_9:
  *a4 = v10;
}

void outlined consume of DispatchData.Deallocator(void *a1, const void *a2)
{
  if (a2 >= 2)
  {

    _Block_release(a2);
  }
}

id _swift_dispatch_data_destructor_munmap()
{
  v0 = _Block_copy(*MEMORY[0x1E69E9650]);

  return v0;
}

id _swift_dispatch_data_destructor_free()
{
  v0 = _Block_copy(*MEMORY[0x1E69E9648]);

  return v0;
}

void DispatchData.init(bytesNoCopy:deallocator:)(const void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = *(a3 + 8);
  if (v7)
  {
    if (v7 != 1)
    {
      v11 = *a3;
      v9 = *a3;
      _Block_copy(v7);
      outlined consume of DispatchData.Deallocator(v11, v7);
      if (a1)
      {
        goto LABEL_6;
      }

LABEL_8:
      v10 = _swift_dispatch_data_empty();
      _Block_release(v7);

      goto LABEL_9;
    }

    v8 = _swift_dispatch_data_destructor_munmap();
  }

  else
  {
    v8 = _swift_dispatch_data_destructor_free();
  }

  v7 = v8;
  v9 = 0;
  if (!a1)
  {
    goto LABEL_8;
  }

LABEL_6:
  _swift_dispatch_data_create(a1, a2 - a1, v9, v7);
  _bridgeAnyObjectToAny(_:)();
  _Block_release(v7);

  swift_unknownObjectRelease();
  type metadata accessor for OS_dispatch_data();
  swift_dynamicCast();
  v10 = v12;
LABEL_9:
  *a4 = v10;
}

void DispatchData.withUnsafeBytes<A, B>(body:)(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  buffer_ptr[1] = *MEMORY[0x1E69E9840];
  v7 = *v4;
  size_ptr = 0;
  buffer_ptr[0] = 0;
  v8 = dispatch_data_create_map(v7, buffer_ptr, &size_ptr);
  if (!buffer_ptr[0])
  {
LABEL_10:
    __break(1u);
  }

  v9 = *(*(a4 - 8) + 72);
  if (!v9)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v9 == -1 && size_ptr == 0x8000000000000000)
  {
    goto LABEL_9;
  }

  a1();

  v11 = *MEMORY[0x1E69E9840];
}

uint64_t DispatchData.enumerateBytes(block:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = closure #1 in DispatchData.enumerateBytesCommon(_:)partial apply;
  *(v7 + 24) = v6;
  v10[4] = thunk for @callee_guaranteed (@in_guaranteed Any, @unowned Int, @unowned UnsafeRawPointer, @unowned Int) -> (@unowned UInt32)partial apply;
  v10[5] = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = thunk for @escaping @callee_guaranteed (@in_guaranteed Any, @unowned Int, @unowned UnsafeRawPointer, @unowned Int) -> (@unowned UInt32);
  v10[3] = &block_descriptor_14;
  v8 = _Block_copy(v10);

  _swift_dispatch_data_apply(v5, v8);
  _Block_release(v8);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  return result;
}

void DispatchData.append(_:count:)(const void *a1, size_t a2)
{
  v5 = 0;
  _swift_dispatch_data_create(a1, a2, 0, v5);
  _Block_release(v5);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for OS_dispatch_data();
  swift_dynamicCast();
  concat = dispatch_data_create_concat(*v2, data2);
  v7 = *v2;

  *v2 = concat;
}

void DispatchData.append(_:)(dispatch_data_t *a1)
{
  concat = dispatch_data_create_concat(*v1, *a1);

  *v1 = concat;
}

void DispatchData.append(_:)(const void *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = a2 - a1;
    v5 = 0;
    _swift_dispatch_data_create(a1, v3, 0, v5);
    _Block_release(v5);
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    type metadata accessor for OS_dispatch_data();
    swift_dynamicCast();
    concat = dispatch_data_create_concat(*v2, data2);
    v7 = *v2;

    *v2 = concat;
  }
}

void DispatchData.append<A>(_:)()
{
  v1 = MEMORY[0x193B167E0]();
  if (v1)
  {
    v3 = v2 - v1;
    v4 = v1;
    v5 = 0;
    _swift_dispatch_data_create(v4, v3, 0, v5);
    _Block_release(v5);
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    type metadata accessor for OS_dispatch_data();
    swift_dynamicCast();
    concat = dispatch_data_create_concat(*v0, data2);
    v7 = *v0;

    *v0 = concat;
  }
}

uint64_t closure #1 in DispatchData._copyBytesHelper(to:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int64_t a7, int64_t *a8, uint64_t a9)
{
  if (a2 >= a6)
  {
    return 0;
  }

  if (a2 >= a5)
  {
    if (a4 < 1)
    {
      return 1;
    }

    v9 = 0;
LABEL_9:
    if (__OFSUB__(a7, *a8))
    {
      __break(1u);
    }

    else if (!__OFSUB__(a4, v9))
    {
      if (a4 - v9 >= a7 - *a8)
      {
        v12 = a7 - *a8;
      }

      else
      {
        v12 = a4 - v9;
      }

      result = memcpy((a9 + *a8), (a3 + v9), v12);
      v14 = *a8 + v12;
      if (!__OFADD__(*a8, v12))
      {
        *a8 = v14;
        return v14 < a7;
      }

      goto LABEL_19;
    }

    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v9 = a5 - a2;
  if (!__OFSUB__(a5, a2))
  {
    if (v9 >= a4)
    {
      return 1;
    }

    goto LABEL_9;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed OS_dispatch_data, @unowned Int, @unowned UnsafeRawPointer, @unowned Int) -> (@unowned Bool)(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = a2;
  v5 = v3();

  return v5 & 1;
}

uint64_t DispatchData.copyBytes(to:count:)(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
LABEL_6:
    __break(1u);
    return result;
  }

  v4 = *v2;
  v11 = 0;
  if (a2)
  {
    v5 = result;
    v6 = swift_allocObject();
    v6[2] = 0;
    v6[3] = a2;
    v6[4] = a2;
    v6[5] = &v11;
    v6[6] = v5;
    v7 = swift_allocObject();
    *(v7 + 16) = partial apply for closure #1 in DispatchData._copyBytesHelper(to:from:);
    *(v7 + 24) = v6;
    aBlock[4] = partial apply for thunk for @callee_guaranteed (@guaranteed OS_dispatch_data, @unowned Int, @unowned UnsafeRawPointer, @unowned Int) -> (@unowned Bool);
    aBlock[5] = v7;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed OS_dispatch_data, @unowned Int, @unowned UnsafeRawPointer, @unowned Int) -> (@unowned Bool);
    aBlock[3] = &block_descriptor_23;
    v8 = _Block_copy(aBlock);

    dispatch_data_apply(v4, v8);
    _Block_release(v8);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      goto LABEL_6;
    }
  }

  return result;
}

uint64_t partial apply for thunk for @callee_guaranteed (@guaranteed OS_dispatch_data, @unowned Int, @unowned UnsafeRawPointer, @unowned Int) -> (@unowned Bool)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1() & 1;
}

uint64_t DispatchData.copyBytes(to:count:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    if (a3 < 0)
    {
      __break(1u);
    }

    else
    {
      v5 = *v3;
      v12 = 0;
      if (!a3)
      {
        return result;
      }

      v6 = result;
      v7 = swift_allocObject();
      v7[2] = 0;
      v7[3] = a3;
      v7[4] = a3;
      v7[5] = &v12;
      v7[6] = v6;
      v8 = swift_allocObject();
      *(v8 + 16) = closure #1 in DispatchData._copyBytesHelper(to:from:)partial apply;
      *(v8 + 24) = v7;
      aBlock[4] = thunk for @callee_guaranteed (@guaranteed OS_dispatch_data, @unowned Int, @unowned UnsafeRawPointer, @unowned Int) -> (@unowned Bool)partial apply;
      aBlock[5] = v8;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed OS_dispatch_data, @unowned Int, @unowned UnsafeRawPointer, @unowned Int) -> (@unowned Bool);
      aBlock[3] = &block_descriptor_34;
      v9 = _Block_copy(aBlock);

      dispatch_data_apply(v5, v9);
      _Block_release(v9);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t DispatchData.copyBytes(to:from:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v14 = 0;
  if (a2 != a3)
  {
    v7 = a3 - a2;
    if (__OFSUB__(a3, a2))
    {
      __break(1u);
    }

    else
    {
      v8 = result;
      v9 = swift_allocObject();
      v9[2] = a2;
      v9[3] = a3;
      v9[4] = v7;
      v9[5] = &v14;
      v9[6] = v8;
      v10 = swift_allocObject();
      *(v10 + 16) = closure #1 in DispatchData._copyBytesHelper(to:from:)partial apply;
      *(v10 + 24) = v9;
      aBlock[4] = thunk for @callee_guaranteed (@guaranteed OS_dispatch_data, @unowned Int, @unowned UnsafeRawPointer, @unowned Int) -> (@unowned Bool)partial apply;
      aBlock[5] = v10;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed OS_dispatch_data, @unowned Int, @unowned UnsafeRawPointer, @unowned Int) -> (@unowned Bool);
      aBlock[3] = &block_descriptor_45;
      v11 = _Block_copy(aBlock);

      dispatch_data_apply(v4, v11);
      _Block_release(v11);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t DispatchData.copyBytes(to:from:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    v5 = *v4;
    v15 = 0;
    if (a3 != a4)
    {
      v6 = a4 - a3;
      if (__OFSUB__(a4, a3))
      {
        __break(1u);
      }

      else
      {
        v7 = result;
        v10 = swift_allocObject();
        v10[2] = a3;
        v10[3] = a4;
        v10[4] = v6;
        v10[5] = &v15;
        v10[6] = v7;
        v11 = swift_allocObject();
        *(v11 + 16) = closure #1 in DispatchData._copyBytesHelper(to:from:)partial apply;
        *(v11 + 24) = v10;
        aBlock[4] = thunk for @callee_guaranteed (@guaranteed OS_dispatch_data, @unowned Int, @unowned UnsafeRawPointer, @unowned Int) -> (@unowned Bool)partial apply;
        aBlock[5] = v11;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed OS_dispatch_data, @unowned Int, @unowned UnsafeRawPointer, @unowned Int) -> (@unowned Bool);
        aBlock[3] = &block_descriptor_56;
        v12 = _Block_copy(aBlock);

        dispatch_data_apply(v5, v12);
        _Block_release(v12);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if ((isEscapingClosureAtFileLocation & 1) == 0)
        {
          return result;
        }
      }

      __break(1u);
    }
  }

  return result;
}

unint64_t DispatchData.copyBytes<A>(to:from:)(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, char a5, uint64_t a6)
{
  v12 = *v6;
  result = dispatch_data_get_size(*v6);
  if (result < 1)
  {
    return 0;
  }

  if (a5)
  {
    v14 = *(*(a6 - 8) + 72);
    v15 = a2 * v14;
    if ((a2 * v14) >> 64 == (a2 * v14) >> 63)
    {
      if (result >= v15)
      {
        v16 = a2 * v14;
      }

      else
      {
        v16 = result;
      }

      if ((v15 & 0x8000000000000000) == 0)
      {
        a3 = 0;
        goto LABEL_21;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v17 = a4 - a3;
  if (a4 == a3)
  {
    return 0;
  }

  if (result <= a3 || result < a4)
  {
    goto LABEL_28;
  }

  v20 = *(*(a6 - 8) + 72);
  if ((a2 * v20) >> 64 != (a2 * v20) >> 63)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v17 >= a2 * v20)
  {
    v17 = a2 * v20;
  }

  v16 = a3 + v17;
  if (__OFADD__(a3, v17))
  {
    goto LABEL_30;
  }

  if (v16 < a3)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

LABEL_21:
  v18 = v16 - a3;
  if (v16 == a3)
  {
    return v18;
  }

  result = UnsafeMutableBufferPointer.baseAddress.getter();
  if (result)
  {
    v21 = result;
    v27 = 0;
    v22 = swift_allocObject();
    v22[2] = a3;
    v22[3] = v16;
    v22[4] = v18;
    v22[5] = &v27;
    v22[6] = v21;
    v23 = swift_allocObject();
    *(v23 + 16) = closure #1 in DispatchData._copyBytesHelper(to:from:)partial apply;
    *(v23 + 24) = v22;
    aBlock[4] = thunk for @callee_guaranteed (@guaranteed OS_dispatch_data, @unowned Int, @unowned UnsafeRawPointer, @unowned Int) -> (@unowned Bool)partial apply;
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed OS_dispatch_data, @unowned Int, @unowned UnsafeRawPointer, @unowned Int) -> (@unowned Bool);
    aBlock[3] = &block_descriptor_67;
    v24 = _Block_copy(aBlock);

    dispatch_data_apply(v12, v24);
    _Block_release(v24);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return v18;
    }

    goto LABEL_27;
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t DispatchData.subscript.getter(size_t location)
{
  buffer_ptr[1] = *MEMORY[0x1E69E9840];
  v3 = *v1;
  offset_ptr = 0;
  v4 = dispatch_data_copy_region(v3, location, &offset_ptr);
  buffer_ptr[0] = 0;
  v9 = 0;
  v5 = dispatch_data_create_map(v4, buffer_ptr, &v9);
  if (!buffer_ptr[0])
  {
LABEL_5:
    __break(1u);
  }

  if (__OFSUB__(location, offset_ptr))
  {
    __break(1u);
    goto LABEL_5;
  }

  v6 = *(buffer_ptr[0] + location - offset_ptr);

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

id DispatchData.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *v3;
  a3[1] = a2;
  a3[2] = v4;
  *a3 = a1;
  return v4;
}

dispatch_data_t DispatchData.subdata(in:)@<X0>(dispatch_data_t offset@<X0>, uint64_t a2@<X1>, dispatch_data_t *a3@<X8>)
{
  if (__OFSUB__(a2, offset))
  {
    __break(1u);
  }

  else
  {
    offset = dispatch_data_create_subrange(*v3, offset, a2 - offset);
    *a3 = offset;
  }

  return offset;
}

size_t DispatchData.region(location:)(dispatch_data_t *a1, size_t a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v4 = *v2;
  v7[0] = 0;
  *a1 = dispatch_data_copy_region(v4, a2, v7);
  result = v7[0];
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

Swift::Int __swiftcall DispatchData.index(before:)(Swift::Int before)
{
  v1 = __OFSUB__(before, 1);
  result = before - 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

Swift::Int __swiftcall DispatchData.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

dispatch_data_t DispatchData.makeIterator()@<X0>(dispatch_data_t *a1@<X8>)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v3 = *v1;
  v7[0] = 0;
  a1[2] = 0;
  result = dispatch_data_create_map(v3, v7, a1 + 2);
  v5 = v7[0];
  *a1 = result;
  a1[1] = v5;
  a1[3] = 0;
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void DispatchDataIterator.init(_data:)(NSObject **a1@<X0>, dispatch_data_t *a2@<X8>)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v7[0] = 0;
  a2[2] = 0;
  map = dispatch_data_create_map(v3, v7, a2 + 2);

  v5 = v7[0];
  *a2 = map;
  a2[1] = v5;
  a2[3] = 0;
  v6 = *MEMORY[0x1E69E9840];
}

id protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance DispatchData(void *a1, id *a2)
{
  *a2 = a1;

  return a1;
}

id static DispatchData._forceBridgeFromObjectiveC(_:result:)(void *a1, id *a2)
{
  *a2 = a1;

  return a1;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance DispatchData(void *a1, id *a2)
{
  *a2 = a1;
  v4 = a1;
  return 1;
}

uint64_t static DispatchData._conditionallyBridgeFromObjectiveC(_:result:)(void *a1, id *a2)
{
  *a2 = a1;
  v4 = a1;
  return 1;
}

id protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance DispatchData@<X0>(id result@<X0>, id *a2@<X8>)
{
  if (result)
  {
    *a2 = result;
    return result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id static DispatchData._unconditionallyBridgeFromObjectiveC(_:)@<X0>(id result@<X0>, id *a2@<X8>)
{
  if (result)
  {
    *a2 = result;
    return result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *protocol witness for BidirectionalCollection.index(before:) in conformance DispatchData@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result - 1;
  }

  return result;
}

void *protocol witness for BidirectionalCollection.formIndex(before:) in conformance DispatchData(void *result)
{
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    --*result;
  }

  return result;
}

NSObject *protocol witness for Collection.indices.getter in conformance DispatchData@<X0>(NSObject **a1@<X8>)
{
  v3 = *v1;
  *a1 = *v1;
  a1[1] = 0;
  a1[2] = dispatch_data_get_size(v3);

  return v3;
}

uint64_t *protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance DispatchData(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = a2[1];
  if (*result >= *a2)
  {
    v5 = __OFSUB__(v2, v3);
    v4 = v2 - v3 < 0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  if (v4 == v5)
  {
    __break(1u);
  }

  return result;
}

void *protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance DispatchData(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < *result)
  {
    __break(1u);
  }

  return result;
}

{
  if (*result < *a2 || a2[1] < result[1])
  {
    __break(1u);
  }

  return result;
}

void *protocol witness for Collection.index(after:) in conformance DispatchData@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void *protocol witness for Collection.formIndex(after:) in conformance DispatchData(void *result)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

void protocol witness for Sequence.makeIterator() in conformance DispatchData(dispatch_data_t *a1@<X8>)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v3 = *v1;
  v7[0] = 0;
  a1[2] = 0;
  map = dispatch_data_create_map(v3, v7, a1 + 2);
  v5 = v7[0];
  *a1 = map;
  a1[1] = v5;
  a1[3] = 0;

  v6 = *MEMORY[0x1E69E9840];
}

void protocol witness for Sequence._copyToContiguousArray() in conformance DispatchData()
{
  v1 = *v0;
  size = dispatch_data_get_size(v1);
  if (size)
  {
    v3 = size;
    v4 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1g5(size, 0);
    v5 = v1;
    v6 = specialized Sequence._copySequenceContents(initializing:)(&v7, (v4 + 4), v3, v5);

    if (v6 == v3)
    {
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
  }
}

void *specialized Sequence._copyContents(initializing:)(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!a2)
  {
LABEL_12:
    a3 = 0;
    goto LABEL_15;
  }

  if (!a3)
  {
LABEL_15:
    *result = a4;
    result[1] = a5;
    result[2] = a6;
    result[3] = a7;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    v8 = a6 - a7;
    while (1)
    {
      if (!(a7 - a6 + v7))
      {
        a7 = a6;
        a3 = v8;
        goto LABEL_15;
      }

      if (!a5)
      {
        goto LABEL_18;
      }

      if (__OFADD__(a7 + v7, 1))
      {
        break;
      }

      *(a2 + v7) = *(a5 + a7 + v7);
      if (a3 - 1 == v7)
      {
        a7 += v7 + 1;
        goto LABEL_15;
      }

      if (__OFADD__(++v7, 1))
      {
        __break(1u);
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

Swift::UInt8_optional __swiftcall DispatchDataIterator.next()()
{
  v2 = v0[2];
  v1 = v0[3];
  if (v1 != v2)
  {
    v4 = v0[1];
    if (v4)
    {
      if (!__OFADD__(v1, 1))
      {
        v3 = *(v4 + v1);
        v0[3] = v1 + 1;
        return (v3 | ((v1 == v2) << 8));
      }

      __break(1u);
    }

    __break(1u);
    return v5;
  }

  v3 = 0;
  return (v3 | ((v1 == v2) << 8));
}

unint64_t lazy protocol witness table accessor for type DispatchData and conformance DispatchData()
{
  result = lazy protocol witness table cache variable for type DispatchData and conformance DispatchData;
  if (!lazy protocol witness table cache variable for type DispatchData and conformance DispatchData)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DispatchData and conformance DispatchData);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DispatchData and conformance DispatchData;
  if (!lazy protocol witness table cache variable for type DispatchData and conformance DispatchData)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DispatchData and conformance DispatchData);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DispatchData and conformance DispatchData;
  if (!lazy protocol witness table cache variable for type DispatchData and conformance DispatchData)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DispatchData and conformance DispatchData);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DispatchData and conformance DispatchData;
  if (!lazy protocol witness table cache variable for type DispatchData and conformance DispatchData)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DispatchData and conformance DispatchData);
  }

  return result;
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

uint64_t lazy protocol witness table accessor for type Slice<DispatchData> and conformance <> Slice<A>(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SliceVy8Dispatch0B4DataVGMd, &_ss5SliceVy8Dispatch0B4DataVGMR);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type DefaultIndices<DispatchData> and conformance <> DefaultIndices<A>(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSIy8Dispatch0A4DataVGMd, &_sSIy8Dispatch0A4DataVGMR);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type DefaultIndices<DispatchData> and conformance DefaultIndices<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t lazy protocol witness table accessor for type DispatchDataIterator and conformance DispatchDataIterator()
{
  result = lazy protocol witness table cache variable for type DispatchDataIterator and conformance DispatchDataIterator;
  if (!lazy protocol witness table cache variable for type DispatchDataIterator and conformance DispatchDataIterator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DispatchDataIterator and conformance DispatchDataIterator);
  }

  return result;
}

void protocol witness for IteratorProtocol.next() in conformance DispatchDataIterator(_BYTE *a1@<X8>)
{
  v3 = v1[2];
  v2 = v1[3];
  if (v2 == v3)
  {
    v4 = 0;
LABEL_6:
    *a1 = v4;
    a1[1] = v2 == v3;
    return;
  }

  v5 = v1[1];
  if (v5)
  {
    if (!__OFADD__(v2, 1))
    {
      v4 = *(v5 + v2);
      v1[3] = v2 + 1;
      goto LABEL_6;
    }

    __break(1u);
  }

  __break(1u);
}

__n128 protocol witness for Sequence.makeIterator() in conformance DispatchDataIterator@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *v1;
  result = *(v1 + 8);
  *(a1 + 8) = result;
  *(a1 + 24) = v2;
  return result;
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance DispatchDataIterator()
{
  v1 = *v0;
  specialized _copySequenceToContiguousArray<A>(_:)(*v0, *(v0 + 8), *(v0 + 16), *(v0 + 24));
  v3 = v2;

  return v3;
}

uint64_t getEnumTagSinglePayload for DispatchData(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for DispatchData(uint64_t result, int a2, int a3)
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

uint64_t get_enum_tag_for_layout_string_8Dispatch0A4DataV11DeallocatorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for DispatchData.Deallocator(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for DispatchData.Deallocator(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for DispatchData.Deallocator(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for DispatchDataIterator(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for DispatchDataIterator(uint64_t result, int a2, int a3)
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

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, "t&");
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

size_t specialized Sequence._copySequenceContents(initializing:)(dispatch_data_t *a1, uint64_t a2, size_t a3, dispatch_data_t data)
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0;
  v19 = 0;
  v8 = dispatch_data_create_map(data, &v16, &v19);

  v9 = v16;
  v17 = v8;
  v18 = v16;
  v20 = 0;
  if (a2)
  {
    if (a3)
    {
      if ((a3 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_18:
        __break(1u);
      }

      v10 = 0;
      while (1)
      {
        if (v10 == v19)
        {
          v8 = v17;
          v9 = v18;
          a3 = v10;
          v13 = v20;
          goto LABEL_16;
        }

        if (!v9)
        {
          goto LABEL_18;
        }

        v11 = *(&v9->isa + v10);
        v12 = v10 + 1;
        v20 = v10 + 1;
        *(a2 + v10) = v11;
        if (a3 - 1 == v10)
        {
          break;
        }

        ++v10;
        if (__OFADD__(v12, 1))
        {
          __break(1u);
          goto LABEL_11;
        }
      }

      v8 = v17;
      v9 = v18;
      v13 = v20;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
LABEL_11:
    v13 = 0;
    a3 = 0;
  }

  v10 = v19;
LABEL_16:
  *a1 = v8;
  a1[1] = v9;
  a1[2] = v10;
  a1[3] = v13;
  v14 = *MEMORY[0x1E69E9840];
  return a3;
}

void specialized _copySequenceToContiguousArray<A>(_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a1;
  v7 = MEMORY[0x1E69E7CC0];
  if (a4 != a3)
  {
    if (!a2)
    {
LABEL_27:
      __break(1u);
      return;
    }

    v8 = 0;
    v9 = (MEMORY[0x1E69E7CC0] + 32);
    v26 = a3;
    while (1)
    {
      v10 = a4 + 1;
      if (__OFADD__(a4, 1))
      {
        break;
      }

      v11 = *(a2 + a4);
      if (!v8)
      {
        v12 = *(v7 + 3);
        if (((v12 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_25;
        }

        v13 = a2;
        v14 = v12 & 0xFFFFFFFFFFFFFFFELL;
        if (v14 <= 1)
        {
          v15 = 1;
        }

        else
        {
          v15 = v14;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, "t&");
        v16 = swift_allocObject();
        v17 = 2 * _swift_stdlib_malloc_size(v16) - 64;
        *(v16 + 2) = v15;
        *(v16 + 3) = v17;
        v18 = v16 + 32;
        v19 = *(v7 + 3) >> 1;
        if (*(v7 + 2))
        {
          v20 = v7 + 32;
          if (v16 != v7 || v18 >= &v20[v19])
          {
            memmove(v16 + 32, v20, v19);
          }

          *(v7 + 2) = 0;
        }

        v9 = &v18[v19];
        v8 = (v17 >> 1) - v19;

        v7 = v16;
        a2 = v13;
        a3 = v26;
      }

      v21 = __OFSUB__(v8--, 1);
      if (v21)
      {
        goto LABEL_24;
      }

      *v9++ = v11;
      ++a4;
      if (v10 == a3)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v8 = 0;
LABEL_19:

  v22 = *(v7 + 3);
  if (v22 >= 2)
  {
    v23 = v22 >> 1;
    v21 = __OFSUB__(v23, v8);
    v24 = v23 - v8;
    if (!v21)
    {
      *(v7 + 2) = v24;
      return;
    }

    goto LABEL_26;
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(uint64_t result, int64_t a2, uint64_t a3)
{
  if (result < a3)
  {
    if ((result - a3) >= 0x8000000000000001)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  if (a3 < result)
  {
    v3 = ~a3 + result;
    if (v3 >= (result ^ 0x8000000000000000))
    {
      v4 = result ^ 0x8000000000000000;
    }

    else
    {
      v4 = ~a3 + result;
    }

    if ((v4 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if ((result ^ 0x8000000000000000) > v3)
    {
LABEL_10:
      v5 = a3 - result;
      if (a2 <= 0)
      {
        if (v5 >= 1)
        {
          goto LABEL_21;
        }

        goto LABEL_19;
      }

      if (v5 < 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    __break(1u);
    goto LABEL_26;
  }

  v5 = 0;
  if (a2 > 0)
  {
LABEL_16:
    if (v5 < a2)
    {
      return 0;
    }

LABEL_17:
    v5 = result ^ 0x7FFFFFFFFFFFFFFFLL;
    if ((result ^ 0x7FFFFFFFFFFFFFFFuLL) > a2 - 1)
    {
LABEL_23:
      result += a2;
      return result;
    }

    __break(1u);
  }

LABEL_19:
  if (v5 > a2)
  {
    return 0;
  }

LABEL_21:
  if ((a2 & 0x8000000000000000) == 0)
  {
    return result;
  }

  if ((result ^ 0x7FFFFFFFFFFFFFFFuLL) < a2)
  {
    goto LABEL_23;
  }

LABEL_26:
  __break(1u);
  return result;
}

Swift::Int OS_dispatch_queue.GlobalQueuePriority.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193B16960](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance OS_dispatch_queue.GlobalQueuePriority()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193B16960](v1);
  return Hasher._finalize()();
}

dispatch_queue_global_t static OS_dispatch_queue.global(priority:)(char *a1)
{
  global_queue = dispatch_get_global_queue(qword_19342D4A8[*a1], 0);

  return global_queue;
}

uint64_t OS_dispatch_queue._syncHelper<A>(fn:flags:execute:rescue:)@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, dispatch_block_flags_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(void *)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v34 = a4;
  v31 = a7;
  v32 = a6;
  v35 = a5;
  v36 = a1;
  v37 = a2;
  v33 = a9;
  v11 = type metadata accessor for Optional();
  v29 = *(v11 - 8);
  v12 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v30 = &v28 - v13;
  v14 = *a3;
  v15 = swift_allocBox();
  v17 = v16;
  v18 = *(a8 - 8);
  (*(v18 + 56))(v16, 1, 1, a8);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  v20 = (v19 + 16);
  v21 = swift_allocObject();
  v23 = v34;
  v22 = v35;
  v21[2] = a8;
  v21[3] = v23;
  v21[4] = v22;
  closure #1 in OS_dispatch_queue._syncHelper<A>(fn:flags:execute:rescue:)(partial apply for thunk for @callee_guaranteed () -> (@out A, @error @owned Error), v21, v14, v15, v19, v36, v37, a8);
  LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

  if (v14)
  {
    __break(1u);
  }

  else
  {
    swift_beginAccess();
    v25 = *v20;
    if (*v20)
    {
      v26 = v25;
      v32(v25);

LABEL_6:
    }

    swift_beginAccess();
    v27 = v30;
    (*(v29 + 16))(v30, v17, v11);
    result = (*(v18 + 48))(v27, 1, a8);
    if (result != 1)
    {
      (*(v18 + 32))(v33, v27, a8);
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in OS_dispatch_queue._syncHelper<A>(fn:flags:execute:rescue:)(uint64_t a1, uint64_t a2, dispatch_block_flags_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t), uint64_t a7, uint64_t a8)
{
  v15 = swift_allocObject();
  v15[2] = a8;
  v15[3] = a4;
  v15[4] = a1;
  v15[5] = a2;
  v15[6] = a5;
  v21[4] = partial apply for closure #1 in closure #1 in OS_dispatch_queue._syncHelper<A>(fn:flags:execute:rescue:);
  v21[5] = v15;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 1107296256;
  v21[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v21[3] = &block_descriptor_97;
  v16 = _Block_copy(v21);
  type metadata accessor for DispatchWorkItem();
  v17 = swift_allocObject();
  v18 = _Block_copy(v16);

  v19 = _swift_dispatch_block_create(a3, v18);
  _Block_release(v18);
  _Block_release(v16);
  *(v17 + 16) = v19;

  a6(v17);
}

uint64_t closure #1 in closure #1 in OS_dispatch_queue._syncHelper<A>(fn:flags:execute:rescue:)(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14[-v10];
  v12 = swift_projectBox();
  a2();
  (*(*(a5 - 8) + 56))(v11, 0, 1, a5);
  swift_beginAccess();
  return (*(v8 + 40))(v12, v11, v7);
}

uint64_t OS_dispatch_queue.asyncAndWait<A>(flags:execute:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *a1;
  if (*a1)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = v5;
    v18 = v10;
    MEMORY[0x1EEE9AC00](v11);
    v17 = a4;
    v12 = v5;
    OS_dispatch_queue._syncHelper<A>(fn:flags:execute:rescue:)(partial apply for implicit closure #2 in implicit closure #1 in OS_dispatch_queue.asyncAndWait<A>(flags:execute:), v11, &v18, a2, a3, partial apply for closure #1 in OS_dispatch_queue.asyncAndWait<A>(execute:), v16, a4, a5);
  }

  else
  {
    v13 = swift_allocObject();
    *(v13 + 16) = v5;
    MEMORY[0x1EEE9AC00](v13);
    v17 = a4;
    v14 = v5;
    OS_dispatch_queue._syncHelper<A>(fn:execute:rescue:)(partial apply for implicit closure #4 in implicit closure #3 in OS_dispatch_queue.asyncAndWait<A>(flags:execute:), a2, a3, partial apply for closure #2 in OS_dispatch_queue.asyncAndWait<A>(flags:execute:), v16, a4, a5);
  }
}

uint64_t implicit closure #6 in implicit closure #5 in OS_dispatch_queue.sync<A>(flags:execute:)(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v9[4] = thunk for @callee_guaranteed () -> ()partial apply;
  v9[5] = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed () -> ();
  v9[3] = &block_descriptor_71;
  v7 = _Block_copy(v9);

  dispatch_sync(a3, v7);
  _Block_release(v7);
  LOBYTE(a3) = swift_isEscapingClosureAtFileLocation();

  if (a3)
  {
    __break(1u);
  }

  return result;
}

Dispatch::DispatchQoS::QoSClass_optional OS_dispatch_queue.qos.getter@<W0>(uint64_t a1@<X8>)
{
  v9 = *MEMORY[0x1E69E9840];
  v7 = 0;
  qos_class = dispatch_queue_get_qos_class(v1, &v7);
  result.value = DispatchQoS.QoSClass.init(rawValue:)(qos_class).value;
  if (v8 == 6)
  {
    __break(1u);
  }

  v5 = v7;
  *a1 = v8;
  *(a1 + 8) = v5;
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t OS_dispatch_queue_serial_executor.enqueue(_:)()
{
  v1 = UnownedJob.init(_:)();
  _swift_job_set_executor_queue(v1, v0);
  v2 = _swift_job_priority(v1);

  return MEMORY[0x1EEE6FE28](v0, v1, v2);
}

uint64_t protocol witness for SerialExecutor.enqueue(_:) in conformance OS_dispatch_queue_serial_executor(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6D878](a1, a2, WitnessTable);
}

uint64_t OS_dispatch_queue.enqueue(_:)(uint64_t a1)
{
  _swift_job_set_executor_queue(a1, v1);
  v3 = _swift_job_priority(a1);

  return MEMORY[0x1EEE6FE28](v1, a1, v3);
}

void OS_dispatch_queue_concurrent.init(label:qos:attributes:autoreleaseFrequency:target:)(uint64_t a1, uint64_t a2, char *a3, uint64_t *a4, unsigned __int8 *a5, void *a6)
{
  v7 = *a3;
  v8 = *(a3 + 1);
  v9 = *a4;
  v10 = *a5;
  v11 = _swift_dispatch_queue_concurrent();
  v12 = v11;
  if ((v9 & 4) != 0)
  {
    v13 = dispatch_queue_attr_make_initially_inactive(v11);

    v12 = v13;
  }

  if (v10)
  {
    if (v10 == DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM)
    {
      v14 = v10;
    }

    else
    {
      v14 = DISPATCH_AUTORELEASE_FREQUENCY_NEVER;
    }

    v15 = dispatch_queue_attr_make_with_autorelease_frequency(v12, v14);

    v12 = v15;
  }

  if (one-time initialization token for unspecified != -1)
  {
    swift_once();
  }

  if (static DispatchQoS.unspecified == v7 && v8 == qword_1ED451E78)
  {
    goto LABEL_17;
  }

  if (v8 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v8 <= 0x7FFFFFFF)
  {
    v17 = dispatch_queue_attr_make_with_qos_class(v12, dword_19342D4F8[v7], v8);

    v12 = v17;
LABEL_17:
    v18 = String.utf8CString.getter();

    dispatch_concurrent_queue_create_with_target_4swift((v18 + 32), v12, a6);

    return;
  }

  __break(1u);
}

dispatch_workloop_t OS_dispatch_workloop.init(label:attributes:autoreleaseFrequency:osWorkgroup:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, OS_os_workgroup *a5)
{
  v6 = *a4;
  v7 = String.utf8CString.getter();
  inactive = dispatch_workloop_create_inactive((v7 + 32));

  if (!v6)
  {
LABEL_6:
    dispatch_workloop_set_autorelease_frequency(inactive, v6);
    if (!a5)
    {
      goto LABEL_4;
    }

LABEL_7:
    a5 = a5;

    dispatch_workloop_set_os_workgroup(inactive, a5);

    goto LABEL_8;
  }

  if (v6 != DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM)
  {
    v6 = DISPATCH_AUTORELEASE_FREQUENCY_NEVER;
    goto LABEL_6;
  }

  v9 = inactive;
  if (a5)
  {
    goto LABEL_7;
  }

LABEL_4:

LABEL_8:
  dispatch_activate(inactive);

  return inactive;
}

void _swift_dispatch_sync(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  dispatch_sync(v3, v4);
}

void _swift_dispatch_async_and_wait(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  dispatch_async_and_wait(v3, v4);
}

uint64_t _swift_dispatch_verify_current_queue_4swiftonly(void *a1)
{
  v1 = a1;
  v2 = dispatch_verify_current_queue_4swiftonly();

  return v2;
}

unint64_t lazy protocol witness table accessor for type OS_dispatch_queue.GlobalQueuePriority and conformance OS_dispatch_queue.GlobalQueuePriority()
{
  result = lazy protocol witness table cache variable for type OS_dispatch_queue.GlobalQueuePriority and conformance OS_dispatch_queue.GlobalQueuePriority;
  if (!lazy protocol witness table cache variable for type OS_dispatch_queue.GlobalQueuePriority and conformance OS_dispatch_queue.GlobalQueuePriority)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OS_dispatch_queue.GlobalQueuePriority and conformance OS_dispatch_queue.GlobalQueuePriority);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OS_dispatch_queue.AutoreleaseFrequency and conformance OS_dispatch_queue.AutoreleaseFrequency()
{
  result = lazy protocol witness table cache variable for type OS_dispatch_queue.AutoreleaseFrequency and conformance OS_dispatch_queue.AutoreleaseFrequency;
  if (!lazy protocol witness table cache variable for type OS_dispatch_queue.AutoreleaseFrequency and conformance OS_dispatch_queue.AutoreleaseFrequency)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OS_dispatch_queue.AutoreleaseFrequency and conformance OS_dispatch_queue.AutoreleaseFrequency);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OS_dispatch_queue_concurrent.Attributes and conformance OS_dispatch_queue_concurrent.Attributes()
{
  result = lazy protocol witness table cache variable for type OS_dispatch_queue_concurrent.Attributes and conformance OS_dispatch_queue_concurrent.Attributes;
  if (!lazy protocol witness table cache variable for type OS_dispatch_queue_concurrent.Attributes and conformance OS_dispatch_queue_concurrent.Attributes)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OS_dispatch_queue_concurrent.Attributes and conformance OS_dispatch_queue_concurrent.Attributes);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OS_dispatch_queue_concurrent.Attributes and conformance OS_dispatch_queue_concurrent.Attributes;
  if (!lazy protocol witness table cache variable for type OS_dispatch_queue_concurrent.Attributes and conformance OS_dispatch_queue_concurrent.Attributes)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OS_dispatch_queue_concurrent.Attributes and conformance OS_dispatch_queue_concurrent.Attributes);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OS_dispatch_queue_concurrent.Attributes and conformance OS_dispatch_queue_concurrent.Attributes;
  if (!lazy protocol witness table cache variable for type OS_dispatch_queue_concurrent.Attributes and conformance OS_dispatch_queue_concurrent.Attributes)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OS_dispatch_queue_concurrent.Attributes and conformance OS_dispatch_queue_concurrent.Attributes);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OS_dispatch_queue_concurrent.Attributes and conformance OS_dispatch_queue_concurrent.Attributes;
  if (!lazy protocol witness table cache variable for type OS_dispatch_queue_concurrent.Attributes and conformance OS_dispatch_queue_concurrent.Attributes)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OS_dispatch_queue_concurrent.Attributes and conformance OS_dispatch_queue_concurrent.Attributes);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OS_dispatch_workloop.Attributes and conformance OS_dispatch_workloop.Attributes()
{
  result = lazy protocol witness table cache variable for type OS_dispatch_workloop.Attributes and conformance OS_dispatch_workloop.Attributes;
  if (!lazy protocol witness table cache variable for type OS_dispatch_workloop.Attributes and conformance OS_dispatch_workloop.Attributes)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OS_dispatch_workloop.Attributes and conformance OS_dispatch_workloop.Attributes);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OS_dispatch_workloop.Attributes and conformance OS_dispatch_workloop.Attributes;
  if (!lazy protocol witness table cache variable for type OS_dispatch_workloop.Attributes and conformance OS_dispatch_workloop.Attributes)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OS_dispatch_workloop.Attributes and conformance OS_dispatch_workloop.Attributes);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OS_dispatch_workloop.Attributes and conformance OS_dispatch_workloop.Attributes;
  if (!lazy protocol witness table cache variable for type OS_dispatch_workloop.Attributes and conformance OS_dispatch_workloop.Attributes)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OS_dispatch_workloop.Attributes and conformance OS_dispatch_workloop.Attributes);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OS_dispatch_workloop.Attributes and conformance OS_dispatch_workloop.Attributes;
  if (!lazy protocol witness table cache variable for type OS_dispatch_workloop.Attributes and conformance OS_dispatch_workloop.Attributes)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OS_dispatch_workloop.Attributes and conformance OS_dispatch_workloop.Attributes);
  }

  return result;
}

uint64_t type metadata completion function for _DispatchSpecificValue(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OS_dispatch_queue.GlobalQueuePriority(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for OS_dispatch_queue.GlobalQueuePriority(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OS_dispatch_queue.AutoreleaseFrequency(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for OS_dispatch_queue.AutoreleaseFrequency(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t OS_dispatch_source.handle.getter(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClassUnconditional();

  return a2(v2);
}

BOOL OS_dispatch_source.isCancelled.getter()
{
  objc_opt_self();
  v0 = swift_dynamicCastObjCClassUnconditional();
  return dispatch_source_testcancel(v0) != 0;
}

dispatch_source_t static OS_dispatch_source.makeProcessSource(identifier:eventMask:queue:)(dispatch_source_t result, uintptr_t *a2, void *a3, const dispatch_source_type_s *a4)
{
  if ((result & 0x80000000) == 0)
  {
    return _swift_dispatch_source_create(a4, result, *a2, a3);
  }

  __break(1u);
  return result;
}

uint64_t OS_dispatch_source.MemoryPressureEvent.description.getter()
{
  v1 = *v0;
  if (*v0 > 15)
  {
    if (v1 == 16)
    {
      return 0xD000000000000015;
    }

    if (v1 != 32)
    {
      if (v1 == 4026531840)
      {
        return 0xD000000000000014;
      }

      goto LABEL_12;
    }

    return 0xD000000000000016;
  }

  else
  {
    if (v1 == 1)
    {
      return 0x6C616D726F6ELL;
    }

    if (v1 != 2)
    {
      if (v1 == 4)
      {
        return 0x6C61636974697263;
      }

LABEL_12:
      v3 = *v0;
      return dispatch thunk of CustomStringConvertible.description.getter();
    }

    return 0x676E696E726177;
  }
}

uintptr_t OS_dispatch_source_mach_send.handle.getter()
{
  objc_opt_self();
  v0 = swift_dynamicCastObjCClassUnconditional();
  result = dispatch_source_get_handle(v0);
  if (HIDWORD(result))
  {
    __break(1u);
  }

  return result;
}

void OS_dispatch_source_timer.scheduleOneshot(deadline:leeway:)(dispatch_time_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  objc_opt_self();
  v5 = swift_dynamicCastObjCClassUnconditional();
  if (v4 <= 1)
  {
    if (v4)
    {
      v7 = 1000000;
    }

    else
    {
      v7 = 1000000000;
    }

    goto LABEL_9;
  }

  if (v4 == 2)
  {
    v7 = 1000;
LABEL_9:
    v6 = v3 * v7;
    if ((v3 * v7) >> 64 == (v3 * v7) >> 63)
    {
      goto LABEL_12;
    }

    if (v3 <= 0)
    {
      goto LABEL_16;
    }

    goto LABEL_11;
  }

  v6 = v3;
  if (v4 == 3)
  {
LABEL_12:
    if ((v6 & 0x8000000000000000) == 0)
    {
      goto LABEL_13;
    }

LABEL_16:
    __break(1u);
    return;
  }

LABEL_11:
  v6 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_13:

  dispatch_source_set_timer(v5, v2, 0xFFFFFFFFFFFFFFFFLL, v6);
}

uintptr_t OS_dispatch_source_proc.handle.getter()
{
  objc_opt_self();
  v0 = swift_dynamicCastObjCClassUnconditional();
  result = dispatch_source_get_handle(v0);
  if (result >> 31)
  {
    __break(1u);
  }

  return result;
}

uint64_t OS_dispatch_source_mach_send.data.getter@<X0>(uint64_t (*a1)(uint64_t)@<X1>, uint64_t *a2@<X8>)
{
  objc_opt_self();
  v4 = swift_dynamicCastObjCClassUnconditional();
  result = a1(v4);
  *a2 = result;
  return result;
}

void _swift_dispatch_source_set_registration_handler(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  dispatch_source_set_registration_handler(v3, v4);
}

unint64_t lazy protocol witness table accessor for type OS_dispatch_source.MachSendEvent and conformance OS_dispatch_source.MachSendEvent()
{
  result = lazy protocol witness table cache variable for type OS_dispatch_source.MachSendEvent and conformance OS_dispatch_source.MachSendEvent;
  if (!lazy protocol witness table cache variable for type OS_dispatch_source.MachSendEvent and conformance OS_dispatch_source.MachSendEvent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OS_dispatch_source.MachSendEvent and conformance OS_dispatch_source.MachSendEvent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OS_dispatch_source.MachSendEvent and conformance OS_dispatch_source.MachSendEvent;
  if (!lazy protocol witness table cache variable for type OS_dispatch_source.MachSendEvent and conformance OS_dispatch_source.MachSendEvent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OS_dispatch_source.MachSendEvent and conformance OS_dispatch_source.MachSendEvent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OS_dispatch_source.MachSendEvent and conformance OS_dispatch_source.MachSendEvent;
  if (!lazy protocol witness table cache variable for type OS_dispatch_source.MachSendEvent and conformance OS_dispatch_source.MachSendEvent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OS_dispatch_source.MachSendEvent and conformance OS_dispatch_source.MachSendEvent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OS_dispatch_source.MachSendEvent and conformance OS_dispatch_source.MachSendEvent;
  if (!lazy protocol witness table cache variable for type OS_dispatch_source.MachSendEvent and conformance OS_dispatch_source.MachSendEvent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OS_dispatch_source.MachSendEvent and conformance OS_dispatch_source.MachSendEvent);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OS_dispatch_source.ProcessEvent and conformance OS_dispatch_source.ProcessEvent()
{
  result = lazy protocol witness table cache variable for type OS_dispatch_source.ProcessEvent and conformance OS_dispatch_source.ProcessEvent;
  if (!lazy protocol witness table cache variable for type OS_dispatch_source.ProcessEvent and conformance OS_dispatch_source.ProcessEvent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OS_dispatch_source.ProcessEvent and conformance OS_dispatch_source.ProcessEvent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OS_dispatch_source.ProcessEvent and conformance OS_dispatch_source.ProcessEvent;
  if (!lazy protocol witness table cache variable for type OS_dispatch_source.ProcessEvent and conformance OS_dispatch_source.ProcessEvent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OS_dispatch_source.ProcessEvent and conformance OS_dispatch_source.ProcessEvent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OS_dispatch_source.ProcessEvent and conformance OS_dispatch_source.ProcessEvent;
  if (!lazy protocol witness table cache variable for type OS_dispatch_source.ProcessEvent and conformance OS_dispatch_source.ProcessEvent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OS_dispatch_source.ProcessEvent and conformance OS_dispatch_source.ProcessEvent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OS_dispatch_source.ProcessEvent and conformance OS_dispatch_source.ProcessEvent;
  if (!lazy protocol witness table cache variable for type OS_dispatch_source.ProcessEvent and conformance OS_dispatch_source.ProcessEvent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OS_dispatch_source.ProcessEvent and conformance OS_dispatch_source.ProcessEvent);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OS_dispatch_source.FileSystemEvent and conformance OS_dispatch_source.FileSystemEvent()
{
  result = lazy protocol witness table cache variable for type OS_dispatch_source.FileSystemEvent and conformance OS_dispatch_source.FileSystemEvent;
  if (!lazy protocol witness table cache variable for type OS_dispatch_source.FileSystemEvent and conformance OS_dispatch_source.FileSystemEvent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OS_dispatch_source.FileSystemEvent and conformance OS_dispatch_source.FileSystemEvent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OS_dispatch_source.FileSystemEvent and conformance OS_dispatch_source.FileSystemEvent;
  if (!lazy protocol witness table cache variable for type OS_dispatch_source.FileSystemEvent and conformance OS_dispatch_source.FileSystemEvent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OS_dispatch_source.FileSystemEvent and conformance OS_dispatch_source.FileSystemEvent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OS_dispatch_source.FileSystemEvent and conformance OS_dispatch_source.FileSystemEvent;
  if (!lazy protocol witness table cache variable for type OS_dispatch_source.FileSystemEvent and conformance OS_dispatch_source.FileSystemEvent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OS_dispatch_source.FileSystemEvent and conformance OS_dispatch_source.FileSystemEvent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OS_dispatch_source.FileSystemEvent and conformance OS_dispatch_source.FileSystemEvent;
  if (!lazy protocol witness table cache variable for type OS_dispatch_source.FileSystemEvent and conformance OS_dispatch_source.FileSystemEvent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OS_dispatch_source.FileSystemEvent and conformance OS_dispatch_source.FileSystemEvent);
  }

  return result;
}

uint64_t *protocol witness for static Comparable.< infix(_:_:) in conformance DispatchWallTime(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  if (*a2 == -1)
  {
    return (v2 != -1);
  }

  if (v2 == -1)
  {
    return 0;
  }

  v4 = __OFSUB__(0, v2);
  v5 = -v2;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    v4 = __OFSUB__(0, v3);
    v6 = -v3;
    if (!v4)
    {
      return (v5 < v6);
    }
  }

  __break(1u);
  return result;
}

uint64_t *static DispatchWallTime.< infix(_:_:)(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  if (*a2 == -1)
  {
    return (v2 != -1);
  }

  if (v2 == -1)
  {
    return 0;
  }

  v4 = __OFSUB__(0, v2);
  v5 = -v2;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    v4 = __OFSUB__(0, v3);
    v6 = -v3;
    if (!v4)
    {
      return (v5 < v6);
    }
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for static Comparable.<= infix(_:_:) in conformance DispatchWallTime(uint64_t result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  if (*result == -1)
  {
    return v3 == -1;
  }

  if (v3 == -1)
  {
    return 1;
  }

  v4 = __OFSUB__(0, v3);
  v5 = -v3;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    v4 = __OFSUB__(0, v2);
    v6 = -v2;
    if (!v4)
    {
      return v5 >= v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for static Comparable.>= infix(_:_:) in conformance DispatchWallTime(uint64_t result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  if (*a2 == -1)
  {
    return v2 == -1;
  }

  if (v2 == -1)
  {
    return 1;
  }

  v4 = __OFSUB__(0, v2);
  v5 = -v2;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    v4 = __OFSUB__(0, v3);
    v6 = -v3;
    if (!v4)
    {
      return v5 >= v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t *protocol witness for static Comparable.> infix(_:_:) in conformance DispatchWallTime(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  if (*result == -1)
  {
    return (v3 != -1);
  }

  if (v3 == -1)
  {
    return 0;
  }

  v4 = __OFSUB__(0, v3);
  v5 = -v3;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    v4 = __OFSUB__(0, v2);
    v6 = -v2;
    if (!v4)
    {
      return (v5 < v6);
    }
  }

  __break(1u);
  return result;
}

dispatch_time_t - infix(_:_:)@<X0>(dispatch_time_t *a1@<X0>, dispatch_time_t *a2@<X8>, double a3@<D0>)
{
  v4 = *a1;
  v5 = toInt64Clamped(_:)(a3 * -1000000000.0);
  result = dispatch_time(v4, v5);
  *a2 = result;
  return result;
}

dispatch_time_t - infix(_:_:)@<X0>(dispatch_time_t *a1@<X0>, uint64_t *a2@<X1>, dispatch_time_t *a3@<X8>)
{
  result = *a1;
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = 0x7FFFFFFFFFFFFFFFLL;
  if (*a2 <= 0)
  {
    v7 = 0x8000000000000000;
  }

  if ((*a2 * 1000) >> 64 == (1000 * *a2) >> 63)
  {
    v8 = 1000 * *a2;
  }

  else
  {
    v8 = v7;
  }

  if (v6 == 3)
  {
    v9 = *a2;
  }

  else
  {
    v9 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v6 != 2)
  {
    v8 = v9;
  }

  if (v5 > 0)
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v10 = 0x8000000000000000;
  }

  if ((v5 * 1000000000) >> 64 == (1000000000 * v5) >> 63)
  {
    v11 = 1000000000 * v5;
  }

  else
  {
    v11 = v10;
  }

  v12 = 1000000 * v5;
  v13 = (v5 * 1000000) >> 64 != (1000000 * v5) >> 63;
  if (v5 > 0)
  {
    v14 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v14 = 0x8000000000000000;
  }

  if (!v13)
  {
    v14 = v12;
  }

  if (!*(a2 + 8))
  {
    v14 = v11;
  }

  if (*(a2 + 8) > 1u)
  {
    v14 = v8;
  }

  if (__OFSUB__(0, v14))
  {
    __break(1u);
  }

  else
  {
    result = dispatch_time(result, -v14);
    *a3 = result;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DispatchWallTime and conformance DispatchWallTime()
{
  result = lazy protocol witness table cache variable for type DispatchWallTime and conformance DispatchWallTime;
  if (!lazy protocol witness table cache variable for type DispatchWallTime and conformance DispatchWallTime)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DispatchWallTime and conformance DispatchWallTime);
  }

  return result;
}

uint64_t OS_dispatch_queue.SchedulerTimeType.init(from:)@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  result = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
  v7 = result;
  if (result == -1)
  {
    goto LABEL_11;
  }

  if (one-time initialization token for timebaseInfo != -1)
  {
    result = swift_once();
  }

  if (static DispatchTime.timebaseInfo == HIDWORD(static DispatchTime.timebaseInfo))
  {
LABEL_11:
    __swift_destroy_boxed_opaque_existential_0(v12);
    *a2 = v7;
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  if (!is_mul_ok(v7, HIDWORD(static DispatchTime.timebaseInfo)))
  {
LABEL_10:
    v7 = -1;
    goto LABEL_11;
  }

  v8 = static DispatchTime.timebaseInfo - 1;
  if (static DispatchTime.timebaseInfo)
  {
    v9 = v7 * HIDWORD(static DispatchTime.timebaseInfo);
    v10 = __CFADD__(v9, v8);
    v11 = v9 + v8;
    if (!v10)
    {
      v7 = v11 / static DispatchTime.timebaseInfo;
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t OS_dispatch_queue.SchedulerTimeType.encode(to:)(void *a1)
{
  v2 = *v1;
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = dispatch thunk of Encoder.singleValueContainer()();
  if (v2 == -1)
  {
    goto LABEL_7;
  }

  if (one-time initialization token for timebaseInfo != -1)
  {
    result = swift_once();
  }

  if (static DispatchTime.timebaseInfo == HIDWORD(static DispatchTime.timebaseInfo) || !is_mul_ok(v2, static DispatchTime.timebaseInfo) || HIDWORD(static DispatchTime.timebaseInfo))
  {
LABEL_7:
    __swift_mutable_project_boxed_opaque_existential_1(v5, v5[3]);
    dispatch thunk of SingleValueEncodingContainer.encode(_:)();
    return __swift_destroy_boxed_opaque_existential_0(v5);
  }

  else
  {
    __break(1u);
  }

  return result;
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

unint64_t *OS_dispatch_queue.SchedulerTimeType.distance(to:)@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  v12[0] = *a1;
  v12[1] = v4;
  result = DispatchTime.distance(to:)(v12, &v13);
  v6 = 0x7FFFFFFFFFFFFFFFLL;
  if (v13 <= 0)
  {
    v6 = 0x8000000000000000;
  }

  if ((v13 * 1000) >> 64 == (1000 * v13) >> 63)
  {
    v7 = 1000 * v13;
  }

  else
  {
    v7 = v6;
  }

  if (v14 == 3)
  {
    v8 = v13;
  }

  else
  {
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v14 != 2)
  {
    v7 = v8;
  }

  if (v13 > 0)
  {
    v9 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = 0x8000000000000000;
  }

  if ((v13 * 1000000000) >> 64 == (1000000000 * v13) >> 63)
  {
    v10 = 1000000000 * v13;
  }

  else
  {
    v10 = v9;
  }

  if (v13 > 0)
  {
    v11 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = 0x8000000000000000;
  }

  if ((v13 * 1000000) >> 64 == (1000000 * v13) >> 63)
  {
    v11 = 1000000 * v13;
  }

  if (!v14)
  {
    v11 = v10;
  }

  if (v14 > 1u)
  {
    v11 = v7;
  }

  *a2 = v11;
  return result;
}

uint64_t *OS_dispatch_queue.SchedulerTimeType.Stride.init(_:)@<X0>(uint64_t *result@<X0>, unint64_t *a2@<X8>)
{
  v2 = *result;
  v3 = *(result + 8);
  v4 = 0x7FFFFFFFFFFFFFFFLL;
  if (*result <= 0)
  {
    v4 = 0x8000000000000000;
  }

  if ((*result * 1000) >> 64 == (1000 * *result) >> 63)
  {
    v5 = 1000 * *result;
  }

  else
  {
    v5 = v4;
  }

  if (v3 == 3)
  {
    v6 = *result;
  }

  else
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v3 != 2)
  {
    v5 = v6;
  }

  if (v2 > 0)
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = 0x8000000000000000;
  }

  if ((v2 * 1000000000) >> 64 == (1000000000 * v2) >> 63)
  {
    v8 = 1000000000 * v2;
  }

  else
  {
    v8 = v7;
  }

  v9 = 1000000 * v2;
  v10 = (v2 * 1000000) >> 64 != (1000000 * v2) >> 63;
  if (v2 > 0)
  {
    v11 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = 0x8000000000000000;
  }

  if (!v10)
  {
    v11 = v9;
  }

  if (!*(result + 8))
  {
    v11 = v8;
  }

  if (*(result + 8) > 1u)
  {
    v11 = v5;
  }

  *a2 = v11;
  return result;
}

dispatch_time_t OS_dispatch_queue.SchedulerTimeType.advanced(by:)@<X0>(int64_t *a1@<X0>, dispatch_time_t *a2@<X8>)
{
  result = dispatch_time(*v2, *a1);
  *a2 = result;
  return result;
}

uint64_t (*OS_dispatch_queue.SchedulerTimeType.Stride.magnitude.modify(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return OS_dispatch_queue.SchedulerTimeType.Stride.magnitude.modify;
}

uint64_t OS_dispatch_queue.SchedulerTimeType.Stride.init<A>(exactly:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v40 = a4;
  v7 = *(*(a3 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(*(AssociatedTypeWitness - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = *(a2 - 8);
  v12 = v11[8];
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v38 - v16;
  v18 = v11[2];
  v39 = a1;
  v18(&v38 - v16, a1, a2);
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() >= 65)
  {
    v41 = 0x8000000000000000;
    if (dispatch thunk of static BinaryInteger.isSigned.getter())
    {
      if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
      {
LABEL_13:
        dispatch thunk of BinaryInteger._lowWord.getter();
        goto LABEL_14;
      }
    }

    else
    {
      v19 = dispatch thunk of static BinaryInteger.isSigned.getter();
      v20 = dispatch thunk of BinaryInteger.bitWidth.getter();
      if ((v19 & 1) == 0)
      {
        if (v20 >= 64)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }

      if (v20 <= 64)
      {
        swift_getAssociatedConformanceWitness();
        dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
        dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
        v24 = *(*(a3 + 32) + 8);
        v25 = dispatch thunk of static Comparable.< infix(_:_:)();
        v23 = v11[1];
        v23(v15, a2);
        if (v25)
        {
          goto LABEL_18;
        }

        goto LABEL_13;
      }
    }

    lazy protocol witness table accessor for type Int64 and conformance Int64();
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v21 = *(*(a3 + 32) + 8);
    v22 = dispatch thunk of static Comparable.< infix(_:_:)();
    v23 = v11[1];
    v23(v15, a2);
    if (v22)
    {
      goto LABEL_18;
    }
  }

LABEL_14:
  if (dispatch thunk of BinaryInteger.bitWidth.getter() > 64 || dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
  {
    v41 = 0x7FFFFFFFFFFFFFFFLL;
    v26 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v27 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v26)
    {
      if (v27 > 64)
      {
        goto LABEL_17;
      }
    }

    else if (v27 > 63)
    {
LABEL_17:
      lazy protocol witness table accessor for type Int64 and conformance Int64();
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v28 = *(*(a3 + 32) + 8);
      v29 = dispatch thunk of static Comparable.< infix(_:_:)();
      v23 = v11[1];
      v23(v15, a2);
      if ((v29 & 1) == 0)
      {
        goto LABEL_24;
      }

LABEL_18:
      v23(v39, a2);
      result = (v23)(v17, a2);
      v31 = 0;
      v32 = 1;
      goto LABEL_26;
    }

    dispatch thunk of BinaryInteger._lowWord.getter();
  }

LABEL_24:
  v33 = dispatch thunk of BinaryInteger._lowWord.getter();
  v34 = v11[1];
  v34(v39, a2);
  result = (v34)(v17, a2);
  v31 = 1000000000 * v33;
  v35 = (v33 * 1000000000) >> 64;
  v36 = v35 == (1000000000 * v33) >> 63;
  v32 = v35 != (1000000000 * v33) >> 63;
  if (!v36)
  {
    v31 = 0;
  }

LABEL_26:
  v37 = v40;
  *v40 = v31;
  *(v37 + 8) = v32;
  return result;
}

unint64_t lazy protocol witness table accessor for type Int64 and conformance Int64()
{
  result = lazy protocol witness table cache variable for type Int64 and conformance Int64;
  if (!lazy protocol witness table cache variable for type Int64 and conformance Int64)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int64 and conformance Int64);
  }

  return result;
}

uint64_t *static OS_dispatch_queue.SchedulerTimeType.Stride.* infix(_:_:)@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = *result / 1000000000.0 * (*a2 / 1000000000.0);
  v4 = trunc(v3 * 1000000000.0);
  v5 = 0x8000000000000000;
  if (v3 > 0.0)
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v4 < 9.22337204e18 && v4 > -9.22337204e18)
  {
    v5 = (v3 * 1000000000.0);
  }

  *a3 = v5;
  return result;
}

void *static OS_dispatch_queue.SchedulerTimeType.Stride.+ infix(_:_:)@<X0>(void *result@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if (__OFADD__(*result, *a2))
  {
    __break(1u);
  }

  else
  {
    *a3 = *result + *a2;
  }

  return result;
}

void *static OS_dispatch_queue.SchedulerTimeType.Stride.- infix(_:_:)@<X0>(void *result@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if (__OFSUB__(*result, *a2))
  {
    __break(1u);
  }

  else
  {
    *a3 = *result - *a2;
  }

  return result;
}

void *static OS_dispatch_queue.SchedulerTimeType.Stride.-= infix(_:_:)(void *result, void *a2)
{
  if (__OFSUB__(*result, *a2))
  {
    __break(1u);
  }

  else
  {
    *result -= *a2;
  }

  return result;
}

uint64_t *static OS_dispatch_queue.SchedulerTimeType.Stride.*= infix(_:_:)(uint64_t *result, uint64_t *a2)
{
  v2 = *a2 / 1000000000.0 * (*result / 1000000000.0);
  v3 = trunc(v2 * 1000000000.0);
  v4 = 0x8000000000000000;
  if (v2 > 0.0)
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v3 < 9.22337204e18 && v3 > -9.22337204e18)
  {
    v4 = (v2 * 1000000000.0);
  }

  *result = v4;
  return result;
}

void *static OS_dispatch_queue.SchedulerTimeType.Stride.+= infix(_:_:)(void *result, void *a2)
{
  if (__OFADD__(*result, *a2))
  {
    __break(1u);
  }

  else
  {
    *result += *a2;
  }

  return result;
}

uint64_t static OS_dispatch_queue.SchedulerTimeType.Stride.microseconds(_:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v2 = 0x7FFFFFFFFFFFFFFFLL;
  if (result <= 0)
  {
    v2 = 0x8000000000000000;
  }

  if ((result * 1000) >> 64 == (1000 * result) >> 63)
  {
    v3 = 1000 * result;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance OS_dispatch_queue.SchedulerTimeType.Stride.CodingKeys()
{
  Hasher.init(_seed:)();
  MEMORY[0x193B16960](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance OS_dispatch_queue.SchedulerTimeType.Stride.CodingKeys()
{
  Hasher.init(_seed:)();
  MEMORY[0x193B16960](0);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance OS_dispatch_queue.SchedulerTimeType.Stride.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6365736F6E616E5FLL && a2 == 0xEC00000073646E6FLL)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance OS_dispatch_queue.SchedulerTimeType.Stride.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OS_dispatch_queue.SchedulerTimeType.Stride.CodingKeys and conformance OS_dispatch_queue.SchedulerTimeType.Stride.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance OS_dispatch_queue.SchedulerTimeType.Stride.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OS_dispatch_queue.SchedulerTimeType.Stride.CodingKeys and conformance OS_dispatch_queue.SchedulerTimeType.Stride.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t OS_dispatch_queue.SchedulerTimeType.Stride.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVySo17OS_dispatch_queueC8DispatchE17SchedulerTimeTypeV6StrideV10CodingKeys33_317C13D309C0E15AD490BAEED7188218LLOGMd, &_ss22KeyedEncodingContainerVySo17OS_dispatch_queueC8DispatchE17SchedulerTimeTypeV6StrideV10CodingKeys33_317C13D309C0E15AD490BAEED7188218LLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type OS_dispatch_queue.SchedulerTimeType.Stride.CodingKeys and conformance OS_dispatch_queue.SchedulerTimeType.Stride.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v7, v3);
}

unint64_t lazy protocol witness table accessor for type OS_dispatch_queue.SchedulerTimeType.Stride.CodingKeys and conformance OS_dispatch_queue.SchedulerTimeType.Stride.CodingKeys()
{
  result = lazy protocol witness table cache variable for type OS_dispatch_queue.SchedulerTimeType.Stride.CodingKeys and conformance OS_dispatch_queue.SchedulerTimeType.Stride.CodingKeys;
  if (!lazy protocol witness table cache variable for type OS_dispatch_queue.SchedulerTimeType.Stride.CodingKeys and conformance OS_dispatch_queue.SchedulerTimeType.Stride.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OS_dispatch_queue.SchedulerTimeType.Stride.CodingKeys and conformance OS_dispatch_queue.SchedulerTimeType.Stride.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OS_dispatch_queue.SchedulerTimeType.Stride.CodingKeys and conformance OS_dispatch_queue.SchedulerTimeType.Stride.CodingKeys;
  if (!lazy protocol witness table cache variable for type OS_dispatch_queue.SchedulerTimeType.Stride.CodingKeys and conformance OS_dispatch_queue.SchedulerTimeType.Stride.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OS_dispatch_queue.SchedulerTimeType.Stride.CodingKeys and conformance OS_dispatch_queue.SchedulerTimeType.Stride.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OS_dispatch_queue.SchedulerTimeType.Stride.CodingKeys and conformance OS_dispatch_queue.SchedulerTimeType.Stride.CodingKeys;
  if (!lazy protocol witness table cache variable for type OS_dispatch_queue.SchedulerTimeType.Stride.CodingKeys and conformance OS_dispatch_queue.SchedulerTimeType.Stride.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OS_dispatch_queue.SchedulerTimeType.Stride.CodingKeys and conformance OS_dispatch_queue.SchedulerTimeType.Stride.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OS_dispatch_queue.SchedulerTimeType.Stride.CodingKeys and conformance OS_dispatch_queue.SchedulerTimeType.Stride.CodingKeys;
  if (!lazy protocol witness table cache variable for type OS_dispatch_queue.SchedulerTimeType.Stride.CodingKeys and conformance OS_dispatch_queue.SchedulerTimeType.Stride.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OS_dispatch_queue.SchedulerTimeType.Stride.CodingKeys and conformance OS_dispatch_queue.SchedulerTimeType.Stride.CodingKeys);
  }

  return result;
}

uint64_t OS_dispatch_queue.SchedulerTimeType.Stride.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVySo17OS_dispatch_queueC8DispatchE17SchedulerTimeTypeV6StrideV10CodingKeys33_317C13D309C0E15AD490BAEED7188218LLOGMd, &_ss22KeyedDecodingContainerVySo17OS_dispatch_queueC8DispatchE17SchedulerTimeTypeV6StrideV10CodingKeys33_317C13D309C0E15AD490BAEED7188218LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type OS_dispatch_queue.SchedulerTimeType.Stride.CodingKeys and conformance OS_dispatch_queue.SchedulerTimeType.Stride.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v11 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t protocol witness for static SchedulerTimeIntervalConvertible.seconds(_:) in conformance OS_dispatch_queue.SchedulerTimeType.Stride@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v2 = 0x7FFFFFFFFFFFFFFFLL;
  if (result <= 0)
  {
    v2 = 0x8000000000000000;
  }

  if ((result * 1000000000) >> 64 == (1000000000 * result) >> 63)
  {
    v3 = 1000000000 * result;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

void protocol witness for static SchedulerTimeIntervalConvertible.seconds(_:) in conformance OS_dispatch_queue.SchedulerTimeType.Stride(uint64_t *a1@<X8>, double a2@<D0>)
{
  v2 = trunc(a2 * 1000000000.0);
  v3 = 0x8000000000000000;
  if (a2 > 0.0)
  {
    v3 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v2 < 9.22337204e18 && v2 > -9.22337204e18)
  {
    v3 = (a2 * 1000000000.0);
  }

  *a1 = v3;
}

uint64_t protocol witness for static SchedulerTimeIntervalConvertible.milliseconds(_:) in conformance OS_dispatch_queue.SchedulerTimeType.Stride@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v2 = 0x7FFFFFFFFFFFFFFFLL;
  if (result <= 0)
  {
    v2 = 0x8000000000000000;
  }

  if ((result * 1000000) >> 64 == (1000000 * result) >> 63)
  {
    v3 = 1000000 * result;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

uint64_t protocol witness for static SchedulerTimeIntervalConvertible.microseconds(_:) in conformance OS_dispatch_queue.SchedulerTimeType.Stride@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v2 = 0x7FFFFFFFFFFFFFFFLL;
  if (result <= 0)
  {
    v2 = 0x8000000000000000;
  }

  if ((result * 1000) >> 64 == (1000 * result) >> 63)
  {
    v3 = 1000 * result;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

void *protocol witness for static SignedNumeric.- prefix(_:) in conformance OS_dispatch_queue.SchedulerTimeType.Stride@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFSUB__(0, *result))
  {
    __break(1u);
  }

  else
  {
    *a2 = -*result;
  }

  return result;
}

void protocol witness for SignedNumeric.negate() in conformance OS_dispatch_queue.SchedulerTimeType.Stride()
{
  if (__OFSUB__(0, *v0))
  {
    __break(1u);
  }

  else
  {
    *v0 = -*v0;
  }
}

double *protocol witness for ExpressibleByFloatLiteral.init(floatLiteral:) in conformance OS_dispatch_queue.SchedulerTimeType.Stride@<X0>(double *result@<X0>, uint64_t *a2@<X8>)
{
  v2 = *result * 1000000000.0;
  v3 = trunc(v2);
  v4 = 0x8000000000000000;
  if (*result > 0.0)
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v3 < 9.22337204e18 && v3 > -9.22337204e18)
  {
    v4 = v2;
  }

  *a2 = v4;
  return result;
}

uint64_t protocol witness for Encodable.encode(to:) in conformance OS_dispatch_queue.SchedulerTimeType.Stride(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVySo17OS_dispatch_queueC8DispatchE17SchedulerTimeTypeV6StrideV10CodingKeys33_317C13D309C0E15AD490BAEED7188218LLOGMd, &_ss22KeyedEncodingContainerVySo17OS_dispatch_queueC8DispatchE17SchedulerTimeTypeV6StrideV10CodingKeys33_317C13D309C0E15AD490BAEED7188218LLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type OS_dispatch_queue.SchedulerTimeType.Stride.CodingKeys and conformance OS_dispatch_queue.SchedulerTimeType.Stride.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v7, v3);
}

uint64_t *protocol witness for static Numeric.* infix(_:_:) in conformance OS_dispatch_queue.SchedulerTimeType.Stride@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = *result / 1000000000.0 * (*a2 / 1000000000.0);
  v4 = trunc(v3 * 1000000000.0);
  v5 = 0x8000000000000000;
  if (v3 > 0.0)
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v4 < 9.22337204e18 && v4 > -9.22337204e18)
  {
    v5 = (v3 * 1000000000.0);
  }

  *a3 = v5;
  return result;
}

uint64_t *protocol witness for static Numeric.*= infix(_:_:) in conformance OS_dispatch_queue.SchedulerTimeType.Stride(uint64_t *result, uint64_t *a2)
{
  v2 = *a2 / 1000000000.0 * (*result / 1000000000.0);
  v3 = trunc(v2 * 1000000000.0);
  v4 = 0x8000000000000000;
  if (v2 > 0.0)
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v3 < 9.22337204e18 && v3 > -9.22337204e18)
  {
    v4 = (v2 * 1000000000.0);
  }

  *result = v4;
  return result;
}

void *protocol witness for static AdditiveArithmetic.+ infix(_:_:) in conformance OS_dispatch_queue.SchedulerTimeType.Stride@<X0>(void *result@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if (__OFADD__(*result, *a2))
  {
    __break(1u);
  }

  else
  {
    *a3 = *result + *a2;
  }

  return result;
}

void *protocol witness for static AdditiveArithmetic.+= infix(_:_:) in conformance OS_dispatch_queue.SchedulerTimeType.Stride(void *result, void *a2)
{
  if (__OFADD__(*result, *a2))
  {
    __break(1u);
  }

  else
  {
    *result += *a2;
  }

  return result;
}

void *protocol witness for static AdditiveArithmetic.- infix(_:_:) in conformance OS_dispatch_queue.SchedulerTimeType.Stride@<X0>(void *result@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if (__OFSUB__(*result, *a2))
  {
    __break(1u);
  }

  else
  {
    *a3 = *result - *a2;
  }

  return result;
}

void *protocol witness for static AdditiveArithmetic.-= infix(_:_:) in conformance OS_dispatch_queue.SchedulerTimeType.Stride(void *result, void *a2)
{
  if (__OFSUB__(*result, *a2))
  {
    __break(1u);
  }

  else
  {
    *result -= *a2;
  }

  return result;
}

uint64_t *protocol witness for ExpressibleByIntegerLiteral.init(integerLiteral:) in conformance OS_dispatch_queue.SchedulerTimeType.Stride@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X8>)
{
  v2 = 0x7FFFFFFFFFFFFFFFLL;
  if (*result <= 0)
  {
    v2 = 0x8000000000000000;
  }

  if ((*result * 1000000000) >> 64 == (1000000000 * *result) >> 63)
  {
    v2 = 1000000000 * *result;
  }

  *a2 = v2;
  return result;
}

Swift::Int OS_dispatch_queue.SchedulerTimeType.Stride.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193B16970](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance OS_dispatch_queue.SchedulerTimeType.Stride()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193B16970](v1);
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance OS_dispatch_queue.SchedulerTimeType(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v5[0] = *a2;
  v5[1] = v2;
  OS_dispatch_queue.SchedulerTimeType.distance(to:)(v5, &v4);
  return v4 == 0;
}

void OS_dispatch_queue.SchedulerOptions.qos.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t OS_dispatch_queue.SchedulerOptions.qos.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

void *OS_dispatch_queue.SchedulerOptions.group.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

uint64_t OS_dispatch_queue.SchedulerOptions.init(qos:flags:group:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(result + 8);
  v5 = *a2;
  *a4 = *result;
  *(a4 + 8) = v4;
  *(a4 + 16) = v5;
  *(a4 + 24) = a3;
  return result;
}

dispatch_time_t OS_dispatch_queue.now.getter@<X0>(dispatch_time_t *a1@<X8>)
{
  result = dispatch_time(0, 0);
  *a1 = result;
  return result;
}

id outlined copy of OS_dispatch_queue.SchedulerOptions?(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a4 != 1)
  {
    return a4;
  }

  return result;
}

uint64_t outlined consume of OS_dispatch_queue.SchedulerOptions?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
    return MEMORY[0x1EEE66C30]();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OS_dispatch_queue.SchedulerTimeType.Stride and conformance OS_dispatch_queue.SchedulerTimeType.Stride()
{
  result = lazy protocol witness table cache variable for type OS_dispatch_queue.SchedulerTimeType.Stride and conformance OS_dispatch_queue.SchedulerTimeType.Stride;
  if (!lazy protocol witness table cache variable for type OS_dispatch_queue.SchedulerTimeType.Stride and conformance OS_dispatch_queue.SchedulerTimeType.Stride)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OS_dispatch_queue.SchedulerTimeType.Stride and conformance OS_dispatch_queue.SchedulerTimeType.Stride);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OS_dispatch_queue.SchedulerTimeType.Stride and conformance OS_dispatch_queue.SchedulerTimeType.Stride;
  if (!lazy protocol witness table cache variable for type OS_dispatch_queue.SchedulerTimeType.Stride and conformance OS_dispatch_queue.SchedulerTimeType.Stride)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OS_dispatch_queue.SchedulerTimeType.Stride and conformance OS_dispatch_queue.SchedulerTimeType.Stride);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OS_dispatch_queue.SchedulerTimeType.Stride and conformance OS_dispatch_queue.SchedulerTimeType.Stride;
  if (!lazy protocol witness table cache variable for type OS_dispatch_queue.SchedulerTimeType.Stride and conformance OS_dispatch_queue.SchedulerTimeType.Stride)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OS_dispatch_queue.SchedulerTimeType.Stride and conformance OS_dispatch_queue.SchedulerTimeType.Stride);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OS_dispatch_queue.SchedulerTimeType.Stride and conformance OS_dispatch_queue.SchedulerTimeType.Stride;
  if (!lazy protocol witness table cache variable for type OS_dispatch_queue.SchedulerTimeType.Stride and conformance OS_dispatch_queue.SchedulerTimeType.Stride)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OS_dispatch_queue.SchedulerTimeType.Stride and conformance OS_dispatch_queue.SchedulerTimeType.Stride);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OS_dispatch_queue.SchedulerTimeType.Stride and conformance OS_dispatch_queue.SchedulerTimeType.Stride;
  if (!lazy protocol witness table cache variable for type OS_dispatch_queue.SchedulerTimeType.Stride and conformance OS_dispatch_queue.SchedulerTimeType.Stride)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OS_dispatch_queue.SchedulerTimeType.Stride and conformance OS_dispatch_queue.SchedulerTimeType.Stride);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OS_dispatch_queue.SchedulerTimeType.Stride and conformance OS_dispatch_queue.SchedulerTimeType.Stride;
  if (!lazy protocol witness table cache variable for type OS_dispatch_queue.SchedulerTimeType.Stride and conformance OS_dispatch_queue.SchedulerTimeType.Stride)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OS_dispatch_queue.SchedulerTimeType.Stride and conformance OS_dispatch_queue.SchedulerTimeType.Stride);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OS_dispatch_queue.SchedulerTimeType.Stride and conformance OS_dispatch_queue.SchedulerTimeType.Stride;
  if (!lazy protocol witness table cache variable for type OS_dispatch_queue.SchedulerTimeType.Stride and conformance OS_dispatch_queue.SchedulerTimeType.Stride)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OS_dispatch_queue.SchedulerTimeType.Stride and conformance OS_dispatch_queue.SchedulerTimeType.Stride);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OS_dispatch_queue.SchedulerTimeType.Stride.CodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for OS_dispatch_queue.SchedulerTimeType.Stride.CodingKeys(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t DispatchWorkItem.__allocating_init(qos:flags:block:)(char *a1, dispatch_block_flags_t *a2, void *a3)
{
  v6 = swift_allocObject();
  DispatchWorkItem.init(qos:flags:block:)(a1, a2, a3);
  return v6;
}

uint64_t DispatchWorkItem.__allocating_init(flags:block:)(dispatch_block_flags_t *a1, const void *a2)
{
  v4 = swift_allocObject();
  v5 = *a1;
  v6 = _Block_copy(a2);
  v7 = _swift_dispatch_block_create(v5, v6);
  _Block_release(v6);
  _Block_release(a2);
  *(v4 + 16) = v7;
  return v4;
}

void DispatchWorkItem.notify(qos:flags:queue:execute:)(unsigned __int8 *a1, uint64_t *a2, void *a3, void *aBlock)
{
  v5 = v4;
  v7 = *a1;
  v8 = *(a1 + 1);
  v9 = *a2;
  v10 = _Block_copy(aBlock);
  if (one-time initialization token for unspecified != -1)
  {
    swift_once();
  }

  if (v7 == static DispatchQoS.unspecified && v8 == qword_1ED451E78 && v9 == 0)
  {
    v14 = *(v5 + 16);
    _Block_copy(v14);
    _swift_dispatch_block_notify(v14, a3, v10);
    _Block_release(v10);

    _Block_release(v14);
  }

  else
  {
    v16[0] = v7;
    v17 = v8;
    v15 = v9;
    type metadata accessor for DispatchWorkItem();
    inited = swift_initStackObject();
    DispatchWorkItem.init(qos:flags:block:)(v16, &v15, v10);
    _swift_dispatch_block_notify(*(v5 + 16), a3, *(inited + 16));
  }
}

intptr_t _swift_dispatch_block_wait(void *a1, dispatch_time_t a2)
{
  v3 = a1;
  v4 = dispatch_block_wait(v3, a2);

  return v4;
}

void _swift_dispatch_block_notify(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  dispatch_block_notify(v5, v6, v7);
}

uint64_t specialized SetAlgebra<>.init(arrayLiteral:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t OS_dispatch_io.StreamType.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!result)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance OS_dispatch_io.StreamType@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

void static OS_dispatch_io.read(fromFileDescriptor:maxLength:runningHandlerOn:handler:)(dispatch_fd_t a1, size_t a2, NSObject *a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a4;
  *(v10 + 24) = a5;
  v12[4] = partial apply for closure #1 in static OS_dispatch_io.read(fromFileDescriptor:maxLength:runningHandlerOn:handler:);
  v12[5] = v10;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = thunk for @escaping @callee_guaranteed (@guaranteed OS_dispatch_data, @unowned Int32) -> ();
  v12[3] = &block_descriptor_2;
  v11 = _Block_copy(v12);

  dispatch_read(a1, a2, a3, v11);
  _Block_release(v11);
}

void partial apply for closure #1 in static OS_dispatch_io.read(fromFileDescriptor:maxLength:runningHandlerOn:handler:)(void *a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v4 = *(v2 + 24);
  v8 = a1;
  v6 = a1;
  v5(&v8, a2);
  v7 = v8;
}

void thunk for @escaping @callee_guaranteed (@guaranteed OS_dispatch_data, @unowned Int32) -> ()(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void static OS_dispatch_io.write(toFileDescriptor:data:runningHandlerOn:handler:)(dispatch_fd_t a1, void **a2, NSObject *a3, uint64_t a4, uint64_t a5)
{
  v9 = *a2;
  v10 = swift_allocObject();
  *(v10 + 16) = a4;
  *(v10 + 24) = a5;
  v13[4] = partial apply for closure #1 in static OS_dispatch_io.read(fromFileDescriptor:maxLength:runningHandlerOn:handler:);
  v13[5] = v10;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = thunk for @escaping @callee_guaranteed (@guaranteed OS_dispatch_data?, @unowned Int32) -> ();
  v13[3] = &block_descriptor_6_0;
  v11 = _Block_copy(v13);
  v12 = v9;

  dispatch_write(a1, v12, a3, v11);
  _Block_release(v11);
}

void thunk for @escaping @callee_guaranteed (@guaranteed OS_dispatch_data?, @unowned Int32) -> ()(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a2;
  v6(a2, a3);
}

dispatch_io_t OS_dispatch_io.init(type:fileDescriptor:queue:cleanupHandler:)(unsigned __int8 *a1, dispatch_fd_t a2, NSObject *a3, uint64_t a4, uint64_t a5)
{
  v7 = *a1;
  v11[4] = a4;
  v11[5] = a5;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
  v11[3] = &block_descriptor_9_0;
  v8 = _Block_copy(v11);

  v9 = dispatch_io_create(v7, a2, a3, v8);

  _Block_release(v8);
  return v9;
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned Int32) -> ()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

dispatch_io_t OS_dispatch_io.init(type:path:oflag:mode:queue:cleanupHandler:)(unsigned __int8 *a1, const char *a2, int a3, mode_t a4, NSObject *a5, uint64_t a6, uint64_t a7)
{
  v11 = *a1;
  v15[4] = a6;
  v15[5] = a7;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
  v15[3] = &block_descriptor_12;
  v12 = _Block_copy(v15);

  v13 = dispatch_io_create_with_path(v11, a2, a3, a4, a5, v12);

  _Block_release(v12);
  return v13;
}

{
  v11 = *a1;
  v15[4] = a6;
  v15[5] = a7;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
  v15[3] = &block_descriptor_15;
  v12 = _Block_copy(v15);

  v13 = dispatch_io_create_with_path(v11, a2, a3, a4, a5, v12);

  _Block_release(v12);
  return v13;
}

dispatch_io_t OS_dispatch_io.init(type:io:queue:cleanupHandler:)(unsigned __int8 *a1, NSObject *a2, NSObject *a3, uint64_t a4, uint64_t a5)
{
  v7 = *a1;
  v11[4] = a4;
  v11[5] = a5;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
  v11[3] = &block_descriptor_18;
  v8 = _Block_copy(v11);

  v9 = dispatch_io_create_with_io(v7, a2, a3, v8);

  _Block_release(v8);
  return v9;
}

void OS_dispatch_io.read(offset:length:queue:ioHandler:)(off_t a1, size_t a2, NSObject *a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  *(v11 + 24) = a5;
  v13[4] = partial apply for closure #1 in OS_dispatch_io.read(offset:length:queue:ioHandler:);
  v13[5] = v11;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = thunk for @escaping @callee_guaranteed (@unowned Bool, @guaranteed OS_dispatch_data?, @unowned Int32) -> ();
  v13[3] = &block_descriptor_24;
  v12 = _Block_copy(v13);

  dispatch_io_read(v5, a1, a2, a3, v12);
  _Block_release(v12);
}

void thunk for @escaping @callee_guaranteed (@unowned Bool, @guaranteed OS_dispatch_data?, @unowned Int32) -> ()(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v9 = a3;
  v8(a2, a3, a4);
}

void OS_dispatch_io.write(offset:data:queue:ioHandler:)(off_t a1, void **a2, NSObject *a3, uint64_t a4, uint64_t a5)
{
  v10 = *a2;
  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  *(v11 + 24) = a5;
  v14[4] = partial apply for closure #1 in OS_dispatch_io.write(offset:data:queue:ioHandler:);
  v14[5] = v11;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = thunk for @escaping @callee_guaranteed (@unowned Bool, @guaranteed OS_dispatch_data?, @unowned Int32) -> ();
  v14[3] = &block_descriptor_30;
  v12 = _Block_copy(v14);
  v13 = v10;

  dispatch_io_write(v5, a1, v13, a3, v12);
  _Block_release(v12);
}

void partial apply for closure #1 in OS_dispatch_io.read(offset:length:queue:ioHandler:)(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = *(v3 + 16);
  v6 = *(v3 + 24);
  v10 = a2;
  v8 = a2;
  v7(a1, &v10, a3);
  v9 = v10;
}

void OS_dispatch_io.setInterval(interval:flags:)(uint64_t a1, dispatch_io_interval_flags_t *a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *a2;
  if (v4 <= 1)
  {
    if (*(a1 + 8))
    {
      v7 = 1000000;
    }

    else
    {
      v7 = 1000000000;
    }

    goto LABEL_9;
  }

  if (v4 == 2)
  {
    v7 = 1000;
LABEL_9:
    v6 = v3 * v7;
    if ((v3 * v7) >> 64 == (v3 * v7) >> 63)
    {
      goto LABEL_13;
    }

    if (v3 <= 0)
    {
      goto LABEL_15;
    }

LABEL_11:
    v6 = 0x7FFFFFFFFFFFFFFFLL;
    v8 = v2;
LABEL_12:
    dispatch_io_set_interval(v8, v6, v5);
    return;
  }

  v6 = *a1;
  if (v4 != 3)
  {
    goto LABEL_11;
  }

LABEL_13:
  if ((v6 & 0x8000000000000000) == 0)
  {
    v8 = v2;
    goto LABEL_12;
  }

LABEL_15:
  __break(1u);
}

unint64_t lazy protocol witness table accessor for type OS_dispatch_io.StreamType and conformance OS_dispatch_io.StreamType()
{
  result = lazy protocol witness table cache variable for type OS_dispatch_io.StreamType and conformance OS_dispatch_io.StreamType;
  if (!lazy protocol witness table cache variable for type OS_dispatch_io.StreamType and conformance OS_dispatch_io.StreamType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OS_dispatch_io.StreamType and conformance OS_dispatch_io.StreamType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OS_dispatch_io.CloseFlags and conformance OS_dispatch_io.CloseFlags()
{
  result = lazy protocol witness table cache variable for type OS_dispatch_io.CloseFlags and conformance OS_dispatch_io.CloseFlags;
  if (!lazy protocol witness table cache variable for type OS_dispatch_io.CloseFlags and conformance OS_dispatch_io.CloseFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OS_dispatch_io.CloseFlags and conformance OS_dispatch_io.CloseFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OS_dispatch_io.CloseFlags and conformance OS_dispatch_io.CloseFlags;
  if (!lazy protocol witness table cache variable for type OS_dispatch_io.CloseFlags and conformance OS_dispatch_io.CloseFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OS_dispatch_io.CloseFlags and conformance OS_dispatch_io.CloseFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OS_dispatch_io.CloseFlags and conformance OS_dispatch_io.CloseFlags;
  if (!lazy protocol witness table cache variable for type OS_dispatch_io.CloseFlags and conformance OS_dispatch_io.CloseFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OS_dispatch_io.CloseFlags and conformance OS_dispatch_io.CloseFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OS_dispatch_io.CloseFlags and conformance OS_dispatch_io.CloseFlags;
  if (!lazy protocol witness table cache variable for type OS_dispatch_io.CloseFlags and conformance OS_dispatch_io.CloseFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OS_dispatch_io.CloseFlags and conformance OS_dispatch_io.CloseFlags);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OS_dispatch_io.IntervalFlags and conformance OS_dispatch_io.IntervalFlags()
{
  result = lazy protocol witness table cache variable for type OS_dispatch_io.IntervalFlags and conformance OS_dispatch_io.IntervalFlags;
  if (!lazy protocol witness table cache variable for type OS_dispatch_io.IntervalFlags and conformance OS_dispatch_io.IntervalFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OS_dispatch_io.IntervalFlags and conformance OS_dispatch_io.IntervalFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OS_dispatch_io.IntervalFlags and conformance OS_dispatch_io.IntervalFlags;
  if (!lazy protocol witness table cache variable for type OS_dispatch_io.IntervalFlags and conformance OS_dispatch_io.IntervalFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OS_dispatch_io.IntervalFlags and conformance OS_dispatch_io.IntervalFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OS_dispatch_io.IntervalFlags and conformance OS_dispatch_io.IntervalFlags;
  if (!lazy protocol witness table cache variable for type OS_dispatch_io.IntervalFlags and conformance OS_dispatch_io.IntervalFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OS_dispatch_io.IntervalFlags and conformance OS_dispatch_io.IntervalFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OS_dispatch_io.IntervalFlags and conformance OS_dispatch_io.IntervalFlags;
  if (!lazy protocol witness table cache variable for type OS_dispatch_io.IntervalFlags and conformance OS_dispatch_io.IntervalFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OS_dispatch_io.IntervalFlags and conformance OS_dispatch_io.IntervalFlags);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OS_dispatch_io.StreamType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for OS_dispatch_io.StreamType(uint64_t result, unsigned int a2, unsigned int a3)
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

Dispatch::DispatchQoS::QoSClass_optional __swiftcall DispatchQoS.QoSClass.init(rawValue:)(qos_class_t rawValue)
{
  if (rawValue > 20)
  {
    switch(rawValue)
    {
      case QOS_CLASS_USER_INTERACTIVE:
        *v1 = 4;
        return rawValue;
      case QOS_CLASS_USER_INITIATED:
        *v1 = 3;
        return rawValue;
      case QOS_CLASS_DEFAULT:
        *v1 = 2;
        return rawValue;
    }

LABEL_12:
    *v1 = 6;
    return rawValue;
  }

  if (rawValue == QOS_CLASS_UNSPECIFIED)
  {
    *v1 = 5;
    return rawValue;
  }

  if (rawValue == QOS_CLASS_BACKGROUND)
  {
    *v1 = 0;
    return rawValue;
  }

  if (rawValue != QOS_CLASS_UTILITY)
  {
    goto LABEL_12;
  }

  *v1 = 1;
  return rawValue;
}

void dispatchPrecondition(condition:)(void (*a1)(dispatch_queue_t *__return_ptr))
{
  a1(&queue);
  v1 = queue;
  if (v3)
  {
    if (v3 == 1)
    {
      dispatch_assert_queue_barrier(queue);
    }

    else
    {
      dispatch_assert_queue_not_V2(queue);
    }
  }

  else
  {
    dispatch_assert_queue_V2(queue);
  }
}

Swift::Int DispatchQoS.QoSClass.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193B16960](v1);
  return Hasher._finalize()();
}

Swift::Int DispatchTimeoutResult.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x193B16960](a1 & 1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type DispatchQoS.QoSClass and conformance DispatchQoS.QoSClass()
{
  result = lazy protocol witness table cache variable for type DispatchQoS.QoSClass and conformance DispatchQoS.QoSClass;
  if (!lazy protocol witness table cache variable for type DispatchQoS.QoSClass and conformance DispatchQoS.QoSClass)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DispatchQoS.QoSClass and conformance DispatchQoS.QoSClass);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DispatchTimeoutResult and conformance DispatchTimeoutResult()
{
  result = lazy protocol witness table cache variable for type DispatchTimeoutResult and conformance DispatchTimeoutResult;
  if (!lazy protocol witness table cache variable for type DispatchTimeoutResult and conformance DispatchTimeoutResult)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DispatchTimeoutResult and conformance DispatchTimeoutResult);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DispatchPredicate(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for DispatchPredicate(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

Swift::UInt64 __swiftcall dispatch_time(_:_:)(Swift::UInt64 a1, Swift::Int64 a2)
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void DISPATCH_TIME_FOREVER.getter()
{
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  type metadata accessor for AnyCancellable();
}