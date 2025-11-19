uint64_t closure #1 in OSLogArguments.append(_:)(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, a3);
  v8 = *a1 + 8;

  result = UnsafeMutableRawBufferPointer.copyMemory(from:)();
  *a1 = v8;
  return result;
}

uint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    outlined init with copy of Any(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

uint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(void *a1, char *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0 && __dst && a3 - __dst > (HIBYTE(a6) & 0xF))
    {
      __src[0] = a5;
      __src[1] = a6 & 0xFFFFFFFFFFFFFFLL;
      _sSv16initializeMemory2as4from5countSpyxGxm_SPyxGSitlFs5UInt8V_Ttgq5(__src, HIBYTE(a6) & 0xF, __dst);
      UnsafeMutableRawBufferPointer.subscript.setter();
      result = 0;
      *a1 = __dst;
      return result;
    }

LABEL_8:
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    v7 = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    v7 = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!v7)
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }
  }

  *a1 = v7;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
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

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *_sSv16initializeMemory2as4from5countSpyxGxm_SPyxGSitlFs5UInt8V_Ttgq5(char *__src, size_t __n, char *__dst)
{
  if ((__n & 0x8000000000000000) != 0 || &__dst[__n] > __src && &__src[__n] > __dst)
  {
    result = _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {

    return memcpy(__dst, __src, __n);
  }

  return result;
}

uint64_t _StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v4 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    while (1)
    {
      v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
      if (v5 < 0)
      {
        break;
      }

      v7 = v6;
      if ((a2 & 0x1000000000000000) != 0)
      {
        v9 = _StringGuts._foreignCopyUTF8(into:)();
        if (v10)
        {
          goto LABEL_23;
        }

        v4 = v9;
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          __src[0] = a1;
          __src[1] = a2 & 0xFFFFFFFFFFFFFFLL;
          if (v5 < v4)
          {
            goto LABEL_23;
          }

          v8 = __src;
        }

        else if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v4 = a1 & 0xFFFFFFFFFFFFLL;
          if (v5 < (a1 & 0xFFFFFFFFFFFFLL))
          {
            goto LABEL_23;
          }
        }

        else
        {
          v8 = _StringObject.sharedUTF8.getter();
          v4 = v12;
          if (v5 < v12)
          {
LABEL_23:
            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
            break;
          }
        }

        specialized UnsafeMutablePointer.initialize(from:count:)(v8, v4, v7 + 32);
      }

      if (v4 == v5)
      {
        return v7;
      }

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
LABEL_19:
      v5 = String.UTF8View._foreignCount()();
      if (!v5)
      {
        return MEMORY[0x1E69E7CC0];
      }
    }

    result = _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_19;
  }

  v7 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v9 = *(v3 + 3) >> 1, v9 < v5))
  {
    if (v4 <= v5)
    {
      v10 = v4 + v2;
    }

    else
    {
      v10 = v4;
    }

    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v10, 1, v3);
    v9 = *(v3 + 3) >> 1;
  }

  v11 = *(v3 + 2);
  v12 = v9 - v11;
  if (v12 < 0)
  {
    goto LABEL_18;
  }

  if (*(a1 + 16))
  {
    if (v12 >= v2)
    {
      specialized UnsafeMutablePointer.initialize(from:count:)((a1 + 32), v2, &v3[v11 + 32]);

      if (!v2)
      {
LABEL_15:
        *v1 = v3;
        return result;
      }

      v14 = *(v3 + 2);
      v15 = __OFADD__(v14, v2);
      v16 = v14 + v2;
      if (!v15)
      {
        *(v3 + 2) = v16;
        goto LABEL_15;
      }

      goto LABEL_17;
    }
  }

  else
  {

    if (!v2)
    {
      goto LABEL_15;
    }
  }

LABEL_19:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void *specialized UnsafeMutablePointer.initialize(from:count:)(char *__src, size_t __n, char *__dst)
{
  if ((__n & 0x8000000000000000) != 0 || &__dst[__n] > __src && &__src[__n] > __dst)
  {
    result = _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {

    return memcpy(__dst, __src, __n);
  }

  return result;
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  v9 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v8, v7);
  v10 = (a4 + 32);
  v11 = (v9 + 4);
  if (v5)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(v10, v8, v11);
    *(a4 + 16) = 0;
  }

  else
  {
    specialized UnsafeMutablePointer.initialize(from:count:)(v10, v8, v11);
  }

  return v9;
}

char *specialized UnsafeMutablePointer.moveInitialize(from:count:)(char *__src, size_t __len, char *__dst)
{
  if ((__len & 0x8000000000000000) != 0)
  {
    __src = _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
  }

  else if (__dst != __src || &__src[__len] <= __dst)
  {

    return memmove(__dst, __src, __len);
  }

  return __src;
}

uint64_t OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  v12 = swift_allocObject();
  v12[2] = a5;
  v12[3] = a6;
  v12[4] = a1;
  v12[5] = a2;
  OSLogInterpolation.appendInterpolation(_:align:privacy:)(partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:), v12, a3, a4);
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6();
  v9 = dispatch thunk of CustomStringConvertible.description.getter();
  (*(v4 + 8))(v8, a3);
  return v9;
}

uint64_t OSSignposter.init(subsystem:category:)@<X0>(uint64_t *a1@<X2>, os_log_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String.utf8CString.getter();

  v6 = String.utf8CString.getter();

  v7 = os_log_create((v5 + 32), (v6 + 32));

  *a2 = v7;
  return result;
}

id static OSSignposter.disabled.getter@<X0>(void *a1@<X0>, void **a2@<X1>, void **a3@<X8>)
{
  if (*a1 != -1)
  {
    v6 = a2;
    v7 = a3;
    swift_once();
    a3 = v7;
    a2 = v6;
  }

  v4 = *a2;
  *a3 = *a2;

  return v4;
}

