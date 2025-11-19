void Array<A>.xor.getter(uint64_t a1)
{
  v38 = *(a1 + 16);
  if (v38)
  {
    v2 = a1 + 32;
    v1 = *(a1 + 32);
    v3 = *(v1 + 16);
    v4 = MEMORY[0x277D84F90];
    if (v3)
    {
      v5 = *(v1 + 16);
      v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v6[2] = v3;
      bzero(v6 + 4, v3);
    }

    else
    {
      v6 = MEMORY[0x277D84F90];
    }

    v8 = 0;
    v37 = v2;
    while (!__OFADD__(v8, 1))
    {
      v9 = v6;
      v10 = *(v2 + 8 * v8);
      v11 = v6[2];
      v12 = *(v10 + 16);
      if (v11 != v12)
      {
        lazy protocol witness table accessor for type XORError and conformance XORError();
        swift_allocError();
        *v31 = v11;
        *(v31 + 8) = v12;
        *(v31 + 16) = 0;
        swift_willThrow();

        return;
      }

      v39 = v8 + 1;

      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11, 0);
      v6 = v4;
      if (v11)
      {
        v13 = 0;
        v14 = v9[2];
        v15 = v10 + 32;
        v16 = v9;
        v17 = v10;
        while (v14 != v13)
        {
          if (v13 >= v16[2])
          {
            goto LABEL_34;
          }

          v18 = *(v17 + 16);
          if (v13 == v18)
          {
            goto LABEL_35;
          }

          if (v13 >= v18)
          {
            goto LABEL_36;
          }

          v19 = *(v9 + v13 + 32);
          v20 = *(v15 + v13);
          v22 = v6[2];
          v21 = v6[3];
          if (v22 >= v21 >> 1)
          {
            v33 = v17;
            v35 = v16;
            v32 = v14;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1);
            v14 = v32;
            v17 = v33;
            v16 = v35;
          }

          ++v13;
          v6[2] = v22 + 1;
          *(v6 + v22 + 32) = v19 ^ v20;
          if (v11 == v13)
          {
            goto LABEL_22;
          }
        }

        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      v16 = v9;
      v17 = v10;
LABEL_22:
      v23 = v16[2];
      if (v11 != v23)
      {
        v24 = v16 + 4;
        v25 = v17 + 32;
        v4 = MEMORY[0x277D84F90];
        while (v11 < v23)
        {
          v26 = *(v17 + 16);
          if (v11 == v26)
          {
            goto LABEL_8;
          }

          if (v11 >= v26)
          {
            goto LABEL_38;
          }

          v27 = *(v24 + v11);
          v28 = *(v25 + v11);
          v30 = v6[2];
          v29 = v6[3];
          if (v30 >= v29 >> 1)
          {
            v34 = v17;
            v36 = v16;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1);
            v17 = v34;
            v16 = v36;
          }

          ++v11;
          v6[2] = v30 + 1;
          *(v6 + v30 + 32) = v27 ^ v28;
          v23 = v16[2];
          if (v11 == v23)
          {
            goto LABEL_8;
          }
        }

LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        break;
      }

      v4 = MEMORY[0x277D84F90];
LABEL_8:

      swift_bridgeObjectRelease_n();
      v8 = v39;
      v2 = v37;
      if (v39 == v38)
      {
        return;
      }
    }

    __break(1u);
  }

  else
  {
    lazy protocol witness table accessor for type XORError and conformance XORError();
    swift_allocError();
    *v7 = 0;
    *(v7 + 8) = 0;
    *(v7 + 16) = 1;
    swift_willThrow();
  }
}

void specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(uint64_t *a1, int a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v4 = a1[1];
  v6 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (v6)
    {

      outlined consume of Data._Representation(v5, v4);
      __b = v5;
      v24 = v4 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_270C44D60;
      outlined consume of Data._Representation(0, 0xC000000000000000);
      specialized Data.InlineSlice.withUnsafeMutableBytes<A>(_:)(&__b, a2);
      v7 = __b;
      v8 = v24 | 0x4000000000000000;
    }

    else
    {
      outlined consume of Data._Representation(v5, v4);
      __b = v5;
      LOWORD(v24) = v4;
      BYTE2(v24) = BYTE2(v4);
      BYTE3(v24) = BYTE3(v4);
      BYTE4(v24) = BYTE4(v4);
      BYTE5(v24) = BYTE5(v4);
      BYTE6(v24) = BYTE6(v4);
      memset(&__b, a2, BYTE6(v4));
      v7 = __b;
      v8 = v24 | ((WORD2(v24) | (BYTE6(v24) << 16)) << 32);
    }

    *a1 = v7;
    a1[1] = v8;
    goto LABEL_14;
  }

  if (v6 != 2)
  {
LABEL_14:
    v21 = *MEMORY[0x277D85DE8];
    return;
  }

  v9 = *a1;

  outlined consume of Data._Representation(v5, v4);
  __b = v5;
  v24 = v4 & 0x3FFFFFFFFFFFFFFFLL;
  *a1 = xmmword_270C44D60;
  outlined consume of Data._Representation(0, 0xC000000000000000);
  Data.LargeSlice.ensureUniqueReference()();
  v10 = v24;
  v11 = *(__b + 16);
  v12 = *(__b + 24);
  v13 = __DataStorage._bytes.getter();
  if (v13)
  {
    v14 = v13;
    v15 = __DataStorage._offset.getter();
    v16 = v11 - v15;
    if (__OFSUB__(v11, v15))
    {
      __break(1u);
    }

    else
    {
      v17 = __OFSUB__(v12, v11);
      v18 = v12 - v11;
      if (!v17)
      {
        v19 = MEMORY[0x2743B2250]();
        if (v19 >= v18)
        {
          v20 = v18;
        }

        else
        {
          v20 = v19;
        }

        memset((v14 + v16), a2, v20);
        *a1 = __b;
        a1[1] = v10 | 0x8000000000000000;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void specialized Data.InlineSlice.withUnsafeMutableBytes<A>(_:)(int *a1, int a2)
{
  Data.InlineSlice.ensureUniqueReference()();
  v4 = *a1;
  v5 = a1[1];
  if (v5 < v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = *(a1 + 1);

  v7 = __DataStorage._bytes.getter();
  if (!v7)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v8 = v7;
  v9 = __DataStorage._offset.getter();
  v10 = v4 - v9;
  if (__OFSUB__(v4, v9))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v11 = v5 - v4;
  v12 = MEMORY[0x2743B2250]();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  memset((v8 + v10), a2, v13);
}

uint64_t specialized Zip2Sequence.underestimatedCount.getter(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(a2);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    v5 = 0;
    goto LABEL_11;
  }

  v7 = *(result + 16);
  v6 = *(result + 24);
  v8 = __OFSUB__(v6, v7);
  v5 = v6 - v7;
  if (v8)
  {
    __break(1u);
LABEL_8:
    LODWORD(v5) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
      __break(1u);
      goto LABEL_25;
    }

    v5 = v5;
  }

LABEL_11:
  v9 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v9 != 2)
    {
      return v5 & (v5 >> 63);
    }

    v12 = *(a3 + 16);
    v11 = *(a3 + 24);
    v8 = __OFSUB__(v11, v12);
    v10 = v11 - v12;
    if (!v8)
    {
      goto LABEL_20;
    }

    __break(1u);
  }

  else if (!v9)
  {
    v10 = BYTE6(a4);
    goto LABEL_20;
  }

  LODWORD(v10) = HIDWORD(a3) - a3;
  if (__OFSUB__(HIDWORD(a3), a3))
  {
LABEL_25:
    __break(1u);
    return result;
  }

  v10 = v10;
LABEL_20:
  if (v10 >= v5)
  {
    return v5;
  }

  else
  {
    return v10;
  }
}

uint64_t partial apply for closure #1 in Array<A>.xor(_:)()
{
  v1 = *(*(v0 + 24) + 8);
  v2 = *(v0 + 16);
  return dispatch thunk of static BinaryInteger.^ infix(_:_:)();
}

uint64_t partial apply for thunk for @callee_guaranteed (@in_guaranteed A, @in_guaranteed A) -> (@out A)(uint64_t a1)
{
  v3 = v1[2];
  v5 = v1[5];
  v4 = v1[6];
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return v5(a1, a1 + *(TupleTypeMetadata2 + 48));
}

uint64_t specialized Data.init(count:)(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      return specialized Data.InlineData.init(count:)(result);
    }

    else
    {
      v2 = type metadata accessor for __DataStorage();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      __DataStorage.init(length:)();
      if (v1 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for XORError(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type XORError and conformance XORError();
  result = lazy protocol witness table accessor for type XORError and conformance XORError();
  *(a1 + 16) = result;
  return result;
}

uint64_t outlined destroy of Zip2Sequence<Data, Data>.Iterator(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12Zip2SequenceV8IteratorVy10Foundation4DataVAG_GMd, &_ss12Zip2SequenceV8IteratorVy10Foundation4DataVAG_GMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t specialized FixedWidthInteger.nextPowerOfTwo.getter(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = 1 << -__clz(result - 1);
    if (result)
    {
      return v1;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HadamardTransformError and conformance HadamardTransformError()
{
  result = lazy protocol witness table cache variable for type HadamardTransformError and conformance HadamardTransformError;
  if (!lazy protocol witness table cache variable for type HadamardTransformError and conformance HadamardTransformError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HadamardTransformError and conformance HadamardTransformError);
  }

  return result;
}

Swift::Double __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> HadamardTransform.transform(atColIndex:atRowIndex:)(Swift::Int atColIndex, Swift::Int atRowIndex)
{
  v3 = atColIndex;
  v4 = 0;
  v5 = *v2;
  if (atColIndex < 0 || v5 <= atColIndex)
  {
    goto LABEL_9;
  }

  v4 = 1;
  if (atRowIndex < 0 || v5 <= atRowIndex)
  {
    v3 = atRowIndex;
LABEL_9:
    lazy protocol witness table accessor for type HadamardTransformError and conformance HadamardTransformError();
    swift_allocError();
    *v8 = v3;
    *(v8 + 8) = v5;
    *(v8 + 16) = v4;
    swift_willThrow();
    return result;
  }

  v6 = 1;
  if (vaddlv_u8(vcnt_s8((atRowIndex & atColIndex))))
  {
    v6 = -1;
  }

  return *(v2 + 8) * v6;
}

uint64_t HadamardTransform.inverseTransform(_:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*a1 + 16);
  if (v3 == *v1)
  {
    v4 = v1[2];
    fwht #1 (_:) in HadamardTransform.inverseTransform(_:)(a1);
    v6 = *a1;
    v7 = *(*a1 + 16);
    result = MEMORY[0x277D84F90];
    if (v7)
    {
      v14 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
      result = v14;
      v9 = (v6 + 32);
      v10 = *(v14 + 16);
      do
      {
        v11 = *v9;
        v15 = result;
        v12 = *(result + 24);
        if (v10 >= v12 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v10 + 1, 1);
          result = v15;
        }

        *(result + 16) = v10 + 1;
        *(result + 8 * v10 + 32) = v4 * v11;
        ++v9;
        ++v10;
        --v7;
      }

      while (v7);
    }
  }

  else
  {
    lazy protocol witness table accessor for type HadamardTransformError and conformance HadamardTransformError();
    swift_allocError();
    *v13 = v3;
    *(v13 + 8) = v2;
    *(v13 + 16) = 3;
    return swift_willThrow();
  }

  return result;
}

uint64_t fwht #1 (_:) in HadamardTransform.inverseTransform(_:)(uint64_t result)
{
  v1 = *result;
  if (*(*result + 16) < 2uLL)
  {
    return result;
  }

  v2 = result;
  v3 = *result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_35:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
    v1 = result;
  }

  v4 = v1 + 32;
  v5 = *(v1 + 16);
  v6 = 1;
  while (1)
  {
    if (v6 + 0x4000000000000000 < 0)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v7 = 2 * v6;
    if (2 * v6 >= 1)
    {
      if (v5)
      {
        break;
      }
    }

LABEL_5:
    v6 *= 2;
    if (v7 >= v5)
    {
      goto LABEL_28;
    }
  }

  v8 = 0;
  while (1)
  {
    v9 = v8 + v7;
    if (__OFADD__(v8, v7))
    {
      v9 = ((v8 + v7) >> 63) ^ 0x8000000000000000;
    }

    v10 = v8 + v6;
    if (__OFADD__(v8, v6))
    {
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    if (v10 < v8)
    {
      goto LABEL_31;
    }

    if (v8 != v10)
    {
      break;
    }

LABEL_10:
    v8 = v9;
    if (v9 >= v5)
    {
      v5 = *(v1 + 16);
      goto LABEL_5;
    }
  }

  if ((v8 & 0x8000000000000000) != 0)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v11 = *(v1 + 16);
  if (v8 >= v11 || v10 - 1 >= v11)
  {
    goto LABEL_33;
  }

  v12 = v6;
  while (1)
  {
    v13 = v8 + v6;
    if (__OFADD__(v8, v6))
    {
      break;
    }

    if ((v13 & 0x8000000000000000) != 0)
    {
      goto LABEL_26;
    }

    if (v13 >= *(v1 + 16))
    {
      goto LABEL_27;
    }

    v14 = *(v4 + 8 * v8);
    v15 = *(v4 + 8 * v13);
    *(v4 + 8 * v8) = v14 + v15;
    *(v4 + 8 * v13) = v14 - v15;
    ++v8;
    if (!--v12)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  *v2 = v1;
  return result;
}

uint64_t getEnumTagSinglePayload for HadamardTransformError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for HadamardTransformError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PreamblePrepareShare(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for PreamblePrepareShare(_WORD *result, int a2, int a3)
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

uint64_t RandomAccessCollection<>.popFirst(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v4, a2);
  v11 = *(*(a3 + 8) + 8);
  Collection.prefix(_:)();
  (*(v7 + 32))(v10, v4, a2);
  return Collection.dropFirst(_:)();
}

unint64_t specialized SignedInteger<>.isMultiple(of:)(unint64_t result, uint64_t a2, unint64_t a3, int64_t a4)
{
  if (!(a2 | result))
  {
    return (a4 | a3) == 0;
  }

  if (a2 == -1 && result == -1)
  {
    return 1;
  }

  if (a2 != -1)
  {
    if (a2 || result)
    {
      goto LABEL_13;
    }

    __break(1u);
  }

  if (result != -1 || a4 != 0x8000000000000000 || a3)
  {
LABEL_13:
    _Int128.quotientAndRemainder(dividingBy:)(result, a2, a3, a4);
    return (v5 | v4) == 0;
  }

  __break(1u);
  return result;
}

uint64_t _UInt128.init(high:low:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a2;
  a3[1] = result;
  return result;
}

uint64_t _UInt128.init(bitPattern:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

double static _UInt128.one.getter@<D0>(_OWORD *a1@<X8>)
{
  *&result = 1;
  *a1 = xmmword_270C44F50;
  return result;
}

uint64_t _UInt128.description.getter()
{
  v3 = *v0;
  lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
  v1 = String.init<A>(_:radix:uppercase:)();
  MEMORY[0x2743B25F0](v1);

  return 30768;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance _UInt128()
{
  v3 = *v0;
  lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
  v1 = String.init<A>(_:radix:uppercase:)();
  MEMORY[0x2743B25F0](v1);

  return 30768;
}

BOOL static _UInt128.< infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = v2 == v3;
  v5 = v2 < v3;
  if (v4)
  {
    return *a1 < *a2;
  }

  else
  {
    return v5;
  }
}

BOOL protocol witness for static Comparable.< infix(_:_:) in conformance _UInt128(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = v2 == v3;
  v5 = v2 < v3;
  if (v4)
  {
    return *a1 < *a2;
  }

  else
  {
    return v5;
  }
}

BOOL protocol witness for static Comparable.<= infix(_:_:) in conformance _UInt128(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = v3 == v2;
  v5 = v3 >= v2;
  if (v4)
  {
    return *a2 >= *a1;
  }

  else
  {
    return v5;
  }
}

BOOL protocol witness for static Comparable.>= infix(_:_:) in conformance _UInt128(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = v2 == v3;
  v5 = v2 >= v3;
  if (v4)
  {
    return *a1 >= *a2;
  }

  else
  {
    return v5;
  }
}

BOOL protocol witness for static Comparable.> infix(_:_:) in conformance _UInt128(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = v3 == v2;
  v5 = v3 < v2;
  if (v4)
  {
    return *a2 < *a1;
  }

  else
  {
    return v5;
  }
}

uint64_t _UInt128.hash(into:)()
{
  v1 = v0[1];
  MEMORY[0x2743B31A0](*v0);
  return MEMORY[0x2743B31A0](v1);
}

Swift::Int _UInt128.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  MEMORY[0x2743B31A0](v1);
  MEMORY[0x2743B31A0](v2);
  return Hasher._finalize()();
}

uint64_t (*_UInt128.components.modify(int8x16_t *a1))()
{
  a1[1].i64[0] = v1;
  *a1 = vextq_s8(*v1, *v1, 8uLL);
  return _UInt128.components.modify;
}

unint64_t *static _UInt128.- infix(_:_:)@<X0>(unint64_t *result@<X0>, unint64_t *a2@<X1>, unint64_t *a3@<X8>)
{
  v4 = *result;
  v3 = result[1];
  v6 = *a2;
  v5 = a2[1];
  v7 = v3 >= v5;
  v8 = v3 - v5;
  v9 = !v7;
  v7 = v4 >= v6;
  v10 = v4 - v6;
  if (v7)
  {
    if ((v9 & 1) == 0)
    {
      *a3 = v10;
      a3[1] = v8;
      return result;
    }
  }

  else
  {
    if (!v8)
    {
      v9 = 1;
    }

    if ((v9 & 1) == 0)
    {
      *a3 = v10;
      a3[1] = v8 - 1;
      return result;
    }
  }

  __break(1u);
  return result;
}

unint64_t _UInt128.subtractingReportingOverflow(_:)(unint64_t *a1, unint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = *v2;
  v6 = v2[1];
  v7 = v6 >= v4;
  v8 = v6 - v4;
  v9 = !v7;
  v7 = v5 >= v3;
  v10 = v5 - v3;
  LODWORD(v3) = v5 < v3;
  if (v7)
  {
    if (v9)
    {
      v3 = 1;
      v11 = v8;
      goto LABEL_13;
    }

    v11 = v8;
  }

  else
  {
    v11 = v8 - 1;
    if (v9)
    {
      v3 = 1;
      goto LABEL_13;
    }
  }

  if (v8)
  {
    v3 = 0;
  }

  else
  {
    v3 = v3;
  }

LABEL_13:
  *a1 = v10;
  a1[1] = v11;
  return v3;
}

unint64_t *static _UInt128.-= infix(_:_:)(unint64_t *result, unint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  v5 = *result;
  v4 = result[1];
  v6 = v4 >= v2;
  v7 = v4 - v2;
  v8 = !v6;
  v6 = v5 >= v3;
  v9 = v5 - v3;
  if (v6)
  {
    if ((v8 & 1) == 0)
    {
      *result = v9;
      result[1] = v7;
      return result;
    }
  }

  else
  {
    if (!v7)
    {
      v8 = 1;
    }

    if ((v8 & 1) == 0)
    {
      *result = v9;
      result[1] = v7 - 1;
      return result;
    }
  }

  __break(1u);
  return result;
}

void *static _UInt128.+ infix(_:_:)@<X0>(void *result@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = __CFADD__(*result, *a2);
  v6 = __CFADD__(v3, v4);
  v7 = v3 + v4;
  if (v6 || (v5 ? (v8 = v7 == -1) : (v8 = 0), v8))
  {
    __break(1u);
  }

  else
  {
    *a3 = *result + *a2;
    a3[1] = v7 + v5;
  }

  return result;
}

uint64_t _UInt128.addingReportingOverflow(_:)(void *a1, void *a2)
{
  v3 = a2[1];
  v4 = v2[1];
  v5 = __CFADD__(*v2, *a2);
  v6 = __CFADD__(v4, v3);
  v7 = v4 + v3;
  if (v6)
  {
    v8 = 1;
    if (v5)
    {
LABEL_9:
      v9 = 1;
      goto LABEL_10;
    }
  }

  else
  {
    v8 = (v7 == -1) & v5;
    if (v5)
    {
      goto LABEL_9;
    }
  }

  v9 = 0;
LABEL_10:
  *a1 = *v2 + *a2;
  a1[1] = v9 + v7;
  return v8;
}

void *static _UInt128.+= infix(_:_:)(void *result, void *a2)
{
  v2 = a2[1];
  v3 = result[1];
  v4 = __CFADD__(*result, *a2);
  v5 = __CFADD__(v3, v2);
  v6 = v3 + v2;
  if (v5 || (v4 ? (v7 = v6 == -1) : (v7 = 0), v7))
  {
    __break(1u);
  }

  else
  {
    *result += *a2;
    result[1] = v6 + v4;
  }

  return result;
}

__n128 _UInt128.init(_:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t _UInt128.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = *(a2 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v11 = &v16[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, a1, a2);
  result = _UInt128.init<A>(exactly:)(v11, a2, a3, v16);
  if (v17 == 1)
  {
    __break(1u);
  }

  else
  {
    v14 = v16[0];
    v13 = v16[1];
    result = (*(v8 + 8))(a1, a2);
    *a4 = v14;
    a4[1] = v13;
  }

  return result;
}

uint64_t _UInt128.init<A>(exactly:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = *(a3 + 24);
  swift_getAssociatedTypeWitness();
  v119 = *(swift_getAssociatedConformanceWitness() + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v10);
  v117 = &v114 - v11;
  v12 = swift_checkMetadataState();
  v128 = *(v12 - 8);
  v13 = *(v128 + 64);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v125 = &v114 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v17);
  v127 = &v114 - v18;
  v122 = *(v8 + 16);
  v121 = swift_getAssociatedTypeWitness();
  v19 = *(*(v121 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v121, v20);
  v120 = &v114 - v22;
  v23 = *(a2 - 8);
  v24 = *(v23 + 64);
  v26 = MEMORY[0x28223BE20](v21, v25);
  v116 = &v114 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v26, v28);
  v31 = &v114 - v30;
  v33 = MEMORY[0x28223BE20](v29, v32);
  v126 = &v114 - v34;
  v36 = MEMORY[0x28223BE20](v33, v35);
  v123 = &v114 - v37;
  MEMORY[0x28223BE20](v36, v38);
  v130 = &v114 - v39;
  v40 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v131 = a1;
  v129 = v23;
  if (v40)
  {
    if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
    {
      v41 = v130;
      (*(v23 + 16))(v130, a1, a2);
      goto LABEL_12;
    }

    v132 = 0;
    lazy protocol witness table accessor for type Int and conformance Int();
    v44 = v130;
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v47 = *(*(a3 + 32) + 8);
    v46 = dispatch thunk of static Comparable.< infix(_:_:)();
    goto LABEL_8;
  }

  v42 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v43 = dispatch thunk of BinaryInteger.bitWidth.getter();
  if (v42)
  {
    if (v43 <= 64)
    {
      v114 = v31;
      v124 = a4;
      swift_getAssociatedConformanceWitness();
      dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
      v62 = v130;
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
      v63 = *(*(a3 + 32) + 8);
      LODWORD(v115) = dispatch thunk of static Comparable.< infix(_:_:)();
      v64 = v129;
      v65 = v62;
      v66 = a1;
      v48 = *(v129 + 8);
      v48(v65, a2);
      if (v115)
      {
        a4 = v124;
      }

      else
      {
        (*(v64 + 16))(v65, v66, a2);
        v96 = dispatch thunk of BinaryInteger._lowWord.getter();
        v48(v65, a2);
        a4 = v124;
        v31 = v114;
        if ((v96 & 0x8000000000000000) == 0)
        {
          goto LABEL_13;
        }
      }

      goto LABEL_21;
    }

    v132 = 0;
    lazy protocol witness table accessor for type Int and conformance Int();
    v44 = v130;
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v45 = *(*(a3 + 32) + 8);
    v46 = dispatch thunk of static Comparable.< infix(_:_:)();
    v23 = v129;
LABEL_8:
    v48 = *(v23 + 8);
    v48(v44, a2);
    if (v46)
    {
      goto LABEL_21;
    }

    goto LABEL_13;
  }

  if (v43 < 64)
  {
    v23 = v129;
    v41 = v130;
    (*(v129 + 16))(v130, v131, a2);
LABEL_12:
    v49 = dispatch thunk of BinaryInteger._lowWord.getter();
    v48 = *(v23 + 8);
    v48(v41, a2);
    if ((v49 & 0x8000000000000000) == 0)
    {
      goto LABEL_13;
    }

LABEL_21:
    result = (v48)(v131, a2);
    goto LABEL_22;
  }

LABEL_13:
  v124 = a4;
  v50 = v127;
  dispatch thunk of Numeric.magnitude.getter();
  v115 = a3;
  swift_getAssociatedConformanceWitness();
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
  {
    goto LABEL_16;
  }

  swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  v51 = v31;
  v52 = v125;
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  swift_getAssociatedConformanceWitness();
  v53 = dispatch thunk of static Comparable.< infix(_:_:)();
  v54 = *(v128 + 8);
  v55 = v52;
  v31 = v51;
  v54(v55, v12);
  if ((v53 & 1) == 0)
  {
LABEL_16:
    if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
    {
      goto LABEL_36;
    }

    v132 = -1;
    v57 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v58 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v57)
    {
      if (v58 <= 64)
      {
        swift_getAssociatedConformanceWitness();
        dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
        v59 = v125;
        dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
        swift_getAssociatedConformanceWitness();
        v60 = dispatch thunk of static Comparable.> infix(_:_:)();
        (*(v128 + 8))(v59, v12);
        if ((v60 & 1) == 0)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      }
    }

    else if (v58 < 65)
    {
LABEL_35:
      dispatch thunk of BinaryInteger._lowWord.getter();
      goto LABEL_36;
    }

    lazy protocol witness table accessor for type UInt64 and conformance UInt64();
    v114 = v31;
    v67 = v125;
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    swift_getAssociatedConformanceWitness();
    v68 = dispatch thunk of static Comparable.< infix(_:_:)();
    v54 = *(v128 + 8);
    v69 = v114;
    v54(v67, v12);
    if (v68)
    {
      v56 = v69;
      goto LABEL_28;
    }

LABEL_36:
    v87 = dispatch thunk of BinaryInteger._lowWord.getter();
    (*(v128 + 8))(v50, v12);
    v88 = *(v8 + 8);
    v89 = v130;
    dispatch thunk of static AdditiveArithmetic.zero.getter();
    v90 = *(*(v115 + 32) + 8);
    v91 = v131;
    v92 = dispatch thunk of static Comparable.< infix(_:_:)();
    v93 = *(v129 + 8);
    v93(v91, a2);
    result = (v93)(v89, a2);
    v94 = v92 << 63 >> 63;
    if (v92)
    {
      v95 = -v87;
    }

    else
    {
      v95 = v87;
    }

    goto LABEL_58;
  }

  v56 = v51;
LABEL_28:
  v54(v127, v12);
  v132 = -1;
  v70 = lazy protocol witness table accessor for type UInt64 and conformance UInt64();
  v71 = v130;
  v128 = v70;
  v72 = v115;
  dispatch thunk of BinaryInteger.init<A>(_:)();
  v73 = v123;
  dispatch thunk of static BinaryInteger.& infix(_:_:)();
  v74 = v129;
  v75 = *(v129 + 8);
  v75(v71, a2);
  v132 = 64;
  lazy protocol witness table accessor for type Int and conformance Int();
  dispatch thunk of static BinaryInteger.>> infix<A>(_:_:)();
  v76 = v56;
  v77 = *(v74 + 16);
  v129 = v74 + 16;
  v77(v76, v73, a2);
  v78 = v76;
  if (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0 || (swift_getAssociatedConformanceWitness(), dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)(), v79 = v130, dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)(), v80 = *(*(v72 + 32) + 8), v81 = dispatch thunk of static Comparable.>= infix(_:_:)(), result = (v75)(v79, a2), (v81))
  {
    if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 63)
    {
      goto LABEL_45;
    }

    v132 = -1;
    v82 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v83 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v82)
    {
      if (v83 <= 64)
      {
        swift_getAssociatedConformanceWitness();
        dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
        v84 = v130;
        dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
        v85 = *(*(v72 + 32) + 8);
        v86 = dispatch thunk of static Comparable.> infix(_:_:)();
        v75(v84, a2);
        if (v86)
        {
          goto LABEL_44;
        }

LABEL_45:
        v95 = dispatch thunk of BinaryInteger._lowWord.getter();
        v75(v78, a2);
        v100 = v116;
        v77(v116, v126, a2);
        v101 = v100;
        if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0 || (swift_getAssociatedConformanceWitness(), dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)(), v102 = v130, dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)(), v103 = *(*(v72 + 32) + 8), v104 = dispatch thunk of static Comparable.< infix(_:_:)(), v75(v102, a2), (v104 & 1) == 0))
        {
          if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
          {
            goto LABEL_57;
          }

          v132 = -1;
          v105 = dispatch thunk of static BinaryInteger.isSigned.getter();
          v106 = dispatch thunk of BinaryInteger.bitWidth.getter();
          if (v105)
          {
            if (v106 <= 64)
            {
              swift_getAssociatedConformanceWitness();
              dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
              v107 = v130;
              dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
              v108 = *(*(v72 + 32) + 8);
              v101 = v116;
              v109 = dispatch thunk of static Comparable.> infix(_:_:)();
              v75(v107, a2);
              if ((v109 & 1) == 0)
              {
                goto LABEL_57;
              }

              goto LABEL_56;
            }
          }

          else if (v106 < 65)
          {
            v101 = v116;
LABEL_56:
            dispatch thunk of BinaryInteger._lowWord.getter();
            goto LABEL_57;
          }

          v110 = v130;
          dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
          v111 = *(*(v72 + 32) + 8);
          v101 = v116;
          v112 = dispatch thunk of static Comparable.< infix(_:_:)();
          v75(v110, a2);
          if ((v112 & 1) == 0)
          {
LABEL_57:
            v94 = dispatch thunk of BinaryInteger._lowWord.getter();
            v75(v131, a2);
            v75(v101, a2);
            v75(v126, a2);
            result = (v75)(v123, a2);
LABEL_58:
            v113 = v124;
            *v124 = v95;
            v113[1] = v94;
            *(v113 + 16) = 0;
            return result;
          }
        }

        v75(v131, a2);
        v75(v101, a2);
        v75(v126, a2);
        result = (v75)(v123, a2);
        a4 = v124;
