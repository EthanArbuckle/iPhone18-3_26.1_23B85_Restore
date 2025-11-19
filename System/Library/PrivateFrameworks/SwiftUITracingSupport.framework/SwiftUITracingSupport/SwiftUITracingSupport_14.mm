uint64_t specialized HeterogeneousBuffer.insert<A>(_:)(uint64_t a1, __int16 a2)
{
  if (*(v2 + 16))
  {
    v5 = 0;
    goto LABEL_8;
  }

  v6 = *v2;
  v7 = *(v2 + 8);
  v8 = *(v2 + 20);
  v5 = v7 - *v2;
  if (!*v2)
  {
    v5 = 0;
  }

  if (__OFSUB__(v5, v8))
  {
    goto LABEL_35;
  }

  if (v5 - v8 > 23)
  {
    v11 = 0;
    goto LABEL_13;
  }

  if (v5 + 0x4000000000000000 >= 0)
  {
LABEL_8:
    v9 = 2 * v5;
    if (v9 <= 64)
    {
      v10 = 64;
    }

    else
    {
      v10 = v9;
    }

    HeterogeneousBuffer.reserveCapacity(bytes:)(v10);
    v6 = *v2;
    v7 = *(v2 + 8);
    v11 = *(v2 + 16);
    v8 = *(v2 + 20);
LABEL_13:
    v12 = *(v2 + 24);
    *(v2 + 17);
    result = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV8PrefetchV_Ttgq5Tm(v6, v7, v11, v12);
    if (v8 != result || v12 != HIDWORD(result))
    {
      goto LABEL_38;
    }

    if (v11)
    {
      goto LABEL_36;
    }

    if (v6)
    {
      v15 = v7 - v6;
    }

    else
    {
      v15 = 0;
    }

    if (v15 < v8)
    {
      __break(1u);
    }

    else
    {
      v16 = (v6 + v8);
      if (!v6)
      {
        v16 = 0;
      }

      *v16 = &type metadata for Event.Prefetch;
      if (!v6)
      {
        goto LABEL_37;
      }

      if (v7 - v6 >= v8 + 8)
      {
        v17 = v6 + v8 + 8;
        *v17 = a1;
        *(v17 + 8) = a2 & 1;
        *(v17 + 9) = HIBYTE(a2) & 1;
        if (v8 <= 0xFFFFFFE7)
        {
          if (v12 != -1)
          {
            *(v2 + 20) = v8 + 24;
            *(v2 + 24) = v12 + 1;
            return result;
          }

          goto LABEL_33;
        }

LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }
    }

    __break(1u);
    goto LABEL_32;
  }

LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  _StringGuts.grow(_:)(19);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport5EventV8PrefetchVmMd, &_s21SwiftUITracingSupport5EventV8PrefetchVmMR);
  v18 = String.init<A>(describing:)();
  MEMORY[0x26D69CDB0](v18);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized HeterogeneousBuffer.insert<A>(_:)(int a1)
{
  if (*(v1 + 16))
  {
    v3 = 0;
    goto LABEL_8;
  }

  v4 = *v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 20);
  v3 = v5 - *v1;
  if (!*v1)
  {
    v3 = 0;
  }

  if (__OFSUB__(v3, v6))
  {
    goto LABEL_35;
  }

  if (v3 - v6 > 15)
  {
    v9 = 0;
    goto LABEL_13;
  }

  if (v3 + 0x4000000000000000 >= 0)
  {
LABEL_8:
    v7 = 2 * v3;
    if (v7 <= 64)
    {
      v8 = 64;
    }

    else
    {
      v8 = v7;
    }

    HeterogeneousBuffer.reserveCapacity(bytes:)(v8);
    v4 = *v1;
    v5 = *(v1 + 8);
    v9 = *(v1 + 16);
    v6 = *(v1 + 20);
LABEL_13:
    v10 = *(v1 + 24);
    *(v1 + 17);
    result = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v4, v5, v9, v10);
    if (v6 != result || v10 != HIDWORD(result))
    {
      goto LABEL_38;
    }

    if (v9)
    {
      goto LABEL_36;
    }

    if (v4)
    {
      v13 = v5 - v4;
    }

    else
    {
      v13 = 0;
    }

    if (v13 < v6)
    {
      __break(1u);
    }

    else
    {
      v14 = (v4 + v6);
      if (!v4)
      {
        v14 = 0;
      }

      *v14 = &type metadata for Event.AttributeStack;
      if (!v4)
      {
        goto LABEL_37;
      }

      if (v5 - v4 >= v6 + 8)
      {
        *(v4 + v6 + 8) = a1;
        if (v6 <= 0xFFFFFFEF)
        {
          if (v10 != -1)
          {
            *(v1 + 20) = v6 + 16;
            *(v1 + 24) = v10 + 1;
            return result;
          }

          goto LABEL_33;
        }

LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }
    }

    __break(1u);
    goto LABEL_32;
  }

LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  _StringGuts.grow(_:)(19);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport5EventV14AttributeStackVmMd, &_s21SwiftUITracingSupport5EventV14AttributeStackVmMR);
  v15 = String.init<A>(describing:)();
  MEMORY[0x26D69CDB0](v15);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized HeterogeneousBuffer.insert<A>(_:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + 16))
  {
    v9 = 80;
LABEL_13:
    HeterogeneousBuffer.reserveCapacity(bytes:)(v9);
    v10 = *v4;
    v11 = *(v4 + 8);
    v15 = *(v4 + 16);
    v12 = *(v4 + 20);
    goto LABEL_15;
  }

  v10 = *v4;
  v11 = *(v4 + 8);
  v12 = *(v4 + 20);
  v13 = v11 - *v4;
  if (!*v4)
  {
    v13 = 0;
  }

  if (__OFSUB__(v13, v12))
  {
    goto LABEL_37;
  }

  if (v13 - v12 > 39)
  {
    v15 = 0;
LABEL_15:
    v16 = *(v4 + 24);
    *(v4 + 17);
    result = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV8AbstractV_Ttg5(v10, v11, v15, v16);
    if (v12 != result || v16 != HIDWORD(result))
    {
      goto LABEL_40;
    }

    if (v15)
    {
      goto LABEL_38;
    }

    if (v10)
    {
      v19 = v11 - v10;
    }

    else
    {
      v19 = 0;
    }

    if (v19 < v12)
    {
      __break(1u);
    }

    else
    {
      v20 = (v10 + v12);
      if (!v10)
      {
        v20 = 0;
      }

      *v20 = &type metadata for Event.Abstract;
      if (!v10)
      {
        goto LABEL_39;
      }

      if (v11 - v10 >= v12 + 8)
      {
        v21 = v10 + v12 + 8;
        *v21 = a1;
        *(v21 + 8) = a2;
        *(v21 + 16) = a3;
        *(v21 + 24) = a4;
        if (v12 <= 0xFFFFFFD7)
        {
          if (v16 != -1)
          {
            *(v4 + 20) = v12 + 40;
            *(v4 + 24) = v16 + 1;
            return result;
          }

          goto LABEL_35;
        }

LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }
    }

    __break(1u);
    goto LABEL_34;
  }

  if (v13 + 0x4000000000000000 >= 0)
  {
    v14 = 2 * v13;
    if (2 * v13 <= 80)
    {
      v14 = 80;
    }

    if (v13 <= 32)
    {
      v9 = 80;
    }

    else
    {
      v9 = v14;
    }

    goto LABEL_13;
  }

LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  _StringGuts.grow(_:)(19);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport5EventV8AbstractVmMd, &_s21SwiftUITracingSupport5EventV8AbstractVmMR);
  v22 = String.init<A>(describing:)();
  MEMORY[0x26D69CDB0](v22);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized HeterogeneousBuffer.insert<A>(_:)(__int16 a1)
{
  if (*(v1 + 16))
  {
    v3 = 0;
    goto LABEL_8;
  }

  v4 = *v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 20);
  v3 = v5 - *v1;
  if (!*v1)
  {
    v3 = 0;
  }

  if (__OFSUB__(v3, v6))
  {
    goto LABEL_35;
  }

  if (v3 - v6 > 15)
  {
    v9 = 0;
    goto LABEL_13;
  }

  if (v3 + 0x4000000000000000 >= 0)
  {
LABEL_8:
    v7 = 2 * v3;
    if (v7 <= 64)
    {
      v8 = 64;
    }

    else
    {
      v8 = v7;
    }

    HeterogeneousBuffer.reserveCapacity(bytes:)(v8);
    v4 = *v1;
    v5 = *(v1 + 8);
    v9 = *(v1 + 16);
    v6 = *(v1 + 20);
LABEL_13:
    v10 = *(v1 + 24);
    *(v1 + 17);
    result = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV5GroupV_Ttg5Tm(v4, v5, v9, v10);
    if (v6 != result || v10 != HIDWORD(result))
    {
      goto LABEL_38;
    }

    if (v9)
    {
      goto LABEL_36;
    }

    if (v4)
    {
      v13 = v5 - v4;
    }

    else
    {
      v13 = 0;
    }

    if (v13 < v6)
    {
      __break(1u);
    }

    else
    {
      v14 = (v4 + v6);
      if (!v4)
      {
        v14 = 0;
      }

      *v14 = &type metadata for Event.Group;
      if (!v4)
      {
        goto LABEL_37;
      }

      if (v5 - v4 >= v6 + 8)
      {
        *(v4 + v6 + 8) = a1;
        if (v6 <= 0xFFFFFFEF)
        {
          if (v10 != -1)
          {
            *(v1 + 20) = v6 + 16;
            *(v1 + 24) = v10 + 1;
            return result;
          }

          goto LABEL_33;
        }

LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }
    }

    __break(1u);
    goto LABEL_32;
  }

LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  _StringGuts.grow(_:)(19);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport5EventV5GroupVmMd, &_s21SwiftUITracingSupport5EventV5GroupVmMR);
  v15 = String.init<A>(describing:)();
  MEMORY[0x26D69CDB0](v15);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

BOOL Event.has(noun:)(uint64_t a1)
{
  v2 = *(v1 + 28);
  *(v1 + 25);
  return HeterogeneousBuffer.type(at:)(0, *(v1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32)) == a1;
}

BOOL Event.has(verb:)(uint64_t a1)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v6 = *(v1 + 28);
  v7 = *(v1 + 32);
  v5 = *(v1 + 24);
  *(v1 + 25);
  v8 = HeterogeneousBuffer.index(after:)(0, v3, v4, v5, v7);
  return HeterogeneousBuffer.type(at:)(v8, v3, v4, v5, v7) == a1;
}

__n128 Event.value.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 28);
  *(v1 + 25);
  v4 = specialized HeterogeneousBuffer.valuePointer<A>(for:)(0, *(v1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32));
  v5 = v4[1];
  *a1 = *v4;
  *(a1 + 16) = v5;
  result = v4[2];
  *(a1 + 32) = result;
  *(a1 + 45) = *(&v4[2].Description + 5);
  return result;
}

__n128 key path getter for Event.value : Event@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 28);
  *(a1 + 25);
  v4 = specialized HeterogeneousBuffer.valuePointer<A>(for:)(0, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32));
  v5 = v4[1];
  *a2 = *v4;
  *(a2 + 16) = v5;
  result = v4[2];
  *(a2 + 32) = result;
  *(a2 + 45) = *(&v4[2].Description + 5);
  return result;
}

void (*Event.value.read(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x35uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + 28);
  *(v1 + 25);
  v6 = specialized HeterogeneousBuffer.valuePointer<A>(for:)(0, *(v1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32));
  v8 = v6[1];
  v7 = v6[2];
  v9 = *v6;
  *(v4 + 45) = *(&v6[2].Description + 5);
  *(v4 + 16) = v8;
  *(v4 + 32) = v7;
  *v4 = v9;
  return Snapshot.subscript.read;
}

__n128 key path setter for Event.value : Event(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 28);
  *(a2 + 25);
  v4 = specialized HeterogeneousBuffer.valuePointer<A>(for:)(0, *(a2 + 8), *(a2 + 16), *(a2 + 24), *(a2 + 32));
  v5 = *(a1 + 16);
  *v4 = *a1;
  v4[1] = v5;
  result = *(a1 + 32);
  v4[2] = result;
  *(&v4[2].Description + 5) = *(a1 + 45);
  return result;
}

uint64_t (*specialized HeterogeneousBuffer.subscript.read(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5, unsigned int a6))(void)
{
  specialized HeterogeneousBuffer.valuePointer<A>(for:)(a2, a3, a4, a5 & 1, a6);
  return EventTreeStats.count.modify;
}

{
  specialized HeterogeneousBuffer.valuePointer<A>(for:)(a2, a3, a4, a5 & 1, a6);
  return EventTreeStats.count.modify;
}

{
  specialized HeterogeneousBuffer.valuePointer<A>(for:)(a2, a3, a4, a5 & 1, a6);
  return EventTreeStats.count.modify;
}

uint64_t (*specialized HeterogeneousBuffer.subscript.modify(uint64_t a1, unint64_t a2))(void)
{
  v3 = *(v2 + 20);
  *(v2 + 17);
  specialized HeterogeneousBuffer.valuePointer<A>(for:)(a2, *v2, *(v2 + 8), *(v2 + 16), *(v2 + 24));
  return EventTreeStats.count.modify;
}

{
  v3 = *(v2 + 20);
  *(v2 + 17);
  specialized HeterogeneousBuffer.valuePointer<A>(for:)(a2, *v2, *(v2 + 8), *(v2 + 16), *(v2 + 24));
  return EventTreeStats.count.modify;
}

{
  v3 = *(v2 + 20);
  *(v2 + 17);
  specialized HeterogeneousBuffer.valuePointer<A>(for:)(a2, *v2, *(v2 + 8), *(v2 + 16), *(v2 + 24));
  return EventTreeStats.count.modify;
}

{
  v3 = *(v2 + 20);
  *(v2 + 17);
  specialized HeterogeneousBuffer.valuePointer<A>(for:)(a2, *v2, *(v2 + 8), *(v2 + 16), *(v2 + 24));
  return EventTreeStats.count.modify;
}

{
  v3 = *(v2 + 20);
  *(v2 + 17);
  specialized HeterogeneousBuffer.valuePointer<A>(for:)(a2, *v2, *(v2 + 8), *(v2 + 16), *(v2 + 24));
  return EventTreeStats.count.modify;
}

{
  v3 = *(v2 + 20);
  *(v2 + 17);
  specialized HeterogeneousBuffer.valuePointer<A>(for:)(a2, *v2, *(v2 + 8), *(v2 + 16), *(v2 + 24));
  return EventTreeStats.count.modify;
}

{
  v3 = *(v2 + 20);
  *(v2 + 17);
  specialized HeterogeneousBuffer.valuePointer<A>(for:)(a2, *v2, *(v2 + 8), *(v2 + 16), *(v2 + 24));
  return EventTreeStats.count.modify;
}

{
  v3 = *(v2 + 20);
  *(v2 + 17);
  specialized HeterogeneousBuffer.valuePointer<A>(for:)(a2, *v2, *(v2 + 8), *(v2 + 16), *(v2 + 24));
  return EventTreeStats.count.modify;
}

{
  v3 = *(v2 + 20);
  *(v2 + 17);
  specialized HeterogeneousBuffer.valuePointer<A>(for:)(a2, *v2, *(v2 + 8), *(v2 + 16), *(v2 + 24));
  return EventTreeStats.count.modify;
}

__n128 Event.value.setter(uint64_t a1)
{
  v3 = *(v1 + 28);
  *(v1 + 25);
  v4 = specialized HeterogeneousBuffer.valuePointer<A>(for:)(0, *(v1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32));
  v5 = *(a1 + 16);
  *v4 = *a1;
  v4[1] = v5;
  result = *(a1 + 32);
  v4[2] = result;
  *(&v4[2].Description + 5) = *(a1 + 45);
  return result;
}

ValueMetadata *Event.hasWeight.getter()
{
  v1 = *(v0 + 28);
  *(v0 + 25);
  result = specialized HeterogeneousBuffer.valuePointerAs<A>(for:)(0, *(v0 + 8), *(v0 + 16), *(v0 + 24), *(v0 + 32));
  if (result)
  {
    return (BYTE4(result->Kind) << 32 != 0x200000000);
  }

  return result;
}

unint64_t Event.hasStack.getter()
{
  v2 = *(v0 + 8);
  v1 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 25);
  v6 = *(v0 + 28);
  v5 = *(v0 + 32);
  result = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v2, v1, v3, v5);
  v8 = 0;
  v9 = v6 == result && v5 == HIDWORD(result);
  v10 = v9;
  if (v9)
  {
    return v8 | (v10 << 32);
  }

  if (HIDWORD(result) >= v5)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v2)
  {
    v8 = *(v2 + result + 8);
    return v8 | (v10 << 32);
  }

LABEL_15:
  __break(1u);
  return result;
}

ValueMetadata *key path getter for Event.stack : Event@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *(a1 + 28);
  *(a1 + 25);
  result = specialized HeterogeneousBuffer.valuePointer<A>(for:)(0, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32));
  *a2 = result->Kind;
  return result;
}

uint64_t (*Event.stack.read())(void)
{
  v1 = *(v0 + 28);
  *(v0 + 25);
  Kind = specialized HeterogeneousBuffer.valuePointer<A>(for:)(0, *(v0 + 8), *(v0 + 16), *(v0 + 24), *(v0 + 32))->Kind;
  return EventTreeStats.count.modify;
}

uint64_t (*Event.stack.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = specialized HeterogeneousBuffer.subscript.modify(v2, 0);
  return UnsafeTree.storage.modify;
}

uint64_t Event.stack.getter(uint64_t (*a1)(void, void, void, unint64_t, void))
{
  v2 = 256;
  if (!*(v1 + 25))
  {
    v2 = 0;
  }

  return *a1(0, *(v1 + 8), *(v1 + 16), v2 | (*(v1 + 28) << 32) | *(v1 + 24), *(v1 + 32));
}

ValueMetadata *key path getter for Event.graph : Event@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *(a1 + 28);
  *(a1 + 25);
  result = specialized HeterogeneousBuffer.valuePointer<A>(for:)(0, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32));
  *a2 = result->Kind;
  return result;
}

uint64_t (*Event.graph.read())(void)
{
  v1 = *(v0 + 28);
  *(v0 + 25);
  Kind = specialized HeterogeneousBuffer.valuePointer<A>(for:)(0, *(v0 + 8), *(v0 + 16), *(v0 + 24), *(v0 + 32))->Kind;
  return EventTreeStats.count.modify;
}

_DWORD *key path setter for Event.stack : Event(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void, void, unint64_t, void))
{
  v5 = *a1;
  v6 = 256;
  if (!*(a2 + 25))
  {
    v6 = 0;
  }

  result = a5(0, *(a2 + 8), *(a2 + 16), v6 | (*(a2 + 28) << 32) | *(a2 + 24), *(a2 + 32));
  *result = v5;
  return result;
}

uint64_t (*Event.graph.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = specialized HeterogeneousBuffer.subscript.modify(v2, 0);
  return UnsafeTree.storage.modify;
}

_DWORD *Event.stack.setter(int a1, uint64_t (*a2)(void, void, void, unint64_t, void))
{
  v4 = 256;
  if (!*(v2 + 25))
  {
    v4 = 0;
  }

  result = a2(0, *(v2 + 8), *(v2 + 16), v4 | (*(v2 + 28) << 32) | *(v2 + 24), *(v2 + 32));
  *result = a1;
  return result;
}

unint64_t Event.hasGraph.getter(uint64_t (*a1)(void, void, void, unint64_t, void))
{
  v2 = 256;
  if (!*(v1 + 25))
  {
    v2 = 0;
  }

  v3 = a1(0, *(v1 + 8), *(v1 + 16), v2 | (*(v1 + 28) << 32) | *(v1 + 24), *(v1 + 32));
  if (v3)
  {
    v4 = *v3;
  }

  else
  {
    v4 = 0;
  }

  return v4 | ((v3 == 0) << 32);
}

unint64_t Event.hasGroup.getter()
{
  v2 = *(v0 + 8);
  v1 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 25);
  v6 = *(v0 + 28);
  v5 = *(v0 + 32);
  result = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV5GroupV_Ttg5Tm(v2, v1, v3, v5);
  v8 = v6 == result && v5 == HIDWORD(result);
  v9 = v8;
  if (v8)
  {
    v10 = 0;
    return v10 | (v9 << 16);
  }

  if (HIDWORD(result) >= v5)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v2)
  {
    v10 = *(v2 + result + 8);
    return v10 | (v9 << 16);
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t Event.abstract.getter()
{
  v1 = *(v0 + 28);
  *(v0 + 25);
  v2 = specialized HeterogeneousBuffer.valuePointer<A>(for:)(0, *(v0 + 8), *(v0 + 16), *(v0 + 24), *(v0 + 32));
  Description = v2->Description;
  Kind = v2[1].Kind;
  v5 = v2[1].Description;
  return LODWORD(v2->Kind);
}

double key path getter for Event.abstract : Event@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 28);
  *(a1 + 25);
  v4 = specialized HeterogeneousBuffer.valuePointer<A>(for:)(0, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32));
  *a2 = v4->Kind;
  *(a2 + 8) = *&v4->Description;
  result = *&v4[1].Description;
  *(a2 + 24) = result;
  return result;
}

uint64_t (*Event.abstract.read(uint64_t *a1))(void)
{
  v3 = *(v1 + 28);
  *(v1 + 25);
  v4 = specialized HeterogeneousBuffer.valuePointer<A>(for:)(0, *(v1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32));
  Kind_low = LODWORD(v4->Kind);
  Description = v4->Description;
  v7 = v4[1].Description;
  *a1 = v4[1].Kind;
  a1[1] = v7;
  return EventTreeStats.count.modify;
}

double key path setter for Event.abstract : Event(int *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 28);
  *(a2 + 25);
  v5 = specialized HeterogeneousBuffer.valuePointer<A>(for:)(0, *(a2 + 8), *(a2 + 16), *(a2 + 24), *(a2 + 32));
  LODWORD(v5->Kind) = v3;
  *&v5->Description = *(a1 + 2);
  result = *(a1 + 3);
  *&v5[1].Description = result;
  return result;
}

uint64_t (*Event.abstract.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = specialized HeterogeneousBuffer.subscript.modify(v2, 0);
  return UnsafeTree.storage.modify;
}

ValueMetadata *Event.abstract.setter(int a1, void *a2, uint64_t a3, unint64_t a4)
{
  v5 = a4;
  v9 = HIDWORD(a4);
  v10 = *(v4 + 28);
  *(v4 + 25);
  result = specialized HeterogeneousBuffer.valuePointer<A>(for:)(0, *(v4 + 8), *(v4 + 16), *(v4 + 24), *(v4 + 32));
  LODWORD(result->Kind) = a1;
  result->Description = a2;
  result[1].Kind = a3;
  LODWORD(result[1].Description) = v5;
  HIDWORD(result[1].Description) = v9;
  return result;
}

ValueMetadata *Event.hasAbstract.getter()
{
  v1 = *(v0 + 28);
  *(v0 + 25);
  result = specialized HeterogeneousBuffer.valuePointerAs<A>(for:)(0, *(v0 + 8), *(v0 + 16), *(v0 + 24), *(v0 + 32));
  if (result)
  {
    v3 = result;
    result = LODWORD(result->Kind);
    Description = v3->Description;
    Kind = v3[1].Kind;
    v6 = v3[1].Description;
  }

  return result;
}

uint64_t Event.hasIgnorable.getter()
{
  v2 = *(v0 + 8);
  v1 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 25);
  v6 = *(v0 + 28);
  v5 = *(v0 + 32);
  v7 = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV9IgnorableV_Ttg5Tm(v2, v1, v3, v5);
  v8 = HIDWORD(v7);
  v9 = v6 == v7 && v5 == HIDWORD(v7);
  result = v9;
  if (!v9)
  {
    if (v8 >= v5)
    {
      __break(1u);
    }

    else if ((v3 & 1) == 0)
    {
      if (v2)
      {
        return result;
      }

LABEL_14:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_14;
  }

  return result;
}

