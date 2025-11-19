uint64_t _StringGuts._slowEnsureMatchingEncoding(_:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x2743B2610](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unint64_t specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(unint64_t result, uint64_t a2, unint64_t a3)
{
  if (result > 2 || a3 > 2)
  {
    __break(1u);
    goto LABEL_14;
  }

  v3 = a3 - result;
  if (a2 >= 1)
  {
    if (v3 < 0 || v3 >= a2)
    {
      goto LABEL_10;
    }

    return 0;
  }

  if (v3 <= 0 && v3 > a2)
  {
    return 0;
  }

LABEL_10:
  v4 = __OFADD__(result, a2);
  result += a2;
  if (v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (result > 2)
  {
LABEL_15:
    __break(1u);
  }

  return result;
}

uint64_t specialized static _Int128.&<< infix(_:_:)(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 0x7F) != 0)
  {
    v3 = a1 << a3;
  }

  else
  {
    v3 = a1;
  }

  if ((a3 & 0x7Fu) <= 0x3FuLL)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t specialized static _Int128.&>> infix(_:_:)(unint64_t a1, uint64_t a2, char a3)
{
  v3 = (a1 >> a3) | (a2 << -a3);
  if ((a3 & 0x7F) == 0)
  {
    v3 = a1;
  }

  if ((a3 & 0x7Fu) <= 0x3FuLL)
  {
    return v3;
  }

  else
  {
    return a2 >> a3;
  }
}

uint64_t specialized _Int128.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](a1, a1);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  result = _Int128.init<A>(exactly:)(v7, a2, a3);
  if (v10)
  {
    __break(1u);
  }

  return result;
}

unint64_t *specialized static _UInt128.*= infix(_:_:)(unint64_t *result, unint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = *result;
  v5 = result[1];
  v6 = !is_mul_ok(v5, *a2);
  v7 = v5 * *a2;
  v8 = !is_mul_ok(*result, v3);
  v9 = __CFADD__(v7, *result * v3);
  v10 = v7 + *result * v3;
  v11 = v9;
  v12 = (v4 * v2) >> 64;
  v9 = __CFADD__(v10, v12);
  v13 = v10 + v12;
  v14 = v9;
  if (v3)
  {
    v15 = v5 == 0;
  }

  else
  {
    v15 = 1;
  }

  if (!v15 || v6 || v8 || (v11 & 1) != 0 || (v14 & 1) != 0)
  {
    __break(1u);
  }

  else
  {
    *result = v4 * v2;
    result[1] = v13;
  }

  return result;
}

uint64_t *specialized static _UInt128.&<<= infix(_:_:)(uint64_t *result, void *a2)
{
  v2 = *result;
  v3 = *a2 & 0x7FLL;
  v4 = (result[1] << *a2) | (*result >> -*a2);
  if (v3)
  {
    v2 = *result << *a2;
  }

  else
  {
    v4 = result[1];
  }

  if (v3 > 0x3F)
  {
    v4 = *result << *a2;
    v2 = 0;
  }

  *result = v2;
  result[1] = v4;
  return result;
}

uint64_t *specialized static _UInt128.&>>= infix(_:_:)(uint64_t *result, void *a2)
{
  v2 = result[1];
  v3 = *a2 & 0x7FLL;
  v4 = v2 >> *a2;
  v5 = (v2 << -*a2) | (*result >> *a2);
  if (v3)
  {
    v2 >>= *a2;
  }

  else
  {
    v5 = *result;
  }

  if (v3 <= 0x3F)
  {
    v6 = v2;
  }

  else
  {
    v6 = 0;
  }

  if (v3 > 0x3F)
  {
    v5 = v4;
  }

  *result = v5;
  result[1] = v6;
  return result;
}

unint64_t *specialized static _UInt128.%= infix(_:_:)(unint64_t *result, unint64_t *a2)
{
  if (*a2 == 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    result = specialized _wideDivide22<A>(_:by:)(&v6, &v5, &v4, result[1], *result, a2[1], *a2);
    v3 = v5;
    *v2 = v4;
    v2[1] = v3;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _Int128 and conformance _Int128()
{
  result = lazy protocol witness table cache variable for type _Int128 and conformance _Int128;
  if (!lazy protocol witness table cache variable for type _Int128 and conformance _Int128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _Int128 and conformance _Int128);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _Int128 and conformance _Int128;
  if (!lazy protocol witness table cache variable for type _Int128 and conformance _Int128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _Int128 and conformance _Int128);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _Int128 and conformance _Int128;
  if (!lazy protocol witness table cache variable for type _Int128 and conformance _Int128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _Int128 and conformance _Int128);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _Int128 and conformance _Int128;
  if (!lazy protocol witness table cache variable for type _Int128 and conformance _Int128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _Int128 and conformance _Int128);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _Int128 and conformance _Int128;
  if (!lazy protocol witness table cache variable for type _Int128 and conformance _Int128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _Int128 and conformance _Int128);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _Int128 and conformance _Int128;
  if (!lazy protocol witness table cache variable for type _Int128 and conformance _Int128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _Int128 and conformance _Int128);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _Int128 and conformance _Int128;
  if (!lazy protocol witness table cache variable for type _Int128 and conformance _Int128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _Int128 and conformance _Int128);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _Int128 and conformance _Int128;
  if (!lazy protocol witness table cache variable for type _Int128 and conformance _Int128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _Int128 and conformance _Int128);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _Int128 and conformance _Int128;
  if (!lazy protocol witness table cache variable for type _Int128 and conformance _Int128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _Int128 and conformance _Int128);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _Int128 and conformance _Int128;
  if (!lazy protocol witness table cache variable for type _Int128 and conformance _Int128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _Int128 and conformance _Int128);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _Int128 and conformance _Int128;
  if (!lazy protocol witness table cache variable for type _Int128 and conformance _Int128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _Int128 and conformance _Int128);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _Int128 and conformance _Int128;
  if (!lazy protocol witness table cache variable for type _Int128 and conformance _Int128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _Int128 and conformance _Int128);
  }

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

uint64_t *specialized static _Int128.&<<= infix(_:_:)(uint64_t *result, char a2)
{
  v2 = *result;
  v3 = result[1];
  if ((a2 & 0x7F) != 0)
  {
    v3 = (v3 << a2) | (*result >> -a2);
    v2 = *result << a2;
  }

  if ((a2 & 0x7Fu) > 0x3FuLL)
  {
    v3 = *result << a2;
    v2 = 0;
  }

  *result = v2;
  result[1] = v3;
  return result;
}

uint64_t *specialized static _Int128.&>>= infix(_:_:)(uint64_t *result, char a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = v3 >> 63;
  v5 = v3 >> a2;
  v6 = (v3 << -a2) | (*result >> a2);
  if ((a2 & 0x7F) != 0)
  {
    v3 >>= a2;
    v2 = v6;
  }

  if ((a2 & 0x7Fu) > 0x3FuLL)
  {
    v3 = v4;
    v2 = v5;
  }

  *result = v2;
  result[1] = v3;
  return result;
}

unint64_t *specialized static _Int128./= infix(_:_:)(unint64_t *result, unint64_t a2, uint64_t a3)
{
  v3 = result;
  v5 = *result;
  v4 = result[1];
  if (a3 == -1)
  {
    if (a2 == -1 && v4 == 0x8000000000000000 && v5 == 0)
    {
      goto LABEL_11;
    }

LABEL_10:
    result = _Int128.quotientAndRemainder(dividingBy:)(a2, a3, v5, v4);
    *v3 = result;
    v3[1] = v7;
    return result;
  }

  if (a3 || a2)
  {
    goto LABEL_10;
  }

LABEL_11:
  __break(1u);
  return result;
}

unint64_t *specialized static _Int128.%= infix(_:_:)(unint64_t *result, unint64_t a2, uint64_t a3)
{
  v3 = result;
  v5 = *result;
  v4 = result[1];
  if (a3 == -1)
  {
    if (a2 == -1 && v4 == 0x8000000000000000 && v5 == 0)
    {
      goto LABEL_11;
    }

LABEL_10:
    result = _Int128.quotientAndRemainder(dividingBy:)(a2, a3, v5, v4);
    *v3 = v7;
    v3[1] = v8;
    return result;
  }

  if (a3 || a2)
  {
    goto LABEL_10;
  }

LABEL_11:
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type _UInt128.Words and conformance _UInt128.Words()
{
  result = lazy protocol witness table cache variable for type _UInt128.Words and conformance _UInt128.Words;
  if (!lazy protocol witness table cache variable for type _UInt128.Words and conformance _UInt128.Words)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UInt128.Words and conformance _UInt128.Words);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UInt128.Words and conformance _UInt128.Words;
  if (!lazy protocol witness table cache variable for type _UInt128.Words and conformance _UInt128.Words)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UInt128.Words and conformance _UInt128.Words);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UInt128.Words and conformance _UInt128.Words;
  if (!lazy protocol witness table cache variable for type _UInt128.Words and conformance _UInt128.Words)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UInt128.Words and conformance _UInt128.Words);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _UInt128.Words and conformance _UInt128.Words;
  if (!lazy protocol witness table cache variable for type _UInt128.Words and conformance _UInt128.Words)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UInt128.Words and conformance _UInt128.Words);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Slice<_UInt128.Words> and conformance <> Slice<A>(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SliceVy4VDAF8_UInt128V5WordsVGMd, &_ss5SliceVy4VDAF8_UInt128V5WordsVGMR);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
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

unint64_t lazy protocol witness table accessor for type _Int128.Words and conformance _Int128.Words()
{
  result = lazy protocol witness table cache variable for type _Int128.Words and conformance _Int128.Words;
  if (!lazy protocol witness table cache variable for type _Int128.Words and conformance _Int128.Words)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _Int128.Words and conformance _Int128.Words);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _Int128.Words and conformance _Int128.Words;
  if (!lazy protocol witness table cache variable for type _Int128.Words and conformance _Int128.Words)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _Int128.Words and conformance _Int128.Words);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _Int128.Words and conformance _Int128.Words;
  if (!lazy protocol witness table cache variable for type _Int128.Words and conformance _Int128.Words)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _Int128.Words and conformance _Int128.Words);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _Int128.Words and conformance _Int128.Words;
  if (!lazy protocol witness table cache variable for type _Int128.Words and conformance _Int128.Words)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _Int128.Words and conformance _Int128.Words);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Slice<_Int128.Words> and conformance <> Slice<A>(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SliceVy4VDAF7_Int128V5WordsVGMd, &_ss5SliceVy4VDAF7_Int128V5WordsVGMR);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t specialized Collection.prefix(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v6 = result;
  v8 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v8 == 2)
    {
      v10 = *(a2 + 16);
      v9 = *(a2 + 24);
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }
  }

  else
  {
    if (v8)
    {
      v9 = a2 >> 32;
    }

    else
    {
      v9 = BYTE6(a3);
    }

    if (v8)
    {
      v10 = a2;
    }

    else
    {
      v10 = 0;
    }
  }

  v11 = specialized RandomAccessCollection<>.distance(from:to:)(v10, v9, a2, a3);
  if (v6 && v11 < v6)
  {
    if (v8 <= 1)
    {
      if (!v8)
      {
        goto LABEL_28;
      }

      v12 = a2 >> 32;
      goto LABEL_26;
    }

    if (v8 != 2)
    {
      goto LABEL_28;
    }

    v12 = *(a2 + 24);
LABEL_24:
    result = *(a2 + 16);
    goto LABEL_27;
  }

  v12 = specialized RandomAccessCollection<>.index(_:offsetBy:)(v10, v6, a2, a3);
  result = 0;
  if (v8 > 1)
  {
    if (v8 != 3)
    {
      goto LABEL_24;
    }
  }

  else if (v8)
  {
LABEL_26:
    result = a2;
  }

LABEL_27:
  if (v12 >= result)
  {
LABEL_28:
    v13 = Data._Representation.subscript.getter();
    v15 = v14;
    result = outlined consume of Data._Representation(a2, a3);
    *a4 = v13;
    a4[1] = v15;
    return result;
  }

LABEL_31:
  __break(1u);
  return result;
}

unint64_t specialized Collection.prefix(_:)(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (a2)
    {
      v4 = a3 - a2;
    }

    else
    {
      v4 = 0;
    }

    result = specialized RandomAccessCollection<>.distance(from:to:)(0, v4, a2, a3);
    if (v3 && result < v3)
    {
      v3 = v4;
      if ((v4 & 0x8000000000000000) == 0)
      {
        return 0;
      }

      __break(1u);
    }

    if (v4 >= v3)
    {
      return 0;
    }
  }

  __break(1u);
  return result;
}

unint64_t specialized Collection.prefix(_:)(unint64_t result, uint64_t a2, uint64_t a3, int64_t a4, unint64_t a5)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v5 = a5 >> 1;
  if (__OFSUB__(a5 >> 1, a4))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (!result || (v6 = a5 >> 1, (a5 >> 1) - a4 >= result))
  {
    v6 = a4 + result;
    if (__OFADD__(a4, result))
    {
      goto LABEL_17;
    }
  }

  if (v6 < a4)
  {
    goto LABEL_13;
  }

  if (v5 < a4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v5 >= v6)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      return a2;
    }

    goto LABEL_16;
  }

LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

unint64_t specialized Collection.dropFirst(_:)(unint64_t result, uint64_t a2, uint64_t a3, int64_t a4, unint64_t a5)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v5 = a5 >> 1;
  if (__OFSUB__(a5 >> 1, a4))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (result)
  {
    v6 = a5 >> 1;
    if ((a5 >> 1) - a4 < result)
    {
      goto LABEL_7;
    }
  }

  v6 = a4 + result;
  if (!__OFADD__(a4, result))
  {
    if (v5 < v6)
    {
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

LABEL_7:
    if (v6 >= a4)
    {
      if (v5 >= a4)
      {
        return a2;
      }

      goto LABEL_13;
    }

LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t static PINEPrepareState.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  v11 = *(a2 + 8);
  v12 = *(a2 + 16);
  v13 = *(a2 + 24);
  v15 = *a2;
  v16 = v7;

  LOBYTE(a5) = static OutputShare.== infix(_:_:)(&v16, &v15, a3, a5);

  if (a5 & 1) != 0 && (specialized static Seed.== infix(_:_:)(v8, v11))
  {
    return specialized static Seed.== infix(_:_:)(v9, v12) & (v10 == v13);
  }

  else
  {
    return 0;
  }
}

void *PINEPrepareState.init(outputShare:wraparoundJointRandSeed:verificationJointRandSeed:aggregatorID:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = *result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return result;
}

uint64_t PINEPrepareState.DecodableParameter.encodedLength.getter(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  result = (*(*(a1 + 32) + 64))(*(a1 + 16));
  v5 = v3 * result;
  if ((v3 * result) >> 64 != (v3 * result) >> 63)
  {
    __break(1u);
    goto LABEL_5;
  }

  result = v5 + v2;
  if (__OFADD__(v5, v2))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t PINEPrepareState.DecodableParameter.init(aggregatorID:outputShareCount:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X5>, void *a5@<X8>)
{
  result = (*(a4 + 8))(a3, a4);
  if (result + 0x4000000000000000 < 0)
  {
    __break(1u);
  }

  else
  {
    *a5 = a1;
    a5[1] = 2 * result;
    a5[2] = a2;
  }

  return result;
}

uint64_t PINEPrepareState.init<A>(from:parameter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v113 = a6;
  v9 = *(a5 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v18 = &v100 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v11 + 24) == 1)
  {
    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v19 = 0;
    v19[1] = 0;
    swift_willThrow();
    return (*(v9 + 8))(a1, a5);
  }

  v111 = v9;
  v112 = a5;
  v104 = v16;
  v105 = v6;
  v21 = v14;
  v22 = *v11;
  v23 = *(v11 + 8);
  v24 = v12;
  v25 = *(v11 + 16);
  v109 = *(*(v15 + 8) + 8);
  v26 = v13;
  v27 = dispatch thunk of Collection.count.getter();
  v110 = a1;
  v28 = v27;
  v106 = v23;
  v107 = v22;
  v118 = v22;
  v119 = v23;
  v108 = v25;
  v120 = v25;
  v29 = v24;
  v114 = v24;
  v115 = v26;
  v116 = v113;
  v117 = v21;
  v30 = type metadata accessor for PINEPrepareState.DecodableParameter();
  if (v28 != PINEPrepareState.DecodableParameter.encodedLength.getter(v30))
  {
    v114 = 0;
    v115 = 0xE000000000000000;
    _StringGuts.grow(_:)(24);
    v58 = v112;
    v114 = v29;
    v115 = v26;
    v116 = v113;
    v117 = v21;
    type metadata accessor for PINEPrepareState();
    v59 = _typeName(_:qualified:)();
    v61 = v60;

    v118 = v59;
    v119 = v61;
    MEMORY[0x2743B25F0](0x6572697571657220, 0xEB00000000203A64);
    v114 = v107;
    v115 = v106;
    v116 = v108;
    v121 = PINEPrepareState.DecodableParameter.encodedLength.getter(v30);
    v62 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v62);

    MEMORY[0x2743B25F0](0x203A746F67202CLL, 0xE700000000000000);
    v63 = v110;
    v114 = dispatch thunk of Collection.count.getter();
    v64 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v64);

    v65 = v118;
    v66 = v119;
    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v67 = v65;
    v67[1] = v66;
    swift_willThrow();
    return (*(v111 + 8))(v63, v58);
  }

  v106 = v26;
  (*(v111 + 16))(v18, v110, v112);
  v31 = *(v109 + 8);
  v32 = ArraySlice.init<A>(_:)();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v39 = (*(v113 + 64))(v29);
  v40 = v108 * v39;
  if ((v108 * v39) >> 64 != (v108 * v39) >> 63)
  {
    __break(1u);
    goto LABEL_32;
  }

  v109 = v21;
  v41 = specialized Collection.prefix(_:)(v40, v32, v34, v36, v38);
  v42 = v38;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v49 = specialized Collection.dropFirst(_:)(v40, v32, v34, v36, v42);
  v51 = v50;
  v53 = v52;
  v108 = v54;
  v114 = v41;
  v115 = v44;
  v116 = v46;
  v117 = v48;
  swift_unknownObjectRetain();
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss10ArraySliceVys5UInt8VGMd, "xq");
  v56 = lazy protocol witness table accessor for type ArraySlice<UInt8> and conformance ArraySlice<A>();
  v57 = v105;
  OutputShare.init<A>(from:parameter:)(&v114, 1, v29, v55, v113, v56, &v118);
  if (v57)
  {
    (*(v111 + 8))(v110, v112);
    return swift_unknownObjectRelease();
  }

  v68 = *(v109 + 8);
  v69 = v51;
  v102 = v118;
  v103 = v68;
  v70 = v68();
  v71 = v108;
  v40 = specialized Collection.prefix(_:)(v70, v49, v51, v53, v108);
  v101 = v72;
  v113 = v73;
  v29 = v74;
  v32 = specialized Collection.dropFirst(_:)(v70, v49, v69, v53, v71);
  v76 = v75;
  v108 = v77;
  v105 = v78;
  if (v29)
  {
    v100 = v75;
    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    swift_unknownObjectRetain();
    v81 = swift_dynamicCastClass();
    if (!v81)
    {
      swift_unknownObjectRelease();
      v81 = MEMORY[0x277D84F90];
    }

    v82 = *(v81 + 16);

    if (__OFSUB__(v29 >> 1, v113))
    {
      goto LABEL_34;
    }

    if (v82 != (v29 >> 1) - v113)
    {
      goto LABEL_36;
    }

    v29 = swift_dynamicCastClass();
    swift_unknownObjectRelease_n();
    v76 = v100;
    v80 = v103;
    if (v29)
    {
      goto LABEL_18;
    }

    v29 = MEMORY[0x277D84F90];
    goto LABEL_17;
  }

  swift_unknownObjectRetain();
  while (1)
  {
    specialized _copyCollectionToContiguousArray<A>(_:)(v40, v101, v113, v29);
    v29 = v79;
    v80 = v103;
LABEL_17:
    swift_unknownObjectRelease();
LABEL_18:
    v83 = v80();
    v84 = v108;
    v85 = v105;
    v40 = specialized Collection.prefix(_:)(v83, v32, v76, v108, v105);
    v113 = v86;
    v88 = v87;
    v89 = v76;
    v91 = v90;
    specialized Collection.dropFirst(_:)(v83, v32, v89, v84, v85);
    if ((v91 & 1) == 0)
    {
      swift_unknownObjectRetain();
      v92 = v112;
LABEL_20:
      specialized _copyCollectionToContiguousArray<A>(_:)(v40, v113, v88, v91);
      v32 = v93;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      result = (*(v111 + 8))(v110, v92);
      v94 = v107;
      goto LABEL_28;
    }

    v109 = v29;
    v29 = type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    swift_unknownObjectRetain();
    v95 = swift_dynamicCastClass();
    if (!v95)
    {
      swift_unknownObjectRelease();
      v95 = MEMORY[0x277D84F90];
    }

    v96 = *(v95 + 16);

    if (__OFSUB__(v91 >> 1, v88))
    {
      goto LABEL_35;
    }

    if (v96 != (v91 >> 1) - v88)
    {
      swift_unknownObjectRelease_n();
      v92 = v112;
      v29 = v109;
      goto LABEL_20;
    }

    v32 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    v97 = v112;
    if (!v32)
    {
      v98 = v112;
      swift_unknownObjectRelease();
      v97 = v98;
      v32 = MEMORY[0x277D84F90];
    }

    (*(v111 + 8))(v110, v97);
    swift_unknownObjectRelease();
    result = swift_unknownObjectRelease();
    v94 = v107;
    v29 = v109;
LABEL_28:
    v99 = v104;
    if ((v94 & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    swift_unknownObjectRelease_n();
    v76 = v100;
  }

  if (v94 > 0xFF)
  {
    goto LABEL_33;
  }

  *v104 = v102;
  v99[1] = v29;
  v99[2] = v32;
  *(v99 + 24) = v94;
  return result;
}

unint64_t lazy protocol witness table accessor for type ArraySlice<UInt8> and conformance ArraySlice<A>()
{
  result = lazy protocol witness table cache variable for type ArraySlice<UInt8> and conformance ArraySlice<A>;
  if (!lazy protocol witness table cache variable for type ArraySlice<UInt8> and conformance ArraySlice<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss10ArraySliceVys5UInt8VGMd, "xq");
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArraySlice<UInt8> and conformance ArraySlice<A>);
  }

  return result;
}

uint64_t protocol witness for VDAFDecodable.init<A>(from:parameter:) in conformance PINEPrepareState<A, B>(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *(a2 + 2);
  v6 = *(a2 + 24);
  v9 = *a2;
  v10 = v5;
  v11 = v6;
  v7 = a5[5];
  return PINEPrepareState.init<A>(from:parameter:)(a1, &v9, a5[2], a5[3], a3, a5[4]);
}

