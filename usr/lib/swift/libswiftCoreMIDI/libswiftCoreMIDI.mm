uint64_t **_s8CoreMIDI35UnsafeMutableMIDIEventPacketPointerV9timeStampSivpACTK_0@<X0>(uint64_t **result@<X0>, void *a2@<X8>)
{
  v2 = **result;
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    *a2 = v2;
  }

  return result;
}

void *_s8CoreMIDI35UnsafeMutableMIDIEventPacketPointerV9timeStampSivpACTk_0(void *result, void **a2)
{
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    **a2 = *result;
  }

  return result;
}

uint64_t _sSo15MIDIEventPacketV8CoreMIDIE7BuilderC8capacitySivpAETK_0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 24);
  return result;
}

uint64_t _sSo15MIDIEventPacketV8CoreMIDIE7BuilderC8capacitySivpAETk_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 24) = v2;
  return result;
}

uint64_t _sSo15MIDIEventPacketVwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 268))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _sSo15MIDIEventPacketVwst_0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 264) = 0;
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

  *(result + 268) = v3;
  return result;
}

unint64_t *key path setter for UnsafeMutableMIDIEventPacketPointer.count : UnsafeMutableMIDIEventPacketPointer(unint64_t *result, uint64_t a2)
{
  v2 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(v2))
  {
    *(*a2 + 8) = v2;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t UnsafeMutableMIDIEventPacketPointer.count.setter(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(result))
  {
    *(*v1 + 8) = result;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t *(*UnsafeMutableMIDIEventPacketPointer.count.modify(void *a1))(unint64_t *result, char a2)
{
  v2 = *v1;
  a1[1] = *v1;
  *a1 = *(v2 + 8);
  return UnsafeMutableMIDIEventPacketPointer.count.modify;
}

unint64_t *UnsafeMutableMIDIEventPacketPointer.count.modify(unint64_t *result, char a2)
{
  v2 = *result;
  if (a2)
  {
    if ((v2 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_9;
    }

    if (!HIDWORD(v2))
    {
LABEL_7:
      *(result[1] + 8) = v2;
      return result;
    }

    __break(1u);
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (!HIDWORD(v2))
  {
    goto LABEL_7;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t (*UnsafeMutableMIDIEventPacketPointer.timeStamp.modify(uint64_t (*result)()))()
{
  v2 = *v1;
  *(result + 1) = *v1;
  v3 = *v2;
  if (v3 < 0)
  {
    __break(1u);
  }

  else
  {
    *result = v3;
    return UnsafeMutableMIDIEventPacketPointer.timeStamp.modify;
  }

  return result;
}

uint64_t key path getter for UnsafeMutableMIDIEventPacketPointer.subscript(_:) : UnsafeMutableMIDIEventPacketPointer@<X0>(uint64_t result@<X0>, unint64_t *a2@<X1>, _DWORD *a3@<X8>)
{
  v3 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v3 < *(*result + 8))
  {
    *a3 = *(*result + 4 * v3 + 12);
    return result;
  }

  __break(1u);
  return result;
}

_DWORD *key path setter for UnsafeMutableMIDIEventPacketPointer.subscript(_:) : UnsafeMutableMIDIEventPacketPointer(_DWORD *result, uint64_t a2, unint64_t *a3)
{
  v3 = *a3;
  if ((*a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v3 < *(*a2 + 8))
  {
    *(*a2 + 4 * v3 + 12) = *result;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t UnsafeMutableMIDIEventPacketPointer.subscript.setter(uint64_t result, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(*v2 + 8) > a2)
  {
    *(*v2 + 4 * a2 + 12) = result;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t *(*UnsafeMutableMIDIEventPacketPointer.subscript.modify(unint64_t *(*result)(unint64_t *result, char a2), unint64_t a2))(unint64_t *result, char a2)
{
  v3 = *v2;
  *result = a2;
  *(result + 1) = v3;
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v3 + 8) > a2)
  {
    *(result + 4) = *(v3 + 4 * a2 + 12);
    return UnsafeMutableMIDIEventPacketPointer.subscript.modify;
  }

  __break(1u);
  return result;
}

unint64_t *UnsafeMutableMIDIEventPacketPointer.subscript.modify(unint64_t *result, char a2)
{
  v3 = *result;
  v2 = result[1];
  v4 = *(v2 + 8);
  v5 = *result >= v4;
  if (a2)
  {
    if (*result < v4)
    {
LABEL_5:
      *(v2 + 4 * v3 + 12) = *(result + 4);
      return result;
    }

    __break(1u);
  }

  if (!v5)
  {
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

_DWORD *protocol witness for MutableCollection.subscript.setter in conformance UnsafeMutableMIDIEventPacketPointer(_DWORD *result, unint64_t *a2)
{
  v3 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v3 < *(*v2 + 8))
  {
    *(*v2 + 4 * v3 + 12) = *result;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t (*protocol witness for MutableCollection.subscript.modify in conformance UnsafeMutableMIDIEventPacketPointer(uint64_t *a1, unint64_t *a2))()
{
  if (MEMORY[0x29EDCA1B0])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  *(v4 + 32) = UnsafeMutableMIDIEventPacketPointer.subscript.modify(v4, *a2);
  return protocol witness for MutableCollection.subscript.modify in conformance UnsafeMutableMIDIEventPacketPointer;
}

uint64_t (*protocol witness for MutableCollection.subscript.modify in conformance UnsafeMutableMIDIEventPacketPointer(uint64_t *a1, uint64_t *a2))()
{
  if (MEMORY[0x29EDCA1B0])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  *(v4 + 32) = specialized MutableCollection<>.subscript.modify(v4, *a2, a2[1]);
  return protocol witness for MutableCollection.subscript.modify in conformance UnsafeMutableMIDIEventPacketPointer;
}

void (*specialized MutableCollection<>.subscript.modify(void (**a1)(uint64_t a1, uint64_t a2), uint64_t a2, uint64_t a3))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x29EDCA1B0])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x30uLL);
  }

  *a1 = result;
  *(result + 4) = a3;
  *(result + 5) = v3;
  *(result + 3) = a2;
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = *v3;
    if (*(*v3 + 8) >= a3)
    {
      *(result + 1) = a3;
      *(result + 2) = v8;
      *result = a2;
      return MutableCollection<>.subscript.modifyspecialized ;
    }
  }

  __break(1u);
  return result;
}

{
  if (MEMORY[0x29EDCA1B0])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x30uLL);
  }

  *a1 = result;
  *(result + 4) = a3;
  *(result + 5) = v3;
  *(result + 3) = a2;
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = *v3;
    if (*(*v3 + 8) >= a3)
    {
      *(result + 1) = a3;
      *(result + 2) = v8;
      *result = a2;
      return MutableCollection<>.subscript.modifyspecialized ;
    }
  }

  __break(1u);
  return result;
}

void MutableCollection<>.subscript.modifyspecialized (uint64_t a1, uint64_t a2)
{
  MutableCollection<>.subscript.modifyspecialized (a1, a2, specialized _writeBackMutableSlice<A, B>(_:bounds:slice:));
}

{
  MutableCollection<>.subscript.modifyspecialized (a1, a2, specialized _writeBackMutableSlice<A, B>(_:bounds:slice:));
}

void MutableCollection<>.subscript.modifyspecialized (uint64_t a1, uint64_t a2, void (*a3)(void, void, void, void, void, void))
{
  v3 = *a1;
  a3(*(*a1 + 40), v3[3], *(*a1 + 32), *v3, v3[1], v3[2]);

  free(v3);
}

unint64_t protocol witness for MutableCollection.partition(by:) in conformance UnsafeMutableMIDIEventPacketPointer@<X0>(unint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  result = specialized MutableCollection<>._partitionImpl(by:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t specialized MutableCollection.swapAt(_:_:)(unint64_t result, unint64_t a2)
{
  if (result != a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v3 = *v2;
      v4 = *(*v2 + 8);
      if (v4 > result)
      {
        if ((a2 & 0x8000000000000000) == 0)
        {
          if (v4 > a2)
          {
            v5 = *(v3 + 10 + result);
            *(v3 + 10 + result) = *(v3 + 10 + a2);
            if (*(v3 + 8) > a2)
            {
              *(v3 + 10 + a2) = v5;
              return result;
            }

LABEL_13:
            __break(1u);
            return result;
          }

LABEL_12:
          __break(1u);
          goto LABEL_13;
        }

LABEL_11:
        __break(1u);
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_11;
  }

  return result;
}

{
  if (result != a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v3 = *v2;
      v4 = *(*v2 + 8);
      if (v4 > result)
      {
        if ((a2 & 0x8000000000000000) == 0)
        {
          if (v4 > a2)
          {
            v5 = *(v3 + 12 + 4 * result);
            *(v3 + 12 + 4 * result) = *(v3 + 12 + 4 * a2);
            if (*(v3 + 8) > a2)
            {
              *(v3 + 12 + 4 * a2) = v5;
              return result;
            }

LABEL_13:
            __break(1u);
            return result;
          }

LABEL_12:
          __break(1u);
          goto LABEL_13;
        }

LABEL_11:
        __break(1u);
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_11;
  }

  return result;
}

unint64_t specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(unint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 8);
  if (v4 < result || v4 < a3)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3 - result;
  if (a2 >= 1)
  {
    if (v6 < 0 || v6 >= a2)
    {
      goto LABEL_13;
    }

    return 0;
  }

  if (v6 <= 0 && v6 > a2)
  {
    return 0;
  }

LABEL_13:
  v7 = __OFADD__(result, a2);
  result += a2;
  if (v7)
  {
    goto LABEL_16;
  }

  if (result > v4)
  {
LABEL_17:
    __break(1u);
  }

  return result;
}

{
  v4 = *(a4 + 8);
  if (v4 < result || v4 < a3)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3 - result;
  if (a2 >= 1)
  {
    if (v6 < 0 || v6 >= a2)
    {
      goto LABEL_13;
    }

    return 0;
  }

  if (v6 <= 0 && v6 > a2)
  {
    return 0;
  }

LABEL_13:
  v7 = __OFADD__(result, a2);
  result += a2;
  if (v7)
  {
    goto LABEL_16;
  }

  if (result > v4)
  {
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance UnsafeMutableMIDIEventPacketPointer(uint64_t (*result)(), unint64_t *a2))()
{
  v3 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v3 < *(*v2 + 8))
  {
    *result = *(*v2 + 4 * v3 + 12);
    return protocol witness for Collection.subscript.read in conformance UnsafeMutableMIDIEventPacketPointer;
  }

  __break(1u);
  return result;
}

void protocol witness for Collection.indices.getter in conformance UnsafeMutableMIDIEventPacketPointer(void *a1@<X8>)
{
  v2 = *(*v1 + 8);
  *a1 = 0;
  a1[1] = v2;
}

uint64_t protocol witness for RandomAccessCollection.index(_:offsetBy:limitedBy:) in conformance UnsafeMutableMIDIEventPacketPointer@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t (*a4)(void, uint64_t, void, void)@<X5>, uint64_t a5@<X8>)
{
  result = a4(*a1, a2, *a3, *v5);
  *a5 = result;
  *(a5 + 8) = v8 & 1;
  return result;
}

uint64_t MIDIEventPacket.WordSequence.Iterator.init(_:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(*result + 8);
  *a2 = *result + 12;
  a2[1] = 0;
  a2[2] = v2;
  return result;
}

Swift::UInt32_optional __swiftcall MIDIEventPacket.WordSequence.Iterator.next()()
{
  v1 = v0[1];
  v2 = v0[2];
  if (v1 < v2)
  {
    v3 = *(*v0 + 4 * v1);
    v0[1] = v1 + 1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 | ((v1 >= v2) << 32));
}

void protocol witness for IteratorProtocol.next() in conformance MIDIEventPacket.WordSequence.Iterator(uint64_t a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  if (v2 < v3)
  {
    v4 = *(*v1 + 4 * v2);
    v1[1] = v2 + 1;
  }

  else
  {
    v4 = 0;
  }

  *a1 = v4;
  *(a1 + 4) = v2 >= v3;
}

unint64_t UnsafeMutableMIDIEventPacketPointer.subscript.getter(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(*v1 + 8) > result)
  {
    return *(*v1 + 4 * result + 12);
  }

  __break(1u);
  return result;
}

void *protocol witness for BidirectionalCollection.index(before:) in conformance UnsafeMutableMIDIEventPacketPointer@<X0>(void *result@<X0>, unint64_t *a2@<X8>)
{
  v3 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else if (v3 < *(*v2 + 8))
  {
    *a2 = v3;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t *protocol witness for BidirectionalCollection.formIndex(before:) in conformance UnsafeMutableMIDIEventPacketPointer(unint64_t *result)
{
  v2 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else if (v2 < *(*v1 + 8))
  {
    *result = v2;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t *protocol witness for Collection.subscript.getter in conformance UnsafeMutableMIDIEventPacketPointer@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v3 = *result;
  if (*result < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = result[1];
    v5 = *v2;
    if (v4 <= *(*v2 + 8))
    {
      a2[1] = v4;
      a2[2] = v5;
      *a2 = v3;
      return result;
    }
  }

  __break(1u);
  return result;
}

void *protocol witness for RandomAccessCollection.index(_:offsetBy:) in conformance UnsafeMutableMIDIEventPacketPointer@<X0>(void *result@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v4 = *result + a2;
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else if (v4 <= *(*v3 + 8))
  {
    *a3 = v4;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t *protocol witness for RandomAccessCollection.distance(from:to:) in conformance UnsafeMutableMIDIEventPacketPointer(unint64_t *result, unint64_t *a2)
{
  v3 = *a2;
  v4 = *(*v2 + 8);
  if (*result <= v4 && v3 <= v4)
  {
    return (v3 - *result);
  }

  __break(1u);
  return result;
}

void *protocol witness for Collection.index(after:) in conformance UnsafeMutableMIDIEventPacketPointer@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (*result >= *(*v2 + 8))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void *protocol witness for Collection.formIndex(after:) in conformance UnsafeMutableMIDIEventPacketPointer(void *result)
{
  if (*result >= *(*v1 + 8))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

void *protocol witness for Sequence._copyToContiguousArray() in conformance MIDIEventPacket.WordCollection()
{
  v1 = *v0;
  v2 = *(*v0 + 8);
  if (!v2)
  {
    return MEMORY[0x29EDCA190];
  }

  v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt32V_Tt1g5(*(*v0 + 8), 0);
  if (specialized Sequence._copySequenceContents(initializing:)(&v5, (v3 + 4), v2, v1) != v2)
  {
    __break(1u);
    return MEMORY[0x29EDCA190];
  }

  return v3;
}

void UnsafeMutableMIDIEventPacketPointer.makeIterator()(void *a1@<X8>)
{
  v2 = *(*v1 + 8);
  *a1 = *v1 + 12;
  a1[1] = 0;
  a1[2] = v2;
}

void protocol witness for Sequence.makeIterator() in conformance UnsafeMutableMIDIEventPacketPointer(void *a1@<X8>)
{
  v2 = *(*v1 + 8);
  *a1 = *v1 + 12;
  a1[1] = 0;
  a1[2] = v2;
}

void *protocol witness for Sequence._copyToContiguousArray() in conformance UnsafeMutableMIDIEventPacketPointer()
{
  v1 = *v0;
  v2 = *(*v0 + 8);
  if (!v2)
  {
    return MEMORY[0x29EDCA190];
  }

  v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt32V_Tt1g5(*(*v0 + 8), 0);
  if (specialized Sequence._copySequenceContents(initializing:)(v5, (v3 + 4), v2, v1) != v2)
  {
    __break(1u);
    return MEMORY[0x29EDCA190];
  }

  return v3;
}

size_t MIDIEventPacket.Builder.__allocating_init(maximumNumberMIDIWords:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 24) = 0;
  if (a1 < 1)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (a1 >> 61)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v3 = result;
  result = 4 * a1 + 12;
  if (__OFADD__(4 * a1, 12))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  result = calloc(result, 1uLL);
  if (result)
  {
    *(v3 + 16) = result;
    swift_beginAccess();
    *(v3 + 24) = a1;
    return v3;
  }

LABEL_9:
  __break(1u);
  return result;
}

int64_t MIDIEventPacket.Builder.init(maximumNumberMIDIWords:)(int64_t result)
{
  *(v1 + 24) = 0;
  if (result < 1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = result;
  if (result >> 61)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  result = 4 * result + 12;
  if (__OFADD__(4 * v2, 12))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  result = calloc(result, 1uLL);
  if (result)
  {
    *(v1 + 16) = result;
    swift_beginAccess();
    *(v1 + 24) = v2;
    return v1;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t (*MIDIEventPacket.Builder.timeStamp.modify(uint64_t *a1))()
{
  if (MEMORY[0x29EDCA1B0])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  result = swift_beginAccess();
  v6 = **(v1 + 16);
  if (v6 < 0)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 24) = v6;
    return MIDIEventPacket.Builder.timeStamp.modify;
  }

  return result;
}

uint64_t MIDIEventPacket.Builder.append(_:)(uint64_t a1)
{
  result = swift_beginAccess();
  v4 = *(v1 + 16);
  v6 = *(v4 + 8);
  v5 = (v4 + 8);
  v7 = *(a1 + 16);
  v8 = v6 + v7;
  if (__OFADD__(v6, v7))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  result = swift_beginAccess();
  if (*(v1 + 24) < v8)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  if (v7)
  {
    v9 = (a1 + 32);
    v10 = *v5 + 1;
    while (v10)
    {
      v11 = *v9++;
      *v5 = v10;
      v5[v10++] = v11;
      if (!--v7)
      {
        return result;
      }
    }

    __break(1u);
    goto LABEL_9;
  }

  return result;
}

uint64_t static MIDIEventList.sizeInBytes(pktList:)(uint64_t a1)
{
  v1 = a1 + 8;
  for (i = *(a1 + 4); i; --i)
  {
    v1 += 4 * *(v1 + 8) + 12;
  }

  return v1 - a1;
}

MIDIEventList *UnsafeMutableMIDIEventListPointer.init(_:wordSize:inProtocol:)@<X0>(MIDIProtocolID protocol@<W2>, MIDIEventList *result@<X0>, uint64_t a3@<X1>, uint64_t a4@<X8>)
{
  if ((a3 - 0x2000000000000000) >> 62 == 3)
  {
    v6 = result;
    v7 = 4 * a3;
    result = MIDIEventListInit(result, protocol);
    *a4 = v7;
    *(a4 + 8) = result;
    *(a4 + 16) = protocol;
    *(a4 + 24) = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void MIDIEventList.UnsafeSequence.makeIterator()(void *a1@<X8>)
{
  v2 = *(*v1 + 4);
  *a1 = *v1 + 8;
  a1[1] = 0;
  a1[2] = v2;
}

uint64_t MIDIEventList.UnsafeSequence.Iterator.init(_:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(*result + 4);
  *a2 = *result + 8;
  a2[1] = 0;
  a2[2] = v2;
  return result;
}

uint64_t MIDIEventList.UnsafeSequence.Iterator.next()()
{
  v1 = v0[1];
  if (v1 >= v0[2])
  {
    return 0;
  }

  result = *v0;
  if (v1 >= 1)
  {
    result += 4 * *(result + 8) + 12;
    *v0 = result;
  }

  v0[1] = v1 + 1;
  return result;
}

void protocol witness for Sequence.makeIterator() in conformance MIDIEventList.UnsafeSequence(void *a1@<X8>)
{
  v2 = *(*v1 + 4);
  *a1 = *v1 + 8;
  a1[1] = 0;
  a1[2] = v2;
}

double UnsafeMutableMIDIEventListPointer.init(_:wordSize:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 && (UnsafeMutableMIDIEventListPointer.init(_:wordSize:)(&v6), (v3 = v8) != 0))
  {
    v4 = v7;
    result = *&v6;
    *a2 = v6;
    *(a2 + 16) = v4;
    *(a2 + 24) = v3;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

MIDIEventPacket *UnsafeMutableMIDIEventListPointer.append(timestamp:words:)(MIDITimeStamp time, uint64_t a2)
{
  v3 = *(v2 + 8);
  if (!v3)
  {
    return 0;
  }

  result = MIDIEventListAdd(*(v2 + 24), *v2, v3, time, *(a2 + 16), (a2 + 32));
  *(v2 + 8) = result;
  return result;
}

void UnsafeMutableMIDIEventListPointer.makeIterator()(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = v2 + 8;
  v4 = *(v2 + 4);
  *a1 = v3;
  a1[1] = 0;
  a1[2] = v4;
}

void protocol witness for Sequence.makeIterator() in conformance UnsafeMutableMIDIEventListPointer(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = v2 + 8;
  v4 = *(v2 + 4);
  *a1 = v3;
  a1[1] = 0;
  a1[2] = v4;
}

MIDIEventList *MIDIEventList.Builder.__allocating_init(inProtocol:wordSize:)(MIDIProtocolID a1, uint64_t a2)
{
  result = swift_allocObject();
  if (a2 < 69)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (a2 >> 61)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  v6 = 4 * a2;
  result = calloc(v6, 1uLL);
  if (result)
  {
    v7 = result;
    v8 = MIDIEventListInit(result, a1);
    *&v5->packet[0].wordCount = v6;
    *&v5->packet[0].words[1] = v8;
    v5->packet[0].words[3] = a1;
    *&v5->packet[0].words[5] = v7;
    return v5;
  }

LABEL_7:
  __break(1u);
  return result;
}

MIDIEventList *MIDIEventList.Builder.init(inProtocol:wordSize:)(MIDIEventList *result, uint64_t a2)
{
  if (a2 < 69)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (a2 >> 61)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  v4 = 4 * a2;
  result = calloc(4 * a2, 1uLL);
  if (result)
  {
    v5 = result;
    v6 = MIDIEventListInit(result, v3);
    *(v2 + 16) = v4;
    *(v2 + 24) = v6;
    *(v2 + 32) = v3;
    *(v2 + 40) = v5;
    return v2;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t MIDIEventList.Builder.deinit()
{
  swift_beginAccess();
  free(*(v0 + 40));
  return v0;
}

uint64_t MIDIEventList.Builder.__deallocating_deinit()
{
  swift_beginAccess();
  free(*(v0 + 40));
  return swift_deallocClassInstance();
}

MIDIEventPacket *MIDIEventList.Builder.append(timestamp:words:)(MIDITimeStamp a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  if (v5)
  {
    v6 = MIDIEventListAdd(*(v2 + 40), *(v2 + 16), v5, a1, *(a2 + 16), (a2 + 32));
    *(v2 + 24) = v6;
  }

  else
  {
    v6 = 0;
  }

  swift_endAccess();
  return v6;
}

Swift::Void __swiftcall MIDIEventList.Builder.clear()()
{
  swift_beginAccess();
  *(v0 + 24) = MIDIEventListInit(*(v0 + 40), *(v0 + 32));
  swift_endAccess();
}

uint64_t MIDIEventList.Builder.withUnsafeMutableMIDIEventListPointer<A>(_:)(void (*a1)(uint64_t))
{
  swift_beginAccess();
  a1(v1 + 16);
  return swift_endAccess();
}

uint64_t UnsafeMutableMIDIPacketPointer.init(_:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = result;
  return result;
}

{
  *a2 = result;
  return result;
}

unint64_t *key path setter for UnsafeMutableMIDIPacketPointer.count : UnsafeMutableMIDIPacketPointer(unint64_t *result, uint64_t a2)
{
  v2 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!(v2 >> 16))
  {
    *(*a2 + 8) = v2;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t UnsafeMutableMIDIPacketPointer.count.setter(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!(result >> 16))
  {
    *(*v1 + 8) = result;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t *(*UnsafeMutableMIDIPacketPointer.count.modify(void *a1))(unint64_t *result, char a2)
{
  v2 = *v1;
  a1[1] = *v1;
  *a1 = *(v2 + 8);
  return UnsafeMutableMIDIPacketPointer.count.modify;
}

unint64_t *UnsafeMutableMIDIPacketPointer.count.modify(unint64_t *result, char a2)
{
  v2 = *result;
  if (a2)
  {
    if ((v2 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_9;
    }

    if (!(v2 >> 16))
    {
LABEL_7:
      *(result[1] + 8) = v2;
      return result;
    }

    __break(1u);
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (!(v2 >> 16))
  {
    goto LABEL_7;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t UnsafeMutableMIDIPacketPointer.timeStamp.getter()
{
  result = **v0;
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t UnsafeMutableMIDIPacketPointer.timeStamp.setter(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    **v1 = result;
  }

  return result;
}

uint64_t (*UnsafeMutableMIDIPacketPointer.timeStamp.modify(uint64_t (*result)()))()
{
  v2 = *v1;
  *(result + 1) = *v1;
  v3 = *v2;
  if (v3 < 0)
  {
    __break(1u);
  }

  else
  {
    *result = v3;
    return UnsafeMutableMIDIPacketPointer.timeStamp.modify;
  }

  return result;
}

uint64_t *UnsafeMutableMIDIEventPacketPointer.timeStamp.modify(uint64_t *result, char a2)
{
  v2 = *result;
  if (a2)
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
LABEL_5:
      *result[1] = v2;
      return result;
    }

    __break(1u);
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t key path getter for UnsafeMutableMIDIPacketPointer.subscript(_:) : UnsafeMutableMIDIPacketPointer@<X0>(uint64_t result@<X0>, unint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  v3 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v3 < *(*result + 8))
  {
    *a3 = *(*result + v3 + 10);
    return result;
  }

  __break(1u);
  return result;
}

_BYTE *key path setter for UnsafeMutableMIDIPacketPointer.subscript(_:) : UnsafeMutableMIDIPacketPointer(_BYTE *result, uint64_t a2, unint64_t *a3)
{
  v3 = *a3;
  if ((*a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v3 < *(*a2 + 8))
  {
    *(*a2 + v3 + 10) = *result;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t UnsafeMutableMIDIPacketPointer.subscript.setter(uint64_t result, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(*v2 + 8) > a2)
  {
    *(*v2 + a2 + 10) = result;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t *(*UnsafeMutableMIDIPacketPointer.subscript.modify(unint64_t *(*result)(unint64_t *result, char a2), unint64_t a2))(unint64_t *result, char a2)
{
  v3 = *v2;
  *result = a2;
  *(result + 1) = v3;
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v3 + 8) > a2)
  {
    *(result + 16) = *(v3 + a2 + 10);
    return UnsafeMutableMIDIPacketPointer.subscript.modify;
  }

  __break(1u);
  return result;
}

unint64_t *UnsafeMutableMIDIPacketPointer.subscript.modify(unint64_t *result, char a2)
{
  v3 = *result;
  v2 = result[1];
  v4 = *(v2 + 8);
  v5 = *result >= v4;
  if (a2)
  {
    if (*result < v4)
    {
LABEL_5:
      *(v2 + v3 + 10) = *(result + 16);
      return result;
    }

    __break(1u);
  }

  if (!v5)
  {
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

_BYTE *protocol witness for MutableCollection.subscript.setter in conformance UnsafeMutableMIDIPacketPointer(_BYTE *result, unint64_t *a2)
{
  v3 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v3 < *(*v2 + 8))
  {
    *(*v2 + v3 + 10) = *result;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t (*protocol witness for MutableCollection.subscript.modify in conformance UnsafeMutableMIDIPacketPointer(uint64_t *a1, unint64_t *a2))()
{
  if (MEMORY[0x29EDCA1B0])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  *(v4 + 32) = UnsafeMutableMIDIPacketPointer.subscript.modify(v4, *a2);
  return protocol witness for MutableCollection.subscript.modify in conformance UnsafeMutableMIDIEventPacketPointer;
}

uint64_t (*protocol witness for MutableCollection.subscript.modify in conformance UnsafeMutableMIDIPacketPointer(uint64_t *a1, uint64_t *a2))()
{
  if (MEMORY[0x29EDCA1B0])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  *(v4 + 32) = specialized MutableCollection<>.subscript.modify(v4, *a2, a2[1]);
  return protocol witness for MutableCollection.subscript.modify in conformance UnsafeMutableMIDIPacketPointer;
}

void protocol witness for MutableCollection.subscript.modify in conformance UnsafeMutableMIDIEventPacketPointer(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

unint64_t protocol witness for MutableCollection.partition(by:) in conformance UnsafeMutableMIDIPacketPointer@<X0>(unint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  result = specialized MutableCollection<>._partitionImpl(by:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance UnsafeMutableMIDIPacketPointer(uint64_t (*result)(), unint64_t *a2))()
{
  v3 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v3 < *(*v2 + 8))
  {
    *result = *(*v2 + v3 + 10);
    return protocol witness for Collection.subscript.read in conformance UnsafeMutableMIDIEventPacketPointer;
  }

  __break(1u);
  return result;
}

void protocol witness for Collection.indices.getter in conformance UnsafeMutableMIDIPacketPointer(void *a1@<X8>)
{
  v2 = *(*v1 + 8);
  *a1 = 0;
  a1[1] = v2;
}

uint64_t MIDIPacket.ByteSequence.Iterator.init(_:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(*result + 8);
  *a2 = *result + 10;
  a2[1] = 0;
  a2[2] = v2;
  return result;
}

Swift::UInt8_optional __swiftcall MIDIPacket.ByteSequence.Iterator.next()()
{
  v1 = v0[1];
  v2 = v0[2];
  if (v1 < v2)
  {
    v3 = *(*v0 + v1);
    v0[1] = v1 + 1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 | ((v1 >= v2) << 8));
}

void protocol witness for IteratorProtocol.next() in conformance MIDIPacket.ByteSequence.Iterator(_BYTE *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  if (v2 < v3)
  {
    v4 = *(*v1 + v2);
    v1[1] = v2 + 1;
  }

  else
  {
    v4 = 0;
  }

  *a1 = v4;
  a1[1] = v2 >= v3;
}

unint64_t UnsafeMutableMIDIPacketPointer.subscript.getter(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(*v1 + 8) > result)
  {
    return *(*v1 + result + 10);
  }

  __break(1u);
  return result;
}

void *protocol witness for BidirectionalCollection.index(before:) in conformance UnsafeMutableMIDIPacketPointer@<X0>(void *result@<X0>, unint64_t *a2@<X8>)
{
  v3 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else if (v3 < *(*v2 + 8))
  {
    *a2 = v3;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t *protocol witness for BidirectionalCollection.formIndex(before:) in conformance UnsafeMutableMIDIPacketPointer(unint64_t *result)
{
  v2 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else if (v2 < *(*v1 + 8))
  {
    *result = v2;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t *protocol witness for Collection.subscript.getter in conformance UnsafeMutableMIDIPacketPointer@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v3 = *result;
  if (*result < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = result[1];
    v5 = *v2;
    if (v4 <= *(*v2 + 8))
    {
      a2[1] = v4;
      a2[2] = v5;
      *a2 = v3;
      return result;
    }
  }

  __break(1u);
  return result;
}

void *protocol witness for RandomAccessCollection.index(_:offsetBy:) in conformance UnsafeMutableMIDIPacketPointer@<X0>(void *result@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v4 = *result + a2;
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else if (v4 <= *(*v3 + 8))
  {
    *a3 = v4;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t *protocol witness for RandomAccessCollection.distance(from:to:) in conformance UnsafeMutableMIDIPacketPointer(unint64_t *result, unint64_t *a2)
{
  v3 = *a2;
  v4 = *(*v2 + 8);
  if (*result <= v4 && v3 <= v4)
  {
    return (v3 - *result);
  }

  __break(1u);
  return result;
}

uint64_t *protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance UnsafeMutableMIDIEventPacketPointer(uint64_t *result, uint64_t *a2)
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

void *protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance UnsafeMutableMIDIEventPacketPointer(void *result, void *a2)
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

void *protocol witness for Collection.index(after:) in conformance UnsafeMutableMIDIPacketPointer@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (*result >= *(*v2 + 8))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void *protocol witness for Collection.formIndex(after:) in conformance UnsafeMutableMIDIPacketPointer(void *result)
{
  if (*result >= *(*v1 + 8))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

void *protocol witness for Sequence._copyToContiguousArray() in conformance MIDIPacket.ByteCollection()
{
  v1 = *v0;
  v2 = *(*v0 + 8);
  if (!v2)
  {
    return MEMORY[0x29EDCA190];
  }

  v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1g5(v2, 0);
  if (specialized Sequence._copySequenceContents(initializing:)(&v5, (v3 + 4), v2, v1) != v2)
  {
    __break(1u);
    return MEMORY[0x29EDCA190];
  }

  return v3;
}

void UnsafeMutableMIDIPacketPointer.makeIterator()(void *a1@<X8>)
{
  v2 = *(*v1 + 8);
  *a1 = *v1 + 10;
  a1[1] = 0;
  a1[2] = v2;
}

void protocol witness for Sequence.makeIterator() in conformance UnsafeMutableMIDIPacketPointer(void *a1@<X8>)
{
  v2 = *(*v1 + 8);
  *a1 = *v1 + 10;
  a1[1] = 0;
  a1[2] = v2;
}

void *protocol witness for Sequence._copyToContiguousArray() in conformance UnsafeMutableMIDIPacketPointer()
{
  v1 = *v0;
  v2 = *(*v0 + 8);
  if (!v2)
  {
    return MEMORY[0x29EDCA190];
  }

  v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1g5(v2, 0);
  if (specialized Sequence._copySequenceContents(initializing:)(v5, v3 + 32, v2, v1) != v2)
  {
    __break(1u);
    return MEMORY[0x29EDCA190];
  }

  return v3;
}

size_t MIDIPacket.Builder.__allocating_init(maximumNumberMIDIBytes:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 24) = 0;
  if (a1 < 1)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = result;
  result = a1 + 10;
  if (__OFADD__(a1, 10))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = calloc(result, 1uLL);
  if (result)
  {
    *(v3 + 16) = result;
    swift_beginAccess();
    *(v3 + 24) = a1;
    return v3;
  }

LABEL_7:
  __break(1u);
  return result;
}

int64_t MIDIPacket.Builder.init(maximumNumberMIDIBytes:)(int64_t result)
{
  *(v1 + 24) = 0;
  if (result < 1)
  {
    __break(1u);
    goto LABEL_6;
  }

  v2 = result;
  v3 = __OFADD__(result, 10);
  result += 10;
  if (v3)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = calloc(result, 1uLL);
  if (result)
  {
    *(v1 + 16) = result;
    swift_beginAccess();
    *(v1 + 24) = v2;
    return v1;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t MIDIEventPacket.Builder.deinit()
{
  swift_beginAccess();
  free(*(v0 + 16));
  return v0;
}

uint64_t MIDIEventPacket.Builder.__deallocating_deinit()
{
  swift_beginAccess();
  free(*(v0 + 16));
  return swift_deallocClassInstance();
}

uint64_t key path getter for MIDIEventPacket.Builder.timeStamp : MIDIEventPacket.Builder@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  v5 = **(v3 + 16);
  if (v5 < 0)
  {
    __break(1u);
  }

  else
  {
    *a2 = v5;
  }

  return result;
}

uint64_t key path setter for MIDIEventPacket.Builder.timeStamp : MIDIEventPacket.Builder(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    **(v3 + 16) = v2;
  }

  return result;
}

uint64_t MIDIEventPacket.Builder.timeStamp.getter()
{
  swift_beginAccess();
  result = **(v0 + 16);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t MIDIEventPacket.Builder.timeStamp.setter(uint64_t a1)
{
  result = swift_beginAccess();
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    **(v1 + 16) = a1;
  }

  return result;
}

uint64_t (*MIDIPacket.Builder.timeStamp.modify(uint64_t *a1))()
{
  if (MEMORY[0x29EDCA1B0])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  result = swift_beginAccess();
  v6 = **(v1 + 16);
  if (v6 < 0)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 24) = v6;
    return MIDIPacket.Builder.timeStamp.modify;
  }

  return result;
}

void MIDIEventPacket.Builder.timeStamp.modify(void **a1, char a2)
{
  v2 = *a1;
  v3 = v2[3];
  if (a2)
  {
    if ((v3 & 0x8000000000000000) == 0)
    {
LABEL_5:
      **(v2[4] + 16) = v3;
      free(v2);
      return;
    }

    __break(1u);
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    goto LABEL_5;
  }

  __break(1u);
}

uint64_t MIDIPacket.Builder.append(_:)(uint64_t a1)
{
  result = swift_beginAccess();
  v4 = *(v1 + 16);
  v5 = *(v4 + 8);
  v6 = *(a1 + 16);
  v7 = v5 + v6;
  if (__OFADD__(v5, v6))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  result = swift_beginAccess();
  if (*(v1 + 24) < v7)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  if (v6)
  {
    v8 = (a1 + 32);
    LODWORD(v9) = *(v4 + 8);
    while (v9 != 0xFFFF)
    {
      v10 = *v8++;
      v9 = v9 + 1;
      *(v4 + 8) = v9;
      *(v4 + 9 + v9) = v10;
      if (!--v6)
      {
        return result;
      }
    }

    __break(1u);
    goto LABEL_9;
  }

  return result;
}

unint64_t static MIDIPacketList.sizeInBytes(pktList:)(int *a1)
{
  v1 = (a1 + 1);
  for (i = *a1; i; --i)
  {
    v1 = (v1 + *(v1 + 8) + 13) & 0xFFFFFFFFFFFFFFFCLL;
  }

  return v1 - a1;
}

MIDIPacket *UnsafeMutableMIDIPacketListPointer.init(_:byteSize:)@<X0>(MIDIPacketList *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = MIDIPacketListInit(a1);
  *a3 = a2;
  a3[1] = result;
  a3[2] = a1;
  return result;
}

void MIDIPacketList.UnsafeSequence.makeIterator()(void *a1@<X8>)
{
  v2 = **v1;
  *a1 = *v1 + 4;
  a1[1] = 0;
  a1[2] = v2;
}

void *MIDIPacketList.UnsafeSequence.Iterator.init(_:)@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = **result;
  *a2 = *result + 4;
  a2[1] = 0;
  a2[2] = v2;
  return result;
}

unint64_t MIDIPacketList.UnsafeSequence.Iterator.next()()
{
  v1 = v0[1];
  if (v1 >= v0[2])
  {
    return 0;
  }

  result = *v0;
  if (v1 >= 1)
  {
    result = (result + *(result + 8) + 13) & 0xFFFFFFFFFFFFFFFCLL;
    *v0 = result;
  }

  v0[1] = v1 + 1;
  return result;
}

uint64_t protocol witness for IteratorProtocol.next() in conformance MIDIEventList.UnsafeSequence.Iterator@<X0>(uint64_t (*a1)(uint64_t)@<X2>, uint64_t *a2@<X8>)
{
  v3 = v2[1];
  if (v3 >= v2[2])
  {
    result = 0;
  }

  else
  {
    result = *v2;
    if (v3 >= 1)
    {
      v5 = a2;
      result = a1(result);
      a2 = v5;
      *v2 = result;
    }

    v2[1] = v3 + 1;
  }

  *a2 = result;
  return result;
}

void protocol witness for Sequence.makeIterator() in conformance MIDIPacketList.UnsafeSequence(void *a1@<X8>)
{
  v2 = **v1;
  *a1 = *v1 + 4;
  a1[1] = 0;
  a1[2] = v2;
}

MIDIPacket *UnsafeMutableMIDIPacketListPointer.init(_:byteSize:)@<X0>(MIDIPacket *pktlist@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = pktlist;
  if (pktlist)
  {
    pktlist = MIDIPacketListInit(pktlist);
  }

  else
  {
    a2 = 0;
  }

  *a3 = a2;
  a3[1] = pktlist;
  a3[2] = v3;
  return pktlist;
}

MIDIPacket *UnsafeMutableMIDIPacketListPointer.append(timestamp:data:)(MIDITimeStamp time, uint64_t a2)
{
  v3 = *(v2 + 8);
  if (!v3)
  {
    return 0;
  }

  result = MIDIPacketListAdd(*(v2 + 16), *v2, v3, time, *(a2 + 16), (a2 + 32));
  *(v2 + 8) = result;
  return result;
}

void UnsafeMutableMIDIPacketListPointer.makeIterator()(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *v2;
  *a1 = v2 + 1;
  a1[1] = 0;
  a1[2] = v3;
}

void protocol witness for Sequence.makeIterator() in conformance UnsafeMutableMIDIPacketListPointer(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *v2;
  *a1 = v2 + 1;
  a1[1] = 0;
  a1[2] = v3;
}

MIDIPacketList *MIDIPacketList.Builder.__allocating_init(byteSize:)(int64_t a1)
{
  result = swift_allocObject();
  if (a1 < 272)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    result = calloc(a1, 1uLL);
    if (result)
    {
      v4 = result;
      v5 = MIDIPacketListInit(result);
      *&v3->packet[0].data[2] = a1;
      *&v3->packet[0].data[10] = v5;
      *&v3->packet[0].data[18] = v4;
      return v3;
    }
  }

  __break(1u);
  return result;
}

int64_t MIDIPacketList.Builder.init(byteSize:)(int64_t result)
{
  if (result < 272)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    result = calloc(result, 1uLL);
    if (result)
    {
      v3 = result;
      v4 = MIDIPacketListInit(result);
      v1[2] = v2;
      v1[3] = v4;
      v1[4] = v3;
      return v1;
    }
  }

  __break(1u);
  return result;
}

uint64_t MIDIPacketList.Builder.deinit()
{
  swift_beginAccess();
  free(*(v0 + 32));
  return v0;
}

uint64_t MIDIPacketList.Builder.__deallocating_deinit()
{
  swift_beginAccess();
  free(*(v0 + 32));
  return swift_deallocClassInstance();
}

MIDIPacket *MIDIPacketList.Builder.append(timestamp:data:)(MIDITimeStamp a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  if (v5)
  {
    v6 = MIDIPacketListAdd(*(v2 + 32), *(v2 + 16), v5, a1, *(a2 + 16), (a2 + 32));
    *(v2 + 24) = v6;
  }

  else
  {
    v6 = 0;
  }

  swift_endAccess();
  return v6;
}

Swift::Void __swiftcall MIDIPacketList.Builder.clear()()
{
  swift_beginAccess();
  *(v0 + 24) = MIDIPacketListInit(*(v0 + 32));
  swift_endAccess();
}

unint64_t lazy protocol witness table accessor for type UnsafeMutableMIDIEventPacketPointer and conformance UnsafeMutableMIDIEventPacketPointer()
{
  result = lazy protocol witness table cache variable for type UnsafeMutableMIDIEventPacketPointer and conformance UnsafeMutableMIDIEventPacketPointer;
  if (!lazy protocol witness table cache variable for type UnsafeMutableMIDIEventPacketPointer and conformance UnsafeMutableMIDIEventPacketPointer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnsafeMutableMIDIEventPacketPointer and conformance UnsafeMutableMIDIEventPacketPointer);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UnsafeMutableMIDIEventPacketPointer and conformance UnsafeMutableMIDIEventPacketPointer;
  if (!lazy protocol witness table cache variable for type UnsafeMutableMIDIEventPacketPointer and conformance UnsafeMutableMIDIEventPacketPointer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnsafeMutableMIDIEventPacketPointer and conformance UnsafeMutableMIDIEventPacketPointer);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UnsafeMutableMIDIEventPacketPointer and conformance UnsafeMutableMIDIEventPacketPointer;
  if (!lazy protocol witness table cache variable for type UnsafeMutableMIDIEventPacketPointer and conformance UnsafeMutableMIDIEventPacketPointer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnsafeMutableMIDIEventPacketPointer and conformance UnsafeMutableMIDIEventPacketPointer);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UnsafeMutableMIDIEventPacketPointer and conformance UnsafeMutableMIDIEventPacketPointer;
  if (!lazy protocol witness table cache variable for type UnsafeMutableMIDIEventPacketPointer and conformance UnsafeMutableMIDIEventPacketPointer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnsafeMutableMIDIEventPacketPointer and conformance UnsafeMutableMIDIEventPacketPointer);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UnsafeMutableMIDIEventPacketPointer and conformance UnsafeMutableMIDIEventPacketPointer;
  if (!lazy protocol witness table cache variable for type UnsafeMutableMIDIEventPacketPointer and conformance UnsafeMutableMIDIEventPacketPointer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnsafeMutableMIDIEventPacketPointer and conformance UnsafeMutableMIDIEventPacketPointer);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Slice<UnsafeMutableMIDIEventPacketPointer> and conformance <> Slice<A>()
{
  result = lazy protocol witness table cache variable for type Slice<UnsafeMutableMIDIEventPacketPointer> and conformance <> Slice<A>;
  if (!lazy protocol witness table cache variable for type Slice<UnsafeMutableMIDIEventPacketPointer> and conformance <> Slice<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SliceVy8CoreMIDI35UnsafeMutableMIDIEventPacketPointerVGMd, &_ss5SliceVy8CoreMIDI35UnsafeMutableMIDIEventPacketPointerVGMR);
    lazy protocol witness table accessor for type UnsafeMutableMIDIEventPacketPointer and conformance UnsafeMutableMIDIEventPacketPointer();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Slice<UnsafeMutableMIDIEventPacketPointer> and conformance <> Slice<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Slice<UnsafeMutableMIDIEventPacketPointer> and conformance <> Slice<A>;
  if (!lazy protocol witness table cache variable for type Slice<UnsafeMutableMIDIEventPacketPointer> and conformance <> Slice<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SliceVy8CoreMIDI35UnsafeMutableMIDIEventPacketPointerVGMd, &_ss5SliceVy8CoreMIDI35UnsafeMutableMIDIEventPacketPointerVGMR);
    lazy protocol witness table accessor for type UnsafeMutableMIDIEventPacketPointer and conformance UnsafeMutableMIDIEventPacketPointer();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Slice<UnsafeMutableMIDIEventPacketPointer> and conformance <> Slice<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Slice<UnsafeMutableMIDIEventPacketPointer> and conformance <> Slice<A>;
  if (!lazy protocol witness table cache variable for type Slice<UnsafeMutableMIDIEventPacketPointer> and conformance <> Slice<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SliceVy8CoreMIDI35UnsafeMutableMIDIEventPacketPointerVGMd, &_ss5SliceVy8CoreMIDI35UnsafeMutableMIDIEventPacketPointerVGMR);
    lazy protocol witness table accessor for type UnsafeMutableMIDIEventPacketPointer and conformance UnsafeMutableMIDIEventPacketPointer();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Slice<UnsafeMutableMIDIEventPacketPointer> and conformance <> Slice<A>);
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

unint64_t lazy protocol witness table accessor for type Int and conformance Int()
{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int and conformance Int);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSnySiGMd, &_sSnySiGMR);
    lazy protocol witness table accessor for type Int and conformance Int();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MIDIEventPacket.WordSequence.Iterator and conformance MIDIEventPacket.WordSequence.Iterator()
{
  result = lazy protocol witness table cache variable for type MIDIEventPacket.WordSequence.Iterator and conformance MIDIEventPacket.WordSequence.Iterator;
  if (!lazy protocol witness table cache variable for type MIDIEventPacket.WordSequence.Iterator and conformance MIDIEventPacket.WordSequence.Iterator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MIDIEventPacket.WordSequence.Iterator and conformance MIDIEventPacket.WordSequence.Iterator);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MIDIEventPacket.WordCollection and conformance MIDIEventPacket.WordCollection()
{
  result = lazy protocol witness table cache variable for type MIDIEventPacket.WordCollection and conformance MIDIEventPacket.WordCollection;
  if (!lazy protocol witness table cache variable for type MIDIEventPacket.WordCollection and conformance MIDIEventPacket.WordCollection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MIDIEventPacket.WordCollection and conformance MIDIEventPacket.WordCollection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MIDIEventPacket.WordCollection and conformance MIDIEventPacket.WordCollection;
  if (!lazy protocol witness table cache variable for type MIDIEventPacket.WordCollection and conformance MIDIEventPacket.WordCollection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MIDIEventPacket.WordCollection and conformance MIDIEventPacket.WordCollection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MIDIEventPacket.WordCollection and conformance MIDIEventPacket.WordCollection;
  if (!lazy protocol witness table cache variable for type MIDIEventPacket.WordCollection and conformance MIDIEventPacket.WordCollection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MIDIEventPacket.WordCollection and conformance MIDIEventPacket.WordCollection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MIDIEventPacket.WordCollection and conformance MIDIEventPacket.WordCollection;
  if (!lazy protocol witness table cache variable for type MIDIEventPacket.WordCollection and conformance MIDIEventPacket.WordCollection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MIDIEventPacket.WordCollection and conformance MIDIEventPacket.WordCollection);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Slice<MIDIEventPacket.WordCollection> and conformance <> Slice<A>()
{
  result = lazy protocol witness table cache variable for type Slice<MIDIEventPacket.WordCollection> and conformance <> Slice<A>;
  if (!lazy protocol witness table cache variable for type Slice<MIDIEventPacket.WordCollection> and conformance <> Slice<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SliceVySo15MIDIEventPacketV8CoreMIDIE14WordCollectionVGMd, &_ss5SliceVySo15MIDIEventPacketV8CoreMIDIE14WordCollectionVGMR);
    lazy protocol witness table accessor for type MIDIEventPacket.WordCollection and conformance MIDIEventPacket.WordCollection();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Slice<MIDIEventPacket.WordCollection> and conformance <> Slice<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Slice<MIDIEventPacket.WordCollection> and conformance <> Slice<A>;
  if (!lazy protocol witness table cache variable for type Slice<MIDIEventPacket.WordCollection> and conformance <> Slice<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SliceVySo15MIDIEventPacketV8CoreMIDIE14WordCollectionVGMd, &_ss5SliceVySo15MIDIEventPacketV8CoreMIDIE14WordCollectionVGMR);
    lazy protocol witness table accessor for type MIDIEventPacket.WordCollection and conformance MIDIEventPacket.WordCollection();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Slice<MIDIEventPacket.WordCollection> and conformance <> Slice<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MIDIEventList.UnsafeSequence.Iterator and conformance MIDIEventList.UnsafeSequence.Iterator()
{
  result = lazy protocol witness table cache variable for type MIDIEventList.UnsafeSequence.Iterator and conformance MIDIEventList.UnsafeSequence.Iterator;
  if (!lazy protocol witness table cache variable for type MIDIEventList.UnsafeSequence.Iterator and conformance MIDIEventList.UnsafeSequence.Iterator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MIDIEventList.UnsafeSequence.Iterator and conformance MIDIEventList.UnsafeSequence.Iterator);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UnsafeMutableMIDIPacketPointer and conformance UnsafeMutableMIDIPacketPointer()
{
  result = lazy protocol witness table cache variable for type UnsafeMutableMIDIPacketPointer and conformance UnsafeMutableMIDIPacketPointer;
  if (!lazy protocol witness table cache variable for type UnsafeMutableMIDIPacketPointer and conformance UnsafeMutableMIDIPacketPointer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnsafeMutableMIDIPacketPointer and conformance UnsafeMutableMIDIPacketPointer);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UnsafeMutableMIDIPacketPointer and conformance UnsafeMutableMIDIPacketPointer;
  if (!lazy protocol witness table cache variable for type UnsafeMutableMIDIPacketPointer and conformance UnsafeMutableMIDIPacketPointer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnsafeMutableMIDIPacketPointer and conformance UnsafeMutableMIDIPacketPointer);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UnsafeMutableMIDIPacketPointer and conformance UnsafeMutableMIDIPacketPointer;
  if (!lazy protocol witness table cache variable for type UnsafeMutableMIDIPacketPointer and conformance UnsafeMutableMIDIPacketPointer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnsafeMutableMIDIPacketPointer and conformance UnsafeMutableMIDIPacketPointer);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UnsafeMutableMIDIPacketPointer and conformance UnsafeMutableMIDIPacketPointer;
  if (!lazy protocol witness table cache variable for type UnsafeMutableMIDIPacketPointer and conformance UnsafeMutableMIDIPacketPointer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnsafeMutableMIDIPacketPointer and conformance UnsafeMutableMIDIPacketPointer);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UnsafeMutableMIDIPacketPointer and conformance UnsafeMutableMIDIPacketPointer;
  if (!lazy protocol witness table cache variable for type UnsafeMutableMIDIPacketPointer and conformance UnsafeMutableMIDIPacketPointer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnsafeMutableMIDIPacketPointer and conformance UnsafeMutableMIDIPacketPointer);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Slice<UnsafeMutableMIDIPacketPointer> and conformance <> Slice<A>()
{
  result = lazy protocol witness table cache variable for type Slice<UnsafeMutableMIDIPacketPointer> and conformance <> Slice<A>;
  if (!lazy protocol witness table cache variable for type Slice<UnsafeMutableMIDIPacketPointer> and conformance <> Slice<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SliceVy8CoreMIDI30UnsafeMutableMIDIPacketPointerVGMd, &_ss5SliceVy8CoreMIDI30UnsafeMutableMIDIPacketPointerVGMR);
    lazy protocol witness table accessor for type UnsafeMutableMIDIPacketPointer and conformance UnsafeMutableMIDIPacketPointer();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Slice<UnsafeMutableMIDIPacketPointer> and conformance <> Slice<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Slice<UnsafeMutableMIDIPacketPointer> and conformance <> Slice<A>;
  if (!lazy protocol witness table cache variable for type Slice<UnsafeMutableMIDIPacketPointer> and conformance <> Slice<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SliceVy8CoreMIDI30UnsafeMutableMIDIPacketPointerVGMd, &_ss5SliceVy8CoreMIDI30UnsafeMutableMIDIPacketPointerVGMR);
    lazy protocol witness table accessor for type UnsafeMutableMIDIPacketPointer and conformance UnsafeMutableMIDIPacketPointer();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Slice<UnsafeMutableMIDIPacketPointer> and conformance <> Slice<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Slice<UnsafeMutableMIDIPacketPointer> and conformance <> Slice<A>;
  if (!lazy protocol witness table cache variable for type Slice<UnsafeMutableMIDIPacketPointer> and conformance <> Slice<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SliceVy8CoreMIDI30UnsafeMutableMIDIPacketPointerVGMd, &_ss5SliceVy8CoreMIDI30UnsafeMutableMIDIPacketPointerVGMR);
    lazy protocol witness table accessor for type UnsafeMutableMIDIPacketPointer and conformance UnsafeMutableMIDIPacketPointer();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Slice<UnsafeMutableMIDIPacketPointer> and conformance <> Slice<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MIDIPacket.ByteSequence.Iterator and conformance MIDIPacket.ByteSequence.Iterator()
{
  result = lazy protocol witness table cache variable for type MIDIPacket.ByteSequence.Iterator and conformance MIDIPacket.ByteSequence.Iterator;
  if (!lazy protocol witness table cache variable for type MIDIPacket.ByteSequence.Iterator and conformance MIDIPacket.ByteSequence.Iterator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MIDIPacket.ByteSequence.Iterator and conformance MIDIPacket.ByteSequence.Iterator);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MIDIPacket.ByteCollection and conformance MIDIPacket.ByteCollection()
{
  result = lazy protocol witness table cache variable for type MIDIPacket.ByteCollection and conformance MIDIPacket.ByteCollection;
  if (!lazy protocol witness table cache variable for type MIDIPacket.ByteCollection and conformance MIDIPacket.ByteCollection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MIDIPacket.ByteCollection and conformance MIDIPacket.ByteCollection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MIDIPacket.ByteCollection and conformance MIDIPacket.ByteCollection;
  if (!lazy protocol witness table cache variable for type MIDIPacket.ByteCollection and conformance MIDIPacket.ByteCollection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MIDIPacket.ByteCollection and conformance MIDIPacket.ByteCollection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MIDIPacket.ByteCollection and conformance MIDIPacket.ByteCollection;
  if (!lazy protocol witness table cache variable for type MIDIPacket.ByteCollection and conformance MIDIPacket.ByteCollection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MIDIPacket.ByteCollection and conformance MIDIPacket.ByteCollection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MIDIPacket.ByteCollection and conformance MIDIPacket.ByteCollection;
  if (!lazy protocol witness table cache variable for type MIDIPacket.ByteCollection and conformance MIDIPacket.ByteCollection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MIDIPacket.ByteCollection and conformance MIDIPacket.ByteCollection);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Slice<MIDIPacket.ByteCollection> and conformance <> Slice<A>()
{
  result = lazy protocol witness table cache variable for type Slice<MIDIPacket.ByteCollection> and conformance <> Slice<A>;
  if (!lazy protocol witness table cache variable for type Slice<MIDIPacket.ByteCollection> and conformance <> Slice<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SliceVySo10MIDIPacketV8CoreMIDIE14ByteCollectionVGMd, &_ss5SliceVySo10MIDIPacketV8CoreMIDIE14ByteCollectionVGMR);
    lazy protocol witness table accessor for type MIDIPacket.ByteCollection and conformance MIDIPacket.ByteCollection();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Slice<MIDIPacket.ByteCollection> and conformance <> Slice<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Slice<MIDIPacket.ByteCollection> and conformance <> Slice<A>;
  if (!lazy protocol witness table cache variable for type Slice<MIDIPacket.ByteCollection> and conformance <> Slice<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SliceVySo10MIDIPacketV8CoreMIDIE14ByteCollectionVGMd, &_ss5SliceVySo10MIDIPacketV8CoreMIDIE14ByteCollectionVGMR);
    lazy protocol witness table accessor for type MIDIPacket.ByteCollection and conformance MIDIPacket.ByteCollection();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Slice<MIDIPacket.ByteCollection> and conformance <> Slice<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Slice<UnsafeMutableMIDIEventPacketPointer> and conformance Slice<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t lazy protocol witness table accessor for type MIDIPacketList.UnsafeSequence.Iterator and conformance MIDIPacketList.UnsafeSequence.Iterator()
{
  result = lazy protocol witness table cache variable for type MIDIPacketList.UnsafeSequence.Iterator and conformance MIDIPacketList.UnsafeSequence.Iterator;
  if (!lazy protocol witness table cache variable for type MIDIPacketList.UnsafeSequence.Iterator and conformance MIDIPacketList.UnsafeSequence.Iterator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MIDIPacketList.UnsafeSequence.Iterator and conformance MIDIPacketList.UnsafeSequence.Iterator);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
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

uint64_t getEnumTagSinglePayload for UnsafeMutableMIDIEventListPointer(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 32))
  {
    return (*a1 + 2);
  }

  if (*(a1 + 24))
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for UnsafeMutableMIDIEventListPointer(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 2;
    *(result + 8) = 0;
    if (a3 >= 2)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UnsafeMutableMIDIEventPacketPointer(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 8))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for UnsafeMutableMIDIEventPacketPointer(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MIDIEventPacket.WordSequence.Iterator(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 24))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for MIDIEventPacket.WordSequence.Iterator(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UnsafeMutableMIDIPacketListPointer(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 24))
  {
    return (*a1 + 2);
  }

  if (*(a1 + 16))
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for UnsafeMutableMIDIPacketListPointer(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MIDIPacketList(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 272))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MIDIPacketList(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 264) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
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

  *(result + 272) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for MIDIEventList(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 276))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MIDIEventList(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 264) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 272) = 0;
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

  *(result + 276) = v3;
  return result;
}

void type metadata accessor for MIDIProtocolID(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t *specialized _writeBackMutableSlice<A, B>(_:bounds:slice:)(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 < 0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v6 = *result;
  v7 = *(*result + 8);
  if (v7 < a3)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v8 = a4 == a5;
  v9 = a2 == a3;
  if (a2 != a3 && a4 != a5)
  {
    v10 = 0;
    v11 = a2 - a3 + 1;
    while (1)
    {
      v12 = a4 + v10;
      if (a4 + v10 >= a5)
      {
        break;
      }

      if (a4 < 0)
      {
        goto LABEL_18;
      }

      if (v12 >= *(a6 + 8))
      {
        goto LABEL_19;
      }

      if (a2 + v10 >= v7)
      {
        goto LABEL_20;
      }

      *(v6 + 4 * a2 + 12 + 4 * v10) = *(a6 + 4 * a4 + 12 + 4 * v10);
      v7 = *(v6 + 8);
      if (a2 + v10 >= v7)
      {
        goto LABEL_21;
      }

      if (v12 >= *(a6 + 8))
      {
        goto LABEL_22;
      }

      result = (v11 + v10);
      v13 = a4 - a5 + 1 + v10;
      v9 = v11 + v10 == 0;
      v8 = v13 == 0;
      if (v11 + v10)
      {
        ++v10;
        if (v13)
        {
          continue;
        }
      }

      goto LABEL_14;
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

LABEL_14:
  if (!v9)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (!v8)
  {
LABEL_26:
    __break(1u);
  }

  return result;
}

uint64_t *specialized _writeBackMutableSlice<A, B>(_:bounds:slice:)(uint64_t *result, unint64_t a2, uint64_t a3, unint64_t a4, int64_t a5, uint64_t a6)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v6 = *result;
  v7 = *(*result + 8);
  if (v7 < a3)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v8 = a4 == a5;
  v9 = a2 == a3;
  if (a2 != a3 && a4 != a5)
  {
    v10 = a3 - 1;
    v11 = a5 - 1;
    v12 = a4;
    while (v12 < a5)
    {
      if ((a4 & 0x8000000000000000) != 0)
      {
        goto LABEL_19;
      }

      if (v12 >= *(a6 + 8))
      {
        goto LABEL_20;
      }

      if (a2 >= v7)
      {
        goto LABEL_21;
      }

      *(v6 + 10 + a2) = *(a6 + 10 + v12);
      v7 = *(v6 + 8);
      if (a2 >= v7)
      {
        goto LABEL_22;
      }

      if (v12 >= *(a6 + 8))
      {
        goto LABEL_23;
      }

      v8 = v11 == v12;
      v9 = v10 == a2;
      if (v10 != a2)
      {
        ++a2;
        if (v11 != v12++)
        {
          continue;
        }
      }

      goto LABEL_15;
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_15:
  if (!v9)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (!v8)
  {
LABEL_27:
    __break(1u);
  }

  return result;
}

unint64_t specialized MutableCollection<>._partitionImpl(by:)(unint64_t result)
{
  v4 = (*v1 + 8);
  v3 = *v4;
  if (v3)
  {
    v5 = result;
    v6 = 0;
    v7 = *v1 + 12;
    v8 = *(*v1 + 8);
    while (1)
    {
LABEL_3:
      if (v6 >= v3)
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v11 = *(v7 + 4 * v6);
      result = v5(&v11);
      if (v2)
      {
        return v6;
      }

      if (result)
      {
        break;
      }

      v3 = *v4;
      if (v6 >= v3)
      {
        goto LABEL_20;
      }

      if (++v6 >= v8)
      {
        return v6;
      }
    }

    v9 = v8;
    while (1)
    {
      v8 = v9 - 1;
      if (v9 - 1 >= *v4)
      {
        break;
      }

      if (v6 >= v8)
      {
        return v6;
      }

      v10 = v4[v9];
      result = v5(&v10);
      v9 = v8;
      if ((result & 1) == 0)
      {
        result = specialized MutableCollection.swapAt(_:_:)(v6, v8);
        v3 = *v4;
        if (v6 >= v3)
        {
          goto LABEL_22;
        }

        if (++v6 < v8)
        {
          goto LABEL_3;
        }

        return v6;
      }
    }

LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

{
  v3 = *v1;
  v4 = *(*v1 + 8);
  if (*(*v1 + 8))
  {
    v5 = result;
    v6 = 0;
    LODWORD(v7) = *(*v1 + 8);
    while (1)
    {
LABEL_3:
      if (v6 >= v7)
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v10 = *(v3 + 10 + v6);
      result = v5(&v10);
      if (v2)
      {
        return v6;
      }

      if (result)
      {
        break;
      }

      v7 = *(v3 + 8);
      if (v6 >= v7)
      {
        goto LABEL_20;
      }

      if (++v6 >= v4)
      {
        return v6;
      }
    }

    v8 = v4;
    while (1)
    {
      v4 = v8 - 1;
      if (v8 - 1 >= *(v3 + 8))
      {
        break;
      }

      if (v6 >= v4)
      {
        return v6;
      }

      v9 = *(v3 + 9 + v8);
      result = v5(&v9);
      v8 = v4;
      if ((result & 1) == 0)
      {
        result = specialized MutableCollection.swapAt(_:_:)(v6, v4);
        v7 = *(v3 + 8);
        if (v6 >= v7)
        {
          goto LABEL_22;
        }

        if (++v6 < v4)
        {
          goto LABEL_3;
        }

        return v6;
      }
    }

LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t specialized _copySequenceToContiguousArray<A>(_:)(uint64_t result)
{
  v1 = *(result + 8);
  v2 = MEMORY[0x29EDCA190];
  v3 = 0;
  if (v1)
  {
    v4 = (result + 12);
    v5 = (MEMORY[0x29EDCA190] + 32);
    while (1)
    {
      v7 = *v4++;
      v6 = v7;
      if (!v3)
      {
        v8 = v2[3];
        if (((v8 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_26;
        }

        v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
        if (v9 <= 1)
        {
          v10 = 1;
        }

        else
        {
          v10 = v9;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt32VGMd, &_ss23_ContiguousArrayStorageCys6UInt32VGMR);
        v11 = swift_allocObject();
        v12 = _swift_stdlib_malloc_size(v11);
        v13 = v12 - 32;
        if (v12 < 32)
        {
          v13 = v12 - 29;
        }

        v14 = v13 >> 2;
        v11[2] = v10;
        v11[3] = 2 * (v13 >> 2);
        v15 = (v11 + 4);
        v16 = v2[3] >> 1;
        if (v2[2])
        {
          if (v11 != v2 || v15 >= v2 + 4 * v16 + 32)
          {
            memmove(v11 + 4, v2 + 4, 4 * v16);
          }

          v2[2] = 0;
        }

        v5 = (v15 + 4 * v16);
        v3 = (v14 & 0x7FFFFFFFFFFFFFFFLL) - v16;

        v2 = v11;
      }

      v18 = __OFSUB__(v3--, 1);
      if (v18)
      {
        break;
      }

      *v5++ = v6;
      if (!--v1)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

LABEL_21:
  v19 = v2[3];
  if (v19 < 2)
  {
    return v2;
  }

  v20 = v19 >> 1;
  v18 = __OFSUB__(v20, v3);
  v21 = v20 - v3;
  if (!v18)
  {
    v2[2] = v21;
    return v2;
  }

LABEL_27:
  __break(1u);
  return result;
}

{
  v1 = *(result + 4);
  v2 = MEMORY[0x29EDCA190];
  if (v1)
  {
    v3 = *(MEMORY[0x29EDCA190] + 24);
    if (((v3 >> 1) + 0x4000000000000000) < 0)
    {
      goto LABEL_42;
    }

    v4 = result + 8;
    v5 = v3 & 0xFFFFFFFFFFFFFFFELL;
    if (v5 <= 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = v5;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySPySo15MIDIEventPacketVGGMd, &_ss23_ContiguousArrayStorageCySPySo15MIDIEventPacketVGGMR);
    v7 = swift_allocObject();
    v8 = _swift_stdlib_malloc_size(v7);
    v9 = v8 - 32;
    if (v8 < 32)
    {
      v9 = v8 - 25;
    }

    v10 = v9 >> 3;
    v7[2] = v6;
    v7[3] = 2 * v10;
    v11 = v7 + 4;
    v12 = v2[3] >> 1;
    v13 = &v7[v12 + 4];
    v14 = v10 & 0x7FFFFFFFFFFFFFFFLL;
    if (v2[2])
    {
      if (v7 != v2 || v11 >= &v2[v12 + 4])
      {
        memcpy(v11, v2 + 4, 8 * v12);
      }

      v2[2] = 0;
    }

    v16 = v14 + ~v12;
    *v13 = v4;
    if (v1 != 1)
    {
      for (i = v1 - 1; i; --i)
      {
        v18 = *(v4 + 8);
        if (v16)
        {
          ++v13;
          v19 = __OFSUB__(v16--, 1);
          if (v19)
          {
            goto LABEL_41;
          }
        }

        else
        {
          v20 = v7[3];
          if (((v20 >> 1) + 0x4000000000000000) < 0)
          {
            goto LABEL_42;
          }

          v21 = v20 & 0xFFFFFFFFFFFFFFFELL;
          if (v21 <= 1)
          {
            v22 = 1;
          }

          else
          {
            v22 = v21;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySPySo15MIDIEventPacketVGGMd, &_ss23_ContiguousArrayStorageCySPySo15MIDIEventPacketVGGMR);
          v23 = swift_allocObject();
          v24 = _swift_stdlib_malloc_size(v23);
          v25 = v24 - 32;
          if (v24 < 32)
          {
            v25 = v24 - 25;
          }

          v26 = v25 >> 3;
          v23[2] = v22;
          v23[3] = 2 * (v25 >> 3);
          v27 = (v23 + 4);
          v28 = v7[3] >> 1;
          if (v7[2])
          {
            v29 = v7 + 4;
            if (v23 != v7 || v27 >= v29 + 8 * v28)
            {
              memmove(v23 + 4, v29, 8 * v28);
            }

            v7[2] = 0;
          }

          v13 = (v27 + 8 * v28);
          v30 = (v26 & 0x7FFFFFFFFFFFFFFFLL) - v28;

          v7 = v23;
          v19 = __OFSUB__(v30, 1);
          v16 = v30 - 1;
          if (v19)
          {
LABEL_41:
            __break(1u);
LABEL_42:
            __break(1u);
LABEL_43:
            __break(1u);
            return result;
          }
        }

        v4 += 4 * v18 + 12;
        *v13 = v4;
      }
    }
  }

  else
  {
    v16 = 0;
    v7 = MEMORY[0x29EDCA190];
  }

  v31 = v7[3];
  if (v31 >= 2)
  {
    v32 = v31 >> 1;
    v19 = __OFSUB__(v32, v16);
    v33 = v32 - v16;
    if (v19)
    {
      goto LABEL_43;
    }

    v7[2] = v33;
  }

  return v7;
}

{
  v1 = *(result + 8);
  v2 = MEMORY[0x29EDCA190];
  v3 = 0;
  if (*(result + 8))
  {
    v4 = (result + 10);
    v5 = (MEMORY[0x29EDCA190] + 32);
    while (1)
    {
      v7 = *v4++;
      v6 = v7;
      if (!v3)
      {
        v8 = v2[3];
        if (((v8 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_24;
        }

        v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
        if (v9 <= 1)
        {
          v10 = 1;
        }

        else
        {
          v10 = v9;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
        v11 = swift_allocObject();
        v12 = 2 * _swift_stdlib_malloc_size(v11) - 64;
        v11[2] = v10;
        v11[3] = v12;
        v13 = (v11 + 4);
        v14 = v2[3] >> 1;
        if (v2[2])
        {
          if (v11 != v2 || v13 >= v2 + v14 + 32)
          {
            memmove(v11 + 4, v2 + 4, v14);
          }

          v2[2] = 0;
        }

        v5 = (v13 + v14);
        v3 = (v12 >> 1) - v14;

        v2 = v11;
      }

      v16 = __OFSUB__(v3--, 1);
      if (v16)
      {
        break;
      }

      *v5++ = v6;
      if (!--v1)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_19:
  v17 = v2[3];
  if (v17 < 2)
  {
    return v2;
  }

  v18 = v17 >> 1;
  v16 = __OFSUB__(v18, v3);
  v19 = v18 - v3;
  if (!v16)
  {
    v2[2] = v19;
    return v2;
  }

LABEL_25:
  __break(1u);
  return result;
}

void specialized _copySequenceToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 4);
  v5 = MEMORY[0x29EDCA190];
  if (v4)
  {
    v6 = *(MEMORY[0x29EDCA190] + 24);
    if (((v6 >> 1) + 0x4000000000000000) < 0)
    {
      goto LABEL_42;
    }

    v7 = a4 + 8;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 <= 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySPySo15MIDIEventPacketVGGMd, &_ss23_ContiguousArrayStorageCySPySo15MIDIEventPacketVGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v13 = v12 >> 3;
    v10[2] = v9;
    v10[3] = 2 * v13;
    v14 = v10 + 4;
    v15 = v5[3] >> 1;
    v16 = &v10[v15 + 4];
    v17 = v13 & 0x7FFFFFFFFFFFFFFFLL;
    if (v5[2])
    {
      if (v10 != v5 || v14 >= &v5[v15 + 4])
      {
        memcpy(v14, v5 + 4, 8 * v15);
      }

      v5[2] = 0;
    }

    v19 = v17 + ~v15;
    *v16 = v7;
    if (v4 != 1)
    {
      for (i = v4 - 1; i; --i)
      {
        v21 = *(v7 + 8);
        if (v19)
        {
          ++v16;
          v22 = __OFSUB__(v19--, 1);
          if (v22)
          {
            goto LABEL_41;
          }
        }

        else
        {
          v23 = v10[3];
          if (((v23 >> 1) + 0x4000000000000000) < 0)
          {
            goto LABEL_42;
          }

          v24 = v23 & 0xFFFFFFFFFFFFFFFELL;
          if (v24 <= 1)
          {
            v25 = 1;
          }

          else
          {
            v25 = v24;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySPySo15MIDIEventPacketVGGMd, &_ss23_ContiguousArrayStorageCySPySo15MIDIEventPacketVGGMR);
          v26 = swift_allocObject();
          v27 = _swift_stdlib_malloc_size(v26);
          v28 = v27 - 32;
          if (v27 < 32)
          {
            v28 = v27 - 25;
          }

          v29 = v28 >> 3;
          v26[2] = v25;
          v26[3] = 2 * (v28 >> 3);
          v30 = (v26 + 4);
          v31 = v10[3] >> 1;
          if (v10[2])
          {
            v32 = v10 + 4;
            if (v26 != v10 || v30 >= v32 + 8 * v31)
            {
              memmove(v26 + 4, v32, 8 * v31);
            }

            v10[2] = 0;
          }

          v16 = (v30 + 8 * v31);
          v33 = (v29 & 0x7FFFFFFFFFFFFFFFLL) - v31;

          v10 = v26;
          v22 = __OFSUB__(v33, 1);
          v19 = v33 - 1;
          if (v22)
          {
LABEL_41:
            __break(1u);
LABEL_42:
            __break(1u);
LABEL_43:
            __break(1u);
            return;
          }
        }

        v7 += 4 * v21 + 12;
        *v16 = v7;
      }
    }
  }

  else
  {
    v19 = 0;
    v10 = MEMORY[0x29EDCA190];
  }

  v34 = v10[3];
  if (v34 >= 2)
  {
    v35 = v34 >> 1;
    v22 = __OFSUB__(v35, v19);
    v36 = v35 - v19;
    if (v22)
    {
      goto LABEL_43;
    }

    v10[2] = v36;
  }
}

unsigned int *specialized _copySequenceToContiguousArray<A>(_:)(unsigned int *result)
{
  v1 = *result;
  v2 = MEMORY[0x29EDCA190];
  if (v1)
  {
    v3 = *(MEMORY[0x29EDCA190] + 24);
    if (((v3 >> 1) + 0x4000000000000000) < 0)
    {
      goto LABEL_42;
    }

    v4 = (result + 1);
    v5 = v3 & 0xFFFFFFFFFFFFFFFELL;
    if (v5 <= 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = v5;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySPySo10MIDIPacketVGGMd, &_ss23_ContiguousArrayStorageCySPySo10MIDIPacketVGGMR);
    v7 = swift_allocObject();
    v8 = _swift_stdlib_malloc_size(v7);
    v9 = v8 - 32;
    if (v8 < 32)
    {
      v9 = v8 - 25;
    }

    v10 = v9 >> 3;
    v7[2] = v6;
    v7[3] = 2 * v10;
    v11 = v7 + 4;
    v12 = v2[3] >> 1;
    v13 = &v7[v12 + 4];
    v14 = v10 & 0x7FFFFFFFFFFFFFFFLL;
    if (v2[2])
    {
      if (v7 != v2 || v11 >= &v2[v12 + 4])
      {
        memcpy(v11, v2 + 4, 8 * v12);
      }

      v2[2] = 0;
    }

    v16 = v14 + ~v12;
    *v13 = v4;
    if (v1 != 1)
    {
      for (i = v1 - 1; i; --i)
      {
        v18 = *(v4 + 8);
        if (v16)
        {
          ++v13;
          v19 = __OFSUB__(v16--, 1);
          if (v19)
          {
            goto LABEL_41;
          }
        }

        else
        {
          v20 = v7[3];
          if (((v20 >> 1) + 0x4000000000000000) < 0)
          {
            goto LABEL_42;
          }

          v21 = v20 & 0xFFFFFFFFFFFFFFFELL;
          if (v21 <= 1)
          {
            v22 = 1;
          }

          else
          {
            v22 = v21;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySPySo10MIDIPacketVGGMd, &_ss23_ContiguousArrayStorageCySPySo10MIDIPacketVGGMR);
          v23 = swift_allocObject();
          v24 = _swift_stdlib_malloc_size(v23);
          v25 = v24 - 32;
          if (v24 < 32)
          {
            v25 = v24 - 25;
          }

          v26 = v25 >> 3;
          v23[2] = v22;
          v23[3] = 2 * (v25 >> 3);
          v27 = (v23 + 4);
          v28 = v7[3] >> 1;
          if (v7[2])
          {
            v29 = v7 + 4;
            if (v23 != v7 || v27 >= v29 + 8 * v28)
            {
              memmove(v23 + 4, v29, 8 * v28);
            }

            v7[2] = 0;
          }

          v13 = (v27 + 8 * v28);
          v30 = (v26 & 0x7FFFFFFFFFFFFFFFLL) - v28;

          v7 = v23;
          v19 = __OFSUB__(v30, 1);
          v16 = v30 - 1;
          if (v19)
          {
LABEL_41:
            __break(1u);
LABEL_42:
            __break(1u);
LABEL_43:
            __break(1u);
            return result;
          }
        }

        v4 = (v4 + v18 + 13) & 0xFFFFFFFFFFFFFFFCLL;
        *v13 = v4;
      }
    }
  }

  else
  {
    v16 = 0;
    v7 = MEMORY[0x29EDCA190];
  }

  v31 = v7[3];
  if (v31 >= 2)
  {
    v32 = v31 >> 1;
    v19 = __OFSUB__(v32, v16);
    v33 = v32 - v16;
    if (v19)
    {
      goto LABEL_43;
    }

    v7[2] = v33;
  }

  return v7;
}

void specialized _copySequenceToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v3 = *a3;
  v4 = MEMORY[0x29EDCA190];
  if (v3)
  {
    v5 = *(MEMORY[0x29EDCA190] + 24);
    if (((v5 >> 1) + 0x4000000000000000) < 0)
    {
      goto LABEL_42;
    }

    v6 = (a3 + 1);
    v7 = v5 & 0xFFFFFFFFFFFFFFFELL;
    if (v7 <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySPySo10MIDIPacketVGGMd, &_ss23_ContiguousArrayStorageCySPySo10MIDIPacketVGGMR);
    v9 = swift_allocObject();
    v10 = _swift_stdlib_malloc_size(v9);
    v11 = v10 - 32;
    if (v10 < 32)
    {
      v11 = v10 - 25;
    }

    v12 = v11 >> 3;
    v9[2] = v8;
    v9[3] = 2 * v12;
    v13 = v9 + 4;
    v14 = v4[3] >> 1;
    v15 = &v9[v14 + 4];
    v16 = v12 & 0x7FFFFFFFFFFFFFFFLL;
    if (v4[2])
    {
      if (v9 != v4 || v13 >= &v4[v14 + 4])
      {
        memcpy(v13, v4 + 4, 8 * v14);
      }

      v4[2] = 0;
    }

    v18 = v16 + ~v14;
    *v15 = v6;
    if (v3 != 1)
    {
      for (i = v3 - 1; i; --i)
      {
        v20 = *(v6 + 8);
        if (v18)
        {
          ++v15;
          v21 = __OFSUB__(v18--, 1);
          if (v21)
          {
            goto LABEL_41;
          }
        }

        else
        {
          v22 = v9[3];
          if (((v22 >> 1) + 0x4000000000000000) < 0)
          {
            goto LABEL_42;
          }

          v23 = v22 & 0xFFFFFFFFFFFFFFFELL;
          if (v23 <= 1)
          {
            v24 = 1;
          }

          else
          {
            v24 = v23;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySPySo10MIDIPacketVGGMd, &_ss23_ContiguousArrayStorageCySPySo10MIDIPacketVGGMR);
          v25 = swift_allocObject();
          v26 = _swift_stdlib_malloc_size(v25);
          v27 = v26 - 32;
          if (v26 < 32)
          {
            v27 = v26 - 25;
          }

          v28 = v27 >> 3;
          v25[2] = v24;
          v25[3] = 2 * (v27 >> 3);
          v29 = (v25 + 4);
          v30 = v9[3] >> 1;
          if (v9[2])
          {
            v31 = v9 + 4;
            if (v25 != v9 || v29 >= v31 + 8 * v30)
            {
              memmove(v25 + 4, v31, 8 * v30);
            }

            v9[2] = 0;
          }

          v15 = (v29 + 8 * v30);
          v32 = (v28 & 0x7FFFFFFFFFFFFFFFLL) - v30;

          v9 = v25;
          v21 = __OFSUB__(v32, 1);
          v18 = v32 - 1;
          if (v21)
          {
LABEL_41:
            __break(1u);
LABEL_42:
            __break(1u);
LABEL_43:
            __break(1u);
            return;
          }
        }

        v6 = (v6 + v20 + 13) & 0xFFFFFFFFFFFFFFFCLL;
        *v15 = v6;
      }
    }
  }

  else
  {
    v18 = 0;
    v9 = MEMORY[0x29EDCA190];
  }

  v33 = v9[3];
  if (v33 >= 2)
  {
    v34 = v33 >> 1;
    v21 = __OFSUB__(v34, v18);
    v35 = v34 - v18;
    if (v21)
    {
      goto LABEL_43;
    }

    v9[2] = v35;
  }
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = a7 + 8;
  v8 = *(a7 + 4);
  if (!a2)
  {
    v9 = 0;
    a3 = 0;
    goto LABEL_13;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_13;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    if (v8)
    {
      *a2 = v7;
      if (a3 == 1)
      {
        v9 = 1;
LABEL_13:
        *result = v7;
        result[1] = v9;
        result[2] = v8;
        return a3;
      }

      if (v8 != 1)
      {
        v10 = a2 + 1;
        v11 = 2;
        while (1)
        {
          v12 = v11;
          v7 += 4 * *(v7 + 8) + 12;
          *v10 = v7;
          if (a3 == v11)
          {
            break;
          }

          ++v11;
          ++v10;
          if (1 - v8 + v12 + 1 == 2)
          {
            v9 = v8;
            a3 = v12;
            goto LABEL_13;
          }
        }

        v9 = v11;
        goto LABEL_13;
      }

      a3 = 1;
    }

    else
    {
      a3 = 0;
    }

    v9 = v8;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

unint64_t *specialized Sequence._copySequenceContents(initializing:)(unint64_t *result, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int *a6)
{
  v8 = *a6;
  v6 = (a6 + 1);
  v7 = v8;
  if (!a2)
  {
    v9 = 0;
    a3 = 0;
    goto LABEL_13;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_13;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    if (v7)
    {
      *a2 = v6;
      if (a3 == 1)
      {
        v9 = 1;
LABEL_13:
        *result = v6;
        result[1] = v9;
        result[2] = v7;
        return a3;
      }

      if (v7 != 1)
      {
        v10 = a2 + 1;
        v11 = 2;
        while (1)
        {
          v12 = v11;
          v6 = (v6 + *(v6 + 8) + 13) & 0xFFFFFFFFFFFFFFFCLL;
          *v10 = v6;
          if (a3 == v11)
          {
            break;
          }

          ++v11;
          ++v10;
          if (1 - v7 + v12 + 1 == 2)
          {
            v9 = v7;
            a3 = v12;
            goto LABEL_13;
          }
        }

        v9 = v11;
        goto LABEL_13;
      }

      a3 = 1;
    }

    else
    {
      a3 = 0;
    }

    v9 = v7;
    goto LABEL_13;
  }

  __break(1u);
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

void *specialized Sequence._copySequenceContents(initializing:)(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 12;
  v5 = *(a4 + 8);
  if (!a2)
  {
    v6 = 0;
    goto LABEL_19;
  }

  if (!a3)
  {
LABEL_18:
    v6 = a3;
    goto LABEL_19;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v6 = *(a4 + 8);
    if (v5)
    {
      v7 = v5 - 1;
      if (v5 - 1 >= (a3 - 1))
      {
        v7 = a3 - 1;
      }

      v8 = v7 + 1;
      if (v8 > 8 && (a2 - a4 - 12) >= 0x20)
      {
        v12 = v8 & 7;
        if ((v8 & 7) == 0)
        {
          v12 = 8;
        }

        v9 = v8 - v12;
        v10 = v9 + 1;
        v11 = (a2 + 4 * v9);
        v13 = (a4 + 28);
        v14 = (a2 + 16);
        v15 = v9;
        do
        {
          v16 = *v13;
          *(v14 - 1) = *(v13 - 1);
          *v14 = v16;
          v13 += 2;
          v14 += 2;
          v15 -= 8;
        }

        while (v15);
      }

      else
      {
        v9 = 0;
        v10 = 1;
        v11 = a2;
      }

      while (1)
      {
        *v11 = *(v4 + 4 * v9);
        if (a3 == v10)
        {
          goto LABEL_18;
        }

        v9 = v10;
        ++v11;
        if (v5 + 1 == ++v10)
        {
          v6 = v5;
          break;
        }
      }
    }

LABEL_19:
    *result = v4;
    result[1] = v6;
    result[2] = v5;
    return v6;
  }

  __break(1u);
  return result;
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 10;
  v5 = *(a4 + 8);
  if (!a2)
  {
    v6 = 0;
    goto LABEL_19;
  }

  if (!a3)
  {
LABEL_18:
    v6 = a3;
    goto LABEL_19;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v6 = *(a4 + 8);
    if (*(a4 + 8))
    {
      v7 = v5 - 1;
      if (v5 - 1 >= (a3 - 1))
      {
        v7 = a3 - 1;
      }

      v8 = v7 + 1;
      if (v8 > 0x10 && &a2[-a4 - 10] >= 0x10)
      {
        v11 = a2;
        v12 = v8 & 0xF;
        if ((v8 & 0xF) == 0)
        {
          v12 = 16;
        }

        v9 = v8 - v12;
        v10 = v9 + 1;
        a2 += v9;
        v13 = v9;
        v14 = (a4 + 10);
        do
        {
          v15 = *v14++;
          *v11++ = v15;
          v13 -= 16;
        }

        while (v13);
      }

      else
      {
        v9 = 0;
        v10 = 1;
      }

      while (1)
      {
        *a2 = *(v4 + v9);
        if (a3 == v10)
        {
          goto LABEL_18;
        }

        v9 = v10;
        ++a2;
        if (v5 + 1 == ++v10)
        {
          v6 = v5;
          break;
        }
      }
    }

LABEL_19:
    *result = v4;
    result[1] = v6;
    result[2] = v5;
    return v6;
  }

  __break(1u);
  return result;
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (!a2)
  {
LABEL_10:
    v5 = 0;
LABEL_12:
    *result = a4;
    result[1] = v5;
    return v5;
  }

  if (!a3)
  {
LABEL_11:
    v5 = a3;
    goto LABEL_12;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v4 = *(a4 + 8);
    if (*(a4 + 8))
    {
      v5 = 0;
      while (v5 < v4)
      {
        *(a2 + v5) = *(a4 + 10 + v5);
        if (a3 - 1 == v5)
        {
          goto LABEL_11;
        }

        v4 = *(a4 + 8);
        if (++v5 == v4)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
      goto LABEL_14;
    }

    goto LABEL_10;
  }

LABEL_14:
  __break(1u);
  return result;
}

{
  if (!a2)
  {
LABEL_10:
    v5 = 0;
LABEL_12:
    *result = a4;
    result[1] = v5;
    return v5;
  }

  if (!a3)
  {
LABEL_11:
    v5 = a3;
    goto LABEL_12;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v4 = *(a4 + 8);
    if (v4)
    {
      v5 = 0;
      while (v5 < v4)
      {
        *(a2 + 4 * v5) = *(a4 + 12 + 4 * v5);
        if (a3 - 1 == v5)
        {
          goto LABEL_11;
        }

        v4 = *(a4 + 8);
        if (++v5 == v4)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
      goto LABEL_14;
    }

    goto LABEL_10;
  }

LABEL_14:
  __break(1u);
  return result;
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 8;
  v5 = *(a4 + 4);
  if (!a2)
  {
    v6 = 0;
    a3 = 0;
    goto LABEL_13;
  }

  if (!a3)
  {
    v6 = 0;
    goto LABEL_13;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    if (v5)
    {
      *a2 = v4;
      if (a3 == 1)
      {
        v6 = 1;
LABEL_13:
        *result = v4;
        result[1] = v6;
        result[2] = v5;
        return a3;
      }

      if (v5 != 1)
      {
        v7 = a2 + 1;
        v8 = 2;
        while (1)
        {
          v9 = v8;
          v4 += 4 * *(v4 + 8) + 12;
          *v7 = v4;
          if (a3 == v8)
          {
            break;
          }

          ++v8;
          ++v7;
          if (1 - v5 + v9 + 1 == 2)
          {
            v6 = v5;
            a3 = v9;
            goto LABEL_13;
          }
        }

        v6 = v8;
        goto LABEL_13;
      }

      a3 = 1;
    }

    else
    {
      a3 = 0;
    }

    v6 = v5;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

unint64_t *specialized Sequence._copySequenceContents(initializing:)(unint64_t *result, unint64_t *a2, uint64_t a3, unsigned int *a4)
{
  v6 = *a4;
  v4 = (a4 + 1);
  v5 = v6;
  if (!a2)
  {
    v7 = 0;
    a3 = 0;
    goto LABEL_13;
  }

  if (!a3)
  {
    v7 = 0;
    goto LABEL_13;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    if (v5)
    {
      *a2 = v4;
      if (a3 == 1)
      {
        v7 = 1;
LABEL_13:
        *result = v4;
        result[1] = v7;
        result[2] = v5;
        return a3;
      }

      if (v5 != 1)
      {
        v8 = a2 + 1;
        v9 = 2;
        while (1)
        {
          v10 = v9;
          v4 = (v4 + *(v4 + 8) + 13) & 0xFFFFFFFFFFFFFFFCLL;
          *v8 = v4;
          if (a3 == v9)
          {
            break;
          }

          ++v9;
          ++v8;
          if (1 - v5 + v10 + 1 == 2)
          {
            v7 = v5;
            a3 = v10;
            goto LABEL_13;
          }
        }

        v7 = v9;
        goto LABEL_13;
      }

      a3 = 1;
    }

    else
    {
      a3 = 0;
    }

    v7 = v5;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt32V_Tt1g5(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x29EDCA190];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt32VGMd, &_ss23_ContiguousArrayStorageCys6UInt32VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 29;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 2);
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
    return MEMORY[0x29EDCA190];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}