unint64_t Event.hasPrefetch.getter()
{
  v2 = *(v0 + 8);
  v1 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 25);
  v6 = *(v0 + 28);
  v5 = *(v0 + 32);
  result = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV8PrefetchV_Ttgq5Tm(v2, v1, v3, v5);
  if (v6 == result && v5 == HIDWORD(result))
  {
    return 0;
  }

  if (HIDWORD(result) >= v5)
  {
    __break(1u);
  }

  else if ((v3 & 1) == 0)
  {
    if (v2)
    {
      v9 = v2 + result;
      result = *(v9 + 8);
      v10 = *(v9 + 16);
      *(v9 + 17);
      return result;
    }

    goto LABEL_12;
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t Event.prefetch.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v4 = *(v0 + 28);
  v5 = *(v0 + 32);
  v3 = *(v0 + 24);
  v6 = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV8PrefetchV_Ttgq5Tm(v1, v2, v3, v5);
  v7 = specialized HeterogeneousBuffer.valuePointer<A>(for:)(v6, v1, v2, v3, v5);
  v8 = v7[8];
  v7[9];
  return *v7;
}

ValueMetadata *key path getter for Event.prefetch : Event@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *(a1 + 28);
  v7 = *(a1 + 32);
  v5 = *(a1 + 24);
  *(a1 + 25);
  v8 = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV8PrefetchV_Ttgq5Tm(v3, v4, v5, v7);
  result = specialized HeterogeneousBuffer.valuePointer<A>(for:)(v8, v3, v4, v5, v7);
  Description = result->Description;
  v11 = BYTE1(result->Description);
  *a2 = result->Kind;
  *(a2 + 8) = Description;
  *(a2 + 9) = v11;
  return result;
}

uint64_t (*Event.prefetch.read())(void)
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v4 = *(v0 + 28);
  v5 = *(v0 + 32);
  v3 = *(v0 + 24);
  v6 = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV8PrefetchV_Ttgq5Tm(v1, v2, v3, v5);
  v7 = specialized HeterogeneousBuffer.valuePointer<A>(for:)(v6, v1, v2, v3, v5);
  Kind = v7->Kind;
  Description_low = LOBYTE(v7->Description);
  BYTE1(v7->Description);
  return EventTreeStats.count.modify;
}

ValueMetadata *key path setter for Event.prefetch : Event(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 9);
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v8 = *(a2 + 28);
  v9 = *(a2 + 32);
  v7 = *(a2 + 24);
  *(a2 + 25);
  v10 = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV8PrefetchV_Ttgq5Tm(v5, v6, v7, v9);
  result = specialized HeterogeneousBuffer.valuePointer<A>(for:)(v10, v5, v6, v7, v9);
  result->Kind = v2;
  LOBYTE(result->Description) = v3;
  BYTE1(result->Description) = v4;
  return result;
}

uint64_t (*Event.prefetch.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = specialized HeterogeneousBuffer.subscript.modify();
  return UnsafeTree.storage.modify;
}

uint64_t (*specialized HeterogeneousBuffer.subscript.modify())(void)
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v4 = *(v0 + 20);
  v5 = *(v0 + 24);
  v3 = *(v0 + 16);
  *(v0 + 17);
  updated = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV6UpdateV_Ttgq5Tm(*v0, v2, v3, v5);
  specialized HeterogeneousBuffer.valuePointer<A>(for:)(updated, v1, v2, v3, v5);
  return EventTreeStats.count.modify;
}

{
  v1 = *v0;
  v2 = *(v0 + 8);
  v4 = *(v0 + 20);
  v5 = *(v0 + 24);
  v3 = *(v0 + 16);
  *(v0 + 17);
  v6 = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV8PrefetchV_Ttgq5Tm(*v0, v2, v3, v5);
  specialized HeterogeneousBuffer.valuePointer<A>(for:)(v6, v1, v2, v3, v5);
  return EventTreeStats.count.modify;
}

{
  v1 = *v0;
  v2 = *(v0 + 8);
  v4 = *(v0 + 20);
  v5 = *(v0 + 24);
  v3 = *(v0 + 16);
  *(v0 + 17);
  v6 = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV12InvalidationV_Ttgq5Tm(*v0, v2, v3, v5);
  specialized HeterogeneousBuffer.valuePointer<A>(for:)(v6, v1, v2, v3, v5);
  return EventTreeStats.count.modify;
}

ValueMetadata *Event.prefetch.setter(uint64_t a1, __int16 a2)
{
  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  v8 = *(v2 + 28);
  v9 = *(v2 + 32);
  v7 = *(v2 + 24);
  *(v2 + 25);
  v10 = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV8PrefetchV_Ttgq5Tm(v5, v6, v7, v9);
  result = specialized HeterogeneousBuffer.valuePointer<A>(for:)(v10, v5, v6, v7, v9);
  result->Kind = a1;
  LOBYTE(result->Description) = a2 & 1;
  BYTE1(result->Description) = HIBYTE(a2) & 1;
  return result;
}

uint64_t Event.transaction.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 28);
  *(v1 + 25);
  v4 = specialized HeterogeneousBuffer.valuePointer<A>(for:)(0, *(v1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32));

  return outlined init with copy of Event.Transaction(v4, a1);
}

uint64_t key path getter for Event.transaction : Event@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 28);
  *(a1 + 25);
  v4 = specialized HeterogeneousBuffer.valuePointer<A>(for:)(0, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32));

  return outlined init with copy of Event.Transaction(v4, a2);
}

uint64_t (*Event.transaction.read(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 28);
  *(v1 + 25);
  *(v3 + 32) = specialized HeterogeneousBuffer.subscript.read(v3, 0, *(v1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32));
  return UnsafeTree.subjectsMap.read;
}

uint64_t (*Event.transaction.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = specialized HeterogeneousBuffer.subscript.modify(v2, 0);
  return UnsafeTree.storage.modify;
}

unint64_t Event.hasObservable.getter()
{
  v2 = *(v0 + 8);
  v1 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 25);
  v6 = *(v0 + 28);
  v5 = *(v0 + 32);
  result = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV10ObservableV_Ttgq5(v2, v1, v3, v5);
  v8 = 0;
  if (v6 == result && v5 == HIDWORD(result))
  {
    return v8;
  }

  if (HIDWORD(result) >= v5)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v2)
  {
    return *(v2 + result + 8);
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t Event.action.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 28);
  *(v1 + 25);
  v4 = specialized HeterogeneousBuffer.valuePointer<A>(for:)(0, *(v1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32));

  return outlined init with copy of Event.Action(v4, a1);
}

uint64_t key path getter for Event.action : Event@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 28);
  *(a1 + 25);
  v4 = specialized HeterogeneousBuffer.valuePointer<A>(for:)(0, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32));

  return outlined init with copy of Event.Action(v4, a2);
}

uint64_t (*Event.action.read(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 28);
  *(v1 + 25);
  *(v3 + 32) = specialized HeterogeneousBuffer.subscript.read(v3, 0, *(v1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32));
  return UnsafeTree.subjectsMap.readspecialized ;
}

uint64_t key path setter for Event.transaction : Event(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void, void, unint64_t, void), uint64_t (*a6)(uint64_t, uint64_t))
{
  v7 = 256;
  if (!*(a2 + 25))
  {
    v7 = 0;
  }

  v8 = a5(0, *(a2 + 8), *(a2 + 16), v7 | (*(a2 + 28) << 32) | *(a2 + 24), *(a2 + 32));

  return a6(a1, v8);
}

uint64_t (*Event.action.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = specialized HeterogeneousBuffer.subscript.modify(v2, 0);
  return UnsafeTree.storage.modify;
}

uint64_t Event.transaction.setter(uint64_t a1, uint64_t (*a2)(void, void, void, unint64_t, void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = 256;
  if (!*(v3 + 25))
  {
    v5 = 0;
  }

  v6 = a2(0, *(v3 + 8), *(v3 + 16), v5 | (*(v3 + 28) << 32) | *(v3 + 24), *(v3 + 32));

  return a3(a1, v6);
}

unint64_t Event.hasTransaction.getter@<X0>(uint64_t (*a1)(uint64_t, void, uint64_t, unint64_t)@<X0>, uint64_t (*a2)(uint64_t, _OWORD *)@<X1>, _OWORD *a3@<X8>)
{
  v5 = *(v3 + 8);
  v8 = *(v3 + 28);
  v7 = *(v3 + 32);
  v6 = *(v3 + 24);
  v9 = 256;
  if (!*(v3 + 25))
  {
    v9 = 0;
  }

  result = a1(v5, *(v3 + 16), v9 | (v8 << 32) | *(v3 + 24), v7);
  if (v8 == result && v7 == HIDWORD(result))
  {
    *a3 = 0u;
    a3[1] = 0u;
    a3[2] = xmmword_26C32F2B0;
    return result;
  }

  if (HIDWORD(result) >= v7)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v6)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v5)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v12 = v5 + result + 8;

  return a2(v12, a3);
}

double Event.animation.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 28);
  *(v1 + 25);
  v4 = specialized HeterogeneousBuffer.valuePointer<A>(for:)(0, *(v1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32));
  result = *&v4[2].Description;
  *a1 = v4->Kind;
  *(a1 + 8) = *&v4->Description;
  *(a1 + 24) = *(v4 + 24);
  *(a1 + 40) = result;
  return result;
}

double key path getter for Event.animation : Event@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 28);
  *(a1 + 25);
  v4 = specialized HeterogeneousBuffer.valuePointer<A>(for:)(0, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32));
  result = *&v4[2].Description;
  *a2 = v4->Kind;
  *(a2 + 8) = *&v4->Description;
  *(a2 + 24) = *(v4 + 24);
  *(a2 + 40) = result;
  return result;
}

void (*Event.animation.read(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + 28);
  *(v1 + 25);
  v6 = specialized HeterogeneousBuffer.valuePointer<A>(for:)(0, *(v1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32));
  v8 = v6[1];
  v7 = v6[2];
  *v4 = *v6;
  v4[1] = v8;
  v4[2] = v7;
  return Snapshot.subscript.read;
}

__n128 key path setter for Event.animation : Event(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  v4 = *(a2 + 28);
  *(a2 + 25);
  v5 = specialized HeterogeneousBuffer.valuePointer<A>(for:)(0, *(a2 + 8), *(a2 + 16), *(a2 + 24), *(a2 + 32));
  v5->Kind = *a1;
  result = *(a1 + 8);
  *(v5 + 24) = *(a1 + 24);
  *&v5->Description = result;
  v5[2].Description = v3;
  return result;
}

uint64_t (*Event.animation.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = specialized HeterogeneousBuffer.subscript.modify(v2, 0);
  return UnsafeTree.storage.modify;
}

__n128 Event.animation.setter(uint64_t a1)
{
  v3 = *(v1 + 28);
  *(v1 + 25);
  v4 = specialized HeterogeneousBuffer.valuePointer<A>(for:)(0, *(v1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32));
  v5 = *(a1 + 16);
  *v4 = *a1;
  v4[1] = v5;
  result = *(a1 + 32);
  v4[2] = result;
  return result;
}

unint64_t Event.hasAnimation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  v6 = *(v1 + 28);
  v5 = *(v1 + 32);
  v4 = *(v1 + 24);
  *(v1 + 25);
  result = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV9AnimationV_Ttg5Tm(v3, *(v1 + 16), v4, v5);
  v8 = v6 == result && v5 == HIDWORD(result);
  v9 = v8;
  v10 = 0uLL;
  v11 = 0uLL;
  v12 = 0uLL;
  if (v8)
  {
    goto LABEL_12;
  }

  if (HIDWORD(result) >= v5)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v3)
  {
    v13 = v3 + result;
    v10 = *(v13 + 8);
    v11 = *(v13 + 24);
    v12 = *(v13 + 40);
LABEL_12:
    *a1 = v10;
    *(a1 + 16) = v11;
    *(a1 + 32) = v12;
    *(a1 + 48) = v9;
    return result;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t Event.renderTick.getter()
{
  v1 = *(v0 + 28);
  *(v0 + 25);
  v2 = specialized HeterogeneousBuffer.valuePointer<A>(for:)(0, *(v0 + 8), *(v0 + 16), *(v0 + 24), *(v0 + 32));
  Description = v2->Description;
  return LOBYTE(v2->Kind);
}

double key path getter for Event.renderTick : Event@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 28);
  *(a1 + 25);
  v4 = specialized HeterogeneousBuffer.valuePointer<A>(for:)(0, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32));
  result = *&v4->Description;
  *a2 = v4->Kind;
  *(a2 + 8) = result;
  return result;
}

uint64_t (*Event.renderTick.read())(void)
{
  v1 = *(v0 + 28);
  *(v0 + 25);
  v2 = specialized HeterogeneousBuffer.valuePointer<A>(for:)(0, *(v0 + 8), *(v0 + 16), *(v0 + 24), *(v0 + 32));
  Kind_low = LOBYTE(v2->Kind);
  Description = v2->Description;
  return EventTreeStats.count.modify;
}

ValueMetadata *key path setter for Event.renderTick : Event(char *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *(a2 + 28);
  *(a2 + 25);
  result = specialized HeterogeneousBuffer.valuePointer<A>(for:)(0, *(a2 + 8), *(a2 + 16), *(a2 + 24), *(a2 + 32));
  LOBYTE(result->Kind) = v2;
  result->Description = v3;
  return result;
}

uint64_t (*Event.renderTick.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = specialized HeterogeneousBuffer.subscript.modify(v2, 0);
  return UnsafeTree.subjectsMap.modify;
}

ValueMetadata *Event.renderTick.setter(char a1, double a2)
{
  v5 = *(v2 + 28);
  *(v2 + 25);
  result = specialized HeterogeneousBuffer.valuePointer<A>(for:)(0, *(v2 + 8), *(v2 + 16), *(v2 + 24), *(v2 + 32));
  LOBYTE(result->Kind) = a1;
  *&result->Description = a2;
  return result;
}

unint64_t Event.hasRenderTick.getter()
{
  v2 = *(v0 + 8);
  v1 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 25);
  v6 = *(v0 + 28);
  v5 = *(v0 + 32);
  result = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV10RenderTickV_Ttg5Tm(v2, v1, v3, v5);
  if (v6 == result && v5 == HIDWORD(result))
  {
    return 2;
  }

  if (HIDWORD(result) >= v5)
  {
    __break(1u);
  }

  else if ((v3 & 1) == 0)
  {
    if (v2)
    {
      v9 = v2 + result;
      result = *(v9 + 8);
      v10 = *(v9 + 16);
      return result;
    }

    goto LABEL_12;
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

ValueMetadata *Event.graphRootValueUpdate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 28);
  *(v1 + 25);
  result = specialized HeterogeneousBuffer.valuePointer<A>(for:)(0, *(v1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32));
  Description = result->Description;
  *a1 = result->Kind;
  *(a1 + 8) = Description;
  return result;
}

ValueMetadata *key path getter for Event.graphRootValueUpdate : Event@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 28);
  *(a1 + 25);
  result = specialized HeterogeneousBuffer.valuePointer<A>(for:)(0, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32));
  Description = result->Description;
  *a2 = result->Kind;
  *(a2 + 8) = Description;
  return result;
}

uint64_t (*Event.graphRootValueUpdate.read(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 28);
  *(v1 + 25);
  *(v3 + 32) = specialized HeterogeneousBuffer.subscript.read(v3, 0, *(v1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32));
  return UnsafeTree.subjectsMap.readspecialized ;
}

ValueMetadata *key path setter for Event.graphRootValueUpdate : Event(__int16 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *(a2 + 28);
  *(a2 + 25);
  result = specialized HeterogeneousBuffer.valuePointer<A>(for:)(0, *(a2 + 8), *(a2 + 16), *(a2 + 24), *(a2 + 32));
  LOWORD(result->Kind) = v2;
  result->Description = v3;
  return result;
}

uint64_t (*Event.graphRootValueUpdate.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = specialized HeterogeneousBuffer.subscript.modify(v2, 0);
  return UnsafeTree.storage.modify;
}

ValueMetadata *Event.graphRootValueUpdate.setter(uint64_t a1)
{
  v3 = *(v1 + 28);
  *(v1 + 25);
  result = specialized HeterogeneousBuffer.valuePointer<A>(for:)(0, *(v1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32));
  v5 = *(a1 + 8);
  LOWORD(result->Kind) = *a1;
  result->Description = v5;
  return result;
}

unint64_t Event.hasGraphRootValueUpdate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = 256;
  if (!*(v1 + 25))
  {
    v3 = 0;
  }

  result = _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV14AttributeStackV_Ttgq5Tm(*(v1 + 8), *(v1 + 16), v3 | (*(v1 + 28) << 32) | *(v1 + 24), *(v1 + 32), _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV20GraphRootValueUpdateV_Ttg5Tm);
  if (result)
  {
    v5 = *(result + 8);
    *a1 = *result;
  }

  else
  {
    v5 = 0;
    *a1 = 0;
  }

  *(a1 + 8) = v5;
  *(a1 + 16) = result == 0;
  return result;
}

uint64_t Event.subscript.getter(uint64_t result)
{
  v2 = *(v1 + 124);
  if (v2)
  {
    v3 = 0;
    v4 = result;
    v5 = *(v1 + 112);
    v6 = result & 0xC000;
    v7 = v6 ^ 0xC000;
    v8 = result & 0x1FFF;
    v9 = v2 - 1;
    v10 = 8 * v2;
    while (v5)
    {
      v11 = *(v5 + v3);
      if (((result & 0xC000) == 0 || (v11 & v7) == 0) && ((result & 0x2000) == 0 || (v11 & 0x2000) != 0))
      {
        if ((result & 0x1FFF) != 0)
        {
          if ((v8 & v11) != 0)
          {
LABEL_12:
            v12 = v5 + v3;
            result = *(v12 + 4);
            if (v10 - 8 == v3)
            {
              return result;
            }

            v13 = (v12 + 8);
            while (v9)
            {
              v14 = *v13;
              if ((!v6 || (v14 & v7) == 0) && ((v4 & 0x2000) == 0 || (v14 & 0x2000) != 0) && (!v8 || (v8 & v14) != 0))
              {
                __break(1u);
                break;
              }

              v13 += 4;
              if (!--v9)
              {
                return result;
              }
            }

            __break(1u);
            goto LABEL_25;
          }
        }

        else if (result)
        {
          goto LABEL_12;
        }
      }

      --v9;
      v3 += 8;
      if (v10 == v3)
      {
        goto LABEL_25;
      }
    }
  }

  else
  {
LABEL_25:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t Event.update.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v4 = *(v0 + 28);
  v5 = *(v0 + 32);
  v3 = *(v0 + 24);
  *(v0 + 25);
  updated = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV6UpdateV_Ttgq5Tm(v1, v2, v3, v5);
  v7 = specialized HeterogeneousBuffer.valuePointer<A>(for:)(updated, v1, v2, v3, v5);
  Description = v7->Description;
  return v7->Kind;
}

__n128 key path getter for Event.update : Event@<Q0>(uint64_t a1@<X0>, ValueMetadata *a2@<X8>)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *(a1 + 28);
  v7 = *(a1 + 32);
  v5 = *(a1 + 24);
  *(a1 + 25);
  updated = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV6UpdateV_Ttgq5Tm(v3, v4, v5, v7);
  v9 = specialized HeterogeneousBuffer.valuePointer<A>(for:)(updated, v3, v4, v5, v7);
  result = *v9;
  *a2 = *v9;
  return result;
}

uint64_t (*Event.update.read())(void)
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v4 = *(v0 + 28);
  v5 = *(v0 + 32);
  v3 = *(v0 + 24);
  *(v0 + 25);
  updated = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV6UpdateV_Ttgq5Tm(v1, v2, v3, v5);
  v7 = specialized HeterogeneousBuffer.valuePointer<A>(for:)(updated, v1, v2, v3, v5);
  Kind = v7->Kind;
  Description = v7->Description;
  return EventTreeStats.count.modify;
}

ValueMetadata *key path setter for Event.update : Event(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v7 = *(a2 + 28);
  v8 = *(a2 + 32);
  v6 = *(a2 + 24);
  *(a2 + 25);
  updated = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV6UpdateV_Ttgq5Tm(v4, v5, v6, v8);
  result = specialized HeterogeneousBuffer.valuePointer<A>(for:)(updated, v4, v5, v6, v8);
  result->Kind = v2;
  result->Description = v3;
  return result;
}

ValueMetadata *Event.update.setter(uint64_t a1, void *a2)
{
  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  v8 = *(v2 + 28);
  v9 = *(v2 + 32);
  v7 = *(v2 + 24);
  *(v2 + 25);
  updated = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV6UpdateV_Ttgq5Tm(v5, v6, v7, v9);
  result = specialized HeterogeneousBuffer.valuePointer<A>(for:)(updated, v5, v6, v7, v9);
  result->Kind = a1;
  result->Description = a2;
  return result;
}

uint64_t Event.invalidation.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v4 = *(v0 + 28);
  v5 = *(v0 + 32);
  v3 = *(v0 + 24);
  *(v0 + 25);
  v6 = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV12InvalidationV_Ttgq5Tm(v1, v2, v3, v5);
  return specialized HeterogeneousBuffer.valuePointer<A>(for:)(v6, v1, v2, v3, v5)->Kind;
}

ValueMetadata *key path getter for Event.invalidation : Event@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *(a1 + 28);
  v7 = *(a1 + 32);
  v5 = *(a1 + 24);
  *(a1 + 25);
  v8 = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV12InvalidationV_Ttgq5Tm(v3, v4, v5, v7);
  result = specialized HeterogeneousBuffer.valuePointer<A>(for:)(v8, v3, v4, v5, v7);
  *a2 = result->Kind;
  return result;
}

uint64_t (*Event.invalidation.read())(void)
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v4 = *(v0 + 28);
  v5 = *(v0 + 32);
  v3 = *(v0 + 24);
  *(v0 + 25);
  v6 = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV12InvalidationV_Ttgq5Tm(v1, v2, v3, v5);
  Kind = specialized HeterogeneousBuffer.valuePointer<A>(for:)(v6, v1, v2, v3, v5)->Kind;
  return EventTreeStats.count.modify;
}

ValueMetadata *key path setter for Event.invalidation : Event(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  v6 = *(a2 + 28);
  v7 = *(a2 + 32);
  v5 = *(a2 + 24);
  *(a2 + 25);
  v8 = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV12InvalidationV_Ttgq5Tm(v3, v4, v5, v7);
  result = specialized HeterogeneousBuffer.valuePointer<A>(for:)(v8, v3, v4, v5, v7);
  result->Kind = v2;
  return result;
}

uint64_t (*Event.invalidation.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = specialized HeterogeneousBuffer.subscript.modify();
  return UnsafeTree.storage.modify;
}

ValueMetadata *Event.invalidation.setter(uint64_t a1)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v6 = *(v1 + 28);
  v7 = *(v1 + 32);
  v5 = *(v1 + 24);
  *(v1 + 25);
  v8 = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV12InvalidationV_Ttgq5Tm(v3, v4, v5, v7);
  result = specialized HeterogeneousBuffer.valuePointer<A>(for:)(v8, v3, v4, v5, v7);
  result->Kind = a1;
  return result;
}

BOOL Event.contains(_:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 32);
    if (*(v1 + 25))
    {
      v4 = 256;
    }

    else
    {
      v4 = 0;
    }

    v5 = 1;
    do
    {
      v5 = v5 && HeterogeneousBuffer.contains<A>(_:)(*v3, *(v1 + 8), *(v1 + 16), v4 | (*(v1 + 28) << 32) | *(v1 + 24), *(v1 + 32));
      v3 += 2;
      --v2;
    }

    while (v2);
  }

  else
  {
    return 1;
  }

  return v5;
}

BOOL Event.has(_:)(uint64_t a1)
{
  v2 = 256;
  if (!*(v1 + 25))
  {
    v2 = 0;
  }

  return HeterogeneousBuffer.contains<A>(_:)(a1, *(v1 + 8), *(v1 + 16), v2 | (*(v1 + 28) << 32) | *(v1 + 24), *(v1 + 32));
}

BOOL Event.contains<A>(noun:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 28);
  *(v2 + 25);
  return HeterogeneousBuffer.contains<A>(type:at:)(a2, 0, *(v2 + 8), *(v2 + 16), *(v2 + 24), *(v2 + 32));
}