uint64_t PINEPrepareState.encodedLength.getter(uint64_t a1)
{
  v2 = v1[1];
  v3 = v1[2];
  v12 = *v1;
  v4 = *(a1 + 16);
  v5 = *(a1 + 32);
  v6 = type metadata accessor for OutputShare();
  result = OutputShare.encodedLength.getter(v6);
  v8 = *(v2 + 16);
  v9 = __OFADD__(result, v8);
  v10 = result + v8;
  if (v9)
  {
    __break(1u);
    goto LABEL_5;
  }

  v11 = *(v3 + 16);
  result = v10 + v11;
  if (__OFADD__(v10, v11))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t PINEPrepareState.encode<A>(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v4[1];
  v9 = v4[2];
  v14 = *v4;
  v10 = *(a2 + 16);
  v11 = *(a2 + 32);
  v12 = type metadata accessor for OutputShare();

  OutputShare.encode<A>(into:)(a1, v12, a3, a4);

  Seed.encode<A>(into:)();

  return Seed.encode<A>(into:)();
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySuGMd, &_ss23_ContiguousArrayStorageCySuGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v6 = v5 - 32;
  if (v5 < 32)
  {
    v6 = v5 - 25;
  }

  v4[2] = 2;
  v4[3] = 2 * (v6 >> 3);
  v4[4] = a1;
  v4[5] = a2;
  return v4;
}

void specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x277D84F90];
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v8[2] = v5;
      v8[3] = 2 * v9 - 64;
      if (v4 != a3)
      {
LABEL_5:
        memcpy(v8 + 4, (a2 + a3), v5);
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

{
  specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy4VDAF7Field40VGMd, &_ss23_ContiguousArrayStorageCy4VDAF7Field40VGMR);
}

{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x277D84F90];
      if (v4 != a3)
      {
LABEL_7:
        memcpy(v8 + 4, (a2 + 4 * a3), 4 * v5);
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy4VDAF7Field32VGMd, &_ss23_ContiguousArrayStorageCy4VDAF7Field32VGMR);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 29;
      }

      v8[2] = v5;
      v8[3] = 2 * (v10 >> 2);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

{
  specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy4VDAF7Field64VGMd, &_ss23_ContiguousArrayStorageCy4VDAF7Field64VGMR);
}

uint64_t type metadata instantiation function for PINEPrepareState()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PINEPrepareState(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t storeEnumTagSinglePayload for PINEPrepareState(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata instantiation function for PINEPrepareState.DecodableParameter()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v6 = a4 >> 1;
  v7 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v7)
  {
    if (v7 < 1)
    {
      v10 = MEMORY[0x277D84F90];
      if (v6 != a3)
      {
LABEL_7:
        memcpy(v10 + 4, (a2 + 8 * a3), 8 * v7);
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v12 = v11 - 32;
      if (v11 < 32)
      {
        v12 = v11 - 25;
      }

      v10[2] = v7;
      v10[3] = 2 * (v12 >> 3);
      if (v6 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t specialized RandomAccessCollection<>.distance(from:to:)(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v6 = *(a3 + 16);
      v5 = *(a3 + 24);
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }
  }

  else
  {
    v5 = a3 >> 32;
    if (v4)
    {
      v6 = a3;
    }

    else
    {
      v5 = BYTE6(a4);
      v6 = 0;
    }
  }

  if (v5 < result || v6 > result)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v4)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < a2 || v8 > a2)
  {
    goto LABEL_22;
  }

  v9 = __OFSUB__(a2, result);
  result = a2 - result;
  if (v9)
  {
LABEL_23:
    __break(1u);
  }

  return result;
}

uint64_t VDAFEncodable.encodedData.getter(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 16))();
  v9[0] = specialized Data._Representation.init(capacity:)(v4);
  v9[1] = v5;
  v6 = *(a2 + 24);
  v7 = lazy protocol witness table accessor for type Data and conformance Data();
  v6(v9, MEMORY[0x277CC9318], v7, a1, a2);
  return v9[0];
}

char *VDAFEncodable.encodedBytes.getter(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 16))();
  v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4 & ~(v4 >> 63), 0, MEMORY[0x277D84F90]);
  v5 = *(a2 + 24);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
  v7 = lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type [UInt8] and conformance [A], &_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
  v5(&v9, v6, v7, a1, a2);
  return v9;
}

uint64_t VDAFDecodable.init<A>(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for Optional();
  v11 = *(*(v10 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v10 - 8, v12);
  v15 = &v22 - v14;
  v16 = *(a3 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13, v18);
  v20 = &v22 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v20, a1, a3);
  (*(*(AssociatedTypeWitness - 8) + 56))(v15, 1, 1, AssociatedTypeWitness);
  (*(a4 + 24))(v20, v15, a3, v22, a2, a4);
  return (*(v16 + 8))(a1, a3);
}

char *protocol witness for VDAFEncodable.encodedBytes.getter in conformance Seed()
{
  v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(*v0 + 16), 0, MEMORY[0x277D84F90]);

  specialized Array.append<A>(contentsOf:)(v1);
  return v3;
}

uint64_t Array<A>.init<A>(from:parameter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6)
{
  v81 = a1;
  v82 = a2;
  v80 = a4;
  v6 = *(a4 - 8);
  v78 = a6;
  v79 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v74 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = v9;
  v77 = v10;
  swift_getAssociatedTypeWitness();
  v11 = type metadata accessor for Optional();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v13 = type metadata accessor for Optional();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v68 - v17;
  v19 = swift_getTupleTypeMetadata3();
  v20 = *(*(v19 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v19, v21);
  v24 = &v68 - v23;
  v25 = *(v11 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v22, v27);
  v29 = &v68 - v28;
  (*(v14 + 16))(v18, v82, v13);
  if ((*(*(TupleTypeMetadata3 - 8) + 48))(v18, 1, TupleTypeMetadata3) == 1)
  {
    v30 = *(v14 + 8);
    (v30)(v18, v13);
    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v31 = 0;
    v31[1] = 0;
    swift_willThrow();
    (v30)(v82, v13);
    (*(v79 + 8))(v81, v80);
    return v30;
  }

  v70 = v14;
  v71 = v13;
  v32 = *&v18[*(TupleTypeMetadata3 + 48)];
  v72 = *&v18[*(TupleTypeMetadata3 + 64)];
  v73 = v32;
  v33 = *(v19 + 48);
  v34 = *(v19 + 64);
  v69 = v25;
  v35 = *(v25 + 32);
  v35(v24, v18, v11);
  v36 = v72;
  *&v24[v33] = v73;
  *&v24[v34] = v36;
  v37 = *&v24[*(v19 + 48)];
  v38 = *&v24[*(v19 + 64)];
  v73 = v11;
  result = (v35)(v29, v24, v11);
  if ((v38 | v37) < 0)
  {
    __break(1u);
  }

  else if ((v37 * v38) >> 64 == (v37 * v38) >> 63)
  {
    v40 = v29;
    v41 = v78;
    v42 = *(*(v78 + 1) + 8);
    v43 = v80;
    v44 = v81;
    if (v37 * v38 == dispatch thunk of Collection.count.getter())
    {
      v45 = v44;
      v46 = v79;
      (*(v79 + 16))(v74, v45, v43);
      v47 = *(v42 + 8);
      v85 = ArraySlice.init<A>(_:)();
      v86 = v48;
      v87 = v49;
      v88 = v50;
      v83 = 0;
      v84 = v37;
      MEMORY[0x28223BE20](v85, v48);
      v30 = &v68 - 10;
      v51 = v77;
      *(&v68 - 8) = v77;
      *(&v68 - 7) = v43;
      *(&v68 - 6) = v75;
      *(&v68 - 5) = v41;
      *(&v68 - 4) = &v85;
      *(&v68 - 3) = v38;
      *(&v68 - 2) = v40;
      v52 = v40;
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v55 = lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
      v56 = v76;
      v57 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in Array<A>.init<A>(from:parameter:), (&v68 - 10), v53, v51, v54, v55, MEMORY[0x277D84950], &v89);
      if (!v56)
      {
        v83 = v57;
        type metadata accessor for Array();
        swift_getWitnessTable();
        v30 = Array.init<A>(_:)();
        (*(v70 + 8))(v82, v71);
        (*(v46 + 8))(v81, v43);
        swift_unknownObjectRelease();
        (*(v69 + 8))(v52, v73);
        return v30;
      }

      (*(v70 + 8))(v82, v71);
      (*(v46 + 8))(v81, v43);
      swift_unknownObjectRelease();
      v58 = *(v69 + 8);
      v59 = v52;
    }

    else
    {
      v85 = 0;
      v86 = 0xE000000000000000;
      _StringGuts.grow(_:)(36);
      type metadata accessor for Array();
      v60 = _typeName(_:qualified:)();
      v78 = v40;
      v62 = v61;

      v85 = v60;
      v86 = v62;
      MEMORY[0x2743B25F0](0xD000000000000012, 0x8000000270C524A0);
      v83 = v37;
      v63 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v63);

      MEMORY[0x2743B25F0](2107936, 0xE300000000000000);
      v83 = v38;
      v64 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v64);

      MEMORY[0x2743B25F0](0x203A746F67202CLL, 0xE700000000000000);
      v83 = dispatch thunk of Collection.count.getter();
      v65 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v65);

      v30 = v85;
      v66 = v86;
      lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
      swift_allocError();
      *v67 = v30;
      v67[1] = v66;
      swift_willThrow();
      (*(v70 + 8))(v82, v71);
      (*(v79 + 8))(v44, v43);
      v58 = *(v69 + 8);
      v59 = v78;
    }

    v58(v59, v73);
    return v30;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for VDAFEncodable.encodedBytes.getter in conformance Int32()
{
  v9[1] = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v9[0] = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 4, 0, MEMORY[0x277D84F90]);
  v8 = v1;
  v2 = specialized Collection.prefix(_:)(4uLL, &v8, v9);
  specialized Array.append<A>(contentsOf:)(v2, v3, v4, v5);
  result = v9[0];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t protocol witness for VDAFEncodable.encodedBytes.getter in conformance UInt64()
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = *v0;
  v8[0] = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 8, 0, MEMORY[0x277D84F90]);
  v1 = specialized Collection.prefix(_:)(8uLL, &v7, v8);
  specialized Array.append<A>(contentsOf:)(v1, v2, v3, v4);
  result = v8[0];
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t protocol witness for VDAFEncodable.encodedBytes.getter in conformance _UInt128()
{
  v9[1] = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v8[1] = v0[1];
  v9[0] = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 16, 0, MEMORY[0x277D84F90]);
  v8[0] = v1;
  v2 = specialized Collection.prefix(_:)(0x10uLL, v8, v9);
  specialized Array.append<A>(contentsOf:)(v2, v3, v4, v5);
  result = v9[0];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t Collection<>.encode<A>(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v41 = a5;
  v42 = a6;
  v39 = a1;
  v40 = a3;
  v8 = *(a4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v36 = *(AssociatedTypeWitness - 8);
  v10 = *(v36 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v11);
  v13 = &v35 - v12;
  v14 = type metadata accessor for Optional();
  v15 = *(*(v14 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v14 - 8, v16);
  v19 = &v35 - v18;
  v20 = *(a2 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17, v22);
  v24 = &v35 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = swift_getAssociatedTypeWitness();
  v37 = *(v25 - 8);
  v26 = *(v37 + 64);
  MEMORY[0x28223BE20](v25, v27);
  v29 = &v35 - v28;
  (*(v20 + 16))(v24, v6, a2);
  dispatch thunk of Sequence.makeIterator()();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v43 = v29;
  v44 = v25;
  v38 = AssociatedConformanceWitness;
  dispatch thunk of IteratorProtocol.next()();
  v31 = v36;
  v32 = *(v36 + 48);
  if (v32(v19, 1, AssociatedTypeWitness) != 1)
  {
    v33 = *(v31 + 32);
    do
    {
      v33(v13, v19, AssociatedTypeWitness);
      (*(v42 + 24))(v39, v40, v41, AssociatedTypeWitness);
      (*(v31 + 8))(v13, AssociatedTypeWitness);
      dispatch thunk of IteratorProtocol.next()();
    }

    while (v32(v19, 1, AssociatedTypeWitness) != 1);
  }

  return (*(v37 + 8))(v43, v44);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance VDAFCodableError(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  return _s4VDAF17VDAFErrorProtocolPAAE2eeoiySbx_xtFZAA16VDAFCodableErrorO_Tt1B5();
}

uint64_t closure #1 in Array<A>.init<A>(from:parameter:)@<X0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>, void *a7)
{
  v36 = a5;
  v37 = a3;
  v38 = a4;
  v39 = a6;
  swift_getAssociatedTypeWitness();
  v35 = type metadata accessor for Optional();
  v9 = *(v35 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v35, v11);
  v34 = &v32 - v12;
  v13 = *a1;
  v14 = a1[1];
  v16 = a1[2];
  v15 = a1[3];
  v17 = specialized Collection.prefix(_:)(a2, *a1, v14, v16, v15);
  v32 = v18;
  v33 = v17;
  v20 = v19;
  v22 = v21;
  *a1 = specialized Collection.dropFirst(_:)(a2, v13, v14, v16, v15);
  a1[1] = v23;
  a1[2] = v24;
  a1[3] = v25;
  v40[0] = v33;
  v40[1] = v20;
  v40[2] = v22;
  v40[3] = v32;
  v26 = v34;
  (*(v9 + 16))(v34, v37, v35);
  v27 = *(v36 + 24);
  swift_unknownObjectRetain();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss10ArraySliceVys5UInt8VGMd, "xq");
  v29 = lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type ArraySlice<UInt8> and conformance ArraySlice<A>, &_ss10ArraySliceVys5UInt8VGMd, "xq");
  v30 = v40[5];
  result = v27(v40, v26, v28, v29);
  if (v30)
  {
    *a7 = v30;
  }

  return result;
}

uint64_t protocol witness for VDAFDecodable.init<A>(from:parameter:) in conformance <A> [A]@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  result = Array<A>.init<A>(from:parameter:)(a1, a2, *(a5 + 16), a3, *(a6 - 8), a4);
  if (!v7)
  {
    *a7 = result;
  }

  return result;
}

uint64_t Collection<>.encodedLength.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v16 - v10;
  Collection.first.getter();
  v12 = *(AssociatedTypeWitness - 8);
  if ((*(v12 + 48))(v11, 1, AssociatedTypeWitness) == 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = (*(a3 + 16))(AssociatedTypeWitness, a3);
    v7 = v12;
    v6 = AssociatedTypeWitness;
  }

  (*(v7 + 8))(v11, v6);
  v14 = dispatch thunk of Collection.count.getter();
  result = v13 * v14;
  if ((v13 * v14) >> 64 != (v13 * v14) >> 63)
  {
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for VDAFEncodable.encodedLength.getter in conformance <A> [A](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  WitnessTable = swift_getWitnessTable();

  return Collection<>.encodedLength.getter(a1, WitnessTable, v3);
}

uint64_t protocol witness for VDAFEncodable.encode<A>(into:) in conformance <A> [A](uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a5 - 8);
  WitnessTable = swift_getWitnessTable();

  return Collection<>.encode<A>(into:)(a1, a4, a2, WitnessTable, a3, v9);
}

uint64_t protocol witness for VDAFEncodable.encodedLength.getter in conformance <A> ArraySlice<A>(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  WitnessTable = swift_getWitnessTable();

  return Collection<>.encodedLength.getter(a1, WitnessTable, v3);
}

uint64_t protocol witness for VDAFEncodable.encode<A>(into:) in conformance <A> ArraySlice<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a5 - 8);
  WitnessTable = swift_getWitnessTable();

  return Collection<>.encode<A>(into:)(a1, a4, a2, WitnessTable, a3, v9);
}

uint64_t specialized FieldElement.encode<A>(into:)(uint64_t a1, unsigned int a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (a2 + 4293918721u * (-1048577 * a2) >= 0xFFF0000100000000)
  {
    v2 = 0;
  }

  else
  {
    v2 = (a2 + 4293918721u * (-1048577 * a2)) >> 32;
  }

  v9 = v2;
  v3 = specialized Collection.prefix(_:)(4uLL, &v9, &v10);
  result = specialized Array.append<A>(contentsOf:)(v3, v4, v5, v6);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

char *protocol witness for VDAFEncodable.encodedBytes.getter in conformance Field32()
{
  v1 = *v0;
  v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 4, 0, MEMORY[0x277D84F90]);
  specialized FieldElement.encode<A>(into:)(&v3, v1);
  return v3;
}

uint64_t protocol witness for VDAFEncodable.encodedBytes.getter in conformance Field40(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D85DE8];

  return protocol witness for VDAFEncodable.encodedBytes.getter in conformance Field40(a1, a2, 5uLL, specialized FieldElement.integerValue.getter);
}

uint64_t protocol witness for VDAFEncodable.encodedBytes.getter in conformance Field64(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D85DE8];

  return protocol witness for VDAFEncodable.encodedBytes.getter in conformance Field40(a1, a2, 8uLL, specialized FieldElement.integerValue.getter);
}

uint64_t protocol witness for VDAFEncodable.encodedBytes.getter in conformance Field40(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(uint64_t))
{
  v15[1] = *MEMORY[0x277D85DE8];
  v7 = *v4;
  v15[0] = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a3, 0, MEMORY[0x277D84F90]);
  v14 = a4(v7);
  v8 = specialized Collection.prefix(_:)(a3, &v14, v15);
  specialized Array.append<A>(contentsOf:)(v8, v9, v10, v11);
  result = v15[0];
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

char *protocol witness for VDAFEncodable.encodedBytes.getter in conformance Field128()
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v2 = v0[1];
  v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 16, 0, MEMORY[0x277D84F90]);
  specialized FieldElement.integerValue.getter(v1, v2, &v10);
  v9 = v10;
  v3 = specialized Collection.prefix(_:)(0x10uLL, &v9, &v10);
  specialized Array.append<A>(contentsOf:)(v3, v4, v5, v6);
  result = v11;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t specialized BitMasks.encode<A>(into:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 16);
  if (v3 != *(v2 + 16))
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v4 = 2 * v3;
  if (__OFADD__(v3, v3))
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v5 = __OFADD__(v4, 7);
  v6 = v4 + 7;
  if (v5)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    return result;
  }

  v7 = v6 + 7;
  if (v6 >= 0)
  {
    v7 = v6;
  }

  if (v6 < -7)
  {
    goto LABEL_38;
  }

  if (v6 < 8)
  {
    v9 = MEMORY[0x277D84F90];
  }

  else
  {
    v8 = v7 >> 3;
    v9 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v9 + 16) = v8;
    bzero((v9 + 32), v8);
    v1 = *(v0 + 16);
    v2 = *(v0 + 24);
  }

  v10 = *(v1 + 16);

  if (v10)
  {
    v12 = 0;
    v13 = v9 + 32;
    do
    {
      v14 = *(v2 + 16);
      if (v12 == v14)
      {
        break;
      }

      if (v12 >= v14)
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      v15 = *(v2 + v12 + 32);
      if (*(v1 + 32 + v12))
      {
        if (v12 >> 3 >= *(v9 + 16))
        {
          goto LABEL_32;
        }

        *(v13 + (v12 >> 3)) |= 1 << (v12 & 7);
      }

      if (v15)
      {
        v16 = v12 + v3;
        if (__OFADD__(v12, v3))
        {
          goto LABEL_33;
        }

        if (v16 >= 0)
        {
          v17 = v12 + v3;
        }

        else
        {
          v17 = v16 + 7;
        }

        v18 = v16 - (v17 & 0xFFFFFFFFFFFFFFF8);
        if (v18 >= 0)
        {
          v19 = 1 << v18;
        }

        else
        {
          v19 = 0;
        }

        if (v16 < -7)
        {
          goto LABEL_34;
        }

        if (v17 >> 3 >= *(v9 + 16))
        {
          __break(1u);
          break;
        }

        *(v13 + (v17 >> 3)) |= v19;
      }

      ++v12;
    }

    while (v10 != v12);
  }

  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
  v23 = lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A], &_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
  v21[0] = v9;
  v20 = *(*__swift_project_boxed_opaque_existential_1(v21, v22) + 16);

  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_1(v21);
}

{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 16);
  if (v3 != *(v2 + 16))
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v4 = 2 * v3;
  if (__OFADD__(v3, v3))
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v5 = __OFADD__(v4, 7);
  v6 = v4 + 7;
  if (v5)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    return result;
  }

  v7 = v6 + 7;
  if (v6 >= 0)
  {
    v7 = v6;
  }

  if (v6 < -7)
  {
    goto LABEL_38;
  }

  if (v6 < 8)
  {
    v9 = MEMORY[0x277D84F90];
  }

  else
  {
    v8 = v7 >> 3;
    v9 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v9 + 16) = v8;
    bzero((v9 + 32), v8);
    v1 = *(v0 + 16);
    v2 = *(v0 + 24);
  }

  v10 = *(v1 + 16);

  if (v10)
  {
    v12 = 0;
    v13 = v9 + 32;
    do
    {
      v14 = *(v2 + 16);
      if (v12 == v14)
      {
        break;
      }

      if (v12 >= v14)
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      v15 = *(v2 + v12 + 32);
      if (*(v1 + 32 + v12))
      {
        if (v12 >> 3 >= *(v9 + 16))
        {
          goto LABEL_32;
        }

        *(v13 + (v12 >> 3)) |= 1 << (v12 & 7);
      }

      if (v15)
      {
        v16 = v12 + v3;
        if (__OFADD__(v12, v3))
        {
          goto LABEL_33;
        }

        if (v16 >= 0)
        {
          v17 = v12 + v3;
        }

        else
        {
          v17 = v16 + 7;
        }

        v18 = v16 - (v17 & 0xFFFFFFFFFFFFFFF8);
        if (v18 >= 0)
        {
          v19 = 1 << v18;
        }

        else
        {
          v19 = 0;
        }

        if (v16 < -7)
        {
          goto LABEL_34;
        }

        if (v17 >> 3 >= *(v9 + 16))
        {
          __break(1u);
          break;
        }

        *(v13 + (v17 >> 3)) |= v19;
      }

      ++v12;
    }

    while (v10 != v12);
  }

  return specialized Array.append<A>(contentsOf:)(v9);
}

void specialized BitCorrections.encode<A>(into:)(uint64_t a1, uint64_t a2)
{
  if (a2 >> 62)
  {
    goto LABEL_13;
  }

  v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
LABEL_19:
    __break(1u);
    return;
  }

  do
  {
    v4 = 0;
    while ((a2 & 0xC000000000000001) != 0)
    {
      MEMORY[0x2743B2D10](v4, a2);
      v6 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_11;
      }

LABEL_7:
      specialized BitMasks.encode<A>(into:)();

      ++v4;
      if (v6 == v3)
      {
        return;
      }
    }

    if (v4 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

    v5 = *(a2 + 8 * v4 + 32);

    v6 = v4 + 1;
    if (!__OFADD__(v4, 1))
    {
      goto LABEL_7;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    if (a2 < 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = a2 & 0xFFFFFFFFFFFFFF8;
    }

    if (MEMORY[0x2743B2FD0](v7) < 1)
    {
      goto LABEL_19;
    }

    v3 = MEMORY[0x2743B2FD0](v7);
  }

  while (v3);
}

{
  if (a2 >> 62)
  {
    goto LABEL_13;
  }

  v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
LABEL_19:
    __break(1u);
    return;
  }

  do
  {
    v4 = 0;
    while ((a2 & 0xC000000000000001) != 0)
    {
      MEMORY[0x2743B2D10](v4, a2);
      v6 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_11;
      }

LABEL_7:
      specialized BitMasks.encode<A>(into:)();

      ++v4;
      if (v6 == v3)
      {
        return;
      }
    }

    if (v4 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

    v5 = *(a2 + 8 * v4 + 32);

    v6 = v4 + 1;
    if (!__OFADD__(v4, 1))
    {
      goto LABEL_7;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    if (a2 < 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = a2 & 0xFFFFFFFFFFFFFF8;
    }

    if (MEMORY[0x2743B2FD0](v7) < 1)
    {
      goto LABEL_19;
    }

    v3 = MEMORY[0x2743B2FD0](v7);
  }

  while (v3);
}