LABEL_22:
        *a4 = 0;
        a4[1] = 0;
        *(a4 + 16) = 1;
        return result;
      }
    }

    else if (v83 < 65)
    {
      goto LABEL_44;
    }

    v97 = v130;
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v98 = *(*(v72 + 32) + 8);
    v99 = dispatch thunk of static Comparable.< infix(_:_:)();
    v75(v97, a2);
    if ((v99 & 1) == 0)
    {
      goto LABEL_45;
    }

    __break(1u);
LABEL_44:
    dispatch thunk of BinaryInteger._lowWord.getter();
    goto LABEL_45;
  }

  __break(1u);
  return result;
}

unint64_t *static _UInt128.* infix(_:_:)@<X0>(unint64_t *result@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v3 = *result;
  v4 = result[1];
  v5 = *a2;
  v6 = a2[1];
  v7 = !is_mul_ok(v4, *a2);
  v8 = v4 * *a2;
  v9 = !is_mul_ok(*result, v6);
  v10 = __CFADD__(v8, *result * v6);
  v11 = v8 + *result * v6;
  v12 = v10;
  v13 = (v5 * v3) >> 64;
  v10 = __CFADD__(v11, v13);
  v14 = v11 + v13;
  v15 = v10;
  if (v6)
  {
    v16 = v4 == 0;
  }

  else
  {
    v16 = 1;
  }

  if (!v16 || v7 || v9 || (v12 & 1) != 0 || (v15 & 1) != 0)
  {
    __break(1u);
  }

  else
  {
    *a3 = v5 * v3;
    a3[1] = v14;
  }

  return result;
}

uint64_t _UInt128.multipliedReportingOverflow(by:)(unint64_t *a1, unint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  v6 = *v2;
  v5 = v2[1];
  v7 = !is_mul_ok(v5, *a2);
  v8 = v5 * *a2;
  v9 = !is_mul_ok(*v2, v3);
  v10 = __CFADD__(v8, *v2 * v3);
  v11 = v8 + *v2 * v3;
  v12 = v10;
  v13 = v6 * v4;
  v14 = (v6 * v4) >> 64;
  v10 = __CFADD__(v11, v14);
  v15 = v11 + v14;
  v16 = v10;
  if (v5)
  {
    v17 = v3 == 0;
  }

  else
  {
    v17 = 1;
  }

  v18 = !v17;
  *a1 = v13;
  a1[1] = v15;
  return (v18 | v7 | v9 | v12 | v16) & 1;
}

void *protocol witness for ExpressibleByIntegerLiteral.init(integerLiteral:) in conformance _UInt128@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *a2 = *result;
    a2[1] = 0;
  }

  return result;
}

uint64_t _UInt128.init(integerLiteral:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *a2 = result;
    a2[1] = 0;
  }

  return result;
}

__n128 _UInt128.Words._value.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

__n128 _UInt128.Words._value.setter(__n128 *a1)
{
  result = *a1;
  *v1 = *a1;
  return result;
}

__n128 _UInt128.Words.init(_:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

Swift::Int __swiftcall _UInt128.Words.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

Swift::Int __swiftcall _UInt128.Words.index(before:)(Swift::Int before)
{
  v1 = __OFSUB__(before, 1);
  result = before - 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

unint64_t _UInt128.Words.subscript.getter(unint64_t result)
{
  if (result > 1)
  {
    __break(1u);
  }

  else
  {
    v2 = v1 + 8;
    if (!result)
    {
      v2 = v1;
    }

    return *v2;
  }

  return result;
}

uint64_t *protocol witness for Collection.subscript.getter in conformance _UInt128.Words@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  if (*result < 0 || (v4 = result[1], v4 > 2))
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = *v2;
    *a2 = v3;
    *(a2 + 8) = v4;
  }

  return result;
}

void *protocol witness for Sequence._copyToContiguousArray() in conformance _UInt128.Words()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSu_Tt1g5(2, 0);
  result = sub_270B60600(v5, v3 + 4, 2, v2, v1);
  if (result == 2)
  {
    return v3;
  }

  __break(1u);
  return result;
}

__n128 _UInt128.words.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t _UInt128.multipliedReportingOverflow(by:)(void *a1, unint64_t a2)
{
  v3 = v2[1];
  v4 = !is_mul_ok(v3, a2);
  v5 = v3 * a2;
  v6 = (*v2 * a2) >> 64;
  v7 = __CFADD__(v5, v6);
  v8 = v5 + v6;
  v9 = v7;
  *a1 = *v2 * a2;
  a1[1] = v8;
  return (v4 | v9) & 1;
}

unint64_t _UInt128.multiplied(by:)@<X0>(unint64_t result@<X0>, void *a2@<X8>)
{
  v3 = v2[1];
  v4 = !is_mul_ok(v3, result);
  v5 = v3 * result;
  v6 = (*v2 * result) >> 64;
  v7 = __CFADD__(v5, v6);
  v8 = v5 + v6;
  v9 = v7;
  if (v4 || (v9 & 1) != 0)
  {
    __break(1u);
  }

  else
  {
    *a2 = *v2 * result;
    a2[1] = v8;
  }

  return result;
}

uint64_t _UInt128.quotientAndRemainder(dividingBy:)(void *a1, unint64_t *a2, unint64_t *a3)
{
  result = specialized _wideDivide22<A>(_:by:)(&v11, &v10, &v9, v3[1], *v3, a3[1], *a3);
  v7 = v10;
  v8 = v9;
  *a1 = v11;
  a1[1] = result;
  *a2 = v8;
  a2[1] = v7;
  return result;
}

uint64_t specialized _wideDivide22<A>(_:by:)(void *a1, unint64_t *a2, unint64_t *a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  if (!(a6 | a7))
  {
    goto LABEL_63;
  }

  v7 = a7 < a5;
  if (a6 != a4)
  {
    v7 = a6 < a4;
  }

  if (!v7)
  {
    v12 = a4 < a6;
    v13 = 0;
    if (a6 == a4)
    {
      v12 = a5 < a7;
    }

    if (v12)
    {
      *a1 = 0;
      *a2 = a4;
      *a3 = a5;
    }

    else
    {
      *a1 = 1;
      *a2 = 0;
      *a3 = 0;
    }

    return v13;
  }

  if (!a4)
  {
    if (!a7)
    {
      __break(1u);
      goto LABEL_60;
    }

    v13 = 0;
    *a3 = a5 % a7;
    *a1 = a5 / a7;
    goto LABEL_56;
  }

  if (a6)
  {
    v8 = __clz(a6);
    if (!v8)
    {
      v10 = 0;
LABEL_26:
      if (v10 < a6)
      {
        v22 = a7;
        v23 = a5;
        v24 = a1;
        v25 = a3;
        v26 = a2;
        v27 = a4;
        v28 = a6;
        v29 = __udivti3();
        a6 = v28;
        a4 = v27;
        v11 = v29;
        a2 = v26;
        a3 = v25;
        a1 = v24;
        a5 = v23;
        a7 = v22;
LABEL_28:
        v30 = v11 * a7;
        v31 = ((v11 * a7) >> 64) + a6 * v11;
        v32 = v10 >= *(&v31 + 1);
        if (v10 != *(&v31 + 1))
        {
          goto LABEL_35;
        }

LABEL_32:
        v32 = a4 >= v31;
        if (a4 == v31)
        {
          if (a5 < v30)
          {
            goto LABEL_36;
          }

          a4 = v31;
LABEL_47:
          v13 = 0;
          v32 = a5 >= v30;
          v34 = a5 - v30;
          v35 = !v32;
          v36 = a4 - v31 - v35;
          *a1 = v11;
          v37 = (v36 << -v8) | (v34 >> v8);
          if (v8)
          {
            v38 = v36 >> v8;
          }

          else
          {
            v37 = v34;
            v38 = a4 - v31 - v35;
          }

          *a3 = v37;
          *a2 = v38;
          return v13;
        }

        while (1)
        {
          while (1)
          {
LABEL_35:
            if (v32)
            {
              goto LABEL_47;
            }

LABEL_36:
            v33 = __CFADD__(a5, a7);
            v32 = __CFADD__(a4, a6);
            a4 += a6;
            if (!v32)
            {
              break;
            }

            if (v33)
            {
              goto LABEL_44;
            }

LABEL_45:
            ++v10;
            --v11;
            a5 += a7;
            v32 = v10 >= *(&v31 + 1);
            if (v10 == *(&v31 + 1))
            {
              goto LABEL_32;
            }
          }

          if (a4 == -1)
          {
            if (!v33)
            {
              a4 = -1;
              goto LABEL_31;
            }

LABEL_44:
            ++a4;
            goto LABEL_45;
          }

          a4 += v33;
LABEL_31:
          a5 += a7;
          --v11;
          v32 = v10 >= *(&v31 + 1);
          if (v10 == *(&v31 + 1))
          {
            goto LABEL_32;
          }
        }
      }

      goto LABEL_61;
    }

    a6 = (a7 >> -v8) | (a6 << v8);
    a7 <<= v8;
    v9 = (a5 >> (0x80 - v8)) | (a4 << v8);
    if (((0x80 - v8) & 0x7F) == 0)
    {
      v9 = a5;
    }

    if (((0x80 - v8) & 0x7Fu) <= 0x3FuLL)
    {
      v10 = v9;
    }

    else
    {
      v10 = a4 >> (0x80 - v8);
    }

    a4 = (a5 >> (-v8 & 0x3F)) | (a4 << v8);
    a5 <<= v8;
    if (v10 == a6)
    {
      v11 = -1;
      v10 = a6;
      goto LABEL_28;
    }

    if (a6)
    {
      goto LABEL_26;
    }

LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (a7)
  {
    v13 = a4 / a7;
    if (a4 % a7)
    {
      v14 = a1;
      v15 = a2;
      v16 = a3;
      v17 = a5;
      v18 = a7;
      v19 = __udivti3();
      a3 = v16;
      a2 = v15;
      v20 = v19;
      a1 = v14;
      v21 = v17 - v20 * v18;
    }

    else
    {
      v20 = a5 / a7;
      v21 = a5 % a7;
    }

    *a1 = v20;
    *a3 = v21;
LABEL_56:
    *a2 = 0;
    return v13;
  }

LABEL_62:
  __break(1u);
LABEL_63:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

BOOL _UInt128.dividedReportingOverflow(by:)(unint64_t *a1, unint64_t *a2)
{
  v4 = a2[1];
  v6 = *v2;
  v5 = v2[1];
  v7 = v4 | *a2;
  v8 = v7 == 0;
  if (v7)
  {
    v5 = specialized _wideDivide22<A>(_:by:)(&v12, &v11, &v10, v5, v6, v4, *a2);
    v6 = v12;
  }

  *a1 = v6;
  a1[1] = v5;
  return v8;
}

BOOL _UInt128.remainderReportingOverflow(dividingBy:)(unint64_t *a1, unint64_t *a2)
{
  v4 = a2[1];
  v6 = *v2;
  v5 = v2[1];
  v7 = v4 | *a2;
  v8 = v7 == 0;
  if (v7)
  {
    specialized _wideDivide22<A>(_:by:)(&v12, &v11, &v10, v5, v6, v4, *a2);
    v6 = v10;
    v5 = v11;
  }

  *a1 = v6;
  a1[1] = v5;
  return v8;
}

_OWORD *_UInt128.multipliedFullWidth(by:)(_OWORD *result, void *a2, unint64_t *a3)
{
  v4 = *a3;
  v5 = a3[1];
  v6 = *v3;
  v7 = v3[1];
  v8 = (v7 * *a3) >> 64;
  v9 = *v3 * v5;
  v10 = (*v3 * *a3) >> 64;
  v11 = __CFADD__((*v3 * *a3) >> 64, v7 * *a3);
  v12 = __CFADD__(v10, v9);
  v13 = v10 + v9;
  v14 = (v7 * v5) >> 64;
  v15 = v7 * v5;
  v16 = (v6 * v5) >> 64;
  v18 = v12;
  v12 = __CFADD__(v12, v15);
  v17 = v18 + v15;
  v12 |= __CFADD__(v11, v17);
  v17 += v11;
  v19 = v12;
  v12 = __CFADD__(v8, v16);
  v20 = v8 + v16;
  if (v12)
  {
    v21 = v14 + 1;
  }

  else
  {
    v21 = v14;
  }

  *result = __PAIR128__(v21, v20) + __PAIR128__(v19, v17);
  *a2 = v6 * v4;
  a2[1] = v13;
  return result;
}

uint64_t _UInt128.dividingFullWidth(_:)(void *a1, unint64_t *a2, unint64_t *a3, unint64_t *a4)
{
  result = specialized _wideDivide42<A>(_:by:)(&v12, &v11, &v10, a3[1], *a3, a4[1], *a4, v4[1], *v4);
  v8 = v11;
  v9 = v10;
  *a1 = v12;
  a1[1] = result;
  *a2 = v9;
  a2[1] = v8;
  return result;
}

uint64_t specialized _wideDivide42<A>(_:by:)(uint64_t *a1, unint64_t *a2, unint64_t *a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7, unint64_t a8, unint64_t a9)
{
  v9 = a9;
  if (!(a8 | a9))
  {
    goto LABEL_126;
  }

  v10 = a9 >= a5;
  if (a8 != a4)
  {
    v10 = a8 >= a4;
  }

  if (!v10)
  {
    goto LABEL_126;
  }

  v11 = a7;
  v12 = a1;
  if (!(a4 | a5))
  {

    return specialized _wideDivide22<A>(_:by:)(a1, a2, a3, a6, a7, a8, a9);
  }

  if (!a8)
  {
    if (!a9)
    {
      __break(1u);
      goto LABEL_118;
    }

    v20 = a2;
    if (a4 % a9)
    {
      v21 = a3;
      v22 = a6;
      v23 = __umodti3();
      a3 = v21;
      a6 = v22;
      v24 = v23;
      if (v23)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v24 = a5 % a9;
      if (a5 % a9)
      {
LABEL_22:
        if (v24 >= a9)
        {
LABEL_122:
          __break(1u);
          goto LABEL_123;
        }

        v25 = a3;
        v26 = a6;
        result = __udivti3();
        v27 = v26 - result * a9;
        a3 = v25;
        if (v27)
        {
          goto LABEL_24;
        }

        goto LABEL_58;
      }
    }

    result = a6 / a9;
    v27 = a6 % a9;
    if (a6 % a9)
    {
LABEL_24:
      if (v27 >= a9)
      {
LABEL_123:
        __break(1u);
LABEL_124:
        __break(1u);
        goto LABEL_125;
      }

      v28 = a3;
      v29 = result;
      v30 = __udivti3();
      v31 = v11 - v30 * a9;
      result = v29;
      a3 = v28;
LABEL_59:
      *v12 = v30;
      *a3 = v31;
      *v20 = 0;
      return result;
    }

LABEL_58:
    v30 = v11 / a9;
    v31 = v11 % a9;
    goto LABEL_59;
  }

  v14 = __clz(a8);
  if (!v14)
  {
    v19 = a7 | a5;
    v18 = a6 | a4;
    if (!(a6 | a4))
    {
      goto LABEL_27;
    }

LABEL_32:
    if (v18 == a8)
    {
      result = -1;
      goto LABEL_37;
    }

    if (a8)
    {
      if (v18 >= a8)
      {
LABEL_120:
        __break(1u);
LABEL_121:
        __break(1u);
        goto LABEL_122;
      }

      v34 = v14;
      v35 = a2;
      v36 = a3;
      v37 = a6;
      v38 = a8;
      result = __udivti3();
      a8 = v38;
      a6 = v37;
      a2 = v35;
      a3 = v36;
      v14 = v34;
      v12 = a1;
LABEL_37:
      v39 = result * v9;
      v41 = (((result * v9) >> 64) + a8 * result) >> 64;
      v40 = (__PAIR128__(a8, v9) * result) >> 64;
      v42 = v18 >= v41;
      if (v18 != v41)
      {
        goto LABEL_44;
      }

LABEL_41:
      v42 = v19 >= v40;
      if (v19 == v40)
      {
        if (a6 < v39)
        {
          goto LABEL_45;
        }

        v19 = v40;
LABEL_60:
        v46 = __PAIR128__(v19, a6) - __PAIR128__(v40, v39);
        v44 = (__PAIR128__(v19, a6) - __PAIR128__(v40, v39)) >> 64;
        v45 = v46;
        if (v44 == a8)
        {
          v33 = -1;
          goto LABEL_65;
        }

        v73 = v14;
        if (a8)
        {
          if (v44 < a8)
          {
            v47 = v12;
            v48 = a3;
            v49 = a2;
            v50 = result;
            v51 = a8;
            v52 = __udivti3();
            a8 = v51;
            v33 = v52;
            result = v50;
            a2 = v49;
            a3 = v48;
            v12 = v47;
            v14 = v73;
LABEL_65:
            v53 = v33 * v9;
            v54 = ((v33 * v9) >> 64) + a8 * v33;
            v55 = v44 >= *(&v54 + 1);
            if (v44 != *(&v54 + 1))
            {
              goto LABEL_72;
            }

LABEL_69:
            v55 = v45 >= v54;
            if (v45 == v54)
            {
              if (v11 < v53)
              {
                goto LABEL_73;
              }

              v45 = v54;
LABEL_84:
              v42 = v11 >= v53;
              v57 = v11 - v53;
              v58 = !v42;
              v59 = v45 - v54;
              goto LABEL_88;
            }

            while (1)
            {
              while (1)
              {
LABEL_72:
                if (v55)
                {
                  goto LABEL_84;
                }

LABEL_73:
                v56 = __CFADD__(v11, v9);
                v42 = __CFADD__(v45, a8);
                v45 += a8;
                if (!v42)
                {
                  break;
                }

                if (v56)
                {
                  goto LABEL_81;
                }

LABEL_82:
                ++v44;
                --v33;
                v11 += v9;
                v55 = v44 >= *(&v54 + 1);
                if (v44 == *(&v54 + 1))
                {
                  goto LABEL_69;
                }
              }

              if (v45 == -1)
              {
                if (!v56)
                {
                  v45 = -1;
                  goto LABEL_68;
                }

LABEL_81:
                ++v45;
                goto LABEL_82;
              }

              v45 += v56;
LABEL_68:
              v11 += v9;
              --v33;
              v55 = v44 >= *(&v54 + 1);
              if (v44 == *(&v54 + 1))
              {
                goto LABEL_69;
              }
            }
          }

          goto LABEL_121;
        }

        goto LABEL_119;
      }

      while (1)
      {
        while (1)
        {
LABEL_44:
          if (v42)
          {
            goto LABEL_60;
          }

LABEL_45:
          v43 = __CFADD__(a6, v9);
          v42 = __CFADD__(v19, a8);
          v19 += a8;
          if (!v42)
          {
            break;
          }

          if (v43)
          {
            goto LABEL_53;
          }

LABEL_54:
          ++v18;
          --result;
          a6 += v9;
          v42 = v18 >= v41;
          if (v18 == v41)
          {
            goto LABEL_41;
          }
        }

        if (v19 == -1)
        {
          if (!v43)
          {
            v19 = -1;
            goto LABEL_40;
          }

LABEL_53:
          ++v19;
          goto LABEL_54;
        }

        v19 += v43;
LABEL_40:
        a6 += v9;
        --result;
        v42 = v18 >= v41;
        if (v18 == v41)
        {
          goto LABEL_41;
        }
      }
    }

LABEL_118:
    __break(1u);
LABEL_119:
    __break(1u);
    goto LABEL_120;
  }

  a8 = (a9 >> -v14) | (a8 << v14);
  v9 = a9 << v14;
  v15 = (a5 >> -v14) | (a4 << v14);
  v16 = v15 | a6;
  v17 = (a7 >> (0x80 - v14)) | (a6 << v14);
  if (((0x80 - v14) & 0x7F) != 0)
  {
    v16 = v15 | (a6 >> (0x80 - v14));
  }

  else
  {
    v17 = a7;
  }

  if (((0x80 - v14) & 0x7Fu) <= 0x3FuLL)
  {
    v18 = v16;
  }

  else
  {
    v17 = a6 >> (0x80 - v14);
    v18 = (a5 >> -v14) | (a4 << v14);
  }

  v19 = v17 | (a5 << v14);
  a6 = (a7 >> (-v14 & 0x3F)) | (a6 << v14);
  v11 = a7 << v14;
  if (v18)
  {
    goto LABEL_32;
  }

LABEL_27:
  v32 = a6 < v9;
  if (v19 != a8)
  {
    v32 = v19 < a8;
  }

  if (!v32)
  {
    goto LABEL_32;
  }

  if (v19 == a8)
  {
    v33 = -1;
    goto LABEL_95;
  }

  if (!a8)
  {
    goto LABEL_124;
  }

  if (v19 >= a8)
  {
LABEL_125:
    __break(1u);
LABEL_126:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v63 = a3;
  v64 = a2;
  v65 = a8;
  v66 = a6;
  v67 = __udivti3();
  a6 = v66;
  a8 = v65;
  v33 = v67;
  a2 = v64;
  a3 = v63;
LABEL_95:
  v68 = v33 * v9;
  v69 = ((v33 * v9) >> 64) + a8 * v33;
  v70 = v19 >= *(&v69 + 1);
  if (v19 != *(&v69 + 1))
  {
    goto LABEL_102;
  }

LABEL_99:
  v70 = a6 >= v69;
  if (a6 != v69)
  {
    while (1)
    {
      while (1)
      {
LABEL_102:
        if (v70)
        {
          goto LABEL_114;
        }

LABEL_103:
        v71 = __CFADD__(v11, v9);
        v42 = __CFADD__(a6, a8);
        a6 += a8;
        if (!v42)
        {
          break;
        }

        if (v71)
        {
          goto LABEL_111;
        }

LABEL_112:
        ++v19;
        --v33;
        v11 += v9;
        v70 = v19 >= *(&v69 + 1);
        if (v19 == *(&v69 + 1))
        {
          goto LABEL_99;
        }
      }

      if (a6 == -1)
      {
        if (!v71)
        {
          a6 = -1;
          goto LABEL_98;
        }

LABEL_111:
        ++a6;
        goto LABEL_112;
      }

      a6 += v71;
LABEL_98:
      v11 += v9;
      --v33;
      v70 = v19 >= *(&v69 + 1);
      if (v19 == *(&v69 + 1))
      {
        goto LABEL_99;
      }
    }
  }

  if (v11 < v68)
  {
    goto LABEL_103;
  }

  a6 = v69;
LABEL_114:
  result = 0;
  v42 = v11 >= v68;
  v57 = v11 - v68;
  v59 = a6 - v69;
  v58 = !v42;
LABEL_88:
  v60 = v59 - v58;
  *v12 = v33;
  v61 = (v60 << -v14) | (v57 >> v14);
  if (v14)
  {
    v62 = v60 >> v14;
  }

  else
  {
    v61 = v57;
    v62 = v60;
  }

  *a3 = v61;
  *a2 = v62;
  return result;
}

int8x16_t static _UInt128.&= infix(_:_:)(int8x16_t *a1, int8x16_t *a2)
{
  result = vandq_s8(*a1, *a2);
  *a1 = result;
  return result;
}

int8x16_t static _UInt128.|= infix(_:_:)(int8x16_t *a1, int8x16_t *a2)
{
  result = vorrq_s8(*a1, *a2);
  *a1 = result;
  return result;
}

int8x16_t static _UInt128.^= infix(_:_:)(int8x16_t *a1, int8x16_t *a2)
{
  result = veorq_s8(*a1, *a2);
  *a1 = result;
  return result;
}

uint64_t *static _UInt128.<<= infix(_:_:)(uint64_t *result, unint64_t *a2)
{
  if (a2[1] || (v2 = *a2, *a2 >= 0x80))
  {
    *result = 0;
    result[1] = 0;
  }

  else
  {
    v3 = *result;
    v4 = result[1];
    if (v2)
    {
      v4 = (v4 << v2) | (*result >> -v2);
      v3 = *result << v2;
    }

    v5 = v2 > 0x3F;
    if (v2 <= 0x3F)
    {
      v6 = v4;
    }

    else
    {
      v6 = *result << v2;
    }

    if (v5)
    {
      v3 = 0;
    }

    *result = v3;
    result[1] = v6;
  }

  return result;
}

uint64_t *static _UInt128.>>= infix(_:_:)(uint64_t *result, unint64_t *a2)
{
  if (a2[1] || (v2 = *a2, *a2 >= 0x80))
  {
    *result = 0;
    result[1] = 0;
  }

  else
  {
    v3 = *result;
    v4 = result[1];
    v5 = v4 >> v2;
    v6 = (v4 << -v2) | (*result >> v2);
    if (v2)
    {
      v4 >>= v2;
      v3 = v6;
    }

    v7 = v2 >= 0x3F;
    v8 = v2 == 63;
    if (v2 <= 0x3F)
    {
      v9 = v4;
    }

    else
    {
      v9 = 0;
    }

    if (!v8 && v7)
    {
      v3 = v5;
    }

    *result = v3;
    result[1] = v9;
  }

  return result;
}

uint64_t *static _UInt128.&<< infix(_:_:)@<X0>(uint64_t *result@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v3 = *result;
  v4 = result[1];
  v5 = *a2 & 0x7FLL;
  if (v5)
  {
    v4 = (v4 << *a2) | (*result >> -*a2);
    v3 = *result << *a2;
  }

  if (v5 > 0x3F)
  {
    v4 = *result << *a2;
    v3 = 0;
  }

  *a3 = v3;
  a3[1] = v4;
  return result;
}

uint64_t *static _UInt128.&>> infix(_:_:)@<X0>(uint64_t *result@<X0>, void *a2@<X1>, unint64_t *a3@<X8>)
{
  v3 = *result;
  v4 = result[1];
  v5 = *a2 & 0x7FLL;
  v6 = v4 >> *a2;
  v7 = (*result >> *a2) | (v4 << -*a2);
  if (v5)
  {
    v4 >>= *a2;
    v3 = v7;
  }

  if (v5 > 0x3F)
  {
    v4 = 0;
    v3 = v6;
  }

  *a3 = v3;
  a3[1] = v4;
  return result;
}

unint64_t *static _UInt128./ infix(_:_:)@<X0>(unint64_t *result@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  if (*a2 == 0)
  {
    __break(1u);
  }

  else
  {
    result = specialized _wideDivide22<A>(_:by:)(&v6, &v5, &v4, result[1], *result, a2[1], *a2);
    *a3 = v6;
    a3[1] = result;
  }

  return result;
}

unint64_t *static _UInt128./= infix(_:_:)(unint64_t *result, unint64_t *a2)
{
  if (*a2 == 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    result = specialized _wideDivide22<A>(_:by:)(&v5, &v4, &v3, result[1], *result, a2[1], *a2);
    *v2 = v5;
    v2[1] = result;
  }

  return result;
}

unint64_t *static _UInt128.% infix(_:_:)@<X0>(unint64_t *result@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  if (*a2 == 0)
  {
    __break(1u);
  }

  else
  {
    result = specialized _wideDivide22<A>(_:by:)(&v7, &v6, &v5, result[1], *result, a2[1], *a2);
    v4 = v6;
    *a3 = v5;
    a3[1] = v4;
  }

  return result;
}

uint64_t _UInt128.init(_truncatingBits:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = result;
  a2[1] = 0;
  return result;
}

unint64_t _UInt128.leadingZeroBitCount.getter()
{
  v1 = v0[1];
  if (v1)
  {
    return __clz(v1);
  }

  else
  {
    return __clz(*v0) + 64;
  }
}

unint64_t _UInt128.trailingZeroBitCount.getter()
{
  if (*v0)
  {
    return __clz(__rbit64(*v0));
  }

  else
  {
    return __clz(__rbit64(v0[1])) + 64;
  }
}

int8x16_t _UInt128.byteSwapped.getter@<Q0>(int8x16_t *a1@<X8>)
{
  v2 = vrev64q_s8(*v1);
  result = vextq_s8(v2, v2, 8uLL);
  *a1 = result;
  return result;
}

uint64_t protocol witness for static FixedWidthInteger.&* infix(_:_:) in conformance _UInt128@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, unint64_t *a3@<X8>)
{
  v4 = *a2;
  v5 = *a1;
  return _UInt128.multipliedReportingOverflow(by:)(a3, &v5);
}

uint64_t protocol witness for BinaryInteger.init<A>(exactly:) in conformance _UInt128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();

  return MEMORY[0x2821FD5C0](a1, a4, a2, v8, a3);
}

uint64_t protocol witness for BinaryInteger.init<A>(_:) in conformance _UInt128@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
  static FixedWidthInteger._convert<A>(from:)();
  if (v10)
  {
    _StringGuts.grow(_:)(80);
    v7 = _typeName(_:qualified:)();
    MEMORY[0x2743B25F0](v7);

    MEMORY[0x2743B25F0](0xD00000000000001ELL, 0x8000000270C52110);
    v8 = _typeName(_:qualified:)();
    MEMORY[0x2743B25F0](v8);

    MEMORY[0x2743B25F0](0xD00000000000002ELL, 0x8000000270C52130);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    result = (*(*(a2 - 8) + 8))(a1, a2);
    *a3 = v9;
  }

  return result;
}