uint64_t Event.visiblePosition.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 25);
  v4 = *(v0 + 28);
  v5 = *(v0 + 32);
  LOBYTE(v11) = *(v0 + 24);
  v6 = v3 == 0;
  v7 = 256;
  if (v6)
  {
    v7 = 0;
  }

  v8 = v7 | (v4 << 32);
  if (specialized HeterogeneousBuffer.valuePointerAs<A>(for:)(0, v1, v2, v7 | v11, v5))
  {
    return 0;
  }

  if (_s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v1, v2, v8 | v11, v5, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV8PrefetchV_Ttgq5Tm) || _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v1, v2, v8 | v11, v5, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV9IgnorableV_Ttg5Tm))
  {
    return 2;
  }

  if (_s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v1, v2, v8 | v11, v5, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV6UpdateV_Ttgq5Tm))
  {
    return 0;
  }

  if (_s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v1, v2, v8 | v11, v5, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV14AttributeStackV_Ttgq5Tm))
  {
    return 3;
  }

  v10 = _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v1, v2, v8 | v11, v5, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV12InvalidationV_Ttgq5Tm);
  result = 1;
  if (!v10)
  {
    v11 = xmmword_26C32DAD0;
    v12 = 1;
    v13 = 0;
    v14 = 0;
    v15 = 512;
    Event.describe(state:)(&v11);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t Event.position.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 25);
  v4 = *(v0 + 28);
  v5 = *(v0 + 32);
  LOBYTE(v11) = *(v0 + 24);
  v6 = v3 == 0;
  v7 = 256;
  if (v6)
  {
    v7 = 0;
  }

  v8 = v7 | (v4 << 32);
  if (specialized HeterogeneousBuffer.valuePointerAs<A>(for:)(0, v1, v2, v7 | v11, v5))
  {
    return 0;
  }

  if (_s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v1, v2, v8 | v11, v5, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV8PrefetchV_Ttgq5Tm) || _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v1, v2, v8 | v11, v5, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV9IgnorableV_Ttg5Tm))
  {
    return 2;
  }

  if (_s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v1, v2, v8 | v11, v5, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV6UpdateV_Ttgq5Tm))
  {
    return 0;
  }

  result = _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v1, v2, v8 | v11, v5, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV14AttributeStackV_Ttgq5Tm);
  if (result)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v10 = _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v1, v2, v8 | v11, v5, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV12InvalidationV_Ttgq5Tm);
  result = 1;
  if (!v10)
  {
    v11 = xmmword_26C32DAD0;
    v12 = 1;
    v13 = 0;
    v14 = 0;
    v15 = 512;
    Event.describe(state:)(&v11);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_14;
  }

  return result;
}

unint64_t Event.metric(_:within:)(unsigned __int8 *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  v8 = *(v2 + 25);
  v10 = *(v2 + 28);
  v9 = *(v2 + 32);
  LOBYTE(v35) = *(v2 + 24);
  v7 = v35;
  v14 = v8 == 0;
  v11 = 256;
  if (v14)
  {
    v11 = 0;
  }

  v12 = v11 | (v10 << 32);
  result = _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV9IgnorableV_Ttg5Tm(v5, v6, v11 | v35, v9);
  v14 = v10 == result && v9 == HIDWORD(result);
  if (!v14)
  {
    if (HIDWORD(result) >= v9)
    {
      goto LABEL_65;
    }

    if (v35)
    {
      goto LABEL_70;
    }

    if (v5)
    {
      return 0;
    }

    __break(1u);
  }

  if (specialized HeterogeneousBuffer.valuePointerAs<A>(for:)(0, v5, v6, v12 | v35, v9))
  {
    return 0;
  }

  if (v4 >= 2)
  {
    if (v4 == 2)
    {
      return *(v2 + 40);
    }

    v5 = 1;
    Event.related(_:within:limit:collectedInto:clear:includeSelf:)(35843, a2, 0x7FFFFFFFFFFFFFFFLL, *(*a2 + 184), 1, 1);
    v17 = 0;
    result = 0;
    v18 = **(*a2 + 184);
    v19 = 1 << *(v18 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v18 + 64);
    v22 = (v19 + 63) >> 6;
    while (v21)
    {
LABEL_31:
      v24 = *(*(v18 + 48) + ((v17 << 8) | (4 * __clz(__rbit64(v21)))));
      if (v24 >= *(a2 + 44))
      {
        goto LABEL_66;
      }

      v25 = *(a2 + 32);
      if (!v25)
      {
        goto LABEL_71;
      }

      v21 &= v21 - 1;
      v26 = *(v25 + (v24 << 7) + 40);
      v27 = __OFADD__(result, v26);
      result += v26;
      if (v27)
      {
        __break(1u);
        goto LABEL_36;
      }
    }

    while (1)
    {
      v23 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v23 >= v22)
      {
        return result;
      }

      v21 = *(v18 + 64 + 8 * v23);
      ++v17;
      if (v21)
      {
        v17 = v23;
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_48:
    v35 = 0u;
    v36 = 0u;
    v37 = xmmword_26C32F2B0;
    outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](&v35, &_s21SwiftUITracingSupport5EventV11TransactionVSgMd, &_s21SwiftUITracingSupport5EventV11TransactionVSgMR);
    v33 = _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v5, v6, v12 | v7, v9, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV6ActionV_Ttgq5Tm);
    if (v33)
    {
      outlined init with copy of Event.Action(v33, &v35);
      v31 = &_s21SwiftUITracingSupport5EventV6ActionVSgMd;
      v32 = &_s21SwiftUITracingSupport5EventV6ActionVSgMR;
      goto LABEL_50;
    }

    v35 = 0u;
    v36 = 0u;
    v37 = xmmword_26C32F2B0;
    outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](&v35, &_s21SwiftUITracingSupport5EventV6ActionVSgMd, &_s21SwiftUITracingSupport5EventV6ActionVSgMR);
    LOBYTE(v35) = v7;
    if (_s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v5, v6, v12 | v7, v9, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV9AnimationV_Ttg5Tm))
    {
      goto LABEL_51;
    }

    LOBYTE(v35) = v7;
    if (_s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v5, v6, v12 | v7, v9, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV10RenderTickV_Ttg5Tm))
    {
      goto LABEL_51;
    }

    LOBYTE(v35) = v7;
    if (specialized HeterogeneousBuffer.valuePointerAs<A>(for:)(0, v5, v6, v12 | v7, v9))
    {
      goto LABEL_51;
    }

    LOBYTE(v35) = v7;
    if (specialized HeterogeneousBuffer.valuePointerAs<A>(for:)(0, v5, v6, v12 | v7, v9))
    {
      goto LABEL_51;
    }

    v35 = xmmword_26C32DAD0;
    LOBYTE(v36) = 1;
    *(&v36 + 1) = 0;
    *&v37 = 0;
    WORD4(v37) = 512;
    Event.describe(state:)(&v35);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  result = specialized HeterogeneousBuffer.valuePointerAs<A>(for:)(0, v5, v6, v12 | v35, v9);
  if (result)
  {
    if (*result < *(a2 + 84))
    {
      v15 = *(a2 + 72);
      if (v15)
      {
        v16 = *(v15 + 312 * *result + 248);
        goto LABEL_52;
      }

      goto LABEL_72;
    }

    goto LABEL_67;
  }

LABEL_36:
  result = _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v5, v6, v12 | v35, v9, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV14AttributeStackV_Ttgq5Tm);
  if (!result)
  {
    result = specialized HeterogeneousBuffer.valuePointerAs<A>(for:)(0, v5, v6, v12 | v35, v9);
    if (result)
    {
      if (*result >= *(a2 + 148))
      {
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
        goto LABEL_73;
      }

      v29 = *(a2 + 136);
      if (!v29)
      {
LABEL_74:
        __break(1u);
        return result;
      }

      v16 = *(v29 + 80 * *result + 72);
      goto LABEL_52;
    }

    if (_s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v5, v6, v12 | v35, v9, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV8PrefetchV_Ttgq5Tm))
    {
LABEL_51:
      v16 = 0;
      goto LABEL_52;
    }

    v30 = _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v5, v6, v12 | v35, v9, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV11TransactionV_Ttgq5Tm);
    if (v30)
    {
      outlined init with copy of Event.Transaction(v30, &v35);
      v31 = &_s21SwiftUITracingSupport5EventV11TransactionVSgMd;
      v32 = &_s21SwiftUITracingSupport5EventV11TransactionVSgMR;
LABEL_50:
      outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](&v35, v31, v32);
      goto LABEL_51;
    }

    goto LABEL_48;
  }

  if (*result >= *(a2 + 84))
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v28 = *(a2 + 72);
  if (!v28)
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v16 = *(v28 + 312 * *result + 256);
LABEL_52:
  v34 = *(v2 + 104);
  if (!v4)
  {
    goto LABEL_57;
  }

  result = v16 - v34;
  if (v16 != v34 && __OFSUB__(v16, v34))
  {
    __break(1u);
LABEL_57:
    if (v34)
    {
      return v34 - 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t Event.duration(within:)(uint64_t a1)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v6 = *(v1 + 25);
  v7 = *(v1 + 28);
  LODWORD(v8) = *(v1 + 32);
  LOBYTE(v30) = *(v1 + 24);
  v5 = v30;
  v9 = v6 == 0;
  v10 = 256;
  if (v9)
  {
    v10 = 0;
  }

  v11 = v10 | (v7 << 32);
  if (_s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v3, v4, v11 | v30, v8, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV5GroupV_Ttg5Tm))
  {
    v3 = 0;
    v12 = 0;
    v4 = *(v1 + 112);
    v8 = *(v1 + 124);
    v5 = 32;
LABEL_6:
    v13 = (v4 + 8 * v12);
    while (v8 != v12)
    {
      if (v12 >= v8)
      {
        goto LABEL_23;
      }

      if (!v4)
      {
        goto LABEL_26;
      }

      v11 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      v14 = *v13;
      v13 += 4;
      ++v12;
      if ((v14 & 0x4020) == 0x20)
      {
        v15 = *(v13 - 1);
        if (v15 >= *(a1 + 44))
        {
          goto LABEL_25;
        }

        v16 = *(a1 + 32);
        if (!v16)
        {
          goto LABEL_27;
        }

        v17 = (v16 + (v15 << 7));
        v18 = v17[5];
        v34 = v17[4];
        v35 = v18;
        v19 = v17[7];
        v36 = v17[6];
        v37 = v19;
        v20 = v17[1];
        v30 = *v17;
        v31 = v20;
        v21 = v17[3];
        v32 = v17[2];
        v33 = v21;
        v22 = Event.duration(within:)(a1);
        v12 = v11;
        v23 = __CFADD__(v3, v22);
        v3 += v22;
        if (!v23)
        {
          goto LABEL_6;
        }

        __break(1u);
        goto LABEL_17;
      }
    }

    return v3;
  }

LABEL_17:
  LOBYTE(v30) = v5;
  v24 = _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v3, v4, v11 | v5, v8, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV6UpdateV_Ttgq5Tm);
  if (v24)
  {
    v25 = v24[1];
    v3 = v25 - *v24;
    if (v25 >= *v24)
    {
      return v3;
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  else
  {
    LOBYTE(v30) = v5;
    v27 = _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v3, v4, v11 | v5, v8, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV12InvalidationV_Ttgq5Tm);
    if (v27)
    {
      v28 = *v27;
      return 0;
    }
  }

  *&v30 = 0;
  *(&v30 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(51);
  MEMORY[0x26D69CDB0](0xD000000000000031, 0x800000026C33B5C0);
  v30 = xmmword_26C32DAD0;
  LOBYTE(v31) = 1;
  *(&v31 + 1) = 0;
  *&v32 = 0;
  WORD4(v32) = 512;
  v29 = Event.describe(state:)(&v30);
  MEMORY[0x26D69CDB0](v29);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t Event.distance(to:within:)(uint64_t a1, uint64_t a2)
{
_$s21SwiftUITracingSupport5EventV8distance2to6withins6UInt64VAA0D3RefV_AA8SnapshotVtF:
  v3 = a2;
  v4 = a1;
  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  v8 = *(v2 + 25);
  v9 = *(v2 + 28);
  v10 = *(v2 + 32);
  LOBYTE(v55) = *(v2 + 24);
  v7 = v55;
  v11 = v8 == 0;
  v12 = 256;
  if (v11)
  {
    v12 = 0;
  }

  v13 = v12 | (v9 << 32);
  if (_s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v5, v6, v13 | v55, v10, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV5GroupV_Ttg5Tm))
  {
    v14 = *(v2 + 124) + 1;
    v15 = *(v2 + 112);
    while (--v14)
    {
      if (!*(v2 + 112))
      {
        goto LABEL_42;
      }

      v16 = v15 + 4;
      v17 = *v15 & 0x8080;
      v15 += 4;
      if (v17 == 128)
      {
        v18 = *(v16 - 1);
        if (v18 >= *(v3 + 44))
        {
          __break(1u);
          goto LABEL_38;
        }

        v19 = *(v3 + 32);
        if (!v19)
        {
          goto LABEL_45;
        }

        v20 = (v19 + (v18 << 7));
        v21 = v20[5];
        v59 = v20[4];
        v60 = v21;
        v22 = v20[7];
        v61 = v20[6];
        v62 = v22;
        v23 = v20[1];
        v55 = *v20;
        v56 = v23;
        v24 = v20[3];
        v57 = v20[2];
        v58 = v24;
        return Event.distance(to:within:)(v4, v3);
      }
    }

    goto LABEL_41;
  }

  if (*(v3 + 44) <= v4)
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
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
    goto LABEL_46;
  }

  v26 = *(v3 + 32);
  if (!v26)
  {
LABEL_46:
    __break(1u);
LABEL_47:
    *&v55 = 0;
    *(&v55 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(51);
    v49 = v55;
    MEMORY[0x26D69CDB0](0xD000000000000031, 0x800000026C33B5C0);
    v55 = xmmword_26C32DAD0;
    LOBYTE(v56) = 1;
    *(&v56 + 1) = 0;
    *&v57 = 0;
    WORD4(v57) = 512;
    v47 = Event.describe(state:)(&v55);
    MEMORY[0x26D69CDB0](v47);

LABEL_49:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v27 = v26 + (v4 << 7);
  v28 = *(v27 + 8);
  v29 = *(v27 + 16);
  v30 = *(v27 + 25);
  v32 = *(v27 + 28);
  v31 = *(v27 + 32);
  LOBYTE(v55) = *(v27 + 24);
  v11 = v30 == 0;
  v33 = 256;
  if (v11)
  {
    v33 = 0;
  }

  if (_s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v28, v29, v33 | (v32 << 32) | v55, v31, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV5GroupV_Ttg5Tm))
  {
    v34 = *(v27 + 124) + 1;
    v35 = *(v27 + 112);
    while (--v34)
    {
      if (!*(v27 + 112))
      {
        goto LABEL_44;
      }

      v36 = v35 + 4;
      v37 = *v35 & 0x8080;
      v35 += 4;
      if (v37 == 128)
      {
        a1 = *(v36 - 1);
        a2 = v3;
        v2 = v63;

        goto _$s21SwiftUITracingSupport5EventV8distance2to6withins6UInt64VAA0D3RefV_AA8SnapshotVtF;
      }
    }

    goto LABEL_43;
  }

  LOBYTE(v55) = v7;
  v38 = _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v5, v6, v13 | v7, v10, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV6UpdateV_Ttgq5Tm);
  if (!v38)
  {
    LOBYTE(v55) = v7;
    v38 = _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v5, v6, v13 | v7, v10, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV12InvalidationV_Ttgq5Tm);
    if (!v38)
    {
      goto LABEL_47;
    }
  }

  v39 = *v38;
  if (*v38 < 0)
  {
    goto LABEL_39;
  }

  v40 = *(v27 + 16);
  v55 = *v27;
  v56 = v40;
  v41 = *(v27 + 80);
  v59 = *(v27 + 64);
  v60 = v41;
  v42 = *(v27 + 112);
  v61 = *(v27 + 96);
  v62 = v42;
  v43 = *(v27 + 48);
  v57 = *(v27 + 32);
  v58 = v43;
  LOBYTE(v49) = BYTE8(v56);
  v44 = 256;
  if (!BYTE9(v56))
  {
    v44 = 0;
  }

  v45 = v44 | (HIDWORD(v56) << 32);
  v46 = _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV14AttributeStackV_Ttgq5Tm(*(&v55 + 1), v56, v45 | BYTE8(v56), v57, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV6UpdateV_Ttgq5Tm);
  if (!v46)
  {
    LOBYTE(v49) = BYTE8(v56);
    v46 = _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV14AttributeStackV_Ttgq5Tm(*(&v55 + 1), v56, v45 | BYTE8(v56), v57, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV12InvalidationV_Ttgq5Tm);
    if (!v46)
    {
      *&v49 = 0;
      *(&v49 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(51);
      v54 = v49;
      MEMORY[0x26D69CDB0](0xD000000000000031, 0x800000026C33B5C0);
      v49 = xmmword_26C32DAD0;
      v50 = 1;
      v51 = 0;
      v52 = 0;
      v53 = 512;
      v48 = Event.describe(state:)(&v49);
      MEMORY[0x26D69CDB0](v48);

      goto LABEL_49;
    }
  }

  if ((*v46 & 0x8000000000000000) != 0)
  {
    goto LABEL_40;
  }

  if (v39 - *v46 >= 0)
  {
    return v39 - *v46;
  }

  else
  {
    return *v46 - v39;
  }
}

void Event.hide(_:within:)(__int128 *a1, unsigned __int8 *a2)
{
  Event.relate(_:_:swapping:)(40992, *a1, 1);
  v5 = *v2;
  Event.relate(_:_:swapping:)(24608, *v2, 1);
  v6 = a1[1];
  v27 = *a1;
  v28 = v6;
  v7 = a1[5];
  v31 = a1[4];
  v32 = v7;
  v8 = a1[7];
  v33 = a1[6];
  v34 = v8;
  v9 = a1[3];
  v29 = a1[2];
  v30 = v9;
  LOBYTE(v25) = BYTE8(v28);
  v10 = HeterogeneousBuffer.type(at:)(0, *(&v27 + 1), v28, SBYTE8(v28), v29);
  v11 = swift_conformsToProtocol2();
  if (!v11)
  {
    goto LABEL_16;
  }

  v12 = v11;
  v13 = HeterogeneousBuffer.index(after:)(0, *(&v27 + 1), v28, SBYTE8(v28), v29);
  LOBYTE(v25) = BYTE8(v28);
  v14 = HeterogeneousBuffer.type(at:)(v13, *(&v27 + 1), v28, SBYTE8(v28), v29);
  v15 = swift_conformsToProtocol2();
  if (!v15)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  project #1 <A, B>(_:_:) in Event.id.getter(v14, &v27, v10, v12, v15, &v25);
  if (v25 != &type metadata for Event.AttributeValue && v25 != &type metadata for Event.AttributeStack)
  {
    goto LABEL_12;
  }

  if (a2[48])
  {
    goto LABEL_18;
  }

  v16 = *(a2 + 22);
  v17 = *a2;
  if (v17 >= *(v16 + 116))
  {
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v18 = *(v16 + 104);
  if (!v18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v19 = *(*(v18 + 8 * v17) + 8);
  if (v26 >= *(v19 + 84))
  {
    goto LABEL_14;
  }

  v20 = *(v19 + 72);
  if (v20)
  {
    v21 = v20 + 312 * v26;
    v22 = *(v21 + 240);
    v23 = __OFADD__(v22, *(&v29 + 1));
    v24 = v22 + *(&v29 + 1);
    if (!v23)
    {
      *(v21 + 240) = v24;
LABEL_12:
      Interpreter.Iterator.addTime(rootedAt:partial:)(v5, v27);
      return;
    }

    goto LABEL_15;
  }

LABEL_20:
  __break(1u);
}

uint64_t closure #1 in Event.related(_:within:limit:collectedInto:clear:includeSelf:)(uint64_t result, uint64_t *a2, uint64_t a3, unsigned __int16 a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *result;
  if (v7 >= *(a3 + 44))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v8 = *(a3 + 32);
  if (!v8)
  {
LABEL_33:
    __break(1u);
    return result;
  }

  v9 = v8 + (v7 << 7);
  v10 = *(v9 + 124);
  if (v10)
  {
    v11 = a2;
    v12 = 0;
    v13 = a4;
    v14 = *(v9 + 112);
    v15 = a4 & 0xC000;
    v16 = a4 & 0x1FFF;
    v17 = (v14 + 4);
    v34 = v16;
    while (1)
    {
      if (!v14)
      {
        goto LABEL_32;
      }

      if (__OFADD__(v12, 1))
      {
        goto LABEL_28;
      }

      v18 = *(v17 - 2);
      if ((!v15 || (v18 & (v15 ^ 0xC000)) == 0) && ((v13 & 0x2000) == 0 || (v18 & 0x2000) != 0))
      {
        if (v16)
        {
          if ((v16 & v18) == 0)
          {
            goto LABEL_24;
          }
        }

        else if (!v13)
        {
          goto LABEL_24;
        }

        v19 = v11[8];
        if (v19 < a5)
        {
          v20 = v19 + 1;
          if ((a7 * (v19 + 1)) >> 64 != (a7 * (v19 + 1)) >> 63)
          {
            goto LABEL_29;
          }

          v32 = *v17;
          result = specialized DepthMap.insert(_:at:)(*v17, a7 * (v19 + 1));
          v16 = v34;
          v11 = a2;
          if (result)
          {
            v21 = a2[10];
            v22 = __OFADD__(v21, 1);
            v23 = v21 + 1;
            if (v22)
            {
              goto LABEL_31;
            }

            a2[10] = v23;
            v24 = *a2;
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v24 + 16) + 1, 1, v24);
              v24 = result;
            }

            v26 = *(v24 + 16);
            v25 = *(v24 + 24);
            v27 = v26 + 1;
            if (v26 >= v25 >> 1)
            {
              v31 = v26 + 1;
              v29 = v24;
              v30 = *(v24 + 16);
              result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, v29);
              v27 = v31;
              v26 = v30;
              v24 = result;
            }

            *(v24 + 16) = v27;
            v28 = v24 + 16 * v26;
            *(v28 + 32) = v32;
            *(v28 + 40) = v20;
            v11 = a2;
            *a2 = v24;
            v16 = v34;
          }
        }
      }

LABEL_24:
      if (v12 + 1 == v10)
      {
        return result;
      }

      v17 += 2;
      if (++v12 >= v10)
      {
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }
    }
  }

  return result;
}

uint64_t Event.subscript.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = 256;
  if (!*(v2 + 25))
  {
    v5 = 0;
  }

  v6 = HeterogeneousBuffer.findValuePointerAs<A>(_:)(a1, *(v2 + 8), *(v2 + 16), v5 | (*(v2 + 28) << 32) | *(v2 + 24), *(v2 + 32), a1);
  if (v6)
  {
    v11 = *(a1 - 8);
    (*(v11 + 16))(a2, v6, a1);
    v7 = v11;
    v8 = 0;
  }

  else
  {
    v7 = *(a1 - 8);
    v8 = 1;
  }

  v9 = *(v7 + 56);

  return v9(a2, v8, 1, a1);
}

uint64_t Event.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v42 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v41 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v40 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v40 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v40 - v20;
  v43 = v10;
  v44 = a1;
  v22 = *(v10 + 16);
  v47 = v23;
  v45 = v22;
  (v22)(v19, a1);
  v46 = *(v6 + 48);
  if (v46(v19, 1, a3) == 1)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v24 = *(v6 + 32);
  v24(v21, v19, a3);
  (*(v6 + 56))(v21, 0, 1, a3);
  v25 = *(v3 + 8);
  v26 = *(v3 + 16);
  v27 = v3 + 8;
  v28 = *(v27 + 17);
  v30 = *(v27 + 20);
  v29 = *(v27 + 24);
  LOBYTE(v48) = *(v27 + 16);
  v31 = v28 == 0;
  v32 = 256;
  if (v31)
  {
    v32 = 0;
  }

  v33 = HeterogeneousBuffer.findValuePointerAs<A>(_:)(a3, v25, v26, v32 | (v30 << 32) | v48, v29, a3);
  if (v33)
  {
    v19 = v33;
    v34 = v47;
    v45(v16, v21, v47);
    if (v46(v16, 1, a3) != 1)
    {
      (*(v6 + 40))(v19, v16, a3);
      v35 = *(v43 + 8);
      v35(v44, v34);
      return (v35)(v21, v34);
    }

    goto LABEL_12;
  }

  v40 = v24;
  v19 = v41;
  v16 = v47;
  v45(v41, v21, v47);
  if (v46(v19, 1, a3) == 1)
  {
LABEL_13:
    (*(v43 + 8))(v19, v16);
    v48 = 0;
    v49 = 0xE000000000000000;
    _StringGuts.grow(_:)(114);
    MEMORY[0x26D69CDB0](0xD000000000000038, 0x800000026C33C090);
    v39 = _typeName(_:qualified:)();
    MEMORY[0x26D69CDB0](v39);

    MEMORY[0x26D69CDB0](0xD000000000000038, 0x800000026C33C0D0);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v37 = v42;
  v40(v42, v19, a3);
  HeterogeneousBuffer.insert<A>(_:)(v37, a3);
  v38 = *(v43 + 8);
  v38(v44, v16);
  (*(v6 + 8))(v37, a3);
  return (v38)(v21, v16);
}