char *protocol witness for VDAFEncodable.encodedBytes.getter in conformance BitCorrections()
{
  v1 = *v0;
  v2 = specialized Collection<>.encodedLength.getter(*v0);
  v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 & ~(v2 >> 63), 0, MEMORY[0x277D84F90]);
  specialized BitCorrections.encode<A>(into:)(&v4, v1);
  return v4;
}

char *protocol witness for VDAFEncodable.encodedBytes.getter in conformance OneBlockSparseInnerCorrection()
{
  if (*(v0 + 9))
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  return specialized VDAFEncodable.encodedBytes.getter(*v0, v1 | *(v0 + 8));
}

void specialized InnerCorrections.encode<A>(into:)(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = a2[2];
  if (a3 >> 62)
  {
LABEL_60:
    if (a3 < 0)
    {
      v32 = a3;
    }

    else
    {
      v32 = a3 & 0xFFFFFFFFFFFFFF8;
    }

    v33 = a2;
    v34 = a3;
    v5 = MEMORY[0x2743B2FD0](v32);
    a3 = v34;
    a2 = v33;
  }

  else
  {
    v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4)
  {
    v6 = v4 == v5;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    __break(1u);
  }

  v7 = a2 + 4;
  v8 = a2 + 5;
  v9 = v4 & ~(v4 >> 63);
  v10 = v4;
  v11 = a2 + 5;
  while (1)
  {
    if (!v9)
    {
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
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    v13 = *(v11 - 1);
    v14 = *v11 >> 62;
    if (v14 > 1)
    {
      if (v14 == 2)
      {
        v17 = v13 + 16;
        v15 = *(v13 + 16);
        v16 = *(v17 + 8);
        v18 = __OFSUB__(v16, v15);
        v13 = v16 - v15;
        if (v18)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v13 = 0;
      }
    }

    else if (v14)
    {
      v18 = __OFSUB__(HIDWORD(v13), v13);
      LODWORD(v13) = HIDWORD(v13) - v13;
      if (v18)
      {
        goto LABEL_53;
      }

      v13 = v13;
    }

    else
    {
      v13 = BYTE6(*v11);
    }

    v12 = *v7;
    v19 = *v8 >> 62;
    if (v19 > 1)
    {
      break;
    }

    if (v19)
    {
      v18 = __OFSUB__(HIDWORD(v12), v12);
      LODWORD(v12) = HIDWORD(v12) - v12;
      if (v18)
      {
        goto LABEL_54;
      }

      v12 = v12;
    }

    else
    {
      v12 = BYTE6(*v8);
    }

LABEL_10:
    if (v13 != v12)
    {
      goto LABEL_51;
    }

LABEL_11:
    --v9;
    v11 += 2;
    if (!--v10)
    {
      goto LABEL_33;
    }
  }

  if (v19 == 2)
  {
    v22 = v12 + 16;
    v20 = *(v12 + 16);
    v21 = *(v22 + 8);
    v18 = __OFSUB__(v21, v20);
    v12 = v21 - v20;
    if (v18)
    {
      goto LABEL_55;
    }

    goto LABEL_10;
  }

  if (!v13)
  {
    goto LABEL_11;
  }

  __break(1u);
LABEL_33:
  v35 = a3;
  v23 = MEMORY[0x277CC9318];
  v24 = MEMORY[0x277CC9300];
  while (2)
  {
    v38 = v23;
    v39 = v24;
    v36 = *v7;
    v37 = *v7;
    v25 = __swift_project_boxed_opaque_existential_1(&v37, v23);
    v26 = *v25;
    v27 = v25[1] >> 62;
    if (v27 > 1)
    {
      if (v27 != 2)
      {
        goto LABEL_34;
      }

      v28 = *(v26 + 16);
      v29 = *(v26 + 24);
      outlined copy of Data._Representation(v36, *(&v36 + 1));
      if (__DataStorage._bytes.getter() && __OFSUB__(v28, __DataStorage._offset.getter()))
      {
        goto LABEL_58;
      }

      if (__OFSUB__(v29, v28))
      {
        goto LABEL_57;
      }
    }

    else
    {
      if (!v27)
      {
LABEL_34:
        outlined copy of Data._Representation(v36, *(&v36 + 1));
        goto LABEL_35;
      }

      v30 = v26;
      if (v26 >> 32 < v26)
      {
        goto LABEL_56;
      }

      outlined copy of Data._Representation(v36, *(&v36 + 1));
      if (__DataStorage._bytes.getter() && __OFSUB__(v30, __DataStorage._offset.getter()))
      {
        goto LABEL_59;
      }
    }

    MEMORY[0x2743B2250]();
LABEL_35:
    Data._Representation.append(contentsOf:)();
    __swift_destroy_boxed_opaque_existential_1(&v37);
    v7 += 2;
    if (--v4)
    {
      continue;
    }

    break;
  }

  specialized BitCorrections.encode<A>(into:)(a1, v35);
  v31 = *MEMORY[0x277D85DE8];
}

void specialized InnerCorrections.encode<A>(into:)(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2[2];
  if (a3 >> 62)
  {
    goto LABEL_53;
  }

  v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    if (v5)
    {
      v7 = v5 == v6;
    }

    else
    {
      v7 = 0;
    }

    if (!v7)
    {
      __break(1u);
      return;
    }

    v8 = v5 & ~(v5 >> 63);
    if (!v8)
    {
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v9 = a2[4];
    v10 = a2[5];
    v11 = v10 >> 62;
    if ((v10 >> 62) <= 1)
    {
      break;
    }

LABEL_14:
    if (v11 == 3 || !__OFSUB__(*(v9 + 24), *(v9 + 16)))
    {
      goto LABEL_16;
    }

LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    if (a3 < 0)
    {
      v27 = a3;
    }

    else
    {
      v27 = a3 & 0xFFFFFFFFFFFFFF8;
    }

    v28 = a2;
    v6 = MEMORY[0x2743B2FD0](v27);
    a2 = v28;
  }

  if (v11 && __OFSUB__(HIDWORD(v9), v9))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

LABEL_16:
  v12 = v5 - 1;
  if (v5 != 1)
  {
    v16 = __OFSUB__(HIDWORD(v9), v9);
    v10 = BYTE6(v10);
    --v8;
    v17 = a2 + 7;
    while (1)
    {
      if (!v8)
      {
        goto LABEL_48;
      }

      v22 = *(v17 - 1);
      v23 = *v17 >> 62;
      if (v23 <= 1)
      {
        break;
      }

      if (v23 == 2)
      {
        v26 = v22 + 16;
        v24 = *(v22 + 16);
        v25 = *(v26 + 8);
        v20 = __OFSUB__(v25, v24);
        v22 = v25 - v24;
        if (v20)
        {
          goto LABEL_50;
        }

LABEL_40:
        if (v11 <= 1)
        {
          goto LABEL_41;
        }

        goto LABEL_45;
      }

      v22 = 0;
      if (v11 <= 1)
      {
LABEL_41:
        v21 = v10;
        if (v11)
        {
          v21 = HIDWORD(v9) - v9;
          if (v16)
          {
            goto LABEL_51;
          }
        }

        goto LABEL_27;
      }

LABEL_45:
      if (v11 == 2)
      {
        v18 = *(v9 + 16);
        v19 = *(v9 + 24);
        v20 = __OFSUB__(v19, v18);
        v21 = v19 - v18;
        if (v20)
        {
          goto LABEL_52;
        }

LABEL_27:
        if (v22 != v21)
        {
          goto LABEL_49;
        }

        goto LABEL_28;
      }

      if (v22)
      {
        __break(1u);
        goto LABEL_48;
      }

LABEL_28:
      --v8;
      v17 += 2;
      if (!--v12)
      {
        goto LABEL_17;
      }
    }

    if (!v23)
    {
      v22 = BYTE6(*v17);
      if (v11 <= 1)
      {
        goto LABEL_41;
      }

      goto LABEL_45;
    }

    v20 = __OFSUB__(HIDWORD(v22), v22);
    LODWORD(v22) = HIDWORD(v22) - v22;
    if (v20)
    {
      goto LABEL_13;
    }

    v22 = v22;
    goto LABEL_40;
  }

LABEL_17:
  v13 = a2 + 5;
  do
  {
    v14 = *(v13 - 1);
    v15 = *v13;
    outlined copy of Data._Representation(v14, *v13);
    specialized Array.append<A>(contentsOf:)(v14, v15);
    v13 += 2;
    --v5;
  }

  while (v5);

  specialized BitCorrections.encode<A>(into:)(a1, a3);
}

char *protocol witness for VDAFEncodable.encodedBytes.getter in conformance InnerCorrections()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = InnerCorrections.encodedLength.getter(v1, v2);
  v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3 & ~(v3 >> 63), 0, MEMORY[0x277D84F90]);
  specialized InnerCorrections.encode<A>(into:)(&v5, v1, v2);
  return v5;
}

unint64_t lazy protocol witness table accessor for type Data and conformance Data()
{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

uint64_t partial apply for closure #1 in Array<A>.init<A>(from:parameter:)@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 40);
  return closure #1 in Array<A>.init<A>(from:parameter:)(*(v2 + 48), *(v2 + 56), *(v2 + 64), *(v2 + 16), *(v2 + 32), a2, a1);
}

unint64_t instantiation function for generic protocol witness table for VDAFCodableError(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
  result = lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
  *(a1 + 16) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type VoidCodable and conformance VoidCodable()
{
  result = lazy protocol witness table cache variable for type VoidCodable and conformance VoidCodable;
  if (!lazy protocol witness table cache variable for type VoidCodable and conformance VoidCodable)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoidCodable and conformance VoidCodable);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VoidCodable and conformance VoidCodable;
  if (!lazy protocol witness table cache variable for type VoidCodable and conformance VoidCodable)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoidCodable and conformance VoidCodable);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VDAFCodableError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for VDAFCodableError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTag for VDAFCodableError(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *destructiveInjectEnumTag for VDAFCodableError(void *result, int a2)
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

uint64_t protocol witness for VDAFEncodable.encodedBytes.getter in conformance UInt32()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];

  return sub_270B60A2C();
}

uint64_t specialized InnerCorrectionCalculator.generate(at:with:using:)@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  result = specialized InnerCorrectionCalculator.calculate(at:withParty0:andParty1:using:)(a1, a2, a3, a6, a7, a8);
  if (!v9)
  {
    v42 = v17;
    v43 = v16;
    v44 = result;
    v40 = a9;
    v41 = a4;
    if (a8 >> 62)
    {
      goto LABEL_36;
    }

    v18 = *((a8 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
    v19 = MEMORY[0x277D84F90];
    if (v18)
    {
      v39 = a5;
      v46 = MEMORY[0x277D84F90];
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18 & ~(v18 >> 63), 0);
      if ((v18 & 0x8000000000000000) == 0)
      {
        a5 = 0;
        v19 = v46;
        v45 = ~a1;
        while (1)
        {
          v20 = a5 + 1;
          if (__OFADD__(a5, 1))
          {
            __break(1u);
LABEL_34:
            __break(1u);
LABEL_35:
            __break(1u);
LABEL_36:
            if (a8 < 0)
            {
              v38 = a8;
            }

            else
            {
              v38 = a8 & 0xFFFFFFFFFFFFFF8;
            }

            v18 = MEMORY[0x2743B2FD0](v38);
            goto LABEL_4;
          }

          if ((a8 & 0xC000000000000001) != 0)
          {
            v21 = MEMORY[0x2743B2D10](a5, a8);
            v22 = *(v21 + 32);
            if ((v22 & 0x8000000000000000) != 0)
            {
              goto LABEL_34;
            }
          }

          else
          {
            if (a5 >= *((a8 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_35;
            }

            v21 = *(a8 + 8 * a5 + 32);

            v22 = *(v21 + 32);
            if ((v22 & 0x8000000000000000) != 0)
            {
              goto LABEL_34;
            }
          }

          if (v22 <= a1)
          {
            lazy protocol witness table accessor for type LeafParentError and conformance LeafParentError();
            swift_allocError();
            *v30 = a1;
            *(v30 + 8) = 0;
            *(v30 + 16) = v22 - 1;
            *(v30 + 24) = 0;
            swift_willThrow();
          }

          v23 = *(v21 + 16);

          v24 = v22 + v45;
          if ((v22 + v45) >= -64)
          {
            if (v24 <= 64)
            {
              if (v24 < 0)
              {
                if (v24 != -64 && ((v23 << -v24) & 1) != 0)
                {
                  goto LABEL_25;
                }
              }

              else
              {
                v25 = v24 == 64;
                v26 = v23 >> v24;
                if (v25)
                {
                  v26 = v23 >> 63;
                }

                if (v26)
                {
LABEL_25:
                  v27 = 1;
                  goto LABEL_26;
                }
              }
            }

            else if (v23 < 0)
            {
              goto LABEL_25;
            }
          }

          v27 = 0;
LABEL_26:
          v29 = *(v46 + 16);
          v28 = *(v46 + 24);
          if (v29 >= v28 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1);
          }

          *(v46 + 16) = v29 + 1;
          *(v46 + v29 + 32) = v27;
          ++a5;
          if (v20 == v18)
          {
            a5 = v39;
            goto LABEL_31;
          }
        }
      }

      __break(1u);
    }

    else
    {
LABEL_31:
      v31 = ClientLevelOutput.nextLevelInput(onPathDirections:prevParty0CtrlList:prevParty1CtrlList:)(v19, v41, a5, v44, v43, v42);
      v33 = v32;
      v35 = v34;
      v37 = v36;

      *v40 = v43;
      v40[1] = v42;
      v40[2] = v31;
      v40[3] = v33;
      v40[4] = v35;
      v40[5] = v37;
    }
  }

  return result;
}

uint64_t specialized InnerCorrectionCalculator.calculate(at:withParty0:andParty1:using:)(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v185 = a1;
  v208 = *MEMORY[0x277D85DE8];
  v7 = *(a2 + 16);
  v8 = *(a3 + 16);
  v9 = a6 >> 62;
  if (v7 != v8)
  {
    goto LABEL_177;
  }

  v191 = *(a2 + 16);
  v181 = a6;
  v10 = a6 & 0xFFFFFFFFFFFFFF8;
  if (v9)
  {
    goto LABEL_173;
  }

  v11 = *((a6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v7 != v11)
  {
LABEL_177:
    if (v9)
    {
      if (a6 < 0)
      {
        v171 = a6;
      }

      else
      {
        v171 = a6 & 0xFFFFFFFFFFFFFF8;
      }

      v167 = MEMORY[0x2743B2FD0](v171);
    }

    else
    {
      v167 = *((a6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    lazy protocol witness table accessor for type InnerCorrectionError and conformance InnerCorrectionError();
    swift_allocError();
    *v168 = v7;
    v168[1] = v8;
    v168[2] = v167;
    swift_willThrow();
    goto LABEL_180;
  }

LABEL_4:
  MEMORY[0x28223BE20](v11, a2);
  v172[2] = v7;
  v172[3] = v12;
  v172[4] = v13;
  v172[5] = v14;
  v16 = v15;
  v184 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySay10Foundation4DataVGAKG_4VDAF4PairVyAM18SeedCtrlUnadjustedVGs5NeverOTg5015_s10Foundation4g9VAC4VDAF4i6VyAD18jkl18VGIgggo_AC_ACtAIs5M11OIegnrzr_TRA2jRIgggo_Tf1cn_nTf4ng_n(v15, v17, partial apply for closure #1 in static SeedCtrlUnadjusted.makePairList(from:using:for:), v172);
  v198 = MEMORY[0x277D84FA0];
  v197 = MEMORY[0x277D84F90];
  if (v9)
  {
    v19 = v181;
    if (v181 < 0)
    {
      v20 = v181;
    }

    else
    {
      v20 = v181 & 0xFFFFFFFFFFFFFF8;
    }

    v21 = MEMORY[0x2743B2FD0](v20);
    v18 = v19;
    v9 = v21;
  }

  else
  {
    v18 = v181;
    v9 = *((v181 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v9)
  {
    v187 = MEMORY[0x277D84F90];

    goto LABEL_180;
  }

  v22 = 0;
  v178 = v18 & 0xFFFFFFFFFFFFFF8;
  v176 = v9;
  v177 = v18 + 32;
  v179 = v184 + 32;
  v180 = v18 & 0xC000000000000001;
  v23 = vcvtd_n_f64_u64(v7, 3uLL);
  v24 = vcvtpd_s64_f64(v23);
  v174 = v24 + 0x4000000000000000;
  v175 = v16 + 32;
  v173 = 2 * v24;
  v25 = ceil(v23);
  v189 = 1 - v7;
  v192 = MEMORY[0x277D84F90];
  v187 = MEMORY[0x277D84F90];
  v8 = v6;
  while (1)
  {
    if (v180)
    {
      v186 = MEMORY[0x2743B2D10](v22, v181);
      v10 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        goto LABEL_171;
      }
    }

    else
    {
      v10 = *(v178 + 16);
      if (v22 >= v10)
      {
        goto LABEL_172;
      }

      v186 = *(v177 + 8 * v22);

      v10 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        goto LABEL_171;
      }
    }

    v193 = v22;
    v182 = v10;
    type metadata accessor for BitMasks();
    v26 = swift_allocObject();
    v27 = v26;
    if (v7)
    {
      v28 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v28 + 16) = v7;
      bzero((v28 + 32), v7);
      *(v27 + 16) = v28;
      v195 = (v27 + 16);
      v29 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v29 + 16) = v7;
      bzero((v29 + 32), v7);
    }

    else
    {
      v29 = MEMORY[0x277D84F90];
      *(v26 + 16) = MEMORY[0x277D84F90];
      v30 = v26 + 16;
      v195 = (v26 + 16);
    }

    *(v27 + 24) = v29;
    v6 = v8;
    v31 = specialized LeafParent.prefix(leadingToLevel:)(v185, v30);
    if (v8)
    {
LABEL_151:

      goto LABEL_152;
    }

    v32 = v31;
    v33 = specialized Set.contains(_:)(v31, v198);
    v196 = v27;
    v183 = 0;
    if (v33)
    {
      break;
    }

    v9 = &v198;
    specialized Set._Variant.insert(_:)(&v200, v32);
    if (v7)
    {
      if (v193 < *(v184 + 16))
      {
        v8 = v179 + 96 * v193;
        v39 = *(v8 + 64);
        v40 = *(v8 + 80);
        v41 = *(v8 + 48);
        v202 = *(v8 + 32);
        v42 = *v8;
        v43 = *(v8 + 16);
        v204 = v39;
        v205 = v40;
        v203 = v41;
        v200 = v42;
        v201 = v43;
        v10 = v202;
        if (*(v202 + 16))
        {
          v44 = *(&v205 + 1);
          v45 = v205;
          v46 = 32;
          v47 = *(&v202 + 1);
          while (1)
          {
            v48 = v46 - 32;
            if ((v46 - 32) >= *(v45 + 16))
            {
              break;
            }

            if (v48 >= *(v47 + 16))
            {
              goto LABEL_155;
            }

            if (v48 >= *(v44 + 16))
            {
              goto LABEL_156;
            }

            v49 = *(v10 + v46);
            v50 = *(v45 + v46);
            LODWORD(v194) = *(v47 + v46);
            v51 = *(v44 + v46);
            v52 = v195;
            v9 = *v195;
            outlined init with copy of PINEInputShare<Field40, XofHmacSha256Aes128>(&v200, &v199, &_s4VDAF4PairVyAA18SeedCtrlUnadjustedVGMd, &_s4VDAF4PairVyAA18SeedCtrlUnadjustedVGMR);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *v52 = v9;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
            }

            v10 = *(v9 + 16);
            if (v48 >= v10)
            {
              goto LABEL_157;
            }

            *(v9 + v46) = (v49 ^ v50) & 1;
            v54 = v196;
            *(v196 + 16) = v9;
            v9 = *(v54 + 24);
            v55 = swift_isUniquelyReferenced_nonNull_native();
            *(v54 + 24) = v9;
            if ((v55 & 1) == 0)
            {
              v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
            }

            v10 = *(v9 + 16);
            if (v48 >= v10)
            {
              goto LABEL_158;
            }

            v56 = v189 + v46;
            *(v9 + v46) = (v194 ^ v51) & 1;
            *(v196 + 24) = v9;
            outlined destroy of PINEInputShare<Field40, XofHmacSha256Aes128>(&v200, &_s4VDAF4PairVyAA18SeedCtrlUnadjustedVGMd, &_s4VDAF4PairVyAA18SeedCtrlUnadjustedVGMR);
            v7 = v191;
            if (v56 == 32)
            {
              goto LABEL_40;
            }

            v58 = *(v8 + 32);
            v57 = *(v8 + 48);
            v59 = *(v8 + 64);
            v205 = *(v8 + 80);
            v202 = v58;
            v60 = *v8;
            v61 = *(v8 + 16);
            v203 = v57;
            v204 = v59;
            v200 = v60;
            v201 = v61;
            v44 = *(&v205 + 1);
            v45 = v205;
            v47 = *(&v202 + 1);
            v10 = v202;
            v62 = v46 - 31;
            ++v46;
            if (v62 >= *(v202 + 16))
            {
              goto LABEL_153;
            }
          }
        }

        else
        {
LABEL_153:
          __break(1u);
        }

        __break(1u);
LABEL_155:
        __break(1u);
LABEL_156:
        __break(1u);
LABEL_157:
        __break(1u);
LABEL_158:
        __break(1u);
LABEL_159:
        __break(1u);
LABEL_160:
        __break(1u);
LABEL_161:
        __break(1u);
LABEL_162:
        __break(1u);
LABEL_163:
        __break(1u);
LABEL_164:
        __break(1u);
LABEL_165:
        __break(1u);
LABEL_166:
        __break(1u);
LABEL_167:
        __break(1u);
LABEL_168:
        __break(1u);
LABEL_169:
        __break(1u);
LABEL_170:
        __break(1u);
LABEL_171:
        __break(1u);
LABEL_172:
        __break(1u);
LABEL_173:
        if (a6 < 0)
        {
          v165 = a6;
        }

        else
        {
          v165 = v10;
        }

        v166 = a2;
        v11 = MEMORY[0x2743B2FD0](v165);
        a6 = v181;
        v7 = v191;
        a2 = v166;
        if (v191 != v11)
        {
          goto LABEL_177;
        }

        goto LABEL_4;
      }

LABEL_191:
      __break(1u);
LABEL_192:
      __break(1u);
LABEL_193:
      __break(1u);
LABEL_194:
      __break(1u);
LABEL_195:
      __break(1u);
LABEL_196:
      __break(1u);
LABEL_197:
      __break(1u);
LABEL_198:
      __break(1u);
LABEL_199:
      __break(1u);
LABEL_200:
      __break(1u);
LABEL_201:
      __break(1u);
LABEL_202:
      __break(1u);
LABEL_203:
      __break(1u);
LABEL_204:
      __break(1u);
LABEL_205:
      __break(1u);
    }

LABEL_40:
    v63 = v183;
    v64 = specialized LeafParent.firstDiverge(fromAnyOf:at:)(v181, v185);
    if (v63)
    {
      goto LABEL_151;
    }

    if (v65)
    {
      v66 = specialized LeafParent.bit(atLevel:)(v185);
      if (v193 >= *(v184 + 16))
      {
        goto LABEL_193;
      }

      v67 = v179 + 96 * v193;
      v68 = 16;
      if (v66)
      {
        v68 = 0;
      }

      v69 = 24;
      if (v66)
      {
        v69 = 8;
      }

      v70 = 32;
      if ((v66 & 1) == 0)
      {
        v70 = 40;
      }

      v71 = *(v67 + v70);
      v72 = *(v67 + v69);
      v73 = *(v67 + v68);
      if (v66)
      {
        v74 = 48;
      }

      else
      {
        v74 = 64;
      }

      if (v66)
      {
        v75 = 56;
      }

      else
      {
        v75 = 72;
      }

      if (v66)
      {
        v76 = 80;
      }

      else
      {
        v76 = 88;
      }

      outlined copy of Data._Representation(v73, v72);

      outlined copy of Data._Representation(v73, v72);
      outlined consume of Data._Representation(v73, v72);

      v77 = *(v67 + v76);
      v78 = *(v67 + v75);
      v79 = *(v67 + v74);
      outlined copy of Data._Representation(v79, v78);

      outlined copy of Data._Representation(v79, v78);
      outlined consume of Data._Representation(v79, v78);

      v80 = Data.xor(_:)(v79, v78, v73, v72);
      v82 = v81;
      v83 = swift_isUniquelyReferenced_nonNull_native();
      v183 = 0;
      if ((v83 & 1) == 0)
      {
        v187 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v187 + 2) + 1, 1, v187);
      }

      v85 = *(v187 + 2);
      v84 = *(v187 + 3);
      if (v85 >= v84 >> 1)
      {
        v187 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v84 > 1), v85 + 1, 1, v187);
      }

      outlined consume of Data._Representation(v79, v78);
      outlined consume of Data._Representation(v73, v72);
      v86 = v187;
      *(v187 + 2) = v85 + 1;
      v87 = &v86[16 * v85];
      *(v87 + 4) = v80;
      *(v87 + 5) = v82;
      v8 = v183;
      v7 = v191;
    }

    else
    {
      if (v193 >= v7)
      {
        goto LABEL_192;
      }

      v91 = v64;
      v92 = (v175 + 16 * v193);
      v93 = *v92;
      v94 = v92[1];
      v95 = v94 >> 62;
      if ((v94 >> 62) > 1)
      {
        if (v95 == 2)
        {
          v136 = v93 + 16;
          v134 = *(v93 + 16);
          v135 = *(v136 + 8);
          v96 = v135 - v134;
          if (__OFSUB__(v135, v134))
          {
            goto LABEL_199;
          }
        }

        else
        {
          v96 = 0;
        }
      }

      else if (v95)
      {
        v97 = __OFSUB__(HIDWORD(v93), v93);
        v137 = HIDWORD(v93) - v93;
        if (v97)
        {
          goto LABEL_200;
        }

        v96 = v137;
      }

      else
      {
        v96 = BYTE6(v94);
      }

      v138 = _ss17FixedWidthIntegerP4VDAFE12randomVector5countSayxGSi_tFZs5UInt8V_Tt0g5(v96);
      v139 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSayAEG_Tt0g5Tf4g_n(v138);
      v141 = v140;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v187 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v187 + 2) + 1, 1, v187);
      }

      v143 = *(v187 + 2);
      v142 = *(v187 + 3);
      if (v143 >= v142 >> 1)
      {
        v187 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v142 > 1), v143 + 1, 1, v187);
      }

      v144 = v187;
      *(v187 + 2) = v143 + 1;
      v145 = &v144[16 * v143];
      *(v145 + 4) = v139;
      *(v145 + 5) = v141;
      if (v180)
      {
        MEMORY[0x2743B2D10](v91);
        v7 = v191;
        v146 = v193;
      }

      else
      {
        v7 = v191;
        if ((v91 & 0x8000000000000000) != 0)
        {
          goto LABEL_197;
        }

        v146 = v193;
        if (v91 >= *(v178 + 16))
        {
          goto LABEL_198;
        }

        v147 = *(v177 + 8 * v91);
      }

      v8 = v63;
      v148 = specialized LeafParent.bit(atLevel:)(v185);

      if (v146 >= *(v184 + 16))
      {
        goto LABEL_194;
      }

      v149 = (v179 + 96 * v146);
      v150 = v149[1];
      v207[0] = *v149;
      v207[1] = v150;
      v151 = v149[2];
      v152 = v149[3];
      v153 = v149[5];
      v207[4] = v149[4];
      v207[5] = v153;
      v207[2] = v151;
      v207[3] = v152;
      outlined init with copy of PINEInputShare<Field40, XofHmacSha256Aes128>(v207, &v200, &_s4VDAF4PairVyAA18SeedCtrlUnadjustedVGMd, &_s4VDAF4PairVyAA18SeedCtrlUnadjustedVGMR);
      BitMasks.enableSeedCorrection(between:forPath:withOnPathBit:)(v207, v91, v148 & 1);
      outlined destroy of PINEInputShare<Field40, XofHmacSha256Aes128>(v207, &_s4VDAF4PairVyAA18SeedCtrlUnadjustedVGMd, &_s4VDAF4PairVyAA18SeedCtrlUnadjustedVGMR);
    }

    v6 = v8;
    v154 = specialized LeafParent.bit(atLevel:)(v185);
    if (v8)
    {
      goto LABEL_151;
    }

    v155 = v193;
    if (v193 >= *(v184 + 16))
    {
      goto LABEL_190;
    }

    v156 = v154;
    v157 = (v179 + 96 * v193);
    v158 = v157[1];
    v206[0] = *v157;
    v206[1] = v158;
    v159 = v157[2];
    v160 = v157[3];
    v161 = v157[5];
    v206[4] = v157[4];
    v206[5] = v161;
    v206[2] = v159;
    v206[3] = v160;
    outlined init with copy of PINEInputShare<Field40, XofHmacSha256Aes128>(v206, &v200, &_s4VDAF4PairVyAA18SeedCtrlUnadjustedVGMd, &_s4VDAF4PairVyAA18SeedCtrlUnadjustedVGMR);
    BitMasks.enableSeedCorrection(between:forPath:withOnPathBit:)(v206, v155, v156 & 1);
    outlined destroy of PINEInputShare<Field40, XofHmacSha256Aes128>(v206, &_s4VDAF4PairVyAA18SeedCtrlUnadjustedVGMd, &_s4VDAF4PairVyAA18SeedCtrlUnadjustedVGMR);