uint64_t protocol witness for BinaryInteger.init<A>(clamping:) in conformance _UInt128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();

  return MEMORY[0x2821FD5D0](a1, a4, a2, v8, a3);
}

unint64_t protocol witness for BinaryInteger._binaryLogarithm() in conformance _UInt128()
{
  v1 = v0[1];
  if (v1)
  {
    return __clz(v1) ^ 0x7F;
  }

  if (*v0)
  {
    return (__clz(*v0) | 0x40) ^ 0x7F;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for static AdditiveArithmetic.+ infix(_:_:) in conformance _UInt128@<X0>(__int128 *a1@<X0>, _OWORD *a2@<X1>, uint64_t (*a3)(__int128 *, _OWORD *)@<X4>, _OWORD *a4@<X8>)
{
  v5 = *a1;
  v7[0] = *a2;
  v7[1] = v5;
  result = a3(&v8, v7);
  if (result)
  {
    __break(1u);
  }

  else
  {
    *a4 = v8;
  }

  return result;
}

uint64_t protocol witness for static AdditiveArithmetic.+= infix(_:_:) in conformance _UInt128(__int128 *a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(__int128 *, _OWORD *))
{
  v6 = *a1;
  v8[0] = *a2;
  v8[1] = v6;
  result = a5(&v9, v8);
  if (result)
  {
    __break(1u);
  }

  else
  {
    *a1 = v9;
  }

  return result;
}

unint64_t protocol witness for static BinaryInteger.~ prefix(_:) in conformance _UInt128@<X0>(__int128 *a1@<X0>, unint64_t *a2@<X8>)
{
  v6 = *a1;
  _UInt128.subtractingReportingOverflow(_:)(&v5, &v6);
  v4 = xmmword_270C44F50;
  return _UInt128.subtractingReportingOverflow(_:)(a2, &v4);
}

double protocol witness for static BinaryInteger.>> infix<A>(_:_:) in conformance _UInt128@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(__int128 *__return_ptr, void *, __int128 *)@<X6>, void (*a6)(__int128 *__return_ptr, void *, __int128 *)@<X7>, _OWORD *a7@<X8>)
{
  v54 = a6;
  v55 = a7;
  v51 = a5;
  v11 = *(*(a4 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(*(AssociatedTypeWitness - 8) + 64);
  v15 = MEMORY[0x28223BE20](AssociatedTypeWitness, v14);
  v56 = *(a3 - 8);
  v16 = *(v56 + 64);
  v18 = MEMORY[0x28223BE20](v15, v17);
  v20 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v51 - v22;
  v24 = *a1;
  v52 = a1[1];
  v53 = v24;
  if (dispatch thunk of static BinaryInteger.isSigned.getter())
  {
    if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
    {
      if (dispatch thunk of BinaryInteger._lowWord.getter() <= -129)
      {
        goto LABEL_19;
      }

      goto LABEL_13;
    }

LABEL_7:
    *&v60 = -128;
    lazy protocol witness table accessor for type Int and conformance Int();
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v27 = *(*(a4 + 32) + 8);
    v28 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v56 + 8))(v23, a3);
    if (v28)
    {
      goto LABEL_19;
    }

    goto LABEL_13;
  }

  v25 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v26 = dispatch thunk of BinaryInteger.bitWidth.getter();
  if (v25)
  {
    if (v26 > 64)
    {
      goto LABEL_7;
    }

    swift_getAssociatedConformanceWitness();
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    v29 = *(*(a4 + 32) + 8);
    v30 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v56 + 8))(v23, a3);
    if (v30)
    {
      goto LABEL_19;
    }
  }

  else if (v26 >= 64)
  {
    goto LABEL_13;
  }

  if (dispatch thunk of BinaryInteger._lowWord.getter() < -128)
  {
    goto LABEL_19;
  }

LABEL_13:
  v31 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v32 = dispatch thunk of BinaryInteger.bitWidth.getter();
  if (v31)
  {
    if (v32 > 64)
    {
      goto LABEL_15;
    }
  }

  else if (v32 >= 64)
  {
LABEL_15:
    *&v60 = 128;
    lazy protocol witness table accessor for type Int and conformance Int();
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v33 = *(*(a4 + 32) + 8);
    v34 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v56 + 8))(v23, a3);
    if (v34)
    {
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  if (dispatch thunk of BinaryInteger._lowWord.getter() > 128)
  {
    goto LABEL_19;
  }

LABEL_20:
  (*(v56 + 16))(v20, a2, a3);
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0 || dispatch thunk of BinaryInteger.bitWidth.getter() < 65)
  {
    goto LABEL_34;
  }

  if (dispatch thunk of static BinaryInteger.isSigned.getter())
  {
    if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
    {
      goto LABEL_33;
    }

    *&v60 = 0x8000000000000000;
    lazy protocol witness table accessor for type Int and conformance Int();
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v35 = *(*(a4 + 32) + 8);
    v36 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v56 + 8))(v23, a3);
    if ((v36 & 1) == 0)
    {
      goto LABEL_34;
    }

    __break(1u);
  }

  v37 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v38 = dispatch thunk of BinaryInteger.bitWidth.getter();
  v40 = __OFSUB__(v38, 64);
  v39 = v38 - 64 < 0;
  if ((v37 & 1) == 0)
  {
    goto LABEL_30;
  }

  if (v38 > 64)
  {
    *&v60 = 0x8000000000000000;
    lazy protocol witness table accessor for type Int and conformance Int();
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v41 = *(*(a4 + 32) + 8);
    v42 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v56 + 8))(v23, a3);
    if (v42)
    {
      __break(1u);
LABEL_30:
      if (v39 == v40)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }

LABEL_34:
    if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
    {
      goto LABEL_39;
    }

    while (1)
    {
      v45 = dispatch thunk of static BinaryInteger.isSigned.getter();
      v46 = dispatch thunk of BinaryInteger.bitWidth.getter();
      if ((v45 & 1) == 0)
      {
        break;
      }

      if (v46 <= 64)
      {
        goto LABEL_44;
      }

      *&v60 = 0x7FFFFFFFFFFFFFFFLL;
      lazy protocol witness table accessor for type Int and conformance Int();
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v47 = *(*(a4 + 32) + 8);
      v48 = dispatch thunk of static Comparable.< infix(_:_:)();
      (*(v56 + 8))(v23, a3);
      if (v48)
      {
        __break(1u);
LABEL_39:
        if (dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
        {
          continue;
        }
      }

      goto LABEL_46;
    }

    if (v46 < 64)
    {
LABEL_44:
      dispatch thunk of BinaryInteger._lowWord.getter();
      goto LABEL_46;
    }

    *&v60 = 0x7FFFFFFFFFFFFFFFLL;
    lazy protocol witness table accessor for type Int and conformance Int();
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v49 = *(*(a4 + 32) + 8);
    v44 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v56 + 8))(v23, a3);
    if (v44)
    {
      __break(1u);
      goto LABEL_51;
    }

LABEL_46:
    v44 = dispatch thunk of BinaryInteger._lowWord.getter();
    (*(v56 + 8))(v20, a3);
    v59[0] = v53;
    v59[1] = v52;
    if ((v44 & 0x8000000000000000) != 0)
    {
      goto LABEL_52;
    }

    if (v44 < 0x80)
    {
      _ss17FixedWidthIntegerPsE15_truncatingInityxqd__SzRd__lFZ4VDAF8_UInt128V_SiTt1g5(v44, &v57);
      v58 = v57;
      v54(&v60, v59, &v58);
      goto LABEL_49;
    }

    goto LABEL_19;
  }

  swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  v43 = *(*(a4 + 32) + 8);
  v44 = dispatch thunk of static Comparable.< infix(_:_:)();
  (*(v56 + 8))(v23, a3);
  if ((v44 & 1) == 0)
  {
LABEL_33:
    dispatch thunk of BinaryInteger._lowWord.getter();
    goto LABEL_34;
  }

LABEL_51:
  __break(1u);
LABEL_52:
  if (v44 > 0xFFFFFFFFFFFFFF80)
  {
    _ss17FixedWidthIntegerPsE15_truncatingInityxqd__SzRd__lFZ4VDAF8_UInt128V_SiTt1g5(-v44, &v57);
    v58 = v57;
    v51(&v60, v59, &v58);
    goto LABEL_49;
  }

LABEL_19:
  v60 = 0uLL;
LABEL_49:
  result = *&v60;
  *v55 = v60;
  return result;
}

uint64_t protocol witness for static BinaryInteger.>>= infix<A>(_:_:) in conformance _UInt128(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *(*a7)(unint64_t *__return_ptr, __int128 *, __int128 *), void *(*a8)(unint64_t *__return_ptr, __int128 *, __int128 *))
{
  v56 = a7;
  v57 = a8;
  v12 = *(*(a4 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(*(AssociatedTypeWitness - 8) + 64);
  v16 = MEMORY[0x28223BE20](AssociatedTypeWitness, v15);
  v59 = *(a3 - 8);
  v17 = *(v59 + 64);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v21 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v56 - v23;
  v25 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v58 = a1;
  if ((v25 & 1) == 0)
  {
    v27 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v28 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v27)
    {
      if (v28 > 64)
      {
LABEL_7:
        v63 = -128;
        lazy protocol witness table accessor for type Int and conformance Int();
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v29 = *(*(a4 + 32) + 8);
        v30 = dispatch thunk of static Comparable.< infix(_:_:)();
        result = (*(v59 + 8))(v24, a3);
        if (v30)
        {
          goto LABEL_25;
        }

        goto LABEL_13;
      }

      swift_getAssociatedConformanceWitness();
      dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
      v31 = *(*(a4 + 32) + 8);
      v32 = dispatch thunk of static Comparable.< infix(_:_:)();
      result = (*(v59 + 8))(v24, a3);
      if (v32)
      {
LABEL_25:
        v41 = v58;
        goto LABEL_26;
      }
    }

    else if (v28 >= 64)
    {
      goto LABEL_13;
    }

    result = dispatch thunk of BinaryInteger._lowWord.getter();
    if (result >= -128)
    {
      goto LABEL_13;
    }

    goto LABEL_25;
  }

  if (dispatch thunk of BinaryInteger.bitWidth.getter() >= 64)
  {
    goto LABEL_7;
  }

  result = dispatch thunk of BinaryInteger._lowWord.getter();
  if (result <= -129)
  {
    goto LABEL_25;
  }

LABEL_13:
  v33 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v34 = dispatch thunk of BinaryInteger.bitWidth.getter();
  v36 = __OFSUB__(v34, 64);
  v35 = v34 - 64 < 0;
  if ((v33 & 1) == 0)
  {
    goto LABEL_22;
  }

  if (v34 <= 64)
  {
    goto LABEL_24;
  }

LABEL_15:
  v63 = 128;
  lazy protocol witness table accessor for type Int and conformance Int();
  dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
  v37 = *(*(a4 + 32) + 8);
  v38 = dispatch thunk of static Comparable.< infix(_:_:)();
  result = (*(v59 + 8))(v24, a3);
  if (v38)
  {
    goto LABEL_25;
  }

  while (1)
  {
    (*(v59 + 16))(v21, a2, a3);
    if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0 || dispatch thunk of BinaryInteger.bitWidth.getter() < 65)
    {
      goto LABEL_35;
    }

    if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
    {
      break;
    }

    if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
    {
      goto LABEL_34;
    }

    v63 = 0x8000000000000000;
    lazy protocol witness table accessor for type Int and conformance Int();
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v39 = *(*(a4 + 32) + 8);
    v40 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v59 + 8))(v24, a3);
    if ((v40 & 1) == 0)
    {
      goto LABEL_35;
    }

    __break(1u);
LABEL_22:
    if (v35 == v36)
    {
      goto LABEL_15;
    }

