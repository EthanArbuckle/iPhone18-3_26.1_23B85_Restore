Swift::Void __swiftcall _Deque._Storage._ensureUnique(minimumCapacity:linearGrowth:)(Swift::Int minimumCapacity, Swift::Bool linearGrowth)
{
  v4 = v2;
  v7 = *(v2 + 16);
  _ss20ManagedBufferPointerVsRi__rlE017withUnsafeMutableC8ToHeaderyqd_0_qd_0_SpyxGqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(closure #1 in _Deque._Storage.capacity.getter, 0, *v3, &type metadata for _DequeBufferHeader, v7, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v18);
  v8 = type metadata accessor for ManagedBufferPointer();
  v9 = MEMORY[0x1865D40D0](v8);
  v10 = v9;
  if (v20 < minimumCapacity)
  {
    v11 = minimumCapacity;
    v12 = *v3;
    v13 = _Deque._Storage._growCapacity(to:linearly:)(v11, linearGrowth);
    if (v10)
    {
      v18 = v7;
      v19 = MEMORY[0x1EEE9AC00](v13);
      v14 = partial apply for closure #2 in _Deque._Storage._ensureUnique(minimumCapacity:linearGrowth:);
      v15 = partial apply for closure #1 in _Deque._Storage.update<A>(_:);
LABEL_8:
      _Deque._Storage.read<A>(_:)(v14, &v17, v12, v7, v4, v15);

      *v3 = v20;
      return;
    }

    v18 = v7;
    v19 = MEMORY[0x1EEE9AC00](v13);
    v16 = partial apply for closure #3 in _Deque._Storage._ensureUnique(minimumCapacity:linearGrowth:);
LABEL_7:
    v14 = v16;
    v15 = partial apply for closure #1 in _Deque._Storage.read<A>(_:);
    goto LABEL_8;
  }

  if ((v9 & 1) == 0)
  {
    v12 = *v3;
    MEMORY[0x1EEE9AC00](v9);
    v18 = v7;
    v16 = partial apply for closure #1 in _Deque._Storage._ensureUnique(minimumCapacity:linearGrowth:);
    goto LABEL_7;
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t specialized _Deque._UnsafeHandle.moveElements(minimumCapacity:)(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a2[1];
  if (v3 > a1)
  {
    goto LABEL_13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12_DequeBufferCyytGMd, &_ss12_DequeBufferCyytGMR);
  v6 = swift_allocObject();
  v6[2] = _swift_stdlib_malloc_size(v6) - 40;
  v6[3] = v3;
  v6[4] = 0;
  swift_getObjectType();
  _swift_getObjCClassInstanceExtents();
  if (v7 < 0)
  {
    goto LABEL_12;
  }

  if (v7 == 16)
  {
    goto LABEL_6;
  }

  _swift_getObjCClassInstanceExtents();
  if (v8 < 0)
  {
LABEL_12:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
LABEL_13:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_14;
  }

  if (v8 != 40)
  {
LABEL_14:
    result = _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

LABEL_6:
  if ((_swift_objcClassUsesNativeSwiftReferenceCounting() & 1) == 0)
  {
    goto LABEL_14;
  }

  if (v3 > 0)
  {
    specialized _Deque._UnsafeHandle.segments()(a2, a3, v11);
    _ss27_UnsafeMutableWrappedBufferV8mutatingAByxGs01_acD0VyxG_tcfCyt_Tt0g5(v11, v12);
    v9 = specialized _Deque._UnsafeHandle.initialize(at:from:)(0, v12[0], v12[1], v6 + 2, (v6 + 5), 212, specialized UnsafeMutablePointer.moveInitialize(from:count:));
    if ((v13 & 1) == 0)
    {
      specialized _Deque._UnsafeHandle.initialize(at:from:)(v9, v12[2], v12[3], v6 + 2, (v6 + 5), 212, specialized UnsafeMutablePointer.moveInitialize(from:count:));
    }

    a2[1] = 0;
  }

  return v6;
}

uint64_t _Deque._UnsafeHandle.moveElements(minimumCapacity:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 8);
  if (v4 > a1)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v8 = type metadata accessor for _DequeBuffer();
    MEMORY[0x1EEE9AC00](v8);
    v13 = v4;
    static ManagedBuffer.create(minimumCapacity:makingHeaderWith:)();
    v9 = ManagedBufferPointer.init(unsafeBufferObject:)();
    v10 = v9;
    if (v4 >= 1)
    {
      MEMORY[0x1EEE9AC00](v9);
      v12[2] = a4;
      v12[3] = a2;
      v13 = a3;
      _Deque._Storage.read<A>(_:)(partial apply for closure #2 in _Deque._UnsafeHandle.moveElements(minimumCapacity:), v12, v10, a4, MEMORY[0x1E69E7CA8] + 8, partial apply for closure #1 in _Deque._Storage.update<A>(_:));
      *(a2 + 8) = 0;
    }

    return v10;
  }

  return result;
}

uint64_t specialized _Deque._UnsafeHandle.copyElements(minimumCapacity:)(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2[1] > a1)
  {
    goto LABEL_14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12_DequeBufferCyytGMd, &_ss12_DequeBufferCyytGMR);
  v5 = swift_allocObject();
  v6 = _swift_stdlib_malloc_size(v5);
  v7 = a2[1];
  v5[2] = v6 - 40;
  v5[3] = v7;
  v5[4] = 0;
  swift_getObjectType();
  _swift_getObjCClassInstanceExtents();
  if (v8 < 0)
  {
LABEL_13:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
LABEL_14:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_15;
  }

  if (v8 != 16)
  {
    _swift_getObjCClassInstanceExtents();
    if ((v9 & 0x8000000000000000) == 0)
    {
      if (v9 != 40)
      {
        goto LABEL_15;
      }

      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_6:
  if (_swift_objcClassUsesNativeSwiftReferenceCounting())
  {
    v10 = a2[1];
    if (v10 <= 0)
    {
      return v5;
    }

    if (v5[3] == v10 && !v5[4])
    {
      specialized _Deque._UnsafeHandle.segments()(a2, a3, v13);
      v11 = specialized _Deque._UnsafeHandle.initialize(at:from:)(0, v13[0], v13[1], v5 + 2, (v5 + 5), 201, specialized UnsafeMutablePointer.initialize(from:count:));
      if ((v14 & 1) == 0)
      {
        specialized _Deque._UnsafeHandle.initialize(at:from:)(v11, v13[2], v13[3], v5 + 2, (v5 + 5), 201, specialized UnsafeMutablePointer.initialize(from:count:));
      }

      return v5;
    }

    goto LABEL_14;
  }

LABEL_15:
  result = _fatalErrorMessage(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t _Deque._UnsafeHandle.copyElements(minimumCapacity:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a2 + 8) > a1)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v7 = type metadata accessor for _DequeBuffer();
    MEMORY[0x1EEE9AC00](v7);
    v12 = a2;
    v13 = a3;
    static ManagedBuffer.create(minimumCapacity:makingHeaderWith:)();
    v8 = ManagedBufferPointer.init(unsafeBufferObject:)();
    v9 = v8;
    if (*(a2 + 8) >= 1)
    {
      MEMORY[0x1EEE9AC00](v8);
      v11[2] = a4;
      v11[3] = a2;
      v12 = a3;
      _Deque._Storage.read<A>(_:)(partial apply for closure #2 in _Deque._UnsafeHandle.copyElements(minimumCapacity:), v11, v9, a4, MEMORY[0x1E69E7CA8] + 8, partial apply for closure #1 in _Deque._Storage.update<A>(_:));
    }

    return v9;
  }

  return result;
}

uint64_t _Deque._UnsafeHandle.ptr(at:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if ((a1 & 0x8000000000000000) == 0 && *a2 >= a1)
  {
    return a3 + *(*(a4 - 8) + 72) * a1;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t _Deque._UnsafeHandle.buffer(for:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (*a3 < a2)
  {
    goto LABEL_7;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
LABEL_7:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v6 = a4 + *(*(a5 - 8) + 72) * a1;

  return UnsafeBufferPointer.init(start:count:)();
}

uint64_t _Deque._UnsafeHandle.limSlot.getter(uint64_t *a1)
{
  result = *a1;
  if (result < 0)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t specialized _Deque._UnsafeHandle.slot(after:)(uint64_t a1, uint64_t *a2)
{
  if (*a2 <= a1)
  {
    goto LABEL_7;
  }

  result = a1 + 1;
  if (result >= *a2)
  {
    return 0;
  }

  if (a1 <= -2)
  {
LABEL_7:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

Swift::_DequeSlot __swiftcall _Deque._UnsafeHandle.slot(before:)(Swift::_DequeSlot before)
{
  v2 = *v1;
  if (*v1 <= before.position)
  {
    goto LABEL_10;
  }

  if (!before.position)
  {
    if (v2 > 0)
    {
      return (v2 - 1);
    }

LABEL_10:
    result.position = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v3 = __OFSUB__(before.position, 1);
  result.position = before.position - 1;
  if (v3)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (result.position < 0)
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t specialized _Deque._UnsafeHandle.slot(_:offsetBy:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  if (*a3 < a1)
  {
    goto LABEL_15;
  }

  v5 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v5)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (a2 < 0)
  {
    if ((result & 0x8000000000000000) == 0)
    {
      return result;
    }

    v5 = __OFADD__(result, v3);
    result += v3;
    if (v5)
    {
      goto LABEL_14;
    }

LABEL_10:
    if ((result & 0x8000000000000000) == 0)
    {
      return result;
    }

LABEL_15:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v5 = __OFSUB__(result, v3);
  v6 = result - v3;
  if (v6 < 0 != v5)
  {
    goto LABEL_10;
  }

  if (v5)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v6;
  if (v6 < 0)
  {
    goto LABEL_15;
  }

  return result;
}

Swift::_DequeSlot __swiftcall _Deque._UnsafeHandle.slot(forOffset:)(Swift::Int forOffset)
{
  if (forOffset < 0)
  {
    goto LABEL_9;
  }

  v2 = *v1;
  if (*v1 < forOffset)
  {
    goto LABEL_9;
  }

  result.position = v1[2] + forOffset;
  v4 = __OFSUB__(result.position, v2);
  v5 = result.position - v2;
  if (v5 < 0 != v4)
  {
    if ((result.position & 0x8000000000000000) == 0)
    {
      return result;
    }

LABEL_9:
    result.position = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  result.position = v5;
  if (v5 < 0)
  {
    goto LABEL_9;
  }

  return result;
}

void *specialized _Deque._UnsafeHandle.segments()@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = result[2];
  v5 = *result - v4;
  if (__OFSUB__(*result, v4))
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v7 = result[1];
  v9 = v4 < 0 || *result < v4;
  if (v5 < v7)
  {
    if (!v9)
    {
      if (!__OFSUB__(v7, v5))
      {
        result = _ss20_UnsafeWrappedBufferV5first5count6secondAdByxGSPyxG_SiAGSitcfCyt_Tt3g5(a2 + v4, v5, a2, v7 - v5, v13);
        v10 = v13[0];
        v7 = v13[1];
        v11 = v14;
        v12 = v15;
LABEL_15:
        *a3 = v10;
        *(a3 + 8) = v7;
        *(a3 + 16) = v11;
        *(a3 + 32) = v12;
        return result;
      }

      goto LABEL_17;
    }

LABEL_18:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_19;
  }

  if (v9)
  {
    goto LABEL_18;
  }

  if ((v7 & 0x8000000000000000) == 0)
  {
    v10 = a2 + v4;
    v11 = 0uLL;
    v12 = 1;
    goto LABEL_15;
  }

LABEL_19:
  result = _fatalErrorMessage(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t _Deque._UnsafeHandle.segments()@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a1;
  result = a1[2];
  v8 = v6 - result;
  if (__OFSUB__(v6, result))
  {
    __break(1u);
  }

  else
  {
    v11 = a1[1];
    _Deque._UnsafeHandle.ptr(at:)(result, a1, a2, a3);
    if (v8 >= v11)
    {
      v15 = a1[1];
      result = UnsafeBufferPointer.init(start:count:)();
      v13 = 1;
      LOBYTE(v16[0]) = 1;
      v12 = 0uLL;
      goto LABEL_6;
    }

    result = _Deque._UnsafeHandle.ptr(at:)(0, a1, a2, a3);
    if (!__OFSUB__(a1[1], v8))
    {
      _UnsafeWrappedBuffer.init(first:count:second:count:)(v16);
      v12 = v17;
      v13 = v18;
      result = v16[0];
      v14 = v16[1];
LABEL_6:
      *a4 = result;
      *(a4 + 8) = v14;
      *(a4 + 16) = v12;
      *(a4 + 32) = v13;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t _Deque._UnsafeHandle.segments(forOffsets:)@<X0>(Swift::Int a1@<X0>, Swift::Int a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  if ((a1 & 0x8000000000000000) == 0 && a3[1] >= a2)
  {
    v12.position = _Deque._UnsafeHandle.slot(forOffset:)(a1).position;
    v13.position = _Deque._UnsafeHandle.slot(forOffset:)(a2).position;
    v14 = __OFSUB__(a2, a1);
    v15 = a2 - a1;
    if (v14)
    {
      __break(1u);
    }

    else
    {
      position = v13.position;
      _Deque._UnsafeHandle.ptr(at:)(v12.position, a3, a4, a5);
      if (!v15 || v12.position < position)
      {
        result = UnsafeBufferPointer.init(start:count:)();
        v18 = 1;
        LOBYTE(v21[0]) = 1;
        v17 = 0uLL;
        goto LABEL_9;
      }

      if (!__OFSUB__(*a3, v12.position))
      {
        _Deque._UnsafeHandle.ptr(at:)(0, a3, a4, a5);
        _UnsafeWrappedBuffer.init(first:count:second:count:)(v21);
        v17 = v22;
        v18 = v23;
        result = v21[0];
        v20 = v21[1];
LABEL_9:
        *a6 = result;
        *(a6 + 8) = v20;
        *(a6 + 16) = v17;
        *(a6 + 32) = v18;
        return result;
      }
    }

    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t _Deque._UnsafeHandle.availableSegments()@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = specialized _Deque._UnsafeHandle.slot(_:offsetBy:)(a1[2], a1[1], a1);
  if (a1[1] >= *a1)
  {
    _Deque._UnsafeHandle.ptr(at:)(v8, a1, a2, a3);
    result = UnsafeMutableBufferPointer.init(start:count:)();
    v13 = 0;
    v14 = 0;
    v15 = 1;
    goto LABEL_12;
  }

  v9 = a1[2];
  if (v8 < v9)
  {
    v10 = _Deque._UnsafeHandle.buffer(for:)(v8, v9, a1, a2, a3);
    result = MEMORY[0x1865D3F60](v10);
    v13 = 0;
    v14 = 0;
    v15 = 1;
LABEL_12:
    *a4 = result;
    *(a4 + 8) = v12;
    *(a4 + 16) = v13;
    *(a4 + 24) = v14;
    *(a4 + 32) = v15;
    return result;
  }

  v16 = v8;
  v17 = _Deque._UnsafeHandle.limSlot.getter(a1);
  if (v17 < v16 || (v18 = _Deque._UnsafeHandle.buffer(for:)(v16, v17, a1, a2, a3), v19 = MEMORY[0x1865D3F60](v18), v21 = v20, v22 = a1[2], v22 < 0))
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v23 = v19;
    v24 = _Deque._UnsafeHandle.buffer(for:)(0, v22, a1, a2, a3);
    v25 = MEMORY[0x1865D3F60](v24);
    if (v21 > 0)
    {
      v14 = v26;
      v12 = v21;
      v15 = v14 == 0;
      if (v14)
      {
        v13 = v25;
      }

      else
      {
        v13 = 0;
      }

      result = v23;
      goto LABEL_12;
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
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

uint64_t specialized _Deque._UnsafeHandle.initialize(at:from:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t))
{
  v7 = result + a3;
  if (__OFADD__(result, a3))
  {
    __break(1u);
    goto LABEL_13;
  }

  if (*a4 < v7)
  {
    goto LABEL_13;
  }

  if (a3 < 1)
  {
    return result;
  }

  if (result < 0 || *a4 < result)
  {
    goto LABEL_13;
  }

  if (!a2)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_13;
  }

  a7(a2, a3, a5 + result);
  result = v7;
  if (v7 < 0)
  {
LABEL_13:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t _Deque._UnsafeHandle.initialize(at:from:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t), void (*a9)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = result + a3;
  if (__OFADD__(result, a3))
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*a4 < v9)
  {
    goto LABEL_10;
  }

  if (a3 < 1)
  {
    return result;
  }

  v14 = _Deque._UnsafeHandle.ptr(at:)(result, a4, a5, a6);
  v15 = a8(a2, a3, a6);
  if (!v15)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_10;
  }

  a9(v15, a3, v14, a6);
  result = v9;
  if (v9 < 0)
  {
LABEL_10:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
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

char *specialized UnsafeMutablePointer.moveInitialize(from:count:)(char *__src, uint64_t a2, char *__dst)
{
  if (a2 < 0)
  {
    __src = _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
  }

  else if (__dst != __src || &__src[8 * a2] <= __dst)
  {

    return memmove(__dst, __src, 8 * a2);
  }

  return __src;
}

Swift::tuple_source__DequeSlot_target__DequeSlot __swiftcall _Deque._UnsafeHandle.move(from:to:count:)(Swift::_DequeSlot from, Swift::_DequeSlot to, Swift::Int count)
{
  if (count < 0)
  {
    goto LABEL_11;
  }

  position = from.position;
  if (__OFADD__(from.position, count))
  {
    __break(1u);
    goto LABEL_10;
  }

  v8 = v3;
  if (*v3 < from.position + count)
  {
LABEL_11:
    v12 = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_12;
  }

  if (__OFADD__(to.position, count))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (*v3 < to.position + count)
  {
    goto LABEL_11;
  }

  if (count)
  {
    v9 = v5;
    v10 = v4;
    v11 = to.position;
    _Deque._UnsafeHandle.ptr(at:)(to.position, v3, v4, v5);
    _Deque._UnsafeHandle.ptr(at:)(position, v8, v10, v9);
    UnsafeMutablePointer.moveInitialize(from:count:)();
    position = specialized _Deque._UnsafeHandle.slot(_:offsetBy:)(position, count, v8);
    to.position = specialized _Deque._UnsafeHandle.slot(_:offsetBy:)(v11, count, v8);
  }

  v12 = position;
LABEL_12:
  result.target = to;
  result.source.position = v12;
  return result;
}

uint64_t _Deque._UnsafeHandle.uncheckedReplaceInPlace<A>(inOffsets:with:)(Swift::Int a1, Swift::Int a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a4[1] < a2)
  {
    goto LABEL_8;
  }

  result = dispatch thunk of Collection.count.getter();
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_8;
  }

  if (result != a2 - a1)
  {
LABEL_8:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  if (a1 != a2)
  {
    _Deque._UnsafeHandle.segments(forOffsets:)(a1, a2, a4, a5, a6, v19);
    _UnsafeMutableWrappedBuffer.init(mutating:)(v19, a6, v18);
    v17 = type metadata accessor for _UnsafeMutableWrappedBuffer();
    return _UnsafeMutableWrappedBuffer.assign<A>(from:)(a3, v17, a7, a8);
  }

  return result;
}

uint64_t specialized _Deque._UnsafeHandle.uncheckedAppend(_:)(uint64_t *a1)
{
  v1 = a1[1];
  if (v1 >= *a1 || (result = specialized _Deque._UnsafeHandle.slot(_:offsetBy:)(a1[2], v1, a1), result < 0) || *a1 < result)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    a1[1] = v1 + 1;
  }

  return result;
}

uint64_t _Deque._UnsafeHandle.uncheckedAppend(_:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 + 8);
  if (v13 < *a2)
  {
    v14 = specialized _Deque._UnsafeHandle.slot(_:offsetBy:)(a2[2], v13, a2);
    v15 = _Deque._UnsafeHandle.ptr(at:)(v14, a2, a3, a4);
    (*(v8 + 16))(v11, a1, a4);
    result = (*(v8 + 32))(v15, v11, a4);
    v17 = a2[1];
    v18 = __OFADD__(v17, 1);
    v19 = v17 + 1;
    if (!v18)
    {
      a2[1] = v19;
      return result;
    }

    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

Swift::Int _Deque._UnsafeHandle.uncheckedAppend(contentsOf:)(uint64_t a1, uint64_t a2, Swift::Int *a3, uint64_t a4, uint64_t a5)
{
  result = a3[1];
  v8 = __OFADD__(result, a2);
  v9 = result + a2;
  if (v8)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (*a3 < v9)
  {
LABEL_8:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_9;
  }

  if (a2 < 1)
  {
    return result;
  }

  a3[1] = v9;
  if (v9 < result)
  {
LABEL_9:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  _Deque._UnsafeHandle.segments(forOffsets:)(result, v9, a3, a4, a5, v15);
  _UnsafeMutableWrappedBuffer.init(mutating:)(v15, a5, v14);
  v15[0] = a1;
  v15[1] = a2;
  v11 = type metadata accessor for _UnsafeMutableWrappedBuffer();
  v12 = type metadata accessor for UnsafeBufferPointer();
  WitnessTable = swift_getWitnessTable();
  return _UnsafeMutableWrappedBuffer.initialize<A>(from:)(v15, v11, v12, WitnessTable);
}

uint64_t _Deque._UnsafeHandle.uncheckedPrepend(_:)(uint64_t a1, Swift::_DequeSlot *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v12[1] < *v12)
  {
    position = _Deque._UnsafeHandle.slot(before:)(a2[2]).position;
    v14 = _Deque._UnsafeHandle.ptr(at:)(position, a2, a3, a4);
    (*(v8 + 16))(v11, a1, a4);
    result = (*(v8 + 32))(v14, v11, a4);
    a2[2].position = position;
    v16 = a2[1].position;
    v17 = __OFADD__(v16, 1);
    v18 = v16 + 1;
    if (!v17)
    {
      a2[1].position = v18;
      return result;
    }

    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t _Deque._UnsafeHandle.mutableWrappedBuffer(between:and:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  if (*a3 >= a1 && *a3 >= a2)
  {
    _Deque._UnsafeHandle.ptr(at:)(a1, a3, a4, a5);
    if (a1 >= a2)
    {
      if (!__OFSUB__(*a3, a1))
      {
        _Deque._UnsafeHandle.ptr(at:)(0, a3, a4, a5);
        _UnsafeMutableWrappedBuffer.init(first:count:second:count:)(v16);
        v15 = v17;
        v14 = v18;
        result = v16[0];
        v13 = v16[1];
        goto LABEL_8;
      }
    }

    else
    {
      if (!__OFSUB__(a2, a1))
      {
        result = UnsafeMutableBufferPointer.init(start:count:)();
        v14 = 1;
        LOBYTE(v16[0]) = 1;
        v15 = 0uLL;
LABEL_8:
        *a6 = result;
        *(a6 + 8) = v13;
        *(a6 + 16) = v15;
        *(a6 + 32) = v14;
        return result;
      }

      __break(1u);
    }

    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t _Deque._UnsafeHandle.uncheckedInsert<A>(contentsOf:count:atOffset:)(uint64_t a1, uint64_t a2, Swift::Int a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a4[1] >= a3 && dispatch thunk of Collection.count.getter() == a2)
  {
    if (a2 < 1)
    {
      v18 = *(*(a7 - 8) + 8);

      return v18(a1, a7);
    }

    else
    {
      _Deque._UnsafeHandle.openGap(ofSize:atOffset:)(a2, a3, a4, a5, a6, v19);
      v16 = type metadata accessor for _UnsafeMutableWrappedBuffer();
      return _UnsafeMutableWrappedBuffer.initialize<A>(from:)(a1, v16, a7, a8);
    }
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

double _Deque._UnsafeHandle.openGap(ofSize:atOffset:)@<D0>(uint64_t a1@<X0>, Swift::Int a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  if (a2 < 0)
  {
    goto LABEL_64;
  }

  v8 = a3[1];
  v9 = v8 - a2;
  if (v8 < a2)
  {
    goto LABEL_64;
  }

  if (__OFADD__(v8, a1))
  {
    __break(1u);
    goto LABEL_56;
  }

  if (*a3 < v8 + a1 || a1 <= 0)
  {
    goto LABEL_64;
  }

  v13 = a3[2];
  if (v9 <= a2)
  {
    v23 = specialized _Deque._UnsafeHandle.slot(_:offsetBy:)(v13, v8, a3);
    v24 = a3[1];
    if (!__OFADD__(v24, a1))
    {
      v13 = v23;
      v25 = specialized _Deque._UnsafeHandle.slot(_:offsetBy:)(a3[2], v24 + a1, a3);
      v15.position = _Deque._UnsafeHandle.slot(forOffset:)(a2).position;
      v26 = specialized _Deque._UnsafeHandle.slot(_:offsetBy:)(v15.position, a1, a3);
      v14.position = v26;
      v27 = *a3;
      v28 = v13;
      if (v13 || (v28 = *a3, (v27 & 0x8000000000000000) == 0))
      {
        v29 = v25;
        if (v25 || (v29 = *a3, (v27 & 0x8000000000000000) == 0))
        {
          if (v28 >= v15.position)
          {
            if (v29 < v26)
            {
              v34 = _Deque._UnsafeHandle.limSlot.getter(a3) - a1;
              if (v34 < 0)
              {
                goto LABEL_64;
              }

              _Deque._UnsafeHandle.move(from:to:count:)(v34, 0, v25);
              v35 = __OFSUB__(v9, v25);
              v9 -= v25;
              if (v35)
              {
                __break(1u);
LABEL_37:
                if (v13 < v14.position)
                {
                  goto LABEL_64;
                }

                if (__OFSUB__(v17, v13))
                {
                  goto LABEL_61;
                }

                _Deque._UnsafeHandle.move(from:to:count:)(v13, v14, v17 - v13);
                v32 = _Deque._UnsafeHandle.limSlot.getter(a3) - a1;
                if (v32 < 0)
                {
                  goto LABEL_64;
                }

                v31.position = 0;
                position = v15.position;
                goto LABEL_42;
              }
            }
          }

          else if (v29 >= v26)
          {
            v40 = v13;
            if (!v13)
            {
              v40 = *a3;
              if (v27 < 0)
              {
                goto LABEL_64;
              }
            }

            if (v40 >= a3[2])
            {
              goto LABEL_64;
            }

            _Deque._UnsafeHandle.move(from:to:count:)(0, a1, v13);
            v9 = *a3 - v15.position;
            if (__OFSUB__(*a3, v15.position))
            {
LABEL_63:
              __break(1u);
              goto LABEL_64;
            }
          }

          else
          {
            _Deque._UnsafeHandle.move(from:to:count:)(0, a1, v13);
            v30 = _Deque._UnsafeHandle.limSlot.getter(a3) - a1;
            if (v30 < 0)
            {
              goto LABEL_64;
            }

            _Deque._UnsafeHandle.move(from:to:count:)(v30, 0, a1);
            v17 = v9 - a1;
            if (__OFSUB__(v9, a1))
            {
              goto LABEL_62;
            }

            v9 = v17 - v13;
            if (__OFSUB__(v17, v13))
            {
              __break(1u);
              goto LABEL_28;
            }
          }

          _Deque._UnsafeHandle.move(from:to:count:)(v15, v14, v9);
          v41 = a3[1];
          v35 = __OFADD__(v41, a1);
          v42 = v41 + a1;
          if (v35)
          {
LABEL_58:
            __break(1u);
            goto LABEL_59;
          }

          a3[1] = v42;
          if (v14.position || (v14.position = *a3, (*a3 & 0x8000000000000000) == 0))
          {
            v38 = v15.position;
            v39 = v14.position;
            goto LABEL_54;
          }
        }
      }

      while (1)
      {
LABEL_64:
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }
    }

LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v14.position = specialized _Deque._UnsafeHandle.slot(_:offsetBy:)(v13, -a1, a3);
  v15.position = _Deque._UnsafeHandle.slot(forOffset:)(a2).position;
  v16 = specialized _Deque._UnsafeHandle.slot(_:offsetBy:)(v15.position, -a1, a3);
  v9 = v16;
  v17 = *a3;
  v18 = v15.position;
  if (!v15.position)
  {
    v18 = *a3;
    if (v17 < 0)
    {
      goto LABEL_64;
    }
  }

  v19 = v16;
  if (!v16)
  {
    v19 = *a3;
    if (v17 < 0)
    {
      goto LABEL_64;
    }
  }

  if (v18 < v13)
  {
    if (v19 < v14.position)
    {
      if (__OFSUB__(v17, v13))
      {
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }

      _Deque._UnsafeHandle.move(from:to:count:)(v13, v14, v17 - v13);
      v20 = _Deque._UnsafeHandle.limSlot.getter(a3) - a1;
      if (v20 < 0)
      {
        goto LABEL_64;
      }

      v21.position = 0;
      v22 = a1;
      goto LABEL_31;
    }

    goto LABEL_37;
  }

LABEL_28:
  if (v19 < v14.position)
  {
    v22 = v17 - v14.position;
    if (__OFSUB__(v17, v14.position))
    {
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    v21.position = v13;
    v20 = v14.position;
LABEL_31:
    _Deque._UnsafeHandle.move(from:to:count:)(v21, v20, v22);
    v31.position = a1;
    v32 = 0;
    position = v9;
    goto LABEL_42;
  }

  v31.position = v13;
  v32 = v14.position;
  position = a2;
LABEL_42:
  _Deque._UnsafeHandle.move(from:to:count:)(v31, v32, position);
  a3[2] = v14.position;
  v36 = a3[1];
  v35 = __OFADD__(v36, a1);
  v37 = v36 + a1;
  if (v35)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  a3[1] = v37;
  if (!v15.position)
  {
    v15.position = *a3;
    if (*a3 < 0)
    {
      goto LABEL_64;
    }
  }

  v38 = v9;
  v39 = v15.position;
LABEL_54:
  _Deque._UnsafeHandle.mutableWrappedBuffer(between:and:)(v38, v39, a3, a4, a5, v47);
  v43 = v48;
  result = *v47;
  v45 = v47[1];
  *a6 = v47[0];
  *(a6 + 16) = v45;
  *(a6 + 32) = v43;
  return result;
}

uint64_t specialized _Deque._UnsafeHandle.uncheckedRemoveFirst()(uint64_t *a1)
{
  if (a1[1] >= 1)
  {
    v2 = a1[2];
    if ((v2 & 0x8000000000000000) == 0 && *a1 >= v2)
    {
      result = specialized _Deque._UnsafeHandle.slot(after:)(v2, a1);
      a1[2] = result;
      v4 = a1[1];
      v5 = __OFSUB__(v4, 1);
      v6 = v4 - 1;
      if (!v5)
      {
        a1[1] = v6;
        return result;
      }

      __break(1u);
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t _Deque._UnsafeHandle.uncheckedRemoveFirst()(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a1[1] > 0)
  {
    _Deque._UnsafeHandle.ptr(at:)(a1[2], a1, a2, a3);
    UnsafeMutablePointer.move()();
    result = specialized _Deque._UnsafeHandle.slot(after:)(a1[2], a1);
    a1[2] = result;
    v5 = a1[1];
    v6 = __OFSUB__(v5, 1);
    v7 = v5 - 1;
    if (!v6)
    {
      a1[1] = v7;
      return result;
    }

    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t _Deque._UnsafeHandle.uncheckedRemoveLast()(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1[1];
  if (v3 > 0)
  {
    v7.position = _Deque._UnsafeHandle.slot(forOffset:)(v3 - 1).position;
    _Deque._UnsafeHandle.ptr(at:)(v7.position, a1, a2, a3);
    result = UnsafeMutablePointer.move()();
    v9 = a1[1];
    v10 = __OFSUB__(v9, 1);
    v11 = v9 - 1;
    if (!v10)
    {
      a1[1] = v11;
      return result;
    }

    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

Swift::Void __swiftcall _Deque._UnsafeHandle.uncheckedRemoveFirst(_:)(Swift::Int a1)
{
  if (v1[1] < a1)
  {
    goto LABEL_7;
  }

  if (a1 < 1)
  {
    return;
  }

  v5 = v3;
  v6 = v1;
  _Deque._UnsafeHandle.segments(forOffsets:)(0, a1, v1, v2, v3, v11);
  _UnsafeMutableWrappedBuffer.init(mutating:)(v11, v5, v10);
  type metadata accessor for _UnsafeMutableWrappedBuffer();
  _UnsafeMutableWrappedBuffer.deinitialize()();
  v6[2] = specialized _Deque._UnsafeHandle.slot(_:offsetBy:)(v6[2], a1, v6);
  v7 = v6[1];
  v8 = __OFSUB__(v7, a1);
  v9 = v7 - a1;
  if (v8)
  {
    __break(1u);
LABEL_7:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v6[1] = v9;
}

Swift::Void __swiftcall _Deque._UnsafeHandle.uncheckedRemoveLast(_:)(Swift::Int a1)
{
  v4 = v1;
  v6 = v1[1];
  v7 = __OFSUB__(v6, a1);
  v8 = v6 - a1;
  if (v8 < 0 != v7)
  {
    goto LABEL_8;
  }

  if (a1 < 1)
  {
    return;
  }

  if (v6 < v8)
  {
LABEL_9:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v9 = v3;
  _Deque._UnsafeHandle.segments(forOffsets:)(v8, v6, v4, v2, v3, v13);
  _UnsafeMutableWrappedBuffer.init(mutating:)(v13, v9, v12);
  type metadata accessor for _UnsafeMutableWrappedBuffer();
  _UnsafeMutableWrappedBuffer.deinitialize()();
  v10 = v4[1];
  v7 = __OFSUB__(v10, a1);
  v11 = v10 - a1;
  if (v7)
  {
    __break(1u);
LABEL_8:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_9;
  }

  v4[1] = v11;
}

Swift::Void __swiftcall _Deque._UnsafeHandle.uncheckedRemoveAll()()
{
  v3 = v0 + 1;
  if (v0[1] >= 1)
  {
    v4 = v2;
    _Deque._UnsafeHandle.segments()(v0, v1, v2, v6);
    _UnsafeMutableWrappedBuffer.init(mutating:)(v6, v4, &v5);
    type metadata accessor for _UnsafeMutableWrappedBuffer();
    _UnsafeMutableWrappedBuffer.deinitialize()();
    *v3 = 0;
    v3[1] = 0;
  }
}

unint64_t _Deque._UnsafeHandle.uncheckedRemove(offsets:)(unint64_t a1, Swift::Int a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  if ((a1 & 0x8000000000000000) != 0 || a3[1] < a2)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    _Deque._UnsafeHandle.segments(forOffsets:)(a1, a2, a3, a4, a5, v11);
    _UnsafeMutableWrappedBuffer.init(mutating:)(v11, a5, v10);
    type metadata accessor for _UnsafeMutableWrappedBuffer();
    _UnsafeMutableWrappedBuffer.deinitialize()();

    return _Deque._UnsafeHandle.closeGap(offsets:)(a1, a2, a3);
  }

  return result;
}

unint64_t _Deque._UnsafeHandle.closeGap(offsets:)(unint64_t forOffset, Swift::Int a2, uint64_t *a3)
{
  if ((forOffset & 0x8000000000000000) != 0 || a3[1] < a2)
  {
    goto LABEL_62;
  }

  v5 = forOffset;
  v6 = a2 - forOffset;
  if (__OFSUB__(a2, forOffset))
  {
    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  if (v6 < 1)
  {
    return forOffset;
  }

  v7.position = _Deque._UnsafeHandle.slot(forOffset:)(forOffset).position;
  v8.position = _Deque._UnsafeHandle.slot(forOffset:)(a2).position;
  v9 = a3[1];
  v10 = __OFSUB__(v9, a2);
  v11 = v9 - a2;
  if (v10)
  {
    goto LABEL_55;
  }

  position = v8.position;
  v13 = a3[2];
  if (v11 > v5)
  {
    forOffset = specialized _Deque._UnsafeHandle.slot(_:offsetBy:)(a3[2], v6, a3);
    v11 = forOffset;
    v14 = *a3;
    v15 = v7.position;
    if (v7.position || (v15 = *a3, (v14 & 0x8000000000000000) == 0))
    {
      v16 = position;
      if (position || (v16 = *a3, (v14 & 0x8000000000000000) == 0))
      {
        if (!v5)
        {
LABEL_43:
          a3[2] = v11;
          v34 = a3[1];
          v10 = __OFSUB__(v34, v6);
          v35 = v34 - v6;
          if (!v10)
          {
            goto LABEL_52;
          }

          __break(1u);
          goto LABEL_46;
        }

        if (v13 >= v15)
        {
          if (v16 >= forOffset)
          {
            if ((position - v7.position) >= 0)
            {
              _Deque._UnsafeHandle.move(from:to:count:)(0, (position - v7.position), v7.position);
              v28.position = a3[2];
              v29 = v5 - v7.position;
              goto LABEL_41;
            }
          }

          else
          {
            _Deque._UnsafeHandle.move(from:to:count:)(0, v6, v7.position);
            v17 = _Deque._UnsafeHandle.limSlot.getter(a3) - v6;
            if (v17 >= 0)
            {
              v18 = v6;
              goto LABEL_31;
            }
          }
        }

        else
        {
          if (v16 >= forOffset)
          {
            v28.position = v13;
            v33.position = v11;
            v29 = v5;
LABEL_42:
            forOffset = _Deque._UnsafeHandle.move(from:to:count:)(v28, v33, v29).source.position;
            goto LABEL_43;
          }

          v17 = _Deque._UnsafeHandle.limSlot.getter(a3) - v6;
          if (v17 >= 0)
          {
            v18 = position;
LABEL_31:
            _Deque._UnsafeHandle.move(from:to:count:)(v17, 0, v18);
            v28.position = a3[2];
            v29 = v5 - position;
LABEL_41:
            v33.position = v11;
            goto LABEL_42;
          }
        }
      }
    }

    while (1)
    {
LABEL_62:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  v19 = specialized _Deque._UnsafeHandle.slot(_:offsetBy:)(a3[2], v9, a3);
  v20 = a3[1];
  if (__OFSUB__(v20, v6))
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  forOffset = _Deque._UnsafeHandle.slot(forOffset:)(v20 - v6).position;
  v21 = *a3;
  v22 = v19;
  if (!v19)
  {
    v22 = *a3;
    if (v21 < 0)
    {
      goto LABEL_62;
    }
  }

  v23 = forOffset;
  if (!forOffset)
  {
    v23 = *a3;
    if (v21 < 0)
    {
      goto LABEL_62;
    }
  }

  if (!v11)
  {
    goto LABEL_51;
  }

  if (position >= v22)
  {
    v30 = v21 - position;
    v31 = __OFSUB__(v21, position);
    if (v23 >= v7.position)
    {
      if (v31)
      {
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }

      v27 = _Deque._UnsafeHandle.move(from:to:count:)(position, v7, v30).target.position;
      v25 = 0;
    }

    else
    {
      if (v31)
      {
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }

      v19 = forOffset;
      v32 = _Deque._UnsafeHandle.move(from:to:count:)(position, v7, v30).target.position;
      v25 = _Deque._UnsafeHandle.move(from:to:count:)(0, v32, v6).source.position;
      v27 = 0;
    }

    v26 = v19;
    goto LABEL_50;
  }

  if (v23 < v7.position)
  {
    v24 = v21 - v7.position;
    if (__OFSUB__(v21, v7.position))
    {
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    if (v24 >= v11)
    {
      goto LABEL_62;
    }

    v25 = _Deque._UnsafeHandle.move(from:to:count:)(position, v7, v21 - v7.position).source.position;
    v26 = v11 - v24;
    if (__OFSUB__(v11, v24))
    {
      goto LABEL_61;
    }

    v27 = 0;
    goto LABEL_50;
  }

LABEL_46:
  v25 = position;
  v27 = v7.position;
  v26 = v11;
LABEL_50:
  forOffset = _Deque._UnsafeHandle.move(from:to:count:)(v25, v27, v26).source.position;
LABEL_51:
  v36 = a3[1];
  v10 = __OFSUB__(v36, v6);
  v35 = v36 - v6;
  if (v10)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

LABEL_52:
  a3[1] = v35;
  return forOffset;
}

uint64_t _Deque<A>.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27[6] = a4;
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Optional();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v20 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  v24 = _Deque.makeIterator()(a2, a3);
  v25 = v17;
  v26 = v18;
  v23 = type metadata accessor for _Deque.Iterator();
  _Deque.Iterator.next()(v23, v15);
  v21 = *(v8 + 48);
  v22 = v8 + 48;
  if (v21(v15, 1, a3) != 1)
  {
    v20 = *(v8 + 32);
    do
    {
      v20(v11, v15, a3);
      __swift_mutable_project_boxed_opaque_existential_1(v27, v27[3]);
      dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
      (*(v8 + 8))(v11, a3);
      if (v4)
      {
        break;
      }

      _Deque.Iterator.next()(v23, v15);
    }

    while (v21(v15, 1, a3) != 1);
  }

  return __swift_destroy_boxed_opaque_existential_1(v27);
}

uint64_t _Deque.makeIterator()(uint64_t a1, uint64_t a2)
{

  v4 = specialized _Deque.Iterator.init(_base:)(v3, a2);

  return v4;
}

uint64_t _Deque.Iterator.next()@<X0>(_BOOL8 a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  v5 = v2[1];
  v6 = v2[2];
  if (v5 == v6)
  {
    a1 = _Deque.Iterator._swapSegment()();
    if (!a1)
    {
      v12 = *(*(*(v3 + 16) - 8) + 56);

      return v12(a2, 1, 1);
    }

    v5 = v2[1];
    v6 = v2[2];
  }

  if (v5 >= v6)
  {
    LODWORD(v15) = 0;
    v14 = 79;
  }

  else
  {
    if (v5 > -2)
    {
      v2[1] = v5 + 1;
      v7 = *v2;
      MEMORY[0x1EEE9AC00](a1);
      v8 = *(v3 + 16);
      v14 = v8;
      v15 = v9;
      _Deque._Storage.read<A>(_:)(partial apply for closure #1 in _Deque.Iterator.next(), &v13, v10, v8, v8, partial apply for closure #1 in _Deque._Storage.read<A>(_:));
      return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
    }

    LODWORD(v15) = 0;
    v14 = 21;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void *_Deque<A>.init(from:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v18 = a3;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v19[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = _Deque._Storage.init()();
  v10 = a1[4];
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v3)
  {

    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v19, v20);
    v12 = dispatch thunk of UnkeyedDecodingContainer.count.getter();
    if ((v13 & 1) == 0)
    {
      v14 = v12;
      v15 = *(type metadata accessor for _Deque() + 16);
      type metadata accessor for _Deque._Storage();
      _Deque._Storage.ensureUnique(minimumCapacity:linearGrowth:)(v14, 1);
    }

    __swift_project_boxed_opaque_existential_1(v19, v20);
    while ((dispatch thunk of UnkeyedDecodingContainer.isAtEnd.getter() & 1) == 0)
    {
      __swift_mutable_project_boxed_opaque_existential_1(v19, v20);
      dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
      v16 = type metadata accessor for _Deque();
      _Deque.append(_:)(v9, v16);
      (*(v6 + 8))(v9, a2);
      __swift_project_boxed_opaque_existential_1(v19, v20);
    }

    __swift_destroy_boxed_opaque_existential_1(v19);
    v11 = v21;
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v11;
}

Swift::Void __swiftcall _Deque.reserveCapacity(_:)(Swift::Int a1)
{
  v3 = *(v1 + 16);
  type metadata accessor for _Deque._Storage();

  _Deque._Storage.ensureUnique(minimumCapacity:linearGrowth:)(a1, 1);
}

void *protocol witness for Decodable.init(from:) in conformance <A> _Deque<A>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  result = _Deque<A>.init(from:)(a1, *(a2 + 16), *(a3 - 8));
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

Swift::Bool __swiftcall _Deque.Iterator._swapSegment()()
{
  if (v0[1] == v0[2])
  {
    v1 = *v0;
    v4 = *((MEMORY[0x1EEE9AC00])() + 16);
    v5 = v0;

    _Deque._Storage.read<A>(_:)(partial apply for closure #1 in _Deque.Iterator._swapSegment(), &v3, v1, v4, MEMORY[0x1E69E6370], partial apply for closure #1 in _Deque._Storage.read<A>(_:));

    return v6;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void UnsafeMutableBufferPointer._initialize(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a4)
  {
    goto LABEL_10;
  }

  if (a2 >= 1)
  {
    if (UnsafeMutableBufferPointer.baseAddress.getter() && UnsafeBufferPointer.baseAddress.getter())
    {

      goto _$sSp10initialize4from5countySPyxG_SitF;
    }

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
_$sSp10initialize4from5countySPyxG_SitF:
    MEMORY[0x1EEE69B98]();
  }
}

uint64_t ContiguousArray.init(unsafeUninitializedCapacity:initializingWith:)()
{
  Array.init(_unsafeUninitializedCapacity:initializingWith:)();
  if (!v0)
  {

    v1 = _ArrayBuffer.requestNativeBuffer()();

    if (!v1)
    {
      type metadata accessor for Array();
      swift_getWitnessTable();
      v1 = _copyCollectionToContiguousArray<A>(_:)();
    }
  }

  return v1;
}

uint64_t _Deque.withContiguousStorageIfAvailable<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9[2] = a4;
  v9[3] = a5;
  v9[4] = a1;
  v9[5] = a2;
  v7 = type metadata accessor for Optional();
  return _Deque._Storage.read<A>(_:)(partial apply for closure #1 in _Deque.withContiguousStorageIfAvailable<A>(_:), v9, a3, a4, v7, partial apply for closure #1 in _Deque._Storage.read<A>(_:));
}

uint64_t protocol witness for Sequence.makeIterator() in conformance _Deque<A>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = _Deque.makeIterator()(*v2, *(a1 + 16));
  v6 = v5;
  v8 = v7;

  *a2 = v4;
  a2[1] = v6;
  a2[2] = v8;
  return result;
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance _Deque<A>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance _Deque<A>(uint64_t a1)
{
  v2 = specialized _Deque._copyToContiguousArray()(*v1, *(a1 + 16));

  return v2;
}

uint64_t protocol witness for Sequence._copyContents(initializing:) in conformance _Deque<A>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = specialized _Deque._copyContents(initializing:)(a2, a3, *v4, *(a4 + 16));
  v8 = v7;
  v10 = v9;
  v12 = v11;

  *a1 = v6;
  a1[1] = v8;
  a1[2] = v10;
  return v12;
}

uint64_t _Deque.indices.getter(uint64_t a1, uint64_t a2)
{
  _ss20ManagedBufferPointerVsRi__rlE017withUnsafeMutableC8ToHeaderyqd_0_qd_0_SpyxGqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(closure #1 in _Deque._Storage.count.getter, 0, a1, &type metadata for _DequeBufferHeader, a2, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v3);
  if ((v4 & 0x8000000000000000) == 0)
  {
    return 0;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t _Deque.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 < 0 || (v6 = _ss20ManagedBufferPointerVsRi__rlE017withUnsafeMutableC8ToHeaderyqd_0_qd_0_SpyxGqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(closure #1 in _Deque._Storage.count.getter, 0, a2, &type metadata for _DequeBufferHeader, a3, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v9), v11 <= a1))
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v6);
    v9 = a3;
    v10 = a1;
    return _Deque._Storage.read<A>(_:)(partial apply for closure #1 in _Deque.subscript.getter, &v8, a2, a3, a3, partial apply for closure #1 in _Deque._Storage.read<A>(_:));
  }

  return result;
}

void (*_Deque.subscript.modify(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  v7 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x38uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 16) = v3;
  v10 = *(a3 + 16);
  *(v8 + 24) = v10;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  if (v7)
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(*(*(TupleTypeMetadata2 - 8) + 64));
  }

  v13 = v12;
  v9[4] = v12;
  v14 = *(v10 - 8);
  v15 = v14;
  v9[5] = v14;
  if (v7)
  {
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    v16 = malloc(*(v14 + 64));
  }

  v17 = v16;
  v9[6] = v16;
  if (a2 < 0 || (_ss20ManagedBufferPointerVsRi__rlE017withUnsafeMutableC8ToHeaderyqd_0_qd_0_SpyxGqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(closure #1 in _Deque._Storage.count.getter, 0, *v3, &type metadata for _DequeBufferHeader, v10, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v24), *v9 <= a2))
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    type metadata accessor for _Deque._Storage();
    _Deque._Storage.ensureUnique()();
    v18 = *v3;
    MEMORY[0x1EEE9AC00](v19);
    v24 = v10;
    v25 = a2;
    _Deque._Storage.read<A>(_:)(partial apply for closure #1 in _Deque.subscript.modify, &v23, v20, v10, TupleTypeMetadata2, partial apply for closure #1 in _Deque._Storage.update<A>(_:));
    v21 = *(TupleTypeMetadata2 + 48);
    v9[1] = *v13;
    (*(v15 + 32))(v17, &v13[v21], v10);
    return _Deque.subscript.modify;
  }

  return result;
}

void _Deque.subscript.modify(uint64_t a1)
{
  v1 = *a1;
  v2 = *a1 + 8;
  v4 = *(*a1 + 40);
  v3 = *(*a1 + 48);
  v5 = *(*a1 + 32);
  v7 = **(*a1 + 16);
  v9 = *(*a1 + 24);
  v6 = v9;
  v10 = v2;
  v11 = v3;

  _Deque._Storage.read<A>(_:)(partial apply for closure #1 in $defer #1 <A>() in _Deque.subscript.modify, &v8, v7, v9, MEMORY[0x1E69E7CA8] + 8, partial apply for closure #1 in _Deque._Storage.update<A>(_:));

  (*(v4 + 8))(v3, v6);
  free(v3);
  free(v5);
  free(v1);
}

uint64_t _Deque.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 < 0 || (_ss20ManagedBufferPointerVsRi__rlE017withUnsafeMutableC8ToHeaderyqd_0_qd_0_SpyxGqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(closure #1 in _Deque._Storage.count.getter, 0, a3, &type metadata for _DequeBufferHeader, a4, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v6), v7 < a2))
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    type metadata accessor for _Deque();

    swift_getWitnessTable();
    Slice.init(base:bounds:)();
    return v7;
  }

  return result;
}

void *protocol witness for BidirectionalCollection.index(before:) in conformance _Deque<A>@<X0>(void *result@<X0>, void *a2@<X8>)
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

void *protocol witness for BidirectionalCollection.formIndex(before:) in conformance _Deque<A>(void *result)
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

void *protocol witness for BidirectionalCollection.index(_:offsetBy:) in conformance _Deque<A>@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else
  {
    *a3 = *result + a2;
  }

  return result;
}

uint64_t protocol witness for BidirectionalCollection.index(_:offsetBy:limitedBy:) in conformance _Deque<A>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = specialized _Deque.index(_:offsetBy:limitedBy:)(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

uint64_t protocol witness for BidirectionalCollection.distance(from:to:) in conformance _Deque<A>(void *a1, void *a2)
{
  v2 = __OFSUB__(*a2, *a1);
  result = *a2 - *a1;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for Collection.endIndex.getter in conformance _Deque<A>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = _Deque.count.getter(*v2, *(a1 + 16));
  *a2 = result;
  return result;
}

void (*protocol witness for Collection.subscript.read in conformance _Deque<A>(uint64_t **a1, uint64_t *a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  *a1 = v7;
  v7[4] = _Deque.subscript.read(v7, *a2, *v3, *(a3 + 16));
  return protocol witness for Collection.subscript.read in conformance _Deque<A>;
}

void protocol witness for Collection.subscript.read in conformance _Deque<A>(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void (*_Deque.subscript.read(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4))(void *a1)
{
  v8 = *(a4 - 8);
  *a1 = a4;
  a1[1] = v8;
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(*(v8 + 64));
  }

  a1[2] = v9;
  _Deque.subscript.getter(a2, a3, a4);
  return _Deque.subscript.read;
}

void _Deque.subscript.read(void *a1)
{
  v1 = a1[2];
  (*(a1[1] + 8))(v1, *a1);

  free(v1);
}

uint64_t protocol witness for Collection.subscript.getter in conformance _Deque<A>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = _Deque.subscript.getter(*a1, a1[1], *v3, *(a2 + 16));
  *a3 = result;
  a3[1] = v6;
  a3[2] = v7;
  return result;
}

uint64_t protocol witness for Collection.indices.getter in conformance _Deque<A>@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = _Deque.indices.getter(*v2, *(a1 + 16));
  *a2 = 0;
  a2[1] = v5;
  return result;
}

uint64_t protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance _Deque<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return specialized Collection._failEarlyRangeCheck(_:bounds:)(a1, a2, a3, a4, MEMORY[0x1E69E66A8], MEMORY[0x1E69E5F48]);
}

{
  return specialized Collection._failEarlyRangeCheck(_:bounds:)(a1, a2, a3, a4, MEMORY[0x1E69E5F90], MEMORY[0x1E69E5F58]);
}

void *protocol witness for Collection.index(after:) in conformance _Deque<A>@<X0>(void *result@<X0>, void *a2@<X8>)
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

void *protocol witness for Collection.formIndex(after:) in conformance _Deque<A>(void *result)
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

Swift::Void __swiftcall _Deque.swapAt(_:_:)(Swift::Int a1, Swift::Int a2)
{
  if (a1 < 0 || (v6 = *v3, v7 = *(v2 + 16), _ss20ManagedBufferPointerVsRi__rlE017withUnsafeMutableC8ToHeaderyqd_0_qd_0_SpyxGqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(closure #1 in _Deque._Storage.count.getter, 0, *v3, &type metadata for _DequeBufferHeader, v7, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v12), v14 <= a1))
  {
    v13 = 0;
  }

  else
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      _ss20ManagedBufferPointerVsRi__rlE017withUnsafeMutableC8ToHeaderyqd_0_qd_0_SpyxGqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(closure #1 in _Deque._Storage.count.getter, 0, v6, &type metadata for _DequeBufferHeader, v7, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v12);
      if (v14 > a2)
      {
        type metadata accessor for _Deque._Storage();
        _Deque._Storage.ensureUnique()();
        v8 = *v3;
        MEMORY[0x1EEE9AC00](v9);
        v11[2] = v7;
        v11[3] = a1;
        v12 = a2;
        _Deque._Storage.read<A>(_:)(partial apply for closure #1 in _Deque.swapAt(_:_:), v11, v10, v7, MEMORY[0x1E69E7CA8] + 8, partial apply for closure #1 in _Deque._Storage.update<A>(_:));
        return;
      }
    }

    v13 = 0;
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t _Deque.withContiguousMutableStorageIfAvailable<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 + 16);
  type metadata accessor for _Deque._Storage();
  _Deque._Storage.ensureUnique()();
  v9 = *v4;
  v12[2] = v8;
  v12[3] = a4;
  v12[4] = a1;
  v12[5] = a2;
  v10 = type metadata accessor for Optional();
  return _Deque._Storage.read<A>(_:)(partial apply for closure #1 in _Deque.withContiguousMutableStorageIfAvailable<A>(_:), v12, v9, v8, v10, partial apply for closure #1 in _Deque._Storage.update<A>(_:));
}

uint64_t $defer #1 <A><A1>() in closure #1 in _Deque.withContiguousMutableStorageIfAvailable<A>(_:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = UnsafeMutableBufferPointer.baseAddress.getter();
  result = UnsafeMutableBufferPointer.baseAddress.getter();
  if (v7)
  {
    if (!result || v7 != result)
    {
      goto LABEL_7;
    }

LABEL_6:
    if (a1[1] == a3)
    {
      return result;
    }

    goto LABEL_7;
  }

  if (!result)
  {
    goto LABEL_6;
  }

LABEL_7:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t protocol witness for MutableCollection.subscript.setter in conformance _Deque<A>(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  specialized _Deque.subscript.setter(a1, *a2, a3);
  v5 = *(*(*(a3 + 16) - 8) + 8);

  return v5(a1);
}

void (*protocol witness for MutableCollection.subscript.modify in conformance _Deque<A>(uint64_t **a1, uint64_t *a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = _Deque.subscript.modify(v6, *a2, a3);
  return protocol witness for MutableCollection.subscript.modify in conformance _Deque<A>;
}

void protocol witness for MutableCollection.subscript.modify in conformance _Deque<A>(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t protocol witness for MutableCollection.subscript.setter in conformance _Deque<A>(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  specialized _Deque.subscript.setter(*a1, a1[1], a1[2], *a2, a2[1], a3);
}

void (*protocol witness for MutableCollection.subscript.modify in conformance _Deque<A>(uint64_t *a1, uint64_t *a2, uint64_t a3))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x38uLL);
  }

  v8 = v7;
  *a1 = v7;
  *(v7 + 24) = v3;
  *(v7 + 32) = a3;
  v9 = *a2;
  v10 = a2[1];
  v8[5] = *a2;
  v8[6] = v10;
  *v8 = _Deque.subscript.getter(v9, v10, *v3, *(a3 + 16));
  v8[1] = v11;
  v8[2] = v12;
  return protocol witness for MutableCollection.subscript.modify in conformance _Deque<A>;
}

void protocol witness for MutableCollection.subscript.modify in conformance _Deque<A>(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  v6 = (*a1)[5];
  v5 = (*a1)[6];
  v7 = (*a1)[3];
  v8 = (*a1)[4];
  v9 = (*a1)[2];
  if (a2)
  {
    v10 = (*a1)[2];

    specialized _Deque.subscript.setter(v3, v4, v9, v6, v5, v8);

    v11 = v2[2];
  }

  else
  {
    specialized _Deque.subscript.setter(**a1, v4, v9, v6, v5, v8);
  }

  free(v2);
}

unint64_t closure #1 in _Deque.replaceSubrange<A>(_:with:)(uint64_t *a1, uint64_t a2, uint64_t a3, Swift::Int a4, Swift::Int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v52 = a8;
  v53 = a2;
  v56 = a6;
  v57 = a1;
  v58 = a3;
  v59 = a5;
  v44 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16 = type metadata accessor for PartialRangeFrom();
  v49 = *(v16 - 8);
  v50 = v16;
  v17 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v48 = &v43 - v18;
  v55 = a13;
  v54 = swift_getAssociatedTypeWitness();
  v19 = *(v54 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v22 = &v43 - v21;
  v23 = type metadata accessor for PartialRangeUpTo();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v43 - v26;
  if (v59 < v58)
  {
    goto LABEL_15;
  }

  v47 = *(AssociatedConformanceWitness + 8);
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_15;
  }

  v28 = *(AssociatedTypeWitness - 8);
  v29 = *(v28 + 16);
  v51 = a7;
  v45 = v28 + 16;
  v46 = v29;
  v29(v27, a7, AssociatedTypeWitness);
  swift_getWitnessTable();
  Collection.subscript.getter();
  (*(v24 + 8))(v27, v23);
  v30 = v54;
  v31 = swift_getAssociatedConformanceWitness();
  v32 = v58;
  v33 = v59;
  v34 = v53;
  v58 = a11;
  _Deque._UnsafeHandle.uncheckedReplaceInPlace<A>(inOffsets:with:)(v32, v59, v22, v57, v53, a11, v30, v31);
  result = (*(v19 + 8))(v22, v30);
  v36 = v52;
  if (v52 < 0)
  {
    v40 = v44 - v33;
    if (v44 >= v33)
    {
      if (__OFSUB__(v44, v33))
      {
        __break(1u);
      }

      else
      {
        v41 = __OFADD__(a9, v40);
        v42 = a9 + v40;
        if (!v41)
        {
          if (v42 != a10)
          {
LABEL_16:
            result = _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
            return result;
          }

          return _Deque._UnsafeHandle.uncheckedRemove(offsets:)(v33, v44, v57, v34, v58);
        }
      }

      __break(1u);
    }

LABEL_15:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_16;
  }

  if (v52)
  {
    v44 = v31;
    v37 = v51;
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      v38 = v48;
      v46(v48, v37, AssociatedTypeWitness);
      v39 = v50;
      swift_getWitnessTable();
      Collection.subscript.getter();
      (*(v49 + 8))(v38, v39);
      return _Deque._UnsafeHandle.uncheckedInsert<A>(contentsOf:count:atOffset:)(v22, v36, v33, v57, v34, v58, v54, v44);
    }

    goto LABEL_15;
  }

  return result;
}

Swift::Int _Deque.append<A>(contentsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = *(a2 + 16);
  v10 = type metadata accessor for Optional();
  v37 = *(v10 - 8);
  v11 = *(v37 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v34 - v13;
  v47 = *(v9 - 8);
  v15 = v47[8];
  MEMORY[0x1EEE9AC00](v12);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v36 = *(AssociatedTypeWitness - 8);
  v18 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v45 = &v34 - v19;
  v48 = v9;
  v49 = a3;
  v50 = a4;
  v51 = v5;
  v20 = a1;
  result = Sequence._withContiguousStorageIfAvailable_SR14663<A>(_:)(a3, MEMORY[0x1E69E7CA8] + 8, &v52);
  if (v52 == 1)
  {
    v43 = 0;
    v22 = dispatch thunk of Sequence.underestimatedCount.getter();
    result = _ss20ManagedBufferPointerVsRi__rlE017withUnsafeMutableC8ToHeaderyqd_0_qd_0_SpyxGqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(closure #1 in _Deque._Storage.count.getter, 0, *v5, &type metadata for _DequeBufferHeader, v9, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v32);
    v23 = __OFADD__(v52, v22);
    v24 = v52 + v22;
    if (v23)
    {
LABEL_10:
      __break(1u);
      return result;
    }

    v35 = v10;
    v41 = type metadata accessor for _Deque._Storage();
    _Deque._Storage.ensureUnique(minimumCapacity:linearGrowth:)(v24, 1);
    v44 = v5;
    v25 = *v5;
    MEMORY[0x1EEE9AC00](v26);
    *(&v34 - 4) = v9;
    *(&v34 - 3) = a3;
    v32 = a4;
    v33 = v20;
    _Deque._Storage.read<A>(_:)(partial apply for closure #2 in _Deque.append<A>(contentsOf:), (&v34 - 6), v25, v9, AssociatedTypeWitness, partial apply for closure #1 in _Deque._Storage.update<A>(_:));
    v42 = a3;
    v43 = a4;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    dispatch thunk of IteratorProtocol.next()();
    v39 = v47[6];
    if (v39(v14, 1, v9) != 1)
    {
      v38 = v47[4];
      v47 += 4;
      v27 = (v47 - 3);
      while (1)
      {
        v38(v17, v14, v9);
        _ss20ManagedBufferPointerVsRi__rlE017withUnsafeMutableC8ToHeaderyqd_0_qd_0_SpyxGqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(closure #1 in _Deque._Storage.count.getter, 0, v25, &type metadata for _DequeBufferHeader, v9, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v32);
        result = v52 + 1;
        if (__OFADD__(v52, 1))
        {
          break;
        }

        v28 = v44;
        _Deque._Storage.ensureUnique(minimumCapacity:linearGrowth:)(result, 0);
        v25 = *v28;
        MEMORY[0x1EEE9AC00](v29);
        v31 = v42;
        v30 = v43;
        *(&v34 - 6) = v9;
        *(&v34 - 5) = v31;
        *(&v34 - 4) = v30;
        *(&v34 - 3) = v17;
        v32 = v45;
        _Deque._Storage.read<A>(_:)(partial apply for closure #3 in _Deque.append<A>(contentsOf:), (&v34 - 8), v25, v9, MEMORY[0x1E69E7CA8] + 8, partial apply for closure #1 in _Deque._Storage.update<A>(_:));
        (*v27)(v17, v9);
        dispatch thunk of IteratorProtocol.next()();
        if (v39(v14, 1, v9) == 1)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
      goto LABEL_10;
    }

LABEL_7:
    (*(v37 + 8))(v14, v35);
    return (*(v36 + 8))(v45, AssociatedTypeWitness);
  }

  return result;
}

uint64_t closure #1 in _Deque.init<A>(_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a1[2] || a3 < 0)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v13 = _Deque._UnsafeHandle.buffer(for:)(0, a3, a1, a2, a5);
    v14 = MEMORY[0x1865D3F60](v13);
    v16 = v15;
    MEMORY[0x1EEE9AC00](v14);
    v17 = *(a7 + 8);
    result = Sequence._withContiguousStorageIfAvailable_SR14663<A>(_:)(a6, MEMORY[0x1E69E7CA8] + 8, &v19);
    if (v19 == 1)
    {
      result = UnsafeMutableBufferPointer._initialize<A>(from:)(a4, v14, v16, a5, a6, a7);
    }

    a1[1] = a3;
  }

  return result;
}

uint64_t closure #1 in _Deque.append<A>(contentsOf:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *a3;

  _ss20ManagedBufferPointerVsRi__rlE017withUnsafeMutableC8ToHeaderyqd_0_qd_0_SpyxGqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(closure #1 in _Deque._Storage.count.getter, 0, v12, &type metadata for _DequeBufferHeader, a4, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v17);

  if (__OFADD__(v18, a2))
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for _Deque._Storage();
    _Deque._Storage.ensureUnique(minimumCapacity:linearGrowth:)(v18 + a2, 0);
    v14 = *a3;
    MEMORY[0x1EEE9AC00](v15);
    v16[2] = a4;
    v16[3] = a5;
    v16[4] = a6;
    v16[5] = a1;
    v17 = a2;

    _Deque._Storage.read<A>(_:)(partial apply for closure #1 in closure #1 in _Deque.append<A>(contentsOf:), v16, v14, a4, MEMORY[0x1E69E7CA8] + 8, partial apply for closure #1 in _Deque._Storage.update<A>(_:));
  }

  return result;
}

uint64_t closure #2 in _Deque.append<A>(contentsOf:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v10 = *(a3 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = &v23[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  _Deque._UnsafeHandle.availableSegments()(v12, v15, v16, v23);
  (*(v10 + 16))(v14, a2, a3);
  v17 = type metadata accessor for _UnsafeMutableWrappedBuffer();
  result = _UnsafeMutableWrappedBuffer.initialize<A>(fromSequencePrefix:)(a5, v14, v17, a3, a4);
  v19 = *(a1 + 8);
  v20 = __OFADD__(v19, result);
  v21 = v19 + result;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a1 + 8) = v21;
  }

  return result;
}

uint64_t _Deque.insert(_:at:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    v6 = *(a3 + 16);
    _ss20ManagedBufferPointerVsRi__rlE017withUnsafeMutableC8ToHeaderyqd_0_qd_0_SpyxGqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(closure #1 in _Deque._Storage.count.getter, 0, *v3, &type metadata for _DequeBufferHeader, v6, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v11);
    if (v13 >= a2)
    {
      _ss20ManagedBufferPointerVsRi__rlE017withUnsafeMutableC8ToHeaderyqd_0_qd_0_SpyxGqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(closure #1 in _Deque._Storage.count.getter, 0, *v3, &type metadata for _DequeBufferHeader, v6, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v11);
      if (!__OFADD__(v13, 1))
      {
        type metadata accessor for _Deque._Storage();
        _Deque._Storage.ensureUnique(minimumCapacity:linearGrowth:)(v13 + 1, 0);
        v7 = *v3;
        MEMORY[0x1EEE9AC00](v8);
        v10[2] = v6;
        v10[3] = a2;
        v11 = a1;
        v12 = v3;

        _Deque._Storage.read<A>(_:)(partial apply for closure #1 in _Deque.insert(_:at:), v10, v7, v6, MEMORY[0x1E69E7CA8] + 8, partial apply for closure #1 in _Deque._Storage.update<A>(_:));
      }

      __break(1u);
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t closure #1 in _Deque.insert(_:at:)(Swift::_DequeSlot *a1, uint64_t a2, Swift::Int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a6 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v15 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v16)
  {
    v17 = *v13;

    _ss20ManagedBufferPointerVsRi__rlE017withUnsafeMutableC8ToHeaderyqd_0_qd_0_SpyxGqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(closure #1 in _Deque._Storage.count.getter, 0, v17, &type metadata for _DequeBufferHeader, a6, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v22);
    v18 = v23[0];

    if (v18 == a3)
    {
      return _Deque._UnsafeHandle.uncheckedAppend(_:)(a4, &a1->position, a2, a6);
    }

    _Deque._UnsafeHandle.openGap(ofSize:atOffset:)(1, a3, &a1->position, a2, a6, v23);
    if (v23[1] == 1)
    {
      v20 = UnsafeMutableBufferPointer.baseAddress.getter();
      if (v20)
      {
        v21 = v20;
        (*(v11 + 16))(v15, a4, a6);
        return (*(v11 + 32))(v21, v15, a6);
      }
    }

    else
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  return _Deque._UnsafeHandle.uncheckedPrepend(_:)(a4, a1, a2, a6);
}

uint64_t closure #1 in _Deque.insert<A>(contentsOf:at:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, Swift::Int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *(*(a7 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17, v19, v20);
  return _Deque._UnsafeHandle.uncheckedInsert<A>(contentsOf:count:atOffset:)(v17, a4, a5, a1, a2, a6, a7, a8);
}

uint64_t _Deque.remove(at:)(uint64_t a1, uint64_t a2)
{
  if (a1 < 0 || (v4 = *(a2 + 16), _ss20ManagedBufferPointerVsRi__rlE017withUnsafeMutableC8ToHeaderyqd_0_qd_0_SpyxGqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(closure #1 in _Deque._Storage.count.getter, 0, *v2, &type metadata for _DequeBufferHeader, v4, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v9), v10 <= a1))
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    type metadata accessor for _Deque._Storage();
    _Deque._Storage.ensureUnique()();
    v5 = *v2;
    MEMORY[0x1EEE9AC00](v6);
    v8[2] = v4;
    v8[3] = v2;
    v9 = a1;

    _Deque._Storage.read<A>(_:)(partial apply for closure #1 in _Deque.remove(at:), v8, v5, v4, v4, partial apply for closure #1 in _Deque._Storage.update<A>(_:));
  }

  return result;
}

uint64_t _Deque.removeSubrange(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 < 0 || (v6 = *(a3 + 16), _ss20ManagedBufferPointerVsRi__rlE017withUnsafeMutableC8ToHeaderyqd_0_qd_0_SpyxGqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(closure #1 in _Deque._Storage.count.getter, 0, *v3, &type metadata for _DequeBufferHeader, v6, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v12), v13 < a2))
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    type metadata accessor for _Deque._Storage();
    _Deque._Storage.ensureUnique()();
    v7 = *v3;
    MEMORY[0x1EEE9AC00](v8);
    v11[2] = v6;
    v11[3] = a1;
    v12 = a2;
    return _Deque._Storage.read<A>(_:)(partial apply for closure #1 in _Deque.removeSubrange(_:), v11, v9, v6, MEMORY[0x1E69E7CA8] + 8, partial apply for closure #1 in _Deque._Storage.update<A>(_:));
  }

  return result;
}

uint64_t _Deque._customRemoveLast()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10[4] = *v2;
  swift_getWitnessTable();
  if (Collection.isEmpty.getter())
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v5 = *(a1 + 16);
    type metadata accessor for _Deque._Storage();
    _Deque._Storage.ensureUnique()();
    v6 = *v2;
    MEMORY[0x1EEE9AC00](v7);
    v10[2] = v5;
    _Deque._Storage.read<A>(_:)(partial apply for closure #1 in _Deque._customRemoveLast(), v10, v8, v5, v5, partial apply for closure #1 in _Deque._Storage.update<A>(_:));
    return (*(*(v5 - 8) + 56))(a2, 0, 1, v5);
  }

  return result;
}

Swift::Bool __swiftcall _Deque._customRemoveLast(_:)(Swift::Int a1)
{
  if (a1 < 0)
  {
    LODWORD(v11) = 0;
    v10 = 798;
  }

  else
  {
    v4 = *(v1 + 16);
    _ss20ManagedBufferPointerVsRi__rlE017withUnsafeMutableC8ToHeaderyqd_0_qd_0_SpyxGqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(closure #1 in _Deque._Storage.count.getter, 0, *v2, &type metadata for _DequeBufferHeader, v4, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v10);
    if (v12 >= a1)
    {
      type metadata accessor for _Deque._Storage();
      _Deque._Storage.ensureUnique()();
      v5 = *v2;
      MEMORY[0x1EEE9AC00](v6);
      v10 = v4;
      v11 = a1;
      _Deque._Storage.read<A>(_:)(partial apply for closure #1 in _Deque._customRemoveLast(_:), &v9, v7, v4, MEMORY[0x1E69E7CA8] + 8, partial apply for closure #1 in _Deque._Storage.update<A>(_:));
      return 1;
    }

    LODWORD(v11) = 0;
    v10 = 799;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

Swift::Void __swiftcall _Deque.removeFirst(_:)(Swift::Int a1)
{
  if (a1 < 0)
  {
    LODWORD(v10) = 0;
    v9 = 829;
  }

  else
  {
    v4 = *(v1 + 16);
    _ss20ManagedBufferPointerVsRi__rlE017withUnsafeMutableC8ToHeaderyqd_0_qd_0_SpyxGqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(closure #1 in _Deque._Storage.count.getter, 0, *v2, &type metadata for _DequeBufferHeader, v4, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v9);
    if (v11 >= a1)
    {
      type metadata accessor for _Deque._Storage();
      _Deque._Storage.ensureUnique()();
      v5 = *v2;
      MEMORY[0x1EEE9AC00](v6);
      v9 = v4;
      v10 = a1;
      _Deque._Storage.read<A>(_:)(partial apply for closure #1 in _Deque.removeFirst(_:), &v8, v7, v4, MEMORY[0x1E69E7CA8] + 8, partial apply for closure #1 in _Deque._Storage.update<A>(_:));
      return;
    }

    LODWORD(v10) = 0;
    v9 = 830;
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall _Deque.removeAll(keepingCapacity:)(Swift::Bool keepingCapacity)
{
  v3 = v1;
  if (keepingCapacity)
  {
    v4 = *(v1 + 16);
    type metadata accessor for _Deque._Storage();
    _Deque._Storage.ensureUnique()();
    v5 = *v2;
    MEMORY[0x1EEE9AC00](v6);
    v10[2] = v4;
    _Deque._Storage.read<A>(_:)(partial apply for closure #1 in _Deque.removeAll(keepingCapacity:), v10, v7, v4, MEMORY[0x1E69E7CA8] + 8, partial apply for closure #1 in _Deque._Storage.update<A>(_:));
  }

  else
  {
    v8 = *v2;

    v9 = *(v3 + 16);
    *v2 = _Deque._Storage.init()();
  }
}

uint64_t protocol witness for RangeReplaceableCollection.init() in conformance _Deque<A>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = _Deque.init()(*(a1 + 16));
  *a2 = result;
  return result;
}

uint64_t protocol witness for RangeReplaceableCollection.replaceSubrange<A>(_:with:) in conformance _Deque<A>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  specialized _Deque.replaceSubrange<A>(_:with:)(*a1, a1[1], a2, a5, a3, a4);
  v7 = *(*(a3 - 8) + 8);

  return v7(a2, a3);
}

uint64_t protocol witness for RangeReplaceableCollection.init(repeating:count:) in conformance _Deque<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = *(a3 + 16);
  v7 = specialized _Deque.init(repeating:count:)(a1, a2, v6);
  result = (*(*(v6 - 8) + 8))(a1, v6);
  *a4 = v7;
  return result;
}

uint64_t protocol witness for RangeReplaceableCollection.init<A>(_:) in conformance _Deque<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v8 = specialized _Deque.init<A>(_:)(a1, *(a4 + 16), a2, a3);
  result = (*(*(a2 - 8) + 8))(a1, a2);
  *a5 = v8;
  return result;
}

uint64_t protocol witness for RangeReplaceableCollection.append(_:) in conformance _Deque<A>(uint64_t a1, uint64_t a2)
{
  _Deque.append(_:)(a1, a2);
  v4 = *(*(*(a2 + 16) - 8) + 8);

  return v4(a1);
}

uint64_t protocol witness for RangeReplaceableCollection.append<A>(contentsOf:) in conformance _Deque<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _Deque.append<A>(contentsOf:)(a1, a4, a2, a3);
  v6 = *(*(a2 - 8) + 8);

  return v6(a1, a2);
}

uint64_t protocol witness for RangeReplaceableCollection.insert(_:at:) in conformance _Deque<A>(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  _Deque.insert(_:at:)(a1, *a2, a3);
  v5 = *(*(*(a3 + 16) - 8) + 8);

  return v5(a1);
}

uint64_t protocol witness for RangeReplaceableCollection.insert<A>(contentsOf:at:) in conformance _Deque<A>(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  specialized _Deque.insert<A>(contentsOf:at:)(a1, *a2, a5, a3, a4);
  v7 = *(*(a3 - 8) + 8);

  return v7(a1, a3);
}

uint64_t _Deque.debugDescription.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Optional();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v21 - v10;
  v22 = 0x3C6575716544;
  v23 = 0xE600000000000000;
  v12 = _typeName(_:qualified:)();
  MEMORY[0x1865D3D30](v12);

  MEMORY[0x1865D3D30](5974078, 0xE300000000000000);
  v25 = v22;
  v26 = v23;
  v22 = _Deque.makeIterator()(a1, a2);
  v23 = v13;
  v24 = v14;
  v15 = type metadata accessor for _Deque.Iterator();
  _Deque.Iterator.next()(v15, v11);
  v16 = v4[6];
  if (v16(v11, 1, a2) != 1)
  {
    v18 = v4[4];
    v18(v7, v11, a2);
    v21 = xmmword_1816197E0;
    while (1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
      v19 = swift_allocObject();
      *(v19 + 16) = v21;
      *(v19 + 56) = a2;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v19 + 32));
      v18(boxed_opaque_existential_0, v7, a2);
      debugPrint<A>(_:separator:terminator:to:)();

      _Deque.Iterator.next()(v15, v11);
      if (v16(v11, 1, a2) == 1)
      {
        break;
      }

      v18(v7, v11, a2);
      MEMORY[0x1865D3D30](8236, 0xE200000000000000);
    }
  }

  MEMORY[0x1865D3D30](10589, 0xE200000000000000);
  return v25;
}

uint64_t _Deque.customMirror.getter(uint64_t a1)
{
  v2 = type metadata accessor for Mirror.AncestorRepresentation();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v15 - v9;
  v15[0] = a1;
  v15[1] = a1;
  v11 = *MEMORY[0x1E69E7590];
  v12 = type metadata accessor for Mirror.DisplayStyle();
  v13 = *(v12 - 8);
  (*(v13 + 104))(v10, v11, v12);
  (*(v13 + 56))(v10, 0, 1, v12);
  type metadata accessor for _Deque();
  swift_getWitnessTable();
  (*(v3 + 104))(v6, *MEMORY[0x1E69E75D8], v2);
  swift_retain_n();
  return Mirror.init<A, B>(_:unlabeledChildren:displayStyle:ancestorRepresentation:)();
}

uint64_t _Deque.description.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Optional();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v20 - v10;
  v24 = 91;
  v25 = 0xE100000000000000;
  v21 = _Deque.makeIterator()(a1, a2);
  v22 = v12;
  v23 = v13;
  v14 = type metadata accessor for _Deque.Iterator();
  _Deque.Iterator.next()(v14, v11);
  v15 = v4[6];
  if (v15(v11, 1, a2) != 1)
  {
    v17 = v4[4];
    v17(v7, v11, a2);
    v20 = xmmword_1816197E0;
    while (1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
      v18 = swift_allocObject();
      *(v18 + 16) = v20;
      *(v18 + 56) = a2;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v18 + 32));
      v17(boxed_opaque_existential_0, v7, a2);
      print<A>(_:separator:terminator:to:)();

      _Deque.Iterator.next()(v14, v11);
      if (v15(v11, 1, a2) == 1)
      {
        break;
      }

      v17(v7, v11, a2);
      MEMORY[0x1865D3D30](8236, 0xE200000000000000);
    }
  }

  MEMORY[0x1865D3D30](93, 0xE100000000000000);
  return v24;
}

uint64_t static _Deque<A>.== infix(_:_:)()
{
  type metadata accessor for _Deque();
  swift_getWitnessTable();
  return Sequence<>.elementsEqual<A>(_:)() & 1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance <A> _Deque<A>(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 - 8);
  v5 = *a1;
  v6 = *a2;
  v7 = *(a3 + 16);
  return static _Deque<A>.== infix(_:_:)();
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance _Deque<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = specialized _Deque.init(arrayLiteral:)(a1, *(a2 + 16));

  *a3 = v4;
  return result;
}

uint64_t _Deque<A>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[1] = a4;
  v7 = *(a3 - 8);
  v8 = v7[8];
  MEMORY[0x1EEE9AC00](a1);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Optional();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v23 - v13;
  _ss20ManagedBufferPointerVsRi__rlE017withUnsafeMutableC8ToHeaderyqd_0_qd_0_SpyxGqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(closure #1 in _Deque._Storage.count.getter, 0, a2, &type metadata for _DequeBufferHeader, a3, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v22);
  v23[0] = a1;
  MEMORY[0x1865D4230](v24);
  v24 = _Deque.makeIterator()(a2, a3);
  v25 = v15;
  v26 = v16;
  v17 = type metadata accessor for _Deque.Iterator();
  _Deque.Iterator.next()(v17, v14);
  v18 = v7[6];
  if (v18(v14, 1, a3) != 1)
  {
    v20 = v7 + 4;
    v19 = v7[4];
    do
    {
      v19(v10, v14, a3);
      dispatch thunk of Hashable.hash(into:)();
      (*(v20 - 3))(v10, a3);
      _Deque.Iterator.next()(v17, v14);
    }

    while (v18(v14, 1, a3) != 1);
  }
}

Swift::Int _Deque<A>.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  _Deque<A>.hash(into:)(v7, a1, a2, a3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance <A> _Deque<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  Hasher.init(_seed:)();
  _Deque<A>.hash(into:)(v7, *v3, *(a2 + 16), v5);
  return Hasher._finalize()();
}

uint64_t Clock.measure(_:)@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v21[2] = a2;
  v22 = a1;
  v21[1] = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v21 - v14;
  v16 = *(a4 + 32);
  v21[0] = v5;
  v17 = v16(a3, a4);
  v18 = v23;
  v22(v17);
  if (v18)
  {
    return (*(v9 + 8))(v15, AssociatedTypeWitness);
  }

  v23 = 0;
  v16(a3, a4);
  swift_getAssociatedConformanceWitness();
  dispatch thunk of InstantProtocol.duration(to:)();
  v20 = *(v9 + 8);
  v20(v13, AssociatedTypeWitness);
  return (v20)(v15, AssociatedTypeWitness);
}

uint64_t Clock.measure(_:)(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[4] = a5;
  v6[5] = v5;
  v6[2] = a1;
  v6[3] = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[6] = AssociatedTypeWitness;
  v11 = *(AssociatedTypeWitness - 8);
  v6[7] = v11;
  v12 = *(v11 + 64) + 15;
  v6[8] = swift_task_alloc(v12 & 0xFFFFFFFFFFFFFFF0);
  v6[9] = swift_task_alloc(v12 & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a5 + 32);
  v6[10] = v13;
  v6[11] = (a5 + 32) & 0xFFFFFFFFFFFFLL | 0x18B000000000000;
  v13(a4, a5);
  v16 = (a2 + *a2);
  v14 = swift_task_alloc(a2[1]);
  v6[12] = v14;
  *v14 = v6;
  v14[1] = Clock.measure(_:);

  return v16();
}

uint64_t Clock.measure(_:)()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *v1;
  v3;
  if (v0)
  {
    v6 = v2[8];
    v5 = v2[9];
    (*(v2[7] + 8))(v5, v2[6]);
  }

  else
  {
    v9 = v2[10];
    v8 = v2[11];
    v6 = v2[8];
    v5 = v2[9];
    v10 = v2[6];
    v11 = v2[7];
    v13 = v2[4];
    v12 = v2[5];
    v15 = v2 + 2;
    v14 = v2[2];
    v9(v15[1], v13);
    swift_getAssociatedConformanceWitness();
    dispatch thunk of InstantProtocol.duration(to:)();
    v16 = *(v11 + 8);
    v16(v6, v10);
    v16(v5, v10);
  }

  v5;
  v6;
  v7 = *(v4 + 8);

  return v7();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ContinuousClock.Instant.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ContinuousClock.Instant.CodingKeys and conformance ContinuousClock.Instant.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ContinuousClock.Instant.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ContinuousClock.Instant.CodingKeys and conformance ContinuousClock.Instant.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ContinuousClock.now.getter@<X0>(char *a1@<X3>, uint64_t *a2@<X8>)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];

  return ContinuousClock.now.getter(1, a1, a2);
}

uint64_t static ContinuousClock.now.getter@<X0>(char *a1@<X3>, uint64_t *a2@<X8>)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];

  return ContinuousClock.now.getter(1, a1, a2);
}

uint64_t ContinuousClock.minimumResolution.getter(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = *MEMORY[0x1E69E9840];

  return ContinuousClock.minimumResolution.getter(1, a2, a3, a4);
}

void ContinuousClock.sleep(until:tolerance:)(uint64_t *a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = *a1;
  v9 = a1[1];
  v10 = swift_task_alloc(224);
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = protocol witness for AsyncIteratorProtocol.next() in conformance AsyncCompactMapSequence<A, B>.Iterator;

  _sScTss5NeverORszABRs_rlE6_sleep5until9tolerance5clocky7InstantQyd___8DurationQyd__Sgqd__tYaKs5ClockRd__lFZs010ContinuousH0V_Tt2B5(v8, v9, a2, a3, a4 & 1);
}

void _sScTss5NeverORszABRs_rlE6_sleep5until9tolerance5clocky7InstantQyd___8DurationQyd__Sgqd__tYaKs5ClockRd__lFZs010ContinuousH0V_Tt2B5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 97) = a5;
  *(v5 + 168) = a3;
  *(v5 + 176) = a4;
  *(v5 + 152) = a1;
  *(v5 + 160) = a2;
  swift_task_switch(_sScTss5NeverORszABRs_rlE6_sleep5until9tolerance5clocky7InstantQyd___8DurationQyd__Sgqd__tYaKs5ClockRd__lFZs010ContinuousH0V_Tt2B5TY0_, 0, 0);
}

void _sScTss5NeverORszABRs_rlE6_sleep5until9tolerance5clocky7InstantQyd___8DurationQyd__Sgqd__tYaKs5ClockRd__lFZs010ContinuousH0V_Tt2B5TY0_()
{
  v1 = swift_slowAlloc();
  *(v0 + 184) = v1;
  atomic_store(0, v1);
  v2 = swift_task_alloc(32);
  *(v0 + 192) = v2;
  *(v2 + 16) = v1;

  swift_task_switch(_sScTss5NeverORszABRs_rlE6_sleep5until9tolerance5clocky7InstantQyd___8DurationQyd__Sgqd__tYaKs5ClockRd__lFZs010ContinuousH0V_Tt2B5TY1_, 0, 0);
}

void _sScTss5NeverORszABRs_rlE6_sleep5until9tolerance5clocky7InstantQyd___8DurationQyd__Sgqd__tYaKs5ClockRd__lFZs010ContinuousH0V_Tt2B5TY1_()
{
  *(v0 + 200) = swift_task_addCancellationHandler(_sScTss5NeverORszABRs_rlE6_sleep5until9tolerance5clocky7InstantQyd___8DurationQyd__Sgqd__tYaKs5ClockRd__lFZyyYbXEfU0_s010SuspendingH0V_Ttg5TA, *(v0 + 192));

  swift_task_switch(_sScTss5NeverORszABRs_rlE6_sleep5until9tolerance5clocky7InstantQyd___8DurationQyd__Sgqd__tYaKs5ClockRd__lFZs010ContinuousH0V_Tt2B5TY2_, 0, 0);
}

void _sScTss5NeverORszABRs_rlE6_sleep5until9tolerance5clocky7InstantQyd___8DurationQyd__Sgqd__tYaKs5ClockRd__lFZs010ContinuousH0V_Tt2B5TY2_()
{
  v1 = v0;
  v2 = v0;
  v3 = (v0 + 16);
  v4 = *(v1 + 97);
  v6 = *(v1 + 168);
  v5 = *(v1 + 176);
  v8 = *(v1 + 152);
  v7 = *(v1 + 160);
  *(v1 + 16) = v2;
  *(v1 + 24) = _sScTss5NeverORszABRs_rlE6_sleep5until9tolerance5clocky7InstantQyd___8DurationQyd__Sgqd__tYaKs5ClockRd__lFZs010ContinuousH0V_Tt2B5TQ3_;
  v9 = swift_continuation_init(v3, 1uLL);
  *(v1 + 80) = v6;
  *(v1 + 104) = v8;
  *(v1 + 112) = v7;
  *(v1 + 88) = v5;
  *(v1 + 96) = v4 & 1;
  while (1)
  {
    v11 = atomic_load(*(v1 + 184));
    if ((v11 & 3) != 0)
    {
      break;
    }

    if (v11 >= 4)
    {
      goto LABEL_24;
    }

    v12 = 0;
    atomic_compare_exchange_strong(*(v1 + 184), &v12, v9);
    if (!v12)
    {
      v13 = *(v1 + 184);
      v14 = swift_allocObject();
      *(v14 + 16) = v13;
      v15 = swift_task_create(0, 0, MEMORY[0x1E69E7CA8] + 8, &_sScTss5NeverORszABRs_rlE6_sleep5until9tolerance5clocky7InstantQyd___8DurationQyd__Sgqd__tYaKs5ClockRd__lFZyyYaKXEfU_ySccyyts5Error_pGXEfU_yyYacfU_s010ContinuousH0V_Tt0g5TATu, v14);
      if (specialized static Task<>.currentSchedulableExecutor.getter())
      {
        v18 = v16;
        swift_getObjectType();
        v19 = *(v18 + 24);
        lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock();
        v19(v15, v1 + 104, v1 + 80);
        swift_unknownObjectRelease();
        goto LABEL_18;
      }

      v20 = *(v1 + 104);
      v21 = *(v1 + 112);
      *(v1 + 120) = 0u;
      swift_get_time((v1 + 120), (v1 + 128), 1, v17);
      *(v1 + 136) = 0u;
      swift_get_time((v1 + 136), (v1 + 144), 1, v22);
      specialized Duration.init(_seconds:nanoseconds:)(*(v1 + 136), *(v1 + 144));
      static Duration.- infix(_:_:)();
      v23 = Duration.components.getter();
      v25 = *(v1 + 120);
      v26 = v25 + v23;
      if (__OFADD__(v25, v23))
      {
        __break(1u);
      }

      else
      {
        v27 = *(v1 + 128);
        v28 = v27 + v24 / 1000000000;
        if (!__OFADD__(v27, v24 / 1000000000))
        {
          if (v28 < 1000000001)
          {
LABEL_14:
            if (v4)
            {
              v30 = 0;
              v31 = -1;
            }

            else
            {
              v32 = *(v1 + 168);
              v33 = *(v1 + 176);
              v30 = Duration.components.getter();
              v31 = v34 / 1000000000;
            }

            swift_task_enqueueGlobalWithDeadline(v26, v28, v30, v31, 1, v15);
            goto LABEL_18;
          }

          if (!__OFADD__(v26++, 1))
          {
            v28 -= 1000000000;
            goto LABEL_14;
          }

LABEL_23:
          __break(1u);
          while (1)
          {
LABEL_24:
            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
          }
        }
      }

      __break(1u);
      goto LABEL_23;
    }
  }

  if ((v11 & 3) != 3)
  {
    goto LABEL_24;
  }

  swift_continuation_throwingResume(v9, v10);
LABEL_18:

  swift_continuation_await(v3);
}

void _sScTss5NeverORszABRs_rlE6_sleep5until9tolerance5clocky7InstantQyd___8DurationQyd__Sgqd__tYaKs5ClockRd__lFZs010ContinuousH0V_Tt2B5TQ3_()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 208) = v2;
  if (v2)
  {
    swift_willThrow();
    v3 = _sScTss5NeverORszABRs_rlE6_sleep5until9tolerance5clocky7InstantQyd___8DurationQyd__Sgqd__tYaKs5ClockRd__lFZs010ContinuousH0V_Tt2B5TY6_;
  }

  else
  {
    v3 = _sScTss5NeverORszABRs_rlE6_sleep5until9tolerance5clocky7InstantQyd___8DurationQyd__Sgqd__tYaKs5ClockRd__lFZs010ContinuousH0V_Tt2B5TY4_;
  }

  swift_task_switch(v3, 0, 0);
}

void _sScTss5NeverORszABRs_rlE6_sleep5until9tolerance5clocky7InstantQyd___8DurationQyd__Sgqd__tYaKs5ClockRd__lFZs010ContinuousH0V_Tt2B5TY4_()
{
  v1 = *(v0 + 192);
  swift_task_removeCancellationHandler(*(v0 + 200));
  v1;

  swift_task_switch(_sScTss5NeverORszABRs_rlE6_sleep5until9tolerance5clocky7InstantQyd___8DurationQyd__Sgqd__tYaKs5ClockRd__lFZs010ContinuousH0V_Tt2B5TY5_, 0, 0);
}

uint64_t _sScTss5NeverORszABRs_rlE6_sleep5until9tolerance5clocky7InstantQyd___8DurationQyd__Sgqd__tYaKs5ClockRd__lFZs010ContinuousH0V_Tt2B5TY5_()
{
  v1 = atomic_load(*(v0 + 184));
  v2 = v1 & 3;
  if (v2 > 1)
  {
    if (v2 != 2)
    {
      MEMORY[0x1865D4B40](*(v0 + 184), -1, -1);
      lazy protocol witness table accessor for type CancellationError and conformance CancellationError();
      swift_allocError();
      swift_willThrow();
      swift_willThrow();
      v3 = *(v0 + 8);
      goto LABEL_7;
    }

    return _assertionFailure(_:_:file:line:flags:)();
  }

  if (!v2)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  MEMORY[0x1865D4B40](*(v0 + 184), -1, -1);
  v3 = *(v0 + 8);
LABEL_7:

  return v3();
}

void _sScTss5NeverORszABRs_rlE6_sleep5until9tolerance5clocky7InstantQyd___8DurationQyd__Sgqd__tYaKs5ClockRd__lFZs010ContinuousH0V_Tt2B5TY6_()
{
  v1 = *(v0 + 192);
  swift_task_removeCancellationHandler(*(v0 + 200));
  v1;

  swift_task_switch(_sScTss5NeverORszABRs_rlE6_sleep5until9tolerance5clocky7InstantQyd___8DurationQyd__Sgqd__tYaKs5ClockRd__lFZs010ContinuousH0V_Tt2B5TY7_, 0, 0);
}

uint64_t _sScTss5NeverORszABRs_rlE6_sleep5until9tolerance5clocky7InstantQyd___8DurationQyd__Sgqd__tYaKs5ClockRd__lFZs010ContinuousH0V_Tt2B5TY7_()
{
  v1 = *(v0 + 208);
  swift_willThrow();
  v2 = *(v0 + 8);

  return v2();
}

void _sScTss5NeverORszABRs_rlE6_sleep5until9tolerance5clocky7InstantQyd___8DurationQyd__Sgqd__tYaKs5ClockRd__lFZs010SuspendingH0V_Tt2B5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 97) = a5;
  *(v5 + 168) = a3;
  *(v5 + 176) = a4;
  *(v5 + 152) = a1;
  *(v5 + 160) = a2;
  swift_task_switch(_sScTss5NeverORszABRs_rlE6_sleep5until9tolerance5clocky7InstantQyd___8DurationQyd__Sgqd__tYaKs5ClockRd__lFZs010SuspendingH0V_Tt2B5TY0_, 0, 0);
}

void _sScTss5NeverORszABRs_rlE6_sleep5until9tolerance5clocky7InstantQyd___8DurationQyd__Sgqd__tYaKs5ClockRd__lFZs010SuspendingH0V_Tt2B5TY0_()
{
  v1 = swift_slowAlloc();
  *(v0 + 184) = v1;
  atomic_store(0, v1);
  v2 = swift_task_alloc(32);
  *(v0 + 192) = v2;
  *(v2 + 16) = v1;

  swift_task_switch(_sScTss5NeverORszABRs_rlE6_sleep5until9tolerance5clocky7InstantQyd___8DurationQyd__Sgqd__tYaKs5ClockRd__lFZs010SuspendingH0V_Tt2B5TY1_, 0, 0);
}

void _sScTss5NeverORszABRs_rlE6_sleep5until9tolerance5clocky7InstantQyd___8DurationQyd__Sgqd__tYaKs5ClockRd__lFZs010SuspendingH0V_Tt2B5TY1_()
{
  *(v0 + 200) = swift_task_addCancellationHandler(_sScTss5NeverORszABRs_rlE6_sleep5until9tolerance5clocky7InstantQyd___8DurationQyd__Sgqd__tYaKs5ClockRd__lFZyyYbXEfU0_s010SuspendingH0V_Ttg5TA, *(v0 + 192));

  swift_task_switch(_sScTss5NeverORszABRs_rlE6_sleep5until9tolerance5clocky7InstantQyd___8DurationQyd__Sgqd__tYaKs5ClockRd__lFZs010SuspendingH0V_Tt2B5TY2_, 0, 0);
}

void _sScTss5NeverORszABRs_rlE6_sleep5until9tolerance5clocky7InstantQyd___8DurationQyd__Sgqd__tYaKs5ClockRd__lFZs010SuspendingH0V_Tt2B5TY2_()
{
  v1 = v0;
  v2 = v0;
  v3 = (v0 + 16);
  v4 = *(v1 + 97);
  v6 = *(v1 + 168);
  v5 = *(v1 + 176);
  v8 = *(v1 + 152);
  v7 = *(v1 + 160);
  *(v1 + 16) = v2;
  *(v1 + 24) = _sScTss5NeverORszABRs_rlE6_sleep5until9tolerance5clocky7InstantQyd___8DurationQyd__Sgqd__tYaKs5ClockRd__lFZs010SuspendingH0V_Tt2B5TQ3_;
  v9 = swift_continuation_init(v3, 1uLL);
  *(v1 + 80) = v6;
  *(v1 + 104) = v8;
  *(v1 + 112) = v7;
  *(v1 + 88) = v5;
  *(v1 + 96) = v4 & 1;
  while (1)
  {
    v11 = atomic_load(*(v1 + 184));
    if ((v11 & 3) != 0)
    {
      break;
    }

    if (v11 >= 4)
    {
      goto LABEL_24;
    }

    v12 = 0;
    atomic_compare_exchange_strong(*(v1 + 184), &v12, v9);
    if (!v12)
    {
      v13 = *(v1 + 184);
      v14 = swift_allocObject();
      *(v14 + 16) = v13;
      v15 = swift_task_create(0, 0, MEMORY[0x1E69E7CA8] + 8, &_sScTss5NeverORszABRs_rlE6_sleep5until9tolerance5clocky7InstantQyd___8DurationQyd__Sgqd__tYaKs5ClockRd__lFZyyYaKXEfU_ySccyyts5Error_pGXEfU_yyYacfU_s010SuspendingH0V_Tt0g5TATu, v14);
      if (specialized static Task<>.currentSchedulableExecutor.getter())
      {
        v18 = v16;
        swift_getObjectType();
        v19 = *(v18 + 24);
        lazy protocol witness table accessor for type SuspendingClock and conformance SuspendingClock();
        v19(v15, v1 + 104, v1 + 80);
        swift_unknownObjectRelease();
        goto LABEL_18;
      }

      v20 = *(v1 + 104);
      v21 = *(v1 + 112);
      *(v1 + 120) = 0u;
      swift_get_time((v1 + 120), (v1 + 128), 2, v17);
      *(v1 + 136) = 0u;
      swift_get_time((v1 + 136), (v1 + 144), 2, v22);
      specialized Duration.init(_seconds:nanoseconds:)(*(v1 + 136), *(v1 + 144));
      static Duration.- infix(_:_:)();
      v23 = Duration.components.getter();
      v25 = *(v1 + 120);
      v26 = v25 + v23;
      if (__OFADD__(v25, v23))
      {
        __break(1u);
      }

      else
      {
        v27 = *(v1 + 128);
        v28 = v27 + v24 / 1000000000;
        if (!__OFADD__(v27, v24 / 1000000000))
        {
          if (v28 < 1000000001)
          {
LABEL_14:
            if (v4)
            {
              v30 = 0;
              v31 = -1;
            }

            else
            {
              v32 = *(v1 + 168);
              v33 = *(v1 + 176);
              v30 = Duration.components.getter();
              v31 = v34 / 1000000000;
            }

            swift_task_enqueueGlobalWithDeadline(v26, v28, v30, v31, 2, v15);
            goto LABEL_18;
          }

          if (!__OFADD__(v26++, 1))
          {
            v28 -= 1000000000;
            goto LABEL_14;
          }

LABEL_23:
          __break(1u);
          while (1)
          {
LABEL_24:
            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
          }
        }
      }

      __break(1u);
      goto LABEL_23;
    }
  }

  if ((v11 & 3) != 3)
  {
    goto LABEL_24;
  }

  swift_continuation_throwingResume(v9, v10);
LABEL_18:

  swift_continuation_await(v3);
}

void _sScTss5NeverORszABRs_rlE6_sleep5until9tolerance5clocky7InstantQyd___8DurationQyd__Sgqd__tYaKs5ClockRd__lFZs010SuspendingH0V_Tt2B5TQ3_()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 208) = v2;
  if (v2)
  {
    swift_willThrow();
    v3 = _sScTss5NeverORszABRs_rlE6_sleep5until9tolerance5clocky7InstantQyd___8DurationQyd__Sgqd__tYaKs5ClockRd__lFZs010SuspendingH0V_Tt2B5TY6_;
  }

  else
  {
    v3 = _sScTss5NeverORszABRs_rlE6_sleep5until9tolerance5clocky7InstantQyd___8DurationQyd__Sgqd__tYaKs5ClockRd__lFZs010SuspendingH0V_Tt2B5TY4_;
  }

  swift_task_switch(v3, 0, 0);
}

void _sScTss5NeverORszABRs_rlE6_sleep5until9tolerance5clocky7InstantQyd___8DurationQyd__Sgqd__tYaKs5ClockRd__lFZs010SuspendingH0V_Tt2B5TY4_()
{
  v1 = *(v0 + 192);
  swift_task_removeCancellationHandler(*(v0 + 200));
  v1;

  swift_task_switch(_sScTss5NeverORszABRs_rlE6_sleep5until9tolerance5clocky7InstantQyd___8DurationQyd__Sgqd__tYaKs5ClockRd__lFZs010SuspendingH0V_Tt2B5TY5_, 0, 0);
}

void _sScTss5NeverORszABRs_rlE6_sleep5until9tolerance5clocky7InstantQyd___8DurationQyd__Sgqd__tYaKs5ClockRd__lFZs010SuspendingH0V_Tt2B5TY6_()
{
  v1 = *(v0 + 192);
  swift_task_removeCancellationHandler(*(v0 + 200));
  v1;

  swift_task_switch(_sScTss5NeverORszABRs_rlE6_sleep5until9tolerance5clocky7InstantQyd___8DurationQyd__Sgqd__tYaKs5ClockRd__lFZs010SuspendingH0V_Tt2B5TY7_, 0, 0);
}

uint64_t protocol witness for Clock.now.getter in conformance ContinuousClock@<X0>(char *a1@<X3>, uint64_t *a2@<X8>)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];

  return protocol witness for Clock.now.getter in conformance ContinuousClock(1, a1, a2);
}

uint64_t protocol witness for Clock.minimumResolution.getter in conformance ContinuousClock@<X0>(char *a1@<X3>, uint64_t *a2@<X8>)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];

  return protocol witness for Clock.minimumResolution.getter in conformance ContinuousClock(1, a1, a2);
}

void protocol witness for Clock.sleep(until:tolerance:) in conformance ContinuousClock(uint64_t *a1, uint64_t a2)
{
  v4 = *a2;
  v3 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *a1;
  v7 = a1[1];
  v8 = swift_task_alloc(224);
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = protocol witness for AsyncIteratorProtocol.next() in conformance AsyncCompactMapSequence<A, B>.Iterator;

  _sScTss5NeverORszABRs_rlE6_sleep5until9tolerance5clocky7InstantQyd___8DurationQyd__Sgqd__tYaKs5ClockRd__lFZs010ContinuousH0V_Tt2B5(v6, v7, v4, v3, v5);
}

uint64_t ContinuousClock.Instant.advanced(by:)@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  result = static Duration.+ infix(_:_:)();
  *a1 = result;
  a1[1] = v6;
  return result;
}

uint64_t ContinuousClock.Instant.duration(to:)(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *v1;
  v5 = v1[1];
  return static Duration.- infix(_:_:)();
}

uint64_t ContinuousClock.Instant.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return Duration.hash(into:)();
}

uint64_t static ContinuousClock.Instant.< infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  return static Duration.< infix(_:_:)();
}

uint64_t protocol witness for static Comparable.< infix(_:_:) in conformance ContinuousClock.Instant(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  return static Duration.< infix(_:_:)();
}

BOOL protocol witness for static Comparable.<= infix(_:_:) in conformance ContinuousClock.Instant(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  return (static Duration.< infix(_:_:)() & 1) == 0;
}

BOOL protocol witness for static Comparable.>= infix(_:_:) in conformance ContinuousClock.Instant(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  return (static Duration.< infix(_:_:)() & 1) == 0;
}

uint64_t protocol witness for static Comparable.> infix(_:_:) in conformance ContinuousClock.Instant(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  return static Duration.< infix(_:_:)();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ContinuousClock.Instant()
{
  v1 = *v0;
  v2 = v0[1];
  return Duration.hash(into:)();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ContinuousClock.Instant.CodingKeys()
{
  Hasher.init(_seed:)();
  MEMORY[0x1865D4230](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ContinuousClock.Instant.CodingKeys()
{
  Hasher.init(_seed:)();
  MEMORY[0x1865D4230](0);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ContinuousClock.Instant.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65756C61765FLL && a2 == 0xE600000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SuspendingClock.Instant.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SuspendingClock.Instant.CodingKeys and conformance SuspendingClock.Instant.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SuspendingClock.Instant.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SuspendingClock.Instant.CodingKeys and conformance SuspendingClock.Instant.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ContinuousClock.Instant.encode(to:)(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v15 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - v9;
  v11 = *v4;
  v14 = v4[1];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = v11;
  v17 = v14;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v7 + 8))(v10, v6);
}

uint64_t ContinuousClock.Instant.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(void)@<X3>, _OWORD *a5@<X8>)
{
  v16 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v18 = *(v8 - 8);
  v9 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v5)
  {
    v13 = v16;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v18 + 8))(v11, v8);
    *v13 = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t SuspendingClock.now.getter@<X0>(char *a1@<X3>, uint64_t *a2@<X8>)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];

  return ContinuousClock.now.getter(2, a1, a2);
}

uint64_t ContinuousClock.now.getter@<X0>(const char *a1@<X0>, char *a2@<X3>, uint64_t *a3@<X8>)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = 0;
  v8[0] = 0;
  swift_get_time(v8, &v7, a1, a2);
  result = specialized Duration.init(_seconds:nanoseconds:)(v8[0], v7);
  *a3 = result;
  a3[1] = v5;
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t static SuspendingClock.now.getter@<X0>(char *a1@<X3>, uint64_t *a2@<X8>)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];

  return ContinuousClock.now.getter(2, a1, a2);
}

uint64_t SuspendingClock.minimumResolution.getter(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = *MEMORY[0x1E69E9840];

  return ContinuousClock.minimumResolution.getter(2, a2, a3, a4);
}

uint64_t ContinuousClock.minimumResolution.getter(const char *a1, uint64_t a2, uint64_t a3, char *a4)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = 0;
  v7[0] = 0;
  swift_get_clock_res(v7, &v6, a1, a4);
  result = specialized Duration.init(_seconds:nanoseconds:)(v7[0], v6);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void SuspendingClock.sleep(until:tolerance:)(uint64_t *a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = *a1;
  v9 = a1[1];
  v10 = swift_task_alloc(224);
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = protocol witness for AsyncIteratorProtocol.next() in conformance AsyncCompactMapSequence<A, B>.Iterator;

  _sScTss5NeverORszABRs_rlE6_sleep5until9tolerance5clocky7InstantQyd___8DurationQyd__Sgqd__tYaKs5ClockRd__lFZs010SuspendingH0V_Tt2B5(v8, v9, a2, a3, a4 & 1);
}

uint64_t protocol witness for Clock.now.getter in conformance SuspendingClock@<X0>(char *a1@<X3>, uint64_t *a2@<X8>)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];

  return protocol witness for Clock.now.getter in conformance ContinuousClock(2, a1, a2);
}

uint64_t protocol witness for Clock.now.getter in conformance ContinuousClock@<X0>(const char *a1@<X2>, char *a2@<X3>, uint64_t *a3@<X8>)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = 0;
  v8[0] = 0;
  swift_get_time(v8, &v7, a1, a2);
  result = specialized Duration.init(_seconds:nanoseconds:)(v8[0], v7);
  *a3 = result;
  a3[1] = v5;
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t protocol witness for Clock.minimumResolution.getter in conformance SuspendingClock@<X0>(char *a1@<X3>, uint64_t *a2@<X8>)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];

  return protocol witness for Clock.minimumResolution.getter in conformance ContinuousClock(2, a1, a2);
}

uint64_t protocol witness for Clock.minimumResolution.getter in conformance ContinuousClock@<X0>(const char *a1@<X2>, char *a2@<X3>, uint64_t *a3@<X8>)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = 0;
  v8[0] = 0;
  swift_get_clock_res(v8, &v7, a1, a2);
  result = specialized Duration.init(_seconds:nanoseconds:)(v8[0], v7);
  *a3 = result;
  a3[1] = v5;
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void protocol witness for Clock.sleep(until:tolerance:) in conformance SuspendingClock(uint64_t *a1, uint64_t a2)
{
  v4 = *a2;
  v3 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *a1;
  v7 = a1[1];
  v8 = swift_task_alloc(224);
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = protocol witness for AsyncIteratorProtocol.next() in conformance AsyncCompactMapSequence<A, B>.Iterator;

  _sScTss5NeverORszABRs_rlE6_sleep5until9tolerance5clocky7InstantQyd___8DurationQyd__Sgqd__tYaKs5ClockRd__lFZs010SuspendingH0V_Tt2B5(v6, v7, v4, v3, v5);
}

uint64_t static SuspendingClock.Instant.+ infix(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = static Duration.+ infix(_:_:)();
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t static SuspendingClock.Instant.+= infix(_:_:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = static Duration.+ infix(_:_:)();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t static SuspendingClock.Instant.- infix(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  static Duration.zero.getter();
  static Duration.- infix(_:_:)();
  result = static Duration.+ infix(_:_:)();
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t static SuspendingClock.Instant.-= infix(_:_:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  static Duration.zero.getter();
  static Duration.- infix(_:_:)();
  result = static Duration.+ infix(_:_:)();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t static SuspendingClock.Instant.- infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  return static Duration.- infix(_:_:)();
}

Swift::Int ContinuousClock.Instant.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  Duration.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for InstantProtocol.advanced(by:) in conformance ContinuousClock.Instant@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *v2;
  v7 = v2[1];
  result = static Duration.+ infix(_:_:)();
  *a2 = result;
  a2[1] = v9;
  return result;
}

uint64_t protocol witness for InstantProtocol.duration(to:) in conformance ContinuousClock.Instant@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = *v2;
  v7 = v2[1];
  result = static Duration.- infix(_:_:)();
  *a2 = result;
  a2[1] = v9;
  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ContinuousClock.Instant()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  Duration.hash(into:)();
  return Hasher._finalize()();
}

uint64_t static Task<>.sleep<A>(until:tolerance:clock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a5 + 48);
  v13 = (v10 + *v10);
  v11 = swift_task_alloc(v10[1]);
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = implicit closure #2 in implicit closure #1 in AsyncStream.init(_:bufferingPolicy:_:);

  return v13(a1, a2, a4, a5);
}

uint64_t CooperativeExecutor.__deallocating_deinit()
{
  v1 = v0[2];
  v2 = v0[4];

  v3 = v0[5];
  v4 = v0[7];

  return swift_deallocClassInstance();
}

void specialized CooperativeExecutor.runUntil(_:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v40[1] = *MEMORY[0x1E69E9840];
  *(a1 + 64) = 0;
LABEL_4:
  v39 = 0;
  v40[0] = 0;
  swift_get_time(v40, &v39, 2, a4);
  v5 = *(a1 + 40);
  if (*(v5 + 16))
  {
    v7 = v39;
    v6 = v40[0];
    do
    {
      ExecutorPrivateData = swift_job_getExecutorPrivateData(*(v5 + 32));
      if (v6 < *ExecutorPrivateData)
      {
        break;
      }

      if (v6 == *ExecutorPrivateData && v7 < ExecutorPrivateData[1])
      {
        break;
      }

      specialized MutableCollection.swapAt(_:_:)(0, *(*(a1 + 40) + 16) - 1);
      v10 = specialized RangeReplaceableCollection<>.removeLast()();
      if (*(*(a1 + 40) + 16))
      {
        specialized PriorityQueue.downHeap(ndx:)();
      }

      v11 = *(a1 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(a1 + 16) = v11;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 16) + 1, 1, v11, &_ss23_ContiguousArrayStorageCyScJGMd, &_ss23_ContiguousArrayStorageCyScJGMR);
        *(a1 + 16) = v11;
      }

      v13 = *(v11 + 16);
      v14 = *(v11 + 24);
      v15 = v13 + 1;
      if (v13 >= v14 >> 1)
      {
        v38 = *(v11 + 16);
        v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v14 > 1, v15, 1, v11, &_ss23_ContiguousArrayStorageCyScJGMd, &_ss23_ContiguousArrayStorageCyScJGMR);
        v13 = v38;
      }

      *(v11 + 16) = v15;
      *(v11 + 8 * v13 + 32) = v10;
      *(a1 + 16) = v11;
      specialized PriorityQueue.upHeap(ndx:)(v13);
      v5 = *(a1 + 40);
    }

    while (*(v5 + 16));
  }

  for (i = *(a1 + 16); ; i = *(a1 + 16))
  {
    v17 = *(i + 16);
    if (!v17)
    {
      v26 = *(a1 + 40);
      if (!*(v26 + 16))
      {
        goto LABEL_53;
      }

      v27 = swift_job_getExecutorPrivateData(*(v26 + 32));
      v29 = *v27;
      v28 = v27[1];
      v39 = 0;
      v40[0] = 0;
      swift_get_time(v40, &v39, 2, v30);
      if (v40[0] < v29 || (v40[0] == v29 ? (v31 = v39 < v28) : (v31 = 0), v31))
      {
        v32 = v29 - v40[0];
        v33 = __OFSUB__(v29, v40[0]);
        if (v28 >= v39)
        {
          if (v33)
          {
            goto LABEL_55;
          }

          v36 = v28 - v39;
          if (__OFSUB__(v28, v39))
          {
            __break(1u);
LABEL_53:
            v37 = *MEMORY[0x1E69E9840];
            return;
          }
        }

        else
        {
          if (v33)
          {
            __break(1u);
LABEL_55:
            __break(1u);
LABEL_56:
            __break(1u);
LABEL_57:
            __break(1u);
LABEL_58:
            __break(1u);
          }

          if (__OFSUB__(v32--, 1))
          {
            goto LABEL_56;
          }

          v35 = v28 + 1000000000;
          if (__OFADD__(v28, 1000000000))
          {
            goto LABEL_57;
          }

          v36 = v35 - v39;
          if (__OFSUB__(v35, v39))
          {
            goto LABEL_58;
          }
        }

        swift_sleep(v32, v36);
      }

      if (*(a1 + 64) == 1)
      {
        goto LABEL_53;
      }

      goto LABEL_4;
    }

    v18 = v17 - 1;
    if (v17 != 1)
    {
      v19 = *(i + 32);
      v20 = *(i + 32 + 8 * v18);
      v21 = swift_isUniquelyReferenced_nonNull_native();
      *(a1 + 16) = i;
      if ((v21 & 1) == 0)
      {
        i = specialized _ArrayBuffer._consumeAndCreateNew()(i);
      }

      *(i + 32) = v20;
      *(a1 + 16) = i;
      if (v17 > *(i + 16))
      {
        goto LABEL_61;
      }

      *(i + 32 + 8 * v18) = v19;
      *(a1 + 16) = i;
      if (!*(i + 16))
      {
        goto LABEL_60;
      }
    }

    v22 = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + 16) = i;
    if ((v22 & 1) == 0)
    {
      break;
    }

    v23 = *(i + 16);
    if (!v23)
    {
      goto LABEL_59;
    }

LABEL_28:
    v24 = v23 - 1;
    v25 = *(i + 8 * v24 + 32);
    *(i + 16) = v24;
    *(a1 + 16) = i;
    if (v24)
    {
      specialized PriorityQueue.downHeap(ndx:)();
    }

    swift_job_run(v25, a1, &protocol witness table for CooperativeExecutor);
  }

  i = specialized _ArrayBuffer._consumeAndCreateNew()(i);
  *(a1 + 16) = i;
  v23 = *(i + 16);
  if (v23)
  {
    goto LABEL_28;
  }

LABEL_59:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
LABEL_60:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
LABEL_61:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void CooperativeExecutor.runUntil(_:)(uint64_t (*a1)(void))
{
  v2 = v1;
  v38[1] = *MEMORY[0x1E69E9840];
  *(v1 + 64) = 0;
LABEL_4:
  if (a1())
  {
    goto LABEL_54;
  }

  v37 = 0;
  v38[0] = 0;
  swift_get_time(v38, &v37, 2, v4);
  v5 = *(v2 + 40);
  if (*(v5 + 16))
  {
    v7 = v37;
    v6 = v38[0];
    do
    {
      ExecutorPrivateData = swift_job_getExecutorPrivateData(*(v5 + 32));
      if (v6 < *ExecutorPrivateData)
      {
        break;
      }

      if (v6 == *ExecutorPrivateData && v7 < ExecutorPrivateData[1])
      {
        break;
      }

      specialized MutableCollection.swapAt(_:_:)(0, *(*(v2 + 40) + 16) - 1);
      v10 = specialized RangeReplaceableCollection<>.removeLast()();
      if (*(*(v2 + 40) + 16))
      {
        specialized PriorityQueue.downHeap(ndx:)();
      }

      v11 = *(v2 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v2 + 16) = v11;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 16) + 1, 1, v11, &_ss23_ContiguousArrayStorageCyScJGMd, &_ss23_ContiguousArrayStorageCyScJGMR);
        *(v2 + 16) = v11;
      }

      v14 = *(v11 + 16);
      v13 = *(v11 + 24);
      if (v14 >= v13 >> 1)
      {
        v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v13 > 1, v14 + 1, 1, v11, &_ss23_ContiguousArrayStorageCyScJGMd, &_ss23_ContiguousArrayStorageCyScJGMR);
      }

      *(v11 + 16) = v14 + 1;
      *(v11 + 8 * v14 + 32) = v10;
      *(v2 + 16) = v11;
      specialized PriorityQueue.upHeap(ndx:)(v14);
      v5 = *(v2 + 40);
    }

    while (*(v5 + 16));
  }

  for (i = *(v2 + 16); ; i = *(v2 + 16))
  {
    v16 = *(i + 16);
    if (!v16)
    {
      v25 = *(v2 + 40);
      if (!*(v25 + 16))
      {
        goto LABEL_54;
      }

      v26 = swift_job_getExecutorPrivateData(*(v25 + 32));
      v28 = *v26;
      v27 = v26[1];
      v37 = 0;
      v38[0] = 0;
      swift_get_time(v38, &v37, 2, v29);
      if (v38[0] < v28 || (v38[0] == v28 ? (v30 = v37 < v27) : (v30 = 0), v30))
      {
        v31 = v28 - v38[0];
        v32 = __OFSUB__(v28, v38[0]);
        if (v27 >= v37)
        {
          if (v32)
          {
            __break(1u);
LABEL_56:
            __break(1u);
LABEL_57:
            __break(1u);
LABEL_58:
            __break(1u);
LABEL_59:
            __break(1u);
          }

          v35 = v27 - v37;
          if (__OFSUB__(v27, v37))
          {
            __break(1u);
LABEL_54:
            v36 = *MEMORY[0x1E69E9840];
            return;
          }
        }

        else
        {
          if (v32)
          {
            goto LABEL_56;
          }

          if (__OFSUB__(v31--, 1))
          {
            goto LABEL_57;
          }

          v34 = v27 + 1000000000;
          if (__OFADD__(v27, 1000000000))
          {
            goto LABEL_58;
          }

          v35 = v34 - v37;
          if (__OFSUB__(v34, v37))
          {
            goto LABEL_59;
          }
        }

        swift_sleep(v31, v35);
      }

      if (*(v2 + 64))
      {
        goto LABEL_54;
      }

      goto LABEL_4;
    }

    v17 = v16 - 1;
    if (v16 != 1)
    {
      v18 = *(i + 32);
      v19 = *(i + 32 + 8 * v17);
      v20 = swift_isUniquelyReferenced_nonNull_native();
      *(v2 + 16) = i;
      if ((v20 & 1) == 0)
      {
        i = specialized _ArrayBuffer._consumeAndCreateNew()(i);
      }

      *(i + 32) = v19;
      *(v2 + 16) = i;
      if (v16 > *(i + 16))
      {
        goto LABEL_61;
      }

      *(i + 32 + 8 * v17) = v18;
      *(v2 + 16) = i;
      if (!*(i + 16))
      {
        goto LABEL_62;
      }
    }

    v21 = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + 16) = i;
    if ((v21 & 1) == 0)
    {
      break;
    }

    v22 = *(i + 16);
    if (!v22)
    {
      goto LABEL_60;
    }

LABEL_29:
    v23 = v22 - 1;
    v24 = *(i + 8 * v23 + 32);
    *(i + 16) = v23;
    *(v2 + 16) = i;
    if (v23)
    {
      specialized PriorityQueue.downHeap(ndx:)();
    }

    swift_job_run(v24, v2, &protocol witness table for CooperativeExecutor);
  }

  i = specialized _ArrayBuffer._consumeAndCreateNew()(i);
  *(v2 + 16) = i;
  v22 = *(i + 16);
  if (v22)
  {
    goto LABEL_29;
  }

LABEL_60:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
LABEL_61:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
LABEL_62:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t protocol witness for SerialExecutor.enqueue(_:) in conformance CooperativeExecutor(uint64_t a1, uint64_t a2)
{
  return Executor.enqueue(_:)(a1, a2, &protocol witness table for CooperativeExecutor);
}

{
  return Executor.enqueue(_:)(a1, a2, &protocol witness table for CooperativeExecutor);
}

uint64_t protocol witness for Executor.enqueue(_:) in conformance CooperativeExecutor(uint64_t a1)
{
  v5 = *(v1 + 16);
  v3 = (v1 + 16);
  v4 = v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 16) + 1, 1, v4, &_ss23_ContiguousArrayStorageCyScJGMd, &_ss23_ContiguousArrayStorageCyScJGMR);
    *v3 = v4;
  }

  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = v7 + 1;
  if (v7 >= v8 >> 1)
  {
    v11 = *(v4 + 16);
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v8 > 1, v9, 1, v4, &_ss23_ContiguousArrayStorageCyScJGMd, &_ss23_ContiguousArrayStorageCyScJGMR);
    v7 = v11;
  }

  *(v4 + 16) = v9;
  *(v4 + 8 * v7 + 32) = a1;
  *v3 = v4;
  return specialized PriorityQueue.upHeap(ndx:)(v7);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DispatchMainExecutor.run()()
{
  if (*(v0 + 16) != 1)
  {
    *(v0 + 16) = 1;
    swift_dispatchMain();
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t protocol witness for SerialExecutor.enqueue(_:) in conformance DispatchMainExecutor(uint64_t a1, uint64_t a2)
{
  return Executor.enqueue(_:)(a1, a2, &protocol witness table for DispatchMainExecutor);
}

{
  return Executor.enqueue(_:)(a1, a2, &protocol witness table for DispatchMainExecutor);
}

uint64_t one-time initialization function for handle()
{
  v0 = String.utf8CString.getter();
  v1 = dlopen((v0 + 32), 16);

  static CoreFoundation.handle = v1;
  return result;
}

uint64_t _ss14CoreFoundationO6symbolyxSSlFZyyXC_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for handle != -1)
  {
    swift_once();
  }

  v4 = static CoreFoundation.handle;
  v5 = String.utf8CString.getter();
  v6 = dlsym(v4, (v5 + 32));

  if (v6)
  {
    return v6;
  }

  _StringGuts.grow(_:)(38);

  MEMORY[0x1865D3D30](a1, a2);
  MEMORY[0x1865D3D30](0xD000000000000012, 0x800000018161D840);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void *one-time initialization function for CFRunLoopRun()
{
  result = _ss14CoreFoundationO6symbolyxSSlFZyyXC_Tt1g5(0x6F6F4C6E75524643, 0xEC0000006E755270);
  static CoreFoundation.CFRunLoopRun = result;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CFMainExecutor.run()()
{
  if (one-time initialization token for CFRunLoopRun != -1)
  {
    swift_once();
  }

  static CoreFoundation.CFRunLoopRun();
}

uint64_t swift_task_asyncMainDrainQueueImpl()
{
  swift_createDefaultExecutorsOnce();
  if (static MainActor._executor)
  {
    v0 = qword_1ED42D448;
    ObjectType = swift_getObjectType();
    v2 = *(v0 + 8);
    v3 = *(v2 + 16);
    swift_unknownObjectRetain();
    v3(ObjectType, v2);
    swift_unknownObjectRelease();

    _swift_exit(0);
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t swift_task_donateThreadToGlobalExecutorUntilImpl(uint64_t a1, uint64_t a2)
{
  swift_createDefaultExecutorsOnce();
  if (_sScTss5NeverORszABRs_rlE16_defaultExecutorSch_pSgvpZ)
  {
    ObjectType = swift_getObjectType();
    v5 = swift_conformsToProtocol2();
    if (v5)
    {
      v6 = v5;
      v11 = a1;
      v12 = a2;
      v7 = *(MEMORY[0x1EEE9AC00](v5) + 24);
      swift_unknownObjectRetain();
      v7(partial apply for closure #1 in donateToGlobalExecutor(condition:context:), v9, ObjectType, v6);
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    LODWORD(v11) = 0;
    v10 = 616;
    v9[0] = 2;
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t swift_task_getMainExecutorImpl()
{
  swift_createDefaultExecutorsOnce();
  if (static MainActor._executor)
  {
    v0 = qword_1ED42D448;
    ObjectType = swift_getObjectType();
    v2 = *(v0 + 16);
    v3 = *(v2 + 40);
    swift_unknownObjectRetain();
    v4 = v3(ObjectType, v2);
    swift_unknownObjectRelease();
    return v4;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t swift_task_enqueueMainExecutorImpl(uint64_t a1)
{
  swift_createDefaultExecutorsOnce();
  if (static MainActor._executor)
  {
    v2 = qword_1ED42D448;
    ObjectType = swift_getObjectType();
    v4 = *(v2 + 16);
    v5 = *(v4 + 16);
    swift_unknownObjectRetain();
    v5(a1, ObjectType, v4);

    return swift_unknownObjectRelease();
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t swift_task_enqueueGlobalImpl(uint64_t a1)
{
  swift_createDefaultExecutorsOnce();
  if (_sScTss5NeverORszABRs_rlE16_defaultExecutorSch_pSgvpZ)
  {
    v2 = qword_1ED42D458;
    ObjectType = swift_getObjectType();
    v4 = *(v2 + 16);
    swift_unknownObjectRetain();
    v4(a1, ObjectType, v2);

    return swift_unknownObjectRelease();
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t swift_task_enqueueGlobalWithDelayImpl(unint64_t a1, uint64_t a2)
{
  swift_createDefaultExecutorsOnce();
  if (_sScTss5NeverORszABRs_rlE16_defaultExecutorSch_pSgvpZ)
  {
    if (Executor.asSchedulable.getter())
    {
      v5 = v4;
      v6 = 1000000000 * a1;
      v7 = (a1 * 0x3B9ACA00uLL) >> 64;
      ObjectType = swift_getObjectType();
      v14[0] = v6;
      v14[1] = v7;
      v12[0] = 0;
      v12[1] = 0;
      v13 = 1;
      v9 = lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock();
      SchedulableExecutor.enqueue<A>(_:after:tolerance:clock:)(a2, v14, v12, v10, ObjectType, &type metadata for ContinuousClock, v5, v9);
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t swift_task_enqueueGlobalWithDeadlineImpl(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v8 = static Duration.+ infix(_:_:)();
  v10 = v9;
  v11 = static Duration.+ infix(_:_:)();
  v13 = v12;
  if (a5 == 1)
  {
    swift_createDefaultExecutorsOnce();
    if (_sScTss5NeverORszABRs_rlE16_defaultExecutorSch_pSgvpZ)
    {
      if (Executor.asSchedulable.getter())
      {
        v15 = v14;
        swift_getObjectType();
        v24 = v8;
        v25 = v10;
        v21 = v11;
        v22 = v13;
        v23 = 0;
        v16 = *(v15 + 16);
        lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock();
LABEL_9:
        v16(a6, &v24, &v21);
        return swift_unknownObjectRelease();
      }

      goto LABEL_12;
    }

    goto LABEL_10;
  }

  if (a5 != 2)
  {
LABEL_11:
    _StringGuts.grow(_:)(19);

    v21 = 0xD000000000000011;
    v22 = 0x800000018161CD70;
    LODWORD(v24) = a5;
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1865D3D30](v20);

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_12;
  }

  swift_createDefaultExecutorsOnce();
  if (!_sScTss5NeverORszABRs_rlE16_defaultExecutorSch_pSgvpZ)
  {
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_11;
  }

  if (Executor.asSchedulable.getter())
  {
    v18 = v17;
    swift_getObjectType();
    v24 = v8;
    v25 = v10;
    v21 = v11;
    v22 = v13;
    v23 = 0;
    v16 = *(v18 + 16);
    lazy protocol witness table accessor for type SuspendingClock and conformance SuspendingClock();
    goto LABEL_9;
  }

LABEL_12:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

swift::AsyncTask *static Task<>.startOnMainActor(priority:_:)(unsigned __int8 *a1, int *a2, uint64_t a3, uint64_t a4)
{
  if (a1[1])
  {
    v4 = 3072;
  }

  else
  {
    v4 = *a1 | 0xC00;
  }

  v5 = swift_task_create(v4, 0, a4, a2, a3);
  swift_task_startOnMainActor(v5);
  return v5;
}

swift::AsyncTask *static Task<>.startOnMainActor(priority:_:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1 | 0xC00;
  if (a1[1])
  {
    v8 = 3072;
  }

  else
  {
    v8 = *a1 | 0xC00;
  }

  v9 = swift_allocObject();
  v9[2] = a4;
  v9[3] = a2;
  v9[4] = a3;
  v10 = swift_task_create(v8, 0, a4, &async function pointer to partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out A), v9);
  swift_task_startOnMainActor(v10);
  return v10;
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out A)(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc(a2[1]);
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = ThrowingTaskGroup._waitForAll();

  return v6(a1);
}

uint64_t closure #1 in $defer #1 <A>() in _Deque.subscript.modify(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = _Deque._UnsafeHandle.ptr(at:)(*v11, v12, v14, v13);
  (*(v7 + 16))(v10, a4, a5);
  return (*(v7 + 32))(v15, v10, a5);
}

uint64_t specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(uint64_t result, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if ((a3 & 1) == 0)
  {
    v9 = a2;
    goto LABEL_8;
  }

  v8 = *(a4 + 24);
  v9 = v8 >> 1;
  if ((v8 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v9 + 0x4000000000000000 >= 0)
  {
    v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
    if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v9 = a2;
    }

LABEL_8:
    v10 = *(a4 + 16);
    if (v9 <= v10)
    {
      v11 = *(a4 + 16);
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
        v14 = v13 - 25;
      }

      *(v12 + 16) = v10;
      *(v12 + 24) = 2 * (v14 >> 3);
      if (v7)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v12 = MEMORY[0x1E69E7CC0];
      if (result)
      {
LABEL_15:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v10, (v12 + 32));
        *(a4 + 16) = 0;
LABEL_18:

        return v12;
      }
    }

    specialized _ArrayBuffer._copyContents(subRange:initializing:)(0, v10, (v12 + 32), a4);
    goto LABEL_18;
  }

  __break(1u);
  return result;
}

unint64_t specialized Array._checkSubscript(_:wasNativeTypeChecked:)(unint64_t result, char a2, uint64_t a3)
{
  if ((a2 & 1) != 0 && ((result & 0x8000000000000000) != 0 || *(a3 + 16) <= result))
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t _sSRsRi_zrlE17withMemoryRebound2to_qd_1_qd__m_qd_1_SRyqd__Gqd_0_YKXEtqd_0_YKs5ErrorRd_0_Ri_d__Ri_d_1_r1_lFSRyxGq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lys4Int8VsAD_pqd_1_Isgyrzr_SRys5UInt8VGqd_1_sAD_pAIRszAGRsd__sAD_pRsd_0_Ri_d_1_r_1_lIetMgyrzo_Tpq5yt_Tg507_sSRys4f5VGxs5E34_pIgyrzo_ACxsAD_pIegyrzr_lTRyt_TG5SRyAGGytsAD_pIgyrzo_Tf1ncn_n(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, void))
{
  if (!a1)
  {
    goto LABEL_4;
  }

  if (a2 < 0)
  {
    a1 = _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
LABEL_4:
    a2 = 0;
  }

  return a3(a1, a2, a3);
}

uint64_t specialized Array.remove(at:)(uint64_t a1)
{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
  }

  v4 = *(v3 + 16);
  if (v4 <= a1 || a1 < 0)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v5 = v4 - 1;
    v6 = v4 - 1 - a1;
    v7 = v3 + 8 * a1;
    v8 = *(v7 + 32);
    specialized UnsafeMutablePointer.moveInitialize(from:count:)((v7 + 40), v6, (v7 + 32));
    *(v3 + 16) = v5;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t specialized Array._customRemoveLast()()
{
  v1 = *v0;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v2 = *(v1 + 16);
    if (v2)
    {
LABEL_3:
      v3 = v2 - 1;
      result = *(v1 + 8 * v3 + 32);
      *(v1 + 16) = v3;
      *v0 = v1;
      return result;
    }
  }

  else
  {
    v1 = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
    v2 = *(v1 + 16);
    if (v2)
    {
      goto LABEL_3;
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

unint64_t specialized RangeReplaceableCollection.removeFirst(_:)(unint64_t result)
{
  if (result)
  {
    if ((result & 0x8000000000000000) != 0 || *(*v1 + 16) < result)
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {

      return specialized Array.replaceSubrange<A>(_:with:)(0, result);
    }
  }

  return result;
}

uint64_t specialized Duration.init(_seconds:nanoseconds:)(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (is_mul_ok(a2, 0x3B9ACA00uLL))
    {
      return 1000000000000000000 * a1 + 1000000000 * a2;
    }

    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized CooperativeExecutor.enqueue<A>(_:after:tolerance:clock:)(uint64_t a1, uint64_t a2)
{
  v29[2] = *MEMORY[0x1E69E9840];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  (*(v8 + 16))(&v29[-1] - v7, a2, AssociatedTypeWitness);
  if (!swift_dynamicCast())
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
LABEL_19:
    result = _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v9 = Duration.components.getter();
  v11 = v10;
  v28 = 0;
  v29[0] = 0;
  swift_get_time(v29, &v28, 2, v12);
  v13 = v29[0] + v9;
  if (__OFADD__(v29[0], v9))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = __OFADD__(v28, v11 / 1000000000);
  v15 = v28 + v11 / 1000000000;
  if (v14)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v15 > 1000000000)
  {
    v16 = v9 + v29[0];
    v17 = v15 - 2000000000;
    if (v15 < 0x77359400)
    {
      v17 = 0;
    }

    v18 = (v17 + 999999999) / 0x3B9ACA00uLL;
    if ((v16 ^ 0x7FFFFFFFFFFFFFFFuLL) <= v18)
    {
      __break(1u);
    }

    v13 = v16 + v18 + 1;
    v15 = v15 - 1000000000 * v18 - 1000000000;
  }

  ExecutorPrivateData = swift_job_getExecutorPrivateData(a1);
  if ((ExecutorPrivateData & 7) != 0)
  {
    goto LABEL_19;
  }

  *ExecutorPrivateData = v13;
  *(ExecutorPrivateData + 8) = v15;
  v20 = v2[5];
  v2 += 5;
  v9 = v20;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v20;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_16:
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 16) + 1, 1, v9, &_ss23_ContiguousArrayStorageCyScJGMd, &_ss23_ContiguousArrayStorageCyScJGMR);
    *v2 = v9;
  }

  v22 = *(v9 + 16);
  v23 = *(v9 + 24);
  v24 = v22 + 1;
  if (v22 >= v23 >> 1)
  {
    v27 = *(v9 + 16);
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v23 > 1, v24, 1, v9, &_ss23_ContiguousArrayStorageCyScJGMd, &_ss23_ContiguousArrayStorageCyScJGMR);
    v22 = v27;
  }

  *(v9 + 16) = v24;
  *(v9 + 8 * v22 + 32) = a1;
  *v2 = v9;
  result = specialized PriorityQueue.upHeap(ndx:)(v22);
  v26 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t specialized DispatchExecutorProtocol.delay<A>(from:clock:)(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  (*(v5 + 16))(&v8 - v4, a1, AssociatedTypeWitness);
  if (swift_dynamicCast())
  {
    v6 = Duration.components.getter();
    return v6 & ~(v6 >> 63);
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t specialized DispatchExecutorProtocol.timestamp<A>(for:clock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = &v22 - v11;
  v13 = *(a4 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v10);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = *(v13 + 16);
  v18(&v22 - v19, a2, a4);
  v20 = swift_dynamicCast();
  if (v20 || (v18(v17, a2, a4), swift_dynamicCast()))
  {
    (*(v8 + 16))(v12, a1, AssociatedTypeWitness);
    swift_dynamicCast();
    Duration.components.getter();
    return v20 ^ 1u;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void specialized DispatchMainExecutor.enqueue<A>(_:at:tolerance:clock:)(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t), uint64_t a8, unsigned __int8 a9)
{
  v34 = a7;
  v35 = a2;
  v36 = a4;
  v38 = a1;
  v37 = a9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = type metadata accessor for Optional();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v33 - v16;
  v18 = *(AssociatedTypeWitness - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v21 = &v33 - v20;
  (*(v13 + 16))(v17, a3, v12);
  if ((*(v18 + 48))(v17, 1, AssociatedTypeWitness) == 1)
  {
    v22 = (*(v13 + 8))(v17, v12);
    v23 = 0;
    v24 = -1;
    v25 = v34(v22);
  }

  else
  {
    v26 = (*(v18 + 32))(v21, v17, AssociatedTypeWitness);
    v27 = v34;
    v34(v26);
    v23 = specialized DispatchExecutorProtocol.delay<A>(from:clock:)(v21);
    v24 = v28;
    v29 = (*(v18 + 8))(v21, AssociatedTypeWitness);
    v25 = v27(v29);
  }

  if (specialized DispatchExecutorProtocol.timestamp<A>(for:clock:)(v35, v36, v25, a5))
  {
    v32 = 2;
  }

  else
  {
    v32 = 1;
  }

  swift_dispatchEnqueueWithDeadline(v37 & 1, v30, v31, v23, v24, v32, v38);
}

void specialized SerialExecutor.checkIsolated()()
{
  _StringGuts.grow(_:)(60);
  MEMORY[0x1865D3D30](0xD00000000000003ALL, 0x800000018161CF90);
  v0 = _typeName(_:qualified:)();
  MEMORY[0x1865D3D30](v0);

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t partial apply for implicit closure #1 in static GlobalActor.assertIsolated(_:file:line:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t specialized _Deque.Iterator.init(_base:)(uint64_t a1, uint64_t a2)
{
  v6[2] = a2;
  v6[3] = a1;
  v4 = type metadata accessor for _Deque.Iterator();
  _Deque._Storage.read<A>(_:)(partial apply for closure #1 in _Deque.Iterator.init(_base:), v6, a1, a2, v4, partial apply for closure #1 in _Deque._Storage.read<A>(_:));
  return v6[5];
}

uint64_t specialized static Task<>.currentExecutor.getter()
{
  ActiveExecutor = _swift_getActiveExecutor();
  if (ActiveExecutor)
  {
    v2 = *(v1 + 8);
    v3 = ActiveExecutor;
LABEL_7:
    swift_unknownObjectRetain();
    return v3;
  }

  PreferredTaskExecutor = _swift_getPreferredTaskExecutor();
  if (PreferredTaskExecutor || (PreferredTaskExecutor = _swift_getCurrentTaskExecutor()) != 0)
  {
    v3 = PreferredTaskExecutor;
    v6 = *(v5 + 8);
LABEL_6:
    swift_unknownObjectRetain();
    goto LABEL_7;
  }

  swift_createDefaultExecutorsOnce();
  v3 = _sScTss5NeverORszABRs_rlE16_defaultExecutorSch_pSgvpZ;
  if (_sScTss5NeverORszABRs_rlE16_defaultExecutorSch_pSgvpZ)
  {
    v8 = *(qword_1ED42D458 + 8);
    goto LABEL_6;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized static Task<>.currentSchedulableExecutor.getter()
{
  if ((!_swift_getActiveExecutor() || (result = Executor.asSchedulable.getter()) == 0) && (!_swift_getPreferredTaskExecutor() || (result = Executor.asSchedulable.getter()) == 0) && (!_swift_getCurrentTaskExecutor() || (result = Executor.asSchedulable.getter()) == 0))
  {
    swift_createDefaultExecutorsOnce();
    if (_sScTss5NeverORszABRs_rlE16_defaultExecutorSch_pSgvpZ)
    {
      return Executor.asSchedulable.getter();
    }

    else
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1815F15A8(uint64_t a1)
{
  v2 = (v1 + *(a1 + 44));
  result = *v2;
  v4 = v2[1];
  return result;
}

uint64_t sub_1815F1618(uint64_t a1)
{
  v2 = (v1 + *(a1 + 36));
  result = *v2;
  v4 = v2[1];
  return result;
}

uint64_t sub_1815F1628(uint64_t a1)
{
  v2 = (v1 + *(a1 + 52));
  result = *v2;
  v4 = v2[1];
  return result;
}

uint64_t sub_1815F1668(uint64_t a1)
{
  v2 = (v1 + *(a1 + 40));
  result = *v2;
  v4 = v2[1];
  return result;
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

uint64_t partial apply for closure #1 in AsyncSequence.allSatisfy(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc(32);
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in AsyncSequence.allSatisfy(_:);

  return closure #1 in AsyncSequence.allSatisfy(_:)(a1, v7);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A.AsyncSequence.Element, @in_guaranteed A.AsyncSequence.Element) -> (@unowned Bool)(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc(16);
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = partial apply for closure #1 in AsyncSequence.allSatisfy(_:);

  return thunk for @escaping @callee_guaranteed (@in_guaranteed A.AsyncSequence.Element, @in_guaranteed A.AsyncSequence.Element) -> (@unowned Bool)(a1, a2, v9);
}

uint64_t partial apply for implicit closure #1 in AsyncSequence<>.min()()
{
  v2 = v0[2];
  v1 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  swift_getAssociatedTypeWitness();
  return dispatch thunk of static Comparable.< infix(_:_:)() & 1;
}

uint64_t thunk for @escaping @callee_guaranteed (@in_guaranteed A.AsyncSequence.Element, @in_guaranteed A.AsyncSequence.Element) -> (@unowned Bool)partial apply(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc(16);
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = thunk for @escaping @callee_guaranteed (@in_guaranteed A.AsyncSequence.Element, @in_guaranteed A.AsyncSequence.Element) -> (@unowned Bool)partial apply;

  return thunk for @escaping @callee_guaranteed (@in_guaranteed A.AsyncSequence.Element, @in_guaranteed A.AsyncSequence.Element) -> (@unowned Bool)(a1, a2, v9);
}

uint64_t thunk for @escaping @callee_guaranteed (@in_guaranteed A.AsyncSequence.Element, @in_guaranteed A.AsyncSequence.Element) -> (@unowned Bool)partial apply(uint64_t a1)
{
  v5 = *v1;
  *(*v1 + 16);
  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_1815F1CB4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t partial apply for closure #1 in _runAsyncMain(_:)()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc(32);
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = protocol witness for AsyncIteratorProtocol.next() in conformance AsyncCompactMapSequence<A, B>.Iterator;

  return closure #1 in _runAsyncMain(_:)(v4, v2);
}

uint64_t _ss33withTaskPriorityEscalationHandler9operation02onC9Escalated9isolationxxyYaq_YKXE_yScP_ScPtYbXEScA_pSgYitYaq_YKs5ErrorR_r0_lFys5UInt8V_AHtYbXEfU_TA(char a1, char a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v7 = a1;
  v6 = a2;
  return v3(&v7, &v6);
}

unint64_t lazy protocol witness table accessor for type CancellationError and conformance CancellationError()
{
  result = lazy protocol witness table cache variable for type CancellationError and conformance CancellationError;
  if (!lazy protocol witness table cache variable for type CancellationError and conformance CancellationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CancellationError and conformance CancellationError);
  }

  return result;
}

uint64_t specialized _Deque.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 < 0 || (v6 = *(a3 + 16), _ss20ManagedBufferPointerVsRi__rlE017withUnsafeMutableC8ToHeaderyqd_0_qd_0_SpyxGqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(closure #1 in _Deque._Storage.count.getter, 0, *v3, &type metadata for _DequeBufferHeader, v6, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v12), v13 <= a2))
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    type metadata accessor for _Deque._Storage();
    _Deque._Storage.ensureUnique()();
    v7 = *v3;
    MEMORY[0x1EEE9AC00](v8);
    v11[2] = v6;
    v11[3] = a2;
    v12 = a1;
    return _Deque._Storage.read<A>(_:)(partial apply for closure #1 in _Deque.subscript.setter, v11, v9, v6, MEMORY[0x1E69E7CA8] + 8, partial apply for closure #1 in _Deque._Storage.update<A>(_:));
  }

  return result;
}

uint64_t partial apply for closure #1 in _checkIllegalTaskLocalBindingWithinWithTaskGroup(file:line:)(unsigned __int8 *a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = String.count.getter();
  return swift_task_reportIllegalTaskLocalBindingWithinWithTaskGroup(a1, v6, 1, v5);
}

void specialized static Task<>.onSleepWake(_:)(unint64_t *a1, swift::AsyncTask *a2)
{
  while (1)
  {
    v2 = atomic_load(a1);
    v3 = v2 & 3;
    if ((v2 & 3) != 0)
    {
      break;
    }

    v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
    if ((v2 & 0xFFFFFFFFFFFFFFFCLL) == 0)
    {
      goto LABEL_13;
    }

    v5 = v2 & 0xFFFFFFFFFFFFFFFCLL;
    atomic_compare_exchange_strong(a1, &v5, 1uLL);
    if (v5 == v4)
    {

      swift_continuation_throwingResume(v4, a2);
      return;
    }
  }

  if (v3 == 2)
  {

    JUMPOUT(0x1865D4B40);
  }

  if (v3 != 3)
  {
    while (1)
    {
LABEL_13:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }
}

char *specialized _ArrayBuffer._copyContents(subRange:initializing:)(uint64_t a1, uint64_t a2, char *__dst, uint64_t a4)
{
  v4 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
  }

  else if ((v4 & 0x8000000000000000) == 0)
  {
    v5 = (a4 + 8 * a1 + 32);
    v6 = 8 * v4;
    v7 = &__dst[v6];
    if (v5 >= &__dst[v6] || &v5[v6] <= __dst)
    {
      memcpy(__dst, v5, v6);
      return v7;
    }
  }

  result = _fatalErrorMessage(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t a1, int64_t a2)
{
  if (a1 < 0)
  {
    goto LABEL_23;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
    goto LABEL_23;
  }

  v7 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v8 = a1 - a2;
  if (__OFSUB__(0, v7))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v9 = v5 - v7;
  if (__OFADD__(v5, v8))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v10 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v9 > *(v4 + 24) >> 1)
  {
    if (v5 <= v9)
    {
      v12 = v5 + v8;
    }

    else
    {
      v12 = v5;
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v12, 1, v4, &_ss23_ContiguousArrayStorageCySccyytSgs5NeverOGGMd, &_ss23_ContiguousArrayStorageCySccyytSgs5NeverOGGMR);
    v4 = result;
  }

  if (v7 < 0)
  {
    goto LABEL_24;
  }

  if (!v7)
  {
LABEL_17:
    *v2 = v4;
    return result;
  }

  v13 = *(v4 + 16);
  if (!__OFSUB__(v13, a2))
  {
    result = specialized UnsafeMutablePointer.moveInitialize(from:count:)((v4 + 32 + 8 * a2), v13 - a2, (v4 + 32 + 8 * a1));
    v14 = *(v4 + 16);
    v15 = __OFADD__(v14, v8);
    v16 = v14 - v7;
    if (!v15)
    {
      *(v4 + 16) = v16;
      goto LABEL_17;
    }

    goto LABEL_22;
  }

LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
LABEL_24:
  result = _fatalErrorMessage(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized _Deque.index(_:offsetBy:limitedBy:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
    goto LABEL_12;
  }

  if (a2 >= 1)
  {
    if (v3 < 0 || v3 >= a2)
    {
      goto LABEL_9;
    }

    return 0;
  }

  if (v3 <= 0 && v3 > a2)
  {
    return 0;
  }

LABEL_9:
  v4 = __OFADD__(result, a2);
  result += a2;
  if (v4)
  {
LABEL_12:
    __break(1u);
  }

  return result;
}

uint64_t specialized _Deque.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v51 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v48 = *(AssociatedTypeWitness - 8);
  v13 = *(v48 + 64);
  v14 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v49 = &v40 - v17;
  if (a1 < 0)
  {
    goto LABEL_15;
  }

  v18 = *(a4 + 16);
  _ss20ManagedBufferPointerVsRi__rlE017withUnsafeMutableC8ToHeaderyqd_0_qd_0_SpyxGqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(closure #1 in _Deque._Storage.count.getter, 0, *v6, &type metadata for _DequeBufferHeader, v18, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v39);
  if (v52 < a2)
  {
    goto LABEL_15;
  }

  v50 = a1;
  v19 = __OFSUB__(a2, a1);
  v20 = a2 - a1;
  if (v19)
  {
    __break(1u);
    goto LABEL_12;
  }

  v21 = v6;
  v46 = a2;
  v47 = AssociatedTypeWitness;
  v22 = dispatch thunk of Collection.count.getter();
  v23 = v22 - v20;
  if (__OFSUB__(v22, v20))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v24 = v22;
  v25 = v18;
  _ss20ManagedBufferPointerVsRi__rlE017withUnsafeMutableC8ToHeaderyqd_0_qd_0_SpyxGqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(closure #1 in _Deque._Storage.count.getter, 0, *v21, &type metadata for _DequeBufferHeader, v18, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v39);
  v45 = v23;
  v19 = __OFADD__(v52, v23);
  v26 = v52 + v23;
  if (!v19)
  {
    type metadata accessor for _Deque._Storage();
    v44 = v21;
    _Deque._Storage.ensureUnique(minimumCapacity:linearGrowth:)(v26, 0);
    if (v24 >= v20)
    {
      v27 = v20;
    }

    else
    {
      v27 = v24;
    }

    v28 = v50;
    if (!__OFADD__(v50, v27))
    {
      v43 = v50 + v27;
      v29 = v51;
      v41 = v25;
      dispatch thunk of Collection.startIndex.getter();
      v42 = v20;
      v30 = v49;
      dispatch thunk of Collection.index(_:offsetBy:)();
      v31 = v47;
      v32 = *(v48 + 8);
      v33 = v32(v16, v47);
      v34 = *v44;
      MEMORY[0x1EEE9AC00](v33);
      v35 = v41;
      *(&v40 - 12) = v41;
      *(&v40 - 11) = a5;
      *(&v40 - 10) = a6;
      *(&v40 - 9) = v28;
      v36 = v43;
      *(&v40 - 8) = v46;
      *(&v40 - 7) = v36;
      *(&v40 - 6) = v29;
      *(&v40 - 5) = v30;
      *(&v40 - 4) = v45;
      *(&v40 - 3) = v27;
      v39 = v42;
      _Deque._Storage.read<A>(_:)(partial apply for closure #1 in _Deque.replaceSubrange<A>(_:with:), (&v40 - 14), v37, v35, MEMORY[0x1E69E7CA8] + 8, partial apply for closure #1 in _Deque._Storage.update<A>(_:));
      return v32(v30, v31);
    }

    goto LABEL_14;
  }

LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized _AsyncStreamCriticalStorage.value.setter(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v11[-v6];
  _swift_async_stream_lock_lock((v1 + ((*(v8 + 48) + 7) & 0x1FFFFFFF8)));
  (*(v4 + 16))(v7, v1 + *(*v1 + 88), v3);
  v12 = v1;
  v13 = a1;
  _ss20withExtendedLifetimeyq0_x_q0_yq_YKXEtq_YKs5ErrorR_Ri_zRi0_zRi_0_r1_lF(v7, partial apply for closure #1 in _AsyncStreamCriticalStorage.value.setter, v11, v3, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v9);
  return (*(v4 + 8))(v7, v3);
}

uint64_t _sScS12ContinuationV11TerminationOyx__GRi_zRi0_zlyxIseghn_SglWOe_0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t _sScS12ContinuationV11TerminationOyx__GRi_zRi0_zlyxIseghn_SglWOy_0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1815F2A18()
{
  v1 = v0[3];

  if (v0[4])
  {
    v2 = v0[5];
  }

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

void partial apply for closure #1 in AsyncStream.init(unfolding:onCancel:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc(80);
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = protocol witness for AsyncIteratorProtocol.next() in conformance AsyncCompactMapSequence<A, B>.Iterator;

  closure #1 in AsyncStream.init(unfolding:onCancel:)(a1, v5, v7, v6, v4);
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

uint64_t sub_1815F2BC0()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @async () -> (@out A?, @error @owned Error)(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc(32);
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = protocol witness for AsyncIteratorProtocol.next() in conformance AsyncCompactMapSequence<A, B>.Iterator;

  return thunk for @escaping @callee_guaranteed @async () -> (@out A?, @error @owned Error)(a1, v7, v8, v6, a2);
}

void partial apply for closure #1 in AsyncThrowingStream.init<>(unfolding:)(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc(80);
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for AsyncIteratorProtocol.next() in conformance AsyncCompactMapSequence<A, B>.Iterator;

  closure #1 in AsyncThrowingStream.init<>(unfolding:)(a1, v6, v7, a2);
}

uint64_t partial apply for closure #1 in static AsyncStream.makeStream(of:bufferingPolicy:)(uint64_t *a1)
{
  v3 = *(v1 + 24);
  v4 = *v3;

  *v3 = *a1;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ContinuousClock.Instant.CodingKeys and conformance ContinuousClock.Instant.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ContinuousClock.Instant.CodingKeys and conformance ContinuousClock.Instant.CodingKeys;
  if (!lazy protocol witness table cache variable for type ContinuousClock.Instant.CodingKeys and conformance ContinuousClock.Instant.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContinuousClock.Instant.CodingKeys and conformance ContinuousClock.Instant.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContinuousClock.Instant.CodingKeys and conformance ContinuousClock.Instant.CodingKeys;
  if (!lazy protocol witness table cache variable for type ContinuousClock.Instant.CodingKeys and conformance ContinuousClock.Instant.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContinuousClock.Instant.CodingKeys and conformance ContinuousClock.Instant.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContinuousClock.Instant.CodingKeys and conformance ContinuousClock.Instant.CodingKeys;
  if (!lazy protocol witness table cache variable for type ContinuousClock.Instant.CodingKeys and conformance ContinuousClock.Instant.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContinuousClock.Instant.CodingKeys and conformance ContinuousClock.Instant.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContinuousClock.Instant.CodingKeys and conformance ContinuousClock.Instant.CodingKeys;
  if (!lazy protocol witness table cache variable for type ContinuousClock.Instant.CodingKeys and conformance ContinuousClock.Instant.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContinuousClock.Instant.CodingKeys and conformance ContinuousClock.Instant.CodingKeys);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t lazy protocol witness table accessor for type SuspendingClock.Instant.CodingKeys and conformance SuspendingClock.Instant.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SuspendingClock.Instant.CodingKeys and conformance SuspendingClock.Instant.CodingKeys;
  if (!lazy protocol witness table cache variable for type SuspendingClock.Instant.CodingKeys and conformance SuspendingClock.Instant.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SuspendingClock.Instant.CodingKeys and conformance SuspendingClock.Instant.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SuspendingClock.Instant.CodingKeys and conformance SuspendingClock.Instant.CodingKeys;
  if (!lazy protocol witness table cache variable for type SuspendingClock.Instant.CodingKeys and conformance SuspendingClock.Instant.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SuspendingClock.Instant.CodingKeys and conformance SuspendingClock.Instant.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SuspendingClock.Instant.CodingKeys and conformance SuspendingClock.Instant.CodingKeys;
  if (!lazy protocol witness table cache variable for type SuspendingClock.Instant.CodingKeys and conformance SuspendingClock.Instant.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SuspendingClock.Instant.CodingKeys and conformance SuspendingClock.Instant.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SuspendingClock.Instant.CodingKeys and conformance SuspendingClock.Instant.CodingKeys;
  if (!lazy protocol witness table cache variable for type SuspendingClock.Instant.CodingKeys and conformance SuspendingClock.Instant.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SuspendingClock.Instant.CodingKeys and conformance SuspendingClock.Instant.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock()
{
  result = lazy protocol witness table cache variable for type ContinuousClock and conformance ContinuousClock;
  if (!lazy protocol witness table cache variable for type ContinuousClock and conformance ContinuousClock)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContinuousClock and conformance ContinuousClock);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SuspendingClock and conformance SuspendingClock()
{
  result = lazy protocol witness table cache variable for type SuspendingClock and conformance SuspendingClock;
  if (!lazy protocol witness table cache variable for type SuspendingClock and conformance SuspendingClock)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SuspendingClock and conformance SuspendingClock);
  }

  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out A)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc(32);
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = protocol witness for AsyncIteratorProtocol.next() in conformance AsyncCompactMapSequence<A, B>.Iterator;

  return thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out A)(a1, v5);
}

uint64_t associated type witness table accessor for AsyncIteratorProtocol.Failure : Error in AsyncCompactMapSequence<A, B>.Iterator(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  v3 = *(a2 + 16);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t associated type witness table accessor for AsyncIteratorProtocol.Failure : Error in AsyncDropFirstSequence<A>.Iterator(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v2 = *(a2 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  return swift_getAssociatedConformanceWitness();
}

unint64_t lazy protocol witness table accessor for type JobPriority and conformance JobPriority()
{
  result = lazy protocol witness table cache variable for type JobPriority and conformance JobPriority;
  if (!lazy protocol witness table cache variable for type JobPriority and conformance JobPriority)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JobPriority and conformance JobPriority);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TaskPriority and conformance TaskPriority()
{
  result = lazy protocol witness table cache variable for type TaskPriority and conformance TaskPriority;
  if (!lazy protocol witness table cache variable for type TaskPriority and conformance TaskPriority)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TaskPriority and conformance TaskPriority);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TaskPriority and conformance TaskPriority;
  if (!lazy protocol witness table cache variable for type TaskPriority and conformance TaskPriority)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TaskPriority and conformance TaskPriority);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UnsafeCurrentTask and conformance UnsafeCurrentTask()
{
  result = lazy protocol witness table cache variable for type UnsafeCurrentTask and conformance UnsafeCurrentTask;
  if (!lazy protocol witness table cache variable for type UnsafeCurrentTask and conformance UnsafeCurrentTask)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnsafeCurrentTask and conformance UnsafeCurrentTask);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ContinuousClock.Instant and conformance ContinuousClock.Instant()
{
  result = lazy protocol witness table cache variable for type ContinuousClock.Instant and conformance ContinuousClock.Instant;
  if (!lazy protocol witness table cache variable for type ContinuousClock.Instant and conformance ContinuousClock.Instant)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContinuousClock.Instant and conformance ContinuousClock.Instant);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContinuousClock.Instant and conformance ContinuousClock.Instant;
  if (!lazy protocol witness table cache variable for type ContinuousClock.Instant and conformance ContinuousClock.Instant)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContinuousClock.Instant and conformance ContinuousClock.Instant);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContinuousClock.Instant and conformance ContinuousClock.Instant;
  if (!lazy protocol witness table cache variable for type ContinuousClock.Instant and conformance ContinuousClock.Instant)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContinuousClock.Instant and conformance ContinuousClock.Instant);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContinuousClock.Instant and conformance ContinuousClock.Instant;
  if (!lazy protocol witness table cache variable for type ContinuousClock.Instant and conformance ContinuousClock.Instant)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContinuousClock.Instant and conformance ContinuousClock.Instant);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SuspendingClock.Instant and conformance SuspendingClock.Instant()
{
  result = lazy protocol witness table cache variable for type SuspendingClock.Instant and conformance SuspendingClock.Instant;
  if (!lazy protocol witness table cache variable for type SuspendingClock.Instant and conformance SuspendingClock.Instant)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SuspendingClock.Instant and conformance SuspendingClock.Instant);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SuspendingClock.Instant and conformance SuspendingClock.Instant;
  if (!lazy protocol witness table cache variable for type SuspendingClock.Instant and conformance SuspendingClock.Instant)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SuspendingClock.Instant and conformance SuspendingClock.Instant);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SuspendingClock.Instant and conformance SuspendingClock.Instant;
  if (!lazy protocol witness table cache variable for type SuspendingClock.Instant and conformance SuspendingClock.Instant)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SuspendingClock.Instant and conformance SuspendingClock.Instant);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SuspendingClock.Instant and conformance SuspendingClock.Instant;
  if (!lazy protocol witness table cache variable for type SuspendingClock.Instant and conformance SuspendingClock.Instant)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SuspendingClock.Instant and conformance SuspendingClock.Instant);
  }

  return result;
}

__n128 sub_1815F3844(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

__n128 sub_1815F3880(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t dispatch thunk of Executor.enqueue(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 8))();
}

{
  return (*(a3 + 16))();
}

{
  return (*(a3 + 24))();
}

uint64_t dispatch thunk of SerialExecutor.enqueue(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 16))();
}

{
  return (*(a3 + 24))();
}

{
  return (*(a3 + 32))();
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for UnownedSerialExecutor(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for UnownedSerialExecutor(uint64_t result, int a2, int a3)
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
      *(result + 8) = 0;
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

uint64_t *initializeBufferWithCopyOfBuffer for AsyncDropWhileSequence.Iterator(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 64);
  v11 = *(v9 + 80);
  if ((v11 & 0x1000F8) != 0 || ((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 16 > 0x18)
  {
    v13 = *a2;
    *a1 = *a2;
    a1 = (v13 + (((v11 & 0xF8) + 23) & ~(v11 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v9 + 16))(a1, a2, AssociatedTypeWitness);
    v14 = (a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
    v15 = (a2 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (*v15 < 0xFFFFFFFFuLL)
    {
      *v14 = *v15;
      return a1;
    }

    v16 = *(v15 + 8);
    *v14 = *v15;
    *(v14 + 8) = v16;
  }

  return a1;
}

uint64_t destroy for AsyncDropWhileSequence.Iterator(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8) + 8;
  result = (*v6)(a1, AssociatedTypeWitness);
  v8 = ((a1 + *(v6 + 56) + 7) & 0xFFFFFFFFFFFFFFF8);
  if (*v8 >= 0xFFFFFFFFuLL)
  {
    v9 = v8[1];
  }

  return result;
}

uint64_t initializeWithCopy for AsyncDropWhileSequence.Iterator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8) + 16;
  (*v9)(a1, a2, AssociatedTypeWitness);
  v10 = *(v9 + 48) + 7;
  v11 = (v10 + a1) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v10 + a2) & 0xFFFFFFFFFFFFFFF8;
  if (*v12 < 0xFFFFFFFFuLL)
  {
    *v11 = *v12;
  }

  else
  {
    v13 = *(v12 + 8);
    *v11 = *v12;
    *(v11 + 8) = v13;
  }

  return a1;
}

uint64_t assignWithCopy for AsyncDropWhileSequence.Iterator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8) + 24;
  (*v9)(a1, a2, AssociatedTypeWitness);
  v10 = *(v9 + 40) + 7;
  v11 = ((v10 + a1) & 0xFFFFFFFFFFFFFFF8);
  v12 = ((v10 + a2) & 0xFFFFFFFFFFFFFFF8);
  v13 = *v12;
  if (*v11 < 0xFFFFFFFFuLL)
  {
    if (v13 >= 0xFFFFFFFF)
    {
      v16 = v12[1];
      *v11 = v13;
      v11[1] = v16;

      return a1;
    }

LABEL_7:
    *v11 = *v12;
    return a1;
  }

  if (v13 < 0xFFFFFFFF)
  {
    v17 = v11[1];

    goto LABEL_7;
  }

  v14 = v12[1];
  v15 = v11[1];
  *v11 = v13;
  v11[1] = v14;

  return a1;
}

uint64_t initializeWithTake for AsyncDropWhileSequence.Iterator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8) + 32;
  (*v9)(a1, a2, AssociatedTypeWitness);
  v10 = *(v9 + 32) + 7;
  v11 = (v10 + a1) & 0xFFFFFFFFFFFFFFF8;
  v12 = ((v10 + a2) & 0xFFFFFFFFFFFFFFF8);
  v13 = *v12;
  if (*v12 < 0xFFFFFFFF)
  {
    *v11 = *v12;
  }

  else
  {
    v14 = v12[1];
    *v11 = v13;
    *(v11 + 8) = v14;
  }

  return a1;
}

uint64_t assignWithTake for AsyncDropWhileSequence.Iterator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8) + 40;
  (*v9)(a1, a2, AssociatedTypeWitness);
  v10 = *(v9 + 24) + 7;
  v11 = ((v10 + a1) & 0xFFFFFFFFFFFFFFF8);
  v12 = ((v10 + a2) & 0xFFFFFFFFFFFFFFF8);
  v13 = *v12;
  if (*v11 < 0xFFFFFFFFuLL)
  {
    if (v13 >= 0xFFFFFFFF)
    {
      v16 = v12[1];
      *v11 = v13;
      v11[1] = v16;
      return a1;
    }

LABEL_7:
    *v11 = *v12;
    return a1;
  }

  if (v13 < 0xFFFFFFFF)
  {
    v17 = v11[1];

    goto LABEL_7;
  }

  v14 = v12[1];
  v15 = v11[1];
  *v11 = v13;
  v11[1] = v14;

  return a1;
}

uint64_t getEnumTagSinglePayload for AsyncDropWhileSequence.Iterator(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  if (v10 <= 0x7FFFFFFE)
  {
    v11 = 2147483646;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (v11 >= a2)
  {
    goto LABEL_28;
  }

  v13 = ((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v14 = v13 & 0xFFFFFFF8;
  if ((v13 & 0xFFFFFFF8) != 0)
  {
    v15 = 2;
  }

  else
  {
    v15 = a2 - v11 + 1;
  }

  if (v15 >= 0x10000)
  {
    v16 = 4;
  }

  else
  {
    v16 = 2;
  }

  if (v15 < 0x100)
  {
    v16 = 1;
  }

  if (v15 >= 2)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v18 = *(a1 + v13);
      if (!v18)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v18 = *(a1 + v13);
      if (!v18)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v17 || (v18 = *(a1 + v13)) == 0)
  {
LABEL_28:
    if (v10 < 0x7FFFFFFE)
    {
      v22 = *((a1 + v12 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v22 >= 0xFFFFFFFF)
      {
        LODWORD(v22) = -1;
      }

      if ((v22 + 1) >= 2)
      {
        return v22;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v21 = *(v9 + 48);

      return v21(a1);
    }
  }

  v20 = v18 - 1;
  if (v14)
  {
    v20 = 0;
    LODWORD(v14) = *a1;
  }

  return v11 + (v14 | v20) + 1;
}

void storeEnumTagSinglePayload for AsyncDropWhileSequence.Iterator(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 64);
  if (v10 <= 0x7FFFFFFE)
  {
    v12 = 2147483646;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  v13 = ((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v11 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v14 = a3 - v12 + 1;
  }

  else
  {
    v14 = 2;
  }

  if (v14 >= 0x10000)
  {
    v15 = 4;
  }

  else
  {
    v15 = 2;
  }

  if (v14 < 0x100)
  {
    v15 = 1;
  }

  if (v14 >= 2)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (v12 < a3)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (a2 > v12)
  {
    if (((v11 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v18 = a2 - v12;
    }

    else
    {
      v18 = 1;
    }

    if (((v11 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v19 = ~v12 + a2;
      bzero(a1, v13);
      *a1 = v19;
    }

    if (v17 > 1)
    {
      if (v17 == 2)
      {
        *(a1 + v13) = v18;
      }

      else
      {
        *(a1 + v13) = v18;
      }
    }

    else if (v17)
    {
      *(a1 + v13) = v18;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *(a1 + v13) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    }

    *(a1 + v13) = 0;
  }

  else if (v17)
  {
    *(a1 + v13) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return;
  }

LABEL_36:
  if (v10 < 0x7FFFFFFE)
  {
    v21 = ((a1 + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (a2 > 0x7FFFFFFE)
    {
      *v21 = 0;
      v21[1] = 0;
      *v21 = a2 - 0x7FFFFFFF;
    }

    else
    {
      *v21 = a2;
    }
  }

  else
  {
    v20 = *(v9 + 56);

    v20(a1, a2);
  }
}

uint64_t *initializeBufferWithCopyOfBuffer for AsyncFilterSequence.Iterator(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 64);
  v11 = *(v9 + 80);
  if ((v11 & 0x1000F8) != 0 || ((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 16 > 0x18)
  {
    v13 = *a2;
    *a1 = *a2;
    a1 = (v13 + (((v11 & 0xF8) + 23) & ~(v11 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v9 + 16))(a1, a2, AssociatedTypeWitness);
    v14 = ((a2 + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
    v15 = v14[1];
    v16 = ((a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v16 = *v14;
    v16[1] = v15;
  }

  return a1;
}

uint64_t destroy for AsyncFilterSequence.Iterator(uint64_t a1, uint64_t a2)
{
  return destroy for AsyncFilterSequence.Iterator(a1, a2);
}

{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8) + 8;
  (*v6)(a1, AssociatedTypeWitness);
  v7 = *(((a1 + *(v6 + 56) + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t initializeWithCopy for AsyncFilterSequence.Iterator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8) + 16;
  (*v9)(a1, a2, AssociatedTypeWitness);
  v10 = *(v9 + 48) + 7;
  v11 = ((v10 + a1) & 0xFFFFFFFFFFFFFFF8);
  v12 = ((v10 + a2) & 0xFFFFFFFFFFFFFFF8);
  v13 = v12[1];
  *v11 = *v12;
  v11[1] = v13;

  return a1;
}

uint64_t assignWithCopy for AsyncFilterSequence.Iterator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8) + 24;
  (*v9)(a1, a2, AssociatedTypeWitness);
  v10 = *(v9 + 40) + 7;
  v11 = ((v10 + a1) & 0xFFFFFFFFFFFFFFF8);
  v12 = ((v10 + a2) & 0xFFFFFFFFFFFFFFF8);
  v13 = v12[1];
  v14 = v11[1];
  *v11 = *v12;
  v11[1] = v13;

  return a1;
}

uint64_t initializeWithTake for AsyncFilterSequence.Iterator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8) + 32;
  (*v9)(a1, a2, AssociatedTypeWitness);
  *((*(v9 + 32) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v9 + 32) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for AsyncFilterSequence.Iterator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8) + 40;
  (*v9)(a1, a2, AssociatedTypeWitness);
  v10 = *(v9 + 24) + 7;
  v11 = (v10 + a1) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v11 + 8);
  *v11 = *((v10 + a2) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t getEnumTagSinglePayload for AsyncFilterSequence.Iterator(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (v11 >= a2)
  {
    goto LABEL_28;
  }

  v13 = ((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v14 = v13 & 0xFFFFFFF8;
  if ((v13 & 0xFFFFFFF8) != 0)
  {
    v15 = 2;
  }

  else
  {
    v15 = a2 - v11 + 1;
  }

  if (v15 >= 0x10000)
  {
    v16 = 4;
  }

  else
  {
    v16 = 2;
  }

  if (v15 < 0x100)
  {
    v16 = 1;
  }

  if (v15 >= 2)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v18 = *(a1 + v13);
      if (!v18)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v18 = *(a1 + v13);
      if (!v18)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v17 || (v18 = *(a1 + v13)) == 0)
  {
LABEL_28:
    if (v10 < 0x7FFFFFFF)
    {
      v22 = *((a1 + v12 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v22 >= 0xFFFFFFFF)
      {
        LODWORD(v22) = -1;
      }

      return (v22 + 1);
    }

    else
    {
      v21 = *(v9 + 48);

      return v21(a1);
    }
  }

  v20 = v18 - 1;
  if (v14)
  {
    v20 = 0;
    LODWORD(v14) = *a1;
  }

  return v11 + (v14 | v20) + 1;
}

void storeEnumTagSinglePayload for AsyncFilterSequence.Iterator(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 64);
  if (v10 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  v13 = ((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v11 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v14 = a3 - v12 + 1;
  }

  else
  {
    v14 = 2;
  }

  if (v14 >= 0x10000)
  {
    v15 = 4;
  }

  else
  {
    v15 = 2;
  }

  if (v14 < 0x100)
  {
    v15 = 1;
  }

  if (v14 >= 2)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (v12 < a3)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (a2 > v12)
  {
    if (((v11 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v18 = a2 - v12;
    }

    else
    {
      v18 = 1;
    }

    if (((v11 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v19 = ~v12 + a2;
      bzero(a1, v13);
      *a1 = v19;
    }

    if (v17 > 1)
    {
      if (v17 == 2)
      {
        *(a1 + v13) = v18;
      }

      else
      {
        *(a1 + v13) = v18;
      }
    }

    else if (v17)
    {
      *(a1 + v13) = v18;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *(a1 + v13) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    }

    *(a1 + v13) = 0;
  }

  else if (v17)
  {
    *(a1 + v13) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return;
  }

LABEL_36:
  if (v10 < 0x7FFFFFFF)
  {
    v21 = ((a1 + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      *v21 = a2 & 0x7FFFFFFF;
      v21[1] = 0;
    }

    else
    {
      *v21 = (a2 - 1);
    }
  }

  else
  {
    v20 = *(v9 + 56);

    v20(a1, a2);
  }
}

uint64_t type metadata completion function for AsyncFlatMapSequence.Iterator(void *a1)
{
  return type metadata completion function for AsyncFlatMapSequence.Iterator(a1);
}

{
  v2 = a1[4];
  v3 = a1[2];
  result = swift_getAssociatedTypeWitness();
  if (v5 <= 0x3F)
  {
    v9 = *(result - 8) + 64;
    v6 = a1[5];
    v7 = a1[3];
    swift_getAssociatedTypeWitness();
    result = type metadata accessor for Optional();
    if (v8 <= 0x3F)
    {
      v10 = *(result - 8) + 64;
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for AsyncFlatMapSequence.Iterator(uint64_t *a1, uint64_t *a2, void *a3)
{
  return initializeBufferWithCopyOfBuffer for AsyncFlatMapSequence.Iterator(a1, a2, a3);
}

{
  v6 = a3[4];
  v7 = a3[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 64);
  v11 = a3[5];
  v12 = a3[3];
  v13 = swift_getAssociatedTypeWitness();
  v14 = *(v13 - 8);
  v15 = *(v14 + 80);
  if (*(v14 + 84))
  {
    v16 = *(v14 + 64);
  }

  else
  {
    v16 = *(v14 + 64) + 1;
  }

  v17 = v15 | *(v9 + 80) & 0xF8;
  if (v17 > 7 || ((*(v9 + 80) | *(v14 + 80)) & 0x100000) != 0 || v16 - ((-17 - (((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + v15)) | v15) > 0x18)
  {
    v20 = *a2;
    *a1 = *a2;
    a1 = (v20 + (((v17 | 7) + 16) & ~(v17 | 7)));
  }

  else
  {
    v21 = v13;
    (*(v9 + 16))(a1, a2, AssociatedTypeWitness);
    v22 = ((a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
    v23 = ((a2 + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
    v24 = v23[1];
    *v22 = *v23;
    v22[1] = v24;
    v25 = v22 + 2;
    v26 = v23 + 2;
    v27 = *(v14 + 48);

    if (v27(v26, 1, v21))
    {
      memcpy(v25, v26, v16);
    }

    else
    {
      (*(v14 + 16))(v25, v26, v21);
      (*(v14 + 56))(v25, 0, 1, v21);
    }

    *(v25 + v16) = *(v26 + v16);
  }

  return a1;
}

uint64_t destroy for AsyncFlatMapSequence.Iterator(uint64_t a1, void *a2)
{
  return destroy for AsyncFlatMapSequence.Iterator(a1, a2);
}

{
  v4 = a2[4];
  v5 = a2[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8) + 8;
  (*v7)(a1, AssociatedTypeWitness);
  v8 = (a1 + *(v7 + 56) + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v8 + 8);

  v10 = a2[5];
  v11 = a2[3];
  v12 = swift_getAssociatedTypeWitness();
  v13 = *(v12 - 8);
  v14 = *(v13 + 80);
  v15 = v8 + v14 + 16;
  v18 = v13;
  result = (*(v13 + 48))(v15 & ~v14, 1, v12);
  if (!result)
  {
    v17 = *(v18 + 8);

    return v17(v15 & ~v14, v12);
  }

  return result;
}

uint64_t initializeWithCopy for AsyncFlatMapSequence.Iterator(uint64_t a1, uint64_t a2, void *a3)
{
  return initializeWithCopy for AsyncFlatMapSequence.Iterator(a1, a2, a3);
}

{
  v6 = a3[4];
  v7 = a3[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8) + 16;
  (*v9)(a1, a2, AssociatedTypeWitness);
  v10 = *(v9 + 48) + 7;
  v11 = ((v10 + a1) & 0xFFFFFFFFFFFFFFF8);
  v12 = ((v10 + a2) & 0xFFFFFFFFFFFFFFF8);
  v13 = v12[1];
  *v11 = *v12;
  v11[1] = v13;
  v14 = a3[5];
  v15 = a3[3];
  v16 = swift_getAssociatedTypeWitness();
  v17 = *(v16 - 8);
  v18 = *(v17 + 80);
  v19 = ((v11 + v18 + 16) & ~v18);
  v20 = ((v12 + v18 + 16) & ~v18);
  v21 = *(v17 + 48);

  if (v21(v20, 1, v16))
  {
    v22 = *(v17 + 84);
    v23 = *(v17 + 64);
    if (v22)
    {
      v24 = *(v17 + 64);
    }

    else
    {
      v24 = v23 + 1;
    }

    memcpy(v19, v20, v24);
  }

  else
  {
    (*(v17 + 16))(v19, v20, v16);
    v26 = *(v17 + 56);
    v25 = v17 + 56;
    v26(v19, 0, 1, v16);
    v22 = *(v25 + 28);
    v23 = *(v25 + 8);
  }

  if (v22)
  {
    v27 = v23;
  }

  else
  {
    v27 = v23 + 1;
  }

  *(v19 + v27) = *(v20 + v27);
  return a1;
}

uint64_t assignWithCopy for AsyncFlatMapSequence.Iterator(uint64_t a1, uint64_t a2, void *a3)
{
  return assignWithCopy for AsyncFlatMapSequence.Iterator(a1, a2, a3);
}

{
  v6 = a3[4];
  v7 = a3[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8) + 24;
  (*v9)(a1, a2, AssociatedTypeWitness);
  v10 = *(v9 + 40) + 7;
  v11 = ((v10 + a1) & 0xFFFFFFFFFFFFFFF8);
  v12 = ((v10 + a2) & 0xFFFFFFFFFFFFFFF8);
  v13 = v12[1];
  v14 = v11[1];
  *v11 = *v12;
  v11[1] = v13;

  v15 = a3[5];
  v16 = a3[3];
  v17 = swift_getAssociatedTypeWitness();
  v18 = *(v17 - 8);
  v19 = *(v18 + 80);
  v20 = ((v11 + v19 + 16) & ~v19);
  v21 = ((v12 + v19 + 16) & ~v19);
  v22 = *(v18 + 48);
  LODWORD(v11) = v22(v20, 1, v17);
  v23 = v22(v21, 1, v17);
  if (v11)
  {
    if (!v23)
    {
      (*(v18 + 16))(v20, v21, v17);
      (*(v18 + 56))(v20, 0, 1, v17);
      goto LABEL_12;
    }

    v24 = *(v18 + 84);
    v25 = *(v18 + 64);
  }

  else
  {
    if (!v23)
    {
      (*(v18 + 24))(v20, v21, v17);
      goto LABEL_12;
    }

    (*(v18 + 8))(v20, v17);
    v24 = *(v18 + 84);
    v25 = *(v18 + 64);
  }

  if (v24)
  {
    v26 = v25;
  }

  else
  {
    v26 = v25 + 1;
  }

  memcpy(v20, v21, v26);
LABEL_12:
  if (*(v18 + 84))
  {
    v27 = *(v18 + 64);
  }

  else
  {
    v27 = *(v18 + 64) + 1;
  }

  *(v20 + v27) = *(v21 + v27);
  return a1;
}

uint64_t initializeWithTake for AsyncFlatMapSequence.Iterator(uint64_t a1, uint64_t a2, void *a3)
{
  return initializeWithTake for AsyncFlatMapSequence.Iterator(a1, a2, a3);
}

{
  v6 = a3[4];
  v7 = a3[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8) + 32;
  (*v9)(a1, a2, AssociatedTypeWitness);
  v10 = *(v9 + 32) + 7;
  v11 = ((v10 + a1) & 0xFFFFFFFFFFFFFFF8);
  v12 = ((v10 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v11 = *v12;
  v13 = a3[5];
  v14 = a3[3];
  v15 = swift_getAssociatedTypeWitness();
  v16 = *(v15 - 8);
  v17 = *(v16 + 80);
  v18 = ((v11 + v17 + 16) & ~v17);
  v19 = ((v12 + v17 + 16) & ~v17);
  if ((*(v16 + 48))(v19, 1, v15))
  {
    v20 = *(v16 + 84);
    v21 = *(v16 + 64);
    if (v20)
    {
      v22 = v21;
    }

    else
    {
      v22 = v21 + 1;
    }

    memcpy(v18, v19, v22);
  }

  else
  {
    (*(v16 + 32))(v18, v19, v15);
    v24 = *(v16 + 56);
    v23 = v16 + 56;
    v24(v18, 0, 1, v15);
    v20 = *(v23 + 28);
    v21 = *(v23 + 8);
  }

  if (v20)
  {
    v25 = v21;
  }

  else
  {
    v25 = v21 + 1;
  }

  *(v18 + v25) = *(v19 + v25);
  return a1;
}

uint64_t assignWithTake for AsyncFlatMapSequence.Iterator(uint64_t a1, uint64_t a2, void *a3)
{
  return assignWithTake for AsyncFlatMapSequence.Iterator(a1, a2, a3);
}

{
  v6 = a3[4];
  v7 = a3[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8) + 40;
  (*v9)(a1, a2, AssociatedTypeWitness);
  v10 = *(v9 + 24) + 7;
  v11 = (v10 + a1) & 0xFFFFFFFFFFFFFFF8;
  v12 = ((v10 + a2) & 0xFFFFFFFFFFFFFFF8);
  v13 = *(v11 + 8);
  *v11 = *v12;

  v14 = a3[5];
  v15 = a3[3];
  v16 = swift_getAssociatedTypeWitness();
  v17 = *(v16 - 8);
  v18 = *(v17 + 80);
  v19 = ((v18 + 16 + v11) & ~v18);
  v20 = ((v12 + v18 + 16) & ~v18);
  v21 = *(v17 + 48);
  LODWORD(v11) = v21(v19, 1, v16);
  v22 = v21(v20, 1, v16);
  if (v11)
  {
    if (!v22)
    {
      (*(v17 + 32))(v19, v20, v16);
      (*(v17 + 56))(v19, 0, 1, v16);
      goto LABEL_12;
    }

    v23 = *(v17 + 84);
    v24 = *(v17 + 64);
  }

  else
  {
    if (!v22)
    {
      (*(v17 + 40))(v19, v20, v16);
      goto LABEL_12;
    }

    (*(v17 + 8))(v19, v16);
    v23 = *(v17 + 84);
    v24 = *(v17 + 64);
  }

  if (v23)
  {
    v25 = v24;
  }

  else
  {
    v25 = v24 + 1;
  }

  memcpy(v19, v20, v25);
LABEL_12:
  if (*(v17 + 84))
  {
    v26 = *(v17 + 64);
  }

  else
  {
    v26 = *(v17 + 64) + 1;
  }

  *(v19 + v26) = *(v20 + v26);
  return a1;
}

uint64_t getEnumTagSinglePayload for AsyncFlatMapSequence.Iterator(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  return getEnumTagSinglePayload for AsyncFlatMapSequence.Iterator(a1, a2, a3);
}

{
  v6 = a3[4];
  v7 = a3[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  v11 = a3[5];
  v12 = a3[3];
  v13 = *(swift_getAssociatedTypeWitness() - 8);
  v14 = v13;
  v15 = *(v13 + 84);
  v16 = v15 - 1;
  if (!v15)
  {
    v16 = 0;
  }

  if (v10 <= v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = v10;
  }

  if (v17 <= 0x7FFFFFFF)
  {
    v18 = 0x7FFFFFFF;
  }

  else
  {
    v18 = v17;
  }

  v19 = *(v9 + 64);
  v20 = *(v13 + 80);
  v21 = *(v13 + 64);
  v22 = 1;
  if (!v15)
  {
    v22 = 2;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v18)
  {
    goto LABEL_32;
  }

  v23 = v22 + v21 + ((v20 + ((v19 + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v20);
  v24 = 8 * v23;
  if (v23 > 3)
  {
    goto LABEL_14;
  }

  v26 = ((a2 - v18 + ~(-1 << v24)) >> v24) + 1;
  if (HIWORD(v26))
  {
    v25 = *(a1 + v23);
    if (v25)
    {
      goto LABEL_21;
    }

LABEL_32:
    if (v10 == v18)
    {
      v28 = *(v9 + 48);

      return v28(a1, v10, AssociatedTypeWitness);
    }

    v30 = ((a1 + v19 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((v17 & 0x80000000) == 0)
    {
      v31 = *v30;
      if (v31 >= 0xFFFFFFFF)
      {
        LODWORD(v31) = -1;
      }

      return (v31 + 1);
    }

    if (v15 >= 2)
    {
      v32 = (*(v14 + 48))((v30 + v20 + 16) & ~v20);
      if (v32 >= 2)
      {
        return v32 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  if (v26 > 0xFF)
  {
    v25 = *(a1 + v23);
    if (*(a1 + v23))
    {
      goto LABEL_21;
    }

    goto LABEL_32;
  }

  if (v26 < 2)
  {
    goto LABEL_32;
  }

LABEL_14:
  v25 = *(a1 + v23);
  if (!*(a1 + v23))
  {
    goto LABEL_32;
  }

LABEL_21:
  v27 = (v25 - 1) << v24;
  if (v23 > 3)
  {
    v27 = 0;
  }

  if (v23)
  {
    if (v23 > 3)
    {
      LODWORD(v23) = 4;
    }

    if (v23 > 2)
    {
      if (v23 == 3)
      {
        LODWORD(v23) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v23) = *a1;
      }
    }

    else if (v23 == 1)
    {
      LODWORD(v23) = *a1;
    }

    else
    {
      LODWORD(v23) = *a1;
    }
  }

  return v18 + (v23 | v27) + 1;
}

void storeEnumTagSinglePayload for AsyncFlatMapSequence.Iterator(_BYTE *a1, uint64_t a2, unsigned int a3, void *a4)
{
  storeEnumTagSinglePayload for AsyncFlatMapSequence.Iterator(a1, a2, a3, a4);
}

{
  v8 = a4[4];
  v9 = a4[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 84);
  v13 = a4[5];
  v14 = a4[3];
  v15 = 0;
  v16 = *(swift_getAssociatedTypeWitness() - 8);
  v17 = *(v16 + 84);
  v18 = *(v11 + 64);
  if (v17)
  {
    v19 = v17 - 1;
  }

  else
  {
    v19 = 0;
  }

  v20 = *(v16 + 80);
  v21 = *(v16 + 64);
  if (v12 <= v19)
  {
    v22 = v19;
  }

  else
  {
    v22 = v12;
  }

  if (v22 <= 0x7FFFFFFF)
  {
    v23 = 0x7FFFFFFF;
  }

  else
  {
    v23 = v22;
  }

  if (!v17)
  {
    ++v21;
  }

  v24 = v21 + ((v20 + ((v18 + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v20) + 1;
  if (a3 <= v23)
  {
    goto LABEL_23;
  }

  if (v24 <= 3)
  {
    v25 = ((a3 - v23 + ~(-1 << (8 * v24))) >> (8 * v24)) + 1;
    if (HIWORD(v25))
    {
      v15 = 4;
      if (v23 >= a2)
      {
        goto LABEL_33;
      }

      goto LABEL_24;
    }

    if (v25 < 0x100)
    {
      v26 = 1;
    }

    else
    {
      v26 = 2;
    }

    if (v25 >= 2)
    {
      v15 = v26;
    }

    else
    {
      v15 = 0;
    }

LABEL_23:
    if (v23 >= a2)
    {
      goto LABEL_33;
    }

    goto LABEL_24;
  }

  v15 = 1;
  if (v23 >= a2)
  {
LABEL_33:
    if (v15 > 1)
    {
      if (v15 != 2)
      {
        *&a1[v24] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_40;
      }

      *&a1[v24] = 0;
    }

    else if (v15)
    {
      a1[v24] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_40;
    }

    if (!a2)
    {
      return;
    }

LABEL_40:
    if (v12 == v23)
    {
      v30 = *(v11 + 56);

      v30(a1, a2, v12, AssociatedTypeWitness);
    }

    else
    {
      v31 = (&a1[v18 + 7] & 0xFFFFFFFFFFFFFFF8);
      if ((v22 & 0x80000000) != 0)
      {
        if (v17 >= 2)
        {
          v32 = *(v16 + 56);

          v32((v31 + v20 + 16) & ~v20, (a2 + 1));
        }
      }

      else if ((a2 & 0x80000000) != 0)
      {
        *v31 = a2 & 0x7FFFFFFF;
        v31[1] = 0;
      }

      else
      {
        *v31 = (a2 - 1);
      }
    }

    return;
  }

LABEL_24:
  v27 = ~v23 + a2;
  if (v24 >= 4)
  {
    bzero(a1, v24);
    *a1 = v27;
    v28 = 1;
    if (v15 > 1)
    {
      goto LABEL_58;
    }

    goto LABEL_55;
  }

  v28 = (v27 >> (8 * v24)) + 1;
  if (!v24)
  {
LABEL_54:
    if (v15 > 1)
    {
      goto LABEL_58;
    }

    goto LABEL_55;
  }

  v29 = v27 & ~(-1 << (8 * v24));
  bzero(a1, v24);
  if (v24 == 3)
  {
    *a1 = v29;
    a1[2] = BYTE2(v29);
    goto LABEL_54;
  }

  if (v24 == 2)
  {
    *a1 = v29;
    if (v15 > 1)
    {
LABEL_58:
      if (v15 == 2)
      {
        *&a1[v24] = v28;
      }

      else
      {
        *&a1[v24] = v28;
      }

      return;
    }
  }

  else
  {
    *a1 = v27;
    if (v15 > 1)
    {
      goto LABEL_58;
    }
  }

LABEL_55:
  if (v15)
  {
    a1[v24] = v28;
  }
}

uint64_t dispatch thunk of AsyncIteratorProtocol.next()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 32);
  v10 = (v7 + *v7);
  v8 = swift_task_alloc(v7[1]);
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = implicit closure #2 in implicit closure #1 in AsyncStream.init(_:bufferingPolicy:_:);

  return v10(a1, a2, a3);
}

uint64_t _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 40);
  v16 = (v13 + *v13);
  v14 = swift_task_alloc(v13[1]);
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = protocol witness for AsyncIteratorProtocol.next() in conformance AsyncCompactMapSequence<A, B>.Iterator;

  return v16(a1, a2, a3, a4, a5, a6);
}

uint64_t type metadata completion function for AsyncCompactMapSequence.Iterator(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 16);
  result = swift_getAssociatedTypeWitness();
  if (v4 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for AsyncCompactMapSequence.Iterator(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(a3 + 32);
  v6 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 64);
  v10 = *(v8 + 80);
  if ((v10 & 0x1000F8) != 0 || ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16 > 0x18)
  {
    v12 = *a2;
    *a1 = *a2;
    a1 = (v12 + (((v10 & 0xF8) + 23) & ~(v10 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v8 + 16))(a1, a2, AssociatedTypeWitness);
    v13 = ((a2 + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
    v14 = v13[1];
    v15 = ((a1 + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v15 = *v13;
    v15[1] = v14;
  }

  return a1;
}

uint64_t initializeWithCopy for AsyncCompactMapSequence.Iterator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 32);
  v6 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8) + 16;
  (*v8)(a1, a2, AssociatedTypeWitness);
  v9 = *(v8 + 48) + 7;
  v10 = ((v9 + a1) & 0xFFFFFFFFFFFFFFF8);
  v11 = ((v9 + a2) & 0xFFFFFFFFFFFFFFF8);
  v12 = v11[1];
  *v10 = *v11;
  v10[1] = v12;

  return a1;
}

uint64_t assignWithCopy for AsyncCompactMapSequence.Iterator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 32);
  v6 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8) + 24;
  (*v8)(a1, a2, AssociatedTypeWitness);
  v9 = *(v8 + 40) + 7;
  v10 = ((v9 + a1) & 0xFFFFFFFFFFFFFFF8);
  v11 = ((v9 + a2) & 0xFFFFFFFFFFFFFFF8);
  v12 = v11[1];
  v13 = v10[1];
  *v10 = *v11;
  v10[1] = v12;

  return a1;
}

uint64_t initializeWithTake for AsyncCompactMapSequence.Iterator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 32);
  v6 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8) + 32;
  (*v8)(a1, a2, AssociatedTypeWitness);
  *((*(v8 + 32) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v8 + 32) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for AsyncCompactMapSequence.Iterator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 32);
  v6 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8) + 40;
  (*v8)(a1, a2, AssociatedTypeWitness);
  v9 = *(v8 + 24) + 7;
  v10 = (v9 + a1) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v10 + 8);
  *v10 = *((v9 + a2) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t getEnumTagSinglePayload for AsyncCompactMapSequence.Iterator(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 32);
  v6 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 84);
  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (v10 >= a2)
  {
    goto LABEL_28;
  }

  v12 = ((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v13 = v12 & 0xFFFFFFF8;
  if ((v12 & 0xFFFFFFF8) != 0)
  {
    v14 = 2;
  }

  else
  {
    v14 = a2 - v10 + 1;
  }

  if (v14 >= 0x10000)
  {
    v15 = 4;
  }

  else
  {
    v15 = 2;
  }

  if (v14 < 0x100)
  {
    v15 = 1;
  }

  if (v14 >= 2)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v17 = *(a1 + v12);
      if (!v17)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v17 = *(a1 + v12);
      if (!v17)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v16 || (v17 = *(a1 + v12)) == 0)
  {
LABEL_28:
    if (v9 < 0x7FFFFFFF)
    {
      v21 = *((a1 + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v21 >= 0xFFFFFFFF)
      {
        LODWORD(v21) = -1;
      }

      return (v21 + 1);
    }

    else
    {
      v20 = *(v8 + 48);

      return v20(a1);
    }
  }

  v19 = v17 - 1;
  if (v13)
  {
    v19 = 0;
    LODWORD(v13) = *a1;
  }

  return v10 + (v13 | v19) + 1;
}

void storeEnumTagSinglePayload for AsyncCompactMapSequence.Iterator(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 32);
  v8 = *(a4 + 16);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 64);
  if (v10 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  v13 = ((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v11 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v14 = a3 - v12 + 1;
  }

  else
  {
    v14 = 2;
  }

  if (v14 >= 0x10000)
  {
    v15 = 4;
  }

  else
  {
    v15 = 2;
  }

  if (v14 < 0x100)
  {
    v15 = 1;
  }

  if (v14 >= 2)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (v12 < a3)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (a2 > v12)
  {
    if (((v11 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v18 = a2 - v12;
    }

    else
    {
      v18 = 1;
    }

    if (((v11 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v19 = ~v12 + a2;
      bzero(a1, v13);
      *a1 = v19;
    }

    if (v17 > 1)
    {
      if (v17 == 2)
      {
        *(a1 + v13) = v18;
      }

      else
      {
        *(a1 + v13) = v18;
      }
    }

    else if (v17)
    {
      *(a1 + v13) = v18;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *(a1 + v13) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    }

    *(a1 + v13) = 0;
  }

  else if (v17)
  {
    *(a1 + v13) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return;
  }

LABEL_36:
  if (v10 < 0x7FFFFFFF)
  {
    v21 = ((a1 + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      *v21 = a2 & 0x7FFFFFFF;
      v21[1] = 0;
    }

    else
    {
      *v21 = (a2 - 1);
    }
  }

  else
  {
    v20 = *(v9 + 56);

    v20(a1, a2);
  }
}

uint64_t *initializeBufferWithCopyOfBuffer for AsyncDropFirstSequence(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    *((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8) = *((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  return v3;
}

uint64_t initializeWithCopy for AsyncDropFirstSequence(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  *((*(v5 + 48) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 48) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithCopy for AsyncDropFirstSequence(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  *((*(v5 + 40) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 40) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t initializeWithTake for AsyncDropFirstSequence(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  *((*(v5 + 32) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 32) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for AsyncDropFirstSequence(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  *((*(v5 + 24) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 24) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t getEnumTagSinglePayload for AsyncDropFirstSequence(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))();
  }

  v6 = ((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v7 = a2 - v5;
  v8 = v6 & 0xFFFFFFF8;
  if ((v6 & 0xFFFFFFF8) != 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = v7 + 1;
  }

  if (v9 >= 0x10000)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  if (v9 < 0x100)
  {
    v10 = 1;
  }

  if (v9 >= 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v11 || (v12 = *(a1 + v6)) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))();
    }

    return 0;
  }

  v13 = v12 - 1;
  if (v8)
  {
    v13 = 0;
    LODWORD(v8) = *a1;
  }

  return v5 + (v8 | v13) + 1;
}

unsigned int *storeEnumTagSinglePayload for AsyncDropFirstSequence(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v6 >= a3)
  {
    v11 = 0;
    v12 = a2 - v6;
    if (a2 <= v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = a3 - v6;
    if (((*(v5 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = 2;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = a2 - v6;
    if (a2 <= v6)
    {
LABEL_14:
      if (v11 > 1)
      {
        if (v11 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_30;
        }

        *(result + v7) = 0;
      }

      else if (v11)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_30;
      }

      if (!a2)
      {
        return result;
      }

LABEL_30:
      v16 = *(v5 + 56);

      return v16();
    }
  }

  if (((*(v5 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (((*(v5 + 64) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v14 = ~v6 + a2;
    v15 = result;
    bzero(result, v7);
    result = v15;
    *v15 = v14;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      *(result + v7) = v13;
    }

    else
    {
      *(result + v7) = v13;
    }
  }

  else if (v11)
  {
    *(result + v7) = v13;
  }

  return result;
}

uint64_t type metadata completion function for AsyncDropFirstSequence.Iterator(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  result = swift_getAssociatedTypeWitness();
  if (v4 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for AsyncDropFirstSequence.Iterator(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 64);
  v11 = *(v9 + 80);
  if ((v11 & 0x1000F8) != 0 || ((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18)
  {
    v13 = *a2;
    *a1 = *a2;
    a1 = (v13 + (((v11 & 0xF8) + 23) & ~(v11 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v9 + 16))(a1, a2, AssociatedTypeWitness);
    *((a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8) = *((a2 + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  return a1;
}

uint64_t destroy for AsyncDropFirstSequence.Iterator(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 8);

  return v6(a1, AssociatedTypeWitness);
}

uint64_t initializeWithCopy for AsyncDropFirstSequence.Iterator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8) + 16;
  (*v9)(a1, a2, AssociatedTypeWitness);
  *((*(v9 + 48) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v9 + 48) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithCopy for AsyncDropFirstSequence.Iterator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8) + 24;
  (*v9)(a1, a2, AssociatedTypeWitness);
  *((*(v9 + 40) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v9 + 40) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t initializeWithTake for AsyncDropFirstSequence.Iterator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8) + 32;
  (*v9)(a1, a2, AssociatedTypeWitness);
  *((*(v9 + 32) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v9 + 32) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for AsyncDropFirstSequence.Iterator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8) + 40;
  (*v9)(a1, a2, AssociatedTypeWitness);
  *((*(v9 + 24) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v9 + 24) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t getEnumTagSinglePayload for AsyncDropFirstSequence.Iterator(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v10 >= a2)
  {
LABEL_25:
    v19 = *(v9 + 48);

    return v19(a1);
  }

  v11 = ((*(*(AssociatedTypeWitness - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v12 = v11 & 0xFFFFFFF8;
  if ((v11 & 0xFFFFFFF8) != 0)
  {
    v13 = 2;
  }

  else
  {
    v13 = a2 - v10 + 1;
  }

  if (v13 >= 0x10000)
  {
    v14 = 4;
  }

  else
  {
    v14 = 2;
  }

  if (v13 < 0x100)
  {
    v14 = 1;
  }

  if (v13 >= 2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *(a1 + v11);
      if (!v16)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v16 = *(a1 + v11);
      if (!v16)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v15 || (v16 = *(a1 + v11)) == 0)
  {
LABEL_24:
    if (v10)
    {
      goto LABEL_25;
    }

    return 0;
  }

  v17 = v16 - 1;
  if (v12)
  {
    v17 = 0;
    LODWORD(v12) = *a1;
  }

  return v10 + (v12 | v17) + 1;
}

void storeEnumTagSinglePayload for AsyncDropFirstSequence.Iterator(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = *(v9 + 84);
  v11 = ((*(v9 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v10 >= a3)
  {
    v14 = 0;
    v15 = a2 - v10;
    if (a2 <= v10)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (((*(v9 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v12 = a3 - v10 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = a2 - v10;
    if (a2 <= v10)
    {
LABEL_14:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *(a1 + v11) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_30;
        }

        *(a1 + v11) = 0;
      }

      else if (v14)
      {
        *(a1 + v11) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_30;
      }

      if (!a2)
      {
        return;
      }

LABEL_30:
      v18 = *(v9 + 56);

      v18(a1, a2);
      return;
    }
  }

  if (((*(v9 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  if (((*(v9 + 64) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v17 = ~v10 + a2;
    bzero(a1, v11);
    *a1 = v17;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      *(a1 + v11) = v16;
    }

    else
    {
      *(a1 + v11) = v16;
    }
  }

  else if (v14)
  {
    *(a1 + v11) = v16;
  }
}

uint64_t type metadata completion function for AsyncPrefixWhileSequence.Iterator(uint64_t a1)
{
  return type metadata completion function for AsyncPrefixWhileSequence.Iterator(a1);
}

{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  result = swift_getAssociatedTypeWitness();
  if (v4 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for AsyncPrefixWhileSequence.Iterator(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  return initializeBufferWithCopyOfBuffer for AsyncPrefixWhileSequence.Iterator(a1, a2, a3);
}

{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 80);
  v11 = *(v9 + 64) + 7;
  if (v10 > 7 || (*(v9 + 80) & 0x100000) != 0 || ((v11 + ((v10 + 1) & ~v10)) & 0xFFFFFFFFFFFFFFF8) + 16 > 0x18)
  {
    v14 = *a2;
    *a1 = *a2;
    a1 = (v14 + ((v10 & 0xF8 ^ 0x1F8) & (v10 + 16)));
  }

  else
  {
    v15 = ~v10;
    *a1 = *a2;
    v16 = a1 + v10;
    v17 = a2 + v10;
    v18 = (v16 + 1) & v15;
    v19 = (v17 + 1) & v15;
    (*(v9 + 16))(v18, v19, AssociatedTypeWitness);
    v20 = ((v11 + v19) & 0xFFFFFFFFFFFFFFF8);
    v21 = v20[1];
    v22 = ((v11 + v18) & 0xFFFFFFFFFFFFFFF8);
    *v22 = *v20;
    v22[1] = v21;
  }

  return a1;
}

uint64_t destroy for AsyncPrefixWhileSequence.Iterator(uint64_t a1, uint64_t a2)
{
  return destroy for AsyncPrefixWhileSequence.Iterator(a1, a2);
}

{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = v6 + 8;
  v8 = (a1 + *(v6 + 80) + 1) & ~*(v6 + 80);
  (*(v6 + 8))(v8, AssociatedTypeWitness);
  v9 = *(((*(v7 + 56) + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
}

_BYTE *initializeWithCopy for AsyncPrefixWhileSequence.Iterator(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  return initializeWithCopy for AsyncPrefixWhileSequence.Iterator(a1, a2, a3);
}

{
  *a1 = *a2;
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = v9 + 16;
  v11 = *(v9 + 80);
  v12 = &a1[v11 + 1] & ~v11;
  v13 = &a2[v11 + 1] & ~v11;
  (*(v9 + 16))(v12, v13, AssociatedTypeWitness);
  v14 = *(v10 + 48) + 7;
  v15 = ((v14 + v12) & 0xFFFFFFFFFFFFFFF8);
  v16 = ((v14 + v13) & 0xFFFFFFFFFFFFFFF8);
  v17 = v16[1];
  *v15 = *v16;
  v15[1] = v17;

  return a1;
}

_BYTE *assignWithCopy for AsyncPrefixWhileSequence.Iterator(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  return assignWithCopy for AsyncPrefixWhileSequence.Iterator(a1, a2, a3);
}

{
  *a1 = *a2;
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = v9 + 24;
  v11 = *(v9 + 80);
  v12 = &a1[v11 + 1] & ~v11;
  v13 = &a2[v11 + 1] & ~v11;
  (*(v9 + 24))(v12, v13, AssociatedTypeWitness);
  v14 = *(v10 + 40) + 7;
  v15 = ((v14 + v12) & 0xFFFFFFFFFFFFFFF8);
  v16 = ((v14 + v13) & 0xFFFFFFFFFFFFFFF8);
  v17 = v16[1];
  v18 = v15[1];
  *v15 = *v16;
  v15[1] = v17;

  return a1;
}

_BYTE *initializeWithTake for AsyncPrefixWhileSequence.Iterator(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  return initializeWithTake for AsyncPrefixWhileSequence.Iterator(a1, a2, a3);
}

{
  *a1 = *a2;
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = v9 + 32;
  v11 = *(v9 + 80);
  v12 = &a1[v11 + 1] & ~v11;
  v13 = &a2[v11 + 1] & ~v11;
  (*(v9 + 32))(v12, v13, AssociatedTypeWitness);
  *((*(v10 + 32) + 7 + v12) & 0xFFFFFFFFFFFFFFF8) = *((*(v10 + 32) + 7 + v13) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

_BYTE *assignWithTake for AsyncPrefixWhileSequence.Iterator(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  return assignWithTake for AsyncPrefixWhileSequence.Iterator(a1, a2, a3);
}

{
  *a1 = *a2;
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = v9 + 40;
  v11 = *(v9 + 80);
  v12 = &a1[v11 + 1] & ~v11;
  v13 = &a2[v11 + 1] & ~v11;
  (*(v9 + 40))(v12, v13, AssociatedTypeWitness);
  v14 = *(v10 + 24) + 7;
  v15 = (v14 + v12) & 0xFFFFFFFFFFFFFFF8;
  v16 = *(v15 + 8);
  *v15 = *((v14 + v13) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t getEnumTagSinglePayload for AsyncPrefixWhileSequence.Iterator(int *a1, unsigned int a2, uint64_t a3)
{
  return getEnumTagSinglePayload for AsyncPrefixWhileSequence.Iterator(a1, a2, a3);
}

{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = *(v8 + 84);
  }

  v12 = *(v8 + 80);
  v13 = *(v8 + 64);
  if (!a2)
  {
    return 0;
  }

  v14 = v13 + 7;
  if (v11 >= a2)
  {
    goto LABEL_27;
  }

  v15 = ((v14 + ((v12 + 1) & ~v12)) & 0xFFFFFFFFFFFFFFF8) + 16;
  v16 = v15 & 0xFFFFFFF8;
  if ((v15 & 0xFFFFFFF8) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = a2 - v11 + 1;
  }

  if (v17 >= 0x10000)
  {
    v18 = 4;
  }

  else
  {
    v18 = 2;
  }

  if (v17 < 0x100)
  {
    v18 = 1;
  }

  if (v17 >= 2)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_27;
      }
    }

LABEL_24:
    v22 = v20 - 1;
    if (v16)
    {
      v22 = 0;
      v23 = *a1;
    }

    else
    {
      v23 = 0;
    }

    return v11 + (v23 | v22) + 1;
  }

  if (v19)
  {
    v20 = *(a1 + v15);
    if (v20)
    {
      goto LABEL_24;
    }
  }

LABEL_27:
  v24 = (a1 + v12 + 1) & ~v12;
  if (v10 < 0x7FFFFFFF)
  {
    v26 = *((v14 + v24) & 0xFFFFFFFFFFFFFFF8);
    if (v26 >= 0xFFFFFFFF)
    {
      LODWORD(v26) = -1;
    }

    return (v26 + 1);
  }

  else
  {
    v25 = *(v9 + 48);

    return v25(v24);
  }
}

void storeEnumTagSinglePayload for AsyncPrefixWhileSequence.Iterator(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  storeEnumTagSinglePayload for AsyncPrefixWhileSequence.Iterator(a1, a2, a3, a4);
}

{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  v13 = *(v9 + 64) + 7;
  v14 = ((v13 + ((v11 + 1) & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v12 >= a3)
  {
    v17 = 0;
    v18 = a2 - v12;
    if (a2 <= v12)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (((v13 + ((v11 + 1) & ~v11)) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = a3 - v12 + 1;
    }

    else
    {
      v15 = 2;
    }

    if (v15 >= 0x10000)
    {
      v16 = 4;
    }

    else
    {
      v16 = 2;
    }

    if (v15 < 0x100)
    {
      v16 = 1;
    }

    if (v15 >= 2)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v18 = a2 - v12;
    if (a2 <= v12)
    {
LABEL_17:
      if (v17 > 1)
      {
        if (v17 != 2)
        {
          *(a1 + v14) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_33;
        }

        *(a1 + v14) = 0;
      }

      else if (v17)
      {
        *(a1 + v14) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return;
      }

LABEL_33:
      v21 = (a1 + v11 + 1) & ~v11;
      if (v10 < 0x7FFFFFFF)
      {
        v23 = ((v13 + v21) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v23 = a2 & 0x7FFFFFFF;
          v23[1] = 0;
        }

        else
        {
          *v23 = (a2 - 1);
        }
      }

      else
      {
        v22 = *(v9 + 56);

        v22(v21, a2);
      }

      return;
    }
  }

  if (((v13 + ((v11 + 1) & ~v11)) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v19 = v18;
  }

  else
  {
    v19 = 1;
  }

  if (((v13 + ((v11 + 1) & ~v11)) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v20 = ~v12 + a2;
    bzero(a1, v14);
    *a1 = v20;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      *(a1 + v14) = v19;
    }

    else
    {
      *(a1 + v14) = v19;
    }
  }

  else if (v17)
  {
    *(a1 + v14) = v19;
  }
}