void OSSignposter.emitEvent(_:id:_:)(unint64_t a1, uint64_t a2, char a3, uint64_t a4, const void *a5)
{
  v9 = OSSignposter.logHandle.getter();
  static os_signpost_type_t.event.getter();
  memcpy(__dst, a5, 0x38uLL);
  outlined init with copy of OSLogInterpolation(__dst, &v22);
  v10 = __dst[0];
  v11 = __dst[1];

  outlined destroy of OSLogInterpolation(__dst);
  v12._countAndFlagsBits = v10;
  v12._object = v11;
  id(_:)(v12);

  memcpy(v29, a5, sizeof(v29));
  outlined init with copy of OSLogInterpolation(v29, &v21);
  outlined destroy of OSLogInterpolation(v29);
  memcpy(v28, a5, sizeof(v28));
  outlined init with copy of OSLogInterpolation(v28, &v20);
  outlined destroy of OSLogInterpolation(v28);
  OSLogMessage.bufferSize.getter();
  memcpy(v27, a5, sizeof(v27));
  outlined init with copy of OSLogInterpolation(v27, &v19);
  outlined destroy of OSLogInterpolation(v27);
  memcpy(v26, a5, sizeof(v26));
  outlined init with copy of OSLogInterpolation(v26, &v18);
  outlined destroy of OSLogInterpolation(v26);
  memcpy(v23, a5, sizeof(v23));
  outlined init with copy of OSLogInterpolation(v23, &v17);
  v24 = v23[2];
  outlined init with copy of OSLogArguments(&v24, &v16);
  outlined destroy of OSLogInterpolation(v23);
  outlined init with copy of OSLogArguments(&v24, &v15);
  v25 = v24;
  outlined destroy of OSLogArguments(&v24);
  v13 = OS_os_log.signpostsEnabled.getter();
  if (v13)
  {
    if (a3)
    {
      if (a1 > 0xFFFFFFFF)
      {
        v13 = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      if (a1 < 0xD800 || a1 > 0xDFFF)
      {
        goto LABEL_17;
      }

      do
      {
        v13 = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
LABEL_17:
        ;
      }

      while (a1 > 0x10FFFF);
      MEMORY[0x1EEE9AC00](v13);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSPys4Int8VGMd, &_sSPys4Int8VGMR);
      Unicode.Scalar.withUTF8CodeUnits<A>(_:)();
    }

    else
    {
      if (!a1)
      {
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      if (a2 < 0)
      {
        _fatalErrorMessage(_:_:file:line:flags:)();
        __break(1u);
      }

      closure #1 in _globalStringTablePointerOfStaticString(_:)(a1, &v14);
    }

    __break(1u);
  }

  else
  {
    outlined destroy of [(_:_:_:)](&v25);
  }
}

void OSSignposter.emitEvent(_:id:)(unint64_t a1, uint64_t a2, char a3, os_signpost_id_t *a4)
{
  v8 = OSSignposter.logHandle.getter();
  v9 = static os_signpost_type_t.event.getter();
  v10 = OS_os_log.signpostsEnabled.getter();
  if (v10)
  {
    if (a3)
    {
      if (a1 > 0xFFFFFFFF)
      {
        v10 = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      if (a1 < 0xD800 || a1 > 0xDFFF)
      {
        goto LABEL_17;
      }

      do
      {
        v10 = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
LABEL_17:
        ;
      }

      while (a1 > 0x10FFFF);
      MEMORY[0x1EEE9AC00](v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSPys4Int8VGMd, &_sSPys4Int8VGMR);
      Unicode.Scalar.withUTF8CodeUnits<A>(_:)();
    }

    else
    {
      if (!a1)
      {
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      if (a2 < 0)
      {
        _fatalErrorMessage(_:_:file:line:flags:)();
        __break(1u);
      }

      closure #1 in _globalStringTablePointerOfStaticString(_:)(a1, &v28);
    }

    v11 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v12 = _allocateUninitializedArray<A>(_:)();
    v13 = v8;
    v22 = &v19;
    MEMORY[0x1EEE9AC00](v13);
    v21 = v11;
    v14 = static UnsafeMutablePointer.allocate(capacity:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v15 = createStorage<A>(capacity:type:)(0);
    v16 = createStorage<A>(capacity:type:)(0);
    v20 = v14;
    v27[0] = v14;
    v26 = v15;
    v25 = v16;
    serialize(_:at:)(0, v27);
    v17 = serialize(_:at:)(0, v27);
    v23 = v12;
    v24 = v12;
    MEMORY[0x1EEE9AC00](v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, ".");
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    v18 = v20;
    closure #1 in osSignpostWithoutMessage(log:name:id:type:state:formatString:)(v20, 2u, v8, v9, a4, v21, "");
    destroyStorage<A>(_:count:)(v15);
    destroyStorage<A>(_:count:)(v16);
    MEMORY[0x1AC55C650](v18, MEMORY[0x1E69E7508]);
  }
}

uint64_t OSSignposter.beginInterval(_:id:_:)(unint64_t a1, uint64_t a2, char a3, uint64_t *a4, const void *a5)
{
  v9 = OSSignposter.logHandle.getter();
  static os_signpost_type_t.begin.getter();
  memcpy(__dst, a5, 0x38uLL);
  outlined init with copy of OSLogInterpolation(__dst, &v26);
  v10 = __dst[0];
  v11 = __dst[1];

  outlined destroy of OSLogInterpolation(__dst);
  v12._countAndFlagsBits = v10;
  v12._object = v11;
  id(_:)(v12);

  memcpy(v33, a5, sizeof(v33));
  outlined init with copy of OSLogInterpolation(v33, &v25);
  outlined destroy of OSLogInterpolation(v33);
  memcpy(v32, a5, sizeof(v32));
  outlined init with copy of OSLogInterpolation(v32, &v24);
  outlined destroy of OSLogInterpolation(v32);
  OSLogMessage.bufferSize.getter();
  memcpy(v31, a5, sizeof(v31));
  outlined init with copy of OSLogInterpolation(v31, &v23);
  outlined destroy of OSLogInterpolation(v31);
  memcpy(v30, a5, sizeof(v30));
  outlined init with copy of OSLogInterpolation(v30, &v22);
  outlined destroy of OSLogInterpolation(v30);
  memcpy(v27, a5, sizeof(v27));
  outlined init with copy of OSLogInterpolation(v27, &v21);
  v28 = v27[2];
  outlined init with copy of OSLogArguments(&v28, &v20);
  outlined destroy of OSLogInterpolation(v27);
  outlined init with copy of OSLogArguments(&v28, &v19);
  v29 = v28;
  outlined destroy of OSLogArguments(&v28);
  v13 = OS_os_log.signpostsEnabled.getter();
  if (v13)
  {
    if (a3)
    {
      if (a1 > 0xFFFFFFFF)
      {
        v13 = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      if (a1 < 0xD800 || a1 > 0xDFFF)
      {
        goto LABEL_17;
      }

      do
      {
        v13 = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
LABEL_17:
        ;
      }

      while (a1 > 0x10FFFF);
      MEMORY[0x1EEE9AC00](v13);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSPys4Int8VGMd, &_sSPys4Int8VGMR);
      Unicode.Scalar.withUTF8CodeUnits<A>(_:)();
    }

    else
    {
      if (!a1)
      {
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      if (a2 < 0)
      {
        _fatalErrorMessage(_:_:file:line:flags:)();
        __break(1u);
      }

      closure #1 in _globalStringTablePointerOfStaticString(_:)(a1, &v17);
    }

    __break(1u);
  }

  else
  {
    outlined destroy of [(_:_:_:)](&v29);
  }

  type metadata accessor for OSSignpostIntervalState();
  v18 = *a4;
  v14 = protocol witness for static Equatable.== infix(_:_:) in conformance OSSignpostAnimationBegin();
  return OSSignpostIntervalState.__allocating_init(id:isOpen:)(&v18, v14 & 1);
}

uint64_t OSSignpostIntervalState.__allocating_init(id:isOpen:)(void *a1, char a2)
{
  result = swift_allocObject();
  *(result + 16) = *a1;
  *(result + 24) = a2;
  return result;
}

uint64_t OSSignposter.beginInterval(_:id:)(unint64_t a1, uint64_t a2, char a3, os_signpost_id_t *a4, char *a5)
{
  v27 = a5;
  v9 = OSSignposter.logHandle.getter();
  v10 = static os_signpost_type_t.begin.getter();
  v11 = OS_os_log.signpostsEnabled.getter();
  if (v11)
  {
    if (a3)
    {
      if (a1 > 0xFFFFFFFF)
      {
        v11 = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      if (a1 < 0xD800 || a1 > 0xDFFF)
      {
        goto LABEL_17;
      }

      do
      {
        v11 = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
LABEL_17:
        ;
      }

      while (a1 > 0x10FFFF);
      MEMORY[0x1EEE9AC00](v11);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSPys4Int8VGMd, &_sSPys4Int8VGMR);
      Unicode.Scalar.withUTF8CodeUnits<A>(_:)();
    }

    else
    {
      if (!a1)
      {
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      if (a2 < 0)
      {
        _fatalErrorMessage(_:_:file:line:flags:)();
        __break(1u);
      }

      closure #1 in _globalStringTablePointerOfStaticString(_:)(a1, &v32);
    }

    v12 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v13 = _allocateUninitializedArray<A>(_:)();
    v14 = v9;
    v25 = &v22;
    MEMORY[0x1EEE9AC00](v14);
    v24 = v12;
    v15 = static UnsafeMutablePointer.allocate(capacity:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v16 = createStorage<A>(capacity:type:)(0);
    v17 = createStorage<A>(capacity:type:)(0);
    v23 = v15;
    v31[0] = v15;
    v30 = v16;
    v22 = v17;
    v29 = v17;
    serialize(_:at:)(0, v31);
    v18 = serialize(_:at:)(0, v31);
    v26 = v13;
    v28 = v13;
    MEMORY[0x1EEE9AC00](v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, ".");
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    v19 = v23;
    closure #1 in osSignpostWithoutMessage(log:name:id:type:state:formatString:)(v23, 2u, v9, v10, a4, v24, v27);
    destroyStorage<A>(_:count:)(v16);
    destroyStorage<A>(_:count:)(v22);
    MEMORY[0x1AC55C650](v19, MEMORY[0x1E69E7508]);
  }

  type metadata accessor for OSSignpostIntervalState();
  v33 = *a4;
  v20 = protocol witness for static Equatable.== infix(_:_:) in conformance OSSignpostAnimationBegin();
  return OSSignpostIntervalState.__allocating_init(id:isOpen:)(&v33, v20 & 1);
}

uint64_t OSSignposter.beginAnimationInterval(_:id:_:)(unint64_t a1, uint64_t a2, char a3, uint64_t *a4, const void *a5)
{
  v10 = OSSignposter.logHandle.getter();
  static os_signpost_type_t.begin.getter();
  memcpy(__dst, a5, 0x38uLL);
  outlined init with copy of OSLogInterpolation(__dst, &v24);

  outlined destroy of OSLogInterpolation(__dst);
  v23 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  static String.+= infix(_:_:)();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" isAnimation=YES", 0x10uLL, 1);
  static String.+= infix(_:_:)();

  outlined destroy of String(&v23);

  memcpy(v31, a5, sizeof(v31));
  outlined init with copy of OSLogInterpolation(v31, &v22);
  outlined destroy of OSLogInterpolation(v31);
  memcpy(v30, a5, sizeof(v30));
  outlined init with copy of OSLogInterpolation(v30, &v21);
  outlined destroy of OSLogInterpolation(v30);
  OSLogMessage.bufferSize.getter();
  memcpy(v29, a5, sizeof(v29));
  outlined init with copy of OSLogInterpolation(v29, &v20);
  outlined destroy of OSLogInterpolation(v29);
  memcpy(v28, a5, sizeof(v28));
  outlined init with copy of OSLogInterpolation(v28, &v19);
  outlined destroy of OSLogInterpolation(v28);
  memcpy(v25, a5, sizeof(v25));
  outlined init with copy of OSLogInterpolation(v25, &v18);
  v26 = v25[2];
  outlined init with copy of OSLogArguments(&v26, &v17);
  outlined destroy of OSLogInterpolation(v25);
  outlined init with copy of OSLogArguments(&v26, &v16);
  v27 = v26;
  outlined destroy of OSLogArguments(&v26);
  v11 = OS_os_log.signpostsEnabled.getter();
  if (v11)
  {
    if (a3)
    {
      if (a1 > 0xFFFFFFFF)
      {
        v11 = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      if (a1 < 0xD800 || a1 > 0xDFFF)
      {
        goto LABEL_17;
      }

      do
      {
        v11 = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
LABEL_17:
        ;
      }

      while (a1 > 0x10FFFF);
      MEMORY[0x1EEE9AC00](v11);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSPys4Int8VGMd, &_sSPys4Int8VGMR);
      Unicode.Scalar.withUTF8CodeUnits<A>(_:)();
    }

    else
    {
      if (!a1)
      {
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      if (a2 < 0)
      {
        _fatalErrorMessage(_:_:file:line:flags:)();
        __break(1u);
      }

      closure #1 in _globalStringTablePointerOfStaticString(_:)(a1, &v14);
    }

    __break(1u);
  }

  else
  {
    outlined destroy of [(_:_:_:)](&v27);
  }

  type metadata accessor for OSSignpostIntervalState();
  v15 = *a4;
  v12 = protocol witness for static Equatable.== infix(_:_:) in conformance OSSignpostAnimationBegin();
  return OSSignpostIntervalState.__allocating_init(id:isOpen:)(&v15, v12 & 1);
}

void OSSignposter.endInterval(_:_:_:)(unint64_t a1, uint64_t a2, char a3, uint64_t a4, const void *a5)
{
  v8 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter(&v23);
  static os_signpost_type_t.end.getter();

  memcpy(__dst, a5, 0x38uLL);
  outlined init with copy of OSLogInterpolation(__dst, &v22);
  v9 = __dst[0];
  v10 = __dst[1];

  outlined destroy of OSLogInterpolation(__dst);
  v11._countAndFlagsBits = v9;
  v11._object = v10;
  id(_:)(v11);

  memcpy(v30, a5, sizeof(v30));
  outlined init with copy of OSLogInterpolation(v30, &v21);
  outlined destroy of OSLogInterpolation(v30);
  memcpy(v29, a5, sizeof(v29));
  outlined init with copy of OSLogInterpolation(v29, &v20);
  outlined destroy of OSLogInterpolation(v29);
  OSLogMessage.bufferSize.getter();
  memcpy(v28, a5, sizeof(v28));
  outlined init with copy of OSLogInterpolation(v28, &v19);
  outlined destroy of OSLogInterpolation(v28);
  memcpy(v27, a5, sizeof(v27));
  outlined init with copy of OSLogInterpolation(v27, &v18);
  outlined destroy of OSLogInterpolation(v27);
  memcpy(v24, a5, sizeof(v24));
  outlined init with copy of OSLogInterpolation(v24, &v17);
  v25 = v24[2];
  outlined init with copy of OSLogArguments(&v25, &v16);
  outlined destroy of OSLogInterpolation(v24);
  outlined init with copy of OSLogArguments(&v25, &v15);
  v26 = v25;
  outlined destroy of OSLogArguments(&v25);
  v12 = OS_os_log.signpostsEnabled.getter();
  if (v12)
  {
    if (a3)
    {
      if (a1 > 0xFFFFFFFF)
      {
        v12 = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      if (a1 < 0xD800 || a1 > 0xDFFF)
      {
        goto LABEL_17;
      }

      do
      {
        v12 = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
LABEL_17:
        ;
      }

      while (a1 > 0x10FFFF);
      MEMORY[0x1EEE9AC00](v12);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSPys4Int8VGMd, &_sSPys4Int8VGMR);
      Unicode.Scalar.withUTF8CodeUnits<A>(_:)();
    }

    else
    {
      if (!a1)
      {
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      if (a2 < 0)
      {
        _fatalErrorMessage(_:_:file:line:flags:)();
        __break(1u);
      }

      closure #1 in _globalStringTablePointerOfStaticString(_:)(a1, &v14);
    }

    __break(1u);
  }

  else
  {
    outlined destroy of [(_:_:_:)](&v26);
  }
}

void OSSignposter.endInterval(_:_:)(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v8 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter(&v27);
  v9 = static os_signpost_type_t.end.getter();

  v10 = OS_os_log.signpostsEnabled.getter();
  if (v10)
  {
    if (a3)
    {
      if (a1 > 0xFFFFFFFF)
      {
        v10 = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      if (a1 < 0xD800 || a1 > 0xDFFF)
      {
        goto LABEL_22;
      }

      do
      {
        v10 = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
LABEL_22:
        ;
      }

      while (a1 > 0x10FFFF);
      MEMORY[0x1EEE9AC00](v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSPys4Int8VGMd, &_sSPys4Int8VGMR);
      Unicode.Scalar.withUTF8CodeUnits<A>(_:)();
    }

    else
    {
      if (!a1)
      {
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      if (a2 < 0)
      {
        _fatalErrorMessage(_:_:file:line:flags:)();
        __break(1u);
      }

      closure #1 in _globalStringTablePointerOfStaticString(_:)(a1, &v26);
    }

    v11 = v26;

    if (a4)
    {
      checkForErrorAndConsumeState(state:)(a4, &v21);
      if ((v21 & 1) == 0)
      {
        String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("[Error] Interval already ended", 0x1EuLL, 1);
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v12 = _allocateUninitializedArray<A>(_:)();
    v13 = v8;
    v19[1] = v19;
    MEMORY[0x1EEE9AC00](v13);
    v20 = v11;
    v14 = static UnsafeMutablePointer.allocate(capacity:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v15 = createStorage<A>(capacity:type:)(0);
    v16 = createStorage<A>(capacity:type:)(0);
    v19[0] = v14;
    v25[0] = v14;
    v24 = v15;
    v23 = v16;
    serialize(_:at:)(0, v25);
    v17 = serialize(_:at:)(0, v25);
    v19[2] = v12;
    v22 = v12;
    MEMORY[0x1EEE9AC00](v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, ".");
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    v18 = v19[0];
    closure #1 in osSignpostWithoutMessage(log:name:id:type:state:formatString:)(v19[0], 2u, v8, v9, &v27, v20, "");
    destroyStorage<A>(_:count:)(v15);
    destroyStorage<A>(_:count:)(v16);
    MEMORY[0x1AC55C650](v18, MEMORY[0x1E69E7508]);
  }
}

void OSSignposter.withIntervalSignpost<A>(_:id:_:around:)(unint64_t a1, uint64_t a2, char a3, int a4, void *__src)
{
  memcpy(__dst, __src, 0x38uLL);
  outlined init with copy of OSLogInterpolation(__dst, &v18);

  outlined destroy of OSLogInterpolation(__dst);
  memcpy(v24, __src, sizeof(v24));
  outlined init with copy of OSLogInterpolation(v24, &v17);
  outlined destroy of OSLogInterpolation(v24);
  memcpy(v23, __src, sizeof(v23));
  outlined init with copy of OSLogInterpolation(v23, &v16);
  outlined destroy of OSLogInterpolation(v23);
  OSLogMessage.bufferSize.getter();
  memcpy(v22, __src, sizeof(v22));
  outlined init with copy of OSLogInterpolation(v22, &v15);
  outlined destroy of OSLogInterpolation(v22);
  memcpy(v21, __src, sizeof(v21));
  outlined init with copy of OSLogInterpolation(v21, &v14);
  outlined destroy of OSLogInterpolation(v21);
  memcpy(v19, __src, sizeof(v19));
  outlined init with copy of OSLogInterpolation(v19, &v13);
  v20 = v19[2];
  outlined init with copy of OSLogArguments(&v20, &v12);
  outlined destroy of OSLogInterpolation(v19);
  outlined init with copy of OSLogArguments(&v20, &v11);
  __dst[8] = v20;
  i = outlined destroy of OSLogArguments(&v20);
  if (a3)
  {
    goto LABEL_10;
  }

  if (!a1)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  if (a2 < 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
  }

  for (i = closure #1 in _globalStringTablePointerOfStaticString(_:)(a1, &v10); ; i = Unicode.Scalar.withUTF8CodeUnits<A>(_:)())
  {
    __break(1u);
LABEL_10:
    if (a1 > 0xFFFFFFFF)
    {
      i = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    if (a1 >= 0xD800 && a1 <= 0xDFFF)
    {
      break;
    }

LABEL_15:
    if (a1 > 0x10FFFF)
    {
      break;
    }

    MEMORY[0x1EEE9AC00](i);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSPys4Int8VGMd, &_sSPys4Int8VGMR);
  }

  i = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  goto LABEL_15;
}

uint64_t OSSignposter.withIntervalSignpost<A>(_:id:around:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *(*(a7 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v20)
  {
    if (v11 > 0xFFFFFFFF)
    {
      LODWORD(v34) = 0;
      v33 = 3053;
      LOBYTE(v32) = 2;
      v11 = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    if (v11 < 0xD800 || v11 > 0xDFFF)
    {
      goto LABEL_15;
    }

    do
    {
      LODWORD(v34) = 0;
      v33 = 148;
      LOBYTE(v32) = 2;
      v11 = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
LABEL_15:
      ;
    }

    while (v11 > 0x10FFFF);
    v40 = v17;
    v21 = v13;
    v22 = v14;
    v41 = v15;
    v43 = v16;
    MEMORY[0x1EEE9AC00](v11);
    v34 = closure #1 in _globalStringTablePointerOfStaticString(_:);
    v35 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSPys4Int8VGMd, &_sSPys4Int8VGMR);
    Unicode.Scalar.withUTF8CodeUnits<A>(_:)();
    v42 = v8;
  }

  else
  {
    if (!v11)
    {
      LODWORD(v34) = 0;
      v33 = 136;
      LOBYTE(v32) = 2;
      v11 = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    if (v12 < 0)
    {
      LODWORD(v34) = 0;
      v33 = 1410;
      LOBYTE(v32) = 2;
      v11 = _fatalErrorMessage(_:_:file:line:flags:)();
      __break(1u);
    }

    v40 = v17;
    v21 = v13;
    v22 = v14;
    v41 = v15;
    v42 = v8;
    v43 = v16;
    closure #1 in _globalStringTablePointerOfStaticString(_:)(v11, &v48);
  }

  v23 = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v39 = _allocateUninitializedArray<A>(_:)();
  v38 = &v36;
  MEMORY[0x1EEE9AC00](v39);
  v24 = &v36 - 10;
  v24[2] = a7;
  v24[3] = v7;
  v24[4] = v21;
  v24[5] = v23;
  v24[6] = "";
  v24[7] = v22;
  v24[8] = v41;
  v25 = static UnsafeMutablePointer.allocate(capacity:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  v26 = createStorage<A>(capacity:type:)(0);
  v27 = createStorage<A>(capacity:type:)(0);
  v37 = v25;
  v47 = v25;
  v46 = v26;
  v45 = v27;
  serialize(_:at:)(0, &v47);
  v28 = serialize(_:at:)(0, &v47);
  v44 = v39;
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v47;
  v33 = &v46;
  v34 = &v45;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, ".");
  lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
  v30 = v42;
  Sequence.forEach(_:)();
  if (v30)
  {
    __break(1u);
  }

  else
  {
    v29 = v37;
    partial apply for closure #1 in OSSignposter.withIntervalSignpost<A>(_:id:around:)(v37, 2u);
  }

  destroyStorage<A>(_:count:)(v26);
  destroyStorage<A>(_:count:)(v27);
  MEMORY[0x1AC55C650](v29, MEMORY[0x1E69E7508]);
  (*(v40 + 32))(v43, v19, a7);
}

void closure #1 in OSSignposter.withIntervalSignpost<A>(_:id:around:)(uint8_t *a1, uint32_t a2, id *a3, os_signpost_id_t *a4, const char *a5, const char *a6, void (*a7)(void))
{
  v12 = *a4;
  v13 = *a3;
  _os_signpost_emit_with_name_impl(&dword_1A789E000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v12, a5, a6, a1, a2);
  a7();
  if (!v14)
  {
    _os_signpost_emit_with_name_impl(&dword_1A789E000, v13, OS_SIGNPOST_INTERVAL_END, v12, a5, a6, a1, a2);
  }
}

os_signpost_id_t OSSignposter.makeSignpostID()@<X0>(os_signpost_id_t *a1@<X8>)
{
  result = os_signpost_id_generate(*v1);
  *a1 = result;
  return result;
}

os_signpost_id_t OSSignposter.makeSignpostID(from:)@<X0>(void *ptr@<X0>, os_signpost_id_t *a2@<X8>)
{
  result = os_signpost_id_make_with_pointer(*v2, ptr);
  *a2 = result;
  return result;
}

Swift::Int OSSignpostError.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1AC55C7F0](v1);
  return Hasher._finalize()();
}

uint64_t static OSSignpostIntervalState.beginState(id:)(uint64_t *a1)
{
  v1 = *a1;
  type metadata accessor for OSSignpostIntervalState();
  result = swift_allocObject();
  *(result + 16) = v1;
  *(result + 24) = 1;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance OSSignpostIntervalState.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x74736F706E676973 && a2 == 0xEA00000000004449;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E65704F7369 && a2 == 0xE600000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance OSSignpostIntervalState.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OSSignpostIntervalState.CodingKeys and conformance OSSignpostIntervalState.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance OSSignpostIntervalState.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OSSignpostIntervalState.CodingKeys and conformance OSSignpostIntervalState.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t OSSignpostIntervalState.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  OSSignpostIntervalState.init(from:)(a1);
  return v2;
}

uint64_t OSSignpostIntervalState.init(from:)(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy2os23OSSignpostIntervalStateC10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy2os23OSSignpostIntervalStateC10CodingKeysOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type OSSignpostIntervalState.CodingKeys and conformance OSSignpostIntervalState.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    type metadata accessor for OSSignpostIntervalState();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v14 = 0;
    *(v1 + 16) = KeyedDecodingContainer.decode(_:forKey:)();
    v13 = 1;
    v11 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v5 + 8))(v8, v4);
    *(v1 + 24) = v11 & 1;
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v1;
}

uint64_t OSSignpostIntervalState._hasValue(id:isOpen:)(void *a1, int a2)
{
  if (*(v2 + 16) == *a1)
  {
    return (*(v2 + 24) ^ a2 ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t protocol witness for Decodable.init(from:) in conformance OSSignpostIntervalState@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for OSSignpostIntervalState();
  v5 = swift_allocObject();
  result = OSSignpostIntervalState.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

Swift::String __swiftcall id(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;

  v3 = countAndFlagsBits;
  v4 = object;
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

uint64_t closure #1 in _globalStringTablePointerOfStaticString(_:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  if (result)
  {
    *a2 = result;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t partial apply for closure #1 in StaticString.withUTF8Buffer<A>(_:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t closure #1 in emitSignpost<A>(preamble:argumentCount:bufferSize:objectCount:stringCount:argumentClosures:signpostTask:)partial apply(uint64_t a1)
{
  return partial apply for closure #1 in _checkFormatStringAndBuffer(_:with:)(a1);
}

{
  return closure #1 in emitSignpost<A>(preamble:argumentCount:bufferSize:objectCount:stringCount:argumentClosures:signpostTask:)partial apply(a1);
}

void partial apply for closure #1 in OSSignposter.withIntervalSignpost<A>(_:id:around:)(uint8_t *a1, uint32_t a2)
{
  v3 = *(v2 + 64);
  v4 = *(v2 + 16);
  closure #1 in OSSignposter.withIntervalSignpost<A>(_:id:around:)(a1, a2, *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56));
}

unint64_t lazy protocol witness table accessor for type OSSignpostError and conformance OSSignpostError()
{
  result = lazy protocol witness table cache variable for type OSSignpostError and conformance OSSignpostError;
  if (!lazy protocol witness table cache variable for type OSSignpostError and conformance OSSignpostError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OSSignpostError and conformance OSSignpostError);
  }

  return result;
}

uint64_t OSLogInterpolation.appendInteger<A>(_:format:align:privacy:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, __int128 *a7, __int16 *a8, uint64_t a9, uint64_t a10)
{
  v10 = *(a7 + 16);
  v11 = *a8;
  v14 = *a7;
  v15 = v10;
  v13 = v11;
  return OSLogInterpolation.appendInteger<A>(_:format:align:privacy:attributes:)(a1, a2, a3, a4 & 0x10101, a5, a6, &v14, &v13, 0, 0xE000000000000000, a9, a10);
}

uint64_t OSLogInterpolation.getStringFormatSpecifier(_:_:)(__int128 *a1, __int16 *a2)
{
  v2 = *(a1 + 16);
  v3 = *a2;
  v7 = *a1;
  v8 = v2;
  v6 = v3;
  v4 = &v6;
  return OSLogInterpolation.getStringFormatSpecifier(_:_:_:)(&v7, v4, 0, 0xE000000000000000);
}

uint64_t OSLogInterpolation.getPointerFormatSpecifier(_:_:)(char *a1, __int16 *a2, uint64_t (*a3)(char *, __int16 *, void, unint64_t))
{
  v3 = *a2;
  v6 = *a1;
  v5 = v3;
  return a3(&v6, &v5, 0, 0xE000000000000000);
}

uint64_t OSLogIntegerFormatting.formatSpecifier<A>(for:align:privacy:)(uint64_t a1, __int128 *a2, __int16 *a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = *(a2 + 16);
  v10 = *a3;
  v14 = *a2;
  v15 = v9;
  v13 = v10;
  v11 = &v13;
  return OSLogIntegerFormatting.formatSpecifier<A>(for:align:privacy:attributes:)(a1, &v14, v11, 0, 0xE000000000000000, a4, a5 & 0x10101, a6, a7, a8, a9);
}

uint64_t OSLogFloatFormatting.formatSpecifier<A>(for:align:privacy:)(uint64_t a1, __int128 *a2, __int16 *a3)
{
  v4 = *(a2 + 16);
  v5 = *a3;
  v6 = v3[1];
  v7 = v3[24];
  v13 = *v3;
  v14 = v6;
  v15 = *(v3 + 8);
  v16 = v7;
  v11 = *a2;
  v12 = v4;
  v10 = v5;
  v8 = &v10;
  return OSLogFloatFormatting.formatSpecifier<A>(for:align:privacy:attributes:)(a1, &v11, v8, 0, 0xE000000000000000);
}

uint64_t serialize(_:at:using:)(uint64_t a1, unint64_t a2, uint64_t *a3, uint64_t *a4)
{
  getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, a4);
  v5 = *a3 + 8;
  result = UnsafeMutableRawBufferPointer.copyMemory(from:)();
  *a3 = v5;
  return result;
}

Swift::UInt32 __swiftcall OS_os_workgroup.copyPort()()
{
  v5 = *MEMORY[0x1E69E9840];
  mach_port_out = 0;
  if (os_workgroup_copy_port(v0, &mach_port_out))
  {
    _StringGuts.grow(_:)(48);

    v3 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1AC55C5E0](v3);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    result = mach_port_out;
    v2 = *MEMORY[0x1E69E9840];
  }

  return result;
}

OS_os_workgroup_optional __swiftcall OS_os_workgroup.init(port:name:)(Swift::UInt32 port, Swift::String_optional name)
{
  if (name.value._object)
  {
    v3 = String.utf8CString.getter();

    v4 = os_workgroup_create_with_port((v3 + 32), port);

    if (v4)
    {

      v6 = v4;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = os_workgroup_create_with_port(0, port);
  }

  result.value.super.super.isa = v6;
  result.is_nil = v5;
  return result;
}

OS_os_workgroup_optional __swiftcall OS_os_workgroup.copy(name:)(Swift::String_optional name)
{
  if (name.value._object)
  {
    MEMORY[0x1EEE9AC00](name.value._countAndFlagsBits);
    v6[2] = v1;
    v4 = specialized String.withCString<A>(_:)(partial apply for closure #1 in OS_os_workgroup.copy(name:), v6, v2, v3);
  }

  else
  {
    v4 = os_workgroup_create_with_workgroup(0, v1);
  }

  result.value.super.super.isa = v4;
  result.is_nil = v5;
  return result;
}

os_workgroup_t partial apply for closure #1 in OS_os_workgroup.copy(name:)@<X0>(const char *a1@<X0>, os_workgroup_t *a2@<X8>)
{
  result = os_workgroup_create_with_workgroup(a1, *(v2 + 16));
  *a2 = result;
  return result;
}

void *specialized String.withCString<A>(_:)(void *(*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0 || !(a4 & 0x2000000000000000 | a3 & 0x1000000000000000))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15OS_os_workgroupCSgMd, &_sSo15OS_os_workgroupCSgMR);
    result = _StringGuts._slowWithCString<A>(_:)();
    if (!v4)
    {
      return v12[3];
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    if ((v7 & 0x2000000000000000) != 0)
    {
      v12[0] = v6;
      v12[1] = v7 & 0xFFFFFFFFFFFFFFLL;
      result = a1(&v11, v12);
      if (!v4)
      {
        return v11;
      }
    }

    else
    {
      if ((v6 & 0x1000000000000000) != 0)
      {
        v8 = (v7 & 0xFFFFFFFFFFFFFFFLL) + 32;
        v9 = v6 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v8 = _StringObject.sharedUTF8.getter();
      }

      return _sSRsRi_zrlE17withMemoryRebound2to_qd_1_qd__m_qd_1_SRyqd__Gqd_0_YKXEtqd_0_YKs5ErrorRd_0_Ri_d__Ri_d_1_r1_lFSRyxGq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lys4Int8VsAD_pqd_1_Isgyrzr_SRys5UInt8VGqd_1_sAD_pAIRszAGRsd__sAD_pRsd_0_Ri_d_1_r_1_lIetMgyrzo_Tpq5So15OS_os_workgroupCSg_Tg507_sSRys4f5VGxs5e32_pIgyrzo_ACxsAD_pIegyrzr_lTRSo15h1_i1_J7CSg_TG5SRyAGGAMsAD_pIgyrzo_Tf1cn_n(v8, v9, partial apply for specialized closure #1 in _StringGuts.withCString<A>(_:));
    }
  }

  return result;
}

uint64_t OS_os_workgroup.join()@<X0>(uint64_t a1@<X8>)
{
  v8 = *MEMORY[0x1E69E9840];
  memset(&token_out, 0, sizeof(token_out));
  result = os_workgroup_join(v1, &token_out);
  if (result)
  {
    _StringGuts.grow(_:)(38);

    v6 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1AC55C5E0](v6);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v4 = *&token_out.opaque[12];
    *a1 = *&token_out.sig;
    *(a1 + 16) = v4;
    *(a1 + 32) = *&token_out.opaque[28];
    v5 = *MEMORY[0x1E69E9840];
  }

  return result;
}

void OS_os_workgroup.leave(token:)(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  *&v4.sig = *a1;
  *&v4.opaque[12] = v2;
  *&v4.opaque[28] = *(a1 + 32);
  os_workgroup_leave(v1, &v4);
  v3 = *MEMORY[0x1E69E9840];
}

uint64_t OS_os_workgroup.setWorkingArena(arena:max_workers:destruct:)(void *arena, uint32_t max_workers, os_workgroup_working_arena_destructor_t destructor)
{
  result = os_workgroup_set_working_arena(v3, arena, max_workers, destructor);
  if (result)
  {
    _StringGuts.grow(_:)(45);

    v5 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1AC55C5E0](v5);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void *OS_os_workgroup.workingArena.getter()
{
  v4 = *MEMORY[0x1E69E9840];
  index_out = 0;
  result = os_workgroup_get_working_arena(v0, &index_out);
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

Swift::Void __swiftcall OS_os_workgroup.start(at:deadline:)(Swift::UInt64 at, Swift::UInt64 deadline)
{
  if (os_workgroup_interval_start(v2, at, deadline, 0))
  {
    _StringGuts.grow(_:)(54);
    MEMORY[0x1AC55C5E0](0xD000000000000034, 0x80000001A78B8210);
    v3 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1AC55C5E0](v3);

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

Swift::Void __swiftcall OS_os_workgroup.updateDeadline(deadline:)(Swift::UInt64 deadline)
{
  if (os_workgroup_interval_update(v1, deadline, 0))
  {
    _StringGuts.grow(_:)(66);
    MEMORY[0x1AC55C5E0](0xD000000000000040, 0x80000001A78B8250);
    v2 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1AC55C5E0](v2);

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

Swift::Void __swiftcall OS_os_workgroup.finish()()
{
  if (os_workgroup_interval_finish(v0, 0))
  {
    _StringGuts.grow(_:)(55);
    MEMORY[0x1AC55C5E0](0xD000000000000035, 0x80000001A78B82A0);
    v1 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1AC55C5E0](v1);

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

OS_os_workgroup_parallel_optional __swiftcall OS_os_workgroup_parallel.init(name:)(Swift::String_optional name)
{
  if (name.value._object)
  {
    v1 = String.utf8CString.getter();

    v2 = os_workgroup_parallel_create((v1 + 32), 0);

    if (v2)
    {

      v4 = v2;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = os_workgroup_parallel_create(0, 0);
  }

  result.value.super.super.super.isa = v4;
  result.is_nil = v3;
  return result;
}

void *_sSRsRi_zrlE17withMemoryRebound2to_qd_1_qd__m_qd_1_SRyqd__Gqd_0_YKXEtqd_0_YKs5ErrorRd_0_Ri_d__Ri_d_1_r1_lFSRyxGq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lys4Int8VsAD_pqd_1_Isgyrzr_SRys5UInt8VGqd_1_sAD_pAIRszAGRsd__sAD_pRsd_0_Ri_d_1_r_1_lIetMgyrzo_Tpq5So15OS_os_workgroupCSg_Tg507_sSRys4f5VGxs5e32_pIgyrzo_ACxsAD_pIegyrzr_lTRSo15h1_i1_J7CSg_TG5SRyAGGAMsAD_pIgyrzo_Tf1cn_n(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr))
{
  if (a1 && a2 < 0)
  {
    result = _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    result = a3(&v5);
    if (!v3)
    {
      return v5;
    }
  }

  return result;
}

void *partial apply for specialized closure #1 in _StringGuts.withCString<A>(_:)@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4(&v7);
  if (!v2)
  {
    *a1 = v7;
  }

  return result;
}

uint64_t specialized SetAlgebra<>.init(arrayLiteral:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
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
    LOBYTE(v4) = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t specialized SetAlgebra<>.init(arrayLiteral:)@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
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

_DWORD *protocol witness for RawRepresentable.init(rawValue:) in conformance OSAllocatedUnfairLockFlags@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

BOOL protocol witness for SetAlgebra.insert(_:) in conformance OSAllocatedUnfairLockFlags(_DWORD *a1, int *a2)
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

_DWORD *protocol witness for SetAlgebra.remove(_:) in conformance OSAllocatedUnfairLockFlags@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 4) = v3 == 0;
  return result;
}

int *protocol witness for SetAlgebra.update(with:) in conformance OSAllocatedUnfairLockFlags@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 4) = v5 == 0;
  return result;
}

Swift::Int OSAllocatedUnfairLock.Ownership.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1AC55C7F0](a1 & 1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance OSAllocatedUnfairLock<A>.Ownership()
{
  Hasher.init(_seed:)();
  OSAllocatedUnfairLock.Ownership.hash(into:)(v2, *v0);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type OSAllocatedUnfairLockFlags and conformance OSAllocatedUnfairLockFlags()
{
  result = lazy protocol witness table cache variable for type OSAllocatedUnfairLockFlags and conformance OSAllocatedUnfairLockFlags;
  if (!lazy protocol witness table cache variable for type OSAllocatedUnfairLockFlags and conformance OSAllocatedUnfairLockFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OSAllocatedUnfairLockFlags and conformance OSAllocatedUnfairLockFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OSAllocatedUnfairLockFlags and conformance OSAllocatedUnfairLockFlags;
  if (!lazy protocol witness table cache variable for type OSAllocatedUnfairLockFlags and conformance OSAllocatedUnfairLockFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OSAllocatedUnfairLockFlags and conformance OSAllocatedUnfairLockFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OSAllocatedUnfairLockFlags and conformance OSAllocatedUnfairLockFlags;
  if (!lazy protocol witness table cache variable for type OSAllocatedUnfairLockFlags and conformance OSAllocatedUnfairLockFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OSAllocatedUnfairLockFlags and conformance OSAllocatedUnfairLockFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OSAllocatedUnfairLockFlags and conformance OSAllocatedUnfairLockFlags;
  if (!lazy protocol witness table cache variable for type OSAllocatedUnfairLockFlags and conformance OSAllocatedUnfairLockFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OSAllocatedUnfairLockFlags and conformance OSAllocatedUnfairLockFlags);
  }

  return result;
}

size_t os_trace_blob_add_slow(uint64_t a1, void *__src, size_t __n)
{
  if ((*(a1 + 20) & 2) != 0)
  {
    return 0;
  }

  v3 = __n;
  v6 = *(a1 + 12);
  v7 = v6 - *(a1 + 8) - (*(a1 + 22) ^ 1);
  if (v7 < __n)
  {
    if (v6 < *(a1 + 16))
    {
      v7 = os_trace_blob_grow(a1, __n);
    }

    if (v7 < v3)
    {
      *(a1 + 20) |= 2u;
      v3 = v7;
    }
  }

  memcpy((*a1 + *(a1 + 8)), __src, v3);
  v8 = *(a1 + 8) + v3;
  *(a1 + 8) = v8;
  if ((*(a1 + 22) & 1) == 0)
  {
    *(*a1 + v8) = 0;
  }

  return v3;
}

uint64_t _assertionFailure(_:_:file:line:flags:)()
{
  return MEMORY[0x1EEE6A998]();
}

{
  return MEMORY[0x1EEE6A9A0]();
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return MEMORY[0x1EEE6ACD0]();
}

{
  return MEMORY[0x1EEE6AD38]();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return MEMORY[0x1EEE6AE08]();
}

{
  return MEMORY[0x1EEE6AE70]();
}