LABEL_24:
    result = dispatch thunk of BinaryInteger._lowWord.getter();
    if (result > 128)
    {
      goto LABEL_25;
    }
  }

  v42 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v43 = dispatch thunk of BinaryInteger.bitWidth.getter();
  v45 = __OFSUB__(v43, 64);
  v44 = v43 - 64 < 0;
  if ((v42 & 1) == 0)
  {
LABEL_31:
    if (v44 == v45)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  if (v43 > 64)
  {
    v63 = 0x8000000000000000;
    lazy protocol witness table accessor for type Int and conformance Int();
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v46 = *(*(a4 + 32) + 8);
    v47 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v59 + 8))(v24, a3);
    if ((v47 & 1) == 0)
    {
LABEL_35:
      if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
      {
        goto LABEL_40;
      }

      while (1)
      {
        v49 = dispatch thunk of static BinaryInteger.isSigned.getter();
        v50 = dispatch thunk of BinaryInteger.bitWidth.getter();
        if ((v49 & 1) == 0)
        {
          break;
        }

        if (v50 <= 64)
        {
          goto LABEL_45;
        }

        v63 = 0x7FFFFFFFFFFFFFFFLL;
        lazy protocol witness table accessor for type Int and conformance Int();
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v51 = *(*(a4 + 32) + 8);
        v52 = dispatch thunk of static Comparable.< infix(_:_:)();
        (*(v59 + 8))(v24, a3);
        if (v52)
        {
          __break(1u);
LABEL_40:
          if (dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_47;
      }

      if (v50 < 64)
      {
LABEL_45:
        dispatch thunk of BinaryInteger._lowWord.getter();
        goto LABEL_47;
      }

      v63 = 0x7FFFFFFFFFFFFFFFLL;
      lazy protocol witness table accessor for type Int and conformance Int();
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v53 = *(*(a4 + 32) + 8);
      v41 = dispatch thunk of static Comparable.< infix(_:_:)();
      result = (*(v59 + 8))(v24, a3);
      if (v41)
      {
        __break(1u);
        goto LABEL_52;
      }

LABEL_47:
      v54 = dispatch thunk of BinaryInteger._lowWord.getter();
      (*(v59 + 8))(v21, a3);
      result = v54;
      v41 = v58;
      v62 = *v58;
      if (result < 0)
      {
        goto LABEL_53;
      }

      if (result < 0x80)
      {
        _ss17FixedWidthIntegerPsE15_truncatingInityxqd__SzRd__lFZ4VDAF8_UInt128V_SiTt1g5(result, &v60);
        v61 = v60;
        result = v57(&v63, &v62, &v61);
        goto LABEL_50;
      }

      goto LABEL_26;
    }

    __break(1u);
    goto LABEL_31;
  }

  swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  v48 = *(*(a4 + 32) + 8);
  v41 = dispatch thunk of static Comparable.< infix(_:_:)();
  result = (*(v59 + 8))(v24, a3);
  if ((v41 & 1) == 0)
  {
LABEL_34:
    dispatch thunk of BinaryInteger._lowWord.getter();
    goto LABEL_35;
  }

LABEL_52:
  __break(1u);
LABEL_53:
  if (result > 0xFFFFFFFFFFFFFF80)
  {
    _ss17FixedWidthIntegerPsE15_truncatingInityxqd__SzRd__lFZ4VDAF8_UInt128V_SiTt1g5(-result, &v60);
    v61 = v60;
    result = v56(&v63, &v62, &v61);
    goto LABEL_50;
  }

LABEL_26:
  v63 = 0;
  v64 = 0;
LABEL_50:
  v55 = v64;
  *v41 = v63;
  *(v41 + 8) = v55;
  return result;
}

BOOL specialized BinaryInteger.isMultiple(of:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = a3;
  if (a2 | a1)
  {
    specialized _wideDivide22<A>(_:by:)(&v8, &v7, &v6, a4, a3, a2, a1);
    v4 = v6;
    a4 = v7;
  }

  return (a4 | v4) == 0;
}

uint64_t specialized BinaryInteger.signum()@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = (a2 | result) != 0;
  a3[1] = 0;
  return result;
}

uint64_t protocol witness for LosslessStringConvertible.init(_:) in conformance _UInt128@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = HIBYTE(a2) & 0xF;
  v6 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {

    goto LABEL_30;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    specialized _parseInteger<A, B>(ascii:radix:)(result, a2, 10, &v17);

    if (v18)
    {
      goto LABEL_30;
    }

LABEL_33:
    *a3 = v17;
    *(a3 + 16) = 0;
    return result;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
    }

    v8 = *result;
    if (v8 == 43)
    {
      v9 = v6-- < 1;
      if (v9)
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      if (result)
      {
        ++result;
      }

      else
      {
        result = 0;
      }
    }

    else if (v8 == 45)
    {
      v9 = v6-- < 1;
      if (!v9)
      {
        if (result)
        {
          ++result;
        }

        else
        {
          result = 0;
        }

        goto LABEL_19;
      }

      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    goto LABEL_28;
  }

  v14[0] = result;
  v14[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result == 45)
    {
      if (v5)
      {
        v6 = v5 - 1;
        result = v14 + 1;
LABEL_19:
        v10 = 1;
        goto LABEL_29;
      }

      goto LABEL_36;
    }

    result = v14;
    v6 = v5;
LABEL_28:
    v10 = 0;
LABEL_29:
    specialized _parseIntegerDigits<A>(ascii:radix:isNegative:)(result, v6, 10, v10, v15);
    v11 = v16;
    v13 = v15[0];
    v12 = v15[1];

    *&v17 = v13;
    *(&v17 + 1) = v12;
    if (v11)
    {
LABEL_30:
      *a3 = 0;
      *(a3 + 8) = 0;
      *(a3 + 16) = 1;
      return result;
    }

    goto LABEL_33;
  }

  if (v5)
  {
    v6 = v5 - 1;
    result = v14 + 1;
    goto LABEL_28;
  }

LABEL_38:
  __break(1u);
  return result;
}

unint64_t *protocol witness for Strideable.distance(to:) in conformance _UInt128@<X0>(unint64_t *result@<X0>, unint64_t *a2@<X8>)
{
  v5 = *result;
  v4 = result[1];
  v7 = *v2;
  v6 = v2[1];
  v8 = *result < *v2;
  if (v4 != v6)
  {
    v8 = v4 < v6;
  }

  if (v8)
  {
    v9 = v7 - v5;
    v10 = v6 - v4;
    v11 = v6 < v4;
    if (v7 >= v5)
    {
      if (!v11)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (!v10)
      {
        v11 = 1;
      }

      if (!v11)
      {
        --v10;
LABEL_15:
        result = _ss17FixedWidthIntegerPsE15_truncatingInityxqd__SzRd__lFZ4VDAF8_UInt128V_SiTt1g5(0x7FFFFFFFFFFFFFFFLL, &v16);
        v13 = v16 < v9;
        if (*(&v16 + 1) != v10)
        {
          v13 = *(&v16 + 1) < v10;
        }

        if (v13)
        {
          goto LABEL_28;
        }

        v14 = __OFSUB__(0, v9);
        v12 = -v9;
        if (!v14)
        {
LABEL_25:
          *a2 = v12;
          return result;
        }

        __break(1u);
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_27;
  }

  v12 = v5 - v7;
  v10 = v4 - v6;
  v13 = v4 < v6;
  if (v5 < v7)
  {
    if (!v10)
    {
      v13 = 1;
    }

    if (!v13)
    {
      --v10;
      goto LABEL_22;
    }

    goto LABEL_27;
  }

LABEL_21:
  if (v13)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

LABEL_22:
  result = _ss17FixedWidthIntegerPsE15_truncatingInityxqd__SzRd__lFZ4VDAF8_UInt128V_SiTt1g5(0x7FFFFFFFFFFFFFFFLL, &v16);
  v15 = v16 < v12;
  if (*(&v16 + 1) != v10)
  {
    v15 = *(&v16 + 1) < v10;
  }

  if (!v15)
  {
    goto LABEL_25;
  }

LABEL_29:
  __break(1u);
  return result;
}

unint64_t *protocol witness for Strideable.advanced(by:) in conformance _UInt128@<X0>(unint64_t *result@<X0>, unint64_t *a2@<X8>)
{
  v3 = *result;
  v5 = *v2;
  v4 = v2[1];
  if ((*result & 0x8000000000000000) == 0)
  {
    v6 = __CFADD__(v5, v3);
    v3 += v5;
    v5 = v6;
    if (!v6 || v4 != -1)
    {
      goto LABEL_17;
    }

    __break(1u);
  }

  v8 = -v3;
  v6 = v5 >= v8;
  v3 = v5 - v8;
  v9 = !v6;
  if (v4 || (v9 & 1) == 0)
  {
    v5 = v9 << 63 >> 63;
LABEL_17:
    *a2 = v3;
    a2[1] = v4 + v5;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t *_sSxss17FixedWidthIntegerRzSURzrlE5_step5after4from2bySiSg5index_x5valuetAfG_xAHt_x6StrideSxQztFZ4VDAF8_UInt128V_Tt2t4B5(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6 < 0)
  {
    v9 = -a6;
    if (__OFSUB__(0, a6))
    {
      __break(1u);
    }

    else if ((v9 & 0x8000000000000000) == 0)
    {
      v10 = a4 >= v9;
      v6 = a4 + a6;
      v11 = !v10;
      v7 = v11 << 63 >> 63;
      v8 = (a5 == 0) & v11;
      goto LABEL_12;
    }

    __break(1u);
    return result;
  }

  v6 = a4 + a6;
  v7 = __CFADD__(a4, a6);
  v8 = (a5 == -1) & v7;
LABEL_12:
  v12 = v7 + a5;
  if (v8)
  {
    v13 = ~a6 >> 63;
  }

  else
  {
    v13 = v6;
  }

  if (v8)
  {
    v12 = ~a6 >> 63;
  }

  v14 = 0x8000000000000000;
  if (!v8)
  {
    v14 = 0;
  }

  *result = v13;
  result[1] = v12;
  return v14;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance _Int128()
{
  v2 = *v0;
  lazy protocol witness table accessor for type _Int128 and conformance _Int128();
  return String.init<A>(_:radix:uppercase:)();
}

BOOL static _Int128.< infix(_:_:)(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a2 == a4)
  {
    return a1 < a3;
  }

  else
  {
    return a2 < a4;
  }
}

BOOL protocol witness for static Comparable.< infix(_:_:) in conformance _Int128(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = v2 == v3;
  v5 = v2 < v3;
  if (v4)
  {
    return *a1 < *a2;
  }

  else
  {
    return v5;
  }
}

BOOL protocol witness for static Comparable.<= infix(_:_:) in conformance _Int128(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = v3 == v2;
  v5 = v3 >= v2;
  if (v4)
  {
    return *a2 >= *a1;
  }

  else
  {
    return v5;
  }
}

BOOL protocol witness for static Comparable.>= infix(_:_:) in conformance _Int128(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = v2 == v3;
  v5 = v2 >= v3;
  if (v4)
  {
    return *a1 >= *a2;
  }

  else
  {
    return v5;
  }
}

BOOL protocol witness for static Comparable.> infix(_:_:) in conformance _Int128(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = v3 == v2;
  v5 = v3 < v2;
  if (v4)
  {
    return *a2 < *a1;
  }

  else
  {
    return v5;
  }
}

Swift::Int _Int128.hashValue.getter(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  MEMORY[0x2743B31A0](a1);
  MEMORY[0x2743B31A0](a2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance _UInt128()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  MEMORY[0x2743B31A0](v1);
  MEMORY[0x2743B31A0](v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance _UInt128()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  MEMORY[0x2743B31A0](v1);
  MEMORY[0x2743B31A0](v2);
  return Hasher._finalize()();
}

uint64_t _Int128.components.setter(uint64_t result, uint64_t a2)
{
  *v2 = a2;
  v2[1] = result;
  return result;
}

int8x16_t (*_Int128.components.modify(int8x16_t *a1))(int8x16_t *a1)
{
  a1[1].i64[0] = v1;
  *a1 = vextq_s8(*v1, *v1, 8uLL);
  return _Int128.components.modify;
}

int8x16_t _Int128.components.modify(int8x16_t *a1)
{
  result = vextq_s8(*a1, *a1, 8uLL);
  *a1[1].i64[0] = result;
  return result;
}

unint64_t static _Int128.- infix(_:_:)(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = __OFSUB__(a2, a4);
  v5 = a2 - a4;
  v6 = v4;
  v7 = a1 >= a3;
  result = a1 - a3;
  if (v7)
  {
    if ((v6 & 1) == 0)
    {
      return result;
    }

    goto LABEL_10;
  }

  if (v5 == 0x8000000000000000)
  {
    v6 = 1;
  }

  if (v6)
  {
LABEL_10:
    __break(1u);
  }

  return result;
}

unint64_t *static _Int128.-= infix(_:_:)(unint64_t *result, unint64_t a2, uint64_t a3)
{
  v4 = *result;
  v3 = result[1];
  v5 = __OFSUB__(v3, a3);
  v6 = v3 - a3;
  v7 = v5;
  v8 = v4 >= a2;
  v9 = v4 - a2;
  if (v8)
  {
    if ((v7 & 1) == 0)
    {
      *result = v9;
      result[1] = v6;
      return result;
    }
  }

  else
  {
    if (v6 == 0x8000000000000000)
    {
      v7 = 1;
    }

    if ((v7 & 1) == 0)
    {
      *result = v9;
      result[1] = v6 - 1;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t static _Int128.+ infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = __CFADD__(a1, a3);
  result = a1 + a3;
  v6 = v4;
  if (__OFADD__(a2, a4) || v6 && a2 + a4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  return result;
}

void *static _Int128.+= infix(_:_:)(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result[1];
  v4 = __CFADD__(*result, a2);
  v5 = __OFADD__(v3, a3);
  v6 = v3 + a3;
  if (v5 || (v4 ? (v7 = v6 == 0x7FFFFFFFFFFFFFFFLL) : (v7 = 0), v7))
  {
    __break(1u);
  }

  else
  {
    *result += a2;
    result[1] = v6 + v4;
  }

  return result;
}

void *protocol witness for static AdditiveArithmetic.+ infix(_:_:) in conformance _Int128@<X0>(void *result@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = __CFADD__(*result, *a2);
  v6 = __OFADD__(v3, v4);
  v7 = v3 + v4;
  if (v6 || (v5 ? (v8 = v7 == 0x7FFFFFFFFFFFFFFFLL) : (v8 = 0), v8))
  {
    __break(1u);
  }

  else
  {
    *a3 = *result + *a2;
    a3[1] = v7 + v5;
  }

  return result;
}

void *protocol witness for static AdditiveArithmetic.+= infix(_:_:) in conformance _Int128(void *result, void *a2)
{
  v2 = a2[1];
  v3 = result[1];
  v4 = __CFADD__(*result, *a2);
  v5 = __OFADD__(v3, v2);
  v6 = v3 + v2;
  if (v5 || (v4 ? (v7 = v6 == 0x7FFFFFFFFFFFFFFFLL) : (v7 = 0), v7))
  {
    __break(1u);
  }

  else
  {
    *result += *a2;
    result[1] = v6 + v4;
  }

  return result;
}

unint64_t *protocol witness for static AdditiveArithmetic.- infix(_:_:) in conformance _Int128@<X0>(unint64_t *result@<X0>, unint64_t *a2@<X1>, unint64_t *a3@<X8>)
{
  v4 = *result;
  v3 = result[1];
  v6 = *a2;
  v5 = a2[1];
  v7 = __OFSUB__(v3, v5);
  v8 = v3 - v5;
  v9 = v7;
  v10 = v4 >= v6;
  v11 = v4 - v6;
  if (v10)
  {
    if ((v9 & 1) == 0)
    {
      *a3 = v11;
      a3[1] = v8;
      return result;
    }
  }

  else
  {
    if (v8 == 0x8000000000000000)
    {
      v9 = 1;
    }

    if ((v9 & 1) == 0)
    {
      *a3 = v11;
      a3[1] = v8 - 1;
      return result;
    }
  }

  __break(1u);
  return result;
}

unint64_t *protocol witness for static AdditiveArithmetic.-= infix(_:_:) in conformance _Int128(unint64_t *result, unint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  v5 = *result;
  v4 = result[1];
  v6 = __OFSUB__(v4, v2);
  v7 = v4 - v2;
  v8 = v6;
  v9 = v5 >= v3;
  v10 = v5 - v3;
  if (v9)
  {
    if ((v8 & 1) == 0)
    {
      *result = v10;
      result[1] = v7;
      return result;
    }
  }

  else
  {
    if (v7 == 0x8000000000000000)
    {
      v8 = 1;
    }

    if ((v8 & 1) == 0)
    {
      *result = v10;
      result[1] = v7 - 1;
      return result;
    }
  }

  __break(1u);
  return result;
}

unint64_t _Int128.magnitude.getter@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = -result;
  v5 = -__PAIR128__(v3, result) >> 64;
  if (a2 >= 0)
  {
    v4 = result;
    v5 = a2;
  }

  *a3 = v4;
  a3[1] = v5;
  return result;
}

void *_Int128.init(_:)(void *result)
{
  if ((result[1] & 0x8000000000000000) == 0)
  {
    return *result;
  }

  __break(1u);
  return result;
}

uint64_t _Int128.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = specialized _Int128.init<A>(_:)(a1, a2, a3);
  (*(*(a2 - 8) + 8))(a1, a2);
  return v5;
}

uint64_t _Int128.init<A>(exactly:)(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 24);
  v90 = *(v6 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(*(AssociatedTypeWitness - 8) + 64);
  v9 = MEMORY[0x28223BE20](AssociatedTypeWitness, v8);
  v88[1] = v88 - v10;
  v100 = *(a2 - 8);
  v11 = *(v100 + 64);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v92 = v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v91 = v88 - v17;
  v19 = MEMORY[0x28223BE20](v16, v18);
  v96 = v88 - v20;
  v22 = MEMORY[0x28223BE20](v19, v21);
  v97 = v88 - v23;
  MEMORY[0x28223BE20](v22, v24);
  v93 = v88 - v25;
  swift_getAssociatedTypeWitness();
  v26 = *(swift_getAssociatedConformanceWitness() + 16);
  v27 = swift_getAssociatedTypeWitness();
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27, v29);
  v30 = swift_checkMetadataState();
  v99 = *(v30 - 8);
  v31 = *(v99 + 64);
  v33 = MEMORY[0x28223BE20](v30, v32);
  v35 = v88 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33, v36);
  v38 = v88 - v37;
  v98 = a1;
  dispatch thunk of Numeric.magnitude.getter();
  v95 = a3;
  v101 = a2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  if (dispatch thunk of static BinaryInteger.isSigned.getter())
  {
    swift_getAssociatedConformanceWitness();
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    swift_getAssociatedConformanceWitness();
    v39 = dispatch thunk of static Comparable.< infix(_:_:)();
    v40 = *(v99 + 8);
    v40(v35, v30);
    if (v39)
    {
      goto LABEL_3;
    }
  }

  if (dispatch thunk of BinaryInteger.bitWidth.getter() >= 64)
  {
    v102 = -1;
    v57 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v58 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v57)
    {
      v88[0] = v38;
      if (v58 > 64)
      {
        lazy protocol witness table accessor for type UInt64 and conformance UInt64();
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        swift_getAssociatedConformanceWitness();
        v38 = v88[0];
        v59 = dispatch thunk of static Comparable.< infix(_:_:)();
        v40 = *(v99 + 8);
        v40(v35, v30);
        if (v59)
        {
          goto LABEL_4;
        }

        goto LABEL_21;
      }

      swift_getAssociatedConformanceWitness();
      dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
      swift_getAssociatedConformanceWitness();
      v38 = v88[0];
      v61 = dispatch thunk of static Comparable.> infix(_:_:)();
      (*(v99 + 8))(v35, v30);
      if ((v61 & 1) == 0)
      {
        goto LABEL_21;
      }

LABEL_20:
      dispatch thunk of BinaryInteger._lowWord.getter();
      goto LABEL_21;
    }

    if (v58 < 65)
    {
      goto LABEL_20;
    }

    lazy protocol witness table accessor for type UInt64 and conformance UInt64();
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    swift_getAssociatedConformanceWitness();
    v60 = dispatch thunk of static Comparable.< infix(_:_:)();
    v40 = *(v99 + 8);
    v40(v35, v30);
    if (v60)
    {
LABEL_3:
      v88[0] = v38;
LABEL_4:
      v40(v88[0], v30);
      v102 = -1;
      lazy protocol witness table accessor for type UInt64 and conformance UInt64();
      v41 = v97;
      v42 = v101;
      v43 = v95;
      dispatch thunk of BinaryInteger.init<A>(_:)();
      v44 = v93;
      dispatch thunk of static BinaryInteger.& infix(_:_:)();
      v45 = v100;
      v46 = *(v100 + 8);
      v46(v41, v42);
      v102 = 64;
      lazy protocol witness table accessor for type Int and conformance Int();
      dispatch thunk of static BinaryInteger.>> infix<A>(_:_:)();
      v47 = v91;
      v99 = *(v45 + 16);
      v100 = v45 + 16;
      (v99)(v91, v44, v42);
      if (dispatch thunk of static BinaryInteger.isSigned.getter())
      {
        swift_getAssociatedConformanceWitness();
        dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
        dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
        v48 = *(*(v43 + 32) + 8);
        v49 = dispatch thunk of static Comparable.>= infix(_:_:)();
        result = (v46)(v41, v42);
        if ((v49 & 1) == 0)
        {
          __break(1u);
          return result;
        }
      }

      v51 = dispatch thunk of BinaryInteger.bitWidth.getter();
      v52 = v92;
      if (v51 <= 63)
      {
        goto LABEL_29;
      }

      v102 = -1;
      v53 = dispatch thunk of static BinaryInteger.isSigned.getter();
      v54 = dispatch thunk of BinaryInteger.bitWidth.getter();
      if (v53)
      {
        if (v54 <= 64)
        {
          goto LABEL_27;
        }

        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v55 = *(*(v43 + 32) + 8);
        v56 = dispatch thunk of static Comparable.< infix(_:_:)();
        v46(v41, v42);
        v52 = v92;
        if ((v56 & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v52 = v92;
        if (v54 < 65)
        {
LABEL_28:
          dispatch thunk of BinaryInteger._lowWord.getter();
          goto LABEL_29;
        }

        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v70 = *(*(v43 + 32) + 8);
        v71 = dispatch thunk of static Comparable.< infix(_:_:)();
        v46(v41, v42);
        if ((v71 & 1) == 0)
        {
LABEL_29:
          v74 = dispatch thunk of BinaryInteger._lowWord.getter();
          v46(v47, v42);
          (v99)(v52, v96, v42);
          if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() >= 65)
          {
            v102 = 0x8000000000000000;
            if (dispatch thunk of static BinaryInteger.isSigned.getter())
            {
              if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
              {
LABEL_41:
                dispatch thunk of BinaryInteger._lowWord.getter();
                goto LABEL_42;
              }
            }

            else
            {
              v75 = dispatch thunk of static BinaryInteger.isSigned.getter();
              v76 = dispatch thunk of BinaryInteger.bitWidth.getter();
              if ((v75 & 1) == 0)
              {
                if (v76 >= 64)
                {
                  goto LABEL_42;
                }

                goto LABEL_41;
              }

              if (v76 <= 64)
              {
                swift_getAssociatedConformanceWitness();
                dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
                v80 = v97;
                dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
                v81 = *(*(v43 + 32) + 8);
                v82 = dispatch thunk of static Comparable.< infix(_:_:)();
                v46(v80, v42);
                if (v82)
                {
LABEL_46:
                  v46(v98, v42);
                  v46(v52, v42);
                  v46(v96, v42);
                  v46(v93, v42);
                  return 0;
                }

                goto LABEL_41;
              }
            }

            lazy protocol witness table accessor for type Int64 and conformance Int64();
            v77 = v97;
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v78 = *(*(v43 + 32) + 8);
            v79 = dispatch thunk of static Comparable.< infix(_:_:)();
            v46(v77, v42);
            if (v79)
            {
              goto LABEL_46;
            }
          }

LABEL_42:
          if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64 && (dispatch thunk of BinaryInteger.bitWidth.getter() != 64 || (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0))
          {
            goto LABEL_52;
          }

          v102 = 0x7FFFFFFFFFFFFFFFLL;
          v83 = dispatch thunk of static BinaryInteger.isSigned.getter();
          v84 = dispatch thunk of BinaryInteger.bitWidth.getter();
          if (v83)
          {
            if (v84 > 64)
            {
              goto LABEL_45;
            }
          }

          else if (v84 > 63)
          {
LABEL_45:
            lazy protocol witness table accessor for type Int64 and conformance Int64();
            v85 = v97;
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v86 = *(*(v43 + 32) + 8);
            v87 = dispatch thunk of static Comparable.< infix(_:_:)();
            v46(v85, v42);
            if (v87)
            {
              goto LABEL_46;
            }

LABEL_52:
            dispatch thunk of BinaryInteger._lowWord.getter();
            v46(v98, v42);
            v46(v52, v42);
            v46(v96, v42);
            v46(v93, v42);
            return v74;
          }

          dispatch thunk of BinaryInteger._lowWord.getter();
          goto LABEL_52;
        }
      }

      __break(1u);
LABEL_27:
      swift_getAssociatedConformanceWitness();
      dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
      v72 = *(*(v43 + 32) + 8);
      v73 = dispatch thunk of static Comparable.> infix(_:_:)();
      v46(v41, v42);
      v52 = v92;
      if (v73)
      {
        goto LABEL_28;
      }

      goto LABEL_29;
    }
  }

LABEL_21:
  v62 = dispatch thunk of BinaryInteger._lowWord.getter();
  (*(v99 + 8))(v38, v30);
  v63 = *(v6 + 8);
  v64 = v97;
  v65 = v101;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v66 = *(*(v95 + 32) + 8);
  v67 = v98;
  v68 = dispatch thunk of static Comparable.< infix(_:_:)();
  v69 = *(v100 + 8);
  v69(v67, v65);
  v69(v64, v65);
  if (v68)
  {
    return -v62;
  }

  else
  {
    return v62;
  }
}

unint64_t static _Int128.* infix(_:_:)(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  result = _Int128.multipliedReportingOverflow(by:)(a3, a4, a1, a2);
  if (v5)
  {
    __break(1u);
  }

  return result;
}

unint64_t _Int128.multipliedReportingOverflow(by:)(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v5 = a4 >> 63;
    if (!a2)
    {
      LODWORD(v6) = 0;
      goto LABEL_6;
    }
  }

  else
  {
    LODWORD(v5) = 0;
    LODWORD(v6) = 0;
    if (!a2)
    {
      goto LABEL_6;
    }
  }

  v6 = a2 >> 63;
LABEL_6:
  v7 = v6 ^ v5;
  v8 = -__PAIR128__(v4, a3) >> 64;
  if (a4 >= 0)
  {
    v9 = a3;
  }

  else
  {
    v9 = -a3;
  }

  if (a4 >= 0)
  {
    v8 = a4;
  }

  if (a2 >= 0)
  {
    v10 = a1;
  }

  else
  {
    v10 = -a1;
  }

  if (a2 >= 0)
  {
    v11 = a2;
  }

  else
  {
    v11 = (a1 == 0) + ~a2;
  }

  is_mul_ok(v8, v10);
  is_mul_ok(v9, v11);
  if (v7)
  {
    return -(v9 * v10);
  }

  else
  {
    return v9 * v10;
  }
}

unint64_t static _Int128.*= infix(_:_:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  result = _Int128.multipliedReportingOverflow(by:)(a2, a3, *a1, *(a1 + 8));
  if (v6)
  {
    __break(1u);
  }

  else
  {
    *a1 = result;
    *(a1 + 8) = v5;
  }

  return result;
}

uint64_t protocol witness for Numeric.init<A>(exactly:) in conformance _Int128@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = _Int128.init<A>(exactly:)(a1, a2, a3);
  *a4 = result;
  *(a4 + 8) = v6;
  *(a4 + 16) = v7 & 1;
  return result;
}

unint64_t protocol witness for static Numeric.* infix(_:_:) in conformance _Int128@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  result = _Int128.multipliedReportingOverflow(by:)(*a2, *(a2 + 8), *a1, *(a1 + 8));
  if (v6)
  {
    __break(1u);
  }

  else
  {
    *a3 = result;
    a3[1] = v5;
  }

  return result;
}

unint64_t protocol witness for static Numeric.*= infix(_:_:) in conformance _Int128(uint64_t a1, uint64_t a2)
{
  result = _Int128.multipliedReportingOverflow(by:)(*a2, *(a2 + 8), *a1, *(a1 + 8));
  if (v5)
  {
    __break(1u);
  }

  else
  {
    *a1 = result;
    *(a1 + 8) = v4;
  }

  return result;
}

uint64_t *protocol witness for ExpressibleByIntegerLiteral.init(integerLiteral:) in conformance _Int128@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X8>)
{
  v2 = *result >> 63;
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t _Int128.Words._value.setter(uint64_t result, uint64_t a2)
{
  *v2 = result;
  v2[1] = a2;
  return result;
}

Swift::Int __swiftcall _Int128.Words.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

Swift::Int __swiftcall _Int128.Words.index(before:)(Swift::Int before)
{
  v1 = __OFSUB__(before, 1);
  result = before - 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

unint64_t _Int128.Words.subscript.getter(unint64_t result, uint64_t a2, uint64_t a3)
{
  if (result > 1)
  {
    __break(1u);
  }

  else if (result)
  {
    return a3;
  }

  else
  {
    return a2;
  }

  return result;
}

void *protocol witness for Collection.subscript.getter in conformance _Int128.Words@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  if ((*result & 0x8000000000000000) != 0 || (v3 = result[1], v3 > 2))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result;
    *(a2 + 8) = v3;
    *(a2 + 16) = *v2;
  }

  return result;
}