LABEL_138:

    MEMORY[0x2743B2760](v162);
    if (*((v197 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v197 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v163 = v8;
      v164 = *((v197 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v8 = v163;
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v192 = v197;
    v22 = v182;
    v9 = v176;
    if (v182 == v176)
    {

      goto LABEL_180;
    }
  }

  if (v193 >= v7)
  {
    __break(1u);
LABEL_186:
    __break(1u);
    goto LABEL_187;
  }

  v34 = (v175 + 16 * v193);
  v35 = *v34;
  v36 = v34[1];
  v37 = v36 >> 62;
  if ((v36 >> 62) > 1)
  {
    if (v37 == 2)
    {
      v90 = v35 + 16;
      v88 = *(v35 + 16);
      v89 = *(v90 + 8);
      v38 = v89 - v88;
      if (__OFSUB__(v89, v88))
      {
        goto LABEL_195;
      }
    }

    else
    {
      v38 = 0;
    }
  }

  else if (v37)
  {
    v97 = __OFSUB__(HIDWORD(v35), v35);
    v98 = HIDWORD(v35) - v35;
    if (v97)
    {
      goto LABEL_196;
    }

    v38 = v98;
  }

  else
  {
    v38 = BYTE6(v36);
  }

  v99 = _ss17FixedWidthIntegerP4VDAFE12randomVector5countSayxGSi_tFZs5UInt8V_Tt0g5(v38);
  v100 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSayAEG_Tt0g5Tf4g_n(v99);
  v102 = v101;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v187 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v187 + 2) + 1, 1, v187);
  }

  v104 = *(v187 + 2);
  v103 = *(v187 + 3);
  if (v104 >= v103 >> 1)
  {
    v187 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v103 > 1), v104 + 1, 1, v187);
  }

  v105 = v187;
  *(v187 + 2) = v104 + 1;
  v106 = &v105[16 * v104];
  *(v106 + 4) = v100;
  *(v106 + 5) = v102;
  if (v25 == INFINITY)
  {
    goto LABEL_186;
  }

  if (v25 <= -9.22337204e18)
  {
LABEL_187:
    __break(1u);
    goto LABEL_188;
  }

  if (v25 >= 9.22337204e18)
  {
LABEL_188:
    __break(1u);
LABEL_189:
    __break(1u);
LABEL_190:
    __break(1u);
    goto LABEL_191;
  }

  if ((v174 & 0x8000000000000000) != 0)
  {
    goto LABEL_189;
  }

  v107 = _ss17FixedWidthIntegerP4VDAFE12randomVector5countSayxGSi_tFZs5UInt8V_Tt0g5(v173);
  v108 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSayAEG_Tt0g5Tf4g_n(v107);
  v110 = v109;
  v9 = v108;

  v111 = v110 >> 62;
  v193 = v9;
  v194 = v9;
  v190 = v9 >> 32;
  v8 = 32;
  v188 = BYTE6(v110);
  v192 = v110 >> 62;
  while (v7)
  {
    v112 = v8 - 32;
    v10 = (v8 - 32) >> 2;
    v113 = v10 & 0x1FFFFFFFFFFFFFFELL;
    v114 = v10 | 1;
    if (v111 > 1)
    {
      if (v111 != 2)
      {
        goto LABEL_201;
      }

      v10 = *(v9 + 16);
      if (v113 < v10)
      {
        goto LABEL_160;
      }

      v10 = *(v9 + 24);
      if (v113 >= v10)
      {
        goto LABEL_163;
      }

      v117 = __DataStorage._bytes.getter();
      if (!v117)
      {
        goto LABEL_203;
      }

      v118 = v117;
      v9 = v110 & 0x3FFFFFFFFFFFFFFFLL;
      v119 = __DataStorage._offset.getter();
      v10 = v113 - v119;
      if (__OFSUB__(v113, v119))
      {
        goto LABEL_165;
      }

      if (v114 < *(v194 + 16))
      {
        goto LABEL_167;
      }

      if (v114 >= *(v194 + 24))
      {
        goto LABEL_169;
      }

      v115 = *(v118 + v10);
      v120 = __DataStorage._bytes.getter();
      if (!v120)
      {
        goto LABEL_205;
      }

      v121 = v120;
      v9 = v110 & 0x3FFFFFFFFFFFFFFFLL;
      v122 = __DataStorage._offset.getter();
      v10 = v114 - v122;
      if (__OFSUB__(v114, v122))
      {
        goto LABEL_170;
      }
    }

    else
    {
      if (!v111)
      {
        if (v113 >= v188)
        {
          goto LABEL_159;
        }

        LOBYTE(v200) = v193;
        v10 = v9 >> 8;
        BYTE1(v200) = BYTE1(v9);
        a2 = v188;
        BYTE2(v200) = BYTE2(v9);
        BYTE3(v200) = BYTE3(v9);
        BYTE4(v200) = BYTE4(v9);
        BYTE5(v200) = BYTE5(v9);
        BYTE6(v200) = BYTE6(v9);
        BYTE7(v200) = HIBYTE(v9);
        WORD4(v200) = v110;
        BYTE10(v200) = BYTE2(v110);
        v6 = HIDWORD(v110);
        BYTE11(v200) = BYTE3(v110);
        BYTE12(v200) = BYTE4(v110);
        BYTE13(v200) = BYTE5(v110);
        if (v114 >= v188)
        {
          goto LABEL_162;
        }

        v115 = *(&v200 + v113);
        BYTE1(v200) = BYTE1(v9);
        BYTE2(v200) = BYTE2(v9);
        BYTE3(v200) = BYTE3(v9);
        BYTE4(v200) = BYTE4(v9);
        BYTE5(v200) = BYTE5(v9);
        BYTE6(v200) = BYTE6(v9);
        BYTE7(v200) = HIBYTE(v9);
        WORD4(v200) = v110;
        BYTE10(v200) = BYTE2(v110);
        BYTE11(v200) = BYTE3(v110);
        BYTE12(v200) = BYTE4(v110);
        BYTE13(v200) = BYTE5(v110);
        v116 = *(&v200 + v114);
        goto LABEL_109;
      }

      v10 = v193;
      if (v113 < v193)
      {
        goto LABEL_161;
      }

      v10 = v190;
      if (v113 >= v190)
      {
        goto LABEL_161;
      }

      v123 = __DataStorage._bytes.getter();
      if (!v123)
      {
        goto LABEL_202;
      }

      v124 = v123;
      v9 = v110 & 0x3FFFFFFFFFFFFFFFLL;
      v125 = __DataStorage._offset.getter();
      v10 = v113 - v125;
      if (__OFSUB__(v113, v125))
      {
        goto LABEL_164;
      }

      if (v114 < v193 || v114 >= v190)
      {
        goto LABEL_166;
      }

      v115 = *(v124 + v10);
      v126 = __DataStorage._bytes.getter();
      if (!v126)
      {
        goto LABEL_204;
      }

      v121 = v126;
      v9 = v110 & 0x3FFFFFFFFFFFFFFFLL;
      v127 = __DataStorage._offset.getter();
      v10 = v114 - v127;
      if (__OFSUB__(v114, v127))
      {
        goto LABEL_168;
      }
    }

    v116 = *(v121 + v10);
LABEL_109:
    v128 = v195;
    v129 = *v195;
    v130 = swift_isUniquelyReferenced_nonNull_native();
    *v128 = v129;
    if ((v130 & 1) == 0)
    {
      v129 = specialized _ArrayBuffer._consumeAndCreateNew()(v129);
    }

    if (v112 >= *(v129 + 2))
    {
      goto LABEL_149;
    }

    v129[v8] = (v115 >> (v112 & 7)) & 1;
    v131 = v196;
    *(v196 + 16) = v129;
    v132 = *(v131 + 24);
    v133 = swift_isUniquelyReferenced_nonNull_native();
    *(v131 + 24) = v132;
    if ((v133 & 1) == 0)
    {
      v132 = specialized _ArrayBuffer._consumeAndCreateNew()(v132);
    }

    if (v112 >= *(v132 + 2))
    {
      goto LABEL_150;
    }

    v132[v8] = (v116 >> (v112 & 7)) & 1;
    *(v131 + 24) = v132;
    ++v8;
    --v7;
    v9 = v194;
    LODWORD(v111) = v192;
    if (!v7)
    {
      outlined consume of Data._Representation(v194, v110);
      v8 = v183;
      v7 = v191;
      goto LABEL_138;
    }
  }

  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);

LABEL_152:

LABEL_180:
  v169 = *MEMORY[0x277D85DE8];
  return v184;
}

uint64_t specialized LeafParent.prefix(leadingToLevel:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v3 + 32);
  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    a2 = v4 - a1;
    if (v4 < a1)
    {
      lazy protocol witness table accessor for type LeafParentError and conformance LeafParentError();
      swift_allocError();
      *v6 = a1;
      *(v6 + 8) = 0;
      *(v6 + 16) = v4;
      *(v6 + 24) = 0;
      return swift_willThrow();
    }

    if (a2 < -64)
    {
      return 0;
    }

    v2 = *(v3 + 16);
    if (a2 >= 65)
    {
      return v2 >> 63;
    }

    if ((a2 & 0x8000000000000000) == 0)
    {
      v8 = a2 == 64;
      v9 = v2 >> a2;
      if (v8)
      {
        return v2 >> 63;
      }

      else
      {
        return v9;
      }
    }
  }

  v10 = v2 << -a2;
  if (a2 == -64)
  {
    return 0;
  }

  else
  {
    return v10;
  }
}

uint64_t specialized LeafParent.firstDiverge(fromAnyOf:at:)(uint64_t a1, unint64_t a2)
{
  if (a1 >> 62)
  {
LABEL_72:
    v24 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 < 0)
    {
      v22 = a1;
    }

    else
    {
      v22 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = MEMORY[0x2743B2FD0](v22);
  }

  else
  {
    v24 = a1 & 0xFFFFFFFFFFFFFF8;
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  v23 = v5;
  while (1)
  {
    if (v5 == v6)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x2743B2D10](v6, a1);
      if (v8 == v2)
      {
        goto LABEL_5;
      }
    }

    else
    {
      if (v6 >= *(v24 + 16))
      {
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
        goto LABEL_72;
      }

      v8 = *(a1 + 8 * v6 + 32);

      if (v8 == v2)
      {
LABEL_5:

        goto LABEL_6;
      }
    }

    v9 = *(v8 + 32);
    if ((v9 & 0x8000000000000000) != 0)
    {
      goto LABEL_70;
    }

    v10 = v9 - a2;
    if (v9 <= a2)
    {
      v13 = v9 - 1;
LABEL_66:
      lazy protocol witness table accessor for type LeafParentError and conformance LeafParentError();
      swift_allocError();
      *v21 = a2;
      *(v21 + 8) = 0;
      *(v21 + 16) = v13;
      *(v21 + 24) = 0;
      swift_willThrow();
    }

    v11 = *(v8 + 16);
    if (v10 < -64)
    {
LABEL_14:
      v12 = 0;
      v13 = *(v2 + 32);
      if ((v13 & 0x8000000000000000) != 0)
      {
        goto LABEL_71;
      }

      goto LABEL_22;
    }

    if (v10 > 64)
    {
LABEL_17:
      v12 = v11 >> 63;
      v13 = *(v2 + 32);
      if ((v13 & 0x8000000000000000) != 0)
      {
        goto LABEL_71;
      }

      goto LABEL_22;
    }

    if (v10 < 0)
    {
      if (v10 == -64)
      {
        goto LABEL_14;
      }

      v12 = v11 << -v10;
      v13 = *(v2 + 32);
      if ((v13 & 0x8000000000000000) != 0)
      {
        goto LABEL_71;
      }
    }

    else
    {
      if (v10 == 64)
      {
        goto LABEL_17;
      }

      v12 = v11 >> v10;
      v13 = *(v2 + 32);
      if ((v13 & 0x8000000000000000) != 0)
      {
        goto LABEL_71;
      }
    }

LABEL_22:
    v14 = v13 - a2;
    if (v13 < a2)
    {
      goto LABEL_66;
    }

    v15 = *(v2 + 16);
    if (v14 <= -65)
    {
LABEL_4:
      if (v12)
      {
        goto LABEL_5;
      }

      goto LABEL_30;
    }

    if (v14 > 64)
    {
LABEL_25:
      if (v12 != v15 >> 63)
      {
        goto LABEL_5;
      }

      goto LABEL_30;
    }

    if (v14 < 0)
    {
      if (v14 == -64)
      {
        goto LABEL_4;
      }

      if (v12 != v15 << (a2 - v13))
      {
        goto LABEL_5;
      }
    }

    else
    {
      if (v14 == 64)
      {
        goto LABEL_25;
      }

      if (v12 != v15 >> v14)
      {
        goto LABEL_5;
      }
    }

LABEL_30:
    v16 = v10 - 1;
    if (v10 - 1 > -65)
    {
      if (v16 > 64)
      {
        goto LABEL_34;
      }

      if ((v16 & 0x8000000000000000) == 0)
      {
        if (v10 == 65)
        {
LABEL_34:
          v18 = v11 >> 63;
          if (v13 <= a2)
          {
            goto LABEL_65;
          }
        }

        else
        {
          v18 = v11 >> v16;
          if (v13 <= a2)
          {
            goto LABEL_65;
          }
        }

LABEL_39:

        v17 = v18 & 1;
        goto LABEL_40;
      }

      if (v10 != -63)
      {
        v18 = v11 << (1 - v10);
        if (v13 <= a2)
        {
LABEL_65:
          --v13;
          goto LABEL_66;
        }

        goto LABEL_39;
      }
    }

    if (v13 <= a2)
    {
      goto LABEL_65;
    }

    v17 = 0;
LABEL_40:
    v5 = v23;
    if (v14 >= -63)
    {
      break;
    }

LABEL_41:
    if (v17)
    {
      return v6;
    }

LABEL_6:
    if (__OFADD__(v6++, 1))
    {
      goto LABEL_69;
    }
  }

  if (v14 > 65)
  {
    goto LABEL_44;
  }

  if (v14 <= 0)
  {
    if (v14 != -63)
    {
      v19 = v15 << (1 - v14);
      goto LABEL_48;
    }

    goto LABEL_41;
  }

  if (v14 == 65)
  {
LABEL_44:
    v19 = v15 >> 63;
    goto LABEL_48;
  }

  v19 = v15 >> (v14 - 1);
LABEL_48:
  if ((v17 ^ ((v19 & 1) == 0)))
  {
    goto LABEL_6;
  }

  return v6;
}

uint64_t _s4VDAF12VDAFProtocolPAAE19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA5Prio3VyAA13SumVectorTypeVyAA7Field64VSWGAA19XofHmacSha256Aes128CG_Tt0B5(unsigned __int8 a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = *MEMORY[0x277D85DE8];

  return _s4VDAF12VDAFProtocolPAAE19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA8PreambleVyAA7Field32Vs5Int32VAA19XofHmacSha256Aes128CG_Tt0B5Tm(a1, 8, 51445759);
}

uint64_t _s4VDAF12VDAFProtocolPAAE19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA12PreambleKWayVyAA7Field32Vs5Int32VAA19XofHmacSha256Aes128CG_Tt0B5(unsigned __int8 a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = *MEMORY[0x277D85DE8];

  return _s4VDAF12VDAFProtocolPAAE19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA8PreambleVyAA7Field32Vs5Int32VAA19XofHmacSha256Aes128CG_Tt0B5Tm(a1, 0, 118554623);
}