void (*Event.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1, uint64_t a2)
{
  v9 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0xC0uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[18] = a4;
  v10[19] = v4;
  v10[16] = a2;
  v10[17] = a3;
  v12 = type metadata accessor for Optional();
  v11[20] = v12;
  v13 = *(v12 - 8);
  v11[21] = v13;
  v14 = *(v13 + 64);
  if (v9)
  {
    v11[22] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v11[22] = malloc(*(v13 + 64));
    v15 = malloc(v14);
  }

  v11[23] = v15;
  v16 = *v4;
  v17 = v4[1];
  v18 = v4[3];
  *(v11 + 2) = v4[2];
  *(v11 + 3) = v18;
  *v11 = v16;
  *(v11 + 1) = v17;
  v19 = v4[4];
  v20 = v4[5];
  v21 = v4[7];
  *(v11 + 6) = v4[6];
  *(v11 + 7) = v21;
  *(v11 + 4) = v19;
  *(v11 + 5) = v20;
  Event.subscript.getter(a3, v15);
  return Event.subscript.modify;
}

void Event.subscript.modify(uint64_t **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = (*a1)[22];
  v4 = (*a1)[23];
  if (a2)
  {
    v5 = v2[20];
    v6 = v2[21];
    v7 = v2[19];
    v8 = v2[17];
    (*(v6 + 16))((*a1)[22], v4, v5);
    Event.subscript.setter(v3, v9, v8);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v10 = v2[19];
    Event.subscript.setter((*a1)[23], a2, v2[17]);
  }

  free(v4);
  free(v3);

  free(v2);
}

void (*Event.subscript.modify(void *a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6))(uint64_t **a1, char a2)
{
  v11 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(0xB0uLL);
  }

  v13 = v12;
  *a1 = v12;
  v12[17] = a6;
  v12[18] = v6;
  v12[16] = a5;
  v14 = *(a5 - 8);
  v12[19] = v14;
  v15 = *(v14 + 64);
  if (v11)
  {
    v12[20] = swift_coroFrameAlloc();
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    v12[20] = malloc(*(v14 + 64));
    v16 = malloc(v15);
  }

  v13[21] = v16;
  v17 = *v6;
  v18 = v6[1];
  v19 = v6[3];
  *(v13 + 2) = v6[2];
  *(v13 + 3) = v19;
  *v13 = v17;
  *(v13 + 1) = v18;
  v20 = v6[4];
  v21 = v6[5];
  v22 = v6[7];
  *(v13 + 6) = v6[6];
  *(v13 + 7) = v22;
  *(v13 + 4) = v20;
  *(v13 + 5) = v21;
  Event.subscript.getter(a3, a5, v16);
  return Event.subscript.modify;
}

void Event.subscript.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[20];
  v4 = (*a1)[21];
  if (a2)
  {
    v5 = v2[19];
    v6 = v2[16];
    (*(v5 + 16))((*a1)[20], v4, v6);
    specialized Event.subscript.setter(v3, v6);
    (*(v5 + 8))(v4, v6);
  }

  else
  {
    v7 = v2[17];
    v8 = v2[18];
    specialized Event.subscript.setter((*a1)[21], v2[16]);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t Event.relatedTo(_:)(uint64_t result)
{
  v2 = *(v1 + 124);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v1 + 112);
  while (*(v1 + 112))
  {
    v4 = *v3;
    if (((result & 0xC000) == 0 || (v4 & (result & 0xC000 ^ 0xC000)) == 0) && ((result & 0x2000) == 0 || (v4 & 0x2000) != 0))
    {
      if ((result & 0x1FFF) != 0)
      {
        if ((result & 0x1FFF & v4) != 0)
        {
          return 1;
        }
      }

      else if (result)
      {
        return 1;
      }
    }

    v3 += 4;
    if (!--v2)
    {
      return 0;
    }
  }

  __break(1u);
  return result;
}