void *protocol witness for RandomAccessCollection.index(_:offsetBy:) in conformance _UInt128.Words@<X0>(void *result@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v3 = *result + a2;
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else if (v3 <= 2)
  {
    *a3 = v3;
    return result;
  }

  __break(1u);
  return result;
}

void *protocol witness for RandomAccessCollection.distance(from:to:) in conformance _UInt128.Words(void *result, unint64_t *a2)
{
  v2 = *a2;
  if (*result <= 2uLL && v2 <= 2)
  {
    return (v2 - *result);
  }

  __break(1u);
  return result;
}

uint64_t *protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance _UInt128.Words(uint64_t *result, uint64_t *a2)
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

void *protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance _UInt128.Words(void *result, void *a2)
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

unint64_t _Int128.multipliedReportingOverflow(by:)(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = -a2;
  v5 = -__PAIR128__(v3, a2) >> 64;
  if (a3 >= 0)
  {
    v4 = a2;
    v5 = a3;
  }

  is_mul_ok(v5, a1);
  if (a3 < 0)
  {
    return -(v4 * a1);
  }

  else
  {
    return v4 * a1;
  }
}

unint64_t _Int128.multiplied(by:)(unint64_t a1, unint64_t a2, uint64_t a3)
{
  result = _Int128.multipliedReportingOverflow(by:)(a1, a2, a3);
  if (v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t _Int128.quotientAndRemainder(dividingBy:)(unint64_t a1, uint64_t a2, unint64_t a3, int64_t a4)
{
  v5 = a4;
  v6 = -__PAIR128__(v4, a3) >> 64;
  v7 = a4 < 0;
  if (a4 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = -a3;
  }

  if (a4 < 0)
  {
    a4 = v6;
  }

  v9 = -__PAIR128__(v6, a1) >> 64;
  v10 = a2 < 0;
  if (a2 >= 0)
  {
    v11 = a1;
  }

  else
  {
    v11 = -a1;
  }

  if (a2 >= 0)
  {
    v12 = a2;
  }

  else
  {
    v12 = v9;
  }

  v13 = specialized _wideDivide22<A>(_:by:)(&v19, &v18, &v17, a4, v8, v12, v11);
  v15 = v18;
  result = v19;
  if (v10 == v7)
  {
    if (v13 < 0)
    {
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      return result;
    }

    if ((v5 & 0x8000000000000000) == 0)
    {
      goto LABEL_19;
    }

LABEL_26:
    if ((v15 & 0x8000000000000000) == 0)
    {
      return result;
    }

    goto LABEL_29;
  }

  if (v13 != 0x8000000000000000 || v19)
  {
    goto LABEL_21;
  }

  v13 = 0x8000000000000000;
  if (v5 < 0)
  {
    goto LABEL_26;
  }

LABEL_19:
  while ((v15 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_21:
    if (v13 < 0)
    {
      goto LABEL_30;
    }

    v16 = result == 0;
    result = -result;
    if (v16)
    {
      v13 = -v13;
    }

    else
    {
      v13 = ~v13;
    }

    if (v5 < 0)
    {
      goto LABEL_26;
    }
  }

  return result;
}

uint64_t _Int128.dividedReportingOverflow(by:)(unint64_t a1, uint64_t a2, unint64_t a3, int64_t a4)
{
  v4 = a3;
  if (a2 != -1)
  {
    if (!a2 && !a1)
    {
      return v4;
    }

    return _Int128.quotientAndRemainder(dividingBy:)(a1, a2, a3, a4);
  }

  if (a1 != -1 || a4 != 0x8000000000000000 || a3)
  {
    return _Int128.quotientAndRemainder(dividingBy:)(a1, a2, a3, a4);
  }

  return v4;
}

unint64_t _Int128.remainderReportingOverflow(dividingBy:)(unint64_t a1, uint64_t a2, unint64_t a3, int64_t a4)
{
  if (a2 != -1)
  {
    if (!a2 && !a1)
    {
      return a3;
    }

LABEL_8:
    _Int128.quotientAndRemainder(dividingBy:)(a1, a2, a3, a4);
    return a3;
  }

  if (a1 != -1 || a4 != 0x8000000000000000 || a3)
  {
    goto LABEL_8;
  }

  return a3;
}

uint64_t *_Int128.multipliedFullWidth(by:)(uint64_t *result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if (a5)
  {
    v7 = a5 >> 63;
    if (!a3)
    {
      LODWORD(v8) = 0;
      goto LABEL_6;
    }
  }

  else
  {
    LODWORD(v7) = 0;
    LODWORD(v8) = 0;
    if (!a3)
    {
      goto LABEL_6;
    }
  }

  v8 = a3 >> 63;
LABEL_6:
  v9 = -__PAIR128__(v5, a4) >> 64;
  if (a5 >= 0)
  {
    v10 = a4;
  }

  else
  {
    v10 = -a4;
  }

  if (a5 >= 0)
  {
    v11 = a5;
  }

  else
  {
    v11 = v9;
  }

  v12 = -__PAIR128__(v6, a2) >> 64;
  if (a3 >= 0)
  {
    v13 = a2;
  }

  else
  {
    v13 = -a2;
  }

  if (a3 >= 0)
  {
    v12 = a3;
  }

  v14 = (__PAIR128__(v12, v13) * __PAIR128__(v11, v10)) >> 64;
  v15 = __CFADD__((__PAIR128__(v11, v10) * v13) >> 64, v12 * v10);
  v16 = __CFADD__((v10 * v13) >> 64, v11 * v13);
  v17 = (v12 * v10) >> 64;
  v18 = v11 * v12;
  v19 = (v11 * v12) >> 64;
  v20 = ((v11 * v13) >> 64) + v17;
  if (__CFADD__(v16, v18) | __CFADD__(v15, v16 + v18))
  {
    v21 = 1;
  }

  else
  {
    v21 = 0;
  }

  v24 = v20 + v15 + v16 + v18;
  v22 = (__PAIR128__(v21, v20) + __PAIR128__(v19, v15 + v16 + v18)) >> 64;
  v23 = v24;
  if (v22 < 0)
  {
    __break(1u);
  }

  else
  {
    v25 = v10 * v13;
    if (v8 == v7)
    {
LABEL_41:
      *result = v25;
      result[1] = v14;
      return v23;
    }

    v26 = -v14;
    v16 = v25 == 0;
    v27 = -v25;
    if (!v16)
    {
      v26 = ~v14;
    }

    v16 = v27 != 0;
    v28 = v27 - 1;
    v29 = !v16;
    v30 = v26 - v29;
    v16 = __CFADD__(v28, 1);
    v25 = v28 + 1;
    v31 = v16;
    v32 = (v30 == -1) & v31;
    v33 = -v22;
    if (v24)
    {
      v33 = ~v22;
    }

    v34 = -v24 - 1;
    v35 = (__PAIR128__(v33, v24) - 1) >> 64;
    v16 = __CFADD__(v34, v32);
    v23 = v34 + v32;
    v36 = v16;
    if (v35 != 0x7FFFFFFFFFFFFFFFLL || (v36 & 1) == 0)
    {
      v14 = v30 + v31;
      goto LABEL_41;
    }
  }

  __break(1u);
  return result;
}

uint64_t _Int128.dividingFullWidth(_:)(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4, uint64_t a5)
{
  specialized _wideMagnitude22<A>(_:)(v18, v17, a1, a2, *a3, a3[1]);
  v8 = -a4;
  v10 = -__PAIR128__(v9, a4) >> 64;
  if (a5 < 0)
  {
    v11 = v10;
  }

  else
  {
    v8 = a4;
    v11 = a5;
  }

  v12 = specialized _wideDivide42<A>(_:by:)(v18, v17, &v16, v18[1], v18[0], v17[1], v17[0], v11, v8);
  result = v18[0];
  v14 = v17[0];
  if (a2 < 0 != a5 < 0)
  {
    if (v12 == 0x8000000000000000 && v18[0] == 0)
    {
      goto LABEL_16;
    }

    if (v12 < 0)
    {
      goto LABEL_21;
    }

    result = -v18[0];
    if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_17;
  }

  if (v12 < 0)
  {
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    return result;
  }

  if (a2 < 0)
  {
LABEL_17:
    if ((v14 & 0x8000000000000000) == 0)
    {
      return result;
    }

    goto LABEL_20;
  }

LABEL_14:
  while (v14 < 0)
  {
    __break(1u);
LABEL_16:
    result = 0;
    if (a2 < 0)
    {
      goto LABEL_17;
    }
  }

  return result;
}

uint64_t specialized _wideMagnitude22<A>(_:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = _ss17FixedWidthIntegerPsE15_truncatingInityxqd__SzRd__lFZ4VDAF8_UInt128V_AD7_Int128VTt1g5(a3, a4, &v18);
  v12 = v18;
  v13 = v19;
  if (a4 < 0)
  {
    if (v18)
    {
      v14 = ~v19;
    }

    else
    {
      v14 = -v19;
    }

    v15 = -a6;
    if (a5)
    {
      v15 = ~a6;
    }

    v16 = -a5 - 1;
    v17 = a5 == 0;
    a5 = -a5;
    a6 = (v17 << 63 >> 63) + __CFADD__(v16, 1) + v15;
    v13 = (__PAIR128__(v14, -v18 - 1) + __PAIR128__(((v18 == 0) << 63) >> 63, (v15 - v17 == -1) & (v16 == -1))) >> 64;
    v12 = -v18 - 1 + ((v15 - v17 == -1) & (v16 == -1));
  }

  *a1 = v12;
  a1[1] = v13;
  *a2 = a5;
  a2[1] = a6;
  return result;
}

void *static _Int128.&= infix(_:_:)(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result[1] & a3;
  *result &= a2;
  result[1] = v3;
  return result;
}

void *static _Int128.|= infix(_:_:)(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result[1] | a3;
  *result |= a2;
  result[1] = v3;
  return result;
}

void *static _Int128.^= infix(_:_:)(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result[1] ^ a3;
  *result ^= a2;
  result[1] = v3;
  return result;
}

uint64_t *static _Int128.<<= infix(_:_:)(uint64_t *result, unint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    if (a2 < 0x80)
    {
      v8 = *result;
      v9 = result[1];
      if (a2)
      {
        v9 = (v9 << a2) | (*result >> -a2);
        v8 = *result << a2;
      }

      if (a2 > 0x3F)
      {
        v9 = *result << a2;
        v8 = 0;
      }

      *result = v8;
      result[1] = v9;
      return result;
    }

LABEL_18:
    *result = 0;
    result[1] = 0;
    return result;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    goto LABEL_18;
  }

  v3 = __OFSUB__(0, a3);
  v4 = -a3;
  v5 = v3;
  v6 = a2 == 0;
  v7 = -a2;
  if (v6)
  {
    if ((v5 & 1) == 0)
    {
      return static _Int128.>>= infix(_:_:)(result, v7, v4);
    }
  }

  else
  {
    if (v4 == 0x8000000000000000)
    {
      v5 = 1;
    }

    if ((v5 & 1) == 0)
    {
      return static _Int128.>>= infix(_:_:)(result, v7, --v4);
    }
  }

  __break(1u);
  return result;
}

uint64_t *static _Int128.>>= infix(_:_:)(uint64_t *result, unint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    if (a2 < 0x80)
    {
      v8 = *result;
      v9 = result[1];
      v10 = v9 >> 63;
      v11 = v9 >> a2;
      v12 = (v9 << -a2) | (*result >> a2);
      if (a2)
      {
        v9 >>= a2;
        v8 = v12;
      }

      if (a2 > 0x3F)
      {
        v9 = v10;
        v8 = v11;
      }

      *result = v8;
      result[1] = v9;
      return result;
    }

LABEL_18:
    v13 = result[1] >> 63;
    *result = v13;
    result[1] = v13;
    return result;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    goto LABEL_18;
  }

  v3 = __OFSUB__(0, a3);
  v4 = -a3;
  v5 = v3;
  v6 = a2 == 0;
  v7 = -a2;
  if (v6)
  {
    if ((v5 & 1) == 0)
    {
      return static _Int128.<<= infix(_:_:)(result, v7, v4);
    }
  }

  else
  {
    if (v4 == 0x8000000000000000)
    {
      v5 = 1;
    }

    if ((v5 & 1) == 0)
    {
      return static _Int128.<<= infix(_:_:)(result, v7, --v4);
    }
  }

  __break(1u);
  return result;
}

unint64_t static _Int128./ infix(_:_:)(unint64_t result, int64_t a2, unint64_t a3, uint64_t a4)
{
  if (a4 == -1)
  {
    if (a3 == -1 && a2 == 0x8000000000000000 && !result)
    {
      goto LABEL_9;
    }

    return _Int128.quotientAndRemainder(dividingBy:)(a3, a4, result, a2);
  }

  if (a4 || a3)
  {
    return _Int128.quotientAndRemainder(dividingBy:)(a3, a4, result, a2);
  }

LABEL_9:
  __break(1u);
  return result;
}

unint64_t static _Int128.% infix(_:_:)(unint64_t result, int64_t a2, unint64_t a3, uint64_t a4)
{
  if (a4 == -1)
  {
    if (a3 == -1 && a2 == 0x8000000000000000 && !result)
    {
      goto LABEL_9;
    }

LABEL_8:
    _Int128.quotientAndRemainder(dividingBy:)(a3, a4, result, a2);
    return v4;
  }

  if (a4 || a3)
  {
    goto LABEL_8;
  }

LABEL_9:
  __break(1u);
  return result;
}

unint64_t _Int128.leadingZeroBitCount.getter(unint64_t a1, unint64_t a2)
{
  v2 = __clz(a2);
  v3 = __clz(a1) + 64;
  if (a2)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t _Int128.trailingZeroBitCount.getter(unint64_t a1, unint64_t a2)
{
  v2 = __clz(__rbit64(a1));
  v3 = __clz(__rbit64(a2)) + 64;
  if (a1)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t _Int128.nonzeroBitCount.getter(uint64_t a1, uint64_t a2)
{
  v2 = vcnt_s8(a2);
  v2.i16[0] = vaddlv_u8(v2);
  v3 = v2.u32[0];
  v4 = vcnt_s8(a1);
  v4.i16[0] = vaddlv_u8(v4);
  return v3 + v4.u32[0];
}

double protocol witness for static FixedWidthInteger.max.getter in conformance _Int128@<D0>(_OWORD *a1@<X8>)
{
  result = NAN;
  *a1 = xmmword_270C44F70;
  return result;
}

double protocol witness for static FixedWidthInteger.min.getter in conformance _Int128@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_270C44F80;
  return result;
}

uint64_t protocol witness for FixedWidthInteger.addingReportingOverflow(_:) in conformance _Int128(void *a1, void *a2)
{
  v3 = a2[1];
  v4 = v2[1];
  v5 = __CFADD__(*v2, *a2);
  v6 = __OFADD__(v4, v3);
  v7 = v4 + v3;
  if (v6)
  {
    v8 = 1;
    if (v5)
    {
LABEL_9:
      v9 = 1;
      goto LABEL_10;
    }
  }

  else
  {
    v8 = (v7 == 0x7FFFFFFFFFFFFFFFLL) & v5;
    if (v5)
    {
      goto LABEL_9;
    }
  }

  v9 = 0;
LABEL_10:
  *a1 = *v2 + *a2;
  a1[1] = v9 + v7;
  return v8;
}

unint64_t protocol witness for FixedWidthInteger.subtractingReportingOverflow(_:) in conformance _Int128(unint64_t *a1, unint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = *v2;
  v6 = v2[1];
  v7 = __OFSUB__(v6, v4);
  v8 = v6 - v4;
  v9 = v7;
  v10 = v5 >= v3;
  v11 = v5 - v3;
  LODWORD(v3) = v5 < v3;
  if (v10)
  {
    if (v9)
    {
      v3 = 1;
      v12 = v8;
      goto LABEL_13;
    }

    v12 = v8;
  }

  else
  {
    v12 = v8 - 1;
    if (v9)
    {
      v3 = 1;
      goto LABEL_13;
    }
  }

  if (v8 == 0x8000000000000000)
  {
    v3 = v3;
  }

  else
  {
    v3 = 0;
  }

LABEL_13:
  *a1 = v11;
  a1[1] = v12;
  return v3;
}

uint64_t protocol witness for FixedWidthInteger.multipliedReportingOverflow(by:) in conformance _Int128(unint64_t *a1, uint64_t a2)
{
  *a1 = _Int128.multipliedReportingOverflow(by:)(*a2, *(a2 + 8), *v2, *(v2 + 8));
  a1[1] = v4;
  return v5 & 1;
}

uint64_t protocol witness for FixedWidthInteger.dividedReportingOverflow(by:) in conformance _Int128(unint64_t *a1, unint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = *v2;
  v7 = v2[1];
  if (v5 == -1)
  {
    if (v4 == -1 && v7 == 0x8000000000000000 && v6 == 0)
    {
      v6 = 0;
      result = 1;
      v7 = 0x8000000000000000;
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (v5)
  {
    v8 = 0;
  }

  else
  {
    v8 = v4 == 0;
  }

  if (!v8)
  {
LABEL_15:
    v6 = _Int128.quotientAndRemainder(dividingBy:)(v4, v5, v6, v7);
    v7 = v12;
    result = 0;
    goto LABEL_16;
  }

  result = 1;
LABEL_16:
  *a1 = v6;
  a1[1] = v7;
  return result;
}

uint64_t protocol witness for FixedWidthInteger.remainderReportingOverflow(dividingBy:) in conformance _Int128(unint64_t *a1, unint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = *v2;
  v7 = v2[1];
  if (v5 == -1)
  {
    if (v4 != -1 || v7 != 0x8000000000000000 || v6 != 0)
    {
      goto LABEL_15;
    }

    v6 = 0;
    v7 = 0;
LABEL_17:
    result = 1;
    goto LABEL_18;
  }

  if (v5)
  {
    v8 = 0;
  }

  else
  {
    v8 = v4 == 0;
  }

  if (v8)
  {
    goto LABEL_17;
  }

LABEL_15:
  _Int128.quotientAndRemainder(dividingBy:)(v4, v5, v6, v7);
  result = 0;
LABEL_18:
  *a1 = v6;
  a1[1] = v7;
  return result;
}

uint64_t *protocol witness for FixedWidthInteger.multipliedFullWidth(by:) in conformance _Int128(uint64_t **a1, uint64_t *a2, uint64_t a3)
{
  result = _Int128.multipliedFullWidth(by:)(a2, *a3, *(a3 + 8), *v3, *(v3 + 8));
  *a1 = result;
  a1[1] = v6;
  return result;
}

uint64_t protocol witness for FixedWidthInteger.dividingFullWidth(_:) in conformance _Int128(uint64_t *a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  result = _Int128.dividingFullWidth(_:)(*a3, a3[1], a4, *v4, *(v4 + 8));
  *a1 = result;
  a1[1] = v8;
  *a2 = v9;
  a2[1] = v10;
  return result;
}

uint64_t protocol witness for static FixedWidthInteger.&>> infix(_:_:) in conformance _Int128@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t (*a3)(void, void, void)@<X4>, uint64_t *a4@<X8>)
{
  result = a3(*a1, a1[1], *a2);
  *a4 = result;
  a4[1] = v6;
  return result;
}

unint64_t protocol witness for static FixedWidthInteger.&* infix(_:_:) in conformance _Int128@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  result = _Int128.multipliedReportingOverflow(by:)(*a1, *(a1 + 8), *a2, *(a2 + 8));
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t protocol witness for BinaryInteger.init<A>(exactly:) in conformance _Int128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = lazy protocol witness table accessor for type _Int128 and conformance _Int128();

  return MEMORY[0x2821FD5C0](a1, a4, a2, v8, a3);
}

uint64_t protocol witness for BinaryInteger.init<A>(_:) in conformance _Int128@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  lazy protocol witness table accessor for type _Int128 and conformance _Int128();
  static FixedWidthInteger._convert<A>(from:)();
  if (v11)
  {
    _StringGuts.grow(_:)(80);
    v7 = _typeName(_:qualified:)();
    MEMORY[0x2743B25F0](v7);

    MEMORY[0x2743B25F0](0xD00000000000001ELL, 0x8000000270C52110);
    v8 = _typeName(_:qualified:)();
    MEMORY[0x2743B25F0](v8);

    MEMORY[0x2743B25F0](0xD00000000000002ELL, 0x8000000270C52130);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    result = (*(*(a2 - 8) + 8))(a1, a2);
    *a3 = v9;
    a3[1] = v10;
  }

  return result;
}

uint64_t protocol witness for BinaryInteger.init<A>(_:) in conformance _Int128@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = specialized _Int128.init<A>(_:)(a1, a2, a3);
  v9 = v8;
  result = (*(*(a2 - 8) + 8))(a1, a2);
  *a4 = v7;
  a4[1] = v9;
  return result;
}