uint64_t _s4VDAF12VDAFProtocolPAAE19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA8PreambleVyAA7Field32Vs5Int32VAA19XofHmacSha256Aes128CG_Tt0B5Tm(unsigned __int8 a1, char a2, int a3)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 8, 0, MEMORY[0x277D84F90]);
  v8 = *(v6 + 2);
  v7 = *(v6 + 3);
  v9 = v7 >> 1;
  v10 = v8 + 1;
  if (v7 >> 1 <= v8)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1, v6);
    v7 = *(v6 + 3);
    v9 = v7 >> 1;
  }

  *(v6 + 2) = v10;
  v6[v8 + 32] = a2;
  if (v9 < (v8 + 2))
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 2, 1, v6);
  }

  *(v6 + 2) = v8 + 2;
  v6[v10 + 32] = 0;
  v16[0] = v6;
  v15 = a3;
  v11 = specialized _copyCollectionToContiguousArray<A>(_:)(&v15, v16);
  specialized Array.append<A>(contentsOf:)(v11);
  LOWORD(v15) = __rev16(a1 + 1);
  v12 = specialized _copyCollectionToContiguousArray<A>(_:)(&v15, &v15 + 2);
  specialized Array.append<A>(contentsOf:)(v12);
  result = v16[0];
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t Preamble<>.shardAndEncode(_:nonce:seedBytes:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v12 = *v5;
  v13 = v5[1];
  v14 = v5[2];
  outlined copy of Data._Representation(a2, a3);
  v15 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCs5UInt8V_10Foundation4DataVTt0g5(a2, a3);
  v16 = specialized Preamble.shard<A>(_:nonce:seedBytes:)(&v42, a1, v15, a4, a5, v12, v13);

  if (!v6)
  {
    v18 = *(&v42 + 1);
    v17 = v42;
    v19 = specialized PreamblePublicShare.encodedLength.getter(v42, *(&v42 + 1));
    *&v42 = specialized Data._Representation.init(capacity:)(v19);
    *(&v42 + 1) = v20;
    specialized PreamblePublicShare.encode<A>(into:)(&v42, v17, v18);

    v14 = v42;
    v21 = *(v16 + 16);
    if (v21)
    {
      v41 = v42;
      v46 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21, 0);
      v22 = 32;
      v23 = v46;
      do
      {
        v24 = *(v16 + v22);
        v25 = *(v24 + 16);
        if (v25)
        {
          if (v25 <= 0xE)
          {
            v12 &= 0xF00000000000000uLL;
            v33 = *(v16 + v22);

            v30 = 0;
            v31 = v12;
          }

          else
          {
            v26 = type metadata accessor for __DataStorage();
            v27 = *(v26 + 48);
            v28 = *(v26 + 52);
            swift_allocObject();

            v29 = __DataStorage.init(capacity:)();
            if (v25 >= 0x7FFFFFFF)
            {
              type metadata accessor for Data.RangeReference();
              v30 = swift_allocObject();
              v31 = v29 | 0x8000000000000000;
              *(v30 + 16) = 0;
              *(v30 + 24) = 0;
            }

            else
            {
              v30 = 0;
              v31 = v29 | 0x4000000000000000;
            }
          }
        }

        else
        {
          v32 = *(v16 + v22);

          v30 = 0;
          v31 = 0xC000000000000000;
        }

        *&v45 = v30;
        *(&v45 + 1) = v31;
        v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
        v43 = v34;
        v44 = lazy protocol witness table accessor for type [UInt8] and conformance <A> [A]();
        *&v42 = v24;
        v35 = *(*__swift_project_boxed_opaque_existential_1(&v42, v34) + 16);
        Data._Representation.append(contentsOf:)();
        __swift_destroy_boxed_opaque_existential_1(&v42);
        v36 = v45;
        v46 = v23;
        v38 = *(v23 + 16);
        v37 = *(v23 + 24);
        if (v38 >= v37 >> 1)
        {
          v40 = v45;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1);
          v36 = v40;
          v23 = v46;
        }

        *(v23 + 16) = v38 + 1;
        *(v23 + 16 * v38 + 32) = v36;
        v22 += 8;
        --v21;
      }

      while (v21);

      return v41;
    }

    else
    {
    }
  }

  return v14;
}

uint64_t specialized Preamble.shard<A>(_:nonce:seedBytes:)(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = BYTE6(a5);
  v96 = *MEMORY[0x277D85DE8];
  v12 = a5 >> 62;
  if ((a5 >> 62) > 1)
  {
    if (v12 != 2)
    {
      v19 = 0;
      goto LABEL_40;
    }

    v14 = *(a4 + 16);
    v13 = *(a4 + 24);
    v15 = __OFSUB__(v13, v14);
    v16 = v13 - v14;
    if (v15)
    {
      goto LABEL_89;
    }

    if (v16 != 64)
    {
      goto LABEL_13;
    }
  }

  else if (v12)
  {
    if (__OFSUB__(HIDWORD(a4), a4))
    {
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
      goto LABEL_92;
    }

    if (HIDWORD(a4) - a4 != 64)
    {
      goto LABEL_13;
    }
  }

  else if (BYTE6(a5) != 64)
  {
LABEL_13:
    if (v12 != 2)
    {
      if (v12 != 1)
      {
        v19 = BYTE6(a5);
        goto LABEL_40;
      }

      if (!__OFSUB__(HIDWORD(a4), a4))
      {
        v19 = HIDWORD(a4) - a4;
LABEL_40:
        lazy protocol witness table accessor for type PreambleError and conformance PreambleError();
        swift_allocError();
        *(v40 + 8) = 0;
        *(v40 + 16) = 0;
        *v40 = v19;
        *(v40 + 24) = 1;
        swift_willThrow();
        goto LABEL_86;
      }

      goto LABEL_91;
    }

    v21 = *(a4 + 16);
    v20 = *(a4 + 24);
    v19 = v20 - v21;
    if (!__OFSUB__(v20, v21))
    {
      goto LABEL_40;
    }

    __break(1u);
    goto LABEL_22;
  }

  v88 = a2;
  v89 = a6;
  v86 = a1;
  v87 = a7;
  v7 = v8;
  if (!v12)
  {
    v17 = specialized RandomAccessCollection<>.index(_:offsetBy:)(0, 32, a4, a5);
    v18 = 0;
    goto LABEL_23;
  }

  if (v12 == 2)
  {
    v17 = specialized RandomAccessCollection<>.index(_:offsetBy:)(*(a4 + 16), 32, a4, a5);
    v18 = *(a4 + 16);
    goto LABEL_23;
  }

LABEL_22:
  v17 = specialized RandomAccessCollection<>.index(_:offsetBy:)(a4, 32, a4, a5);
  v18 = a4;
LABEL_23:
  if (v17 < v18)
  {
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  v22 = Data._Representation.subscript.getter();
  v23 = MEMORY[0x277CC9318];
  v9 = MEMORY[0x277CC9300];
  v94 = MEMORY[0x277CC9318];
  v95 = MEMORY[0x277CC9300];
  *&v93 = v22;
  *(&v93 + 1) = v24;
  v25 = __swift_project_boxed_opaque_existential_1(&v93, MEMORY[0x277CC9318]);
  v26 = *v25;
  v27 = v25[1];
  v28 = v27 >> 62;
  if ((v27 >> 62) > 1)
  {
    if (v28 != 2)
    {
      memset(v90, 0, 14);
      v29 = v90;
      goto LABEL_54;
    }

    v30 = *(v26 + 16);
    v83 = *(v26 + 24);
    v31 = __DataStorage._bytes.getter();
    if (v31)
    {
      v32 = __DataStorage._offset.getter();
      if (__OFSUB__(v30, v32))
      {
LABEL_95:
        __break(1u);
        goto LABEL_96;
      }

      v31 += v30 - v32;
    }

    v15 = __OFSUB__(v83, v30);
    v33 = v83 - v30;
    if (v15)
    {
      goto LABEL_93;
    }

    v34 = MEMORY[0x2743B2250]();
    if (v34 >= v33)
    {
      v35 = v33;
    }

    else
    {
      v35 = v34;
    }

    v36 = (v35 + v31);
    if (v31)
    {
      v37 = v36;
    }

    else
    {
      v37 = 0;
    }

    v38 = v31;
    v39 = v7;
LABEL_52:
    closure #1 in Data.init<A>(_:)(v38, v37, &v91);
    v7 = v39;
    v23 = MEMORY[0x277CC9318];
    v9 = MEMORY[0x277CC9300];
    goto LABEL_55;
  }

  if (v28)
  {
    v84 = v7;
    v41 = v26;
    v42 = v26 >> 32;
    v43 = v42 - v41;
    if (v42 < v41)
    {
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
      goto LABEL_94;
    }

    v44 = __DataStorage._bytes.getter();
    if (v44)
    {
      v45 = __DataStorage._offset.getter();
      if (__OFSUB__(v41, v45))
      {
LABEL_96:
        __break(1u);
        goto LABEL_97;
      }

      v44 += v41 - v45;
    }

    v46 = MEMORY[0x2743B2250]();
    if (v46 >= v43)
    {
      v47 = v43;
    }

    else
    {
      v47 = v46;
    }

    v48 = (v47 + v44);
    if (v44)
    {
      v37 = v48;
    }

    else
    {
      v37 = 0;
    }

    v38 = v44;
    v39 = v84;
    goto LABEL_52;
  }

  v90[0] = *v25;
  LOWORD(v90[1]) = v27;
  BYTE2(v90[1]) = BYTE2(v27);
  BYTE3(v90[1]) = BYTE3(v27);
  BYTE4(v90[1]) = BYTE4(v27);
  BYTE5(v90[1]) = BYTE5(v27);
  v29 = v90 + BYTE6(v27);
LABEL_54:
  closure #1 in Data.init<A>(_:)(v90, v29, &v91);
LABEL_55:
  v50 = v91;
  v49 = v92;
  __swift_destroy_boxed_opaque_existential_1(&v93);
  if (v12 == 2)
  {
    v51 = *(a4 + 24);
  }

  else if (v12 == 1)
  {
    v51 = a4 >> 32;
  }

  else
  {
    v51 = v10;
  }

  if (v51 < v17)
  {
    goto LABEL_88;
  }

  v52 = Data._Representation.subscript.getter();
  v94 = v23;
  v95 = v9;
  *&v93 = v52;
  *(&v93 + 1) = v53;
  v54 = __swift_project_boxed_opaque_existential_1(&v93, v23);
  v55 = *v54;
  v56 = v54[1];
  v57 = v56 >> 62;
  if ((v56 >> 62) <= 1)
  {
    if (!v57)
    {
      v90[0] = *v54;
      LOWORD(v90[1]) = v56;
      BYTE2(v90[1]) = BYTE2(v56);
      BYTE3(v90[1]) = BYTE3(v56);
      BYTE4(v90[1]) = BYTE4(v56);
      BYTE5(v90[1]) = BYTE5(v56);
      v58 = v90 + BYTE6(v56);
      v59 = v90;
      goto LABEL_83;
    }

    goto LABEL_71;
  }

  if (v57 == 2)
  {
    v60 = *(v55 + 16);
    v61 = *(v55 + 24);
    v9 = __DataStorage._bytes.getter();
    if (v9)
    {
      v62 = __DataStorage._offset.getter();
      v55 = v60 - v62;
      if (__OFSUB__(v60, v62))
      {
LABEL_97:
        __break(1u);
LABEL_98:
        __break(1u);
      }

      v9 += v55;
    }

    v15 = __OFSUB__(v61, v60);
    v63 = v61 - v60;
    if (!v15)
    {
LABEL_75:
      v67 = MEMORY[0x2743B2250]();
      if (v67 >= v63)
      {
        v68 = v63;
      }

      else
      {
        v68 = v67;
      }

      v69 = (v68 + v9);
      if (v9)
      {
        v58 = v69;
      }

      else
      {
        v58 = 0;
      }

      v59 = v9;
      goto LABEL_83;
    }

    __break(1u);
LABEL_71:
    v64 = v55;
    v65 = v55 >> 32;
    v63 = v65 - v64;
    if (v65 < v64)
    {
LABEL_94:
      __break(1u);
      goto LABEL_95;
    }

    v9 = __DataStorage._bytes.getter();
    if (v9)
    {
      v66 = __DataStorage._offset.getter();
      if (__OFSUB__(v64, v66))
      {
        goto LABEL_98;
      }

      v9 += v64 - v66;
    }

    goto LABEL_75;
  }

  memset(v90, 0, 14);
  v59 = v90;
  v58 = v90;
LABEL_83:
  closure #1 in Data.init<A>(_:)(v59, v58, &v91);
  v71 = v91;
  v70 = v92;
  __swift_destroy_boxed_opaque_existential_1(&v93);
  outlined copy of Data._Representation(v50, v49);
  v72 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCs5UInt8V_10Foundation4DataVTt0g5(v50, v49);
  _s4VDAF18PreambleInputShareV4fromACyxGqd___tKcSkRd__s5UInt8V7ElementRtd__lufCAA19XofHmacSha256Aes128C_SayAGGTt1g5(v72, &v93);
  if (v7)
  {
    outlined consume of Data._Representation(v50, v49);
    outlined consume of Data._Representation(v71, v70);
  }

  else
  {
    v73 = v93;
    outlined copy of Data._Representation(v71, v70);
    v74 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCs5UInt8V_10Foundation4DataVTt0g5(v71, v70);
    _s4VDAF18PreambleInputShareV4fromACyxGqd___tKcSkRd__s5UInt8V7ElementRtd__lufCAA19XofHmacSha256Aes128C_SayAGGTt1g5(v74, &v93);
    v82 = v93;
    v85 = v73;
    v75 = _s4VDAF12VDAFProtocolPAAE19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA8PreambleVyAA7Field32Vs5Int32VAA19XofHmacSha256Aes128CG_Tt0B5Tm(0, 0, 118554623);

    v77 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSayAEG_Tt0g5Tf4g_n(v76);
    v79 = v78;

    specialized DPFGenerator.generate<A>(for:seedForParty0:seedForParty1:using:)(v88, v50, v49, v71, v70, v77, v79, v89, &v93, v87, v75);

    outlined consume of Data._Representation(v77, v79);
    *v86 = v93;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy4VDAF18PreambleInputShareVyAC19XofHmacSha256Aes128CGGMd, &_ss23_ContiguousArrayStorageCy4VDAF18PreambleInputShareVyAC19XofHmacSha256Aes128CGGMR);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_270C44550;
    *(v9 + 32) = v85;
    *(v9 + 40) = v82;
    outlined consume of Data._Representation(v71, v70);
    outlined consume of Data._Representation(v50, v49);
  }

LABEL_86:
  v80 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t Preamble<>.shardAndEncodeIntoBytes(_:nonce:seedBytes:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v12 = *v5;
  v13 = v5[1];
  v14 = v5[2];
  outlined copy of Data._Representation(a2, a3);
  v15 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCs5UInt8V_10Foundation4DataVTt0g5(a2, a3);
  v16 = specialized Preamble.shard<A>(_:nonce:seedBytes:)(&v38, a1, v15, a4, a5, v12, v13);

  if (v6)
  {
    return a4;
  }

  v18 = *(&v38 + 1);
  v17 = v38;
  v19 = specialized PreamblePublicShare.encodedLength.getter(v38, *(&v38 + 1));
  v20 = MEMORY[0x277D84F90];
  *&v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19 & ~(v19 >> 63), 0, MEMORY[0x277D84F90]);
  specialized PreamblePublicShare.encode<A>(into:)(&v38, v17, v18);

  a4 = v38;
  v21 = *(v16 + 16);
  if (!v21)
  {

    return a4;
  }

  v39 = v38;
  *&v38 = v20;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21, 0);
  v22 = 32;
  v23 = v38;
  while (1)
  {
    v24 = *(v16 + v22);
    v25 = *(v24 + 16);

    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v25, 0, v20);
    v27 = *(v24 + 16);
    v28 = *(result + 16);
    v29 = v28 + v27;
    if (__OFADD__(v28, v27))
    {
      break;
    }

    v30 = result;
    if (v29 > *(result + 24) >> 1)
    {
      if (v28 <= v29)
      {
        v35 = v28 + v27;
      }

      else
      {
        v35 = *(result + 16);
      }

      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(1, v35, 1, result);
      v30 = result;
      v28 = *(result + 16);
      if (*(v24 + 16))
      {
LABEL_7:
        if (((*(v30 + 24) >> 1) - v28) < v27)
        {
          goto LABEL_24;
        }

        memcpy((v30 + v28 + 32), (v24 + 32), v27);

        if (v27)
        {
          v32 = *(v30 + 16);
          v33 = __OFADD__(v32, v27);
          v34 = v32 + v27;
          if (v33)
          {
            goto LABEL_25;
          }

          *(v30 + 16) = v34;
        }

        goto LABEL_16;
      }
    }

    else
    {
      v31 = *(v24 + 16);
      if (v27)
      {
        goto LABEL_7;
      }
    }

    if (v27)
    {
      goto LABEL_23;
    }

LABEL_16:
    *&v38 = v23;
    v37 = *(v23 + 16);
    v36 = *(v23 + 24);
    if (v37 >= v36 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1);
      v23 = v38;
    }

    *(v23 + 16) = v37 + 1;
    *(v23 + 8 * v37 + 32) = v30;
    v22 += 8;
    if (!--v21)
    {

      return v39;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t *Preamble<>.encodedAggregateShare(_:)(uint64_t *result)
{
  v1 = *result;
  v2 = *(*result + 16);
  if (v2 >> 61)
  {
    __break(1u);
  }

  else
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 4 * v2, 0, MEMORY[0x277D84F90]);
    specialized Collection<>.encode<A>(into:)(&v3, v1);
    return v3;
  }

  return result;
}

uint64_t Preamble<>.unshard(_:numOfMeasurements:)(void *a1)
{
  v2 = v1[1];
  v3 = v1[2];
  return _s4VDAF8PreambleV7unshard_17numOfMeasurements9parameterSayq_Gqd___SiAA11VoidCodableVtKSkRd__AA14AggregateShareVyxG7ElementRtd__lFAA7Field32V_s5Int32VAA19XofHmacSha256Aes128CSayAKyAPGGTt1B5Tf4ndn_n(a1, *v1);
}

uint64_t Preamble<>.unshardAndEncodeIntoBytes(_:numOfMeasurements:)(void *a1)
{
  v3 = v1[1];
  v4 = v1[2];
  result = _s4VDAF8PreambleV7unshard_17numOfMeasurements9parameterSayq_Gqd___SiAA11VoidCodableVtKSkRd__AA14AggregateShareVyxG7ElementRtd__lFAA7Field32V_s5Int32VAA19XofHmacSha256Aes128CSayAKyAPGGTt1B5Tf4ndn_n(a1, *v1);
  if (!v2)
  {
    v6 = specialized VDAFEncodable.encodedBytes.getter();

    return v6;
  }

  return result;
}

uint64_t Preamble<>.prepareInitAndEncodeIntoBytes(verifyKey:aggregatorID:nonce:encodedPublicShare:encodedInputShare:)(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, _BYTE *a6, _BYTE *a7, _OWORD *a8, unint64_t a9)
{
  v17 = *v9;
  v16 = v9[1];
  v18 = v9[2];
  outlined copy of Data._Representation(a1, a2);
  _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCs5UInt8V_10Foundation4DataVTt0g5(a1, a2);

  outlined copy of Data._Representation(a4, a5);
  result = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCs5UInt8V_10Foundation4DataVTt0g5(a4, a5);
  v20 = 63 - __clz(v16);
  v21 = v17 - v20;
  if (__OFSUB__(v17, v20))
  {
    __break(1u);
    goto LABEL_11;
  }

  v22 = result;
  v23 = v17;
  v52[0] = v18;
  v52[1] = 32;
  v52[2] = v16;
  v52[3] = v17 - v20;
  v53 = 0;
  _s4VDAF19PreamblePublicShareV4from9parameterACyxGqd___AA0bcD18DecodableParameterVSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA7Field32V_SWTt2B5(a6, a7, v52, v45);
  if (v44)
  {
LABEL_6:

    return v16;
  }

  v24 = v45[0];
  v25 = v45[1];
  _s4VDAF18PreambleInputShareV4fromACyxGqd___tKcSkRd__s5UInt8V7ElementRtd__lufCAA19XofHmacSha256Aes128C_SWTt1g5(a8, a9, &v54);
  if (a3 >= 2)
  {

    v35 = dispatch thunk of CustomStringConvertible.description.getter();
    v37 = v36;
    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    swift_allocError();
    *v38 = v35;
    *(v38 + 8) = v37;
    *(v38 + 16) = 0;
    swift_willThrow();
    goto LABEL_6;
  }

  v26 = _s4VDAF12VDAFProtocolPAAE19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA8PreambleVyAA7Field32Vs5Int32VAA19XofHmacSha256Aes128CG_Tt0B5Tm(0, 0, 118554623);
  v46[0] = a3;
  v47 = v23;
  v48 = v18;
  v49 = v16;
  v50 = v21;
  v51 = v26;

  v28 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSayAEG_Tt0g5Tf4g_n(v27);
  v30 = v29;

  v31 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSayAEG_Tt0g5Tf4g_n(v22);
  v33 = v32;

  v34 = specialized DPFEvaluator.evaluateAllInternal(seed:nonce:innerCorrections:untilLevel:)(v28, v30, v31, v33, v24, 0, 1uLL);
  v39 = specialized DPFEvaluator.evaluateLeaves(inputs:nonce:leafCorrections:)(v34, v31, v33, v25);
  outlined destroy of PINEInputShare<Field40, XofHmacSha256Aes128>(v46, &_s4VDAF12DPFEvaluatorVyAA7Field32VAA19XofHmacSha256Aes128CGMd, &_s4VDAF12DPFEvaluatorVyAA7Field32VAA19XofHmacSha256Aes128CGMR);
  outlined consume of Data._Representation(v31, v33);
  outlined consume of Data._Representation(v28, v30);

  v40 = *(v39 + 16);

  if (!(v40 >> 61))
  {
    v41 = MEMORY[0x277D84F90];
    v45[0] = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 4 * v40, 0, MEMORY[0x277D84F90]);
    specialized Collection<>.encode<A>(into:)(v45, v39);

    v16 = v45[0];
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 0, 0, v41);
    return v16;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t Preamble<>.encodedPrepareMessageFrom(encodedShares:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v7 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = v7;
    v3 = *(v7 + 16);
    do
    {
      v8 = v2;
      v4 = *(v2 + 24);
      v5 = v3 + 1;
      if (v3 >= v4 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v3 + 1, 1);
        v2 = v8;
      }

      *(v2 + 16) = v5;
      v3 = v5;
      --v1;
    }

    while (v1);
  }

  return 0;
}

char *Preamble<>.prepareNextAndEncodeIntoBytes(aggregatorID:encodedState:encodedMessage:)(uint64_t a1, char *a2, _BYTE *a3)
{
  result = _sSa4VDAFAA12FieldElementRzlE4fromSayxGqd___tKcSkRd__s5UInt8V0C0Rtd__lufCAA7Field32V_SWTt0g5(a2, a3);
  if (v3)
  {
    return v5;
  }

  v6 = *(result + 2);
  if (!(v6 >> 61))
  {
    v7 = result;
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 4 * v6, 0, MEMORY[0x277D84F90]);
    specialized Collection<>.encode<A>(into:)(&v8, v7);

    return v8;
  }

  __break(1u);
  return result;
}

char *Preamble<>.outputShare(from:)@<X0>(char *a1@<X0>, _BYTE *a2@<X1>, char **a3@<X8>)
{
  result = _sSa4VDAFAA12FieldElementRzlE4fromSayxGqd___tKcSkRd__s5UInt8V0C0Rtd__lufCAA7Field32V_SWTt0g5(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

void *_s4VDAF10LeafParentC04makeB7Parents17dimensionBitCount9blockSize4fromSayACyxGGSi_SiSDySiqd__GtKSzRd__lFZAA7Field32V_s5Int32VTt2g5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = a1;
  v27 = MEMORY[0x277D84F98];
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  do
  {
    if (!v9)
    {
      while (1)
      {
        v12 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v12 >= v10)
        {
          goto LABEL_12;
        }

        v9 = *(v6 + 8 * v12);
        ++v11;
        if (v9)
        {
          v11 = v12;
          goto LABEL_10;
        }
      }

      __break(1u);
      goto LABEL_24;
    }

    v12 = v11;
LABEL_10:
    v13 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    specialized closure #1 in static LeafParent.makeLeafParents<A>(dimensionBitCount:blockSize:from:)(&v27, *(*(a3 + 48) + 8 * (v13 | (v12 << 6))), *(*(a3 + 56) + 4 * (v13 | (v12 << 6))), a2);
  }

  while (!v3);
  MEMORY[0x2743B3440](v3);

  __break(1u);
LABEL_12:

  v14 = v27;
  v15 = v27[2];
  v16 = MEMORY[0x277D84F90];
  if (!v15)
  {
    goto LABEL_15;
  }

  v17 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi3key_Say4VDAF4LeafVyAG7Field32VGG5valuet_Tt1g5(v27[2], 0);
  v26 = specialized Sequence._copySequenceContents(initializing:)(&v27, v17 + 4, v15, v14);

  outlined consume of [Int : [Leaf<Field32>]].Iterator._Variant();
  if (v26 != v15)
  {
    __break(1u);
LABEL_15:
    v17 = v16;
  }

  v27 = v17;
  specialized MutableCollection<>.sort(by:)(&v27);
  v6 = v3;
  if (v3)
  {
    goto LABEL_25;
  }

  v18 = v27;
  v19 = v27[2];
  if (!v19)
  {

    return MEMORY[0x277D84F90];
  }

  v27 = v16;
  specialized ContiguousArray.reserveCapacity(_:)();
  v20 = 0;
  v21 = v18 + 5;
  while (v20 < v18[2])
  {
    v22 = *(v21 - 1);
    v23 = *v21;
    swift_bridgeObjectRetain_n();
    _s4VDAF10LeafParentC17dimensionBitCount6prefix9blockSize6leavesACyxGSi_S2iSayAA0B0VyxGGtKcfCAA7Field32V_Tt3g5(v28, v22, a2, v23);

    ++v20;
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v24 = v27[2];
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v21 += 2;
    if (v19 == v20)
    {

      return v27;
    }
  }

LABEL_24:
  __break(1u);
LABEL_25:
  MEMORY[0x2743B3440](v6);

  __break(1u);
  return result;
}