{
  v2 = *(v1 + 124);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v1 + 112);
  v4 = (v3 + 4);
  while (v3)
  {
    if (*v4 == HIDWORD(result))
    {
      v5 = *(v4 - 2);
      if (((result & 0xC000) == 0 || (v5 & (result & 0xC000 ^ 0xC000)) == 0) && ((result & 0x2000) == 0 || (v5 & 0x2000) != 0))
      {
        if ((result & 0x1FFF) != 0)
        {
          if ((result & 0x1FFF & v5) != 0)
          {
            return 1;
          }
        }

        else if (result)
        {
          return 1;
        }
      }
    }

    v4 += 2;
    if (!--v2)
    {
      return 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t Event.contains(event:within:)(uint64_t result)
{
  if (*v1 == result)
  {
    return 1;
  }

  v2 = *(v1 + 112);
  v3 = (v2 + 4);
  v4 = *(v1 + 124) + 1;
  while (1)
  {
    if (!--v4)
    {
      return v4 != 0;
    }

    if (!v2)
    {
      break;
    }

    v5 = v3;
    v3 += 2;
    if (*v5 == result && (*(v5 - 1) & 0x4020) == 0x20)
    {
      return v4 != 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t Event.relatedTo(_:_:)(uint64_t result, int a2)
{
  v3 = *(v2 + 124);
  if (!v3)
  {
    return 0;
  }

  v4 = *(v2 + 112);
  v5 = (v4 + 4);
  while (v4)
  {
    if (*v5 == a2)
    {
      v6 = *(v5 - 2);
      if (((result & 0xC000) == 0 || (v6 & (result & 0xC000 ^ 0xC000)) == 0) && ((result & 0x2000) == 0 || (v6 & 0x2000) != 0))
      {
        if ((result & 0x1FFF) != 0)
        {
          if ((result & 0x1FFF & v6) != 0)
          {
            return 1;
          }
        }

        else if (result)
        {
          return 1;
        }
      }
    }

    v5 += 2;
    if (!--v3)
    {
      return 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t Event.displayName(within:)(uint64_t a1)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 25);
  v7 = *(v1 + 28);
  v6 = *(v1 + 32);
  LOBYTE(v28) = *(v1 + 24);
  result = specialized HeterogeneousBuffer.valuePointer<A>(for:)(0, v3, v4, v28, v6);
  v9 = 0;
  v11 = *(result + 8);
  v10 = *(result + 16);
  v12 = *(v1 + 124);
  v13 = *(v1 + 112);
  do
  {
    if (v12 == v9)
    {
      goto LABEL_16;
    }

    if (!*(v1 + 112))
    {
      goto LABEL_17;
    }

    ++v9;
    v14 = *v13;
    v13 += 4;
  }

  while ((v14 & 0x80808080) != 0x80);
  v15 = *(v13 - 1);
  if (v12 != v9)
  {
    while (v9 < v12)
    {
      if ((*v13 & 0x8080) == 0x80)
      {
        goto LABEL_18;
      }

      ++v9;
      v13 += 4;
      if (v12 == v9)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_9:
  if (v15 >= *(a1 + 44))
  {
    goto LABEL_15;
  }

  v16 = *(a1 + 32);
  if (!v16)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v17 = (v16 + (v15 << 7));
  v18 = v17[1];
  v28 = *v17;
  v29 = v18;
  v19 = v17[5];
  v32 = v17[4];
  v33 = v19;
  v20 = v17[7];
  v34 = v17[6];
  v35 = v20;
  v21 = v17[3];
  v30 = v17[2];
  v31 = v21;
  v27[0] = BYTE8(v29);
  v22 = HeterogeneousBuffer.type(at:)(0, *(&v28 + 1), v29, SBYTE8(v29), v30);
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v23 = result;
  v24 = HeterogeneousBuffer.index(after:)(0, *(&v28 + 1), v29, SBYTE8(v29), v30);
  v27[0] = BYTE8(v29);
  v25 = HeterogeneousBuffer.type(at:)(v24, *(&v28 + 1), v29, SBYTE8(v29), v30);
  result = swift_conformsToProtocol2();
  if (result)
  {
    v26 = project #1 <A, B>(_:_:) in Event.id.getter(v25, &v28, v22, v23, result, v27);
    (*(v10 + 24))(&v38, v27, a1, v11, v10, v26);
    v36 = v38;
    v37 = v39;
    return (*(v10 + 8))(&v36, a1, v11, v10);
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t static EventAbstraction.displayName(source:within:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a4 + 24))(&v10);
  v8 = v10;
  v9 = v11;
  return (*(a4 + 8))(&v8, a2, a3, a4);
}

Swift::Void __swiftcall Event.copy()()
{
  v1 = v0;
  HeterogeneousBuffer.copy()();
  v2 = *(v0 + 112);
  if (v2)
  {
    v3 = *(v1 + 120);
    v4 = *(v1 + 124);
    v5 = swift_slowAlloc();
    *(v1 + 112) = v5;

    memcpy(v5, v2, 8 * v4);
  }
}

uint64_t protocol witness for Deallocatable.deallocate() in conformance Event()
{
  HeterogeneousBuffer.deallocate()();
  result = *(v0 + 112);
  if (result)
  {
    result = MEMORY[0x26D69EAB0](result, -1, -1);
    *(v0 + 112) = 0;
  }

  return result;
}

void protocol witness for Clonable.copy() in conformance Event()
{
  v1 = v0;
  HeterogeneousBuffer.copy()();
  v2 = *(v0 + 112);
  if (v2)
  {
    v3 = *(v1 + 120);
    v4 = *(v1 + 124);
    v5 = swift_slowAlloc();
    *(v1 + 112) = v5;

    memcpy(v5, v2, 8 * v4);
  }
}

uint64_t protocol witness for Inspectable.describe(state:) in conformance Event(uint64_t *a1)
{
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = v1[7];
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  return Event.describe(state:)(a1);
}

uint64_t static EventAbstraction.relationship.getter()
{
  return 3075;
}

{
  return 3075;
}

uint64_t specialized static EventAbstraction.buildCache(update:within:)@<X0>(uint64_t result@<X0>, unsigned __int8 *a2@<X1>, __int128 *a3@<X8>)
{
  if (a2[48])
  {
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    return result;
  }

  v6 = *(a2 + 22);
  v7 = *a2;
  if (v7 >= *(v6 + 29))
  {
LABEL_50:
    __break(1u);
LABEL_51:
    v37 = a2;
    result = swift_once();
    a2 = v37;
    goto LABEL_5;
  }

  v8 = *(v6 + 13);
  if (!v8)
  {
    goto LABEL_63;
  }

  v3 = result;
  v4 = *(*(v8 + 8 * v7) + 8);
  if (one-time initialization token for types != -1)
  {
    goto LABEL_51;
  }

LABEL_5:
  v9 = static ViewList.types;
  v10 = *(static ViewList.types + 2);
  if (v10)
  {
    v39 = v6;
    v40 = a3;
    v41 = a2;
    v11 = 0;
    v6 = static ViewList.types + 32;
    while (1)
    {
      if (v11 >= v9[2])
      {
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      if (*(v4 + 44) <= v3)
      {
        goto LABEL_44;
      }

      v12 = *(v4 + 32);
      if (!v12)
      {
        break;
      }

      v13 = v12 + (v3 << 7);
      v16 = *(v13 + 8);
      v15 = v13 + 8;
      v14 = v16;
      if (!*(v15 + 24))
      {
        goto LABEL_45;
      }

      if (*(v15 + 16))
      {
        goto LABEL_57;
      }

      if (!v14)
      {
        goto LABEL_56;
      }

      if (*v14 == &type metadata for Event.AttributeValue)
      {
        v17 = *(v6 + 3);
        v44 = *(v6 + 2);
        v45[0] = v17;
        *(v45 + 14) = *(v6 + 62);
        v18 = *(v6 + 1);
        v42 = *v6;
        v43 = v18;
        v19 = *(v14 + 8);
        if (v19 >= *(v4 + 84))
        {
          goto LABEL_46;
        }

        v20 = *(v4 + 72);
        if (!v20)
        {
          goto LABEL_58;
        }

        a3 = &v42;
        result = Attribute.Pattern.match(_:within:)(*(v20 + 312 * v19 + 32), v4);
        if (result)
        {
          a2 = v41;
          if (v41[48])
          {
            goto LABEL_65;
          }

          v21 = *v41;
          if (v21 >= *(v39 + 29))
          {
LABEL_53:
            __break(1u);
          }

          else
          {
            v22 = *(v39 + 13);
            if (!v22)
            {
              goto LABEL_66;
            }

            v4 = *(*(v22 + 8 * v21) + 8);
            if (one-time initialization token for types == -1)
            {
LABEL_22:
              v23 = static ViewBodies.types;
              v24 = *(static ViewBodies.types + 2);
              if (!v24)
              {
                v35 = 1;
                a3 = v40;
                goto LABEL_38;
              }

              v6 = 0;
              v25 = static ViewBodies.types + 32;
              while (v6 < v23[2])
              {
                if (*(v4 + 44) <= v3)
                {
                  goto LABEL_48;
                }

                v26 = *(v4 + 32);
                if (!v26)
                {
                  goto LABEL_59;
                }

                v27 = v26 + (v3 << 7);
                v30 = *(v27 + 8);
                v29 = v27 + 8;
                v28 = v30;
                if (!*(v29 + 24))
                {
                  goto LABEL_49;
                }

                if (*(v29 + 16))
                {
                  goto LABEL_61;
                }

                if (!v28)
                {
                  goto LABEL_60;
                }

                if (*v28 == &type metadata for Event.AttributeValue)
                {
                  v31 = *(v25 + 3);
                  v44 = *(v25 + 2);
                  v45[0] = v31;
                  *(v45 + 14) = *(v25 + 62);
                  v32 = *(v25 + 1);
                  v42 = *v25;
                  v43 = v32;
                  v33 = *(v28 + 8);
                  if (v33 >= *(v4 + 84))
                  {
                    __break(1u);
                    goto LABEL_53;
                  }

                  v34 = *(v4 + 72);
                  if (!v34)
                  {
                    goto LABEL_64;
                  }

                  a3 = &v42;
                  result = Attribute.Pattern.match(_:within:)(*(v34 + 312 * v33 + 32), v4);
                  if (result)
                  {
                    goto LABEL_35;
                  }
                }

                ++v6;
                v25 += 72;
                if (v24 == v6)
                {
                  v35 = 1;
                  goto LABEL_36;
                }
              }

              goto LABEL_47;
            }
          }

          v38 = a2;
          result = swift_once();
          a2 = v38;
          goto LABEL_22;
        }
      }

      ++v11;
      v6 += 72;
      if (v10 == v11)
      {
LABEL_35:
        v35 = 0;
LABEL_36:
        a3 = v40;
        a2 = v41;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v35 = 0;
LABEL_38:
  result = _s21SwiftUITracingSupport21TypedEventAbstractionPAAE12hasOwnership3for6withinSbAA0E3RefV_AA11InterpreterC8IteratorVztFZAA10ViewBodiesV_Tt1g5Tm(v3, a2, &one-time initialization token for types, &static ViewList.types);
  v36 = v35 | 2;
  if ((result & 1) == 0)
  {
    v36 = v35;
  }

  *a3 = v36;
  return result;
}

uint64_t static EventAbstraction.buildCache(update:within:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v10 = (*(a4 + 40))() & 1;
  result = (*(a4 + 72))(a1, a2, a3, a4);
  v12 = v10 | 2;
  if ((result & 1) == 0)
  {
    v12 = v10;
  }

  *a5 = v12;
  return result;
}

BOOL specialized static EventAbstraction.model(update:within:position:)(unint64_t a1, unsigned __int8 *a2, unsigned __int8 a3)
{
  v8 = a1;
  v47 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v46 = 0;
  if (a3)
  {
    a1 = specialized static Allocation.new(from:within:)(a1, a2);
    v46 = (a1 & 0x100000000) == 0;
  }

  if ((v9 & 2) == 0)
  {
    goto LABEL_44;
  }

  if (a2[48])
  {
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:

    v44 = v5;
    goto LABEL_69;
  }

  v10 = *(a2 + 22);
  v11 = *a2;
  if (v11 >= *(v10 + 116))
  {
    goto LABEL_53;
  }

  v12 = *(v10 + 104);
  if (!v12)
  {
    goto LABEL_66;
  }

  v13 = *(*(v12 + 8 * v11) + 8);
  if (*(v13 + 44) <= v8)
  {
    goto LABEL_54;
  }

  v14 = *(v13 + 32);
  if (!v14)
  {
    goto LABEL_67;
  }

  v9 = 0;
  v5 = v14 + (v8 << 7);
  v4 = *(v5 + 124);
  if (v4 >= 0x101)
  {
    goto LABEL_55;
  }

  do
  {
    isStackAllocationSafe = MEMORY[0x28223BE20](a1);
    v18 = (v45 - v17);
    v19 = 0;
    v20 = 0;
    v21 = *(v5 + 112);
LABEL_11:
    v22 = (v21 + 8 * v20);
    while (v4 != v20)
    {
      if (v20 >= v4)
      {
        goto LABEL_47;
      }

      if (!v21)
      {
        goto LABEL_61;
      }

      v23 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        goto LABEL_48;
      }

      v24 = *v22;
      v22 += 4;
      ++v20;
      if ((v24 & 0x8004) == 4)
      {
        if (__OFADD__(v19, 1))
        {
          goto LABEL_59;
        }

        v18[v19++] = *(v22 - 1);
        v20 = v23;
        goto LABEL_11;
      }
    }

    if (v19 < 0)
    {
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
    }

    v45[0] = v16;
    if (!v19)
    {
      goto LABEL_44;
    }

    v25 = &v18[v19];
    v6 = 32800;
    while (1)
    {
      if (a2[48])
      {
        goto LABEL_62;
      }

      v26 = *(a2 + 22);
      v27 = *a2;
      if (v27 >= *(v26 + 116))
      {
        goto LABEL_49;
      }

      v28 = *(v26 + 104);
      if (!v28)
      {
        goto LABEL_63;
      }

      v29 = *v18;
      v30 = *(*(v28 + 8 * v27) + 8);
      if (v29 >= *(v30 + 44))
      {
        goto LABEL_50;
      }

      v31 = *(v30 + 32);
      if (!v31)
      {
        goto LABEL_64;
      }

      v4 = *(v31 + (v29 << 7) + 124);
      v5 = 4 * v4;
      if (v4 < 0x101)
      {
        break;
      }

      v41 = v31 + (v29 << 7);
      isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
      if (isStackAllocationSafe)
      {
        break;
      }

      v5 = swift_slowAlloc();
      specialized closure #1 in static Event.each(_:of:do:)(v5, v4, v41, 16416, a2, v3, &v46, v8);
      if (v9)
      {
        goto LABEL_68;
      }

      isStackAllocationSafe = MEMORY[0x26D69EAB0](v5, -1, -1);
LABEL_39:
      if (++v18 == v25)
      {
        goto LABEL_44;
      }
    }

    MEMORY[0x28223BE20](isStackAllocationSafe);
    v34 = (v45 - v33);
    v35 = 0;
    v36 = 0;
    v37 = *(v32 + 112);
LABEL_29:
    v38 = (v37 + 8 * v36);
    while (1)
    {
      if (v4 == v36)
      {
        if (v35 < 0)
        {
          goto LABEL_51;
        }

        isStackAllocationSafe = specialized closure #1 in closure #1 in static EventAbstraction.model(update:within:position:)(v34, v35, v32, a2, v3, &v46, v8);
        goto LABEL_39;
      }

      if (v36 >= v4)
      {
        break;
      }

      if (!v37)
      {
        goto LABEL_60;
      }

      v39 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        goto LABEL_46;
      }

      v40 = *v38;
      v38 += 4;
      ++v36;
      if ((v40 & 0x8020) == 0x20)
      {
        if (__OFADD__(v35, 1))
        {
          goto LABEL_52;
        }

        v34[v35++] = *(v38 - 1);
        v36 = v39;
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    a1 = swift_stdlib_isStackAllocationSafe();
  }

  while ((a1 & 1) != 0);
  v6 = swift_slowAlloc();
  specialized closure #1 in static Event.each(_:of:do:)(v6, v4, v5, 16388, a2, v3, &v46, v8);
  if (v9)
  {
    while (1)
    {

      v44 = v6;
LABEL_69:
      MEMORY[0x26D69EAB0](v44, -1, -1);
      __break(1u);
    }
  }

  MEMORY[0x26D69EAB0](v6, -1, -1);
LABEL_44:
  result = v46;
  v43 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t specialized static EventAbstraction.model(update:within:position:)(uint64_t isStackAllocationSafe, unsigned __int8 *a2, uint64_t a3)
{
  v8 = v3;
  v10 = isStackAllocationSafe;
  v51 = *MEMORY[0x277D85DE8];
  v50 = 0;
  if ((a3 & 1) == 0)
  {
    goto LABEL_9;
  }

  if (one-time initialization token for types != -1)
  {
    goto LABEL_60;
  }

  if (!a2[48])
  {
    goto LABEL_4;
  }

LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
  while (1)
  {
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      break;
    }

    while (2)
    {
      v19 = MEMORY[0x28223BE20](isStackAllocationSafe);
      v22 = (v49 - v21);
      v23 = 0;
      v24 = 0;
      v25 = *(v6 + 112);
LABEL_17:
      v26 = (v25 + 8 * v24);
      while (v5 != v24)
      {
        if (v24 >= v5)
        {
          goto LABEL_54;
        }

        if (!v25)
        {
          goto LABEL_71;
        }

        v27 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          goto LABEL_55;
        }

        v29 = *v26;
        v26 += 4;
        v28 = v29;
        ++v24;
        if ((v29 & 0x8000) == 0 && (v28 & 0xC03) != 0)
        {
          if (__OFADD__(v23, 1))
          {
            goto LABEL_69;
          }

          v22[v23++] = *(v26 - 1);
          v24 = v27;
          goto LABEL_17;
        }
      }

      if (v23 < 0)
      {
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
      }

      v49[0] = v20;
      if (!v23)
      {
        goto LABEL_51;
      }

      v30 = &v22[v23];
      v7 = 32800;
      while (1)
      {
        if (a2[48])
        {
          goto LABEL_72;
        }

        v31 = *(a2 + 22);
        v32 = *a2;
        if (v32 >= *(v31 + 116))
        {
          goto LABEL_56;
        }

        v33 = *(v31 + 104);
        if (!v33)
        {
          goto LABEL_73;
        }

        v34 = *v22;
        v35 = *(*(v33 + 8 * v32) + 8);
        if (v34 >= *(v35 + 44))
        {
          goto LABEL_57;
        }

        v36 = *(v35 + 32);
        if (!v36)
        {
          goto LABEL_74;
        }

        v5 = *(v36 + (v34 << 7) + 124);
        v6 = 4 * v5;
        if (v5 < 0x101)
        {
          break;
        }

        v45 = v36 + (v34 << 7);
        v19 = swift_stdlib_isStackAllocationSafe();
        if (v19)
        {
          break;
        }

        v6 = swift_slowAlloc();
        specialized closure #1 in static Event.each(_:of:do:)(v6, v5, v45, 16416, a2, v8, &v50, v10);
        if (v4)
        {
          goto LABEL_79;
        }

        v19 = MEMORY[0x26D69EAB0](v6, -1, -1);
LABEL_46:
        if (++v22 == v30)
        {
          goto LABEL_51;
        }
      }

      MEMORY[0x28223BE20](v19);
      v38 = (v49 - v37);
      v39 = 0;
      v40 = 0;
      v41 = *(a3 + 112);
LABEL_36:
      v42 = (v41 + 8 * v40);
      while (1)
      {
        if (v5 == v40)
        {
          if (v39 < 0)
          {
            goto LABEL_58;
          }

          specialized closure #1 in closure #1 in static EventAbstraction.model(update:within:position:)(v38, v39, a3, a2, v8, &v50, v10);
          goto LABEL_46;
        }

        if (v40 >= v5)
        {
          break;
        }

        if (!v41)
        {
          goto LABEL_70;
        }

        v43 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          goto LABEL_53;
        }

        v44 = *v42;
        v42 += 4;
        ++v40;
        if ((v44 & 0x8020) == 0x20)
        {
          if (__OFADD__(v39, 1))
          {
            goto LABEL_59;
          }

          v38[v39++] = *(v42 - 1);
          v40 = v43;
          goto LABEL_36;
        }
      }

      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      v4 = a3;
      swift_once();
      a3 = v4;
      if (a2[48])
      {
        goto LABEL_61;
      }

LABEL_4:
      v11 = *(a2 + 22);
      v12 = *a2;
      if (v12 >= *(v11 + 116))
      {
        goto LABEL_62;
      }

      v13 = *(v11 + 104);
      if (!v13)
      {
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:

        v48 = v6;
        goto LABEL_80;
      }

      v5 = a3;
      isStackAllocationSafe = _s21SwiftUITracingSupport16EventAbstractionPAAE6update_31madePendingBySomethingOtherThan6withinSayAA0D3RefVGSgAH_SayAA9AttributeV7PatternVGAA8SnapshotVtFZAA8ViewListV_Tt2g5Tm(v10, static ViewList.types, *(*(v13 + 8 * v12) + 8));
      if (isStackAllocationSafe)
      {
        specialized Interpreter.Iterator.new<A>(abstract:rootedAt:discreet:restriction:)(v8, v10, 0, isStackAllocationSafe, &protocol witness table for ViewList);

        v50 = 1;
        goto LABEL_51;
      }

      v50 = 0;
      LOBYTE(a3) = v5;
LABEL_9:
      if ((a3 & 2) == 0)
      {
        goto LABEL_51;
      }

      if (a2[48])
      {
        goto LABEL_76;
      }

      v14 = *(a2 + 22);
      v15 = *a2;
      if (v15 >= *(v14 + 116))
      {
        goto LABEL_63;
      }

      v16 = *(v14 + 104);
      if (!v16)
      {
        goto LABEL_77;
      }

      v17 = *(*(v16 + 8 * v15) + 8);
      if (*(v17 + 44) <= v10)
      {
        goto LABEL_64;
      }

      v18 = *(v17 + 32);
      if (!v18)
      {
        goto LABEL_78;
      }

      v4 = 0;
      v6 = v18 + (v10 << 7);
      v5 = *(v6 + 124);
      v7 = 4 * v5;
      if (v5 < 0x101)
      {
        continue;
      }

      break;
    }
  }

  v7 = swift_slowAlloc();
  specialized closure #1 in static Event.each(_:of:do:)(v7, v5, v6, 19459, a2, v8, &v50, v10);
  if (v4)
  {
    while (1)
    {

      v48 = v7;
LABEL_80:
      MEMORY[0x26D69EAB0](v48, -1, -1);
      __break(1u);
    }
  }

  MEMORY[0x26D69EAB0](v7, -1, -1);
LABEL_51:
  result = v50;
  v47 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v8 = v3;
  v10 = isStackAllocationSafe;
  v51 = *MEMORY[0x277D85DE8];
  v50 = 0;
  if ((a3 & 1) == 0)
  {
    goto LABEL_9;
  }

  if (one-time initialization token for types != -1)
  {
    goto LABEL_60;
  }

  if (!a2[48])
  {
    goto LABEL_4;
  }

LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
  while (1)
  {
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      break;
    }

    while (2)
    {
      v19 = MEMORY[0x28223BE20](isStackAllocationSafe);
      v22 = (v49 - v21);
      v23 = 0;
      v24 = 0;
      v25 = *(v6 + 112);
LABEL_17:
      v26 = (v25 + 8 * v24);
      while (v5 != v24)
      {
        if (v24 >= v5)
        {
          goto LABEL_54;
        }

        if (!v25)
        {
          goto LABEL_71;
        }

        v27 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          goto LABEL_55;
        }

        v29 = *v26;
        v26 += 4;
        v28 = v29;
        ++v24;
        if ((v29 & 0x8000) == 0 && (v28 & 0xC03) != 0)
        {
          if (__OFADD__(v23, 1))
          {
            goto LABEL_69;
          }

          v22[v23++] = *(v26 - 1);
          v24 = v27;
          goto LABEL_17;
        }
      }

      if (v23 < 0)
      {
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
      }

      v49[0] = v20;
      if (!v23)
      {
        goto LABEL_51;
      }

      v30 = &v22[v23];
      v7 = 32800;
      while (1)
      {
        if (a2[48])
        {
          goto LABEL_72;
        }

        v31 = *(a2 + 22);
        v32 = *a2;
        if (v32 >= *(v31 + 116))
        {
          goto LABEL_56;
        }

        v33 = *(v31 + 104);
        if (!v33)
        {
          goto LABEL_73;
        }

        v34 = *v22;
        v35 = *(*(v33 + 8 * v32) + 8);
        if (v34 >= *(v35 + 44))
        {
          goto LABEL_57;
        }

        v36 = *(v35 + 32);
        if (!v36)
        {
          goto LABEL_74;
        }

        v5 = *(v36 + (v34 << 7) + 124);
        v6 = 4 * v5;
        if (v5 < 0x101)
        {
          break;
        }

        v45 = v36 + (v34 << 7);
        v19 = swift_stdlib_isStackAllocationSafe();
        if (v19)
        {
          break;
        }

        v6 = swift_slowAlloc();
        specialized closure #1 in static Event.each(_:of:do:)(v6, v5, v45, 16416, a2, v8, &v50, v10);
        if (v4)
        {
          goto LABEL_79;
        }

        v19 = MEMORY[0x26D69EAB0](v6, -1, -1);
LABEL_46:
        if (++v22 == v30)
        {
          goto LABEL_51;
        }
      }

      MEMORY[0x28223BE20](v19);
      v38 = (v49 - v37);
      v39 = 0;
      v40 = 0;
      v41 = *(a3 + 112);
LABEL_36:
      v42 = (v41 + 8 * v40);
      while (1)
      {
        if (v5 == v40)
        {
          if (v39 < 0)
          {
            goto LABEL_58;
          }

          specialized closure #1 in closure #1 in static EventAbstraction.model(update:within:position:)(v38, v39, a3, a2, v8, &v50, v10);
          goto LABEL_46;
        }

        if (v40 >= v5)
        {
          break;
        }

        if (!v41)
        {
          goto LABEL_70;
        }

        v43 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          goto LABEL_53;
        }

        v44 = *v42;
        v42 += 4;
        ++v40;
        if ((v44 & 0x8020) == 0x20)
        {
          if (__OFADD__(v39, 1))
          {
            goto LABEL_59;
          }

          v38[v39++] = *(v42 - 1);
          v40 = v43;
          goto LABEL_36;
        }
      }

      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      v4 = a3;
      swift_once();
      a3 = v4;
      if (a2[48])
      {
        goto LABEL_61;
      }

LABEL_4:
      v11 = *(a2 + 22);
      v12 = *a2;
      if (v12 >= *(v11 + 116))
      {
        goto LABEL_62;
      }

      v13 = *(v11 + 104);
      if (!v13)
      {
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:

        v48 = v6;
        goto LABEL_80;
      }

      v5 = a3;
      isStackAllocationSafe = _s21SwiftUITracingSupport16EventAbstractionPAAE6update_31madePendingBySomethingOtherThan6withinSayAA0D3RefVGSgAH_SayAA9AttributeV7PatternVGAA8SnapshotVtFZAA8ViewListV_Tt2g5Tm(v10, static Layout.types, *(*(v13 + 8 * v12) + 8));
      if (isStackAllocationSafe)
      {
        specialized Interpreter.Iterator.new<A>(abstract:rootedAt:discreet:restriction:)(v8, v10, 0, isStackAllocationSafe, &protocol witness table for Layout);

        v50 = 1;
        goto LABEL_51;
      }

      v50 = 0;
      LOBYTE(a3) = v5;
LABEL_9:
      if ((a3 & 2) == 0)
      {
        goto LABEL_51;
      }

      if (a2[48])
      {
        goto LABEL_76;
      }

      v14 = *(a2 + 22);
      v15 = *a2;
      if (v15 >= *(v14 + 116))
      {
        goto LABEL_63;
      }

      v16 = *(v14 + 104);
      if (!v16)
      {
        goto LABEL_77;
      }

      v17 = *(*(v16 + 8 * v15) + 8);
      if (*(v17 + 44) <= v10)
      {
        goto LABEL_64;
      }

      v18 = *(v17 + 32);
      if (!v18)
      {
        goto LABEL_78;
      }

      v4 = 0;
      v6 = v18 + (v10 << 7);
      v5 = *(v6 + 124);
      v7 = 4 * v5;
      if (v5 < 0x101)
      {
        continue;
      }

      break;
    }
  }

  v7 = swift_slowAlloc();
  specialized closure #1 in static Event.each(_:of:do:)(v7, v5, v6, 19459, a2, v8, &v50, v10);
  if (v4)
  {
    while (1)
    {

      v48 = v7;
LABEL_80:
      MEMORY[0x26D69EAB0](v48, -1, -1);
      __break(1u);
    }
  }

  MEMORY[0x26D69EAB0](v7, -1, -1);
LABEL_51:
  result = v50;
  v47 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v8 = v3;
  v10 = isStackAllocationSafe;
  v51 = *MEMORY[0x277D85DE8];
  v50 = 0;
  if ((a3 & 1) == 0)
  {
    goto LABEL_9;
  }

  if (one-time initialization token for types != -1)
  {
    goto LABEL_60;
  }

  if (!a2[48])
  {
    goto LABEL_4;
  }

LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
  while (1)
  {
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      break;
    }

    while (2)
    {
      v19 = MEMORY[0x28223BE20](isStackAllocationSafe);
      v22 = (v49 - v21);
      v23 = 0;
      v24 = 0;
      v25 = *(v6 + 112);
LABEL_17:
      v26 = (v25 + 8 * v24);
      while (v5 != v24)
      {
        if (v24 >= v5)
        {
          goto LABEL_54;
        }

        if (!v25)
        {
          goto LABEL_71;
        }

        v27 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          goto LABEL_55;
        }

        v29 = *v26;
        v26 += 4;
        v28 = v29;
        ++v24;
        if ((v29 & 0x8000) == 0 && (v28 & 0xC03) != 0)
        {
          if (__OFADD__(v23, 1))
          {
            goto LABEL_69;
          }

          v22[v23++] = *(v26 - 1);
          v24 = v27;
          goto LABEL_17;
        }
      }

      if (v23 < 0)
      {
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
      }

      v49[0] = v20;
      if (!v23)
      {
        goto LABEL_51;
      }

      v30 = &v22[v23];
      v7 = 32800;
      while (1)
      {
        if (a2[48])
        {
          goto LABEL_72;
        }

        v31 = *(a2 + 22);
        v32 = *a2;
        if (v32 >= *(v31 + 116))
        {
          goto LABEL_56;
        }

        v33 = *(v31 + 104);
        if (!v33)
        {
          goto LABEL_73;
        }

        v34 = *v22;
        v35 = *(*(v33 + 8 * v32) + 8);
        if (v34 >= *(v35 + 44))
        {
          goto LABEL_57;
        }

        v36 = *(v35 + 32);
        if (!v36)
        {
          goto LABEL_74;
        }

        v5 = *(v36 + (v34 << 7) + 124);
        v6 = 4 * v5;
        if (v5 < 0x101)
        {
          break;
        }

        v45 = v36 + (v34 << 7);
        v19 = swift_stdlib_isStackAllocationSafe();
        if (v19)
        {
          break;
        }

        v6 = swift_slowAlloc();
        specialized closure #1 in static Event.each(_:of:do:)(v6, v5, v45, 16416, a2, v8, &v50, v10);
        if (v4)
        {
          goto LABEL_79;
        }

        v19 = MEMORY[0x26D69EAB0](v6, -1, -1);
LABEL_46:
        if (++v22 == v30)
        {
          goto LABEL_51;
        }
      }

      MEMORY[0x28223BE20](v19);
      v38 = (v49 - v37);
      v39 = 0;
      v40 = 0;
      v41 = *(a3 + 112);
LABEL_36:
      v42 = (v41 + 8 * v40);
      while (1)
      {
        if (v5 == v40)
        {
          if (v39 < 0)
          {
            goto LABEL_58;
          }

          specialized closure #1 in closure #1 in static EventAbstraction.model(update:within:position:)(v38, v39, a3, a2, v8, &v50, v10);
          goto LABEL_46;
        }

        if (v40 >= v5)
        {
          break;
        }

        if (!v41)
        {
          goto LABEL_70;
        }

        v43 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          goto LABEL_53;
        }

        v44 = *v42;
        v42 += 4;
        ++v40;
        if ((v44 & 0x8020) == 0x20)
        {
          if (__OFADD__(v39, 1))
          {
            goto LABEL_59;
          }

          v38[v39++] = *(v42 - 1);
          v40 = v43;
          goto LABEL_36;
        }
      }

      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      v4 = a3;
      swift_once();
      a3 = v4;
      if (a2[48])
      {
        goto LABEL_61;
      }

LABEL_4:
      v11 = *(a2 + 22);
      v12 = *a2;
      if (v12 >= *(v11 + 116))
      {
        goto LABEL_62;
      }

      v13 = *(v11 + 104);
      if (!v13)
      {
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:

        v48 = v6;
        goto LABEL_80;
      }

      v5 = a3;
      isStackAllocationSafe = _s21SwiftUITracingSupport16EventAbstractionPAAE6update_31madePendingBySomethingOtherThan6withinSayAA0D3RefVGSgAH_SayAA9AttributeV7PatternVGAA8SnapshotVtFZAA8ViewListV_Tt2g5Tm(v10, static AccessibilityNodeList.types, *(*(v13 + 8 * v12) + 8));
      if (isStackAllocationSafe)
      {
        specialized Interpreter.Iterator.new<A>(abstract:rootedAt:discreet:restriction:)(v8, v10, 0, isStackAllocationSafe, &protocol witness table for AccessibilityNodeList);

        v50 = 1;
        goto LABEL_51;
      }

      v50 = 0;
      LOBYTE(a3) = v5;
LABEL_9:
      if ((a3 & 2) == 0)
      {
        goto LABEL_51;
      }

      if (a2[48])
      {
        goto LABEL_76;
      }

      v14 = *(a2 + 22);
      v15 = *a2;
      if (v15 >= *(v14 + 116))
      {
        goto LABEL_63;
      }

      v16 = *(v14 + 104);
      if (!v16)
      {
        goto LABEL_77;
      }

      v17 = *(*(v16 + 8 * v15) + 8);
      if (*(v17 + 44) <= v10)
      {
        goto LABEL_64;
      }

      v18 = *(v17 + 32);
      if (!v18)
      {
        goto LABEL_78;
      }

      v4 = 0;
      v6 = v18 + (v10 << 7);
      v5 = *(v6 + 124);
      v7 = 4 * v5;
      if (v5 < 0x101)
      {
        continue;
      }

      break;
    }
  }

  v7 = swift_slowAlloc();
  specialized closure #1 in static Event.each(_:of:do:)(v7, v5, v6, 19459, a2, v8, &v50, v10);
  if (v4)
  {
    while (1)
    {

      v48 = v7;
LABEL_80:
      MEMORY[0x26D69EAB0](v48, -1, -1);
      __break(1u);
    }
  }

  MEMORY[0x26D69EAB0](v7, -1, -1);
LABEL_51:
  result = v50;
  v47 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v8 = v3;
  v10 = isStackAllocationSafe;
  v51 = *MEMORY[0x277D85DE8];
  v50 = 0;
  if ((a3 & 1) == 0)
  {
    goto LABEL_9;
  }

  if (one-time initialization token for types != -1)
  {
    goto LABEL_60;
  }

  if (!a2[48])
  {
    goto LABEL_4;
  }

LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
  while (1)
  {
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      break;
    }

    while (2)
    {
      v19 = MEMORY[0x28223BE20](isStackAllocationSafe);
      v22 = (v49 - v21);
      v23 = 0;
      v24 = 0;
      v25 = *(v6 + 112);
LABEL_17:
      v26 = (v25 + 8 * v24);
      while (v5 != v24)
      {
        if (v24 >= v5)
        {
          goto LABEL_54;
        }

        if (!v25)
        {
          goto LABEL_71;
        }

        v27 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          goto LABEL_55;
        }

        v29 = *v26;
        v26 += 4;
        v28 = v29;
        ++v24;
        if ((v29 & 0x8000) == 0 && (v28 & 0xC03) != 0)
        {
          if (__OFADD__(v23, 1))
          {
            goto LABEL_69;
          }

          v22[v23++] = *(v26 - 1);
          v24 = v27;
          goto LABEL_17;
        }
      }

      if (v23 < 0)
      {
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
      }

      v49[0] = v20;
      if (!v23)
      {
        goto LABEL_51;
      }

      v30 = &v22[v23];
      v7 = 32800;
      while (1)
      {
        if (a2[48])
        {
          goto LABEL_72;
        }

        v31 = *(a2 + 22);
        v32 = *a2;
        if (v32 >= *(v31 + 116))
        {
          goto LABEL_56;
        }

        v33 = *(v31 + 104);
        if (!v33)
        {
          goto LABEL_73;
        }

        v34 = *v22;
        v35 = *(*(v33 + 8 * v32) + 8);
        if (v34 >= *(v35 + 44))
        {
          goto LABEL_57;
        }

        v36 = *(v35 + 32);
        if (!v36)
        {
          goto LABEL_74;
        }

        v5 = *(v36 + (v34 << 7) + 124);
        v6 = 4 * v5;
        if (v5 < 0x101)
        {
          break;
        }

        v45 = v36 + (v34 << 7);
        v19 = swift_stdlib_isStackAllocationSafe();
        if (v19)
        {
          break;
        }

        v6 = swift_slowAlloc();
        specialized closure #1 in static Event.each(_:of:do:)(v6, v5, v45, 16416, a2, v8, &v50, v10);
        if (v4)
        {
          goto LABEL_79;
        }

        v19 = MEMORY[0x26D69EAB0](v6, -1, -1);
LABEL_46:
        if (++v22 == v30)
        {
          goto LABEL_51;
        }
      }

      MEMORY[0x28223BE20](v19);
      v38 = (v49 - v37);
      v39 = 0;
      v40 = 0;
      v41 = *(a3 + 112);
LABEL_36:
      v42 = (v41 + 8 * v40);
      while (1)
      {
        if (v5 == v40)
        {
          if (v39 < 0)
          {
            goto LABEL_58;
          }

          specialized closure #1 in closure #1 in static EventAbstraction.model(update:within:position:)(v38, v39, a3, a2, v8, &v50, v10);
          goto LABEL_46;
        }

        if (v40 >= v5)
        {
          break;
        }

        if (!v41)
        {
          goto LABEL_70;
        }

        v43 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          goto LABEL_53;
        }

        v44 = *v42;
        v42 += 4;
        ++v40;
        if ((v44 & 0x8020) == 0x20)
        {
          if (__OFADD__(v39, 1))
          {
            goto LABEL_59;
          }

          v38[v39++] = *(v42 - 1);
          v40 = v43;
          goto LABEL_36;
        }
      }

      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      v4 = a3;
      swift_once();
      a3 = v4;
      if (a2[48])
      {
        goto LABEL_61;
      }

LABEL_4:
      v11 = *(a2 + 22);
      v12 = *a2;
      if (v12 >= *(v11 + 116))
      {
        goto LABEL_62;
      }

      v13 = *(v11 + 104);
      if (!v13)
      {
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:

        v48 = v6;
        goto LABEL_80;
      }

      v5 = a3;
      isStackAllocationSafe = _s21SwiftUITracingSupport16EventAbstractionPAAE6update_31madePendingBySomethingOtherThan6withinSayAA0D3RefVGSgAH_SayAA9AttributeV7PatternVGAA8SnapshotVtFZAA8ViewListV_Tt2g5Tm(v10, static EnvironmentWriting.types, *(*(v13 + 8 * v12) + 8));
      if (isStackAllocationSafe)
      {
        specialized Interpreter.Iterator.new<A>(abstract:rootedAt:discreet:restriction:)(v8, v10, 0, isStackAllocationSafe, &protocol witness table for EnvironmentWriting);

        v50 = 1;
        goto LABEL_51;
      }

      v50 = 0;
      LOBYTE(a3) = v5;
LABEL_9:
      if ((a3 & 2) == 0)
      {
        goto LABEL_51;
      }

      if (a2[48])
      {
        goto LABEL_76;
      }

      v14 = *(a2 + 22);
      v15 = *a2;
      if (v15 >= *(v14 + 116))
      {
        goto LABEL_63;
      }

      v16 = *(v14 + 104);
      if (!v16)
      {
        goto LABEL_77;
      }

      v17 = *(*(v16 + 8 * v15) + 8);
      if (*(v17 + 44) <= v10)
      {
        goto LABEL_64;
      }

      v18 = *(v17 + 32);
      if (!v18)
      {
        goto LABEL_78;
      }

      v4 = 0;
      v6 = v18 + (v10 << 7);
      v5 = *(v6 + 124);
      v7 = 4 * v5;
      if (v5 < 0x101)
      {
        continue;
      }

      break;
    }
  }

  v7 = swift_slowAlloc();
  specialized closure #1 in static Event.each(_:of:do:)(v7, v5, v6, 19459, a2, v8, &v50, v10);
  if (v4)
  {
    while (1)
    {

      v48 = v7;
LABEL_80:
      MEMORY[0x26D69EAB0](v48, -1, -1);
      __break(1u);
    }
  }

  MEMORY[0x26D69EAB0](v7, -1, -1);
LABEL_51:
  result = v50;
  v47 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v8 = v3;
  v10 = isStackAllocationSafe;
  v51 = *MEMORY[0x277D85DE8];
  v50 = 0;
  if ((a3 & 1) == 0)
  {
    goto LABEL_9;
  }

  if (one-time initialization token for types != -1)
  {
    goto LABEL_60;
  }

  if (!a2[48])
  {
    goto LABEL_4;
  }

LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
  while (1)
  {
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      break;
    }

    while (2)
    {
      v19 = MEMORY[0x28223BE20](isStackAllocationSafe);
      v22 = (v49 - v21);
      v23 = 0;
      v24 = 0;
      v25 = *(v6 + 112);
LABEL_17:
      v26 = (v25 + 8 * v24);
      while (v5 != v24)
      {
        if (v24 >= v5)
        {
          goto LABEL_54;
        }

        if (!v25)
        {
          goto LABEL_71;
        }

        v27 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          goto LABEL_55;
        }

        v29 = *v26;
        v26 += 4;
        v28 = v29;
        ++v24;
        if ((v29 & 0x8000) == 0 && (v28 & 0xC03) != 0)
        {
          if (__OFADD__(v23, 1))
          {
            goto LABEL_69;
          }

          v22[v23++] = *(v26 - 1);
          v24 = v27;
          goto LABEL_17;
        }
      }

      if (v23 < 0)
      {
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
      }

      v49[0] = v20;
      if (!v23)
      {
        goto LABEL_51;
      }

      v30 = &v22[v23];
      v7 = 32800;
      while (1)
      {
        if (a2[48])
        {
          goto LABEL_72;
        }

        v31 = *(a2 + 22);
        v32 = *a2;
        if (v32 >= *(v31 + 116))
        {
          goto LABEL_56;
        }

        v33 = *(v31 + 104);
        if (!v33)
        {
          goto LABEL_73;
        }

        v34 = *v22;
        v35 = *(*(v33 + 8 * v32) + 8);
        if (v34 >= *(v35 + 44))
        {
          goto LABEL_57;
        }

        v36 = *(v35 + 32);
        if (!v36)
        {
          goto LABEL_74;
        }

        v5 = *(v36 + (v34 << 7) + 124);
        v6 = 4 * v5;
        if (v5 < 0x101)
        {
          break;
        }

        v45 = v36 + (v34 << 7);
        v19 = swift_stdlib_isStackAllocationSafe();
        if (v19)
        {
          break;
        }

        v6 = swift_slowAlloc();
        specialized closure #1 in static Event.each(_:of:do:)(v6, v5, v45, 16416, a2, v8, &v50, v10);
        if (v4)
        {
          goto LABEL_79;
        }

        v19 = MEMORY[0x26D69EAB0](v6, -1, -1);
LABEL_46:
        if (++v22 == v30)
        {
          goto LABEL_51;
        }
      }

      MEMORY[0x28223BE20](v19);
      v38 = (v49 - v37);
      v39 = 0;
      v40 = 0;
      v41 = *(a3 + 112);
LABEL_36:
      v42 = (v41 + 8 * v40);
      while (1)
      {
        if (v5 == v40)
        {
          if (v39 < 0)
          {
            goto LABEL_58;
          }

          specialized closure #1 in closure #1 in static EventAbstraction.model(update:within:position:)(v38, v39, a3, a2, v8, &v50, v10);
          goto LABEL_46;
        }

        if (v40 >= v5)
        {
          break;
        }

        if (!v41)
        {
          goto LABEL_70;
        }

        v43 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          goto LABEL_53;
        }

        v44 = *v42;
        v42 += 4;
        ++v40;
        if ((v44 & 0x8020) == 0x20)
        {
          if (__OFADD__(v39, 1))
          {
            goto LABEL_59;
          }

          v38[v39++] = *(v42 - 1);
          v40 = v43;
          goto LABEL_36;
        }
      }

      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      v4 = a3;
      swift_once();
      a3 = v4;
      if (a2[48])
      {
        goto LABEL_61;
      }

LABEL_4:
      v11 = *(a2 + 22);
      v12 = *a2;
      if (v12 >= *(v11 + 116))
      {
        goto LABEL_62;
      }

      v13 = *(v11 + 104);
      if (!v13)
      {
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:

        v48 = v6;
        goto LABEL_80;
      }

      v5 = a3;
      isStackAllocationSafe = _s21SwiftUITracingSupport16EventAbstractionPAAE6update_31madePendingBySomethingOtherThan6withinSayAA0D3RefVGSgAH_SayAA9AttributeV7PatternVGAA8SnapshotVtFZAA8ViewListV_Tt2g5Tm(v10, static ConditionalContent.types, *(*(v13 + 8 * v12) + 8));
      if (isStackAllocationSafe)
      {
        specialized Interpreter.Iterator.new<A>(abstract:rootedAt:discreet:restriction:)(v8, v10, 0, isStackAllocationSafe, &protocol witness table for ConditionalContent);

        v50 = 1;
        goto LABEL_51;
      }

      v50 = 0;
      LOBYTE(a3) = v5;
LABEL_9:
      if ((a3 & 2) == 0)
      {
        goto LABEL_51;
      }

      if (a2[48])
      {
        goto LABEL_76;
      }

      v14 = *(a2 + 22);
      v15 = *a2;
      if (v15 >= *(v14 + 116))
      {
        goto LABEL_63;
      }

      v16 = *(v14 + 104);
      if (!v16)
      {
        goto LABEL_77;
      }

      v17 = *(*(v16 + 8 * v15) + 8);
      if (*(v17 + 44) <= v10)
      {
        goto LABEL_64;
      }

      v18 = *(v17 + 32);
      if (!v18)
      {
        goto LABEL_78;
      }

      v4 = 0;
      v6 = v18 + (v10 << 7);
      v5 = *(v6 + 124);
      v7 = 4 * v5;
      if (v5 < 0x101)
      {
        continue;
      }

      break;
    }
  }

  v7 = swift_slowAlloc();
  specialized closure #1 in static Event.each(_:of:do:)(v7, v5, v6, 19459, a2, v8, &v50, v10);
  if (v4)
  {
    while (1)
    {

      v48 = v7;
LABEL_80:
      MEMORY[0x26D69EAB0](v48, -1, -1);
      __break(1u);
    }
  }

  MEMORY[0x26D69EAB0](v7, -1, -1);