double protocol witness for BinaryInteger.init<A>(truncatingIfNeeded:) in conformance _UInt128@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void)@<X5>, _OWORD *a6@<X8>)
{
  v11 = a5();
  static FixedWidthInteger._truncatingInit<A>(_:)(a1, a4, a2, v11, a3, &v13);
  (*(*(a2 - 8) + 8))(a1, a2);
  result = *&v13;
  *a6 = v13;
  return result;
}

uint64_t protocol witness for BinaryInteger.init<A>(clamping:) in conformance _Int128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = lazy protocol witness table accessor for type _Int128 and conformance _Int128();

  return MEMORY[0x2821FD5D0](a1, a4, a2, v8, a3);
}

unint64_t protocol witness for BinaryInteger._binaryLogarithm() in conformance _Int128()
{
  v1 = v0[1];
  if (v1)
  {
    if (v1 >= 1)
    {
      return __clz(v1) ^ 0x7F;
    }

    __break(1u);
  }

  else if (*v0)
  {
    return (__clz(*v0) | 0x40) ^ 0x7F;
  }

  __break(1u);
  return result;
}

unint64_t protocol witness for static BinaryInteger./ infix(_:_:) in conformance _Int128@<X0>(unint64_t *a1@<X0>, unint64_t *a2@<X1>, unint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  result = *a2;
  v7 = a2[1];
  if (v7 == -1)
  {
    if (result != -1 || v5 != 0x8000000000000000 || v4 != 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    if (v7)
    {
      v8 = 0;
    }

    else
    {
      v8 = result == 0;
    }

    if (!v8)
    {
LABEL_6:
      result = _Int128.quotientAndRemainder(dividingBy:)(result, v7, v4, v5);
      *a3 = result;
      a3[1] = v9;
      return result;
    }
  }

  __break(1u);
  return result;
}

unint64_t protocol witness for static BinaryInteger.% infix(_:_:) in conformance _Int128@<X0>(unint64_t *a1@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  result = *a2;
  v7 = a2[1];
  if (v7 == -1)
  {
    if (result != -1 || v5 != 0x8000000000000000 || v4 != 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    if (v7)
    {
      v8 = 0;
    }

    else
    {
      v8 = result == 0;
    }

    if (!v8)
    {
LABEL_6:
      result = _Int128.quotientAndRemainder(dividingBy:)(result, v7, v4, v5);
      *a3 = v9;
      a3[1] = v10;
      return result;
    }
  }

  __break(1u);
  return result;
}

void *protocol witness for static BinaryInteger.~ prefix(_:) in conformance _Int128@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  if (*result)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -v2;
  }

  v4 = *result == 0;
  *a2 = -*result - 1;
  a2[1] = v3 - v4;
  return result;
}

uint64_t protocol witness for static BinaryInteger.>> infix<A>(_:_:) in conformance _Int128@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v64 = a5;
  v9 = *(*(a4 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(*(AssociatedTypeWitness - 8) + 64);
  v13 = MEMORY[0x28223BE20](AssociatedTypeWitness, v12);
  v65 = *(a3 - 8);
  v14 = *(v65 + 64);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v18 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v61 - v20;
  v22 = a1[1];
  v62 = *a1;
  v23 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v63 = v22;
  if (v23)
  {
    if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
    {
      if (dispatch thunk of BinaryInteger._lowWord.getter() > -129)
      {
        goto LABEL_15;
      }

LABEL_13:
      specialized static _Int128.&>> infix(_:_:)(v62, v63, 127);
LABEL_14:
      result = 0;
      v31 = 0;
      goto LABEL_52;
    }

LABEL_7:
    v66 = -128;
    lazy protocol witness table accessor for type Int and conformance Int();
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v26 = *(*(a4 + 32) + 8);
    v27 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v65 + 8))(v21, a3);
    if ((v27 & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v24 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v25 = dispatch thunk of BinaryInteger.bitWidth.getter();
  if (v24)
  {
    if (v25 > 64)
    {
      goto LABEL_7;
    }

    swift_getAssociatedConformanceWitness();
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    v28 = *(*(a4 + 32) + 8);
    v29 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v65 + 8))(v21, a3);
    if (v29)
    {
      goto LABEL_13;
    }
  }

  else if (v25 >= 64)
  {
    goto LABEL_15;
  }

  if (dispatch thunk of BinaryInteger._lowWord.getter() < -128)
  {
    goto LABEL_13;
  }

LABEL_15:
  v32 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v33 = dispatch thunk of BinaryInteger.bitWidth.getter();
  v35 = __OFSUB__(v33, 64);
  v34 = v33 - 64 < 0;
  if ((v32 & 1) == 0)
  {
    goto LABEL_24;
  }

  if (v33 <= 64)
  {
    goto LABEL_26;
  }

LABEL_17:
  v66 = 128;
  lazy protocol witness table accessor for type Int and conformance Int();
  dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
  v36 = *(*(a4 + 32) + 8);
  v37 = dispatch thunk of static Comparable.< infix(_:_:)();
  (*(v65 + 8))(v21, a3);
  if ((v37 & 1) == 0)
  {
    while (1)
    {
      (*(v65 + 16))(v18, a2, a3);
      if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0 || dispatch thunk of BinaryInteger.bitWidth.getter() < 65)
      {
        goto LABEL_36;
      }

      if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
      {
        break;
      }

      if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
      {
        goto LABEL_35;
      }

      v66 = 0x8000000000000000;
      lazy protocol witness table accessor for type Int and conformance Int();
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v38 = *(*(a4 + 32) + 8);
      v39 = dispatch thunk of static Comparable.< infix(_:_:)();
      (*(v65 + 8))(v21, a3);
      if ((v39 & 1) == 0)
      {
        goto LABEL_36;
      }

      __break(1u);
LABEL_24:
      if (v34 == v35)
      {
        goto LABEL_17;
      }

LABEL_26:
      if (dispatch thunk of BinaryInteger._lowWord.getter() > 128)
      {
        goto LABEL_27;
      }
    }

    v43 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v44 = dispatch thunk of BinaryInteger.bitWidth.getter();
    v46 = __OFSUB__(v44, 64);
    v45 = v44 - 64 < 0;
    if ((v43 & 1) == 0)
    {
LABEL_32:
      if (v45 == v46)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    }

    if (v44 > 64)
    {
      v66 = 0x8000000000000000;
      lazy protocol witness table accessor for type Int and conformance Int();
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v47 = *(*(a4 + 32) + 8);
      v48 = dispatch thunk of static Comparable.< infix(_:_:)();
      (*(v65 + 8))(v21, a3);
      if ((v48 & 1) == 0)
      {
LABEL_36:
        if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
        {
          goto LABEL_41;
        }

        while (1)
        {
          v52 = dispatch thunk of static BinaryInteger.isSigned.getter();
          v53 = dispatch thunk of BinaryInteger.bitWidth.getter();
          if ((v52 & 1) == 0)
          {
            break;
          }

          if (v53 <= 64)
          {
            goto LABEL_46;
          }

          v66 = 0x7FFFFFFFFFFFFFFFLL;
          lazy protocol witness table accessor for type Int and conformance Int();
          dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
          v54 = *(*(a4 + 32) + 8);
          v55 = dispatch thunk of static Comparable.< infix(_:_:)();
          (*(v65 + 8))(v21, a3);
          if (v55)
          {
            __break(1u);
LABEL_41:
            if (dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
            {
              continue;
            }
          }

          goto LABEL_48;
        }

        if (v53 < 64)
        {
LABEL_46:
          dispatch thunk of BinaryInteger._lowWord.getter();
          goto LABEL_48;
        }

        v66 = 0x7FFFFFFFFFFFFFFFLL;
        lazy protocol witness table accessor for type Int and conformance Int();
        v49 = a3;
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v56 = *(*(a4 + 32) + 8);
        v51 = dispatch thunk of static Comparable.< infix(_:_:)();
        (*(v65 + 8))(v21, a3);
        if (v51)
        {
          __break(1u);
          goto LABEL_54;
        }

LABEL_48:
        v49 = dispatch thunk of BinaryInteger._lowWord.getter();
        (*(v65 + 8))(v18, a3);
        v57 = v62;
        v51 = v63;
        result = specialized static _Int128.&>> infix(_:_:)(v62, v63, 127);
        if ((v49 & 0x8000000000000000) != 0)
        {
          goto LABEL_55;
        }

        if (v49 < 0x80)
        {
          _ss17FixedWidthIntegerPsE15_truncatingInityxqd__SzRd__lFZ4VDAF7_Int128V_SiTt1gq5();
          v42 = v58;
          v40 = v57;
          v41 = v51;
          goto LABEL_51;
        }

        goto LABEL_52;
      }

      __break(1u);
      goto LABEL_32;
    }

    swift_getAssociatedConformanceWitness();
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    v49 = a3;
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    v50 = *(*(a4 + 32) + 8);
    v51 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v65 + 8))(v21, a3);
    if ((v51 & 1) == 0)
    {
LABEL_35:
      dispatch thunk of BinaryInteger._lowWord.getter();
      goto LABEL_36;
    }

LABEL_54:
    __break(1u);
LABEL_55:
    if (v49 > 0xFFFFFFFFFFFFFF80)
    {
      _ss17FixedWidthIntegerPsE15_truncatingInityxqd__SzRd__lFZ4VDAF7_Int128V_SiTt1gq5();
      result = specialized static _Int128.&<< infix(_:_:)(v62, v51, v60);
      goto LABEL_52;
    }

    goto LABEL_14;
  }

LABEL_27:
  v40 = v62;
  v41 = v63;
  v42 = 127;
LABEL_51:
  result = specialized static _Int128.&>> infix(_:_:)(v40, v41, v42);
LABEL_52:
  v59 = v64;
  *v64 = result;
  v59[1] = v31;
  return result;
}

uint64_t protocol witness for static BinaryInteger.>>= infix<A>(_:_:) in conformance _Int128(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53[1] = *(*(a4 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(*(AssociatedTypeWitness - 8) + 64);
  v11 = MEMORY[0x28223BE20](AssociatedTypeWitness, v10);
  v54 = *(a3 - 8);
  v12 = *(v54 + 64);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v16 = v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v17);
  v19 = v53 - v18;
  if (dispatch thunk of static BinaryInteger.isSigned.getter())
  {
    if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
    {
      if (dispatch thunk of BinaryInteger._lowWord.getter() > -129)
      {
        goto LABEL_14;
      }

LABEL_13:
      v22 = -128;
      goto LABEL_48;
    }

    goto LABEL_7;
  }

  v20 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v21 = dispatch thunk of BinaryInteger.bitWidth.getter();
  if ((v20 & 1) == 0)
  {
    if (v21 >= 64)
    {
      goto LABEL_14;
    }

LABEL_12:
    if (dispatch thunk of BinaryInteger._lowWord.getter() >= -128)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (v21 <= 64)
  {
    swift_getAssociatedConformanceWitness();
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    v25 = *(*(a4 + 32) + 8);
    v26 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v54 + 8))(v19, a3);
    if (v26)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_7:
  v22 = -128;
  v55 = -128;
  lazy protocol witness table accessor for type Int and conformance Int();
  dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
  v23 = *(*(a4 + 32) + 8);
  v24 = dispatch thunk of static Comparable.< infix(_:_:)();
  (*(v54 + 8))(v19, a3);
  if (v24)
  {
    goto LABEL_48;
  }

LABEL_14:
  v27 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v28 = dispatch thunk of BinaryInteger.bitWidth.getter();
  if (v27)
  {
    if (v28 > 64)
    {
      goto LABEL_16;
    }
  }

  else if (v28 >= 64)
  {
LABEL_16:
    v22 = 128;
    v55 = 128;
    lazy protocol witness table accessor for type Int and conformance Int();
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v29 = *(*(a4 + 32) + 8);
    v30 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v54 + 8))(v19, a3);
    if ((v30 & 1) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_48;
  }

  if (dispatch thunk of BinaryInteger._lowWord.getter() <= 128)
  {
LABEL_21:
    (*(v54 + 16))(v16, a2, a3);
    if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0 || dispatch thunk of BinaryInteger.bitWidth.getter() < 65)
    {
      goto LABEL_35;
    }

    if (dispatch thunk of static BinaryInteger.isSigned.getter())
    {
      if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
      {
        goto LABEL_34;
      }

      v55 = 0x8000000000000000;
      lazy protocol witness table accessor for type Int and conformance Int();
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v31 = *(*(a4 + 32) + 8);
      v32 = dispatch thunk of static Comparable.< infix(_:_:)();
      (*(v54 + 8))(v19, a3);
      if ((v32 & 1) == 0)
      {
        goto LABEL_35;
      }

      __break(1u);
    }

    v33 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v34 = dispatch thunk of BinaryInteger.bitWidth.getter();
    v36 = __OFSUB__(v34, 64);
    v35 = v34 - 64 < 0;
    if ((v33 & 1) == 0)
    {
      goto LABEL_31;
    }

    if (v34 > 64)
    {
      v55 = 0x8000000000000000;
      lazy protocol witness table accessor for type Int and conformance Int();
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v37 = *(*(a4 + 32) + 8);
      v38 = dispatch thunk of static Comparable.< infix(_:_:)();
      (*(v54 + 8))(v19, a3);
      if (v38)
      {
        __break(1u);
LABEL_31:
        if (v35 == v36)
        {
          goto LABEL_35;
        }

        goto LABEL_34;
      }

LABEL_35:
      if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
      {
        goto LABEL_40;
      }

      while (1)
      {
        v41 = dispatch thunk of static BinaryInteger.isSigned.getter();
        v42 = dispatch thunk of BinaryInteger.bitWidth.getter();
        if ((v41 & 1) == 0)
        {
          break;
        }

        if (v42 <= 64)
        {
          goto LABEL_45;
        }

        v55 = 0x7FFFFFFFFFFFFFFFLL;
        lazy protocol witness table accessor for type Int and conformance Int();
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v43 = *(*(a4 + 32) + 8);
        v44 = dispatch thunk of static Comparable.< infix(_:_:)();
        (*(v54 + 8))(v19, a3);
        if (v44)
        {
          __break(1u);
LABEL_40:
          if (dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_47;
      }

      if (v42 < 64)
      {
LABEL_45:
        dispatch thunk of BinaryInteger._lowWord.getter();
LABEL_47:
        v22 = dispatch thunk of BinaryInteger._lowWord.getter();
        (*(v54 + 8))(v16, a3);
        goto LABEL_48;
      }

      v55 = 0x7FFFFFFFFFFFFFFFLL;
      lazy protocol witness table accessor for type Int and conformance Int();
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v45 = *(*(a4 + 32) + 8);
      v46 = dispatch thunk of static Comparable.< infix(_:_:)();
      (*(v54 + 8))(v19, a3);
      if ((v46 & 1) == 0)
      {
        goto LABEL_47;
      }

      __break(1u);
      goto LABEL_55;
    }

    swift_getAssociatedConformanceWitness();
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    v39 = *(*(a4 + 32) + 8);
    v40 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v54 + 8))(v19, a3);
    if (v40)
    {
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

LABEL_34:
    dispatch thunk of BinaryInteger._lowWord.getter();
    goto LABEL_35;
  }

  v22 = 128;
LABEL_48:
  v47 = *a1;
  v48 = a1[1];
  result = specialized static _Int128.&>> infix(_:_:)(*a1, v48, 127);
  if ((v22 & 0x8000000000000000) != 0)
  {
    if (v22 <= 0xFFFFFFFFFFFFFF80)
    {
LABEL_56:
      result = 0;
      v50 = 0;
      goto LABEL_51;
    }

    _ss17FixedWidthIntegerPsE15_truncatingInityxqd__SzRd__lFZ4VDAF7_Int128V_SiTt1gq5();
    result = specialized static _Int128.&<< infix(_:_:)(v47, v48, v52);
  }

  else if (v22 < 0x80)
  {
    _ss17FixedWidthIntegerPsE15_truncatingInityxqd__SzRd__lFZ4VDAF7_Int128V_SiTt1gq5();
    result = specialized static _Int128.&>> infix(_:_:)(v47, v48, v51);
  }

LABEL_51:
  *a1 = result;
  a1[1] = v50;
  return result;
}

uint64_t protocol witness for static BinaryInteger.<< infix<A>(_:_:) in conformance _Int128@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v61 = a5;
  v9 = *(*(a4 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(*(AssociatedTypeWitness - 8) + 64);
  v13 = MEMORY[0x28223BE20](AssociatedTypeWitness, v12);
  v62 = *(a3 - 8);
  v14 = *(v62 + 64);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v18 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v58 - v20;
  v22 = a1[1];
  v59 = *a1;
  v23 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v60 = v22;
  if (v23)
  {
    if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
    {
      if (dispatch thunk of BinaryInteger._lowWord.getter() > -129)
      {
        goto LABEL_14;
      }

LABEL_13:
      result = specialized static _Int128.&>> infix(_:_:)(v59, v60, 127);
      goto LABEL_51;
    }

    goto LABEL_7;
  }

  v24 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v25 = dispatch thunk of BinaryInteger.bitWidth.getter();
  if ((v24 & 1) == 0)
  {
    if (v25 >= 64)
    {
      goto LABEL_14;
    }

LABEL_12:
    if (dispatch thunk of BinaryInteger._lowWord.getter() >= -128)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (v25 <= 64)
  {
    swift_getAssociatedConformanceWitness();
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    v28 = *(*(a4 + 32) + 8);
    v29 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v62 + 8))(v21, a3);
    if (v29)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_7:
  v63 = -128;
  lazy protocol witness table accessor for type Int and conformance Int();
  dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
  v26 = *(*(a4 + 32) + 8);
  v27 = dispatch thunk of static Comparable.< infix(_:_:)();
  (*(v62 + 8))(v21, a3);
  if (v27)
  {
    goto LABEL_13;
  }

LABEL_14:
  v32 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v33 = dispatch thunk of BinaryInteger.bitWidth.getter();
  v35 = __OFSUB__(v33, 64);
  v34 = v33 - 64 < 0;
  if ((v32 & 1) == 0)
  {
    goto LABEL_23;
  }

  if (v33 <= 64)
  {
    goto LABEL_25;
  }

LABEL_16:
  v63 = 128;
  lazy protocol witness table accessor for type Int and conformance Int();
  dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
  v36 = *(*(a4 + 32) + 8);
  v37 = dispatch thunk of static Comparable.< infix(_:_:)();
  (*(v62 + 8))(v21, a3);
  if (v37)
  {
LABEL_26:
    specialized static _Int128.&>> infix(_:_:)(v59, v60, 127);
  }

  else
  {
    while (1)
    {
      (*(v62 + 16))(v18, a2, a3);
      if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0 || dispatch thunk of BinaryInteger.bitWidth.getter() < 65)
      {
        break;
      }

      if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
      {
        v40 = dispatch thunk of static BinaryInteger.isSigned.getter();
        v41 = dispatch thunk of BinaryInteger.bitWidth.getter();
        v43 = __OFSUB__(v41, 64);
        v42 = v41 - 64 < 0;
        if (v40)
        {
          if (v41 > 64)
          {
            v63 = 0x8000000000000000;
            lazy protocol witness table accessor for type Int and conformance Int();
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v44 = *(*(a4 + 32) + 8);
            v45 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v62 + 8))(v21, a3);
            if ((v45 & 1) == 0)
            {
              break;
            }

            __break(1u);
            goto LABEL_32;
          }

          swift_getAssociatedConformanceWitness();
          dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
          v46 = a3;
          dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
          v47 = *(*(a4 + 32) + 8);
          v48 = dispatch thunk of static Comparable.< infix(_:_:)();
          result = (*(v62 + 8))(v21, a3);
          if (v48)
          {
LABEL_53:
            __break(1u);
LABEL_54:
            if (v46 > 0xFFFFFFFFFFFFFF80)
            {
              _ss17FixedWidthIntegerPsE15_truncatingInityxqd__SzRd__lFZ4VDAF7_Int128V_SiTt1gq5();
              result = specialized static _Int128.&>> infix(_:_:)(v59, v48, v57);
            }

            goto LABEL_51;
          }
        }

        else
        {
LABEL_32:
          if (v42 == v43)
          {
            break;
          }
        }

LABEL_35:
        dispatch thunk of BinaryInteger._lowWord.getter();
        break;
      }

      if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
      {
        goto LABEL_35;
      }

      v63 = 0x8000000000000000;
      lazy protocol witness table accessor for type Int and conformance Int();
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v38 = *(*(a4 + 32) + 8);
      v39 = dispatch thunk of static Comparable.< infix(_:_:)();
      (*(v62 + 8))(v21, a3);
      if ((v39 & 1) == 0)
      {
        break;
      }

      __break(1u);
LABEL_23:
      if (v34 == v35)
      {
        goto LABEL_16;
      }

LABEL_25:
      if (dispatch thunk of BinaryInteger._lowWord.getter() > 128)
      {
        goto LABEL_26;
      }
    }

    if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
    {
      goto LABEL_41;
    }

    while (1)
    {
      v49 = dispatch thunk of static BinaryInteger.isSigned.getter();
      v50 = dispatch thunk of BinaryInteger.bitWidth.getter();
      if ((v49 & 1) == 0)
      {
        break;
      }

      if (v50 <= 64)
      {
        goto LABEL_46;
      }

      v63 = 0x7FFFFFFFFFFFFFFFLL;
      lazy protocol witness table accessor for type Int and conformance Int();
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v51 = *(*(a4 + 32) + 8);
      v52 = dispatch thunk of static Comparable.< infix(_:_:)();
      (*(v62 + 8))(v21, a3);
      if (v52)
      {
        __break(1u);
LABEL_41:
        if (dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
        {
          continue;
        }
      }

      goto LABEL_48;
    }

    if (v50 < 64)
    {
LABEL_46:
      dispatch thunk of BinaryInteger._lowWord.getter();
      goto LABEL_48;
    }

    v63 = 0x7FFFFFFFFFFFFFFFLL;
    lazy protocol witness table accessor for type Int and conformance Int();
    v46 = a3;
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v53 = *(*(a4 + 32) + 8);
    v48 = dispatch thunk of static Comparable.< infix(_:_:)();
    result = (*(v62 + 8))(v21, a3);
    if (v48)
    {
      __break(1u);
      goto LABEL_53;
    }

LABEL_48:
    v46 = dispatch thunk of BinaryInteger._lowWord.getter();
    (*(v62 + 8))(v18, a3);
    v54 = v59;
    v48 = v60;
    result = specialized static _Int128.&>> infix(_:_:)(v59, v60, 127);
    if ((v46 & 0x8000000000000000) != 0)
    {
      goto LABEL_54;
    }

    if (v46 < 0x80)
    {
      _ss17FixedWidthIntegerPsE15_truncatingInityxqd__SzRd__lFZ4VDAF7_Int128V_SiTt1gq5();
      result = specialized static _Int128.&<< infix(_:_:)(v54, v48, v55);
      goto LABEL_51;
    }
  }

  result = 0;
  v31 = 0;