uint64_t specialized closure #1 in static LeafParent.makeLeafParents<A>(dimensionBitCount:blockSize:from:)(char **a1, uint64_t a2, int a3, uint64_t a4)
{
  if (!a4)
  {
    __break(1u);
    goto LABEL_20;
  }

  v6 = a4;
  v7 = a2;
  if (a2 == 0x8000000000000000 && a4 == -1)
  {
    __break(1u);
LABEL_23:
    specialized _NativeDictionary.copy()();
    v5 = v25;
    *a1 = v25;
    if (v10)
    {
      goto LABEL_15;
    }

LABEL_14:
    specialized _NativeDictionary._insert(at:key:value:)(v9, v8, MEMORY[0x277D84F90], v5);
    goto LABEL_15;
  }

  if (a3 >= 0)
  {
    v12 = a3;
  }

  else
  {
    v12 = (a3 - 0xFFFFF);
  }

  v8 = a2 / a4;
  _s4VDAF12FieldElementPAAEyx06FiniteB0_11IntegerTypeQZcfCAA7Field32V_Tt1g5(v12, &v26);
  v4 = v26;
  v13 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *a1;
  v25 = *a1;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(v7 / v6);
  v16 = *(v5 + 2);
  v17 = (v15 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  LOBYTE(v10) = v15;
  if (*(v5 + 3) >= v18)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      *a1 = v5;
      if (v15)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    goto LABEL_23;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, isUniquelyReferenced_nonNull_native);
  v5 = v25;
  v19 = specialized __RawDictionaryStorage.find<A>(_:)(v7 / v6);
  if ((v10 & 1) != (v20 & 1))
  {
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v9 = v19;
  *a1 = v25;
  if ((v10 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_15:
  v10 = *(v5 + 7);
  v5 = *(v10 + 8 * v9);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(v10 + 8 * v9) = v5;
  if ((result & 1) == 0)
  {
LABEL_21:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
    v5 = result;
    *(v10 + 8 * v9) = result;
  }

  v23 = *(v5 + 2);
  v22 = *(v5 + 3);
  if (v23 >= v22 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v5);
    v5 = result;
    *(v10 + 8 * v9) = result;
  }

  *(v5 + 2) = v23 + 1;
  v24 = &v5[16 * v23];
  *(v24 + 4) = v7 - v8 * v6;
  *(v24 + 10) = v4;
  return result;
}

uint64_t specialized Sequence<>.max()(uint64_t a1)
{
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  if (v4)
  {
    v5 = 0;
    v6 = __clz(__rbit64(v4));
    v7 = (v4 - 1) & v4;
    v8 = (v2 + 63) >> 6;
LABEL_9:
    v12 = *(a1 + 48);
    result = *(v12 + 8 * v6);
    if (!v7)
    {
      goto LABEL_11;
    }

    do
    {
      v14 = v5;
LABEL_15:
      v15 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v16 = *(v12 + ((v14 << 9) | (8 * v15)));
      if (result <= v16)
      {
        result = v16;
      }
    }

    while (v7);
LABEL_11:
    while (1)
    {
      v14 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v14 >= v8)
      {
        return result;
      }

      v7 = *(v1 + 8 * v14);
      ++v5;
      if (v7)
      {
        v5 = v14;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v8 = (v2 + 63) >> 6;
    while (v8 - 1 != v10)
    {
      v5 = v10 + 1;
      v11 = *(a1 + 72 + 8 * v10);
      v9 -= 64;
      ++v10;
      if (v11)
      {
        v7 = (v11 - 1) & v11;
        v6 = __clz(__rbit64(v11)) - v9;
        goto LABEL_9;
      }
    }

    return 0;
  }

  return result;
}

uint64_t specialized DPFGenerator.generate<A>(for:seedForParty0:seedForParty1:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X7>, char **a9@<X8>, uint64_t a10, void *a11)
{
  v21 = a3 >> 62;
  if ((a3 >> 62) <= 1)
  {
    if (!v21)
    {
      v22 = BYTE6(a3);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v21 != 2)
  {
    v22 = 0;
    goto LABEL_11;
  }

  v24 = *(a2 + 16);
  v23 = *(a2 + 24);
  v25 = __OFSUB__(v23, v24);
  v22 = v23 - v24;
  if (v25)
  {
    __break(1u);
LABEL_8:
    LODWORD(v22) = HIDWORD(a2) - a2;
    if (__OFSUB__(HIDWORD(a2), a2))
    {
      __break(1u);
      goto LABEL_59;
    }

    v22 = v22;
  }

LABEL_11:
  v26 = a5 >> 62;
  if ((a5 >> 62) > 1)
  {
    if (v26 != 2)
    {
      if (!v22)
      {
        goto LABEL_18;
      }

LABEL_24:
      lazy protocol witness table accessor for type GeneratorError and conformance GeneratorError();
      swift_allocError();
      *v31 = xmmword_270C44F50;
      goto LABEL_25;
    }

    v28 = *(a4 + 16);
    v27 = *(a4 + 24);
    v25 = __OFSUB__(v27, v28);
    v29 = v27 - v28;
    if (!v25)
    {
      if (v22 == v29)
      {
        goto LABEL_18;
      }

      goto LABEL_24;
    }

LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  if (v26)
  {
    if (!__OFSUB__(HIDWORD(a4), a4))
    {
      if (v22 != HIDWORD(a4) - a4)
      {
        goto LABEL_24;
      }

      goto LABEL_18;
    }

LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  if (v22 != BYTE6(a5))
  {
    goto LABEL_24;
  }

LABEL_18:
  v19 = a6;
  v18 = a7;
  v14 = v13;
  v17 = a2;
  v12 = a3;
  v16 = a4;
  v15 = a5;
  v60 = a9;
  v11 = a1;
  a1 = specialized Sequence<>.max()(a1);
  if (v30)
  {
    lazy protocol witness table accessor for type GeneratorError and conformance GeneratorError();
    swift_allocError();
    *v31 = 0;
    *(v31 + 8) = 0;
LABEL_25:
    *(v31 + 16) = 1;
    return swift_willThrow();
  }

  if (a8 >= -64)
  {
    if (a8 > 64)
    {
      goto LABEL_32;
    }

    if ((a8 & 0x8000000000000000) == 0)
    {
      if (a8 == 64)
      {
LABEL_32:
        if ((a1 & 0x8000000000000000) == 0)
        {
          goto LABEL_30;
        }

        goto LABEL_38;
      }

      v35 = 1 << a8;
LABEL_37:
      if (a1 >= v35)
      {
        goto LABEL_30;
      }

      goto LABEL_38;
    }

LABEL_61:
    if (a8 == -64)
    {
      goto LABEL_29;
    }

    v35 = 0;
    v13 = v14;
    goto LABEL_37;
  }

LABEL_29:
  v13 = v14;
  if ((a1 & 0x8000000000000000) == 0)
  {
LABEL_30:
    v33 = a1;
    lazy protocol witness table accessor for type GeneratorError and conformance GeneratorError();
    swift_allocError();
    *v34 = v33;
    *(v34 + 8) = a8;
    *(v34 + 16) = 0;
    return swift_willThrow();
  }

LABEL_38:
  result = _s4VDAF10LeafParentC04makeB7Parents17dimensionBitCount9blockSize4fromSayACyxGGSi_SiSDySiqd__GtKSzRd__lFZAA7Field32V_s5Int32VTt2g5(a8, a10, v11);
  if (!v13)
  {
    v59 = result;
    if (result >> 62)
    {
      if (result < 0)
      {
        v55 = result;
      }

      else
      {
        v55 = result & 0xFFFFFFFFFFFFFF8;
      }

      v37 = MEMORY[0x2743B2FD0](v55);
      v56 = v55;
      v36 = v59;
      result = MEMORY[0x2743B2FD0](v56);
    }

    else
    {
      v36 = result;
      result = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
      v37 = result;
    }

    if (result)
    {
      if ((v36 & 0xC000000000000001) != 0)
      {
        goto LABEL_68;
      }

      if (!*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      v63 = *(*(v36 + 32) + 32);
    }

    else
    {

      v63 = 0;
    }

    while (1)
    {
      outlined copy of Data._Representation(v17, v12);
      v70 = _sSa9repeating5countSayxGx_SitcfC10Foundation4DataV_Tt1g5Tf4gn_n(v17, v12, v37);
      outlined consume of Data._Representation(v17, v12);
      outlined copy of Data._Representation(v16, v15);
      v17 = _sSa9repeating5countSayxGx_SitcfC10Foundation4DataV_Tt1g5Tf4gn_n(v16, v15, v37);
      outlined consume of Data._Representation(v16, v15);
      v38 = makeClientRootCtrls(_:)(v37);
      v12 = v63;
      if ((v63 & 0x8000000000000000) == 0)
      {
        break;
      }

      __break(1u);
LABEL_68:

      v63 = *(MEMORY[0x2743B2D10](0, v36) + 32);
      swift_unknownObjectRelease();
    }

    v40 = v39;
    v57 = v19;
    v58 = v18;
    v41 = a11;
    if (v63)
    {
      v42 = 0;
      v43 = MEMORY[0x277D84F90];
      v44 = v39;
      v45 = v38;
      v46 = v17;
      v47 = v70;
      do
      {
        specialized InnerCorrectionCalculator.generate(at:with:using:)(v42, v47, v46, v45, v44, v57, v58, v59, &v65);
        v61 = v65;
        v70 = v66;
        v48 = v69;
        v62 = v68;
        v64 = v67;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v43 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v43 + 2) + 1, 1, v43);
        }

        v50 = *(v43 + 2);
        v49 = *(v43 + 3);
        v41 = a11;
        if (v50 >= v49 >> 1)
        {
          v53 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v49 > 1), v50 + 1, 1, v43);
          v40 = v48;
          v41 = a11;
          v43 = v53;
        }

        else
        {
          v40 = v48;
        }

        ++v42;
        *(v43 + 2) = v50 + 1;
        *&v43[16 * v50 + 32] = v61;
        v44 = v40;
        v51 = v64;
        v45 = v62;
        v46 = v64;
        v52 = v70;
        v47 = v70;
      }

      while (v12 != v42);
    }

    else
    {
      v43 = MEMORY[0x277D84F90];
      v52 = v70;
      v51 = v17;
    }

    v54 = specialized LeafCorrectionCalculator.calculate(seedsParty0:seedsParty1:nonce:ctrlParty1:)(v52, v51, v57, v58, v40, a10, v59, v41);

    *v60 = v43;
    v60[1] = v54;
  }

  return result;
}

uint64_t specialized LeafCorrectionCalculator.calculate(seedsParty0:seedsParty1:nonce:ctrlParty1:)(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  if ((a6 - 0x2000000000000000) >> 62 != 3)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (a7 >> 62)
  {
LABEL_14:
    v8 = a2;
    v9 = result;
    v10 = a7;
    if (a7 < 0)
    {
      v32 = a7;
    }

    else
    {
      v32 = a7 & 0xFFFFFFFFFFFFFF8;
    }

    result = MEMORY[0x2743B2FD0](v32);
    if ((result & 0x8000000000000000) == 0)
    {
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_19;
  }

  v11 = *((a7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = a7; v11; i = v10)
  {
    if (v11 > *(result + 16))
    {
LABEL_19:
      __break(1u);
    }

    else if (v11 <= *(a2 + 16))
    {
      v12 = (a2 + 40);
      v13 = (result + 40);
      v14 = MEMORY[0x277D84F90];
      do
      {
        v15 = *(v13 - 1);
        v16 = *v13;
        outlined copy of Data._Representation(v15, *v13);
        v17 = _s4VDAF4SeedV4from9parameterACx_ytSgtcSkRzs5UInt8V7ElementRtzlufC10Foundation4DataV_Tt1g5Tf4nd_n(v15, v16);
        outlined copy of Data._Representation(a3, a4);
        v18 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCs5UInt8V_10Foundation4DataVTt0g5(a3, a4);
        v19 = _s4VDAF31BatchedExtendableOutputFunctionPAAE7makeXOF4seed19domainSeparationTag6binder10generatingxAA4SeedV_Says5UInt8VGAMSitFZAA19XofHmacSha256Aes128C_Tt3g5(v17, a8, v18, a6);

        v20 = *(v12 - 1);
        v21 = *v12;
        outlined copy of Data._Representation(v20, *v12);
        v22 = _s4VDAF4SeedV4from9parameterACx_ytSgtcSkRzs5UInt8V7ElementRtzlufC10Foundation4DataV_Tt1g5Tf4nd_n(v20, v21);
        outlined copy of Data._Representation(a3, a4);
        v23 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCs5UInt8V_10Foundation4DataVTt0g5(a3, a4);
        v24 = _s4VDAF31BatchedExtendableOutputFunctionPAAE7makeXOF4seed19domainSeparationTag6binder10generatingxAA4SeedV_Says5UInt8VGAMSitFZAA19XofHmacSha256Aes128C_Tt3g5(v22, a8, v23, a6);

        v25 = _s4VDAF12FieldElementPAAE19randomVectorBatched5count5usingSayxGSi_qd__tAA0F24ExtendableOutputFunctionRd__lFZAA7Field32V_AA19XofHmacSha256Aes128CTt1g5(a6, v19);
        v26 = v14;
        v27 = _s4VDAF12FieldElementPAAE19randomVectorBatched5count5usingSayxGSi_qd__tAA0F24ExtendableOutputFunctionRd__lFZAA7Field32V_AA19XofHmacSha256Aes128CTt1g5(a6, v24);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14[2] + 1, 1, v14);
        }

        v29 = v26[2];
        v28 = v26[3];
        v14 = v26;
        v30 = v29 + 1;
        if (v29 >= v28 >> 1)
        {
          v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v14);
        }

        v12 += 2;
        v13 += 2;

        v14[2] = v30;
        v31 = &v14[2 * v29];
        v31[4] = v25;
        v31[5] = v27;
        --v11;
      }

      while (v11);
      goto LABEL_23;
    }

    __break(1u);
LABEL_21:
    v11 = result;
    result = v9;
    a2 = v8;
  }

  v14 = MEMORY[0x277D84F90];
  v30 = *(MEMORY[0x277D84F90] + 16);
  v33 = MEMORY[0x277D84F90];
  if (!v30)
  {
LABEL_66:

    return v33;
  }

LABEL_23:
  v34 = 0;
  v58 = v14 + 4;
  v57 = v30;
  v33 = MEMORY[0x277D84F90];
  v60 = v14;
  while (1)
  {
    if (v34 >= v14[2])
    {
      goto LABEL_78;
    }

    v35 = &v58[2 * v34];
    v67 = *v35;
    v65 = v35[1];
    if ((i & 0xC000000000000001) != 0)
    {

      v36 = MEMORY[0x2743B2D10](v34, i);
    }

    else
    {
      if (v34 >= *((i & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_79;
      }

      v36 = *(i + 32 + 8 * v34);
    }

    v59 = v33;
    v37 = *(v36 + 24);

    v38 = *(v37 + 16);
    if (v38)
    {
      break;
    }

    v40 = MEMORY[0x277D84F90];
LABEL_59:

    v33 = v59;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v59[2] + 1, 1, v59);
      v33 = result;
    }

    v14 = v60;
    v54 = v33[2];
    v53 = v33[3];
    v55 = v57;
    if (v54 >= v53 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v53 > 1), v54 + 1, 1, v33);
      v55 = v57;
      v33 = result;
    }

    ++v34;
    v33[2] = v54 + 1;
    v33[v54 + 4] = v40;
    if (v34 == v55)
    {
      goto LABEL_66;
    }
  }

  v39 = 0;
  v40 = MEMORY[0x277D84F90];
  while (v39 < *(v37 + 16))
  {
    if (v34 >= *(a5 + 16))
    {
      goto LABEL_68;
    }

    v41 = *(a5 + 32 + 8 * v34);
    if (v34 >= *(v41 + 16))
    {
      goto LABEL_69;
    }

    if (v39 >= *(v67 + 16))
    {
      goto LABEL_70;
    }

    v42 = *(v37 + 32 + 4 * v39);
    v43 = *(v41 + v34 + 32);
    v44 = *(v67 + 32 + 4 * v39);
    v45 = v42 - v44;
    if (v42 < v44)
    {
      v46 = v44 <= 0xFFF00001;
      v47 = -1048575 - v44;
      if (!v46)
      {
        goto LABEL_73;
      }

      v45 = v42 + v47;
      if (__CFADD__(v42, v47))
      {
        goto LABEL_74;
      }
    }

    if (v39 >= *(v65 + 16))
    {
      goto LABEL_71;
    }

    v48 = *(v65 + 32 + 4 * v39);
    if (v48)
    {
      v46 = v48 <= 0xFFF00001;
      v49 = -1048575 - v48;
      if (!v46)
      {
        goto LABEL_72;
      }

      if (v45 >= v49)
      {
        v45 -= v49;
        if ((v43 & 1) == 0)
        {
          goto LABEL_52;
        }

        goto LABEL_49;
      }

      v46 = v49 <= 0xFFF00001;
      v50 = -1048575 - v49;
      if (!v46)
      {
        goto LABEL_75;
      }

      v46 = __CFADD__(v45, v50);
      v45 += v50;
      if (v46)
      {
        goto LABEL_77;
      }
    }

    if ((v43 & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    if (v45)
    {
      v46 = v45 <= 0xFFF00001;
      v45 = -1048575 - v45;
      if (!v46)
      {
        goto LABEL_76;
      }
    }

LABEL_52:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v40 + 16) + 1, 1, v40);
      v40 = result;
    }

    v52 = *(v40 + 16);
    v51 = *(v40 + 24);
    if (v52 >= v51 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v51 > 1), v52 + 1, 1, v40);
      v40 = result;
    }

    ++v39;
    *(v40 + 16) = v52 + 1;
    *(v40 + 4 * v52 + 32) = v45;
    if (v38 == v39)
    {
      goto LABEL_59;
    }
  }

  __break(1u);
LABEL_68:
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
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
  return result;
}

uint64_t _s4VDAF18PreambleInputShareV4fromACyxGqd___tKcSkRd__s5UInt8V7ElementRtd__lufCAA19XofHmacSha256Aes128C_SayAGGTt1g5@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  if (*(result + 16) == 32)
  {
    *a2 = result;
  }

  else
  {

    _StringGuts.grow(_:)(24);

    v2 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v2);

    MEMORY[0x2743B25F0](0x203A746F67202CLL, 0xE700000000000000);
    v3 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v3);

    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v4 = 0xD000000000000032;
    v4[1] = 0x8000000270C524C0;
    return swift_willThrow();
  }

  return result;
}

void *_s4VDAF18PreambleInputShareV4fromACyxGqd___tKcSkRd__s5UInt8V7ElementRtd__lufCAA19XofHmacSha256Aes128C_SWTt1g5@<X0>(_OWORD *a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  if (a1 && a2 - a1 == 32)
  {
    result = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1g5(32, 0);
    if (a2 <= a1)
    {
      __break(1u);
    }

    else
    {
      v7 = a1[1];
      *(result + 2) = *a1;
      *(result + 3) = v7;
      *a3 = result;
    }
  }

  else
  {
    _StringGuts.grow(_:)(24);

    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v8);

    MEMORY[0x2743B25F0](0x203A746F67202CLL, 0xE700000000000000);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v9);

    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v10 = 0xD000000000000032;
    v10[1] = 0x8000000270C524C0;
    return swift_willThrow();
  }

  return result;
}

uint64_t _s4VDAF19PreamblePublicShareV4from9parameterACyxGqd___AA0bcD18DecodableParameterVSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA7Field32V_SWTt2B5@<X0>(_BYTE *a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (*(a3 + 32))
  {
    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v9 = 0;
    v9[1] = 0;
    return swift_willThrow();
  }

  v50 = v5;
  v12 = *a3;
  v11 = *(a3 + 8);
  v14 = *(a3 + 16);
  v13 = *(a3 + 24);
  v15 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  v16 = v11 * v12;
  if ((v11 * v12) >> 64 != (v11 * v12) >> 63)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (v12 + 0x4000000000000000 < 0)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v17 = 2 * v12 + 7;
  if (__OFADD__(2 * v12, 7))
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v17 < 0)
  {
    v17 = 2 * v12 + 14;
  }

  v18 = v17 >> 3;
  v19 = v12 * (v17 >> 3);
  if ((v12 * v18) >> 64 != v19 >> 63)
  {
    goto LABEL_30;
  }

  v6 = v16 + v19;
  if (__OFADD__(v16, v19))
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v4 = v13 * v6;
  if ((v13 * v6) >> 64 != (v13 * v6) >> 63)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v40 = v14;
  v20 = (2 * v15[2]) | 1;
  v21 = v15;
  v22 = specialized Collection.prefix(_:)(v13 * v6, v15, v15 + 4, 0, v20);
  v43 = v24;
  v44 = v23;
  v26 = v25;
  v4 = specialized Collection.dropFirst(_:)(v13 * v6, v21, v21 + 4, 0, v20);
  v41 = v28;
  v42 = v27;
  v30 = v29;
  *&v45 = v12;
  *(&v45 + 1) = v11;
  v46 = 0;
  v47 = v13;
  v48 = v6;
  v49 = 0;

  v31 = v50;
  v32 = _sSa4VDAFAA13VDAFDecodableRzlE4from9parameterSayxGqd___18DecodableParameterQzSg07elementF0_Si5countSi0G13EncodedLengthtSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA16InnerCorrectionsV_s10ArraySliceVyANGTt1B5(v22, v44, v26, v43, &v45);
  v11 = v31;
  if (v31)
  {
    return swift_unknownObjectRelease();
  }

  v8 = v30;
  v14 = v42;
  v7 = v12;
  v12 = v32;
  v6 = v41;
  if (v41)
  {
    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    v35 = swift_dynamicCastClass();
    if (!v35)
    {
      swift_unknownObjectRelease();
      v35 = MEMORY[0x277D84F90];
    }

    v36 = *(v35 + 16);

    if (__OFSUB__(v41 >> 1, v8))
    {
      goto LABEL_34;
    }

    if (v36 != (v41 >> 1) - v8)
    {
      goto LABEL_35;
    }

    v6 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    v34 = v40;
    if (v6)
    {
      goto LABEL_22;
    }

    v6 = MEMORY[0x277D84F90];
    goto LABEL_21;
  }

  swift_unknownObjectRetain();
  while (1)
  {
    specialized _copyCollectionToContiguousArray<A>(_:)(v4, v14, v8, v6);
    v6 = v33;
    v34 = v40;
LABEL_21:
    swift_unknownObjectRelease();
LABEL_22:
    if ((v34 - 0x2000000000000000) >> 62 == 3)
    {
      break;
    }

LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    swift_unknownObjectRelease();
  }

  v37 = _sSa4VDAFAA13VDAFDecodableRzlE4from9parameterSayxGqd___18DecodableParameterQzSg07elementF0_Si5countSi0G13EncodedLengthtSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA22SiblingLeafCorrectionsVyAA7Field32VG_SayANGTt1g5(v6, 1, v7, 4 * v34, 0);
  if (v11)
  {

    return swift_unknownObjectRelease();
  }

  v38 = v37;
  result = swift_unknownObjectRelease();
  *a4 = v12;
  a4[1] = v38;
  return result;
}