LABEL_51:
  result = v50;
  v47 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v8 = v3;
  v10 = isStackAllocationSafe;
  v51 = *MEMORY[0x277D85DE8];
  v50 = 0;
  if ((a3 & 1) == 0)
  {
    goto LABEL_9;
  }

  if (one-time initialization token for types != -1)
  {
    goto LABEL_60;
  }

  if (!a2[48])
  {
    goto LABEL_4;
  }

LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
  while (1)
  {
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      break;
    }

    while (2)
    {
      v19 = MEMORY[0x28223BE20](isStackAllocationSafe);
      v22 = (v49 - v21);
      v23 = 0;
      v24 = 0;
      v25 = *(v6 + 112);
LABEL_17:
      v26 = (v25 + 8 * v24);
      while (v5 != v24)
      {
        if (v24 >= v5)
        {
          goto LABEL_54;
        }

        if (!v25)
        {
          goto LABEL_71;
        }

        v27 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          goto LABEL_55;
        }

        v29 = *v26;
        v26 += 4;
        v28 = v29;
        ++v24;
        if ((v29 & 0x8000) == 0 && (v28 & 0xC03) != 0)
        {
          if (__OFADD__(v23, 1))
          {
            goto LABEL_69;
          }

          v22[v23++] = *(v26 - 1);
          v24 = v27;
          goto LABEL_17;
        }
      }

      if (v23 < 0)
      {
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
      }

      v49[0] = v20;
      if (!v23)
      {
        goto LABEL_51;
      }

      v30 = &v22[v23];
      v7 = 32800;
      while (1)
      {
        if (a2[48])
        {
          goto LABEL_72;
        }

        v31 = *(a2 + 22);
        v32 = *a2;
        if (v32 >= *(v31 + 116))
        {
          goto LABEL_56;
        }

        v33 = *(v31 + 104);
        if (!v33)
        {
          goto LABEL_73;
        }

        v34 = *v22;
        v35 = *(*(v33 + 8 * v32) + 8);
        if (v34 >= *(v35 + 44))
        {
          goto LABEL_57;
        }

        v36 = *(v35 + 32);
        if (!v36)
        {
          goto LABEL_74;
        }

        v5 = *(v36 + (v34 << 7) + 124);
        v6 = 4 * v5;
        if (v5 < 0x101)
        {
          break;
        }

        v45 = v36 + (v34 << 7);
        v19 = swift_stdlib_isStackAllocationSafe();
        if (v19)
        {
          break;
        }

        v6 = swift_slowAlloc();
        specialized closure #1 in static Event.each(_:of:do:)(v6, v5, v45, 16416, a2, v8, &v50, v10);
        if (v4)
        {
          goto LABEL_79;
        }

        v19 = MEMORY[0x26D69EAB0](v6, -1, -1);
LABEL_46:
        if (++v22 == v30)
        {
          goto LABEL_51;
        }
      }

      MEMORY[0x28223BE20](v19);
      v38 = (v49 - v37);
      v39 = 0;
      v40 = 0;
      v41 = *(a3 + 112);
LABEL_36:
      v42 = (v41 + 8 * v40);
      while (1)
      {
        if (v5 == v40)
        {
          if (v39 < 0)
          {
            goto LABEL_58;
          }

          specialized closure #1 in closure #1 in static EventAbstraction.model(update:within:position:)(v38, v39, a3, a2, v8, &v50, v10);
          goto LABEL_46;
        }

        if (v40 >= v5)
        {
          break;
        }

        if (!v41)
        {
          goto LABEL_70;
        }

        v43 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          goto LABEL_53;
        }

        v44 = *v42;
        v42 += 4;
        ++v40;
        if ((v44 & 0x8020) == 0x20)
        {
          if (__OFADD__(v39, 1))
          {
            goto LABEL_59;
          }

          v38[v39++] = *(v42 - 1);
          v40 = v43;
          goto LABEL_36;
        }
      }

      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      v4 = a3;
      swift_once();
      a3 = v4;
      if (a2[48])
      {
        goto LABEL_61;
      }

LABEL_4:
      v11 = *(a2 + 22);
      v12 = *a2;
      if (v12 >= *(v11 + 116))
      {
        goto LABEL_62;
      }

      v13 = *(v11 + 104);
      if (!v13)
      {
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:

        v48 = v6;
        goto LABEL_80;
      }

      v5 = a3;
      isStackAllocationSafe = _s21SwiftUITracingSupport16EventAbstractionPAAE6update_31madePendingBySomethingOtherThan6withinSayAA0D3RefVGSgAH_SayAA9AttributeV7PatternVGAA8SnapshotVtFZAA8ViewListV_Tt2g5Tm(v10, static PlatformItemList.types, *(*(v13 + 8 * v12) + 8));
      if (isStackAllocationSafe)
      {
        specialized Interpreter.Iterator.new<A>(abstract:rootedAt:discreet:restriction:)(v8, v10, 0, isStackAllocationSafe, &protocol witness table for PlatformItemList);

        v50 = 1;
        goto LABEL_51;
      }

      v50 = 0;
      LOBYTE(a3) = v5;
LABEL_9:
      if ((a3 & 2) == 0)
      {
        goto LABEL_51;
      }

      if (a2[48])
      {
        goto LABEL_76;
      }

      v14 = *(a2 + 22);
      v15 = *a2;
      if (v15 >= *(v14 + 116))
      {
        goto LABEL_63;
      }

      v16 = *(v14 + 104);
      if (!v16)
      {
        goto LABEL_77;
      }

      v17 = *(*(v16 + 8 * v15) + 8);
      if (*(v17 + 44) <= v10)
      {
        goto LABEL_64;
      }

      v18 = *(v17 + 32);
      if (!v18)
      {
        goto LABEL_78;
      }

      v4 = 0;
      v6 = v18 + (v10 << 7);
      v5 = *(v6 + 124);
      v7 = 4 * v5;
      if (v5 < 0x101)
      {
        continue;
      }

      break;
    }
  }

  v7 = swift_slowAlloc();
  specialized closure #1 in static Event.each(_:of:do:)(v7, v5, v6, 19459, a2, v8, &v50, v10);
  if (v4)
  {
    while (1)
    {

      v48 = v7;
LABEL_80:
      MEMORY[0x26D69EAB0](v48, -1, -1);
      __break(1u);
    }
  }

  MEMORY[0x26D69EAB0](v7, -1, -1);
LABEL_51:
  result = v50;
  v47 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v8 = v3;
  v10 = isStackAllocationSafe;
  v51 = *MEMORY[0x277D85DE8];
  v50 = 0;
  if ((a3 & 1) == 0)
  {
    goto LABEL_9;
  }

  if (one-time initialization token for types != -1)
  {
    goto LABEL_60;
  }

  if (!a2[48])
  {
    goto LABEL_4;
  }

LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
  while (1)
  {
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      break;
    }

    while (2)
    {
      v19 = MEMORY[0x28223BE20](isStackAllocationSafe);
      v22 = (v49 - v21);
      v23 = 0;
      v24 = 0;
      v25 = *(v6 + 112);
LABEL_17:
      v26 = (v25 + 8 * v24);
      while (v5 != v24)
      {
        if (v24 >= v5)
        {
          goto LABEL_54;
        }

        if (!v25)
        {
          goto LABEL_71;
        }

        v27 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          goto LABEL_55;
        }

        v29 = *v26;
        v26 += 4;
        v28 = v29;
        ++v24;
        if ((v29 & 0x8000) == 0 && (v28 & 0xC03) != 0)
        {
          if (__OFADD__(v23, 1))
          {
            goto LABEL_69;
          }

          v22[v23++] = *(v26 - 1);
          v24 = v27;
          goto LABEL_17;
        }
      }

      if (v23 < 0)
      {
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
      }

      v49[0] = v20;
      if (!v23)
      {
        goto LABEL_51;
      }

      v30 = &v22[v23];
      v7 = 32800;
      while (1)
      {
        if (a2[48])
        {
          goto LABEL_72;
        }

        v31 = *(a2 + 22);
        v32 = *a2;
        if (v32 >= *(v31 + 116))
        {
          goto LABEL_56;
        }

        v33 = *(v31 + 104);
        if (!v33)
        {
          goto LABEL_73;
        }

        v34 = *v22;
        v35 = *(*(v33 + 8 * v32) + 8);
        if (v34 >= *(v35 + 44))
        {
          goto LABEL_57;
        }

        v36 = *(v35 + 32);
        if (!v36)
        {
          goto LABEL_74;
        }

        v5 = *(v36 + (v34 << 7) + 124);
        v6 = 4 * v5;
        if (v5 < 0x101)
        {
          break;
        }

        v45 = v36 + (v34 << 7);
        v19 = swift_stdlib_isStackAllocationSafe();
        if (v19)
        {
          break;
        }

        v6 = swift_slowAlloc();
        specialized closure #1 in static Event.each(_:of:do:)(v6, v5, v45, 16416, a2, v8, &v50, v10);
        if (v4)
        {
          goto LABEL_79;
        }

        v19 = MEMORY[0x26D69EAB0](v6, -1, -1);
LABEL_46:
        if (++v22 == v30)
        {
          goto LABEL_51;
        }
      }

      MEMORY[0x28223BE20](v19);
      v38 = (v49 - v37);
      v39 = 0;
      v40 = 0;
      v41 = *(a3 + 112);
LABEL_36:
      v42 = (v41 + 8 * v40);
      while (1)
      {
        if (v5 == v40)
        {
          if (v39 < 0)
          {
            goto LABEL_58;
          }

          specialized closure #1 in closure #1 in static EventAbstraction.model(update:within:position:)(v38, v39, a3, a2, v8, &v50, v10);
          goto LABEL_46;
        }

        if (v40 >= v5)
        {
          break;
        }

        if (!v41)
        {
          goto LABEL_70;
        }

        v43 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          goto LABEL_53;
        }

        v44 = *v42;
        v42 += 4;
        ++v40;
        if ((v44 & 0x8020) == 0x20)
        {
          if (__OFADD__(v39, 1))
          {
            goto LABEL_59;
          }

          v38[v39++] = *(v42 - 1);
          v40 = v43;
          goto LABEL_36;
        }
      }

      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      v4 = a3;
      swift_once();
      a3 = v4;
      if (a2[48])
      {
        goto LABEL_61;
      }

LABEL_4:
      v11 = *(a2 + 22);
      v12 = *a2;
      if (v12 >= *(v11 + 116))
      {
        goto LABEL_62;
      }

      v13 = *(v11 + 104);
      if (!v13)
      {
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:

        v48 = v6;
        goto LABEL_80;
      }

      v5 = a3;
      isStackAllocationSafe = _s21SwiftUITracingSupport16EventAbstractionPAAE6update_31madePendingBySomethingOtherThan6withinSayAA0D3RefVGSgAH_SayAA9AttributeV7PatternVGAA8SnapshotVtFZAA8ViewListV_Tt2g5Tm(v10, static ResolvedContent.types, *(*(v13 + 8 * v12) + 8));
      if (isStackAllocationSafe)
      {
        specialized Interpreter.Iterator.new<A>(abstract:rootedAt:discreet:restriction:)(v8, v10, 0, isStackAllocationSafe, &protocol witness table for ResolvedContent);

        v50 = 1;
        goto LABEL_51;
      }

      v50 = 0;
      LOBYTE(a3) = v5;
LABEL_9:
      if ((a3 & 2) == 0)
      {
        goto LABEL_51;
      }

      if (a2[48])
      {
        goto LABEL_76;
      }

      v14 = *(a2 + 22);
      v15 = *a2;
      if (v15 >= *(v14 + 116))
      {
        goto LABEL_63;
      }

      v16 = *(v14 + 104);
      if (!v16)
      {
        goto LABEL_77;
      }

      v17 = *(*(v16 + 8 * v15) + 8);
      if (*(v17 + 44) <= v10)
      {
        goto LABEL_64;
      }

      v18 = *(v17 + 32);
      if (!v18)
      {
        goto LABEL_78;
      }

      v4 = 0;
      v6 = v18 + (v10 << 7);
      v5 = *(v6 + 124);
      v7 = 4 * v5;
      if (v5 < 0x101)
      {
        continue;
      }

      break;
    }
  }

  v7 = swift_slowAlloc();
  specialized closure #1 in static Event.each(_:of:do:)(v7, v5, v6, 19459, a2, v8, &v50, v10);
  if (v4)
  {
    while (1)
    {

      v48 = v7;
LABEL_80:
      MEMORY[0x26D69EAB0](v48, -1, -1);
      __break(1u);
    }
  }

  MEMORY[0x26D69EAB0](v7, -1, -1);
LABEL_51:
  result = v50;
  v47 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v8 = v3;
  v10 = isStackAllocationSafe;
  v51 = *MEMORY[0x277D85DE8];
  v50 = 0;
  if ((a3 & 1) == 0)
  {
    goto LABEL_9;
  }

  if (one-time initialization token for hiddenTypes != -1)
  {
    goto LABEL_60;
  }

  if (!a2[48])
  {
    goto LABEL_4;
  }

LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
  while (1)
  {
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      break;
    }

    while (2)
    {
      v19 = MEMORY[0x28223BE20](isStackAllocationSafe);
      v22 = (v49 - v21);
      v23 = 0;
      v24 = 0;
      v25 = *(v6 + 112);
LABEL_17:
      v26 = (v25 + 8 * v24);
      while (v5 != v24)
      {
        if (v24 >= v5)
        {
          goto LABEL_54;
        }

        if (!v25)
        {
          goto LABEL_71;
        }

        v27 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          goto LABEL_55;
        }

        v29 = *v26;
        v26 += 4;
        v28 = v29;
        ++v24;
        if ((v29 & 0x8000) == 0 && (v28 & 0xC03) != 0)
        {
          if (__OFADD__(v23, 1))
          {
            goto LABEL_69;
          }

          v22[v23++] = *(v26 - 1);
          v24 = v27;
          goto LABEL_17;
        }
      }

      if (v23 < 0)
      {
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
      }

      v49[0] = v20;
      if (!v23)
      {
        goto LABEL_51;
      }

      v30 = &v22[v23];
      v7 = 32800;
      while (1)
      {
        if (a2[48])
        {
          goto LABEL_72;
        }

        v31 = *(a2 + 22);
        v32 = *a2;
        if (v32 >= *(v31 + 116))
        {
          goto LABEL_56;
        }

        v33 = *(v31 + 104);
        if (!v33)
        {
          goto LABEL_73;
        }

        v34 = *v22;
        v35 = *(*(v33 + 8 * v32) + 8);
        if (v34 >= *(v35 + 44))
        {
          goto LABEL_57;
        }

        v36 = *(v35 + 32);
        if (!v36)
        {
          goto LABEL_74;
        }

        v5 = *(v36 + (v34 << 7) + 124);
        v6 = 4 * v5;
        if (v5 < 0x101)
        {
          break;
        }

        v45 = v36 + (v34 << 7);
        v19 = swift_stdlib_isStackAllocationSafe();
        if (v19)
        {
          break;
        }

        v6 = swift_slowAlloc();
        specialized closure #1 in static Event.each(_:of:do:)(v6, v5, v45, 16416, a2, v8, &v50, v10);
        if (v4)
        {
          goto LABEL_79;
        }

        v19 = MEMORY[0x26D69EAB0](v6, -1, -1);
LABEL_46:
        if (++v22 == v30)
        {
          goto LABEL_51;
        }
      }

      MEMORY[0x28223BE20](v19);
      v38 = (v49 - v37);
      v39 = 0;
      v40 = 0;
      v41 = *(a3 + 112);
LABEL_36:
      v42 = (v41 + 8 * v40);
      while (1)
      {
        if (v5 == v40)
        {
          if (v39 < 0)
          {
            goto LABEL_58;
          }

          specialized closure #1 in closure #1 in static EventAbstraction.model(update:within:position:)(v38, v39, a3, a2, v8, &v50, v10);
          goto LABEL_46;
        }

        if (v40 >= v5)
        {
          break;
        }

        if (!v41)
        {
          goto LABEL_70;
        }

        v43 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          goto LABEL_53;
        }

        v44 = *v42;
        v42 += 4;
        ++v40;
        if ((v44 & 0x8020) == 0x20)
        {
          if (__OFADD__(v39, 1))
          {
            goto LABEL_59;
          }

          v38[v39++] = *(v42 - 1);
          v40 = v43;
          goto LABEL_36;
        }
      }

      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      v4 = a3;
      swift_once();
      a3 = v4;
      if (a2[48])
      {
        goto LABEL_61;
      }

LABEL_4:
      v11 = *(a2 + 22);
      v12 = *a2;
      if (v12 >= *(v11 + 116))
      {
        goto LABEL_62;
      }

      v13 = *(v11 + 104);
      if (!v13)
      {
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:

        v48 = v6;
        goto LABEL_80;
      }

      v5 = a3;
      isStackAllocationSafe = _s21SwiftUITracingSupport16EventAbstractionPAAE6update_31madePendingBySomethingOtherThan6withinSayAA0D3RefVGSgAH_SayAA9AttributeV7PatternVGAA8SnapshotVtFZAA8ViewListV_Tt2g5Tm(v10, static PreferenceList.hiddenTypes, *(*(v13 + 8 * v12) + 8));
      if (isStackAllocationSafe)
      {
        specialized Interpreter.Iterator.new<A>(abstract:rootedAt:discreet:restriction:)(v8, v10, 0, isStackAllocationSafe, &protocol witness table for PreferenceList);

        v50 = 1;
        goto LABEL_51;
      }

      v50 = 0;
      LOBYTE(a3) = v5;
LABEL_9:
      if ((a3 & 2) == 0)
      {
        goto LABEL_51;
      }

      if (a2[48])
      {
        goto LABEL_76;
      }

      v14 = *(a2 + 22);
      v15 = *a2;
      if (v15 >= *(v14 + 116))
      {
        goto LABEL_63;
      }

      v16 = *(v14 + 104);
      if (!v16)
      {
        goto LABEL_77;
      }

      v17 = *(*(v16 + 8 * v15) + 8);
      if (*(v17 + 44) <= v10)
      {
        goto LABEL_64;
      }

      v18 = *(v17 + 32);
      if (!v18)
      {
        goto LABEL_78;
      }

      v4 = 0;
      v6 = v18 + (v10 << 7);
      v5 = *(v6 + 124);
      v7 = 4 * v5;
      if (v5 < 0x101)
      {
        continue;
      }

      break;
    }
  }

  v7 = swift_slowAlloc();
  specialized closure #1 in static Event.each(_:of:do:)(v7, v5, v6, 19459, a2, v8, &v50, v10);
  if (v4)
  {
    while (1)
    {

      v48 = v7;
LABEL_80:
      MEMORY[0x26D69EAB0](v48, -1, -1);
      __break(1u);
    }
  }

  MEMORY[0x26D69EAB0](v7, -1, -1);
LABEL_51:
  result = v50;
  v47 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v8 = v3;
  v10 = isStackAllocationSafe;
  v51 = *MEMORY[0x277D85DE8];
  v50 = 0;
  if ((a3 & 1) == 0)
  {
    goto LABEL_9;
  }

  if (one-time initialization token for types != -1)
  {
    goto LABEL_60;
  }

  if (!a2[48])
  {
    goto LABEL_4;
  }

LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
  while (1)
  {
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      break;
    }

    while (2)
    {
      v19 = MEMORY[0x28223BE20](isStackAllocationSafe);
      v22 = (v49 - v21);
      v23 = 0;
      v24 = 0;
      v25 = *(v6 + 112);
LABEL_17:
      v26 = (v25 + 8 * v24);
      while (v5 != v24)
      {
        if (v24 >= v5)
        {
          goto LABEL_54;
        }

        if (!v25)
        {
          goto LABEL_71;
        }

        v27 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          goto LABEL_55;
        }

        v29 = *v26;
        v26 += 4;
        v28 = v29;
        ++v24;
        if ((v29 & 0x8000) == 0 && (v28 & 0xC03) != 0)
        {
          if (__OFADD__(v23, 1))
          {
            goto LABEL_69;
          }

          v22[v23++] = *(v26 - 1);
          v24 = v27;
          goto LABEL_17;
        }
      }

      if (v23 < 0)
      {
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
      }

      v49[0] = v20;
      if (!v23)
      {
        goto LABEL_51;
      }

      v30 = &v22[v23];
      v7 = 32800;
      while (1)
      {
        if (a2[48])
        {
          goto LABEL_72;
        }

        v31 = *(a2 + 22);
        v32 = *a2;
        if (v32 >= *(v31 + 116))
        {
          goto LABEL_56;
        }

        v33 = *(v31 + 104);
        if (!v33)
        {
          goto LABEL_73;
        }

        v34 = *v22;
        v35 = *(*(v33 + 8 * v32) + 8);
        if (v34 >= *(v35 + 44))
        {
          goto LABEL_57;
        }

        v36 = *(v35 + 32);
        if (!v36)
        {
          goto LABEL_74;
        }

        v5 = *(v36 + (v34 << 7) + 124);
        v6 = 4 * v5;
        if (v5 < 0x101)
        {
          break;
        }

        v45 = v36 + (v34 << 7);
        v19 = swift_stdlib_isStackAllocationSafe();
        if (v19)
        {
          break;
        }

        v6 = swift_slowAlloc();
        specialized closure #1 in static Event.each(_:of:do:)(v6, v5, v45, 16416, a2, v8, &v50, v10);
        if (v4)
        {
          goto LABEL_79;
        }

        v19 = MEMORY[0x26D69EAB0](v6, -1, -1);
LABEL_46:
        if (++v22 == v30)
        {
          goto LABEL_51;
        }
      }

      MEMORY[0x28223BE20](v19);
      v38 = (v49 - v37);
      v39 = 0;
      v40 = 0;
      v41 = *(a3 + 112);
LABEL_36:
      v42 = (v41 + 8 * v40);
      while (1)
      {
        if (v5 == v40)
        {
          if (v39 < 0)
          {
            goto LABEL_58;
          }

          specialized closure #1 in closure #1 in static EventAbstraction.model(update:within:position:)(v38, v39, a3, a2, v8, &v50, v10);
          goto LABEL_46;
        }

        if (v40 >= v5)
        {
          break;
        }

        if (!v41)
        {
          goto LABEL_70;
        }

        v43 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          goto LABEL_53;
        }

        v44 = *v42;
        v42 += 4;
        ++v40;
        if ((v44 & 0x8020) == 0x20)
        {
          if (__OFADD__(v39, 1))
          {
            goto LABEL_59;
          }

          v38[v39++] = *(v42 - 1);
          v40 = v43;
          goto LABEL_36;
        }
      }

      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      v4 = a3;
      swift_once();
      a3 = v4;
      if (a2[48])
      {
        goto LABEL_61;
      }

LABEL_4:
      v11 = *(a2 + 22);
      v12 = *a2;
      if (v12 >= *(v11 + 116))
      {
        goto LABEL_62;
      }

      v13 = *(v11 + 104);
      if (!v13)
      {
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:

        v48 = v6;
        goto LABEL_80;
      }

      v5 = a3;
      isStackAllocationSafe = _s21SwiftUITracingSupport16EventAbstractionPAAE6update_31madePendingBySomethingOtherThan6withinSayAA0D3RefVGSgAH_SayAA9AttributeV7PatternVGAA8SnapshotVtFZAA8ViewListV_Tt2g5Tm(v10, static ViewTransform.types, *(*(v13 + 8 * v12) + 8));
      if (isStackAllocationSafe)
      {
        specialized Interpreter.Iterator.new<A>(abstract:rootedAt:discreet:restriction:)(v8, v10, 0, isStackAllocationSafe, &protocol witness table for ViewTransform);

        v50 = 1;
        goto LABEL_51;
      }

      v50 = 0;
      LOBYTE(a3) = v5;
LABEL_9:
      if ((a3 & 2) == 0)
      {
        goto LABEL_51;
      }

      if (a2[48])
      {
        goto LABEL_76;
      }

      v14 = *(a2 + 22);
      v15 = *a2;
      if (v15 >= *(v14 + 116))
      {
        goto LABEL_63;
      }

      v16 = *(v14 + 104);
      if (!v16)
      {
        goto LABEL_77;
      }

      v17 = *(*(v16 + 8 * v15) + 8);
      if (*(v17 + 44) <= v10)
      {
        goto LABEL_64;
      }

      v18 = *(v17 + 32);
      if (!v18)
      {
        goto LABEL_78;
      }

      v4 = 0;
      v6 = v18 + (v10 << 7);
      v5 = *(v6 + 124);
      v7 = 4 * v5;
      if (v5 < 0x101)
      {
        continue;
      }

      break;
    }
  }

  v7 = swift_slowAlloc();
  specialized closure #1 in static Event.each(_:of:do:)(v7, v5, v6, 19459, a2, v8, &v50, v10);
  if (v4)
  {
    while (1)
    {

      v48 = v7;
LABEL_80:
      MEMORY[0x26D69EAB0](v48, -1, -1);
      __break(1u);
    }
  }

  MEMORY[0x26D69EAB0](v7, -1, -1);
LABEL_51:
  result = v50;
  v47 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v8 = v3;
  v10 = isStackAllocationSafe;
  v51 = *MEMORY[0x277D85DE8];
  v50 = 0;
  if ((a3 & 1) == 0)
  {
    goto LABEL_9;
  }

  if (one-time initialization token for types != -1)
  {
    goto LABEL_60;
  }

  if (!a2[48])
  {
    goto LABEL_4;
  }

LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
  while (1)
  {
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      break;
    }

    while (2)
    {
      v19 = MEMORY[0x28223BE20](isStackAllocationSafe);
      v22 = (v49 - v21);
      v23 = 0;
      v24 = 0;
      v25 = *(v6 + 112);
LABEL_17:
      v26 = (v25 + 8 * v24);
      while (v5 != v24)
      {
        if (v24 >= v5)
        {
          goto LABEL_54;
        }

        if (!v25)
        {
          goto LABEL_71;
        }

        v27 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          goto LABEL_55;
        }

        v29 = *v26;
        v26 += 4;
        v28 = v29;
        ++v24;
        if ((v29 & 0x8000) == 0 && (v28 & 0xC03) != 0)
        {
          if (__OFADD__(v23, 1))
          {
            goto LABEL_69;
          }

          v22[v23++] = *(v26 - 1);
          v24 = v27;
          goto LABEL_17;
        }
      }

      if (v23 < 0)
      {
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
      }

      v49[0] = v20;
      if (!v23)
      {
        goto LABEL_51;
      }

      v30 = &v22[v23];
      v7 = 32800;
      while (1)
      {
        if (a2[48])
        {
          goto LABEL_72;
        }

        v31 = *(a2 + 22);
        v32 = *a2;
        if (v32 >= *(v31 + 116))
        {
          goto LABEL_56;
        }

        v33 = *(v31 + 104);
        if (!v33)
        {
          goto LABEL_73;
        }

        v34 = *v22;
        v35 = *(*(v33 + 8 * v32) + 8);
        if (v34 >= *(v35 + 44))
        {
          goto LABEL_57;
        }

        v36 = *(v35 + 32);
        if (!v36)
        {
          goto LABEL_74;
        }

        v5 = *(v36 + (v34 << 7) + 124);
        v6 = 4 * v5;
        if (v5 < 0x101)
        {
          break;
        }

        v45 = v36 + (v34 << 7);
        v19 = swift_stdlib_isStackAllocationSafe();
        if (v19)
        {
          break;
        }

        v6 = swift_slowAlloc();
        specialized closure #1 in static Event.each(_:of:do:)(v6, v5, v45, 16416, a2, v8, &v50, v10);
        if (v4)
        {
          goto LABEL_79;
        }

        v19 = MEMORY[0x26D69EAB0](v6, -1, -1);
LABEL_46:
        if (++v22 == v30)
        {
          goto LABEL_51;
        }
      }

      MEMORY[0x28223BE20](v19);
      v38 = (v49 - v37);
      v39 = 0;
      v40 = 0;
      v41 = *(a3 + 112);
LABEL_36:
      v42 = (v41 + 8 * v40);
      while (1)
      {
        if (v5 == v40)
        {
          if (v39 < 0)
          {
            goto LABEL_58;
          }

          specialized closure #1 in closure #1 in static EventAbstraction.model(update:within:position:)(v38, v39, a3, a2, v8, &v50, v10);
          goto LABEL_46;
        }

        if (v40 >= v5)
        {
          break;
        }

        if (!v41)
        {
          goto LABEL_70;
        }

        v43 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          goto LABEL_53;
        }

        v44 = *v42;
        v42 += 4;
        ++v40;
        if ((v44 & 0x8020) == 0x20)
        {
          if (__OFADD__(v39, 1))
          {
            goto LABEL_59;
          }

          v38[v39++] = *(v42 - 1);
          v40 = v43;
          goto LABEL_36;
        }
      }

      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      v4 = a3;
      swift_once();
      a3 = v4;
      if (a2[48])
      {
        goto LABEL_61;
      }

LABEL_4:
      v11 = *(a2 + 22);
      v12 = *a2;
      if (v12 >= *(v11 + 116))
      {
        goto LABEL_62;
      }

      v13 = *(v11 + 104);
      if (!v13)
      {
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:

        v48 = v6;
        goto LABEL_80;
      }

      v5 = a3;
      isStackAllocationSafe = _s21SwiftUITracingSupport16EventAbstractionPAAE6update_31madePendingBySomethingOtherThan6withinSayAA0D3RefVGSgAH_SayAA9AttributeV7PatternVGAA8SnapshotVtFZAA8ViewListV_Tt2g5Tm(v10, static ViewResponder.types, *(*(v13 + 8 * v12) + 8));
      if (isStackAllocationSafe)
      {
        specialized Interpreter.Iterator.new<A>(abstract:rootedAt:discreet:restriction:)(v8, v10, 0, isStackAllocationSafe, &protocol witness table for ViewResponder);

        v50 = 1;
        goto LABEL_51;
      }

      v50 = 0;
      LOBYTE(a3) = v5;
LABEL_9:
      if ((a3 & 2) == 0)
      {
        goto LABEL_51;
      }

      if (a2[48])
      {
        goto LABEL_76;
      }

      v14 = *(a2 + 22);
      v15 = *a2;
      if (v15 >= *(v14 + 116))
      {
        goto LABEL_63;
      }

      v16 = *(v14 + 104);
      if (!v16)
      {
        goto LABEL_77;
      }

      v17 = *(*(v16 + 8 * v15) + 8);
      if (*(v17 + 44) <= v10)
      {
        goto LABEL_64;
      }

      v18 = *(v17 + 32);
      if (!v18)
      {
        goto LABEL_78;
      }

      v4 = 0;
      v6 = v18 + (v10 << 7);
      v5 = *(v6 + 124);
      v7 = 4 * v5;
      if (v5 < 0x101)
      {
        continue;
      }

      break;
    }
  }

  v7 = swift_slowAlloc();
  specialized closure #1 in static Event.each(_:of:do:)(v7, v5, v6, 19459, a2, v8, &v50, v10);
  if (v4)
  {
    while (1)
    {

      v48 = v7;
LABEL_80:
      MEMORY[0x26D69EAB0](v48, -1, -1);
      __break(1u);
    }
  }

  MEMORY[0x26D69EAB0](v7, -1, -1);
LABEL_51:
  result = v50;
  v47 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v8 = v3;
  v10 = isStackAllocationSafe;
  v51 = *MEMORY[0x277D85DE8];
  v50 = 0;
  if ((a3 & 1) == 0)
  {
    goto LABEL_9;
  }

  if (one-time initialization token for types != -1)
  {
    goto LABEL_60;
  }

  if (!a2[48])
  {
    goto LABEL_4;
  }

LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
  while (1)
  {
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      break;
    }

    while (2)
    {
      v19 = MEMORY[0x28223BE20](isStackAllocationSafe);
      v22 = (v49 - v21);
      v23 = 0;
      v24 = 0;
      v25 = *(v6 + 112);
LABEL_17:
      v26 = (v25 + 8 * v24);
      while (v5 != v24)
      {
        if (v24 >= v5)
        {
          goto LABEL_54;
        }

        if (!v25)
        {
          goto LABEL_71;
        }

        v27 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          goto LABEL_55;
        }

        v29 = *v26;
        v26 += 4;
        v28 = v29;
        ++v24;
        if ((v29 & 0x8000) == 0 && (v28 & 0xC03) != 0)
        {
          if (__OFADD__(v23, 1))
          {
            goto LABEL_69;
          }

          v22[v23++] = *(v26 - 1);
          v24 = v27;
          goto LABEL_17;
        }
      }

      if (v23 < 0)
      {
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
      }

      v49[0] = v20;
      if (!v23)
      {
        goto LABEL_51;
      }

      v30 = &v22[v23];
      v7 = 32800;
      while (1)
      {
        if (a2[48])
        {
          goto LABEL_72;
        }

        v31 = *(a2 + 22);
        v32 = *a2;
        if (v32 >= *(v31 + 116))
        {
          goto LABEL_56;
        }

        v33 = *(v31 + 104);
        if (!v33)
        {
          goto LABEL_73;
        }

        v34 = *v22;
        v35 = *(*(v33 + 8 * v32) + 8);
        if (v34 >= *(v35 + 44))
        {
          goto LABEL_57;
        }

        v36 = *(v35 + 32);
        if (!v36)
        {
          goto LABEL_74;
        }

        v5 = *(v36 + (v34 << 7) + 124);
        v6 = 4 * v5;
        if (v5 < 0x101)
        {
          break;
        }

        v45 = v36 + (v34 << 7);
        v19 = swift_stdlib_isStackAllocationSafe();
        if (v19)
        {
          break;
        }

        v6 = swift_slowAlloc();
        specialized closure #1 in static Event.each(_:of:do:)(v6, v5, v45, 16416, a2, v8, &v50, v10);
        if (v4)
        {
          goto LABEL_79;
        }

        v19 = MEMORY[0x26D69EAB0](v6, -1, -1);
LABEL_46:
        if (++v22 == v30)
        {
          goto LABEL_51;
        }
      }

      MEMORY[0x28223BE20](v19);
      v38 = (v49 - v37);
      v39 = 0;
      v40 = 0;
      v41 = *(a3 + 112);
LABEL_36:
      v42 = (v41 + 8 * v40);
      while (1)
      {
        if (v5 == v40)
        {
          if (v39 < 0)
          {
            goto LABEL_58;
          }

          specialized closure #1 in closure #1 in static EventAbstraction.model(update:within:position:)(v38, v39, a3, a2, v8, &v50, v10);
          goto LABEL_46;
        }

        if (v40 >= v5)
        {
          break;
        }

        if (!v41)
        {
          goto LABEL_70;
        }

        v43 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          goto LABEL_53;
        }

        v44 = *v42;
        v42 += 4;
        ++v40;
        if ((v44 & 0x8020) == 0x20)
        {
          if (__OFADD__(v39, 1))
          {
            goto LABEL_59;
          }

          v38[v39++] = *(v42 - 1);
          v40 = v43;
          goto LABEL_36;
        }
      }

      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      v4 = a3;
      swift_once();
      a3 = v4;
      if (a2[48])
      {
        goto LABEL_61;
      }

LABEL_4:
      v11 = *(a2 + 22);
      v12 = *a2;
      if (v12 >= *(v11 + 116))
      {
        goto LABEL_62;
      }

      v13 = *(v11 + 104);
      if (!v13)
      {
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:

        v48 = v6;
        goto LABEL_80;
      }

      v5 = a3;
      isStackAllocationSafe = _s21SwiftUITracingSupport16EventAbstractionPAAE6update_31madePendingBySomethingOtherThan6withinSayAA0D3RefVGSgAH_SayAA9AttributeV7PatternVGAA8SnapshotVtFZAA8ViewListV_Tt2g5Tm(v10, static PlatformViews.types, *(*(v13 + 8 * v12) + 8));
      if (isStackAllocationSafe)
      {
        specialized Interpreter.Iterator.new<A>(abstract:rootedAt:discreet:restriction:)(v8, v10, 0, isStackAllocationSafe);

        v50 = 1;
        goto LABEL_51;
      }

      v50 = 0;
      LOBYTE(a3) = v5;
LABEL_9:
      if ((a3 & 2) == 0)
      {
        goto LABEL_51;
      }

      if (a2[48])
      {
        goto LABEL_76;
      }

      v14 = *(a2 + 22);
      v15 = *a2;
      if (v15 >= *(v14 + 116))
      {
        goto LABEL_63;
      }

      v16 = *(v14 + 104);
      if (!v16)
      {
        goto LABEL_77;
      }

      v17 = *(*(v16 + 8 * v15) + 8);
      if (*(v17 + 44) <= v10)
      {
        goto LABEL_64;
      }

      v18 = *(v17 + 32);
      if (!v18)
      {
        goto LABEL_78;
      }

      v4 = 0;
      v6 = v18 + (v10 << 7);
      v5 = *(v6 + 124);
      v7 = 4 * v5;
      if (v5 < 0x101)
      {
        continue;
      }

      break;
    }
  }

  v7 = swift_slowAlloc();
  specialized closure #1 in static Event.each(_:of:do:)(v7, v5, v6, 19459, a2, v8, &v50, v10);
  if (v4)
  {
    while (1)
    {

      v48 = v7;
LABEL_80:
      MEMORY[0x26D69EAB0](v48, -1, -1);
      __break(1u);
    }
  }

  MEMORY[0x26D69EAB0](v7, -1, -1);
LABEL_51:
  result = v50;
  v47 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v8 = v3;
  v10 = isStackAllocationSafe;
  v51 = *MEMORY[0x277D85DE8];
  v50 = 0;
  if ((a3 & 1) == 0)
  {
    goto LABEL_9;
  }

  if (one-time initialization token for types != -1)
  {
    goto LABEL_60;
  }

  if (!a2[48])
  {
    goto LABEL_4;
  }

LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
  while (1)
  {
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      break;
    }

    while (2)
    {
      v19 = MEMORY[0x28223BE20](isStackAllocationSafe);
      v22 = (v49 - v21);
      v23 = 0;
      v24 = 0;
      v25 = *(v6 + 112);
LABEL_17:
      v26 = (v25 + 8 * v24);
      while (v5 != v24)
      {
        if (v24 >= v5)
        {
          goto LABEL_54;
        }

        if (!v25)
        {
          goto LABEL_71;
        }

        v27 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          goto LABEL_55;
        }

        v29 = *v26;
        v26 += 4;
        v28 = v29;
        ++v24;
        if ((v29 & 0x8000) == 0 && (v28 & 0xC03) != 0)
        {
          if (__OFADD__(v23, 1))
          {
            goto LABEL_69;
          }

          v22[v23++] = *(v26 - 1);
          v24 = v27;
          goto LABEL_17;
        }
      }

      if (v23 < 0)
      {
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
      }

      v49[0] = v20;
      if (!v23)
      {
        goto LABEL_51;
      }

      v30 = &v22[v23];
      v7 = 32800;
      while (1)
      {
        if (a2[48])
        {
          goto LABEL_72;
        }

        v31 = *(a2 + 22);
        v32 = *a2;
        if (v32 >= *(v31 + 116))
        {
          goto LABEL_56;
        }

        v33 = *(v31 + 104);
        if (!v33)
        {
          goto LABEL_73;
        }

        v34 = *v22;
        v35 = *(*(v33 + 8 * v32) + 8);
        if (v34 >= *(v35 + 44))
        {
          goto LABEL_57;
        }

        v36 = *(v35 + 32);
        if (!v36)
        {
          goto LABEL_74;
        }

        v5 = *(v36 + (v34 << 7) + 124);
        v6 = 4 * v5;
        if (v5 < 0x101)
        {
          break;
        }

        v45 = v36 + (v34 << 7);
        v19 = swift_stdlib_isStackAllocationSafe();
        if (v19)
        {
          break;
        }

        v6 = swift_slowAlloc();
        specialized closure #1 in static Event.each(_:of:do:)(v6, v5, v45, 16416, a2, v8, &v50, v10);
        if (v4)
        {
          goto LABEL_79;
        }

        v19 = MEMORY[0x26D69EAB0](v6, -1, -1);
LABEL_46:
        if (++v22 == v30)
        {
          goto LABEL_51;
        }
      }

      MEMORY[0x28223BE20](v19);
      v38 = (v49 - v37);
      v39 = 0;
      v40 = 0;
      v41 = *(a3 + 112);
LABEL_36:
      v42 = (v41 + 8 * v40);
      while (1)
      {
        if (v5 == v40)
        {
          if (v39 < 0)
          {
            goto LABEL_58;
          }

          specialized closure #1 in closure #1 in static EventAbstraction.model(update:within:position:)(v38, v39, a3, a2, v8, &v50, v10);
          goto LABEL_46;
        }

        if (v40 >= v5)
        {
          break;
        }

        if (!v41)
        {
          goto LABEL_70;
        }

        v43 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          goto LABEL_53;
        }

        v44 = *v42;
        v42 += 4;
        ++v40;
        if ((v44 & 0x8020) == 0x20)
        {
          if (__OFADD__(v39, 1))
          {
            goto LABEL_59;
          }

          v38[v39++] = *(v42 - 1);
          v40 = v43;
          goto LABEL_36;
        }
      }

      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      v4 = a3;
      swift_once();
      a3 = v4;
      if (a2[48])
      {
        goto LABEL_61;
      }

LABEL_4:
      v11 = *(a2 + 22);
      v12 = *a2;
      if (v12 >= *(v11 + 116))
      {
        goto LABEL_62;
      }

      v13 = *(v11 + 104);
      if (!v13)
      {
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:

        v48 = v6;
        goto LABEL_80;
      }

      v5 = a3;
      isStackAllocationSafe = _s21SwiftUITracingSupport16EventAbstractionPAAE6update_31madePendingBySomethingOtherThan6withinSayAA0D3RefVGSgAH_SayAA9AttributeV7PatternVGAA8SnapshotVtFZAA8ViewListV_Tt2g5Tm(v10, static ViewCreation.types, *(*(v13 + 8 * v12) + 8));
      if (isStackAllocationSafe)
      {
        specialized Interpreter.Iterator.new<A>(abstract:rootedAt:discreet:restriction:)(v8, v10, 0, isStackAllocationSafe, &protocol witness table for ViewCreation);

        v50 = 1;
        goto LABEL_51;
      }

      v50 = 0;
      LOBYTE(a3) = v5;
LABEL_9:
      if ((a3 & 2) == 0)
      {
        goto LABEL_51;
      }

      if (a2[48])
      {
        goto LABEL_76;
      }

      v14 = *(a2 + 22);
      v15 = *a2;
      if (v15 >= *(v14 + 116))
      {
        goto LABEL_63;
      }

      v16 = *(v14 + 104);
      if (!v16)
      {
        goto LABEL_77;
      }

      v17 = *(*(v16 + 8 * v15) + 8);
      if (*(v17 + 44) <= v10)
      {
        goto LABEL_64;
      }

      v18 = *(v17 + 32);
      if (!v18)
      {
        goto LABEL_78;
      }

      v4 = 0;
      v6 = v18 + (v10 << 7);
      v5 = *(v6 + 124);
      v7 = 4 * v5;
      if (v5 < 0x101)
      {
        continue;
      }

      break;
    }
  }

  v7 = swift_slowAlloc();
  specialized closure #1 in static Event.each(_:of:do:)(v7, v5, v6, 19459, a2, v8, &v50, v10);
  if (v4)
  {
    while (1)
    {

      v48 = v7;
LABEL_80:
      MEMORY[0x26D69EAB0](v48, -1, -1);
      __break(1u);
    }
  }

  MEMORY[0x26D69EAB0](v7, -1, -1);
LABEL_51:
  result = v50;
  v47 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v8 = v3;
  v10 = isStackAllocationSafe;
  v51 = *MEMORY[0x277D85DE8];
  v50 = 0;
  if ((a3 & 1) == 0)
  {
    goto LABEL_9;
  }

  if (one-time initialization token for types != -1)
  {
    goto LABEL_60;
  }

  if (!a2[48])
  {
    goto LABEL_4;
  }

LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
  while (1)
  {
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      break;
    }

    while (2)
    {
      v19 = MEMORY[0x28223BE20](isStackAllocationSafe);
      v22 = (v49 - v21);
      v23 = 0;
      v24 = 0;
      v25 = *(v6 + 112);
LABEL_17:
      v26 = (v25 + 8 * v24);
      while (v5 != v24)
      {
        if (v24 >= v5)
        {
          goto LABEL_54;
        }

        if (!v25)
        {
          goto LABEL_71;
        }

        v27 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          goto LABEL_55;
        }

        v29 = *v26;
        v26 += 4;
        v28 = v29;
        ++v24;
        if ((v29 & 0x8000) == 0 && (v28 & 0xC03) != 0)
        {
          if (__OFADD__(v23, 1))
          {
            goto LABEL_69;
          }

          v22[v23++] = *(v26 - 1);
          v24 = v27;
          goto LABEL_17;
        }
      }

      if (v23 < 0)
      {
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
      }

      v49[0] = v20;
      if (!v23)
      {
        goto LABEL_51;
      }

      v30 = &v22[v23];
      v7 = 32800;
      while (1)
      {
        if (a2[48])
        {
          goto LABEL_72;
        }

        v31 = *(a2 + 22);
        v32 = *a2;
        if (v32 >= *(v31 + 116))
        {
          goto LABEL_56;
        }

        v33 = *(v31 + 104);
        if (!v33)
        {
          goto LABEL_73;
        }

        v34 = *v22;
        v35 = *(*(v33 + 8 * v32) + 8);
        if (v34 >= *(v35 + 44))
        {
          goto LABEL_57;
        }

        v36 = *(v35 + 32);
        if (!v36)
        {
          goto LABEL_74;
        }

        v5 = *(v36 + (v34 << 7) + 124);
        v6 = 4 * v5;
        if (v5 < 0x101)
        {
          break;
        }

        v45 = v36 + (v34 << 7);
        v19 = swift_stdlib_isStackAllocationSafe();
        if (v19)
        {
          break;
        }

        v6 = swift_slowAlloc();
        specialized closure #1 in static Event.each(_:of:do:)(v6, v5, v45, 16416, a2, v8, &v50, v10);
        if (v4)
        {
          goto LABEL_79;
        }

        v19 = MEMORY[0x26D69EAB0](v6, -1, -1);
LABEL_46:
        if (++v22 == v30)
        {
          goto LABEL_51;
        }
      }

      MEMORY[0x28223BE20](v19);
      v38 = (v49 - v37);
      v39 = 0;
      v40 = 0;
      v41 = *(a3 + 112);
LABEL_36:
      v42 = (v41 + 8 * v40);
      while (1)
      {
        if (v5 == v40)
        {
          if (v39 < 0)
          {
            goto LABEL_58;
          }

          specialized closure #1 in closure #1 in static EventAbstraction.model(update:within:position:)(v38, v39, a3, a2, v8, &v50, v10);
          goto LABEL_46;
        }

        if (v40 >= v5)
        {
          break;
        }

        if (!v41)
        {
          goto LABEL_70;
        }

        v43 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          goto LABEL_53;
        }

        v44 = *v42;
        v42 += 4;
        ++v40;
        if ((v44 & 0x8020) == 0x20)
        {
          if (__OFADD__(v39, 1))
          {
            goto LABEL_59;
          }

          v38[v39++] = *(v42 - 1);
          v40 = v43;
          goto LABEL_36;
        }
      }

      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      v4 = a3;
      swift_once();
      a3 = v4;
      if (a2[48])
      {
        goto LABEL_61;
      }

LABEL_4:
      v11 = *(a2 + 22);
      v12 = *a2;
      if (v12 >= *(v11 + 116))
      {
        goto LABEL_62;
      }

      v13 = *(v11 + 104);
      if (!v13)
      {
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:

        v48 = v6;
        goto LABEL_80;
      }

      v5 = a3;
      isStackAllocationSafe = _s21SwiftUITracingSupport16EventAbstractionPAAE6update_31madePendingBySomethingOtherThan6withinSayAA0D3RefVGSgAH_SayAA9AttributeV7PatternVGAA8SnapshotVtFZAA8ViewListV_Tt2g5Tm(v10, static Transactions.types, *(*(v13 + 8 * v12) + 8));
      if (isStackAllocationSafe)
      {
        specialized Interpreter.Iterator.new<A>(abstract:rootedAt:discreet:restriction:)(v8, v10, 0, isStackAllocationSafe, &protocol witness table for Transactions);

        v50 = 1;
        goto LABEL_51;
      }

      v50 = 0;
      LOBYTE(a3) = v5;
LABEL_9:
      if ((a3 & 2) == 0)
      {
        goto LABEL_51;
      }

      if (a2[48])
      {
        goto LABEL_76;
      }

      v14 = *(a2 + 22);
      v15 = *a2;
      if (v15 >= *(v14 + 116))
      {
        goto LABEL_63;
      }

      v16 = *(v14 + 104);
      if (!v16)
      {
        goto LABEL_77;
      }

      v17 = *(*(v16 + 8 * v15) + 8);
      if (*(v17 + 44) <= v10)
      {
        goto LABEL_64;
      }

      v18 = *(v17 + 32);
      if (!v18)
      {
        goto LABEL_78;
      }

      v4 = 0;
      v6 = v18 + (v10 << 7);
      v5 = *(v6 + 124);
      v7 = 4 * v5;
      if (v5 < 0x101)
      {
        continue;
      }

      break;
    }
  }

  v7 = swift_slowAlloc();
  specialized closure #1 in static Event.each(_:of:do:)(v7, v5, v6, 19459, a2, v8, &v50, v10);
  if (v4)
  {
    while (1)
    {

      v48 = v7;
LABEL_80:
      MEMORY[0x26D69EAB0](v48, -1, -1);
      __break(1u);
    }
  }

  MEMORY[0x26D69EAB0](v7, -1, -1);
LABEL_51:
  result = v50;
  v47 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v8 = v3;
  v10 = isStackAllocationSafe;
  v51 = *MEMORY[0x277D85DE8];
  v50 = 0;
  if ((a3 & 1) == 0)
  {
    goto LABEL_9;
  }

  if (one-time initialization token for types != -1)
  {
    goto LABEL_60;
  }

  if (!a2[48])
  {
    goto LABEL_4;
  }

LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
  while (1)
  {
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      break;
    }

    while (2)
    {
      v19 = MEMORY[0x28223BE20](isStackAllocationSafe);
      v22 = (v49 - v21);
      v23 = 0;
      v24 = 0;
      v25 = *(v6 + 112);
LABEL_17:
      v26 = (v25 + 8 * v24);
      while (v5 != v24)
      {
        if (v24 >= v5)
        {
          goto LABEL_54;
        }

        if (!v25)
        {
          goto LABEL_71;
        }

        v27 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          goto LABEL_55;
        }

        v29 = *v26;
        v26 += 4;
        v28 = v29;
        ++v24;
        if ((v29 & 0x8000) == 0 && (v28 & 0xC03) != 0)
        {
          if (__OFADD__(v23, 1))
          {
            goto LABEL_69;
          }

          v22[v23++] = *(v26 - 1);
          v24 = v27;
          goto LABEL_17;
        }
      }

      if (v23 < 0)
      {
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
      }

      v49[0] = v20;
      if (!v23)
      {
        goto LABEL_51;
      }

      v30 = &v22[v23];
      v7 = 32800;
      while (1)
      {
        if (a2[48])
        {
          goto LABEL_72;
        }

        v31 = *(a2 + 22);
        v32 = *a2;
        if (v32 >= *(v31 + 116))
        {
          goto LABEL_56;
        }

        v33 = *(v31 + 104);
        if (!v33)
        {
          goto LABEL_73;
        }

        v34 = *v22;
        v35 = *(*(v33 + 8 * v32) + 8);
        if (v34 >= *(v35 + 44))
        {
          goto LABEL_57;
        }

        v36 = *(v35 + 32);
        if (!v36)
        {
          goto LABEL_74;
        }

        v5 = *(v36 + (v34 << 7) + 124);
        v6 = 4 * v5;
        if (v5 < 0x101)
        {
          break;
        }

        v45 = v36 + (v34 << 7);
        v19 = swift_stdlib_isStackAllocationSafe();
        if (v19)
        {
          break;
        }

        v6 = swift_slowAlloc();
        specialized closure #1 in static Event.each(_:of:do:)(v6, v5, v45, 16416, a2, v8, &v50, v10);
        if (v4)
        {
          goto LABEL_79;
        }

        v19 = MEMORY[0x26D69EAB0](v6, -1, -1);
LABEL_46:
        if (++v22 == v30)
        {
          goto LABEL_51;
        }
      }

      MEMORY[0x28223BE20](v19);
      v38 = (v49 - v37);
      v39 = 0;
      v40 = 0;
      v41 = *(a3 + 112);
LABEL_36:
      v42 = (v41 + 8 * v40);
      while (1)
      {
        if (v5 == v40)
        {
          if (v39 < 0)
          {
            goto LABEL_58;
          }

          specialized closure #1 in closure #1 in static EventAbstraction.model(update:within:position:)(v38, v39, a3, a2, v8, &v50, v10);
          goto LABEL_46;
        }

        if (v40 >= v5)
        {
          break;
        }

        if (!v41)
        {
          goto LABEL_70;
        }

        v43 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          goto LABEL_53;
        }

        v44 = *v42;
        v42 += 4;
        ++v40;
        if ((v44 & 0x8020) == 0x20)
        {
          if (__OFADD__(v39, 1))
          {
            goto LABEL_59;
          }

          v38[v39++] = *(v42 - 1);
          v40 = v43;
          goto LABEL_36;
        }
      }

      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      v4 = a3;
      swift_once();
      a3 = v4;
      if (a2[48])
      {
        goto LABEL_61;
      }

LABEL_4:
      v11 = *(a2 + 22);
      v12 = *a2;
      if (v12 >= *(v11 + 116))
      {
        goto LABEL_62;
      }

      v13 = *(v11 + 104);
      if (!v13)
      {
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:

        v48 = v6;
        goto LABEL_80;
      }

      v5 = a3;
      isStackAllocationSafe = _s21SwiftUITracingSupport16EventAbstractionPAAE6update_31madePendingBySomethingOtherThan6withinSayAA0D3RefVGSgAH_SayAA9AttributeV7PatternVGAA8SnapshotVtFZAA8ViewListV_Tt2g5Tm(v10, static PhaseWriting.types, *(*(v13 + 8 * v12) + 8));
      if (isStackAllocationSafe)
      {
        specialized Interpreter.Iterator.new<A>(abstract:rootedAt:discreet:restriction:)(v8, v10, 0, isStackAllocationSafe, &protocol witness table for PhaseWriting);

        v50 = 1;
        goto LABEL_51;
      }

      v50 = 0;
      LOBYTE(a3) = v5;
LABEL_9:
      if ((a3 & 2) == 0)
      {
        goto LABEL_51;
      }

      if (a2[48])
      {
        goto LABEL_76;
      }

      v14 = *(a2 + 22);
      v15 = *a2;
      if (v15 >= *(v14 + 116))
      {
        goto LABEL_63;
      }

      v16 = *(v14 + 104);
      if (!v16)
      {
        goto LABEL_77;
      }

      v17 = *(*(v16 + 8 * v15) + 8);
      if (*(v17 + 44) <= v10)
      {
        goto LABEL_64;
      }

      v18 = *(v17 + 32);
      if (!v18)
      {
        goto LABEL_78;
      }

      v4 = 0;
      v6 = v18 + (v10 << 7);
      v5 = *(v6 + 124);
      v7 = 4 * v5;
      if (v5 < 0x101)
      {
        continue;
      }

      break;
    }
  }

  v7 = swift_slowAlloc();
  specialized closure #1 in static Event.each(_:of:do:)(v7, v5, v6, 19459, a2, v8, &v50, v10);
  if (v4)
  {
    while (1)
    {

      v48 = v7;
LABEL_80:
      MEMORY[0x26D69EAB0](v48, -1, -1);
      __break(1u);
    }
  }

  MEMORY[0x26D69EAB0](v7, -1, -1);
LABEL_51:
  result = v50;
  v47 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v8 = v3;
  v10 = isStackAllocationSafe;
  v51 = *MEMORY[0x277D85DE8];
  v50 = 0;
  if ((a3 & 1) == 0)
  {
    goto LABEL_9;
  }

  if (one-time initialization token for types != -1)
  {
    goto LABEL_60;
  }

  if (!a2[48])
  {
    goto LABEL_4;
  }

LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
  while (1)
  {
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      break;
    }

    while (2)
    {
      v19 = MEMORY[0x28223BE20](isStackAllocationSafe);
      v22 = (v49 - v21);
      v23 = 0;
      v24 = 0;
      v25 = *(v6 + 112);
LABEL_17:
      v26 = (v25 + 8 * v24);
      while (v5 != v24)
      {
        if (v24 >= v5)
        {
          goto LABEL_54;
        }

        if (!v25)
        {
          goto LABEL_71;
        }

        v27 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          goto LABEL_55;
        }

        v29 = *v26;
        v26 += 4;
        v28 = v29;
        ++v24;
        if ((v29 & 0x8000) == 0 && (v28 & 0xC03) != 0)
        {
          if (__OFADD__(v23, 1))
          {
            goto LABEL_69;
          }

          v22[v23++] = *(v26 - 1);
          v24 = v27;
          goto LABEL_17;
        }
      }

      if (v23 < 0)
      {
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
      }

      v49[0] = v20;
      if (!v23)
      {
        goto LABEL_51;
      }

      v30 = &v22[v23];
      v7 = 32800;
      while (1)
      {
        if (a2[48])
        {
          goto LABEL_72;
        }

        v31 = *(a2 + 22);
        v32 = *a2;
        if (v32 >= *(v31 + 116))
        {
          goto LABEL_56;
        }

        v33 = *(v31 + 104);
        if (!v33)
        {
          goto LABEL_73;
        }

        v34 = *v22;
        v35 = *(*(v33 + 8 * v32) + 8);
        if (v34 >= *(v35 + 44))
        {
          goto LABEL_57;
        }

        v36 = *(v35 + 32);
        if (!v36)
        {
          goto LABEL_74;
        }

        v5 = *(v36 + (v34 << 7) + 124);
        v6 = 4 * v5;
        if (v5 < 0x101)
        {
          break;
        }

        v45 = v36 + (v34 << 7);
        v19 = swift_stdlib_isStackAllocationSafe();
        if (v19)
        {
          break;
        }

        v6 = swift_slowAlloc();
        specialized closure #1 in static Event.each(_:of:do:)(v6, v5, v45, 16416, a2, v8, &v50, v10);
        if (v4)
        {
          goto LABEL_79;
        }

        v19 = MEMORY[0x26D69EAB0](v6, -1, -1);
LABEL_46:
        if (++v22 == v30)
        {
          goto LABEL_51;
        }
      }

      MEMORY[0x28223BE20](v19);
      v38 = (v49 - v37);
      v39 = 0;
      v40 = 0;
      v41 = *(a3 + 112);
LABEL_36:
      v42 = (v41 + 8 * v40);
      while (1)
      {
        if (v5 == v40)
        {
          if (v39 < 0)
          {
            goto LABEL_58;
          }

          specialized closure #1 in closure #1 in static EventAbstraction.model(update:within:position:)(v38, v39, a3, a2, v8, &v50, v10);
          goto LABEL_46;
        }

        if (v40 >= v5)
        {
          break;
        }

        if (!v41)
        {
          goto LABEL_70;
        }

        v43 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          goto LABEL_53;
        }

        v44 = *v42;
        v42 += 4;
        ++v40;
        if ((v44 & 0x8020) == 0x20)
        {
          if (__OFADD__(v39, 1))
          {
            goto LABEL_59;
          }

          v38[v39++] = *(v42 - 1);
          v40 = v43;
          goto LABEL_36;
        }
      }

      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      v4 = a3;
      swift_once();
      a3 = v4;
      if (a2[48])
      {
        goto LABEL_61;
      }

LABEL_4:
      v11 = *(a2 + 22);
      v12 = *a2;
      if (v12 >= *(v11 + 116))
      {
        goto LABEL_62;
      }

      v13 = *(v11 + 104);
      if (!v13)
      {
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:

        v48 = v6;
        goto LABEL_80;
      }

      v5 = a3;
      isStackAllocationSafe = _s21SwiftUITracingSupport16EventAbstractionPAAE6update_31madePendingBySomethingOtherThan6withinSayAA0D3RefVGSgAH_SayAA9AttributeV7PatternVGAA8SnapshotVtFZAA8ViewListV_Tt2g5Tm(v10, static DisplayList.types, *(*(v13 + 8 * v12) + 8));
      if (isStackAllocationSafe)
      {
        specialized Interpreter.Iterator.new<A>(abstract:rootedAt:discreet:restriction:)(v8, v10, 0, isStackAllocationSafe, &protocol witness table for DisplayList);

        v50 = 1;
        goto LABEL_51;
      }

      v50 = 0;
      LOBYTE(a3) = v5;
LABEL_9:
      if ((a3 & 2) == 0)
      {
        goto LABEL_51;
      }

      if (a2[48])
      {
        goto LABEL_76;
      }

      v14 = *(a2 + 22);
      v15 = *a2;
      if (v15 >= *(v14 + 116))
      {
        goto LABEL_63;
      }

      v16 = *(v14 + 104);
      if (!v16)
      {
        goto LABEL_77;
      }

      v17 = *(*(v16 + 8 * v15) + 8);
      if (*(v17 + 44) <= v10)
      {
        goto LABEL_64;
      }

      v18 = *(v17 + 32);
      if (!v18)
      {
        goto LABEL_78;
      }

      v4 = 0;
      v6 = v18 + (v10 << 7);
      v5 = *(v6 + 124);
      v7 = 4 * v5;
      if (v5 < 0x101)
      {
        continue;
      }

      break;
    }
  }

  v7 = swift_slowAlloc();
  specialized closure #1 in static Event.each(_:of:do:)(v7, v5, v6, 19459, a2, v8, &v50, v10);
  if (v4)
  {
    while (1)
    {

      v48 = v7;
LABEL_80:
      MEMORY[0x26D69EAB0](v48, -1, -1);
      __break(1u);
    }
  }

  MEMORY[0x26D69EAB0](v7, -1, -1);
LABEL_51:
  result = v50;
  v47 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t specialized static EventAbstraction.model(update:within:position:)(uint64_t a1, unsigned __int8 *a2, unint64_t a3)
{
  v8 = v3;
  v10 = a1;
  v52 = *MEMORY[0x277D85DE8];
  v51 = 0;
  if ((a3 & 1) == 0)
  {
    goto LABEL_8;
  }

  if (a2[48])
  {
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:

    v49 = v6;
    goto LABEL_78;
  }

  v11 = *(a2 + 22);
  v12 = *a2;
  if (v12 >= *(v11 + 116))
  {
    goto LABEL_59;
  }

  v13 = *(v11 + 104);
  if (!v13)
  {
    goto LABEL_73;
  }

  v5 = a3;
  a1 = _s21SwiftUITracingSupport16EventAbstractionPAAE6update_31madePendingBySomethingOtherThan6withinSayAA0D3RefVGSgAH_SayAA9AttributeV7PatternVGAA8SnapshotVtFZAA8ViewListV_Tt2g5Tm(a1, MEMORY[0x277D84F90], *(*(v13 + 8 * v12) + 8));
  if (a1)
  {
    specialized Interpreter.Iterator.new<A>(abstract:rootedAt:discreet:restriction:)(v8, v10, 0, a1, &protocol witness table for ViewBodies);

    v51 = 1;
    goto LABEL_50;
  }

  v51 = 0;
  LOBYTE(a3) = v5;
LABEL_8:
  if ((a3 & 2) == 0)
  {
    goto LABEL_50;
  }

  if (a2[48])
  {
    goto LABEL_74;
  }

  v14 = *(a2 + 22);
  v15 = *a2;
  if (v15 >= *(v14 + 116))
  {
    goto LABEL_60;
  }

  v16 = *(v14 + 104);
  if (!v16)
  {
    goto LABEL_75;
  }

  v17 = *(*(v16 + 8 * v15) + 8);
  if (*(v17 + 44) <= v10)
  {
    goto LABEL_61;
  }

  v18 = *(v17 + 32);
  if (!v18)
  {
    goto LABEL_76;
  }

  v4 = 0;
  v6 = v18 + (v10 << 7);
  v5 = *(v6 + 124);
  if (v5 >= 0x101)
  {
    goto LABEL_62;
  }

  do
  {
    isStackAllocationSafe = MEMORY[0x28223BE20](a1);
    v22 = (v50 - v21);
    v23 = 0;
    v24 = 0;
    v25 = *(v6 + 112);
LABEL_16:
    v26 = (v25 + 8 * v24);
    while (v5 != v24)
    {
      if (v24 >= v5)
      {
        goto LABEL_53;
      }

      if (!v25)
      {
        goto LABEL_68;
      }

      v27 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        goto LABEL_54;
      }

      v29 = *v26;
      v26 += 4;
      v28 = v29;
      ++v24;
      if ((v29 & 0x8000) == 0 && (v28 & 0xC03) != 0)
      {
        if (__OFADD__(v23, 1))
        {
          goto LABEL_66;
        }

        v22[v23++] = *(v26 - 1);
        v24 = v27;
        goto LABEL_16;
      }
    }

    if (v23 < 0)
    {
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }

    v50[0] = v20;
    if (!v23)
    {
      goto LABEL_50;
    }

    v30 = &v22[v23];
    v7 = 32800;
    while (1)
    {
      if (a2[48])
      {
        goto LABEL_69;
      }

      v31 = *(a2 + 22);
      v32 = *a2;
      if (v32 >= *(v31 + 116))
      {
        goto LABEL_55;
      }

      v33 = *(v31 + 104);
      if (!v33)
      {
        goto LABEL_70;
      }

      v34 = *v22;
      v35 = *(*(v33 + 8 * v32) + 8);
      if (v34 >= *(v35 + 44))
      {
        goto LABEL_56;
      }

      v36 = *(v35 + 32);
      if (!v36)
      {
        goto LABEL_71;
      }

      v5 = *(v36 + (v34 << 7) + 124);
      v6 = 4 * v5;
      if (v5 < 0x101)
      {
        break;
      }

      v46 = v36 + (v34 << 7);
      isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
      if (isStackAllocationSafe)
      {
        break;
      }

      v6 = swift_slowAlloc();
      specialized closure #1 in static Event.each(_:of:do:)(v6, v5, v46, 16416, a2, v8, &v51, v10);
      if (v4)
      {
        goto LABEL_77;
      }

      isStackAllocationSafe = MEMORY[0x26D69EAB0](v6, -1, -1);
LABEL_45:
      if (++v22 == v30)
      {
        goto LABEL_50;
      }
    }

    MEMORY[0x28223BE20](isStackAllocationSafe);
    v39 = (v50 - v38);
    v40 = 0;
    v41 = 0;
    v42 = *(v37 + 112);
LABEL_35:
    v43 = (v42 + 8 * v41);
    while (1)
    {
      if (v5 == v41)
      {
        if (v40 < 0)
        {
          goto LABEL_57;
        }

        specialized closure #1 in closure #1 in static EventAbstraction.model(update:within:position:)(v39, v40, v37, a2, v8, &v51, v10);
        goto LABEL_45;
      }

      if (v41 >= v5)
      {
        break;
      }

      if (!v42)
      {
        goto LABEL_67;
      }

      v44 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        goto LABEL_52;
      }

      v45 = *v43;
      v43 += 4;
      ++v41;
      if ((v45 & 0x8020) == 0x20)
      {
        if (__OFADD__(v40, 1))
        {
          goto LABEL_58;
        }

        v39[v40++] = *(v43 - 1);
        v41 = v44;
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    a1 = swift_stdlib_isStackAllocationSafe();
  }

  while ((a1 & 1) != 0);
  v7 = swift_slowAlloc();
  specialized closure #1 in static Event.each(_:of:do:)(v7, v5, v6, 19459, a2, v8, &v51, v10);
  if (v4)
  {
    while (1)
    {

      v49 = v7;
LABEL_78:
      MEMORY[0x26D69EAB0](v49, -1, -1);
      __break(1u);
    }
  }

  MEMORY[0x26D69EAB0](v7, -1, -1);
LABEL_50:
  result = v51;
  v48 = *MEMORY[0x277D85DE8];
  return result;
}