LABEL_51:
  v56 = v61;
  *v61 = result;
  v56[1] = v31;
  return result;
}

uint64_t protocol witness for static BinaryInteger.<<= infix<A>(_:_:) in conformance _Int128(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53[1] = *(*(a4 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(*(AssociatedTypeWitness - 8) + 64);
  v11 = MEMORY[0x28223BE20](AssociatedTypeWitness, v10);
  v54 = *(a3 - 8);
  v12 = *(v54 + 64);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v16 = v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v17);
  v19 = v53 - v18;
  if (dispatch thunk of static BinaryInteger.isSigned.getter())
  {
    if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
    {
      if (dispatch thunk of BinaryInteger._lowWord.getter() > -129)
      {
        goto LABEL_14;
      }

LABEL_13:
      v22 = -128;
      goto LABEL_48;
    }

    goto LABEL_7;
  }

  v20 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v21 = dispatch thunk of BinaryInteger.bitWidth.getter();
  if ((v20 & 1) == 0)
  {
    if (v21 >= 64)
    {
      goto LABEL_14;
    }

LABEL_12:
    if (dispatch thunk of BinaryInteger._lowWord.getter() >= -128)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (v21 <= 64)
  {
    swift_getAssociatedConformanceWitness();
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    v25 = *(*(a4 + 32) + 8);
    v26 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v54 + 8))(v19, a3);
    if (v26)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_7:
  v22 = -128;
  v55 = -128;
  lazy protocol witness table accessor for type Int and conformance Int();
  dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
  v23 = *(*(a4 + 32) + 8);
  v24 = dispatch thunk of static Comparable.< infix(_:_:)();
  (*(v54 + 8))(v19, a3);
  if (v24)
  {
    goto LABEL_48;
  }

LABEL_14:
  v27 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v28 = dispatch thunk of BinaryInteger.bitWidth.getter();
  if (v27)
  {
    if (v28 > 64)
    {
      goto LABEL_16;
    }
  }

  else if (v28 >= 64)
  {
LABEL_16:
    v22 = 128;
    v55 = 128;
    lazy protocol witness table accessor for type Int and conformance Int();
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v29 = *(*(a4 + 32) + 8);
    v30 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v54 + 8))(v19, a3);
    if ((v30 & 1) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_48;
  }

  if (dispatch thunk of BinaryInteger._lowWord.getter() <= 128)
  {
LABEL_21:
    (*(v54 + 16))(v16, a2, a3);
    if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0 || dispatch thunk of BinaryInteger.bitWidth.getter() < 65)
    {
      goto LABEL_35;
    }

    if (dispatch thunk of static BinaryInteger.isSigned.getter())
    {
      if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
      {
        goto LABEL_34;
      }

      v55 = 0x8000000000000000;
      lazy protocol witness table accessor for type Int and conformance Int();
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v31 = *(*(a4 + 32) + 8);
      v32 = dispatch thunk of static Comparable.< infix(_:_:)();
      (*(v54 + 8))(v19, a3);
      if ((v32 & 1) == 0)
      {
        goto LABEL_35;
      }

      __break(1u);
    }

    v33 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v34 = dispatch thunk of BinaryInteger.bitWidth.getter();
    v36 = __OFSUB__(v34, 64);
    v35 = v34 - 64 < 0;
    if ((v33 & 1) == 0)
    {
      goto LABEL_31;
    }

    if (v34 > 64)
    {
      v55 = 0x8000000000000000;
      lazy protocol witness table accessor for type Int and conformance Int();
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v37 = *(*(a4 + 32) + 8);
      v38 = dispatch thunk of static Comparable.< infix(_:_:)();
      (*(v54 + 8))(v19, a3);
      if (v38)
      {
        __break(1u);
LABEL_31:
        if (v35 == v36)
        {
          goto LABEL_35;
        }

        goto LABEL_34;
      }

LABEL_35:
      if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
      {
        goto LABEL_40;
      }

      while (1)
      {
        v42 = dispatch thunk of static BinaryInteger.isSigned.getter();
        v43 = dispatch thunk of BinaryInteger.bitWidth.getter();
        if ((v42 & 1) == 0)
        {
          break;
        }

        if (v43 <= 64)
        {
          goto LABEL_45;
        }

        v55 = 0x7FFFFFFFFFFFFFFFLL;
        lazy protocol witness table accessor for type Int and conformance Int();
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v44 = *(*(a4 + 32) + 8);
        v45 = dispatch thunk of static Comparable.< infix(_:_:)();
        (*(v54 + 8))(v19, a3);
        if (v45)
        {
          __break(1u);
LABEL_40:
          if (dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_47;
      }

      if (v43 < 64)
      {
LABEL_45:
        dispatch thunk of BinaryInteger._lowWord.getter();
LABEL_47:
        v22 = dispatch thunk of BinaryInteger._lowWord.getter();
        (*(v54 + 8))(v16, a3);
        goto LABEL_48;
      }

      v55 = 0x7FFFFFFFFFFFFFFFLL;
      lazy protocol witness table accessor for type Int and conformance Int();
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v46 = *(*(a4 + 32) + 8);
      v47 = dispatch thunk of static Comparable.< infix(_:_:)();
      result = (*(v54 + 8))(v19, a3);
      if ((v47 & 1) == 0)
      {
        goto LABEL_47;
      }

      __break(1u);
      goto LABEL_56;
    }

    swift_getAssociatedConformanceWitness();
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    v39 = *(*(a4 + 32) + 8);
    v40 = dispatch thunk of static Comparable.< infix(_:_:)();
    result = (*(v54 + 8))(v19, a3);
    if (v40)
    {
LABEL_56:
      __break(1u);
      return result;
    }

LABEL_34:
    dispatch thunk of BinaryInteger._lowWord.getter();
    goto LABEL_35;
  }

  v22 = 128;
LABEL_48:
  v48 = *a1;
  v49 = a1[1];
  result = specialized static _Int128.&>> infix(_:_:)(*a1, v49, 127);
  if ((v22 & 0x8000000000000000) != 0)
  {
    if (v22 > 0xFFFFFFFFFFFFFF80)
    {
      _ss17FixedWidthIntegerPsE15_truncatingInityxqd__SzRd__lFZ4VDAF7_Int128V_SiTt1gq5();
      result = specialized static _Int128.&>> infix(_:_:)(v48, v49, v52);
    }
  }

  else if (v22 >= 0x80)
  {
    result = 0;
    v50 = 0;
  }

  else
  {
    _ss17FixedWidthIntegerPsE15_truncatingInityxqd__SzRd__lFZ4VDAF7_Int128V_SiTt1gq5();
    result = specialized static _Int128.&<< infix(_:_:)(v48, v49, v51);
  }

  *a1 = result;
  a1[1] = v50;
  return result;
}

uint64_t protocol witness for BinaryInteger.quotientAndRemainder(dividingBy:) in conformance _Int128(uint64_t *a1, void *a2, uint64_t a3)
{
  result = _Int128.quotientAndRemainder(dividingBy:)(*a3, *(a3 + 8), *v3, *(v3 + 8));
  *a1 = result;
  a1[1] = v7;
  *a2 = v8;
  a2[1] = v9;
  return result;
}

void protocol witness for BinaryInteger.signum() in conformance _Int128(unint64_t *a1@<X8>)
{
  v2 = v1[1];
  v3 = *v1 != 0;
  if (v2)
  {
    v4 = v2 > 0;
  }

  else
  {
    v4 = *v1 != 0;
  }

  v5 = v4 >= v2 >> 63;
  v6 = v4 - (v2 >> 63);
  v7 = !v5;
  *a1 = v6;
  a1[1] = v7 << 63 >> 63;
}

uint64_t protocol witness for LosslessStringConvertible.init(_:) in conformance _Int128@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = HIBYTE(a2) & 0xF;
  v6 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {

    goto LABEL_77;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v15 = specialized _parseInteger<A, B>(ascii:radix:)(result, a2, 10);
    v16 = v57;
    v55 = v58;
LABEL_76:

    if ((v55 & 1) == 0)
    {
      v56 = 0;
      goto LABEL_79;
    }

LABEL_77:
    v15 = 0;
    v16 = 0;
    v56 = 1;
LABEL_79:
    *a3 = v15;
    *(a3 + 8) = v16;
    *(a3 + 16) = v56;
    return result;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
    }

    v8 = *result;
    if (v8 == 43)
    {
      v9 = v6-- < 1;
      if (v9)
      {
LABEL_85:
        __break(1u);
        goto LABEL_86;
      }

      if (result)
      {
        ++result;
      }

      else
      {
        result = 0;
      }
    }

    else if (v8 == 45)
    {
      v9 = v6-- < 1;
      if (!v9)
      {
        if (result)
        {
          ++result;
        }

        else
        {
          result = 0;
        }

        v10 = 1;
        goto LABEL_40;
      }

      __break(1u);
      goto LABEL_84;
    }

    v10 = 0;
LABEL_40:
    v15 = specialized _parseIntegerDigits<A>(ascii:radix:isNegative:)(result, v6, 10, v10);
    v16 = v27;
    v29 = v28 & 1;
LABEL_75:
    v60 = v29;
    v55 = v29;
    goto LABEL_76;
  }

  v59[0] = result;
  v59[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result == 45)
    {
      if (!v5)
      {
LABEL_84:
        __break(1u);
        goto LABEL_85;
      }

      v11 = v5 - 1;
      if (v11)
      {
        v12 = specialized static _Int128.&<< infix(_:_:)(10, 0, 0);
        v14 = v13;
        v15 = 0;
        v16 = 0;
        v17 = v59 + 1;
        while (1)
        {
          v18 = *v17 - 48;
          if (v18 > 9)
          {
            break;
          }

          v19 = _ss17FixedWidthIntegerPsE15_truncatingInityxqd__SzRd__lFZ4VDAF7_Int128V_s5UInt8VTt1gq5(v18);
          v21 = v20;
          v22 = _Int128.multipliedReportingOverflow(by:)(v12, v14, v15, v16);
          v25 = v23 - v21;
          v26 = __OFSUB__(v23, v21);
          v15 = v22 - v19;
          if (v22 >= v19)
          {
            v16 = v23 - v21;
            if (v26)
            {
              break;
            }
          }

          else
          {
            if (v26)
            {
              break;
            }

            v16 = v25 - 1;
          }

          if (v25 == 0x8000000000000000)
          {
            if (v24 & 1 | (v22 < v19))
            {
              break;
            }
          }

          else if (v24)
          {
            break;
          }

          ++v17;
          if (!--v11)
          {
            goto LABEL_73;
          }
        }
      }
    }

    else if (v5)
    {
      v43 = specialized static _Int128.&<< infix(_:_:)(10, 0, 0);
      v45 = v44;
      v15 = 0;
      v16 = 0;
      v46 = v59;
      while (1)
      {
        v47 = *v46 - 48;
        if (v47 > 9)
        {
          break;
        }

        v48 = _ss17FixedWidthIntegerPsE15_truncatingInityxqd__SzRd__lFZ4VDAF7_Int128V_s5UInt8VTt1gq5(v47);
        v50 = v49;
        v51 = _Int128.multipliedReportingOverflow(by:)(v43, v45, v15, v16);
        v15 = v51 + v48;
        v54 = __CFADD__(v51, v48);
        v16 = v52 + v50;
        if (__OFADD__(v52, v50))
        {
          break;
        }

        if (v16 == 0x7FFFFFFFFFFFFFFFLL)
        {
          if ((v54 | v53))
          {
            break;
          }

          v16 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else if (v54)
        {
          if (v53)
          {
            break;
          }

          ++v16;
        }

        else if (v53)
        {
          break;
        }

        ++v46;
        if (!--v5)
        {
          goto LABEL_73;
        }
      }
    }

LABEL_74:
    v15 = 0;
    v16 = 0;
    v29 = 1;
    goto LABEL_75;
  }

  if (v5)
  {
    v30 = v5 - 1;
    if (v30)
    {
      v31 = specialized static _Int128.&<< infix(_:_:)(10, 0, 0);
      v33 = v32;
      v15 = 0;
      v16 = 0;
      v34 = v59 + 1;
      while (1)
      {
        v35 = *v34 - 48;
        if (v35 > 9)
        {
          break;
        }

        v36 = _ss17FixedWidthIntegerPsE15_truncatingInityxqd__SzRd__lFZ4VDAF7_Int128V_s5UInt8VTt1gq5(v35);
        v38 = v37;
        v39 = _Int128.multipliedReportingOverflow(by:)(v31, v33, v15, v16);
        v15 = v39 + v36;
        v42 = __CFADD__(v39, v36);
        v16 = v40 + v38;
        if (__OFADD__(v40, v38))
        {
          break;
        }

        if (v16 == 0x7FFFFFFFFFFFFFFFLL)
        {
          if ((v42 | v41))
          {
            goto LABEL_74;
          }

          v16 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else if (v42)
        {
          if (v41)
          {
            goto LABEL_74;
          }

          ++v16;
        }

        else if (v41)
        {
          goto LABEL_74;
        }

        ++v34;
        if (!--v30)
        {
LABEL_73:
          v29 = 0;
          goto LABEL_75;
        }
      }
    }

    goto LABEL_74;
  }

LABEL_86:
  __break(1u);
  return result;
}

unint64_t protocol witness for Strideable.distance(to:) in conformance _Int128@<X0>(unint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  result = *v2;
  v7 = v2[1];
  if (!v7)
  {
    if (v4 < 0)
    {
      LOBYTE(v8) = 0;
      goto LABEL_25;
    }

LABEL_8:
    v9 = __OFSUB__(v4, v7);
    v4 -= v7;
    v10 = v9;
    v11 = v5 - result;
    if (v5 >= result)
    {
      if ((v10 & 1) == 0)
      {
LABEL_17:
        result = specialized static _Int128.&<< infix(_:_:)(0x7FFFFFFFFFFFFFFFLL, 0, 0);
        v13 = v11 < ~result;
        if (v4 != ~v12)
        {
          v13 = v4 < ~v12;
        }

        if (!v13)
        {
          result = specialized static _Int128.&<< infix(_:_:)(0x7FFFFFFFFFFFFFFFLL, 0, 0);
          v14 = result < v11;
          if (v7 != v4)
          {
            v14 = v7 < v4;
          }

          if (!v14)
          {
            goto LABEL_31;
          }

          __break(1u);
          goto LABEL_24;
        }

LABEL_33:
        __break(1u);
        goto LABEL_34;
      }
    }

    else
    {
      if (v4 == 0x8000000000000000)
      {
        v10 = 1;
      }

      if ((v10 & 1) == 0)
      {
        --v4;
        goto LABEL_17;
      }
    }

    __break(1u);
    goto LABEL_33;
  }

  if (v4)
  {
    if ((v7 ^ v4) < 0)
    {
      v8 = v7 >> 63;
      goto LABEL_25;
    }

    goto LABEL_8;
  }

  if ((v7 & 0x8000000000000000) == 0)
  {
    goto LABEL_8;
  }

LABEL_24:
  LOBYTE(v8) = 1;
LABEL_25:
  _Int128.magnitude.getter(result, v7, &v20);
  _Int128.magnitude.getter(v5, v4, &v19);
  v17[0] = v19;
  v17[1] = v20;
  result = _UInt128.addingReportingOverflow(_:)(v18, v17);
  if (result)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v11 = v18[0];
  v15 = v18[1];
  result = _ss17FixedWidthIntegerPsE15_truncatingInityxqd__SzRd__lFZ4VDAF8_UInt128V_SiTt1g5(0x7FFFFFFFFFFFFFFFLL, &v20);
  v16 = v20 < v11;
  if (*(&v20 + 1) != v15)
  {
    v16 = *(&v20 + 1) < v15;
  }

  if (v16)
  {
    goto LABEL_35;
  }

  if ((v8 & 1) != 0 || (v9 = __OFSUB__(0, v11), v11 = -v11, !v9))
  {
LABEL_31:
    *a2 = v11;
    return result;
  }

LABEL_36:
  __break(1u);
  return result;
}

void protocol witness for Strideable.advanced(by:) in conformance _Int128(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v6 = *v2;
  v5 = v2[1];
  _ss17FixedWidthIntegerPsE15_truncatingInityxqd__SzRd__lFZ4VDAF7_Int128V_SiTt1gq5();
  v9 = __CFADD__(v6, v7);
  v10 = v5 + v8;
  if (__OFADD__(v5, v8) || (v9 ? (v11 = v10 == 0x7FFFFFFFFFFFFFFFLL) : (v11 = 0), v11))
  {
    __break(1u);
  }

  else
  {
    *a2 = v6 + v7;
    a2[1] = v10 + v9;
  }
}

unint64_t _sSxss17FixedWidthIntegerRzSZRzrlE5_step5after4from2bySiSg5index_x5valuetAfG_xAHt_x6StrideSxQztFZ4VDAF7_Int128V_Tt2t4gq5(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a4 + a6;
  v7 = __CFADD__(a4, a6);
  v8 = a5 + (a6 >> 63);
  if (__OFADD__(a5, a6 >> 63))
  {
    goto LABEL_6;
  }

  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = 0;
    v9 = v8 + v7;
    goto LABEL_11;
  }

  if (v7)
  {
LABEL_6:
    v6 = ~a6 >> 63;
    v9 = (a6 >> 63) ^ 0x7FFFFFFFFFFFFFFFLL;
    v10 = 0x8000000000000000;
  }

  else
  {
    v10 = 0;
    v9 = 0x7FFFFFFFFFFFFFFFLL;
  }

LABEL_11:
  *a1 = v6;
  a1[1] = v9;
  return v10;
}

uint64_t *protocol witness for static SignedNumeric.- prefix(_:) in conformance _Int128@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X8>)
{
  v3 = *result;
  v2 = result[1];
  v4 = __OFSUB__(0, v2);
  v5 = -v2;
  v6 = v4;
  v7 = v3 == 0;
  v8 = -v3;
  if (v7)
  {
    if ((v6 & 1) == 0)
    {
      *a2 = v8;
      a2[1] = v5;
      return result;
    }
  }

  else
  {
    if (v5 == 0x8000000000000000)
    {
      v6 = 1;
    }

    if ((v6 & 1) == 0)
    {
      *a2 = v8;
      a2[1] = v5 - 1;
      return result;
    }
  }

  __break(1u);
  return result;
}

void protocol witness for SignedNumeric.negate() in conformance _Int128()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = __OFSUB__(0, v1);
  v4 = -v1;
  v5 = v3;
  v6 = v2 == 0;
  v7 = -v2;
  if (v6)
  {
    if ((v5 & 1) == 0)
    {
      *v0 = v7;
      v0[1] = v4;
      return;
    }
  }

  else
  {
    if (v4 == 0x8000000000000000)
    {
      v5 = 1;
    }

    if ((v5 & 1) == 0)
    {
      *v0 = v7;
      v0[1] = v4 - 1;
      return;
    }
  }

  __break(1u);
}

uint64_t protocol witness for static SignedInteger._maskingAdd(_:_:) in conformance _Int128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = lazy protocol witness table accessor for type _Int128 and conformance _Int128();

  return MEMORY[0x2821FC230](a1, a2, a3, v8, a4);
}

uint64_t protocol witness for static SignedInteger._maskingSubtract(_:_:) in conformance _Int128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = lazy protocol witness table accessor for type _Int128 and conformance _Int128();

  return MEMORY[0x2821FC238](a1, a2, a3, v8, a4);
}

uint64_t _Int128.dividedBy1e18()(unint64_t a1, unint64_t a2)
{
  v3 = _Int128.multipliedFullWidth(by:)(&v10, 0x73AFF322E62439FDuLL, 0x9392EE8E921D5D0, a1, a2);
  *(&v6 + 1) = v4;
  *&v6 = v3;
  v5 = v6 >> 55;
  v7 = v5 + (a2 >> 63);
  if (__CFADD__(v5, a2 >> 63))
  {
    v8 = (v4 >> 55) + 1;
  }

  else
  {
    v8 = v4 >> 55;
  }

  _Int128.multipliedReportingOverflow(by:)(v5 + (a2 >> 63), v8, 0xDE0B6B3A7640000uLL, 0);
  return v7;
}

uint64_t _Int128.dividedBy1e15()(unint64_t a1, unint64_t a2)
{
  v4 = _Int128.multipliedFullWidth(by:)(&v10, 0xF9D37014BF60A11uLL, 0x901D7CF73AB0ACD9, a1, a2);
  v6 = (__PAIR128__(v5, v4) + __PAIR128__(a2, a1)) >> 49;
  v7 = v6 + (a2 >> 63);
  if (__CFADD__(v6, a2 >> 63))
  {
    v8 = (((__PAIR128__(v5, v4) + __PAIR128__(a2, a1)) >> 64) >> 49) + 1;
  }

  else
  {
    v8 = ((__PAIR128__(v5, v4) + __PAIR128__(a2, a1)) >> 64) >> 49;
  }

  _Int128.multipliedReportingOverflow(by:)(v6 + (a2 >> 63), v8, 0x38D7EA4C68000uLL, 0);
  return v7;
}

uint64_t _Int128.dividedBy1e12()(unint64_t a1, unint64_t a2)
{
  v3 = _Int128.multipliedFullWidth(by:)(&v10, 0xFE4FE1EDD10B9175, 0x232F33025BD42232, a1, a2);
  *(&v6 + 1) = v4;
  *&v6 = v3;
  v5 = v6 >> 37;
  v7 = v5 + (a2 >> 63);
  if (__CFADD__(v5, a2 >> 63))
  {
    v8 = (v4 >> 37) + 1;
  }

  else
  {
    v8 = v4 >> 37;
  }

  _Int128.multipliedReportingOverflow(by:)(v5 + (a2 >> 63), v8, 0xE8D4A51000uLL, 0);
  return v7;
}

uint64_t _Int128.dividedBy1e9()(unint64_t a1, unint64_t a2)
{
  v3 = _Int128.multipliedFullWidth(by:)(&v10, 0x98B405447C4A9819, 0x44B82FA09B5A52CBLL, a1, a2);
  *(&v6 + 1) = v4;
  *&v6 = v3;
  v5 = v6 >> 28;
  v7 = v5 + (a2 >> 63);
  if (__CFADD__(v5, a2 >> 63))
  {
    v8 = (v4 >> 28) + 1;
  }

  else
  {
    v8 = v4 >> 28;
  }

  _Int128.multipliedReportingOverflow(by:)(v5 + (a2 >> 63), v8, 0x3B9ACA00uLL, 0);
  return v7;
}

uint64_t _Int128.dividedBy1e6()(unint64_t a1, unint64_t a2)
{
  v3 = _Int128.multipliedFullWidth(by:)(&v10, 0x5A63F9A49C2C1B11uLL, 0x8637BD05AF6C69BLL, a1, a2);
  *(&v6 + 1) = v4;
  *&v6 = v3;
  v5 = v6 >> 15;
  v7 = v5 + (a2 >> 63);
  if (__CFADD__(v5, a2 >> 63))
  {
    v8 = (v4 >> 15) + 1;
  }

  else
  {
    v8 = v4 >> 15;
  }

  _Int128.multipliedReportingOverflow(by:)(v5 + (a2 >> 63), v8, 0xF4240uLL, 0);
  return v7;
}