unint64_t specialized closure #2 in Preamble.unshard<A>(_:numOfMeasurements:parameter:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, unsigned int *a3@<X8>)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = a2 + 32;
    while ((result & 0x8000000000000000) == 0)
    {
      if (*(*v5 + 16) <= result)
      {
        goto LABEL_19;
      }

      v6 = *(*v5 + 4 * result + 32);
      if (v6)
      {
        v7 = v6 <= 0xFFF00001;
        v8 = -1048575 - v6;
        if (!v7)
        {
          goto LABEL_20;
        }

        if (v4 >= v8)
        {
          v4 -= v8;
        }

        else
        {
          v7 = v8 <= 0xFFF00001;
          v9 = -1048575 - v8;
          if (!v7)
          {
            goto LABEL_21;
          }

          v7 = __CFADD__(v4, v9);
          v4 += v9;
          if (v7)
          {
            __break(1u);
LABEL_16:
            *a3 = v4;
            return result;
          }
        }
      }

      v5 += 8;
      if (!--v3)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

unint64_t specialized DPFEvaluator.evaluateAllInternal(seed:nonce:innerCorrections:untilLevel:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, Swift::Int a6, unint64_t a7)
{
  v9 = v8;
  v14 = *v7;
  v15 = *(v7 + 2);
  v16 = *_emptyDequeStorage.unsafeMutableAddressor();
  v159 = v16;
  LOBYTE(v151[0]) = v14;

  v124 = v15;
  v17 = specialized static EvaluatorLevelInput.makeRootInput(for:keptBlockCount:seed:)(v151, v15, a1, a2);
  v136 = v18;
  v137 = v19;
  v138 = v20;
  v21 = v16[3];
  v22 = v21 + 1;
  if (__OFADD__(v21, 1))
  {
    goto LABEL_143;
  }

  v23 = v17;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (v16[2] < v22 || (isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized Deque._Storage._ensureUnique(isUnique:minimumCapacity:linearGrowth:)(isUniquelyReferenced_nonNull_native, v22, 0);
    v16 = v159;
  }

  specialized closure #1 in Deque.append(_:)(v16 + 2, (v16 + 5), v23, v136, v137, v138);
  if (a7)
  {
    a6 = *(v134 + 32);
  }

  if (a6 > -65 && a6 <= 64)
  {
    if (a6 < 0)
    {
      goto LABEL_157;
    }

    if (a6 != 64)
    {
      v25 = 1 << a6;
      goto LABEL_15;
    }
  }

  a6 = v16[3];
  if (a6 < 0)
  {
    v25 = 0;
    if (a6 >= 1)
    {
      goto LABEL_17;
    }

LABEL_117:
    lazy protocol witness table accessor for type EvaluatorError and conformance EvaluatorError();
    swift_allocError();
    *v111 = 0;
    *(v111 + 8) = 0;
    *(v111 + 16) = -64;
    swift_willThrow();
    outlined consume of Data._Representation(v136, v137);
  }

  else
  {
LABEL_129:

    if (a6)
    {
      a7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(a7 + 16) = a6;
    }

    else
    {
      a7 = MEMORY[0x277D84F90];
    }

    v152 = 0;
    v151[0] = a7 + 32;
    v151[1] = a6;
    specialized closure #1 in closure #1 in Deque._copyToContiguousArray()(v16 + 2, (v16 + 5), v151, &v152);
    if (a6 < v152)
    {
LABEL_144:
      __break(1u);
LABEL_145:
      __break(1u);
      while (1)
      {
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
LABEL_152:
        __break(1u);
LABEL_153:
        __break(1u);
LABEL_154:
        __break(1u);
LABEL_155:
        __break(1u);
LABEL_156:
        __break(1u);
LABEL_157:
        if (a6 == -64)
        {
LABEL_162:
          a6 = v16[3];
          if ((a6 & 0x8000000000000000) == 0)
          {
            goto LABEL_129;
          }

          v25 = 0;
          if (a6 < 1)
          {
            goto LABEL_117;
          }
        }

        else
        {
          v25 = 0;
LABEL_15:
          a6 = v16[3];
          if (a6 >= v25)
          {
            goto LABEL_128;
          }

          if (a6 < 1)
          {
            goto LABEL_117;
          }
        }

LABEL_17:
        v119 = *(v134 + 40);
        v118 = v25;
        while (1)
        {
          v16 = v159;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            specialized Deque._Storage._makeUniqueCopy()();
            v16 = v159;
          }

          v26 = v16[4];
          v27 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
            break;
          }

          v28 = &v16[4 * v26];
          v29 = v28[5];
          v30 = v28[6];
          v31 = v28[7];
          a7 = v28[8];
          v32 = v16[3];
          if (v27 >= v16[2])
          {
            v27 = 0;
          }

          v16[4] = v27;
          if (__OFSUB__(v32, 1))
          {
            goto LABEL_147;
          }

          v122 = v16;
          v123 = v29;
          v16[3] = v32 - 1;
          outlined copy of Data._Representation(v30, v31);
          a6 = a3;
          v16 = a4;
          outlined copy of Data._Representation(a3, a4);
          outlined init with copy of PINEInputShare<Field40, XofHmacSha256Aes128>(v134, v151, &_s4VDAF12DPFEvaluatorVyAA7Field32VAA19XofHmacSha256Aes128CGMd, &_s4VDAF12DPFEvaluatorVyAA7Field32VAA19XofHmacSha256Aes128CGMR);
          specialized SeedCtrlUnadjusted.init(from:doubling:using:for:)(v30, v31, v124, a3, a4, v119, &v153);
          outlined consume of Data._Representation(a3, a4);
          v120 = v30;
          v121 = v31;
          outlined consume of Data._Representation(v30, v31);
          if ((v123 & 0x8000000000000000) != 0)
          {
            goto LABEL_148;
          }

          if (v123 >= *(a5 + 16))
          {
            goto LABEL_149;
          }

          v150 = v9;
          v34 = v155;
          v33 = v156;
          v35 = v157;
          v9 = v158;
          v36 = *(a7 + 16);
          v145 = v158;
          v146 = v153;
          v147 = v154;
          if (v36)
          {
            v37 = (a5 + 32 + 16 * v123);
            v16 = *v37;
            v38 = v37[1];
            v143 = a7 + 32;
            outlined copy of Data._Representation(v153, v154);
            outlined copy of Data._Representation(v34, v33);
            v132 = v38 & 0xC000000000000001;
            v133 = v16 + 4;
            v130 = v38 + 32;
            v131 = v38 & 0xFFFFFFFFFFFFFF8;

            v144 = v16;

            v117 = v38;

            a6 = 0;
            v129 = a7;
            v127 = v36;
            while (1)
            {
              if (a6 >= *(a7 + 16))
              {
                goto LABEL_139;
              }

              if (*(v143 + a6) == 1)
              {
                v140 = v35;
                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4DataVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4DataVGMR);
                inited = swift_initStackObject();
                *(inited + 16) = xmmword_270C44550;
                *(inited + 32) = v146;
                v16 = (inited + 32);
                *(inited + 40) = v147;
                if (a6 >= v144[2])
                {
                  goto LABEL_140;
                }

                v9 = &v133[2 * a6];
                a7 = *v9;
                v40 = v9[1];
                *(inited + 48) = *v9;
                *(inited + 56) = v40;
                outlined copy of Data._Representation(v146, v147);
                outlined copy of Data._Representation(a7, v40);
                Array<A>.xor.getter(inited);
                if (v150)
                {
                  outlined consume of Data._Representation(v136, v137);

                  outlined destroy of SeedCtrlUnadjusted(&v153);
                  outlined consume of Data._Representation(v120, v121);

                  swift_bridgeObjectRelease_n();
                  outlined consume of Data._Representation(v34, v33);
                  outlined consume of Data._Representation(v146, v147);
                  swift_setDeallocating();
                  swift_arrayDestroy();

                  return a7;
                }

                v43 = v41;
                a7 = v42;
                outlined consume of Data._Representation(v146, v147);
                swift_setDeallocating();
                swift_arrayDestroy();
                v44 = swift_initStackObject();
                *(v44 + 16) = xmmword_270C44550;
                *(v44 + 32) = v34;
                v16 = (v44 + 32);
                *(v44 + 40) = v33;
                v149 = a6;
                if (a6 >= v144[2])
                {
                  goto LABEL_141;
                }

                v45 = v44;
                v146 = v43;
                v147 = a7;
                v46 = *v9;
                v47 = v9[1];
                *(v44 + 48) = *v9;
                *(v44 + 56) = v47;
                outlined copy of Data._Representation(v34, v33);
                outlined copy of Data._Representation(v46, v47);
                Array<A>.xor.getter(v45);
                v9 = 0;
                a6 = v48;
                a7 = v49;
                outlined consume of Data._Representation(v34, v33);
                swift_setDeallocating();
                swift_arrayDestroy();
                v150 = 0;
                v135 = a6;
                if (v132)
                {
                  v52 = MEMORY[0x2743B2D10](v149, v117);
                  v50 = v140;
                }

                else
                {
                  v50 = v140;
                  if (v149 >= *(v131 + 16))
                  {
                    goto LABEL_142;
                  }

                  v51 = *(v130 + 8 * v149);
                }

                v139 = a7;
                v148 = v52;
                v53 = *(v52 + 16);
                if (*(v53 + 16) >= v50[2])
                {
                  v54 = v50[2];
                }

                else
                {
                  v54 = *(v53 + 16);
                }

                v151[0] = MEMORY[0x277D84F90];

                a6 = v50;
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v54, 0);
                v9 = v151[0];
                if (v54)
                {
                  a7 = 0;
                  v55 = v50[2];
                  v56 = v50 + 4;
                  v57 = v53 + 32;
                  v16 = v50;
                  v58 = v53;
                  while (v55 != a7)
                  {
                    if (a7 >= v16[2])
                    {
                      goto LABEL_120;
                    }

                    v59 = *(v58 + 16);
                    if (a7 == v59)
                    {
                      goto LABEL_121;
                    }

                    if (a7 >= v59)
                    {
                      goto LABEL_122;
                    }

                    v60 = *(v56 + a7);
                    v61 = *(v57 + a7);
                    v151[0] = v9;
                    a6 = v9[2];
                    v62 = v9[3];
                    if (a6 >= v62 >> 1)
                    {
                      v113 = v55;
                      v115 = v58;
                      v63 = v56;
                      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v62 > 1), a6 + 1, 1);
                      v56 = v63;
                      v55 = v113;
                      v58 = v115;
                      v16 = v140;
                      v9 = v151[0];
                    }

                    ++a7;
                    v9[2] = a6 + 1;
                    *(v9 + a6 + 32) = v60 ^ v61;
                    if (v54 == a7)
                    {
                      goto LABEL_52;
                    }
                  }

                  __break(1u);
LABEL_120:
                  __break(1u);
LABEL_121:
                  __break(1u);
LABEL_122:
                  __break(1u);
LABEL_123:
                  __break(1u);
LABEL_124:
                  __break(1u);
LABEL_125:
                  __break(1u);
LABEL_126:
                  __break(1u);
LABEL_127:
                  v9 = v150;
LABEL_128:
                  if (a6 < 0)
                  {
                    goto LABEL_145;
                  }

                  goto LABEL_129;
                }

                v16 = v50;
                v58 = v53;
LABEL_52:
                v64 = v16[2];
                if (v54 != v64)
                {
                  a6 = (v16 + 4);
                  a7 = v58 + 32;
                  while (v54 < v64)
                  {
                    v75 = *(v58 + 16);
                    if (v54 == v75)
                    {
                      goto LABEL_53;
                    }

                    if (v54 >= v75)
                    {
                      goto LABEL_136;
                    }

                    v76 = *(a6 + v54);
                    v77 = *(a7 + v54);
                    v151[0] = v9;
                    v79 = v9[2];
                    v78 = v9[3];
                    if (v79 >= v78 >> 1)
                    {
                      v80 = v58;
                      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v78 > 1), v79 + 1, 1);
                      v58 = v80;
                      v16 = v140;
                      v9 = v151[0];
                    }

                    ++v54;
                    v9[2] = v79 + 1;
                    *(v9 + v79 + 32) = v76 ^ v77;
                    v64 = v16[2];
                    if (v54 == v64)
                    {
                      goto LABEL_53;
                    }
                  }

                  __break(1u);
LABEL_136:
                  __break(1u);
                  goto LABEL_137;
                }

LABEL_53:

                a7 = *(v148 + 24);
                a6 = v145;
                if (*(a7 + 16) >= v145[2])
                {
                  v65 = v145[2];
                }

                else
                {
                  v65 = *(a7 + 16);
                }

                v151[0] = MEMORY[0x277D84F90];

                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v65, 0);
                v16 = v151[0];
                if (v65)
                {
                  v66 = 0;
                  v67 = v145[2];
                  v68 = v145 + 4;
                  v69 = a7 + 32;
                  v70 = v145;
                  v71 = a7;
                  while (v67 != v66)
                  {
                    if (v66 >= v70[2])
                    {
                      goto LABEL_124;
                    }

                    v72 = *(v71 + 16);
                    if (v66 == v72)
                    {
                      goto LABEL_125;
                    }

                    if (v66 >= v72)
                    {
                      goto LABEL_126;
                    }

                    v73 = *(v68 + v66);
                    a7 = *(v69 + v66);
                    v151[0] = v16;
                    a6 = v16[2];
                    v74 = v16[3];
                    if (a6 >= v74 >> 1)
                    {
                      v141 = v71;
                      v114 = v68;
                      v116 = v67;
                      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v74 > 1), a6 + 1, 1);
                      v68 = v114;
                      v67 = v116;
                      v71 = v141;
                      v70 = v145;
                      v16 = v151[0];
                    }

                    ++v66;
                    v16[2] = a6 + 1;
                    *(v16 + a6 + 32) = v73 ^ a7;
                    if (v65 == v66)
                    {
                      goto LABEL_75;
                    }
                  }

                  goto LABEL_123;
                }

                v70 = v145;
                v71 = a7;
LABEL_75:
                v81 = v70[2];
                if (v65 != v81)
                {
                  a6 = (v70 + 4);
                  a7 = v71 + 32;
                  while (v65 < v81)
                  {
                    v82 = *(v71 + 16);
                    if (v65 == v82)
                    {
                      goto LABEL_76;
                    }

                    if (v65 >= v82)
                    {
                      goto LABEL_138;
                    }

                    v83 = *(a6 + v65);
                    v84 = *(a7 + v65);
                    v151[0] = v16;
                    v86 = v16[2];
                    v85 = v16[3];
                    if (v86 >= v85 >> 1)
                    {
                      v142 = v71;
                      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v85 > 1), v86 + 1, 1);
                      v71 = v142;
                      v70 = v145;
                      v16 = v151[0];
                    }

                    ++v65;
                    v16[2] = v86 + 1;
                    *(v16 + v86 + 32) = v83 ^ v84;
                    v81 = v70[2];
                    if (v65 == v81)
                    {
                      goto LABEL_76;
                    }
                  }

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
LABEL_143:
                  __break(1u);
                  goto LABEL_144;
                }

LABEL_76:

                v145 = v16;
                v34 = v135;
                v33 = v139;
                v35 = v9;
                a7 = v129;
                v36 = v127;
                a6 = v149;
              }

              else
              {
                v9 = v35;
              }

              if (++a6 == v36)
              {

                v35 = v9;
                goto LABEL_88;
              }
            }
          }

          outlined copy of Data._Representation(v153, v154);
          outlined copy of Data._Representation(v34, v33);

LABEL_88:
          v9 = (v123 + 1);
          if (__OFADD__(v123, 1))
          {
            goto LABEL_150;
          }

          v87 = v122[3];
          a6 = v87 + 1;
          if (__OFADD__(v87, 1))
          {
            goto LABEL_151;
          }

          v16 = v159;
          v88 = swift_isUniquelyReferenced_nonNull_native();
          if (v16[2] < a6 || (v88 & 1) == 0)
          {
            specialized Deque._Storage._ensureUnique(isUnique:minimumCapacity:linearGrowth:)(v88, a6, 0);
            v16 = v159;
          }

          v90 = v16[3];
          v89 = v16[4];
          v93 = __OFADD__(v89, v90);
          v91 = v89 + v90;
          if (v93)
          {
            goto LABEL_152;
          }

          if (v90 < 0)
          {
            if (v91 < 0)
            {
              v95 = v16[2];
              v93 = __OFADD__(v91, v95);
              v91 += v95;
              if (v93)
              {
                goto LABEL_160;
              }
            }
          }

          else
          {
            v92 = v16[2];
            v93 = __OFSUB__(v91, v92);
            v94 = v91 - v92;
            if (v94 < 0 == v93)
            {
              v91 = v94;
              if (v93)
              {
                __break(1u);
LABEL_159:
                __break(1u);
LABEL_160:
                __break(1u);
LABEL_161:
                __break(1u);
                goto LABEL_162;
              }
            }
          }

          v96 = &v16[4 * v91];
          v96[5] = v9;
          v96[6] = v146;
          v96[7] = v147;
          v96[8] = v35;
          v97 = v16[3];
          v93 = __OFADD__(v97, 1);
          v98 = v97 + 1;
          if (v93)
          {
            goto LABEL_153;
          }

          v16[3] = v98;
          a6 = v98 + 1;
          if (__OFADD__(v98, 1))
          {
            goto LABEL_154;
          }

          outlined copy of Data._Representation(v146, v147);

          v99 = swift_isUniquelyReferenced_nonNull_native();
          if (v16[2] < a6 || (v99 & 1) == 0)
          {
            specialized Deque._Storage._ensureUnique(isUnique:minimumCapacity:linearGrowth:)(v99, a6, 0);
            v16 = v159;
          }

          v101 = v16[3];
          v100 = v16[4];
          v93 = __OFADD__(v100, v101);
          v102 = v100 + v101;
          if (v93)
          {
            goto LABEL_155;
          }

          if (v101 < 0)
          {
            v106 = v145;
            if (v102 < 0)
            {
              v107 = v16[2];
              v93 = __OFADD__(v102, v107);
              v102 += v107;
              if (v93)
              {
                goto LABEL_161;
              }
            }
          }

          else
          {
            v103 = v16[2];
            v104 = __OFSUB__(v102, v103);
            v105 = v102 - v103;
            v106 = v145;
            if (v105 < 0 == v104)
            {
              v102 = v105;
              if (v104)
              {
                goto LABEL_159;
              }
            }
          }

          v108 = &v16[4 * v102];
          v108[5] = v9;
          v108[6] = v34;
          v108[7] = v33;
          v108[8] = v106;
          v109 = v16[3];
          v93 = __OFADD__(v109, 1);
          v110 = v109 + 1;
          if (v93)
          {
            goto LABEL_156;
          }

          v16[3] = v110;
          outlined copy of Data._Representation(v34, v33);

          outlined consume of Data._Representation(v146, v147);

          outlined destroy of SeedCtrlUnadjusted(&v153);
          outlined consume of Data._Representation(v120, v121);

          outlined consume of Data._Representation(v34, v33);

          a6 = v16[3];
          if (a6 >= v118)
          {
            goto LABEL_127;
          }

          v9 = v150;
          if (a6 < 1)
          {
            goto LABEL_117;
          }
        }
      }
    }

    *(a7 + 16) = v152;

    outlined consume of Data._Representation(v136, v137);
  }

  return a7;
}

uint64_t specialized DPFEvaluator.evaluateLeaves(inputs:nonce:leafCorrections:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v7 = v5;
  v82 = a3;
  v85 = a2;
  v77 = type metadata accessor for Data.Iterator();
  v10 = *(v77 - 8);
  v11 = *(v10 + 64);
  result = MEMORY[0x28223BE20](v77, v12);
  v76 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v4 + 2);
  v79 = a4;
  v16 = *(a4 + 16);
  if (v16 != v15)
  {
    lazy protocol witness table accessor for type EvaluatorError and conformance EvaluatorError();
    swift_allocError();
    *v61 = v15;
    *(v61 + 8) = v16;
    *(v61 + 16) = 2;
    swift_willThrow();
    return v6;
  }

  v17 = *(v4 + 3);
  v18 = *(a1 + 16);
  if ((v18 * v17) >> 64 != (v18 * v17) >> 63)
  {
    goto LABEL_83;
  }

  v19 = *v4;
  v75 = *(v4 + 5);
  v78 = v18;
  v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, (v18 * v17) & ~((v18 * v17) >> 63), 0, MEMORY[0x277D84F90]);
  if (!v78)
  {
    return v6;
  }

  v20 = 0;
  v74 = a1 + 32;
  v72 = (v10 + 8);
  v80 = v82 >> 62;
  v21 = __OFSUB__(HIDWORD(v85), v85);
  v68 = v21;
  v67 = HIDWORD(v85) - v85;
  v69 = BYTE6(v82);
  v70 = 4 * v17;
  v22 = v15;
  v73 = v15;
  v81 = v17;
  while (1)
  {
    v23 = (v74 + 32 * v20);
    result = v23[1];
    v24 = v23[2];
    v25 = v23[3];
    if (*(v25 + 16) != v22)
    {
      v62 = v23[1];
      outlined copy of Data._Representation(result, v23[2]);

      v63 = v22;
      v64 = *(v25 + 16);
      lazy protocol witness table accessor for type EvaluatorError and conformance EvaluatorError();
      swift_allocError();
      *v65 = v63;
      *(v65 + 8) = v64;
      *(v65 + 16) = -126;
      swift_willThrow();
      outlined consume of Data._Representation(v62, v24);

      return v6;
    }

    if ((v17 & 0x8000000000000000) != 0)
    {
      goto LABEL_73;
    }

    v84 = v20;
    v26 = *v23;
    v88 = result;
    outlined copy of Data._Representation(result, v24);
    v87 = v25;

    if (v17)
    {
      v27 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v27 + 16) = v17;
      bzero((v27 + 32), v70);
      v28 = v17;
    }

    else
    {
      v27 = MEMORY[0x277D84F90];
      v28 = *(MEMORY[0x277D84F90] + 16);
    }

    v89[0] = (v27 + 32);
    v89[1] = v28;
    result = specialized closure #1 in DPFEvaluator.evaluateLeaves(inputs:nonce:leafCorrections:)(v89, v79, v26, v88, v24, v87);
    if (v17 >> 61)
    {
      break;
    }

    v29 = v24 >> 62;
    v86 = v24;
    v83 = v7;
    if ((v24 >> 62) > 1)
    {
      v30 = v80;
      result = v88;
      if (v29 != 2)
      {
        goto LABEL_28;
      }

      v33 = *(v88 + 16);
      v32 = *(v88 + 24);
      v31 = v32 - v33;
      if (__OFSUB__(v32, v33))
      {
        goto LABEL_80;
      }
    }

    else
    {
      v30 = v80;
      result = v88;
      if (!v29)
      {
        v31 = BYTE6(v24);
        if (!BYTE6(v24))
        {
          goto LABEL_28;
        }

        goto LABEL_26;
      }

      if (__OFSUB__(HIDWORD(v88), v88))
      {
        goto LABEL_79;
      }

      v31 = HIDWORD(v88) - v88;
    }

    outlined copy of Data._Representation(v88, v24);
    result = v88;
    if (!v31)
    {
LABEL_28:
      result = outlined consume of Data._Representation(result, v24);
      v36 = MEMORY[0x277D84F90];
      goto LABEL_31;
    }

