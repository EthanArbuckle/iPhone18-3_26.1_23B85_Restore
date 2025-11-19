unint64_t UnsafeBufferPointer.init(_:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v4 = *(*(a3 - 8) + 72);
  if (v4)
  {
    return a4(a2, HIDWORD(result) / v4);
  }

  __break(1u);
  return result;
}

unint64_t AudioBuffer.init<A>(_:numberOfChannels:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(a4 - 8) + 72);
  v5 = a2 * v4;
  if ((a2 * v4) >> 64 != (a2 * v4) >> 63)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = a3;
  if (a3 > 0xFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if ((v5 | a3) < 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v5 <= 0xFFFFFFFFLL)
  {
    UnsafeMutableBufferPointer.baseAddress.getter();
    return v6 | (v5 << 32);
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t static AudioBufferList.sizeInBytes(maximumBuffers:)(uint64_t result)
{
  if (result < 1)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (result > 0x800000000000000)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v1 = 16 * result - 16;
  result = 16 * result + 8;
  if (__OFADD__(v1, 24))
  {
LABEL_7:
    __break(1u);
  }

  return result;
}

int64_t static AudioBufferList.allocate(maximumBuffers:)@<X0>(int64_t result@<X0>, int64_t *a2@<X8>)
{
  if (result < 1)
  {
    __break(1u);
    goto LABEL_8;
  }

  v2 = result;
  if (result > 0x800000000000000)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v4 = 16 * result - 16;
  result = 16 * result + 8;
  if (__OFADD__(v4, 24))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  result = calloc(result, 1uLL);
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (!HIDWORD(v2))
  {
    *result = v2;
    *a2 = result;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t UnsafeMutableAudioBufferListPointer.init(_:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = result;
  return result;
}

{
  *a2 = result;
  return result;
}

unint64_t UnsafeMutableAudioBufferListPointer.count.setter(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(result))
  {
    **v1 = result;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t *key path setter for UnsafeMutableAudioBufferListPointer.count : UnsafeMutableAudioBufferListPointer(unint64_t *result, _DWORD **a2)
{
  v2 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(v2))
  {
    **a2 = v2;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t *(*UnsafeMutableAudioBufferListPointer.count.modify(void *a1))(unint64_t *result, char a2)
{
  v2 = *v1;
  a1[1] = *v1;
  *a1 = *v2;
  return UnsafeMutableAudioBufferListPointer.count.modify;
}

unint64_t *UnsafeMutableAudioBufferListPointer.count.modify(unint64_t *result, char a2)
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
      *result[1] = v2;
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

uint64_t (*UnsafeMutableAudioBufferListPointer.subscript.read(uint64_t a1, unint64_t a2))()
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (**v2 > a2)
  {
    v3 = *v2 + 16 * a2;
    v4 = *(v3 + 8);
    v5 = *(v3 + 16);
    return UnsafeMutableAudioBufferListPointer.unsafeMutablePointer.modify;
  }

  __break(1u);
  return result;
}

uint64_t (*UnsafeMutableAudioBufferListPointer.subscript.modify(uint64_t a1, unint64_t a2))()
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (**v2 > a2)
  {
    result = UnsafeMutableAudioBufferListPointer.unsafeMutablePointer.modify;
    v4 = *v2 + 16 * a2 + 8;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t UnsafeMutableAudioBufferListPointer.subscript.setter(uint64_t result, uint64_t a2, unint64_t a3)
{
  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (**v3 > a3)
  {
    v4 = *v3 + 16 * a3;
    *(v4 + 8) = result;
    *(v4 + 16) = a2;
    return result;
  }

  __break(1u);
  return result;
}

void *protocol witness for MutableCollection.subscript.setter in conformance UnsafeMutableAudioBufferListPointer(void *result, unint64_t *a2)
{
  v3 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v3 < **v2)
  {
    v4 = result[1];
    v5 = *v2 + 16 * v3;
    *(v5 + 8) = *result;
    *(v5 + 16) = v4;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t (*protocol witness for MutableCollection.subscript.modify in conformance UnsafeMutableAudioBufferListPointer(uint64_t a1, unint64_t *a2))()
{
  v3 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v3 < **v2)
  {
    result = UnsafeMutableAudioBufferListPointer.unsafeMutablePointer.modify;
    v5 = *v2 + 16 * v3 + 8;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t (*protocol witness for MutableCollection.subscript.modify in conformance UnsafeMutableAudioBufferListPointer(uint64_t *a1, uint64_t *a2))()
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
  return protocol witness for MutableCollection.subscript.modify in conformance UnsafeMutableAudioBufferListPointer;
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
    if (**v3 >= a3)
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

void (*specialized MutableCollection<>.subscript.modify(void (**a1)(unint64_t **a1, char a2), uint64_t a2, uint64_t a3))(unint64_t **a1, char a2)
{
  if (MEMORY[0x29EDCA1B0])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x38uLL);
  }

  v8 = result;
  *a1 = result;
  *(result + 5) = a3;
  *(result + 6) = v3;
  *(result + 4) = a2;
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    result = *v3;
    if (*(*(*v3 + 16) + 8) >= a3)
    {
      v9 = v3[8];
      *(v8 + 1) = a3;
      *(v8 + 2) = result;
      *(v8 + 24) = v9;
      *v8 = a2;

      return MutableCollection<>.subscript.modifyspecialized ;
    }
  }

  __break(1u);
  return result;
}

void MutableCollection<>.subscript.modifyspecialized (unint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = (*a1)[2];
  v6 = *(*a1 + 24);
  v7 = (*a1)[5];
  v8 = (*a1)[6];
  v9 = (*a1)[4];
  if (a2)
  {
    v10 = (*a1)[2];

    specialized _writeBackMutableSlice<A, B>(_:bounds:slice:)(v8, v9, v7, v3, v4, v5);
  }

  else
  {
    specialized _writeBackMutableSlice<A, B>(_:bounds:slice:)((*a1)[6], v9, v7, v3, v4, v5);
  }

  v11 = v2[2];

  free(v2);
}

unint64_t protocol witness for MutableCollection.partition(by:) in conformance UnsafeMutableAudioBufferListPointer@<X0>(unint64_t a1@<X0>, unint64_t *a2@<X8>)
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
      v4 = **v2;
      if (v4 > result)
      {
        if (v4 > a2)
        {
          v5 = &v3[4 * result + 2];
          v6 = *v5;
          v7 = *(v5 + 1);
          v8 = &v3[4 * a2 + 2];
          v9 = *(v8 + 1);
          *v5 = *v8;
          *(v5 + 1) = v9;
          if (*v3 > a2)
          {
            *v8 = v6;
            *(v8 + 1) = v7;
            return result;
          }

LABEL_11:
          __break(1u);
          return result;
        }

LABEL_10:
        __break(1u);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_10;
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
      v3 = *(*v2 + 16);
      v4 = *(v3 + 8);
      if (v4 > result)
      {
        if ((a2 & 0x8000000000000000) == 0)
        {
          if (v4 > a2)
          {
            v6 = v3 + 12 + 20 * result;
            v7 = *v6;
            v8 = *(v6 + 8);
            v9 = *(v6 + 16);
            v10 = v3 + 12 + 20 * a2;
            v11 = *v10;
            v12 = *(v10 + 8);
            v13 = *(v10 + 16);
            if ((v2[8] & 1) == 0)
            {
              v14 = result;
              ManagedAudioChannelLayout.ensureUniqueMutableReference()();
              result = v14;
              v3 = *(*v2 + 16);
              v4 = *(v3 + 8);
            }

            if (v4 > result)
            {
              v15 = v3 + 20 * result;
              *(v15 + 12) = v11;
              *(v15 + 20) = v12;
              *(v15 + 28) = v13;
              if ((v2[8] & 1) == 0)
              {
                result = ManagedAudioChannelLayout.ensureUniqueMutableReference()();
              }

              v16 = *(*v2 + 16);
              if (*(v16 + 8) > a2)
              {
                v17 = v16 + 20 * a2;
                *(v17 + 12) = v7;
                *(v17 + 20) = v8;
                *(v17 + 28) = v9;
                return result;
              }

LABEL_19:
              __break(1u);
              return result;
            }

LABEL_18:
            __break(1u);
            goto LABEL_19;
          }

LABEL_17:
          __break(1u);
          goto LABEL_18;
        }

LABEL_16:
        __break(1u);
        goto LABEL_17;
      }
    }

    __break(1u);
    goto LABEL_16;
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
        if (v4 > a2)
        {
          v5 = v3 + 12 + 20 * result;
          v6 = *v5;
          v7 = *(v5 + 8);
          v8 = *(v5 + 16);
          v9 = v3 + 12 + 20 * a2;
          v10 = *(v9 + 16);
          v11 = *(v9 + 8);
          *v5 = *v9;
          *(v5 + 8) = v11;
          *(v5 + 16) = v10;
          if (*(v3 + 8) > a2)
          {
            *v9 = v6;
            *(v9 + 8) = v7;
            *(v9 + 16) = v8;
            return result;
          }

LABEL_11:
          __break(1u);
          return result;
        }

LABEL_10:
        __break(1u);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_10;
  }

  return result;
}

unint64_t specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(unint64_t result, uint64_t a2, unint64_t a3, unsigned int *a4)
{
  v4 = *a4;
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
  v4 = *(*(a4 + 16) + 8);
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

uint64_t (*protocol witness for Collection.subscript.read in conformance UnsafeMutableAudioBufferListPointer(uint64_t (*result)(), unint64_t *a2))()
{
  v3 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v3 < **v2)
  {
    v4 = *v2 + 16 * v3;
    v5 = *(v4 + 16);
    *result = *(v4 + 8);
    *(result + 1) = v5;
    return UnsafeMutableAudioBufferListPointer.unsafeMutablePointer.modify;
  }

  __break(1u);
  return result;
}

uint64_t *protocol witness for Collection.subscript.getter in conformance UnsafeMutableAudioBufferListPointer@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
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
    if (v4 <= **v2)
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

void protocol witness for Collection.indices.getter in conformance UnsafeMutableAudioBufferListPointer(void *a1@<X8>)
{
  v2 = **v1;
  *a1 = 0;
  a1[1] = v2;
}

unint64_t protocol witness for RandomAccessCollection.index(_:offsetBy:limitedBy:) in conformance UnsafeMutableAudioBufferListPointer@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(*a1, a2, *a3, *v4);
  *a4 = result;
  *(a4 + 8) = v7 & 1;
  return result;
}

void *protocol witness for Collection.index(after:) in conformance UnsafeMutableAudioBufferListPointer@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (*result >= **v2)
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void *protocol witness for Collection.formIndex(after:) in conformance UnsafeMutableAudioBufferListPointer(void *result)
{
  if (*result >= **v1)
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

void *protocol witness for BidirectionalCollection.index(before:) in conformance UnsafeMutableAudioBufferListPointer@<X0>(void *result@<X0>, unint64_t *a2@<X8>)
{
  v3 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else if (v3 < **v2)
  {
    *a2 = v3;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t *protocol witness for BidirectionalCollection.formIndex(before:) in conformance UnsafeMutableAudioBufferListPointer(unint64_t *result)
{
  v2 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else if (v2 < **v1)
  {
    *result = v2;
    return result;
  }

  __break(1u);
  return result;
}

void *protocol witness for RandomAccessCollection.index(_:offsetBy:) in conformance UnsafeMutableAudioBufferListPointer@<X0>(void *result@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v4 = *result + a2;
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else if (v4 <= **v3)
  {
    *a3 = v4;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t *protocol witness for RandomAccessCollection.distance(from:to:) in conformance UnsafeMutableAudioBufferListPointer(unint64_t *result, unint64_t *a2)
{
  v3 = *a2;
  v4 = **v2;
  if (*result <= v4 && v3 <= v4)
  {
    return (v3 - *result);
  }

  __break(1u);
  return result;
}

void *protocol witness for Sequence._copyToContiguousArray() in conformance UnsafeMutableAudioBufferListPointer()
{
  v1 = *v0;
  v2 = **v0;
  if (!v2)
  {
    return MEMORY[0x29EDCA190];
  }

  v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo05AudioC0V_Tt1g5(**v0, 0);
  if (specialized Sequence._copySequenceContents(initializing:)(&v5, v3 + 4, v2, v1) != v2)
  {
    __break(1u);
    return MEMORY[0x29EDCA190];
  }

  return v3;
}

uint64_t static AudioChannelLayout.sizeInBytes(maximumDescriptions:)(uint64_t result)
{
  v1 = result - 1;
  if (result < 1)
  {
    __break(1u);
    goto LABEL_6;
  }

  v2 = (v1 * 20) >> 64;
  v3 = 20 * v1;
  if (v2 != v3 >> 63)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = v3 + 32;
  if (__OFADD__(v3, 32))
  {
LABEL_7:
    __break(1u);
  }

  return result;
}

int64_t static AudioChannelLayout.allocate(maximumDescriptions:)@<X0>(int64_t result@<X0>, int64_t *a2@<X8>)
{
  v3 = result - 1;
  if (result < 1)
  {
    __break(1u);
    goto LABEL_8;
  }

  v4 = (v3 * 20) >> 64;
  v5 = 20 * v3;
  if (v4 != v5 >> 63)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = result;
  result = v5 + 32;
  if (__OFADD__(v5, 32))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  result = calloc(result, 1uLL);
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (!HIDWORD(v6))
  {
    *(result + 8) = v6;
    *a2 = result;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

unint64_t AudioChannelLayout.UnsafeMutablePointer.count.setter(unint64_t result)
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

unint64_t *key path setter for AudioChannelLayout.UnsafeMutablePointer.count : AudioChannelLayout.UnsafeMutablePointer(unint64_t *result, uint64_t a2)
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

unint64_t *(*AudioChannelLayout.UnsafeMutablePointer.count.modify(void *a1))(unint64_t *result, char a2)
{
  v2 = *v1;
  a1[1] = *v1;
  *a1 = *(v2 + 8);
  return AudioChannelLayout.UnsafeMutablePointer.count.modify;
}

unint64_t *AudioChannelLayout.UnsafeMutablePointer.count.modify(unint64_t *result, char a2)
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

uint64_t (*AudioChannelLayout.UnsafeMutablePointer.subscript.read(uint64_t (*result)(), unint64_t a2))()
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(*v2 + 8) > a2)
  {
    v3 = *v2 + 20 * a2;
    v4 = *(v3 + 12);
    v5 = *(v3 + 20);
    *result = *(v3 + 24);
    return UnsafeMutableAudioBufferListPointer.unsafeMutablePointer.modify;
  }

  __break(1u);
  return result;
}

uint64_t (*AudioChannelLayout.UnsafeMutablePointer.subscript.modify(uint64_t a1, unint64_t a2))()
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(*v2 + 8) > a2)
  {
    result = UnsafeMutableAudioBufferListPointer.unsafeMutablePointer.modify;
    v4 = *v2 + 20 * a2 + 12;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t AudioChannelLayout.UnsafeMutablePointer.subscript.setter(uint64_t result, unint64_t a2, float a3, float a4, float a5)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(*v5 + 8) > a2)
  {
    v6 = *v5 + 20 * a2;
    *(v6 + 12) = result;
    *(v6 + 20) = a3;
    *(v6 + 24) = a4;
    *(v6 + 28) = a5;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for MutableCollection.subscript.setter in conformance AudioChannelLayout.UnsafeMutablePointer(uint64_t result, unint64_t *a2)
{
  v3 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v3 < *(*v2 + 8))
  {
    v4 = *(result + 8);
    v5 = *(result + 16);
    v6 = *v2 + 20 * v3;
    *(v6 + 12) = *result;
    *(v6 + 20) = v4;
    *(v6 + 28) = v5;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t (*protocol witness for MutableCollection.subscript.modify in conformance AudioChannelLayout.UnsafeMutablePointer(uint64_t a1, unint64_t *a2))()
{
  v3 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v3 < *(*v2 + 8))
  {
    result = UnsafeMutableAudioBufferListPointer.unsafeMutablePointer.modify;
    v5 = *v2 + 20 * v3 + 12;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t (*protocol witness for MutableCollection.subscript.modify in conformance AudioChannelLayout.UnsafeMutablePointer(uint64_t *a1, uint64_t *a2))()
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
  return protocol witness for MutableCollection.subscript.modify in conformance AudioChannelLayout.UnsafeMutablePointer;
}

unint64_t protocol witness for MutableCollection.partition(by:) in conformance AudioChannelLayout.UnsafeMutablePointer@<X0>(unint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  result = specialized MutableCollection<>._partitionImpl(by:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t protocol witness for BidirectionalCollection.index(_:offsetBy:limitedBy:) in conformance AudioChannelLayout.UnsafePointer@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(*a1, a2, *a3, *v4);
  *a4 = result;
  *(a4 + 8) = v7 & 1;
  return result;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance AudioChannelLayout.UnsafeMutablePointer(uint64_t (*result)(), unint64_t *a2))()
{
  v3 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v3 < *(*v2 + 8))
  {
    v4 = *v2 + 20 * v3;
    v5 = *(v4 + 28);
    v6 = *(v4 + 20);
    *result = *(v4 + 12);
    *(result + 1) = v6;
    *(result + 4) = v5;
    return UnsafeMutableAudioBufferListPointer.unsafeMutablePointer.modify;
  }

  __break(1u);
  return result;
}

uint64_t (*AudioChannelLayout.UnsafePointer.subscript.read(uint64_t (*result)(), unint64_t a2))()
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(*v2 + 8) > a2)
  {
    v3 = *v2 + 20 * a2;
    v4 = *(v3 + 12);
    v5 = *(v3 + 20);
    *result = *(v3 + 24);
    return UnsafeMutableAudioBufferListPointer.unsafeMutablePointer.modify;
  }

  __break(1u);
  return result;
}

uint64_t *protocol witness for Collection.subscript.getter in conformance AudioChannelLayout.UnsafeMutablePointer@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
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

void protocol witness for Collection.indices.getter in conformance AudioChannelLayout.UnsafePointer(void *a1@<X8>)
{
  v2 = *(*v1 + 8);
  *a1 = 0;
  a1[1] = v2;
}

void *protocol witness for Collection.index(after:) in conformance AudioChannelLayout.UnsafeMutablePointer@<X0>(void *result@<X0>, void *a2@<X8>)
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

void *protocol witness for Collection.formIndex(after:) in conformance AudioChannelLayout.UnsafeMutablePointer(void *result)
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

void *protocol witness for Sequence._copyToContiguousArray() in conformance AudioChannelLayout.UnsafeMutablePointer()
{
  v1 = *v0;
  v2 = *(*v0 + 8);
  if (!v2)
  {
    return MEMORY[0x29EDCA190];
  }

  v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo23AudioChannelDescriptionV_Tt1g5(*(*v0 + 8), 0);
  if (specialized Sequence._copySequenceContents(initializing:)(&v5, (v3 + 4), v2, v1) != v2)
  {
    __break(1u);
    return MEMORY[0x29EDCA190];
  }

  return v3;
}

void *protocol witness for BidirectionalCollection.index(before:) in conformance AudioChannelLayout.UnsafeMutablePointer@<X0>(void *result@<X0>, unint64_t *a2@<X8>)
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

unint64_t *protocol witness for BidirectionalCollection.formIndex(before:) in conformance AudioChannelLayout.UnsafeMutablePointer(unint64_t *result)
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

void *protocol witness for RandomAccessCollection.index(_:offsetBy:) in conformance AudioChannelLayout.UnsafeMutablePointer@<X0>(void *result@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
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

unint64_t *protocol witness for RandomAccessCollection.distance(from:to:) in conformance AudioChannelLayout.UnsafeMutablePointer(unint64_t *result, unint64_t *a2)
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

uint64_t ManagedAudioChannelLayout.Storage.__deallocating_deinit()
{
  v1 = v0;
  v2 = *(v0 + 24);
  if (v2)
  {
    v3 = *(v0 + 32);
    v6 = v1[2];

    v2(&v6);
    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed AudioChannelLayout.UnsafePointer) -> ())?(v2);
  }

  else
  {
    free(*(v0 + 16));
  }

  v4 = v1[4];
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed AudioChannelLayout.UnsafePointer) -> ())?(v1[3]);

  return MEMORY[0x2A1C73398](v1, 40, 7);
}

int64_t ManagedAudioChannelLayout.Storage.init(maximumDescriptions:)(int64_t result)
{
  v2 = result - 1;
  if (result < 1)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = (v2 * 20) >> 64;
  v4 = 20 * v2;
  if (v3 != v4 >> 63)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = result;
  result = v4 + 32;
  if (__OFADD__(v4, 32))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  result = calloc(result, 1uLL);
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (!HIDWORD(v5))
  {
    *(result + 8) = v5;
    v1[3] = 0;
    v1[4] = 0;
    v1[2] = result;
    return v1;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t ManagedAudioChannelLayout.ensureUniqueMutableReference()()
{
  v1 = v0;
  v2 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v0;
  if (!result || *(v4 + 24))
  {
    v5 = *(v4 + 16);
    v6 = v5[2];
    type metadata accessor for ManagedAudioChannelLayout.Storage();
    v7 = swift_allocObject();
    result = ManagedAudioChannelLayout.Storage.init(maximumDescriptions:)(v6);
    if (v6)
    {
      memcpy(*(v7 + 16), v5, 20 * v6 + 12);

      *v1 = v7;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void *ManagedAudioChannelLayout.init(audioChannelLayoutPointer:deallocator:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  *(a4 + 8) = -1;
  type metadata accessor for ManagedAudioChannelLayout.Storage();
  *(a4 + 20) = 0;
  *(a4 + 12) = 0;
  result = swift_allocObject();
  result[2] = v7;
  result[3] = a2;
  result[4] = a3;
  *a4 = result;
  return result;
}

uint64_t ManagedAudioChannelLayout.init(tag:)@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = -1;
  type metadata accessor for ManagedAudioChannelLayout.Storage();
  *(a2 + 20) = 0;
  *(a2 + 12) = 0;
  v4 = swift_allocObject();
  result = calloc(0x20uLL, 1uLL);
  if (result)
  {
    *(result + 8) = 1;
    v4[3] = 0;
    v4[4] = 0;
    v4[2] = result;
    *a2 = v4;
    ManagedAudioChannelLayout.tag.setter(a1);
    result = ManagedAudioChannelLayout.bitmap.setter(0);
    v6 = *(*a2 + 16);
    if (*(v6 + 8))
    {
      v7 = *(a2 + 24);
      v8 = *(a2 + 16);
      *(v6 + 12) = *(a2 + 8);
      *(v6 + 20) = v8;
      *(v6 + 28) = v7;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t ManagedAudioChannelLayout.tag.setter(int a1)
{
  v2 = v1;
  v4 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  v6 = *v1;
  if (result && !*(v6 + 24))
  {
    goto LABEL_5;
  }

  v7 = *(v6 + 16);
  v8 = v7[2];
  type metadata accessor for ManagedAudioChannelLayout.Storage();
  v9 = swift_allocObject();
  result = ManagedAudioChannelLayout.Storage.init(maximumDescriptions:)(v8);
  if (v8)
  {
    memcpy(*(v9 + 16), v7, 20 * v8 + 12);

    *v2 = v9;
    v6 = v9;
LABEL_5:
    **(v6 + 16) = a1;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t ManagedAudioChannelLayout.bitmap.setter(int a1)
{
  v2 = v1;
  v4 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  v6 = *v1;
  if (result && !*(v6 + 24))
  {
    goto LABEL_5;
  }

  v7 = *(v6 + 16);
  v8 = v7[2];
  type metadata accessor for ManagedAudioChannelLayout.Storage();
  v9 = swift_allocObject();
  result = ManagedAudioChannelLayout.Storage.init(maximumDescriptions:)(v8);
  if (v8)
  {
    memcpy(*(v9 + 16), v7, 20 * v8 + 12);

    *v2 = v9;
    v6 = v9;
LABEL_5:
    *(*(v6 + 16) + 4) = a1;
    return result;
  }

  __break(1u);
  return result;
}

void ManagedAudioChannelLayout.init(maximumDescriptions:)(int64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = -1;
  type metadata accessor for ManagedAudioChannelLayout.Storage();
  *(a2 + 20) = 0;
  *(a2 + 12) = 0;
  v4 = swift_allocObject();
  ManagedAudioChannelLayout.Storage.init(maximumDescriptions:)(a1);
  *a2 = v4;
  ManagedAudioChannelLayout.setAllToUnknown()();
}

Swift::Void __swiftcall ManagedAudioChannelLayout.setAllToUnknown()()
{
  ManagedAudioChannelLayout.ensureUniqueMutableReference()();
  ManagedAudioChannelLayout.tag.setter(0);
  ManagedAudioChannelLayout.bitmap.setter(0);
  v1 = *(*v0 + 16);
  v2 = *(v1 + 8);
  if (v2)
  {
    v3 = v0[2];
    v4 = v0[3];
    v5 = v0[4];
    v6 = v0[5];
    v7 = v0[6];
    v8 = v2 - 1;
    if (v2 - 1 >= v2)
    {
      v8 = *(v1 + 8);
    }

    if (v8 >= 2)
    {
      v9 = v8 & 0xFFFFFFFE;
      v10 = (v1 + 24);
      v11 = v9;
      do
      {
        *(v10 - 3) = v3;
        *(v10 - 2) = v4;
        v10[2] = v3;
        v10[3] = v4;
        *(v10 - 1) = v5;
        *v10 = v6;
        v10[4] = v5;
        v10[5] = v6;
        v10[1] = v7;
        v10[6] = v7;
        v10 += 10;
        v11 -= 2;
      }

      while (v11);
    }

    else
    {
      v9 = 0;
    }

    v12 = v2 - v9;
    v13 = (v1 + 20 * v9 + 28);
    while (v12)
    {
      *(v13 - 4) = v3;
      *(v13 - 3) = v4;
      *(v13 - 2) = v5;
      *(v13 - 1) = v6;
      *v13 = v7;
      v13 += 5;
      if (!--v12)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t ManagedAudioChannelLayout.init(channelDescriptions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  type metadata accessor for ManagedAudioChannelLayout.Storage();
  v5 = swift_allocObject();
  ManagedAudioChannelLayout.Storage.init(maximumDescriptions:)(v4);
  ManagedAudioChannelLayout.tag.setter(0);
  result = ManagedAudioChannelLayout.bitmap.setter(0);
  v7 = *(v5 + 16);
  v8 = *(v7 + 8);
  if (v8)
  {
    if (*(a1 + 16) >= v8)
    {
      v9 = 0;
      v10 = 0;
      while (v10 < v8)
      {
        v11 = *(a1 + v9 + 48);
        ++v10;
        v12 = v7 + v9;
        v13 = *(a1 + v9 + 40);
        *(v12 + 12) = *(a1 + v9 + 32);
        *(v12 + 20) = v13;
        *(v12 + 28) = v11;
        v9 += 20;
        if (20 * v8 == v9)
        {
          goto LABEL_6;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    *a2 = v5;
    *(a2 + 8) = 0xFFFFFFFFuLL;
    *(a2 + 24) = 0;
  }

  return result;
}

uint64_t (*ManagedAudioChannelLayout.tag.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  *(a1 + 8) = **(*v1 + 16);
  return ManagedAudioChannelLayout.tag.modify;
}

uint64_t ManagedAudioChannelLayout.tag.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (a2)
  {
    return ManagedAudioChannelLayout.tag.setter(v3);
  }

  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  v6 = *v2;
  if (result && !*(v6 + 24))
  {
    goto LABEL_7;
  }

  v7 = *(v6 + 16);
  v8 = v7[2];
  type metadata accessor for ManagedAudioChannelLayout.Storage();
  v9 = swift_allocObject();
  result = ManagedAudioChannelLayout.Storage.init(maximumDescriptions:)(v8);
  if (v8)
  {
    memcpy(*(v9 + 16), v7, 20 * v8 + 12);

    *v2 = v9;
    v6 = v9;
LABEL_7:
    **(v6 + 16) = v3;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t (*ManagedAudioChannelLayout.bitmap.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  *(a1 + 8) = *(*(*v1 + 16) + 4);
  return ManagedAudioChannelLayout.bitmap.modify;
}

uint64_t ManagedAudioChannelLayout.bitmap.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (a2)
  {
    return ManagedAudioChannelLayout.bitmap.setter(v3);
  }

  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  v6 = *v2;
  if (result && !*(v6 + 24))
  {
    goto LABEL_7;
  }

  v7 = *(v6 + 16);
  v8 = v7[2];
  type metadata accessor for ManagedAudioChannelLayout.Storage();
  v9 = swift_allocObject();
  result = ManagedAudioChannelLayout.Storage.init(maximumDescriptions:)(v8);
  if (v8)
  {
    memcpy(*(v9 + 16), v7, 20 * v8 + 12);

    *v2 = v9;
    v6 = v9;
LABEL_7:
    *(*(v6 + 16) + 4) = v3;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t ManagedAudioChannelLayout.channelDescriptions.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = *v1;
  *(a1 + 8) = 0;
}

uint64_t key path getter for ManagedAudioChannelLayout.channelDescriptions : ManagedAudioChannelLayout@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *a1;
  *(a2 + 8) = 0;
}

uint64_t (*ManagedAudioChannelLayout.channelDescriptions.read(uint64_t a1))(uint64_t *a1)
{
  *a1 = *v1;
  *(a1 + 8) = 0;

  return ManagedAudioChannelLayout.channelDescriptions.read;
}

uint64_t key path setter for ManagedAudioChannelLayout.channelDescriptions : ManagedAudioChannelLayout(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);

  v3 = ManagedAudioChannelLayout.channelDescriptions.modify(v7);
  v5 = *v4;
  *v4 = v1;
  *(v4 + 8) = v2;

  return v3(v7, 0);
}

int64_t (*ManagedAudioChannelLayout.channelDescriptions.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  v2 = v1;
  *(a1 + 16) = v1;
  v4 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *v1;
  if (isUniquelyReferenced_nonNull_native && !*(v6 + 24))
  {
    goto LABEL_5;
  }

  v7 = *(v6 + 16);
  v8 = v7[2];
  type metadata accessor for ManagedAudioChannelLayout.Storage();
  v9 = swift_allocObject();
  result = ManagedAudioChannelLayout.Storage.init(maximumDescriptions:)(v8);
  if (v8)
  {
    memcpy(*(v9 + 16), v7, 20 * v8 + 12);

    *v2 = v9;
    v6 = v9;
LABEL_5:
    *(a1 + 24) = v6;
    *a1 = v6;
    *(a1 + 8) = 1;

    return ManagedAudioChannelLayout.channelDescriptions.modify;
  }

  __break(1u);
  return result;
}

int64_t ManagedAudioChannelLayout.channelDescriptions.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  if ((a2 & 1) == 0)
  {
    v3 = a1[3];
    if (v3 != v2)
    {
      v5 = *(v3 + 16);
      v7 = *v5;
      v6 = v5[1];
      v8 = *(v2 + 16);
      v9 = v8[2];
      type metadata accessor for ManagedAudioChannelLayout.Storage();
      v10 = swift_allocObject();

      result = ManagedAudioChannelLayout.Storage.init(maximumDescriptions:)(v9);
      if (!v9)
      {
        __break(1u);
        return result;
      }

      v12 = a1[2];
      memcpy(*(v10 + 16), v8, 20 * v9 + 12);

      *v12 = v10;
      ManagedAudioChannelLayout.tag.setter(v7);
      ManagedAudioChannelLayout.bitmap.setter(v6);
    }
  }
}

int64_t ManagedAudioChannelLayout.channelDescriptions.setter(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  ManagedAudioChannelLayout.ensureUniqueMutableReference()();
  if (*v1 != v3)
  {
    v4 = *(*v1 + 16);
    v6 = *v4;
    v5 = v4[1];
    v7 = *(v3 + 16);
    v8 = v7[2];
    type metadata accessor for ManagedAudioChannelLayout.Storage();
    v9 = swift_allocObject();
    result = ManagedAudioChannelLayout.Storage.init(maximumDescriptions:)(v8);
    if (!v8)
    {
      __break(1u);
      return result;
    }

    memcpy(*(v9 + 16), v7, 20 * v8 + 12);

    *v2 = v9;
    ManagedAudioChannelLayout.tag.setter(v6);
    ManagedAudioChannelLayout.bitmap.setter(v5);
  }
}

uint64_t ManagedAudioChannelLayout.sizeInBytes.getter()
{
  v1 = *(*(*v0 + 16) + 8);
  if (v1)
  {
    return 20 * v1 + 12;
  }

  __break(1u);
  return result;
}

uint64_t ManagedAudioChannelLayout.numberOfChannels.getter()
{
  v1 = *(*v0 + 16);
  if (*v1 == 0x10000)
  {
    v14 = v1[1];
    lazy protocol witness table accessor for type UInt32 and conformance UInt32();
    String.init<A>(_:radix:uppercase:)();
    v8 = String.Iterator.next()();
    countAndFlagsBits = v8.value._countAndFlagsBits;
    object = v8.value._object;
    if (v8.value._object)
    {
      do
      {
        if (countAndFlagsBits == 49 && object == 0xE100000000000000 || (v11 = countAndFlagsBits, v12 = _stringCompareWithSmolCheck(_:_:expecting:)(), countAndFlagsBits = v11, (v12 & 1) != 0))
        {
          MEMORY[0x29C2A9BE0](countAndFlagsBits, object, v4, v5, v6, v7);
        }

        v10 = String.Iterator.next()();
        countAndFlagsBits = v10.value._countAndFlagsBits;
        object = v10.value._object;
      }

      while (v10.value._object);
    }

    v13 = String.count.getter();

    return v13;
  }

  else if (*v1)
  {
    return *v1;
  }

  else
  {
    return v1[2];
  }
}

unint64_t lazy protocol witness table accessor for type UInt32 and conformance UInt32()
{
  result = lazy protocol witness table cache variable for type UInt32 and conformance UInt32;
  if (!lazy protocol witness table cache variable for type UInt32 and conformance UInt32)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UInt32 and conformance UInt32);
  }

  return result;
}

unint64_t ManagedAudioChannelLayout.ChannelDescriptions.subscript.getter(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v2 = *(*v1 + 16);
    if (*(v2 + 8) > result)
    {
      v3 = v2 + 20 * result;
      result = *(v3 + 12);
      v4 = *(v3 + 20);
      v5 = *(v3 + 24);
      v6 = *(v3 + 28);
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t key path getter for ManagedAudioChannelLayout.ChannelDescriptions.subscript(_:) : ManagedAudioChannelLayout.ChannelDescriptions@<X0>(uint64_t result@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v4 = *(*result + 16);
    if (v3 < *(v4 + 8))
    {
      v5 = v4 + 20 * v3;
      v6 = *(v5 + 28);
      v7 = *(v5 + 20);
      *a3 = *(v5 + 12);
      *(a3 + 8) = v7;
      *(a3 + 16) = v6;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t (*ManagedAudioChannelLayout.ChannelDescriptions.subscript.read(uint64_t (*result)(), unint64_t a2))()
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(*v2 + 16);
    if (*(v3 + 8) > a2)
    {
      v4 = v3 + 20 * a2;
      v5 = *(v4 + 12);
      v6 = *(v4 + 20);
      *result = *(v4 + 24);
      return UnsafeMutableAudioBufferListPointer.unsafeMutablePointer.modify;
    }
  }

  __break(1u);
  return result;
}

uint64_t key path setter for ManagedAudioChannelLayout.ChannelDescriptions.subscript(_:) : ManagedAudioChannelLayout.ChannelDescriptions(uint64_t result, _BYTE *a2, unint64_t *a3)
{
  v4 = *a3;
  v5 = *result;
  v6 = *(result + 8);
  v7 = *(result + 16);
  if ((a2[8] & 1) == 0)
  {
    result = ManagedAudioChannelLayout.ensureUniqueMutableReference()();
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v8 = *(*a2 + 16);
    if (v4 < *(v8 + 8))
    {
      v9 = v8 + 20 * v4;
      *(v9 + 12) = v5;
      *(v9 + 20) = v6;
      *(v9 + 28) = v7;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t (*ManagedAudioChannelLayout.ChannelDescriptions.subscript.modify(uint64_t *a1, unint64_t a2))()
{
  if (MEMORY[0x29EDCA1B0])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  if ((v2[8] & 1) == 0)
  {
    ManagedAudioChannelLayout.ensureUniqueMutableReference()();
  }

  *(v6 + 32) = *(*v2 + 16);
  *(v6 + 40) = AudioChannelLayout.UnsafeMutablePointer.subscript.modify(v6, a2);
  return ManagedAudioChannelLayout.ChannelDescriptions.subscript.modify;
}

uint64_t ManagedAudioChannelLayout.ChannelDescriptions.subscript.setter(uint64_t result, unint64_t a2, float a3, float a4, float a5)
{
  v10 = result;
  if ((v5[8] & 1) == 0)
  {
    result = ManagedAudioChannelLayout.ensureUniqueMutableReference()();
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v11 = *(*v5 + 16);
    if (*(v11 + 8) > a2)
    {
      v12 = v11 + 20 * a2;
      *(v12 + 12) = v10;
      *(v12 + 20) = a3;
      *(v12 + 24) = a4;
      *(v12 + 28) = a5;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t (*protocol witness for MutableCollection.subscript.modify in conformance ManagedAudioChannelLayout.ChannelDescriptions(uint64_t *a1, unint64_t *a2))()
{
  if (MEMORY[0x29EDCA1B0])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *a2;
  if ((v2[8] & 1) == 0)
  {
    ManagedAudioChannelLayout.ensureUniqueMutableReference()();
  }

  *(v6 + 32) = *(*v2 + 16);
  *(v6 + 40) = AudioChannelLayout.UnsafeMutablePointer.subscript.modify(v6, v7);
  return protocol witness for MutableCollection.subscript.modify in conformance ManagedAudioChannelLayout.ChannelDescriptions;
}

void ManagedAudioChannelLayout.ChannelDescriptions.subscript.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 40))(*a1, 0);

  free(v1);
}

uint64_t protocol witness for MutableCollection.subscript.setter in conformance ManagedAudioChannelLayout.ChannelDescriptions(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  specialized _writeBackMutableSlice<A, B>(_:bounds:slice:)(v2, *a2, *(a2 + 8), *a1, *(a1 + 8), *(a1 + 16));
}

uint64_t (*protocol witness for MutableCollection.subscript.modify in conformance ManagedAudioChannelLayout.ChannelDescriptions(uint64_t *a1, uint64_t *a2))()
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
  return protocol witness for MutableCollection.subscript.modify in conformance AudioChannelLayout.UnsafeMutablePointer;
}

void protocol witness for MutableCollection.subscript.modify in conformance UnsafeMutableAudioBufferListPointer(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

unint64_t protocol witness for MutableCollection.partition(by:) in conformance ManagedAudioChannelLayout.ChannelDescriptions@<X0>(unint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  result = specialized MutableCollection<>._partitionImpl(by:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance ManagedAudioChannelLayout.ChannelDescriptions(uint64_t (*result)(), unint64_t *a2))()
{
  v3 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v4 = *(*v2 + 16);
    if (v3 < *(v4 + 8))
    {
      v5 = v4 + 20 * v3;
      v6 = *(v5 + 28);
      v7 = *(v5 + 20);
      *result = *(v5 + 12);
      *(result + 1) = v7;
      *(result + 4) = v6;
      return UnsafeMutableAudioBufferListPointer.unsafeMutablePointer.modify;
    }
  }

  __break(1u);
  return result;
}

uint64_t *protocol witness for Collection.subscript.getter in conformance ManagedAudioChannelLayout.ChannelDescriptions@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  if (*result < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = result[1];
    result = *v2;
    if (v4 <= *(*(*v2 + 16) + 8))
    {
      v5 = v2[8];
      *(a2 + 8) = v4;
      *(a2 + 16) = result;
      *(a2 + 24) = v5;
      *a2 = v3;
    }
  }

  __break(1u);
  return result;
}

void protocol witness for Collection.indices.getter in conformance ManagedAudioChannelLayout.ChannelDescriptions(void *a1@<X8>)
{
  v2 = *(*(*v1 + 16) + 8);
  *a1 = 0;
  a1[1] = v2;
}

uint64_t *protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance UnsafeMutableAudioBufferListPointer(uint64_t *result, uint64_t *a2)
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

void *protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance UnsafeMutableAudioBufferListPointer(void *result, void *a2)
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

void *protocol witness for Collection.index(after:) in conformance ManagedAudioChannelLayout.ChannelDescriptions@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (*result >= *(*(*v2 + 16) + 8))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void *protocol witness for Collection.formIndex(after:) in conformance ManagedAudioChannelLayout.ChannelDescriptions(void *result)
{
  if (*result >= *(*(*v1 + 16) + 8))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

void *protocol witness for BidirectionalCollection.index(before:) in conformance ManagedAudioChannelLayout.ChannelDescriptions@<X0>(void *result@<X0>, unint64_t *a2@<X8>)
{
  v3 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else if (v3 < *(*(*v2 + 16) + 8))
  {
    *a2 = v3;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t *protocol witness for BidirectionalCollection.formIndex(before:) in conformance ManagedAudioChannelLayout.ChannelDescriptions(unint64_t *result)
{
  v2 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else if (v2 < *(*(*v1 + 16) + 8))
  {
    *result = v2;
    return result;
  }

  __break(1u);
  return result;
}

void *protocol witness for RandomAccessCollection.index(_:offsetBy:) in conformance ManagedAudioChannelLayout.ChannelDescriptions@<X0>(void *result@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v4 = *result + a2;
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else if (v4 <= *(*(*v3 + 16) + 8))
  {
    *a3 = v4;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t protocol witness for RandomAccessCollection.index(_:offsetBy:limitedBy:) in conformance ManagedAudioChannelLayout.ChannelDescriptions@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(v4 + 8);
  result = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(*a1, a2, *a3, *v4);
  *a4 = result;
  *(a4 + 8) = v8 & 1;
  return result;
}

unint64_t *protocol witness for RandomAccessCollection.distance(from:to:) in conformance ManagedAudioChannelLayout.ChannelDescriptions(unint64_t *result, unint64_t *a2)
{
  v3 = *a2;
  v4 = *(*(*v2 + 16) + 8);
  if (*result <= v4 && v3 <= v4)
  {
    return (v3 - *result);
  }

  __break(1u);
  return result;
}

void protocol witness for Sequence.makeIterator() in conformance ManagedAudioChannelLayout.ChannelDescriptions(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = 0;
}

void *protocol witness for Sequence._copyToContiguousArray() in conformance ManagedAudioChannelLayout.ChannelDescriptions()
{
  v1 = specialized _copyCollectionToContiguousArray<A>(_:)(*v0, *(v0 + 8));

  return v1;
}

uint64_t static AudioChannelDescription.== infix(_:_:)(uint64_t a1, uint64_t a2, float a3, float a4, float a5, float a6, float a7, float a8)
{
  v9 = a4 == a7 && a3 == a6;
  if (a5 == a8)
  {
    return v9 & (a1 == a2);
  }

  else
  {
    return 0;
  }
}

_DWORD *protocol witness for RawRepresentable.init(rawValue:) in conformance AudioChannelFlags@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

unsigned int **specialized _writeBackMutableSlice<A, B>(_:bounds:slice:)(unsigned int **result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int *a6)
{
  if (a2 < 0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v6 = *result;
  v7 = **result;
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
    v11 = 0;
    v12 = a2 - a3 + 1;
    v13 = &a6[4 * a4];
    while (1)
    {
      v14 = a4 + v11;
      if (a4 + v11 >= a5)
      {
        break;
      }

      if (a4 < 0)
      {
        goto LABEL_18;
      }

      if (v14 >= *a6)
      {
        goto LABEL_19;
      }

      if (a2 + v11 >= v7)
      {
        goto LABEL_20;
      }

      result = *&v13[v10 + 4];
      v15 = &v6[4 * a2 + v10];
      *(v15 + 1) = *&v13[v10 + 2];
      *(v15 + 2) = result;
      v7 = *v6;
      if (a2 + v11 >= v7)
      {
        goto LABEL_21;
      }

      if (v14 >= *a6)
      {
        goto LABEL_22;
      }

      result = (a4 - a5 + 1 + v11);
      v9 = v12 + v11 == 0;
      v8 = result == 0;
      if (v12 + v11)
      {
        ++v11;
        v10 += 4;
        if (result)
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

unint64_t specialized _writeBackMutableSlice<A, B>(_:bounds:slice:)(unint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, int64_t a5, uint64_t a6)
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
    v10 = 0;
    v11 = v6 + 20 * a2;
    v12 = a3 - 1;
    v13 = a6 + 20 * a4;
    v14 = a5 - 1;
    v15 = a4;
    while (v15 < a5)
    {
      if ((a4 & 0x8000000000000000) != 0)
      {
        goto LABEL_19;
      }

      if (v15 >= *(a6 + 8))
      {
        goto LABEL_20;
      }

      if (a2 >= v7)
      {
        goto LABEL_21;
      }

      v16 = *(v13 + v10 + 28);
      v17 = v11 + v10;
      v18 = *(v13 + v10 + 20);
      *(v17 + 12) = *(v13 + v10 + 12);
      *(v17 + 20) = v18;
      *(v17 + 28) = v16;
      v7 = *(v6 + 8);
      if (a2 >= v7)
      {
        goto LABEL_22;
      }

      if (v15 >= *(a6 + 8))
      {
        goto LABEL_23;
      }

      v8 = v14 == v15;
      v9 = v12 == a2;
      if (v12 != a2)
      {
        ++a2;
        result = v15 + 1;
        v10 += 20;
        if (v14 != v15++)
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

_DWORD *specialized _writeBackMutableSlice<A, B>(_:bounds:slice:)(_DWORD *result, unint64_t a2, uint64_t a3, unint64_t a4, int64_t a5, uint64_t a6)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v6 = result;
  v7 = *result;
  if (*(*(*result + 16) + 8) < a3)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v8 = a5;
  v9 = a4;
  v10 = a2;
  v11 = a4 == a5;
  v12 = a2 == a3;
  if (a2 != a3 && a4 != a5)
  {
    v14 = 0;
    v15 = 20 * a4;
    v16 = a5 - 1;
    v17 = 20 * a2;
    v18 = a3 - 1;
    v19 = a4;
    v35 = result;
    v34 = 20 * a4;
    v38 = 20 * a2;
    v39 = a5 - 1;
    v37 = a3 - 1;
    while (v19 < v8)
    {
      if ((v9 & 0x8000000000000000) != 0)
      {
        goto LABEL_26;
      }

      v20 = *(a6 + 16);
      if (v19 >= *(v20 + 8))
      {
        goto LABEL_27;
      }

      v21 = v20 + v15 + v14;
      v22 = *(v21 + 12);
      v23 = *(v21 + 20);
      v24 = *(v21 + 28);
      if ((v6[1] & 1) == 0)
      {
        v25 = *v6;
        result = swift_isUniquelyReferenced_nonNull_native();
        v7 = *v6;
        if (!result || v7[3])
        {
          v40 = *v6;
          v26 = v7[2];
          v27 = v26[2];
          type metadata accessor for ManagedAudioChannelLayout.Storage();
          result = swift_allocObject();
          if (!v27)
          {
            goto LABEL_31;
          }

          v7 = result;
          v28 = v8;
          v29 = a6;
          v30 = 20 * v27;
          result = calloc(v30 + 12, 1uLL);
          if (!result)
          {
            goto LABEL_32;
          }

          result[2] = v27;
          v7[3] = 0;
          v7[4] = 0;
          v7[2] = result;
          memcpy(result, v26, v30 + 12);

          v15 = v34;
          v6 = v35;
          *v35 = v7;
          a6 = v29;
          v8 = v28;
          v9 = a4;
        }

        v17 = v38;
        v16 = v39;
        v18 = v37;
      }

      v31 = v7[2];
      if (v10 >= *(v31 + 8))
      {
        goto LABEL_28;
      }

      v32 = v31 + v17 + v14;
      *(v32 + 12) = v22;
      *(v32 + 20) = v23;
      *(v32 + 28) = v24;
      if (v10 >= *(v31 + 8))
      {
        goto LABEL_29;
      }

      if (v19 >= *(v20 + 8))
      {
        goto LABEL_30;
      }

      v11 = v16 == v19;
      v12 = v18 == v10;
      if (v18 != v10)
      {
        ++v10;
        v14 += 20;
        if (v16 != v19++)
        {
          continue;
        }
      }

      goto LABEL_22;
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

LABEL_22:
  if (!v12)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (!v11)
  {
LABEL_36:
    __break(1u);
  }

  return result;
}

unint64_t specialized MutableCollection<>._partitionImpl(by:)(unint64_t result)
{
  v3 = *v1;
  v4 = **v1;
  if (v4)
  {
    v5 = result;
    v6 = 0;
    v7 = **v1;
LABEL_3:
    for (i = &v3[4 * v6 + 4]; ; i += 4)
    {
      if (v6 >= v4)
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v9 = *i;
      v12 = *(i - 1);
      v13 = v9;
      result = v5(&v12);
      if (v2)
      {
        return v6;
      }

      if (result)
      {
        break;
      }

      v4 = *v3;
      if (v6 >= v4)
      {
        goto LABEL_21;
      }

      if (++v6 >= v7)
      {
        return v6;
      }
    }

    v10 = &v3[4 * v7];
    while (--v7 < *v3)
    {
      if (v6 >= v7)
      {
        return v6;
      }

      v11 = *v10;
      v12 = *(v10 - 1);
      v13 = v11;
      result = v5(&v12);
      v10 -= 4;
      if ((result & 1) == 0)
      {
        result = specialized MutableCollection.swapAt(_:_:)(v6, v7);
        v4 = *v3;
        if (v6 >= v4)
        {
          goto LABEL_23;
        }

        if (++v6 < v7)
        {
          goto LABEL_3;
        }

        return v6;
      }
    }

LABEL_22:
    __break(1u);
LABEL_23:
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
  if (v4)
  {
    v5 = result;
    v6 = 0;
    v7 = *(*v1 + 8);
LABEL_3:
    for (i = (v3 + 28 + 20 * v6); ; i += 5)
    {
      if (v6 >= v4)
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v9 = *i;
      v10 = *(i - 1);
      v14 = *(i - 2);
      v15 = v10;
      v16 = v9;
      result = v5(&v14);
      if (v2)
      {
        return v6;
      }

      if (result)
      {
        break;
      }

      v4 = *(v3 + 8);
      if (v6 >= v4)
      {
        goto LABEL_21;
      }

      if (++v6 >= v7)
      {
        return v6;
      }
    }

    v11 = (v3 + 20 * v7);
    while (--v7 < *(v3 + 8))
    {
      if (v6 >= v7)
      {
        return v6;
      }

      v12 = *(v11 + 2);
      v13 = *v11;
      v14 = *(v11 - 1);
      v15 = v13;
      v16 = v12;
      result = v5(&v14);
      v11 = (v11 - 20);
      if ((result & 1) == 0)
      {
        result = specialized MutableCollection.swapAt(_:_:)(v6, v7);
        v4 = *(v3 + 8);
        if (v6 >= v4)
        {
          goto LABEL_23;
        }

        if (++v6 < v7)
        {
          goto LABEL_3;
        }

        return v6;
      }
    }

LABEL_22:
    __break(1u);
LABEL_23:
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
  v4 = *(*v1 + 16);
  v5 = *(v4 + 8);
  if (v5)
  {
    v6 = result;
    v7 = 0;
LABEL_3:
    v8 = 20 * v7;
    v9 = v7;
    while (1)
    {
      if ((v7 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      if (v9 >= *(v4 + 8))
      {
        goto LABEL_22;
      }

      v10 = v4 + v8;
      v11 = *(v10 + 28);
      v12 = *(v10 + 20);
      v18 = *(v10 + 12);
      v19 = v12;
      v20 = v11;
      result = v6(&v18);
      if (v2)
      {
        return v9;
      }

      if (result)
      {
        break;
      }

      v4 = *(v3 + 16);
      if (v9 >= *(v4 + 8))
      {
        goto LABEL_23;
      }

      ++v9;
      v8 += 20;
      if (v9 >= v5)
      {
        return v9;
      }
    }

    v13 = 20 * v5;
    while (1)
    {
      --v5;
      v14 = *(v3 + 16);
      if (v5 >= *(v14 + 8))
      {
        break;
      }

      if (v9 >= v5)
      {
        return v9;
      }

      v15 = (v14 + v13);
      v16 = *(v15 + 2);
      v17 = *v15;
      v18 = *(v15 - 1);
      v19 = v17;
      v20 = v16;
      result = v6(&v18);
      v13 -= 20;
      if ((result & 1) == 0)
      {
        result = specialized MutableCollection.swapAt(_:_:)(v9, v5);
        v3 = *v1;
        v4 = *(*v1 + 16);
        if (v9 >= *(v4 + 8))
        {
          goto LABEL_25;
        }

        v7 = v9 + 1;
        if ((v9 + 1) >= v5)
        {
          return ++v9;
        }

        goto LABEL_3;
      }
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, char a2)
{
  v2 = *(a1 + 16);
  v3 = *(v2 + 8);
  if (!v3)
  {
    return MEMORY[0x29EDCA190];
  }

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo23AudioChannelDescriptionV_Tt1g5(*(v2 + 8), 0);
  v7 = specialized Sequence._copySequenceContents(initializing:)(v9, (v6 + 4), v3, a1, a2 & 1);

  if (v7 != v3)
  {
    __break(1u);
    return MEMORY[0x29EDCA190];
  }

  return v6;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo05AudioC0V_Tt1g5(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11AudioBufferVGMd, &_ss23_ContiguousArrayStorageCySo11AudioBufferVGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo23AudioChannelDescriptionV_Tt1g5(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo23AudioChannelDescriptionVGMd, &_ss23_ContiguousArrayStorageCySo23AudioChannelDescriptionVGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x6666666666666667) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 3) + (v7 >> 63));
  return result;
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, void *a2, unint64_t a3, unsigned int *a4)
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
    v4 = *a4;
    if (v4)
    {
      v5 = 0;
      v6 = (a4 + 4);
      while (v5 < v4)
      {
        v7 = *v6;
        *a2 = *(v6 - 1);
        a2[1] = v7;
        if (a3 - 1 == v5)
        {
          goto LABEL_11;
        }

        v4 = *a4;
        ++v5;
        v6 += 2;
        a2 += 2;
        if (v5 == v4)
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

unint64_t specialized Sequence._copySequenceContents(initializing:)(unint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, char a5)
{
  if (!a2)
  {
LABEL_10:
    v7 = 0;
LABEL_12:
    *result = a4;
    *(result + 8) = a5 & 1;
    *(result + 16) = v7;
    return v7;
  }

  if (!a3)
  {
LABEL_11:
    v7 = a3;
    goto LABEL_12;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v5 = *(a4 + 16);
    v6 = *(v5 + 8);
    if (v6)
    {
      v7 = 0;
      v8 = (v5 + 28);
      while (v7 < v6)
      {
        v9 = *v8;
        v10 = *(v8 - 1);
        *a2 = *(v8 - 2);
        *(a2 + 8) = v10;
        *(a2 + 16) = v9;
        if (a3 - 1 == v7)
        {
          goto LABEL_11;
        }

        v6 = *(v5 + 8);
        ++v7;
        v8 += 5;
        a2 += 20;
        if (v7 == v6)
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
    if (v4)
    {
      v5 = 0;
      v6 = (a4 + 28);
      while (v5 < v4)
      {
        v7 = *v6;
        v8 = *(v6 - 1);
        *a2 = *(v6 - 2);
        *(a2 + 8) = v8;
        *(a2 + 16) = v7;
        if (a3 - 1 == v5)
        {
          goto LABEL_11;
        }

        v4 = *(a4 + 8);
        ++v5;
        v6 += 5;
        a2 += 20;
        if (v5 == v4)
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

BOOL specialized static ManagedAudioChannelLayout.ChannelDescriptions.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 16);
  v3 = *(v2 + 8);
  v4 = *(*a2 + 16);
  if (v3 != *(v4 + 8))
  {
    return 0;
  }

  v5 = (v2 + 28);
  v6 = v3 + 1;
  v7 = (v4 + 16);
  do
  {
    result = --v6 == 0;
    if (!v6)
    {
      break;
    }

    v10 = *(v5 - 1);
    v9 = *v5;
    v11 = *(v5 - 2);
    v13 = *(v5 - 4);
    v12 = *(v5 - 3);
    v5 += 5;
    v14 = *(v7 - 1);
    v15 = *v7;
    v16 = v7[1];
    v17 = v7[2];
    v18 = v7[3];
    v7 += 5;
    v19 = v13 == v14 && v12 == LODWORD(v15);
    v20 = v19 && v11 == v16;
    v21 = v20 && v10 == v17;
  }

  while (v21 && v9 == v18);
  return result;
}

_DWORD *specialized static ManagedAudioChannelLayout.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  result = *(*a1 + 16);
  v3 = result[2];
  if (!v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = *(*a2 + 16);
  v5 = v4[2];
  if (!v5)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  if (v3 == v5)
  {
    return (memcmp(result, v4, 20 * v3 + 12) == 0);
  }

  else
  {
    return 0;
  }
}

unint64_t lazy protocol witness table accessor for type UnsafeMutableAudioBufferListPointer and conformance UnsafeMutableAudioBufferListPointer()
{
  result = lazy protocol witness table cache variable for type UnsafeMutableAudioBufferListPointer and conformance UnsafeMutableAudioBufferListPointer;
  if (!lazy protocol witness table cache variable for type UnsafeMutableAudioBufferListPointer and conformance UnsafeMutableAudioBufferListPointer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnsafeMutableAudioBufferListPointer and conformance UnsafeMutableAudioBufferListPointer);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UnsafeMutableAudioBufferListPointer and conformance UnsafeMutableAudioBufferListPointer;
  if (!lazy protocol witness table cache variable for type UnsafeMutableAudioBufferListPointer and conformance UnsafeMutableAudioBufferListPointer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnsafeMutableAudioBufferListPointer and conformance UnsafeMutableAudioBufferListPointer);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UnsafeMutableAudioBufferListPointer and conformance UnsafeMutableAudioBufferListPointer;
  if (!lazy protocol witness table cache variable for type UnsafeMutableAudioBufferListPointer and conformance UnsafeMutableAudioBufferListPointer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnsafeMutableAudioBufferListPointer and conformance UnsafeMutableAudioBufferListPointer);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UnsafeMutableAudioBufferListPointer and conformance UnsafeMutableAudioBufferListPointer;
  if (!lazy protocol witness table cache variable for type UnsafeMutableAudioBufferListPointer and conformance UnsafeMutableAudioBufferListPointer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnsafeMutableAudioBufferListPointer and conformance UnsafeMutableAudioBufferListPointer);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UnsafeMutableAudioBufferListPointer and conformance UnsafeMutableAudioBufferListPointer;
  if (!lazy protocol witness table cache variable for type UnsafeMutableAudioBufferListPointer and conformance UnsafeMutableAudioBufferListPointer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnsafeMutableAudioBufferListPointer and conformance UnsafeMutableAudioBufferListPointer);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Slice<UnsafeMutableAudioBufferListPointer> and conformance <> Slice<A>()
{
  result = lazy protocol witness table cache variable for type Slice<UnsafeMutableAudioBufferListPointer> and conformance <> Slice<A>;
  if (!lazy protocol witness table cache variable for type Slice<UnsafeMutableAudioBufferListPointer> and conformance <> Slice<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SliceVy9CoreAudio013UnsafeMutableC17BufferListPointerVGMd, &_ss5SliceVy9CoreAudio013UnsafeMutableC17BufferListPointerVGMR);
    lazy protocol witness table accessor for type UnsafeMutableAudioBufferListPointer and conformance UnsafeMutableAudioBufferListPointer();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Slice<UnsafeMutableAudioBufferListPointer> and conformance <> Slice<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Slice<UnsafeMutableAudioBufferListPointer> and conformance <> Slice<A>;
  if (!lazy protocol witness table cache variable for type Slice<UnsafeMutableAudioBufferListPointer> and conformance <> Slice<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SliceVy9CoreAudio013UnsafeMutableC17BufferListPointerVGMd, &_ss5SliceVy9CoreAudio013UnsafeMutableC17BufferListPointerVGMR);
    lazy protocol witness table accessor for type UnsafeMutableAudioBufferListPointer and conformance UnsafeMutableAudioBufferListPointer();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Slice<UnsafeMutableAudioBufferListPointer> and conformance <> Slice<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Slice<UnsafeMutableAudioBufferListPointer> and conformance <> Slice<A>;
  if (!lazy protocol witness table cache variable for type Slice<UnsafeMutableAudioBufferListPointer> and conformance <> Slice<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SliceVy9CoreAudio013UnsafeMutableC17BufferListPointerVGMd, &_ss5SliceVy9CoreAudio013UnsafeMutableC17BufferListPointerVGMR);
    lazy protocol witness table accessor for type UnsafeMutableAudioBufferListPointer and conformance UnsafeMutableAudioBufferListPointer();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Slice<UnsafeMutableAudioBufferListPointer> and conformance <> Slice<A>);
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

unint64_t lazy protocol witness table accessor for type AudioChannelLayout.UnsafeMutablePointer and conformance AudioChannelLayout.UnsafeMutablePointer()
{
  result = lazy protocol witness table cache variable for type AudioChannelLayout.UnsafeMutablePointer and conformance AudioChannelLayout.UnsafeMutablePointer;
  if (!lazy protocol witness table cache variable for type AudioChannelLayout.UnsafeMutablePointer and conformance AudioChannelLayout.UnsafeMutablePointer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AudioChannelLayout.UnsafeMutablePointer and conformance AudioChannelLayout.UnsafeMutablePointer);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AudioChannelLayout.UnsafeMutablePointer and conformance AudioChannelLayout.UnsafeMutablePointer;
  if (!lazy protocol witness table cache variable for type AudioChannelLayout.UnsafeMutablePointer and conformance AudioChannelLayout.UnsafeMutablePointer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AudioChannelLayout.UnsafeMutablePointer and conformance AudioChannelLayout.UnsafeMutablePointer);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AudioChannelLayout.UnsafeMutablePointer and conformance AudioChannelLayout.UnsafeMutablePointer;
  if (!lazy protocol witness table cache variable for type AudioChannelLayout.UnsafeMutablePointer and conformance AudioChannelLayout.UnsafeMutablePointer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AudioChannelLayout.UnsafeMutablePointer and conformance AudioChannelLayout.UnsafeMutablePointer);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AudioChannelLayout.UnsafeMutablePointer and conformance AudioChannelLayout.UnsafeMutablePointer;
  if (!lazy protocol witness table cache variable for type AudioChannelLayout.UnsafeMutablePointer and conformance AudioChannelLayout.UnsafeMutablePointer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AudioChannelLayout.UnsafeMutablePointer and conformance AudioChannelLayout.UnsafeMutablePointer);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AudioChannelLayout.UnsafeMutablePointer and conformance AudioChannelLayout.UnsafeMutablePointer;
  if (!lazy protocol witness table cache variable for type AudioChannelLayout.UnsafeMutablePointer and conformance AudioChannelLayout.UnsafeMutablePointer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AudioChannelLayout.UnsafeMutablePointer and conformance AudioChannelLayout.UnsafeMutablePointer);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Slice<AudioChannelLayout.UnsafeMutablePointer> and conformance <> Slice<A>()
{
  result = lazy protocol witness table cache variable for type Slice<AudioChannelLayout.UnsafeMutablePointer> and conformance <> Slice<A>;
  if (!lazy protocol witness table cache variable for type Slice<AudioChannelLayout.UnsafeMutablePointer> and conformance <> Slice<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SliceVySo18AudioChannelLayoutV04CoreB0E20UnsafeMutablePointerVGMd, &_ss5SliceVySo18AudioChannelLayoutV04CoreB0E20UnsafeMutablePointerVGMR);
    lazy protocol witness table accessor for type AudioChannelLayout.UnsafeMutablePointer and conformance AudioChannelLayout.UnsafeMutablePointer();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Slice<AudioChannelLayout.UnsafeMutablePointer> and conformance <> Slice<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Slice<AudioChannelLayout.UnsafeMutablePointer> and conformance <> Slice<A>;
  if (!lazy protocol witness table cache variable for type Slice<AudioChannelLayout.UnsafeMutablePointer> and conformance <> Slice<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SliceVySo18AudioChannelLayoutV04CoreB0E20UnsafeMutablePointerVGMd, &_ss5SliceVySo18AudioChannelLayoutV04CoreB0E20UnsafeMutablePointerVGMR);
    lazy protocol witness table accessor for type AudioChannelLayout.UnsafeMutablePointer and conformance AudioChannelLayout.UnsafeMutablePointer();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Slice<AudioChannelLayout.UnsafeMutablePointer> and conformance <> Slice<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Slice<AudioChannelLayout.UnsafeMutablePointer> and conformance <> Slice<A>;
  if (!lazy protocol witness table cache variable for type Slice<AudioChannelLayout.UnsafeMutablePointer> and conformance <> Slice<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SliceVySo18AudioChannelLayoutV04CoreB0E20UnsafeMutablePointerVGMd, &_ss5SliceVySo18AudioChannelLayoutV04CoreB0E20UnsafeMutablePointerVGMR);
    lazy protocol witness table accessor for type AudioChannelLayout.UnsafeMutablePointer and conformance AudioChannelLayout.UnsafeMutablePointer();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Slice<AudioChannelLayout.UnsafeMutablePointer> and conformance <> Slice<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AudioChannelLayout.UnsafePointer and conformance AudioChannelLayout.UnsafePointer()
{
  result = lazy protocol witness table cache variable for type AudioChannelLayout.UnsafePointer and conformance AudioChannelLayout.UnsafePointer;
  if (!lazy protocol witness table cache variable for type AudioChannelLayout.UnsafePointer and conformance AudioChannelLayout.UnsafePointer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AudioChannelLayout.UnsafePointer and conformance AudioChannelLayout.UnsafePointer);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AudioChannelLayout.UnsafePointer and conformance AudioChannelLayout.UnsafePointer;
  if (!lazy protocol witness table cache variable for type AudioChannelLayout.UnsafePointer and conformance AudioChannelLayout.UnsafePointer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AudioChannelLayout.UnsafePointer and conformance AudioChannelLayout.UnsafePointer);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AudioChannelLayout.UnsafePointer and conformance AudioChannelLayout.UnsafePointer;
  if (!lazy protocol witness table cache variable for type AudioChannelLayout.UnsafePointer and conformance AudioChannelLayout.UnsafePointer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AudioChannelLayout.UnsafePointer and conformance AudioChannelLayout.UnsafePointer);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AudioChannelLayout.UnsafePointer and conformance AudioChannelLayout.UnsafePointer;
  if (!lazy protocol witness table cache variable for type AudioChannelLayout.UnsafePointer and conformance AudioChannelLayout.UnsafePointer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AudioChannelLayout.UnsafePointer and conformance AudioChannelLayout.UnsafePointer);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Slice<AudioChannelLayout.UnsafePointer> and conformance <> Slice<A>()
{
  result = lazy protocol witness table cache variable for type Slice<AudioChannelLayout.UnsafePointer> and conformance <> Slice<A>;
  if (!lazy protocol witness table cache variable for type Slice<AudioChannelLayout.UnsafePointer> and conformance <> Slice<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SliceVySo18AudioChannelLayoutV04CoreB0E13UnsafePointerVGMd, &_ss5SliceVySo18AudioChannelLayoutV04CoreB0E13UnsafePointerVGMR);
    lazy protocol witness table accessor for type AudioChannelLayout.UnsafePointer and conformance AudioChannelLayout.UnsafePointer();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Slice<AudioChannelLayout.UnsafePointer> and conformance <> Slice<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Slice<AudioChannelLayout.UnsafePointer> and conformance <> Slice<A>;
  if (!lazy protocol witness table cache variable for type Slice<AudioChannelLayout.UnsafePointer> and conformance <> Slice<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SliceVySo18AudioChannelLayoutV04CoreB0E13UnsafePointerVGMd, &_ss5SliceVySo18AudioChannelLayoutV04CoreB0E13UnsafePointerVGMR);
    lazy protocol witness table accessor for type AudioChannelLayout.UnsafePointer and conformance AudioChannelLayout.UnsafePointer();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Slice<AudioChannelLayout.UnsafePointer> and conformance <> Slice<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ManagedAudioChannelLayout.ChannelDescriptions and conformance ManagedAudioChannelLayout.ChannelDescriptions()
{
  result = lazy protocol witness table cache variable for type ManagedAudioChannelLayout.ChannelDescriptions and conformance ManagedAudioChannelLayout.ChannelDescriptions;
  if (!lazy protocol witness table cache variable for type ManagedAudioChannelLayout.ChannelDescriptions and conformance ManagedAudioChannelLayout.ChannelDescriptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ManagedAudioChannelLayout.ChannelDescriptions and conformance ManagedAudioChannelLayout.ChannelDescriptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ManagedAudioChannelLayout.ChannelDescriptions and conformance ManagedAudioChannelLayout.ChannelDescriptions;
  if (!lazy protocol witness table cache variable for type ManagedAudioChannelLayout.ChannelDescriptions and conformance ManagedAudioChannelLayout.ChannelDescriptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ManagedAudioChannelLayout.ChannelDescriptions and conformance ManagedAudioChannelLayout.ChannelDescriptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ManagedAudioChannelLayout.ChannelDescriptions and conformance ManagedAudioChannelLayout.ChannelDescriptions;
  if (!lazy protocol witness table cache variable for type ManagedAudioChannelLayout.ChannelDescriptions and conformance ManagedAudioChannelLayout.ChannelDescriptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ManagedAudioChannelLayout.ChannelDescriptions and conformance ManagedAudioChannelLayout.ChannelDescriptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ManagedAudioChannelLayout.ChannelDescriptions and conformance ManagedAudioChannelLayout.ChannelDescriptions;
  if (!lazy protocol witness table cache variable for type ManagedAudioChannelLayout.ChannelDescriptions and conformance ManagedAudioChannelLayout.ChannelDescriptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ManagedAudioChannelLayout.ChannelDescriptions and conformance ManagedAudioChannelLayout.ChannelDescriptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ManagedAudioChannelLayout.ChannelDescriptions and conformance ManagedAudioChannelLayout.ChannelDescriptions;
  if (!lazy protocol witness table cache variable for type ManagedAudioChannelLayout.ChannelDescriptions and conformance ManagedAudioChannelLayout.ChannelDescriptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ManagedAudioChannelLayout.ChannelDescriptions and conformance ManagedAudioChannelLayout.ChannelDescriptions);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Slice<ManagedAudioChannelLayout.ChannelDescriptions> and conformance <> Slice<A>()
{
  result = lazy protocol witness table cache variable for type Slice<ManagedAudioChannelLayout.ChannelDescriptions> and conformance <> Slice<A>;
  if (!lazy protocol witness table cache variable for type Slice<ManagedAudioChannelLayout.ChannelDescriptions> and conformance <> Slice<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SliceVy9CoreAudio07ManagedC13ChannelLayoutV0E12DescriptionsVGMd, &_ss5SliceVy9CoreAudio07ManagedC13ChannelLayoutV0E12DescriptionsVGMR);
    lazy protocol witness table accessor for type ManagedAudioChannelLayout.ChannelDescriptions and conformance ManagedAudioChannelLayout.ChannelDescriptions();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Slice<ManagedAudioChannelLayout.ChannelDescriptions> and conformance <> Slice<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Slice<ManagedAudioChannelLayout.ChannelDescriptions> and conformance <> Slice<A>;
  if (!lazy protocol witness table cache variable for type Slice<ManagedAudioChannelLayout.ChannelDescriptions> and conformance <> Slice<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SliceVy9CoreAudio07ManagedC13ChannelLayoutV0E12DescriptionsVGMd, &_ss5SliceVy9CoreAudio07ManagedC13ChannelLayoutV0E12DescriptionsVGMR);
    lazy protocol witness table accessor for type ManagedAudioChannelLayout.ChannelDescriptions and conformance ManagedAudioChannelLayout.ChannelDescriptions();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Slice<ManagedAudioChannelLayout.ChannelDescriptions> and conformance <> Slice<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Slice<ManagedAudioChannelLayout.ChannelDescriptions> and conformance <> Slice<A>;
  if (!lazy protocol witness table cache variable for type Slice<ManagedAudioChannelLayout.ChannelDescriptions> and conformance <> Slice<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SliceVy9CoreAudio07ManagedC13ChannelLayoutV0E12DescriptionsVGMd, &_ss5SliceVy9CoreAudio07ManagedC13ChannelLayoutV0E12DescriptionsVGMR);
    lazy protocol witness table accessor for type ManagedAudioChannelLayout.ChannelDescriptions and conformance ManagedAudioChannelLayout.ChannelDescriptions();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Slice<ManagedAudioChannelLayout.ChannelDescriptions> and conformance <> Slice<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Slice<UnsafeMutableAudioBufferListPointer> and conformance Slice<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t getEnumTagSinglePayload for UnsafeMutableAudioBufferListPointer(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for UnsafeMutableAudioBufferListPointer(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy28_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 12) = *(a2 + 12);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ManagedAudioChannelLayout(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 28))
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

uint64_t storeEnumTagSinglePayload for ManagedAudioChannelLayout(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 28) = 1;
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

    *(result + 28) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ManagedAudioChannelLayout.ChannelDescriptions(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t storeEnumTagSinglePayload for ManagedAudioChannelLayout.ChannelDescriptions(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
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

uint64_t getEnumTagSinglePayload for AudioBufferList(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AudioBufferList(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

__n128 __swift_memcpy20_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AudioChannelDescription(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 20))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AudioChannelDescription(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 20) = v3;
  return result;
}

__n128 __swift_memcpy32_4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for AudioChannelLayout(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AudioChannelLayout(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for AudioBuffer(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AudioBuffer(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t outlined consume of (@escaping @callee_guaranteed (@in_guaranteed AudioChannelLayout.UnsafePointer) -> ())?(uint64_t result)
{
  if (result)
  {
  }

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

void type metadata accessor for AudioBufferList(uint64_t a1, unint64_t *a2)
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

Swift::String_optional __swiftcall String.Iterator.next()()
{
  v0 = MEMORY[0x2A1C72520]();
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}