uint64_t _Int128.dividedBy1e3()(unint64_t a1, unint64_t a2)
{
  v3 = _Int128.multipliedFullWidth(by:)(&v10, 0xB22D0E5604189375, 0x4189374BC6A7EF9DLL, a1, a2);
  *(&v6 + 1) = v4;
  *&v6 = v3;
  v5 = v6 >> 8;
  v7 = v5 + (a2 >> 63);
  if (__CFADD__(v5, a2 >> 63))
  {
    v8 = (v4 >> 8) + 1;
  }

  else
  {
    v8 = v4 >> 8;
  }

  _Int128.multipliedReportingOverflow(by:)(v5 + (a2 >> 63), v8, 0x3E8uLL, 0);
  return v7;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSu_Tt1g5(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySuGMd, &_ss23_ContiguousArrayStorageCySuGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC4VDAF8BitMasksC_Tt1g5(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, "Vq");
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi3key_Say4VDAF4LeafVyAG7Field32VGG5valuet_Tt1g5(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi3key_Say4VDAF4LeafVyAD7Field32VGG5valuetGMd, &_ss23_ContiguousArrayStorageCySi3key_Say4VDAF4LeafVyAD7Field32VGG5valuetGMR);
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

void *specialized Sequence._copySequenceContents(initializing:)(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (v12 << 9) | (8 * __clz(__rbit64(v9)));
      v18 = *(*(a4 + 56) + v17);
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 48) + v17);
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t specialized _parseIntegerDigits<A>(ascii:radix:isNegative:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  if (a2)
  {
    v7 = a2;
    v8 = result;
    if (a3 <= 10)
    {
      v9 = 97;
    }

    else
    {
      v9 = a3 + 87;
    }

    if (a3 <= 10)
    {
      v10 = 65;
    }

    else
    {
      v10 = a3 + 55;
    }

    if (a3 <= 10)
    {
      v11 = a3 + 48;
    }

    else
    {
      v11 = 58;
    }

    result = _ss17FixedWidthIntegerPsE15_truncatingInityxqd__SzRd__lFZ4VDAF8_UInt128V_SiTt1g5(a3, &v35);
    if (v8)
    {
      v34 = v9;
      v12 = 0;
      v13 = 0;
      v14 = v35;
      while (1)
      {
        v15 = *v8;
        result = v15 - 48;
        if (v15 < 0x30 || v15 >= v11)
        {
          if (v15 < 0x41 || v15 >= v10)
          {
            if (v15 < 0x61 || v15 >= v34)
            {
              goto LABEL_60;
            }

            result = v15 - 87;
          }

          else
          {
            result = v15 - 55;
          }
        }

        result = _ss17FixedWidthIntegerPsE15_truncatingInityxqd__SzRd__lFZ4VDAF8_UInt128V_s5UInt8VTt1g5(result, &v35);
        v16 = !is_mul_ok(v13, v14);
        v17 = !is_mul_ok(v12, *(&v14 + 1));
        v18 = __CFADD__(v13 * v14, v12 * *(&v14 + 1));
        v19 = (v14 * __PAIR128__(v13, v12)) >> 64;
        v20 = __CFADD__(v13 * v14 + v12 * *(&v14 + 1), (v12 * v14) >> 64);
        if (*(&v14 + 1))
        {
          v21 = v13 == 0;
        }

        else
        {
          v21 = 1;
        }

        v22 = 1;
        if (v21)
        {
          v23 = v17 || v18 || v20;
          if (v16)
          {
            v22 = 1;
          }

          else
          {
            v22 = v23;
          }
        }

        v24 = v12 * v14;
        if (a4)
        {
          v25 = v19 >= *(&v35 + 1);
          v26 = v19 - *(&v35 + 1);
          v27 = !v25;
          v25 = v24 >= v35;
          v12 = v24 - v35;
          v28 = v24 < v35;
          if (v25)
          {
            v13 = v26;
            if (v27)
            {
              goto LABEL_60;
            }
          }

          else
          {
            if (v27)
            {
              goto LABEL_60;
            }

            v13 = v26 - 1;
          }

          if (v26)
          {
            v33 = 0;
          }

          else
          {
            v33 = v28;
          }

          if ((v22 | v33))
          {
            goto LABEL_60;
          }
        }

        else
        {
          v12 = v24 + v35;
          v29 = __CFADD__(v24, v35);
          v30 = v19 + *(&v35 + 1);
          v32 = __CFADD__(v19, *(&v35 + 1)) || v30 == -1 && v29;
          v13 = v30 + v29;
          if ((v22 | v32))
          {
            goto LABEL_60;
          }
        }

        ++v8;
        if (!--v7)
        {
          goto LABEL_62;
        }
      }
    }

    v12 = 0;
    v13 = 0;
LABEL_62:
    *a5 = v12;
    *(a5 + 8) = v13;
    *(a5 + 16) = 0;
  }

  else
  {
LABEL_60:
    *a5 = 0;
    *(a5 + 8) = 0;
    *(a5 + 16) = 1;
  }

  return result;
}

unint64_t specialized _parseIntegerDigits<A>(ascii:radix:isNegative:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (!a2)
  {
    return 0;
  }

  v5 = a2;
  v7 = a3 + 55;
  if (a3 <= 10)
  {
    v8 = 97;
  }

  else
  {
    v8 = a3 + 87;
  }

  if (a3 <= 10)
  {
    v7 = 65;
  }

  v33 = v7;
  if (a3 <= 10)
  {
    v9 = a3 + 48;
  }

  else
  {
    v9 = 58;
  }

  _ss17FixedWidthIntegerPsE15_truncatingInityxqd__SzRd__lFZ4VDAF7_Int128V_SiTt1gq5();
  if (a1)
  {
    v12 = v10;
    v13 = v11;
    v32 = v8;
    v14 = 0;
    v15 = 0;
    while (1)
    {
      v16 = *a1;
      if (v16 < 0x30 || v16 >= v9)
      {
        if (v16 < 0x41 || v16 >= v33)
        {
          result = 0;
          if (v16 < 0x61 || v16 >= v32)
          {
            return result;
          }

          v17 = 169;
        }

        else
        {
          v17 = 201;
        }
      }

      else
      {
        v17 = 208;
      }

      v19 = _ss17FixedWidthIntegerPsE15_truncatingInityxqd__SzRd__lFZ4VDAF7_Int128V_s5UInt8VTt1gq5(v16 + v17);
      v21 = v20;
      v22 = _Int128.multipliedReportingOverflow(by:)(v12, v13, v14, v15);
      if (a4)
      {
        v25 = v23 - v21;
        v26 = __OFSUB__(v23, v21);
        v14 = v22 - v19;
        if (v22 >= v19)
        {
          v15 = v23 - v21;
          if (v26)
          {
            return 0;
          }
        }

        else
        {
          if (v26)
          {
            return 0;
          }

          v15 = v25 - 1;
        }

        v31 = v25 == 0x8000000000000000 && v22 < v19;
        if ((v24 | v31))
        {
          return 0;
        }
      }

      else
      {
        v14 = v22 + v19;
        v27 = __CFADD__(v22, v19);
        v28 = v23 + v21;
        v30 = __OFADD__(v23, v21) || v28 == 0x7FFFFFFFFFFFFFFFLL && v27;
        v15 = v28 + v27;
        if ((v24 | v30))
        {
          return 0;
        }
      }

      ++a1;
      if (!--v5)
      {
        return v14;
      }
    }
  }

  return 0;
}

unsigned __int8 *specialized _parseInteger<A, B>(ascii:radix:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v18 = a1;
  v19 = a2;

  result = String.init<A>(_:)();
  v8 = result;
  v9 = v7;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = static String._copying(_:)();
    v14 = v13;

    v9 = v14;
    if ((v14 & 0x2000000000000000) == 0)
    {
LABEL_3:
      if ((v8 & 0x1000000000000000) != 0)
      {
        result = ((v9 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v10 = v8 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        result = _StringObject.sharedUTF8.getter();
      }

      v11 = *result;
      if (v11 == 43)
      {
        v12 = v10-- < 1;
        if (v12)
        {
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

        if (result)
        {
          ++result;
        }

        else
        {
          result = 0;
        }
      }

      else if (v11 == 45)
      {
        v12 = v10-- < 1;
        if (!v12)
        {
          if (result)
          {
            ++result;
          }

          else
          {
            result = 0;
          }

          goto LABEL_20;
        }

        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      goto LABEL_24;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
    goto LABEL_3;
  }

  v10 = HIBYTE(v9) & 0xF;
  v18 = v8;
  v19 = v9 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 == 45)
    {
      if (v10)
      {
        --v10;
        result = &v18 + 1;
LABEL_20:
        v15 = a4;
        v16 = a3;
        v17 = 1;
LABEL_25:
        specialized _parseIntegerDigits<A>(ascii:radix:isNegative:)(result, v10, v16, v17, v15);
      }

      goto LABEL_28;
    }

    result = &v18;
LABEL_24:
    v15 = a4;
    v16 = a3;
    v17 = 0;
    goto LABEL_25;
  }

  if (v10)
  {
    --v10;
    result = &v18 + 1;
    goto LABEL_24;
  }

LABEL_30:
  __break(1u);
  return result;
}

uint64_t specialized _parseInteger<A, B>(ascii:radix:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v145 = a1;
  v146 = a2;

  result = String.init<A>(_:)();
  if ((v5 & 0x1000000000000000) != 0)
  {
    v69 = static String._copying(_:)();
    v71 = v70;

    result = v69;
    v5 = v71;
    if ((v71 & 0x2000000000000000) == 0)
    {
LABEL_3:
      if ((result & 0x1000000000000000) != 0)
      {
        v6 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v7 = result & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        result = _StringObject.sharedUTF8.getter();
        v6 = result;
        v7 = v132;
      }

      v8 = *v6;
      if (v8 == 43)
      {
        if (v7 < 1)
        {
LABEL_213:
          __break(1u);
          goto LABEL_214;
        }

        v31 = v7 - 1;
        if (v7 == 1)
        {
          goto LABEL_207;
        }

        v32 = a3 + 48;
        if (a3 <= 10)
        {
          v33 = 97;
        }

        else
        {
          v33 = a3 + 87;
        }

        if (a3 <= 10)
        {
          v34 = 65;
        }

        else
        {
          v34 = a3 + 55;
        }

        if (a3 > 10)
        {
          v32 = 58;
        }

        v136 = v34;
        v140 = v32;
        _ss17FixedWidthIntegerPsE15_truncatingInityxqd__SzRd__lFZ4VDAF7_Int128V_SiTt1gq5();
        if (v6)
        {
          v37 = v35;
          v38 = v36;
          v39 = 0;
          v40 = 0;
          v41 = v6 + 1;
          while (1)
          {
            v60 = *v41;
            if (v60 < 0x30 || v60 >= v140)
            {
              if (v60 < 0x41 || v60 >= v136)
              {
                v22 = 0;
                if (v60 < 0x61 || v60 >= v33)
                {
                  goto LABEL_208;
                }

                v61 = 169;
              }

              else
              {
                v61 = 201;
              }
            }

            else
            {
              v61 = 208;
            }

            v62 = _ss17FixedWidthIntegerPsE15_truncatingInityxqd__SzRd__lFZ4VDAF7_Int128V_s5UInt8VTt1gq5(v60 + v61);
            v64 = v63;
            v65 = _Int128.multipliedReportingOverflow(by:)(v37, v38, v39, v40);
            v39 = v65 + v62;
            v68 = __CFADD__(v65, v62);
            v40 = v66 + v64;
            if (__OFADD__(v66, v64))
            {
              goto LABEL_207;
            }

            if (v40 == 0x7FFFFFFFFFFFFFFFLL)
            {
              if ((v68 | v67))
              {
                goto LABEL_207;
              }

              v40 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else if (v68)
            {
              if (v67)
              {
                goto LABEL_207;
              }

              ++v40;
            }

            else if (v67)
            {
              goto LABEL_207;
            }

            ++v41;
            if (!--v31)
            {
              v22 = v65 + v62;
              goto LABEL_208;
            }
          }
        }
      }

      else
      {
        if (v8 == 45)
        {
          if (v7 >= 1)
          {
            v9 = v7 - 1;
            if (v7 != 1)
            {
              v10 = a3 + 48;
              if (a3 <= 10)
              {
                v11 = 97;
              }

              else
              {
                v11 = a3 + 87;
              }

              if (a3 <= 10)
              {
                v12 = 65;
              }

              else
              {
                v12 = a3 + 55;
              }

              if (a3 > 10)
              {
                v10 = 58;
              }

              v135 = v12;
              v139 = v10;
              _ss17FixedWidthIntegerPsE15_truncatingInityxqd__SzRd__lFZ4VDAF7_Int128V_SiTt1gq5();
              if (v6)
              {
                v15 = v13;
                v16 = v14;
                v133 = v11;
                v17 = 0;
                v18 = 0;
                v19 = v6 + 1;
                do
                {
                  v20 = *v19;
                  if (v20 < 0x30 || v20 >= v139)
                  {
                    if (v20 < 0x41 || v20 >= v135)
                    {
                      v22 = 0;
                      if (v20 < 0x61 || v20 >= v133)
                      {
                        goto LABEL_208;
                      }

                      v21 = 169;
                    }

                    else
                    {
                      v21 = 201;
                    }
                  }

                  else
                  {
                    v21 = 208;
                  }

                  v23 = _ss17FixedWidthIntegerPsE15_truncatingInityxqd__SzRd__lFZ4VDAF7_Int128V_s5UInt8VTt1gq5(v20 + v21);
                  v25 = v24;
                  v26 = _Int128.multipliedReportingOverflow(by:)(v15, v16, v17, v18);
                  v29 = v27 - v25;
                  v30 = __OFSUB__(v27, v25);
                  v17 = v26 - v23;
                  if (v26 >= v23)
                  {
                    v18 = v27 - v25;
                    if (v30)
                    {
                      goto LABEL_207;
                    }
                  }

                  else
                  {
                    if (v30)
                    {
                      goto LABEL_207;
                    }

                    v18 = v29 - 1;
                  }

                  if (v29 == 0x8000000000000000)
                  {
                    if (v28 & 1 | (v26 < v23))
                    {
                      goto LABEL_207;
                    }
                  }

                  else if (v28)
                  {
                    goto LABEL_207;
                  }

                  ++v19;
                  v22 = v26 - v23;
                  --v9;
                }

                while (v9);
                goto LABEL_208;
              }

              goto LABEL_64;
            }

LABEL_207:
            v22 = 0;
            goto LABEL_208;
          }

          __break(1u);
          goto LABEL_212;
        }

        if (!v7)
        {
          goto LABEL_207;
        }

        v42 = a3 + 48;
        if (a3 <= 10)
        {
          v43 = 97;
        }

        else
        {
          v43 = a3 + 87;
        }

        if (a3 <= 10)
        {
          v44 = 65;
        }

        else
        {
          v44 = a3 + 55;
        }

        if (a3 > 10)
        {
          v42 = 58;
        }

        v137 = v44;
        v141 = v42;
        _ss17FixedWidthIntegerPsE15_truncatingInityxqd__SzRd__lFZ4VDAF7_Int128V_SiTt1gq5();
        if (v6)
        {
          v47 = v45;
          v48 = v46;
          v49 = 0;
          v50 = 0;
          while (1)
          {
            v51 = *v6;
            if (v51 < 0x30 || v51 >= v141)
            {
              if (v51 < 0x41 || v51 >= v137)
              {
                v22 = 0;
                if (v51 < 0x61 || v51 >= v43)
                {
                  goto LABEL_208;
                }

                v52 = 169;
              }

              else
              {
                v52 = 201;
              }
            }

            else
            {
              v52 = 208;
            }

            v53 = _ss17FixedWidthIntegerPsE15_truncatingInityxqd__SzRd__lFZ4VDAF7_Int128V_s5UInt8VTt1gq5(v51 + v52);
            v55 = v54;
            v56 = _Int128.multipliedReportingOverflow(by:)(v47, v48, v49, v50);
            v49 = v56 + v53;
            v59 = __CFADD__(v56, v53);
            v50 = v57 + v55;
            if (__OFADD__(v57, v55))
            {
              goto LABEL_207;
            }

            if (v50 == 0x7FFFFFFFFFFFFFFFLL)
            {
              if ((v59 | v58))
              {
                goto LABEL_207;
              }

              v50 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else if (v59)
            {
              if (v58)
              {
                goto LABEL_207;
              }

              ++v50;
            }

            else if (v58)
            {
              goto LABEL_207;
            }

            ++v6;
            if (!--v7)
            {
              v22 = v56 + v53;
              goto LABEL_208;
            }
          }
        }
      }

LABEL_64:
      v22 = 0;
LABEL_208:

      return v22;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
    goto LABEL_3;
  }

  v72 = HIBYTE(v5) & 0xF;
  v145 = result;
  v146 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v72)
      {
        v114 = a3 + 55;
        if (a3 <= 10)
        {
          v115 = 97;
        }

        else
        {
          v115 = a3 + 87;
        }

        if (a3 <= 10)
        {
          v114 = 65;
        }

        v144 = v114;
        if (a3 <= 10)
        {
          v116 = a3 + 48;
        }

        else
        {
          v116 = 58;
        }

        _ss17FixedWidthIntegerPsE15_truncatingInityxqd__SzRd__lFZ4VDAF7_Int128V_SiTt1gq5();
        v118 = v117;
        v120 = v119;
        v103 = 0;
        v121 = 0;
        v122 = &v145;
        while (1)
        {
          v123 = *v122;
          if (v123 < 0x30 || v123 >= v116)
          {
            if (v123 < 0x41 || v123 >= v144)
            {
              v22 = 0;
              if (v123 < 0x61 || v123 >= v115)
              {
                goto LABEL_208;
              }

              v124 = 169;
            }

            else
            {
              v124 = 201;
            }
          }

          else
          {
            v124 = 208;
          }

          v125 = _ss17FixedWidthIntegerPsE15_truncatingInityxqd__SzRd__lFZ4VDAF7_Int128V_s5UInt8VTt1gq5(v123 + v124);
          v127 = v126;
          v128 = _Int128.multipliedReportingOverflow(by:)(v118, v120, v103, v121);
          v103 = v128 + v125;
          v131 = __CFADD__(v128, v125);
          v121 = v129 + v127;
          if (__OFADD__(v129, v127))
          {
            break;
          }

          if (v121 == 0x7FFFFFFFFFFFFFFFLL)
          {
            if ((v131 | v130))
            {
              goto LABEL_207;
            }

            v121 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else if (v131)
          {
            if (v130)
            {
              goto LABEL_207;
            }

            ++v121;
          }

          else if (v130)
          {
            goto LABEL_207;
          }

          v122 = (v122 + 1);
          if (!--v72)
          {
            goto LABEL_209;
          }
        }
      }

      goto LABEL_207;
    }

    if (v72)
    {
      v73 = v72 - 1;
      if (v73)
      {
        v74 = a3 + 48;
        v75 = a3 + 87;
        if (a3 <= 10)
        {
          v75 = 97;
        }

        v134 = v75;
        if (a3 <= 10)
        {
          v76 = 65;
        }

        else
        {
          v76 = a3 + 55;
        }

        if (a3 > 10)
        {
          v74 = 58;
        }

        v138 = v76;
        v142 = v74;
        v77 = &v145 + 1;
        _ss17FixedWidthIntegerPsE15_truncatingInityxqd__SzRd__lFZ4VDAF7_Int128V_SiTt1gq5();
        v79 = v78;
        v81 = v80;
        v82 = 0;
        v83 = 0;
        do
        {
          v84 = *v77;
          if (v84 < 0x30 || v84 >= v142)
          {
            if (v84 < 0x41 || v84 >= v138)
            {
              v22 = 0;
              if (v84 < 0x61 || v84 >= v134)
              {
                goto LABEL_208;
              }

              v85 = 169;
            }

            else
            {
              v85 = 201;
            }
          }

          else
          {
            v85 = 208;
          }

          v86 = _ss17FixedWidthIntegerPsE15_truncatingInityxqd__SzRd__lFZ4VDAF7_Int128V_s5UInt8VTt1gq5(v84 + v85);
          v88 = v87;
          v89 = _Int128.multipliedReportingOverflow(by:)(v79, v81, v82, v83);
          v92 = v90 - v88;
          v93 = __OFSUB__(v90, v88);
          v82 = v89 - v86;
          if (v89 >= v86)
          {
            v83 = v90 - v88;
            if (v93)
            {
              goto LABEL_207;
            }
          }

          else
          {
            if (v93)
            {
              goto LABEL_207;
            }

            v83 = v92 - 1;
          }

          if (v92 == 0x8000000000000000)
          {
            if (v91 & 1 | (v89 < v86))
            {
              goto LABEL_207;
            }
          }

          else if (v91)
          {
            goto LABEL_207;
          }

          ++v77;
          v22 = v89 - v86;
          --v73;
        }

        while (v73);
        goto LABEL_208;
      }

      goto LABEL_207;
    }

LABEL_212:
    __break(1u);
    goto LABEL_213;
  }

  if (v72)
  {
    v94 = v72 - 1;
    if (v94)
    {
      v95 = a3 + 55;
      if (a3 <= 10)
      {
        v96 = 97;
      }

      else
      {
        v96 = a3 + 87;
      }

      if (a3 <= 10)
      {
        v95 = 65;
      }

      v143 = v95;
      if (a3 <= 10)
      {
        v97 = a3 + 48;
      }

      else
      {
        v97 = 58;
      }

      v98 = &v145 + 1;
      _ss17FixedWidthIntegerPsE15_truncatingInityxqd__SzRd__lFZ4VDAF7_Int128V_SiTt1gq5();
      v100 = v99;
      v102 = v101;
      v103 = 0;
      v104 = 0;
      while (1)
      {
        v105 = *v98;
        if (v105 < 0x30 || v105 >= v97)
        {
          if (v105 < 0x41 || v105 >= v143)
          {
            v22 = 0;
            if (v105 < 0x61 || v105 >= v96)
            {
              goto LABEL_208;
            }

            v106 = 169;
          }

          else
          {
            v106 = 201;
          }
        }

        else
        {
          v106 = 208;
        }

        v107 = _ss17FixedWidthIntegerPsE15_truncatingInityxqd__SzRd__lFZ4VDAF7_Int128V_s5UInt8VTt1gq5(v105 + v106);
        v109 = v108;
        v110 = _Int128.multipliedReportingOverflow(by:)(v100, v102, v103, v104);
        v103 = v110 + v107;
        v113 = __CFADD__(v110, v107);
        v104 = v111 + v109;
        if (__OFADD__(v111, v109))
        {
          break;
        }

        if (v104 == 0x7FFFFFFFFFFFFFFFLL)
        {
          if ((v113 | v112))
          {
            goto LABEL_207;
          }

          v104 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else if (v113)
        {
          if (v112)
          {
            goto LABEL_207;
          }

          ++v104;
        }

        else if (v112)
        {
          goto LABEL_207;
        }

        ++v98;
        if (!--v94)
        {
LABEL_209:
          v22 = v103;
          goto LABEL_208;
        }
      }
    }

    goto LABEL_207;
  }

LABEL_214:
  __break(1u);
  return result;
}

uint64_t static String._copying(_:)()
{
  v0 = String.subscript.getter();
  v4 = static String._copying(_:)(v0, v1, v2, v3);

  return v4;
}

uint64_t static String._copying(_:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = Substring.UTF8View.distance(from:to:)();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1g5(v9, 0);
  v12 = specialized Sequence._copySequenceContents(initializing:)(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = static String._uncheckedFromUTF8(_:)();

    return v14;
  }

  __break(1u);
LABEL_11:
  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t specialized Sequence._copySequenceContents(initializing:)(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}