LABEL_26:
    if (v31 < 1)
    {
      v34 = MEMORY[0x277D84F90];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
      v34 = swift_allocObject();
      v35 = _swift_stdlib_malloc_size(v34);
      v34[2] = v31;
      v34[3] = 2 * v35 - 64;
    }

    v37 = v76;
    v38 = v88;
    v24 = v86;
    v39 = Data._copyContents(initializing:)();
    outlined consume of Data._Representation(v38, v24);
    v40 = v37;
    v36 = v34;
    result = (*v72)(v40, v77);
    v30 = v80;
    if (v39 != v31)
    {
      goto LABEL_77;
    }

LABEL_31:
    if (v30 > 1)
    {
      if (v30 != 2)
      {
        goto LABEL_41;
      }

      v43 = *(v85 + 16);
      v42 = *(v85 + 24);
      v41 = v42 - v43;
      if (__OFSUB__(v42, v43))
      {
        goto LABEL_82;
      }
    }

    else
    {
      v41 = v69;
      if (!v30)
      {
        goto LABEL_38;
      }

      v41 = v67;
      if (v68)
      {
        goto LABEL_81;
      }
    }

    outlined copy of Data._Representation(v85, v82);
LABEL_38:
    if (!v41)
    {
LABEL_41:
      outlined consume of Data._Representation(v85, v82);
      v44 = MEMORY[0x277D84F90];
      goto LABEL_45;
    }

    v71 = v36;
    if (v41 < 1)
    {
      v44 = MEMORY[0x277D84F90];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
      v44 = swift_allocObject();
      v45 = _swift_stdlib_malloc_size(v44);
      v44[2] = v41;
      v44[3] = 2 * v45 - 64;
    }

    v46 = v76;
    v47 = v85;
    v48 = v82;
    v49 = Data._copyContents(initializing:)();
    outlined consume of Data._Representation(v47, v48);
    result = (*v72)(v46, v77);
    v50 = v49 == v41;
    v24 = v86;
    v36 = v71;
    if (!v50)
    {
      goto LABEL_78;
    }

LABEL_45:
    v17 = v81;
    v51 = _s4VDAF31BatchedExtendableOutputFunctionPAAE7makeXOF4seed19domainSeparationTag6binder10generatingxAA4SeedV_Says5UInt8VGAMSitFZAA19XofHmacSha256Aes128C_Tt3g5(v36, v75, v44, v81);

    result = _s4VDAF12FieldElementPAAE19randomVectorBatched5count5usingSayxGSi_qd__tAA0F24ExtendableOutputFunctionRd__lFZAA7Field32V_AA19XofHmacSha256Aes128CTt1g5(v17, v51);
    if (v17)
    {
      if (v17 > *(result + 16))
      {
        goto LABEL_75;
      }

      if (v17 > *(v27 + 16))
      {
        goto LABEL_76;
      }

      v52 = 32;
      v53 = v17;
      while (1)
      {
        v54 = *(result + v52);
        v55 = *(v27 + v52);
        if (v55)
        {
          v56 = v55 <= 0xFFF00001;
          v57 = -1048575 - v55;
          if (!v56)
          {
            __break(1u);
LABEL_70:
            __break(1u);
LABEL_71:
            __break(1u);
LABEL_72:
            __break(1u);
LABEL_73:
            __break(1u);
            goto LABEL_74;
          }

          if (v54 >= v57)
          {
            v54 -= v57;
            if ((v19 & 1) == 0)
            {
              goto LABEL_62;
            }

            goto LABEL_59;
          }

          v56 = v57 <= 0xFFF00001;
          v58 = -1048575 - v57;
          if (!v56)
          {
            goto LABEL_70;
          }

          v56 = __CFADD__(v54, v58);
          v54 += v58;
          if (v56)
          {
            goto LABEL_72;
          }
        }

        if ((v19 & 1) == 0)
        {
          goto LABEL_62;
        }

LABEL_59:
        if (v54)
        {
          v56 = v54 <= 0xFFF00001;
          v54 = -1048575 - v54;
          if (!v56)
          {
            goto LABEL_71;
          }
        }

LABEL_62:
        v60 = *(v6 + 2);
        v59 = *(v6 + 3);
        if (v60 >= v59 >> 1)
        {
          v71 = result;
          v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v59 > 1), v60 + 1, 1, v6);
          result = v71;
        }

        *(v6 + 2) = v60 + 1;
        *&v6[4 * v60 + 32] = v54;
        v52 += 4;
        if (!--v53)
        {

          v7 = v83;
          v22 = v73;
          v17 = v81;
          v24 = v86;
          goto LABEL_8;
        }
      }
    }

    v7 = v83;
    v22 = v73;
LABEL_8:
    v20 = v84 + 1;

    outlined consume of Data._Representation(v88, v24);

    if (v20 == v78)
    {
      return v6;
    }
  }

LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
  return result;
}

unsigned int **specialized closure #1 in DPFEvaluator.evaluateLeaves(inputs:nonce:leafCorrections:)(unsigned int **result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a2 + 16);
  if (!v6)
  {
    return result;
  }

  v7 = 0;
  while (1)
  {
    v8 = *(a6 + 16);
    if (v7 == v8)
    {
      return result;
    }

    if (v7 >= v8)
    {
      goto LABEL_22;
    }

    if (*(a6 + 32 + v7))
    {
      v9 = *(a2 + 32 + 8 * v7);
      v10 = *(v9 + 16);
      if (v10)
      {
        break;
      }
    }

LABEL_3:
    if (++v7 == v6)
    {
      return result;
    }
  }

  v11 = *result;
  v12 = (v9 + 32);
  while (1)
  {
    v15 = *v12++;
    v14 = v15;
    v13 = *v11;
    if (!v15)
    {
      goto LABEL_10;
    }

    v16 = v14 <= 0xFFF00001;
    v17 = -1048575 - v14;
    if (!v16)
    {
      break;
    }

    if (v13 >= v17)
    {
      v13 -= v17;
    }

    else
    {
      v16 = v17 <= 0xFFF00001;
      v18 = -1048575 - v17;
      if (!v16)
      {
        goto LABEL_21;
      }

      v16 = __CFADD__(v13, v18);
      v13 += v18;
      if (v16)
      {
        __break(1u);
        return result;
      }
    }

LABEL_10:
    *v11++ = v13;
    if (!--v10)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

void *specialized PreamblePublicShare.encodedLength.getter(void *result, uint64_t a2)
{
  v3 = result[2];
  if (v3)
  {
    v4 = result[4];
    v5 = result[5];

    v6 = InnerCorrections.encodedLength.getter(v4, v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = v6 * v3;
  if ((v6 * v3) >> 64 != (v6 * v3) >> 63)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = *(a2 + 16);
  if (v8)
  {
    v9 = *(*(a2 + 32) + 16);
    if (v9)
    {
      if (v9 >> 61)
      {
LABEL_16:
        __break(1u);
        return result;
      }

      v9 *= 4;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = v9 * v8;
  if ((v9 * v8) >> 64 != (v9 * v8) >> 63)
  {
    goto LABEL_14;
  }

  result = (v7 + v10);
  if (__OFADD__(v7, v10))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  return result;
}

uint64_t specialized PreamblePublicShare.encode<A>(into:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = (a2 + 40);
    do
    {
      v8 = *(v6 - 1);
      v7 = *v6;

      specialized InnerCorrections.encode<A>(into:)(v4, v8, v7);

      v6 += 2;
      --v5;
    }

    while (v5);
  }

  if (*(a3 + 16))
  {

    return specialized Collection<>.encode<A>(into:)(v4, a3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  v4 = result;
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = (a2 + 40);
    do
    {
      v8 = *(v6 - 1);
      v7 = *v6;

      specialized InnerCorrections.encode<A>(into:)(v4, v8, v7);

      v6 += 2;
      --v5;
    }

    while (v5);
  }

  if (*(a3 + 16))
  {

    return specialized Collection<>.encode<A>(into:)(v4, a3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Int specialized MutableCollection<>.sort(by:)(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = v2[2];
  v18[0] = (v2 + 4);
  v18[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 4;
      do
      {
        v11 = v2[2 * v9 + 4];
        v12 = v8;
        v13 = v10;
        do
        {
          if (v11 >= *v13)
          {
            break;
          }

          v14 = v13[3];
          *(v13 + 1) = *v13;
          *v13 = v11;
          v13[1] = v14;
          v13 -= 2;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 2;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi3key_Say4VDAF4LeafVyAB7Field32VGG5valuetMd, &_sSi3key_Say4VDAF4LeafVyAB7Field32VGG5valuetMR);
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v90 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v90;
    if (!*v90)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
      v8 = result;
    }

    v82 = (v8 + 16);
    v83 = *(v8 + 16);
    if (v83 >= 2)
    {
      while (*a3)
      {
        v84 = (v8 + 16 * v83);
        v85 = *v84;
        v86 = &v82[2 * v83];
        v87 = v86[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 16 * *v84), (*a3 + 16 * *v86), (*a3 + 16 * v87), v5);
        if (v4)
        {
        }

        if (v87 < v85)
        {
          goto LABEL_114;
        }

        if (v83 - 2 >= *v82)
        {
          goto LABEL_115;
        }

        *v84 = v85;
        v84[1] = v87;
        v88 = *v82 - v83;
        if (*v82 < v83)
        {
          goto LABEL_116;
        }

        v83 = *v82 - 1;
        result = memmove(v86, v86 + 2, 16 * v88);
        *v82 = v83;
        if (v83 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v89 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7);
      v11 = 16 * v9;
      v12 = (*a3 + 16 * v9);
      v15 = *v12;
      v14 = v12 + 4;
      v13 = v15;
      v16 = v9 + 2;
      v17 = v10;
      while (v6 != v16)
      {
        v18 = *v14;
        v14 += 2;
        v19 = (v10 < v13) ^ (v18 >= v17);
        ++v16;
        v17 = v18;
        if ((v19 & 1) == 0)
        {
          v7 = v16 - 1;
          if (v10 >= v13)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v13)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v20 = 0;
        v21 = 16 * v7;
        v22 = v9;
        do
        {
          if (v22 != v7 + v20 - 1)
          {
            v27 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v23 = (v27 + v11);
            v24 = v27 + v21;
            v25 = *v23;
            v26 = v23[1];
            *v23 = *(v24 - 16);
            *(v24 - 16) = v25;
            *(v24 - 8) = v26;
          }

          ++v22;
          --v20;
          v21 -= 16;
          v11 += 16;
        }

        while (v22 < v7 + v20);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v36 = *(v8 + 24);
    v37 = v5 + 1;
    if (v5 >= v36 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v37;
    v38 = v8 + 32;
    v39 = (v8 + 32 + 16 * v5);
    *v39 = v9;
    v39[1] = v7;
    v91 = *v90;
    if (!*v90)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v37 - 1;
        if (v37 >= 4)
        {
          break;
        }

        if (v37 == 3)
        {
          v40 = *(v8 + 32);
          v41 = *(v8 + 40);
          v50 = __OFSUB__(v41, v40);
          v42 = v41 - v40;
          v43 = v50;
LABEL_57:
          if (v43)
          {
            goto LABEL_104;
          }

          v56 = (v8 + 16 * v37);
          v58 = *v56;
          v57 = v56[1];
          v59 = __OFSUB__(v57, v58);
          v60 = v57 - v58;
          v61 = v59;
          if (v59)
          {
            goto LABEL_106;
          }

          v62 = (v38 + 16 * v5);
          v64 = *v62;
          v63 = v62[1];
          v50 = __OFSUB__(v63, v64);
          v65 = v63 - v64;
          if (v50)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v60, v65))
          {
            goto LABEL_111;
          }

          if (v60 + v65 >= v42)
          {
            if (v42 < v65)
            {
              v5 = v37 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v37 < 2)
        {
          goto LABEL_112;
        }

        v66 = (v8 + 16 * v37);
        v68 = *v66;
        v67 = v66[1];
        v50 = __OFSUB__(v67, v68);
        v60 = v67 - v68;
        v61 = v50;
LABEL_72:
        if (v61)
        {
          goto LABEL_108;
        }

        v69 = (v38 + 16 * v5);
        v71 = *v69;
        v70 = v69[1];
        v50 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v50)
        {
          goto LABEL_110;
        }

        if (v72 < v60)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v37)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v77 = (v38 + 16 * (v5 - 1));
        v78 = *v77;
        v79 = (v38 + 16 * v5);
        v80 = v79[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 16 * *v77), (*a3 + 16 * *v79), (*a3 + 16 * v80), v91);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *(v8 + 16);
        if (v5 >= v81)
        {
          goto LABEL_101;
        }

        v37 = v81 - 1;
        result = memmove((v38 + 16 * v5), v79 + 2, 16 * (v81 - 1 - v5));
        *(v8 + 16) = v81 - 1;
        if (v81 <= 2)
        {
          goto LABEL_3;
        }
      }

      v44 = v38 + 16 * v37;
      v45 = *(v44 - 64);
      v46 = *(v44 - 56);
      v50 = __OFSUB__(v46, v45);
      v47 = v46 - v45;
      if (v50)
      {
        goto LABEL_102;
      }

      v49 = *(v44 - 48);
      v48 = *(v44 - 40);
      v50 = __OFSUB__(v48, v49);
      v42 = v48 - v49;
      v43 = v50;
      if (v50)
      {
        goto LABEL_103;
      }

      v51 = (v8 + 16 * v37);
      v53 = *v51;
      v52 = v51[1];
      v50 = __OFSUB__(v52, v53);
      v54 = v52 - v53;
      if (v50)
      {
        goto LABEL_105;
      }

      v50 = __OFADD__(v42, v54);
      v55 = v42 + v54;
      if (v50)
      {
        goto LABEL_107;
      }

      if (v55 >= v47)
      {
        v73 = (v38 + 16 * v5);
        v75 = *v73;
        v74 = v73[1];
        v50 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v50)
        {
          goto LABEL_113;
        }

        if (v42 < v76)
        {
          v5 = v37 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v89;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v28 = *a3;
  v29 = *a3 + 16 * v7 - 16;
  v30 = v9 - v7;
LABEL_30:
  v31 = *(v28 + 16 * v7);
  v32 = v30;
  v33 = v29;
  while (1)
  {
    if (v31 >= *v33)
    {
LABEL_29:
      ++v7;
      v29 += 16;
      --v30;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v28)
    {
      break;
    }

    v34 = *(v33 + 24);
    *(v33 + 16) = *v33;
    *v33 = v31;
    *(v33 + 8) = v34;
    v33 -= 16;
    if (__CFADD__(v32++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*v6 < *v4)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = v5 + 16;
      v20 = *(v18 - 2);
      v18 -= 16;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v21 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= &v4[v21 & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * (v21 >> 4));
  }

  return 1;
}

uint64_t _s4VDAF4SeedV4from9parameterACx_ytSgtcSkRzs5UInt8V7ElementRtzlufC10Foundation4DataV_Tt1g5Tf4nd_n(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Data.Iterator();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4, v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v11 != 2)
    {
LABEL_12:
      outlined consume of Data._Representation(a1, a2);
      return MEMORY[0x277D84F90];
    }

    v14 = *(a1 + 16);
    v13 = *(a1 + 24);
    v12 = v13 - v14;
    if (!__OFSUB__(v13, v14))
    {
      if (v12)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v11)
    {
      goto LABEL_10;
    }

    v12 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      v15 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1g5(v12, 0);
      v16 = Data._copyContents(initializing:)();
      outlined consume of Data._Representation(a1, a2);
      v17 = *(v5 + 8);
      v5 += 8;
      v17(v10, v4);
      result = v15;
      if (v16 == v12)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v18 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v12 = v18;
      if (!v18)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

uint64_t _s4VDAF8PreambleV7unshard_17numOfMeasurements9parameterSayq_Gqd___SiAA11VoidCodableVtKSkRd__AA14AggregateShareVyxG7ElementRtd__lFAA7Field32V_s5Int32VAA19XofHmacSha256Aes128CSayAKyAPGGTt1B5Tf4ndn_n(void *a1, unint64_t a2)
{
  v21 = a1;
  v2 = a1[2];
  if (v2 != 2)
  {
    lazy protocol witness table accessor for type PreambleError and conformance PreambleError();
    swift_allocError();
    *(v16 + 8) = 0;
    *(v16 + 16) = 0;
    *v16 = v2;
    *(v16 + 24) = 0;
LABEL_24:
    swift_willThrow();
    return v2;
  }

  v3 = 1 << a2;
  if (a2 >= 0x40)
  {
    v3 = 0;
  }

  if (a2 <= 0x40)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (*(a1[4] + 16) != v4 || *(a1[5] + 16) != v4)
  {
    lazy protocol witness table accessor for type PreambleError and conformance PreambleError();
    swift_allocError();
    *(v17 + 8) = 0;
    *(v17 + 16) = 0;
    *v17 = 2;
    *(v17 + 24) = 12;
    goto LABEL_24;
  }

  MEMORY[0x28223BE20](a1, a2);
  v18[2] = &v21;
  v6 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_4VDAF7Field32Vs5NeverOTg5(partial apply for specialized closure #2 in Preamble.unshard<A>(_:numOfMeasurements:parameter:), v18, 0, v5);
  v7 = *(v6 + 16);
  if (!v7)
  {

    return MEMORY[0x277D84F90];
  }

  v19 = v6;
  v20 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
  result = v19;
  v2 = v20;
  v9 = 0;
  while (v9 < *(result + 16))
  {
    v10 = *(result + 4 * v9 + 32);
    v11 = v10 + 4293918721 * (-1048577 * v10);
    if (v11 >= 0xFFF0000100000000)
    {
      v12 = 0;
    }

    else
    {
      v12 = HIDWORD(v11);
    }

    if (v12 <= 0x7FF80000)
    {
      v13 = v12;
    }

    else
    {
      v13 = v12 + 0xFFFFF;
    }

    v20 = v2;
    v15 = *(v2 + 16);
    v14 = *(v2 + 24);
    if (v15 >= v14 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1);
      result = v19;
      v2 = v20;
    }

    ++v9;
    *(v2 + 16) = v15 + 1;
    *(v2 + 4 * v15 + 32) = v13;
    if (v7 == v9)
    {

      return v2;
    }
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type EvaluatorError and conformance EvaluatorError()
{
  result = lazy protocol witness table cache variable for type EvaluatorError and conformance EvaluatorError;
  if (!lazy protocol witness table cache variable for type EvaluatorError and conformance EvaluatorError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EvaluatorError and conformance EvaluatorError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EvaluatorError and conformance EvaluatorError;
  if (!lazy protocol witness table cache variable for type EvaluatorError and conformance EvaluatorError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EvaluatorError and conformance EvaluatorError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PreambleError and conformance PreambleError()
{
  result = lazy protocol witness table cache variable for type PreambleError and conformance PreambleError;
  if (!lazy protocol witness table cache variable for type PreambleError and conformance PreambleError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreambleError and conformance PreambleError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PreambleError and conformance PreambleError;
  if (!lazy protocol witness table cache variable for type PreambleError and conformance PreambleError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreambleError and conformance PreambleError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GeneratorError and conformance GeneratorError()
{
  result = lazy protocol witness table cache variable for type GeneratorError and conformance GeneratorError;
  if (!lazy protocol witness table cache variable for type GeneratorError and conformance GeneratorError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeneratorError and conformance GeneratorError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeneratorError and conformance GeneratorError;
  if (!lazy protocol witness table cache variable for type GeneratorError and conformance GeneratorError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeneratorError and conformance GeneratorError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LeafParentError and conformance LeafParentError()
{
  result = lazy protocol witness table cache variable for type LeafParentError and conformance LeafParentError;
  if (!lazy protocol witness table cache variable for type LeafParentError and conformance LeafParentError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LeafParentError and conformance LeafParentError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LeafParentError and conformance LeafParentError;
  if (!lazy protocol witness table cache variable for type LeafParentError and conformance LeafParentError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LeafParentError and conformance LeafParentError);
  }

  return result;
}

uint64_t WraparoundJointRandomness.__allocating_init(parts:)(uint64_t a1)
{
  v2 = swift_allocObject();
  WraparoundJointRandomness.init(parts:)(a1);
  return v2;
}

uint64_t WraparoundJointRandomness.init(parts:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *v1;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 16) = a1;
  v6 = v5;

  WitnessTable = swift_getWitnessTable();
  v8 = static JointRandomness.jointRandSeed(parts:)(a1, v6, WitnessTable);

  *(v2 + 24) = v8;
  v9 = *(v4 + 96);
  v10 = *(v4 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = 7;
  v12 = *(v9 + 240);

  v13 = v12(&v17, v10, v9);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v15 = static ExtendableOutputFunction.makeXOF(seed:domainSeparationTag:binder:)(v8, v13, MEMORY[0x277D84F90], AssociatedTypeWitness, AssociatedConformanceWitness);

  *(v2 + 32) = v15;
  return v2;
}

Swift::Int __swiftcall WraparoundJointRandomness.next()()
{
  v1 = v0;
  v2 = *v0;
  v3 = v0[5];
  if (!v3)
  {
    v4 = v0[4];
    v5 = *(v2 + 96);
    v6 = *(v2 + 80);
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v8 = *(AssociatedConformanceWitness + 32);
    v9 = swift_checkMetadataState();
    result = v8(v9, AssociatedConformanceWitness);
    *(v1 + 48) = result;
    v3 = 8;
    v1[5] = 8;
  }

  v11 = __OFSUB__(v3, 2);
  v12 = v3 - 2;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    v13 = *(v1 + 48);
    v1[5] = v12;
    *(v1 + 48) = v13 >> 2;
    if ((v13 & 3) != 0)
    {
      return (v13 & 3) == 3;
    }

    else
    {
      return -1;
    }
  }

  return result;
}

void *WraparoundJointRandomness.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];
  swift_unknownObjectRelease();
  return v0;
}

uint64_t WraparoundJointRandomness.__deallocating_deinit()
{
  WraparoundJointRandomness.deinit();

  return swift_deallocClassInstance();
}

Swift::Int protocol witness for JointRandomness.next() in conformance WraparoundJointRandomness<A, B>@<X0>(Swift::Int *a1@<X8>)
{
  v3 = *v1;
  result = WraparoundJointRandomness.next()();
  *a1 = result;
  return result;
}

uint64_t Pair.init(party0:party1:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *(*(a3 - 8) + 32);
  v9(a3 - 8, a4, a1);
  v7 = a4 + *(type metadata accessor for Pair() + 28);

  return v9(v7, a2, a3);
}

uint64_t type metadata completion function for Pair(uint64_t a1)
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

uint64_t getEnumTagSinglePayload for Pair(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v6 = *(*(*(a3 + 16) - 8) + 64);
  v8 = ((v6 + *(v4 + 80)) & ~*(v4 + 80)) + v6;
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

char *storeEnumTagSinglePayload for Pair(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + *(v5 + 80)) & ~*(v5 + 80)) + *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}