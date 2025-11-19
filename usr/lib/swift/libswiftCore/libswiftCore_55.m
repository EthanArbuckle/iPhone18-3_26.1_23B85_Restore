uint64_t protocol witness for BinaryInteger.quotientAndRemainder(dividingBy:) in conformance Int8(_BYTE *a1, _BYTE *a2, char *a3)
{
  result = specialized BinaryInteger.quotientAndRemainder(dividingBy:)(a2, *a3, *v3);
  *a1 = result;
  return result;
}

void protocol witness for LosslessStringConvertible.init(_:) in conformance Int8(uint64_t a1@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v5 = HIBYTE(a2) & 0xF;
  v6 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {
    a2;
    v40 = 0;
    LOBYTE(v39) = 1;
    goto LABEL_47;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v43[0] = a1;
      v43[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      v16 = specialized closure #1 in FixedWidthInteger.init<A>(_:radix:)(v43, v5, 10);
      v22 = (v16 >> 8) & 1;
LABEL_42:
      v44 = v22;
      goto LABEL_43;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      if ((a1 & 0xFFFFFFFFFFFFLL) != 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v41 = _StringObject.sharedUTF8.getter(a1, a2);
      v6 = v42;
      v8 = v41;
      if (v6 > 0)
      {
LABEL_9:
        v9 = *v8;
        if (v9 == 43)
        {
          v23 = specialized Collection.subscript.getter(1, v8, v6);
          v27 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v23, v24, v25, v26);
          if (v28)
          {
            LOBYTE(v16) = 0;
            if (v27)
            {
              while (1)
              {
                v29 = *v27 - 48;
                if (v29 >= 0xA)
                {
                  goto LABEL_41;
                }

                v30 = 10 * v16;
                v31 = (10 * v16);
                v16 = v31 + v29;
                v32 = v16 != (v31 + v29);
                if (v31 != v30 || v32)
                {
                  goto LABEL_41;
                }

                ++v27;
                if (!--v28)
                {
                  goto LABEL_40;
                }
              }
            }

            goto LABEL_40;
          }
        }

        else
        {
          if (v9 != 45)
          {
            LOBYTE(v16) = 0;
            while (1)
            {
              v34 = *v8 - 48;
              if (v34 >= 0xA)
              {
                goto LABEL_41;
              }

              v35 = 10 * v16;
              v36 = (10 * v16);
              v16 = v36 + v34;
              v37 = v16 != (v36 + v34);
              if (v36 != v35 || v37)
              {
                goto LABEL_41;
              }

              ++v8;
              if (!--v6)
              {
                goto LABEL_40;
              }
            }
          }

          v10 = specialized Collection.subscript.getter(1, v8, v6);
          v14 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v10, v11, v12, v13);
          if (v15)
          {
            LOBYTE(v16) = 0;
            if (v14)
            {
              while (1)
              {
                v17 = *v14 - 48;
                if (v17 >= 0xA)
                {
                  break;
                }

                v18 = 10 * v16;
                v19 = (10 * v16);
                v16 = v19 - v17;
                v20 = v16 != (v19 - v17);
                if (v19 != v18 || v20)
                {
                  break;
                }

                ++v14;
                if (!--v15)
                {
                  goto LABEL_40;
                }
              }

LABEL_41:
              LOBYTE(v16) = 0;
              LOBYTE(v22) = 1;
              goto LABEL_42;
            }

LABEL_40:
            v44 = 0;
LABEL_43:
            LOBYTE(v39) = v44;
            a2;
            goto LABEL_44;
          }
        }

        LOBYTE(v16) = 0;
        v44 = 1;
        goto LABEL_43;
      }
    }

    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v16 = specialized _parseInteger<A, B>(ascii:radix:)(a1, a2, 10);
  a2;
  v39 = (v16 >> 8) & 1;
LABEL_44:
  if (v39)
  {
    v40 = 0;
  }

  else
  {
    v40 = v16;
  }

LABEL_47:
  *a3 = v40;
  a3[1] = v39 & 1;
}

_BYTE *protocol witness for static SignedNumeric.- prefix(_:) in conformance Int8@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (v2 + -*result)
  {
    __break(1u);
  }

  else
  {
    *a2 = -v2;
  }

  return result;
}

void protocol witness for SignedNumeric.negate() in conformance Int8()
{
  v1 = *v0;
  if (v1 + -*v0)
  {
    __break(1u);
  }

  else
  {
    *v0 = -v1;
  }
}

uint64_t protocol witness for Numeric.init<A>(exactly:) in conformance Int8@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v49 = a4;
  v51 = a5;
  v8 = *(*(a3 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v8, a2, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v10 = v9;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v46[-v12];
  v52 = *(a2 - 1);
  MEMORY[0x1EEE9AC00](v11);
  v50 = &v46[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v53 = *(a3 + 64);
  v15 = v53(a2, a3);
  v16 = *(a3 + 128);
  if ((v15 & 1) == 0 || v16(a2, a3) < 9)
  {
    goto LABEL_15;
  }

  v48 = a1;
  v54 = 0x80;
  v17 = v53;
  if (v53(a2, a3))
  {
    a1 = v48;
    v18 = v16(a2, a3);
    if (v18 < 8)
    {
      goto LABEL_14;
    }

LABEL_8:
    v21 = *(a3 + 96);
    v22 = lazy protocol witness table accessor for type Int8 and conformance Int8(v18, v19, v20);
    v23 = v50;
    v21(&v54, v49, v22, a2, a3);
    v24 = (*(*(*(a3 + 32) + 8) + 16))(a1, v23, a2);
    v25 = *(v52 + 8);
    v25(v23, a2);
    if (v24)
    {
      result = v25(a1, a2);
      goto LABEL_20;
    }

LABEL_15:
    v31 = v16(a2, a3);
    v32 = v52;
    v33 = v53;
    if (v31 <= 8 && (v16(a2, a3) != 8 || (v33(a2, a3) & 1) != 0))
    {
      goto LABEL_26;
    }

    v55 = 127;
    v34 = v33(a2, a3);
    v35 = v16(a2, a3);
    if (v34)
    {
      if (v35 > 8)
      {
        goto LABEL_18;
      }
    }

    else if (v35 > 7)
    {
LABEL_18:
      v38 = *(a3 + 96);
      v39 = lazy protocol witness table accessor for type Int8 and conformance Int8(v35, v36, v37);
      v40 = v50;
      v38(&v55, v49, v39, a2, a3);
      v41 = (*(*(*(a3 + 32) + 8) + 16))(v40, a1, a2);
      v42 = *(v32 + 8);
      v42(v40, a2);
      if (v41)
      {
        result = v42(a1, a2);
        goto LABEL_20;
      }

LABEL_26:
      v43 = (*(a3 + 120))(a2, a3);
      result = (*(v32 + 8))(a1, a2);
      v44 = 0;
      goto LABEL_27;
    }

    (*(a3 + 120))(a2, a3);
    goto LABEL_26;
  }

  v47 = v17(a2, a3);
  a1 = v48;
  v18 = v16(a2, a3);
  if ((v47 & 1) == 0)
  {
    if (v18 >= 8)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (v18 > 8)
  {
    goto LABEL_8;
  }

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v8, a2, v10, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v10, AssociatedConformanceWitness);
  v28 = v50;
  (*(v8 + 24))(v13, a2, v8);
  v29 = (*(*(*(a3 + 32) + 8) + 16))(a1, v28, a2);
  v30 = *(v52 + 8);
  v30(v28, a2);
  if ((v29 & 1) == 0)
  {
LABEL_14:
    (*(a3 + 120))(a2, a3);
    goto LABEL_15;
  }

  result = v30(a1, a2);
LABEL_20:
  v43 = 0;
  v44 = 1;
LABEL_27:
  v45 = v51;
  *v51 = v43;
  v45[1] = v44;
  return result;
}

void protocol witness for Numeric.magnitude.getter in conformance Int8(_BYTE *a1@<X8>)
{
  v2 = *v1;
  if (v2 < 0)
  {
    v2 = -v2;
  }

  *a1 = v2;
}

_BYTE *protocol witness for static Numeric.* infix(_:_:) in conformance Int8@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X8>)
{
  v3 = *result * *a2;
  if ((*result * *a2) == v3)
  {
    *a3 = v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static Int8.* infix(_:_:)(char a1, char a2)
{
  result = (a1 * a2);
  if ((a1 * a2) != result)
  {
    __break(1u);
  }

  return result;
}

_BYTE *protocol witness for static Numeric.*= infix(_:_:) in conformance Int8(_BYTE *result, _BYTE *a2)
{
  v2 = *result * *a2;
  if ((*result * *a2) == v2)
  {
    *result = v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unsigned __int8 *protocol witness for Strideable.distance(to:) in conformance Int8@<X0>(unsigned __int8 *result@<X0>, uint64_t *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  if (((v4 ^ v3) & 0x80) == 0)
  {
    v5 = v3 - v4;
    if (v5 == v5)
    {
      *a2 = v5;
      return result;
    }

    __break(1u);
    goto LABEL_15;
  }

  if (v4 >= 0)
  {
    v6 = *v2;
  }

  else
  {
    v6 = -v4;
  }

  v3 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = -v3;
  }

  v7 = v6 + v3;
  if ((v7 >> 8))
  {
LABEL_15:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    v8 = v7;
  }

  else
  {
    v8 = -v7;
  }

  *a2 = v8;
  return result;
}

void *protocol witness for Strideable.advanced(by:) in conformance Int8@<X0>(void *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *v2;
  v4 = v3 + *result;
  if (__OFADD__(v3, *result))
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v4 <= -129 || v4 >= 128)
  {
LABEL_6:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *a2 = v4;
  return result;
}

_BYTE *protocol witness for static AdditiveArithmetic.+ infix(_:_:) in conformance Int8@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X8>)
{
  v3 = *result + *a2;
  if ((*result + *a2) == v3)
  {
    *a3 = v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

_BYTE *protocol witness for static AdditiveArithmetic.+= infix(_:_:) in conformance Int8(_BYTE *result, _BYTE *a2)
{
  v2 = *result + *a2;
  if ((*result + *a2) == v2)
  {
    *result = v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

_BYTE *protocol witness for static AdditiveArithmetic.- infix(_:_:) in conformance Int8@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X8>)
{
  v3 = *result - *a2;
  if ((*result - *a2) == v3)
  {
    *a3 = v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static Int8.- infix(_:_:)(char a1, char a2)
{
  result = (a1 - a2);
  if (result != result)
  {
    __break(1u);
  }

  return result;
}

_BYTE *protocol witness for static AdditiveArithmetic.-= infix(_:_:) in conformance Int8(_BYTE *result, _BYTE *a2)
{
  v2 = *result - *a2;
  if ((*result - *a2) == v2)
  {
    *result = v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t Int8._toCustomAnyHashable()@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22_IntegerAnyHashableBoxVys4Int8VGMd, _ss22_IntegerAnyHashableBoxVys4Int8VGMR);
  *(a2 + 24) = result;
  *(a2 + 32) = &protocol witness table for _IntegerAnyHashableBox<A>;
  *a2 = a1;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance Int8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22_IntegerAnyHashableBoxVys4Int8VGMd, _ss22_IntegerAnyHashableBoxVys4Int8VGMR);
  *(a1 + 24) = result;
  *(a1 + 32) = &protocol witness table for _IntegerAnyHashableBox<A>;
  *a1 = v3;
  return result;
}

uint64_t UInt16.init(_:)(__n128 a1)
{
  if ((a1.n128_u16[0] & 0x7FFFu) >= 0x7C00 || *a1.n128_u16 <= COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(-1.0)))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return *a1.n128_u16;
}

uint64_t UInt16.init(exactly:)(__n128 a1)
{
  v1 = truncl(*a1.n128_u16) != *a1.n128_u16;
  v3 = *a1.n128_u16 <= COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(-1.0)) || (a1.n128_u16[0] & 0x7FFFu) > 0x7BFF || v1;
  v4 = *a1.n128_u16;
  if (v3)
  {
    v4 = 0;
  }

  return v4 | (v3 << 16);
}

Swift::UInt16 __swiftcall UInt16.init(_:)(Swift::Float a1)
{
  if ((LODWORD(a1) & 0x7FFFFFFFu) >= 0x7F800000 || a1 <= -1.0 || a1 >= 65536.0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a1;
}

Swift::UInt16_optional __swiftcall UInt16.init(exactly:)(Swift::Float exactly)
{
  v1 = exactly <= -1.0;
  if (exactly >= 65536.0)
  {
    v1 = 1;
  }

  if (truncf(exactly) != exactly)
  {
    v1 = 1;
  }

  v2 = exactly;
  if (v1)
  {
    v2 = 0;
  }

  return (v2 | (v1 << 16));
}

Swift::UInt16 __swiftcall UInt16.init(_:)(Swift::Double a1)
{
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000 || a1 <= -1.0 || a1 >= 65536.0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a1;
}

Swift::UInt16_optional __swiftcall UInt16.init(exactly:)(Swift::Double exactly)
{
  v1 = exactly <= -1.0;
  if (exactly >= 65536.0)
  {
    v1 = 1;
  }

  if (trunc(exactly) != exactly)
  {
    v1 = 1;
  }

  v2 = exactly;
  if (v1)
  {
    v2 = 0;
  }

  return (v2 | (v1 << 16));
}

_WORD *static UInt16.+= infix(_:_:)(_WORD *result, unsigned __int16 a2)
{
  v2 = *result + a2;
  if ((v2 & 0x10000) != 0)
  {
    __break(1u);
  }

  else
  {
    *result = v2;
  }

  return result;
}

_WORD *static UInt16.-= infix(_:_:)(_WORD *result, unsigned __int16 a2)
{
  v2 = *result - a2;
  if ((v2 & 0xFFFF0000) != 0)
  {
    __break(1u);
  }

  else
  {
    *result = v2;
  }

  return result;
}

_WORD *static UInt16.*= infix(_:_:)(_WORD *result, unsigned __int16 a2)
{
  if (((*result * a2) & 0xFFFF0000) != 0)
  {
    __break(1u);
  }

  else
  {
    *result *= a2;
  }

  return result;
}

_WORD *static UInt16./= infix(_:_:)(_WORD *result, unsigned __int16 a2)
{
  if (!a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *result /= a2;
  return result;
}

Swift::tuple_partialValue_UInt16_overflow_Bool __swiftcall UInt16.addingReportingOverflow(_:)(Swift::UInt16 a1)
{
  v2 = v1 + a1;
  result.overflow = v1;
  result.partialValue = v2;
  return result;
}

Swift::tuple_partialValue_UInt16_overflow_Bool __swiftcall UInt16.subtractingReportingOverflow(_:)(Swift::UInt16 a1)
{
  v2 = v1 - a1;
  result.overflow = v1;
  result.partialValue = v2;
  return result;
}

Swift::tuple_partialValue_UInt16_overflow_Bool __swiftcall UInt16.multipliedReportingOverflow(by:)(Swift::UInt16 by)
{
  v2 = v1 * by;
  result.overflow = v1;
  result.partialValue = v2;
  return result;
}

Swift::tuple_partialValue_UInt16_overflow_Bool __swiftcall UInt16.dividedReportingOverflow(by:)(Swift::UInt16 by)
{
  if (by)
  {
    v1 /= by;
  }

  v2 = v1;
  result.overflow = v1;
  result.partialValue = v2;
  return result;
}

Swift::tuple_partialValue_UInt16_overflow_Bool __swiftcall UInt16.remainderReportingOverflow(dividingBy:)(Swift::UInt16 dividingBy)
{
  if (dividingBy)
  {
    v1 %= dividingBy;
  }

  v2 = v1;
  result.overflow = v1;
  result.partialValue = v2;
  return result;
}

_WORD *static UInt16.%= infix(_:_:)(_WORD *result, unsigned __int16 a2)
{
  if (!a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *result %= a2;
  return result;
}

uint64_t UInt16.Words.subscript.getter(uint64_t a1, unsigned __int16 a2)
{
  if (a1 < 0 || a1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a2;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance UInt16.Words(void *a1, uint64_t *a2))()
{
  if (swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc(0x30, 0x4C8FuLL);
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = UInt16.Words.subscript.read(v4, *a2);
  v5[4] = v7;
  v5[5] = v6;
  return protocol witness for Collection.subscript.read in conformance UInt8.Words;
}

uint64_t (*UInt16.Words.subscript.read(uint64_t a1, uint64_t a2))()
{
  if (a2 < 0 || a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return _swift_displayCrashMessage;
}

Swift::tuple_high_UInt16_low_UInt16 __swiftcall UInt16.multipliedFullWidth(by:)(Swift::UInt16 by)
{
  v2 = (v1 * by) >> 16;
  result.low = v1;
  result.high = v2;
  return result;
}

Swift::tuple_quotient_UInt16_remainder_UInt16 __swiftcall UInt16.dividingFullWidth(_:)(Swift::tuple_quotient_UInt16_remainder_UInt16 result)
{
  if (!v1 || result.quotient >= v1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v2 = (result.remainder | (result.quotient << 16)) / v1;
  result.quotient = v2;
  return result;
}

uint64_t protocol witness for FixedWidthInteger.addingReportingOverflow(_:) in conformance UInt16(_WORD *a1, _WORD *a2)
{
  v3 = (*v2 + *a2) >> 16;
  *a1 = *v2 + *a2;
  return v3;
}

BOOL protocol witness for FixedWidthInteger.subtractingReportingOverflow(_:) in conformance UInt16(_WORD *a1, unsigned __int16 *a2)
{
  v3 = *v2 - *a2;
  *a1 = v3;
  return (v3 & 0xFFFF0000) != 0;
}

BOOL protocol witness for FixedWidthInteger.multipliedReportingOverflow(by:) in conformance UInt16(_WORD *a1, unsigned __int16 *a2)
{
  v3 = *v2 * *a2;
  *a1 = v3;
  return (v3 & 0xFFFF0000) != 0;
}

BOOL protocol witness for FixedWidthInteger.dividedReportingOverflow(by:) in conformance UInt16(_WORD *a1, _WORD *a2)
{
  v3 = *a2;
  v4 = *v2;
  if (*a2)
  {
    v4 /= v3;
  }

  *a1 = v4;
  return v3 == 0;
}

BOOL protocol witness for FixedWidthInteger.remainderReportingOverflow(dividingBy:) in conformance UInt16(_WORD *a1, _WORD *a2)
{
  v3 = *a2;
  v4 = *v2;
  if (*a2)
  {
    v4 %= v3;
  }

  *a1 = v4;
  return v3 == 0;
}

_WORD *protocol witness for FixedWidthInteger.multipliedFullWidth(by:) in conformance UInt16(_WORD *result, _WORD *a2, unsigned __int16 *a3)
{
  v4 = *v3 * *a3;
  *result = HIWORD(v4);
  *a2 = v4;
  return result;
}

Swift::UInt16 protocol witness for FixedWidthInteger.dividingFullWidth(_:) in conformance UInt16(Swift::UInt16 *a1, _WORD *a2, _WORD *a3, _WORD *a4)
{
  result = UInt16.dividingFullWidth(_:)(__PAIR32__(*a4, *a3)).quotient;
  *a1 = result;
  *a2 = v7;
  return result;
}

__int16 *protocol witness for _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:) in conformance UInt16@<X0>(__int16 *result@<X0>, unint64_t a2@<X1>, _WORD *a3@<X8>)
{
  v3 = 0;
  if (a2 >> 9 <= 8 && (a2 & 1) == 0)
  {
    v3 = *result;
  }

  *a3 = v3;
  return result;
}

uint64_t protocol witness for BinaryInteger.init<A>(_:) in conformance UInt16@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _WORD *a6@<X8>)
{
  v33 = a4;
  v34 = a5;
  v37 = a1;
  v35 = a6;
  v8 = *(a2 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*(v11 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v12, a2, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v31 - v15;
  v17 = *(a3 + 64);
  if (v17(a2, a3))
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v12, a2, v14, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v14, AssociatedConformanceWitness);
    (*(v12 + 24))(v16, a2, v12);
    v19 = (*(*(*(a3 + 32) + 8) + 32))(v37, v10, a2);
    (*(v8 + 8))(v10, a2);
    if ((v19 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v31 = v16;
  v32 = v12;
  v36 = v8;
  v20 = v37;
  v21 = *(a3 + 128);
  if (v21(a2, a3) < 16)
  {
    goto LABEL_12;
  }

  v38 = -1;
  v22 = v17(a2, a3);
  v23 = v20;
  v24 = v21(a2, a3);
  if ((v22 & 1) == 0)
  {
    if (v24 <= 16)
    {
LABEL_11:
      (*(a3 + 120))(a2, a3);
      goto LABEL_12;
    }

LABEL_9:
    (*(a3 + 96))(&v38, v33, v34, a2, a3);
    v28 = (*(*(*(a3 + 32) + 8) + 16))(v10, v20, a2);
    (*(v36 + 8))(v10, a2);
    if ((v28 & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_13:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v24 > 16)
  {
    goto LABEL_9;
  }

  v25 = v32;
  v26 = swift_getAssociatedConformanceWitness(v32, a2, v14, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  v27 = v31;
  (*(v26 + 8))(&qword_18071E0A8, 256, v14, v26);
  v25[3](v27, a2, v25);
  v20 = v23;
  LOBYTE(v25) = (*(*(*(a3 + 32) + 8) + 40))(v23, v10, a2);
  (*(v36 + 8))(v10, a2);
  if (v25)
  {
    goto LABEL_11;
  }

LABEL_12:
  v29 = (*(a3 + 120))(a2, a3);
  result = (*(v36 + 8))(v20, a2);
  *v35 = v29;
  return result;
}

_WORD *protocol witness for static BinaryInteger./ infix(_:_:) in conformance UInt16@<X0>(_WORD *result@<X0>, _WORD *a2@<X1>, _WORD *a3@<X8>)
{
  if (!*a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *a3 = *result / *a2;
  return result;
}

uint64_t static UInt16./ infix(_:_:)(unsigned __int16 a1, unsigned __int16 a2)
{
  if (!a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a1 / a2;
}

_WORD *protocol witness for static BinaryInteger./= infix(_:_:) in conformance UInt16(_WORD *result, _WORD *a2)
{
  if (!*a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *result /= *a2;
  return result;
}

_WORD *protocol witness for static BinaryInteger.% infix(_:_:) in conformance UInt16@<X0>(_WORD *result@<X0>, _WORD *a2@<X1>, _WORD *a3@<X8>)
{
  if (!*a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *a3 = *result % *a2;
  return result;
}

uint64_t static UInt16.% infix(_:_:)(unsigned __int16 a1, unsigned __int16 a2)
{
  if (!a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a1 % a2;
}

_WORD *protocol witness for static BinaryInteger.%= infix(_:_:) in conformance UInt16(_WORD *result, _WORD *a2)
{
  if (!*a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *result %= *a2;
  return result;
}

uint64_t protocol witness for static BinaryInteger.>> infix<A>(_:_:) in conformance UInt16@<X0>(unsigned __int16 *a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, _WORD *a5@<X8>)
{
  v107 = *(*(a4 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v107, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v106 = v10;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v105 = &v103 - v12;
  v13 = *(a3 - 1);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v103 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v110 = &v103 - v17;
  v108 = *a1;
  v18 = (a4 + 64);
  v111 = *(a4 + 64);
  if (v111(a3, a4))
  {
    v19 = *(a4 + 128);
    v20 = v19(a3, a4);
    if (v20 >= 64)
    {
      v112 = -16;
      v109 = a2;
      v23 = v19;
      v24 = v16;
      v25 = v13;
      v26 = a5;
      v27 = *(a4 + 96);
      v28 = lazy protocol witness table accessor for type Int and conformance Int(v20, v21, v22);
      v104 = (a4 + 64);
      v29 = v110;
      v27(&v112, &type metadata for Int, v28, a3, a4);
      a5 = v26;
      v13 = v25;
      v16 = v24;
      v19 = v23;
      a2 = v109;
      v30 = (*(*(*(a4 + 32) + 8) + 16))(v109, v29, a3);
      v31 = v29;
      v18 = v104;
      result = (*(v13 + 8))(v31, a3);
      if (v30)
      {
        goto LABEL_25;
      }

      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v33 = v111(a3, a4);
  v19 = *(a4 + 128);
  v34 = v19(a3, a4);
  if ((v33 & 1) == 0)
  {
    if (v34 >= 64)
    {
      goto LABEL_11;
    }

LABEL_10:
    result = (*(a4 + 120))(a3, a4);
    if (result < -16)
    {
      goto LABEL_25;
    }

    goto LABEL_11;
  }

  v109 = a2;
  v104 = v19;
  if (v34 <= 64)
  {
    v71 = v106;
    v70 = v107;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v107, a3, v106, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    v73 = v105;
    (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v71, AssociatedConformanceWitness);
    v74 = v110;
    (v70[3])(v73, a3, v70);
    a2 = v109;
    LOBYTE(v70) = (*(*(*(a4 + 32) + 8) + 16))(v109, v74, a3);
    result = (*(v13 + 8))(v74, a3);
    if (v70)
    {
      goto LABEL_25;
    }

    result = (*(a4 + 120))(a3, a4);
    v19 = v104;
    if (result < -16)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v112 = -16;
    v37 = v16;
    v38 = v13;
    v39 = a5;
    v40 = *(a4 + 96);
    v41 = lazy protocol witness table accessor for type Int and conformance Int(v34, v35, v36);
    v42 = v110;
    v40(&v112, &type metadata for Int, v41, a3, a4);
    a5 = v39;
    v13 = v38;
    v16 = v37;
    v43 = v109;
    v44 = (*(*(*(a4 + 32) + 8) + 16))(v109, v42, a3);
    v45 = v42;
    v18 = (a4 + 64);
    a2 = v43;
    result = (*(v13 + 8))(v45, a3);
    v19 = v104;
    if (v44)
    {
      goto LABEL_25;
    }
  }

LABEL_11:
  v46 = v111(a3, a4);
  v103 = a4 + 128;
  v47 = v19(a3, a4);
  if (v46)
  {
    if (v47 > 64)
    {
      goto LABEL_13;
    }

LABEL_16:
    result = (*(a4 + 120))(a3, a4);
    if (result > 16)
    {
      goto LABEL_25;
    }

    goto LABEL_17;
  }

  if (v47 < 64)
  {
    goto LABEL_16;
  }

LABEL_13:
  v112 = 16;
  v109 = a2;
  v50 = v19;
  v51 = v16;
  v52 = v13;
  v53 = a5;
  v54 = *(a4 + 96);
  v55 = lazy protocol witness table accessor for type Int and conformance Int(v47, v48, v49);
  v104 = v18;
  v56 = v110;
  v54(&v112, &type metadata for Int, v55, a3, a4);
  a5 = v53;
  v13 = v52;
  v16 = v51;
  v19 = v50;
  a2 = v109;
  v57 = (*(*(*(a4 + 32) + 8) + 16))(v56, v109, a3);
  v58 = v56;
  v18 = v104;
  result = (*(v13 + 8))(v58, a3);
  if (v57)
  {
    goto LABEL_25;
  }

LABEL_17:
  (*(v13 + 16))(v16, a2, a3);
  if ((v111(a3, a4) & 1) == 0 || v19(a3, a4) < 65)
  {
    goto LABEL_34;
  }

  if ((v111(a3, a4) & 1) == 0)
  {
    v76 = v111(a3, a4);
    v77 = v19(a3, a4);
    if ((v76 & 1) == 0)
    {
      if (v77 >= 64)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }

    v104 = v19;
    if (v77 <= 64)
    {
      v88 = v106;
      v87 = v107;
      v89 = swift_getAssociatedConformanceWitness(v107, a3, v106, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v90 = v105;
      (*(v89 + 8))(&qword_18071E0A8, 256, v88, v89);
      v91 = v110;
      (v87[3])(v90, a3, v87);
      LOBYTE(v87) = (*(*(*(a4 + 32) + 8) + 16))(v16, v91, a3);
      (*(v13 + 8))(v91, a3);
      v19 = v104;
      if ((v87 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v112 = 0x8000000000000000;
      v80 = v16;
      v81 = v13;
      v82 = a5;
      v83 = *(a4 + 96);
      v84 = lazy protocol witness table accessor for type Int and conformance Int(v77, v78, v79);
      v85 = v110;
      v83(&v112, &type metadata for Int, v84, a3, a4);
      a5 = v82;
      v13 = v81;
      v16 = v80;
      v86 = (*(*(*(a4 + 32) + 8) + 16))(v80, v85, a3);
      (*(v13 + 8))(v85, a3);
      v19 = v104;
      if ((v86 & 1) == 0)
      {
        goto LABEL_34;
      }
    }

LABEL_38:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v59 = v19(a3, a4);
  if (v59 < 64)
  {
LABEL_33:
    (*(a4 + 120))(a3, a4);
    goto LABEL_34;
  }

  v112 = 0x8000000000000000;
  v62 = v19;
  v63 = v16;
  v64 = v13;
  v65 = a5;
  v66 = *(a4 + 96);
  v67 = lazy protocol witness table accessor for type Int and conformance Int(v59, v60, v61);
  v104 = v18;
  v68 = v110;
  v66(&v112, &type metadata for Int, v67, a3, a4);
  a5 = v65;
  v13 = v64;
  v16 = v63;
  v19 = v62;
  v69 = (*(*(*(a4 + 32) + 8) + 16))(v16, v68, a3);
  (*(v13 + 8))(v68, a3);
  if (v69)
  {
    goto LABEL_38;
  }

LABEL_34:
  if (v19(a3, a4) > 64 || v19(a3, a4) == 64 && (v111(a3, a4) & 1) == 0)
  {
    v92 = v111(a3, a4);
    v93 = v19(a3, a4);
    if (v92)
    {
      if (v93 > 64)
      {
        goto LABEL_37;
      }
    }

    else if (v93 >= 64)
    {
LABEL_37:
      v112 = 0x7FFFFFFFFFFFFFFFLL;
      v96 = v16;
      v97 = a5;
      v98 = *(a4 + 96);
      v99 = lazy protocol witness table accessor for type Int and conformance Int(v93, v94, v95);
      v100 = v110;
      v98(&v112, &type metadata for Int, v99, a3, a4);
      a5 = v97;
      v16 = v96;
      v101 = (*(*(*(a4 + 32) + 8) + 16))(v100, v96, a3);
      (*(v13 + 8))(v100, a3);
      if (v101)
      {
        goto LABEL_38;
      }

      goto LABEL_44;
    }

    (*(a4 + 120))(a3, a4);
  }

LABEL_44:
  v102 = (*(a4 + 120))(a3, a4);
  result = (*(v13 + 8))(v16, a3);
  if ((v102 & 0x8000000000000000) != 0)
  {
    if (v102 > 0xFFFFFFFFFFFFFFF0)
    {
      v75 = v108 << -v102;
      goto LABEL_47;
    }
  }

  else if (v102 < 0x10)
  {
    v75 = v108 >> v102;
    goto LABEL_47;
  }

LABEL_25:
  LOWORD(v75) = 0;
LABEL_47:
  *a5 = v75;
  return result;
}

uint64_t protocol witness for static BinaryInteger.>>= infix<A>(_:_:) in conformance UInt16(_WORD *a1, uint64_t a2, const char *a3, uint64_t a4)
{
  v106 = *(*(a4 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v106, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v105 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v104 = v102 - v10;
  v11 = *(a3 - 1);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v108 = v102 - v15;
  v16 = (a4 + 64);
  v109 = *(a4 + 64);
  if (v109(a3, a4))
  {
    v17 = *(a4 + 128);
    v18 = v17(a3, a4);
    if (v18 >= 64)
    {
      v110 = -16;
      v107 = a2;
      v21 = v17;
      v22 = v14;
      v23 = v11;
      v24 = a1;
      v25 = *(a4 + 96);
      v26 = lazy protocol witness table accessor for type Int and conformance Int(v18, v19, v20);
      v103 = (a4 + 64);
      v27 = v108;
      v25(&v110, &type metadata for Int, v26, a3, a4);
      a1 = v24;
      v11 = v23;
      v14 = v22;
      v17 = v21;
      a2 = v107;
      v28 = (*(*(*(a4 + 32) + 8) + 16))(v107, v27, a3);
      v29 = v27;
      v16 = v103;
      result = (*(v11 + 8))(v29, a3);
      if (v28)
      {
        goto LABEL_25;
      }

      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v31 = v109(a3, a4);
  v17 = *(a4 + 128);
  v32 = v17(a3, a4);
  if ((v31 & 1) == 0)
  {
    if (v32 >= 64)
    {
      goto LABEL_11;
    }

LABEL_10:
    result = (*(a4 + 120))(a3, a4);
    if (result < -16)
    {
      goto LABEL_25;
    }

    goto LABEL_11;
  }

  v107 = a2;
  v103 = v17;
  if (v32 <= 64)
  {
    v69 = v105;
    v68 = v106;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v106, a3, v105, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    v71 = v104;
    (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v69, AssociatedConformanceWitness);
    v72 = v108;
    (v68[3])(v71, a3, v68);
    a2 = v107;
    LOBYTE(v68) = (*(*(*(a4 + 32) + 8) + 16))(v107, v72, a3);
    result = (*(v11 + 8))(v72, a3);
    if (v68)
    {
      goto LABEL_25;
    }

    result = (*(a4 + 120))(a3, a4);
    v17 = v103;
    if (result < -16)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v110 = -16;
    v35 = v14;
    v36 = v11;
    v37 = a1;
    v38 = *(a4 + 96);
    v39 = lazy protocol witness table accessor for type Int and conformance Int(v32, v33, v34);
    v40 = v108;
    v38(&v110, &type metadata for Int, v39, a3, a4);
    a1 = v37;
    v11 = v36;
    v14 = v35;
    v41 = v107;
    v42 = (*(*(*(a4 + 32) + 8) + 16))(v107, v40, a3);
    v43 = v40;
    v16 = (a4 + 64);
    a2 = v41;
    result = (*(v11 + 8))(v43, a3);
    v17 = v103;
    if (v42)
    {
      goto LABEL_25;
    }
  }

LABEL_11:
  v44 = v109(a3, a4);
  v102[1] = a4 + 128;
  v45 = v17(a3, a4);
  if (v44)
  {
    if (v45 > 64)
    {
      goto LABEL_13;
    }

LABEL_16:
    result = (*(a4 + 120))(a3, a4);
    if (result > 16)
    {
      goto LABEL_25;
    }

    goto LABEL_17;
  }

  if (v45 < 64)
  {
    goto LABEL_16;
  }

LABEL_13:
  v110 = 16;
  v107 = a2;
  v48 = v17;
  v49 = v14;
  v50 = v11;
  v51 = a1;
  v52 = *(a4 + 96);
  v53 = lazy protocol witness table accessor for type Int and conformance Int(v45, v46, v47);
  v103 = v16;
  v54 = v108;
  v52(&v110, &type metadata for Int, v53, a3, a4);
  a1 = v51;
  v11 = v50;
  v14 = v49;
  v17 = v48;
  a2 = v107;
  v55 = (*(*(*(a4 + 32) + 8) + 16))(v54, v107, a3);
  v56 = v54;
  v16 = v103;
  result = (*(v11 + 8))(v56, a3);
  if (v55)
  {
    goto LABEL_25;
  }

LABEL_17:
  (*(v11 + 16))(v14, a2, a3);
  if ((v109(a3, a4) & 1) == 0 || v17(a3, a4) < 65)
  {
    goto LABEL_34;
  }

  if ((v109(a3, a4) & 1) == 0)
  {
    v74 = v109(a3, a4);
    v75 = v17(a3, a4);
    if ((v74 & 1) == 0)
    {
      if (v75 >= 64)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }

    v103 = v17;
    if (v75 <= 64)
    {
      v86 = v105;
      v85 = v106;
      v87 = swift_getAssociatedConformanceWitness(v106, a3, v105, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v88 = v104;
      (*(v87 + 8))(&qword_18071E0A8, 256, v86, v87);
      v89 = v108;
      (v85[3])(v88, a3, v85);
      LOBYTE(v85) = (*(*(*(a4 + 32) + 8) + 16))(v14, v89, a3);
      (*(v11 + 8))(v89, a3);
      v17 = v103;
      if ((v85 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v110 = 0x8000000000000000;
      v78 = v14;
      v79 = v11;
      v80 = a1;
      v81 = *(a4 + 96);
      v82 = lazy protocol witness table accessor for type Int and conformance Int(v75, v76, v77);
      v83 = v108;
      v81(&v110, &type metadata for Int, v82, a3, a4);
      a1 = v80;
      v11 = v79;
      v14 = v78;
      v84 = (*(*(*(a4 + 32) + 8) + 16))(v78, v83, a3);
      (*(v11 + 8))(v83, a3);
      v17 = v103;
      if ((v84 & 1) == 0)
      {
        goto LABEL_34;
      }
    }

LABEL_38:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v57 = v17(a3, a4);
  if (v57 < 64)
  {
LABEL_33:
    (*(a4 + 120))(a3, a4);
    goto LABEL_34;
  }

  v110 = 0x8000000000000000;
  v60 = v17;
  v61 = v14;
  v62 = v11;
  v63 = a1;
  v64 = *(a4 + 96);
  v65 = lazy protocol witness table accessor for type Int and conformance Int(v57, v58, v59);
  v103 = v16;
  v66 = v108;
  v64(&v110, &type metadata for Int, v65, a3, a4);
  a1 = v63;
  v11 = v62;
  v14 = v61;
  v17 = v60;
  v67 = (*(*(*(a4 + 32) + 8) + 16))(v14, v66, a3);
  (*(v11 + 8))(v66, a3);
  if (v67)
  {
    goto LABEL_38;
  }

LABEL_34:
  if (v17(a3, a4) > 64 || v17(a3, a4) == 64 && (v109(a3, a4) & 1) == 0)
  {
    v90 = v109(a3, a4);
    v91 = v17(a3, a4);
    if (v90)
    {
      if (v91 > 64)
      {
        goto LABEL_37;
      }
    }

    else if (v91 >= 64)
    {
LABEL_37:
      v110 = 0x7FFFFFFFFFFFFFFFLL;
      v94 = v14;
      v95 = a1;
      v96 = *(a4 + 96);
      v97 = lazy protocol witness table accessor for type Int and conformance Int(v91, v92, v93);
      v98 = v108;
      v96(&v110, &type metadata for Int, v97, a3, a4);
      a1 = v95;
      v14 = v94;
      v99 = (*(*(*(a4 + 32) + 8) + 16))(v98, v94, a3);
      (*(v11 + 8))(v98, a3);
      if (v99)
      {
        goto LABEL_38;
      }

      goto LABEL_44;
    }

    (*(a4 + 120))(a3, a4);
  }

LABEL_44:
  v100 = (*(a4 + 120))(a3, a4);
  result = (*(v11 + 8))(v14, a3);
  v101 = *a1;
  if ((v100 & 0x8000000000000000) != 0)
  {
    if (v100 >= 0xFFFFFFFFFFFFFFF1)
    {
      v73 = v101 << -v100;
      goto LABEL_47;
    }
  }

  else if (v100 < 0x10)
  {
    v73 = v101 >> v100;
    goto LABEL_47;
  }

LABEL_25:
  LOWORD(v73) = 0;
LABEL_47:
  *a1 = v73;
  return result;
}

uint64_t protocol witness for static BinaryInteger.<< infix<A>(_:_:) in conformance UInt16@<X0>(unsigned __int16 *a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, _WORD *a5@<X8>)
{
  v107 = *(*(a4 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v107, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v106 = v10;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v105 = &v103 - v12;
  v13 = *(a3 - 1);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v103 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v110 = &v103 - v17;
  v108 = *a1;
  v18 = (a4 + 64);
  v111 = *(a4 + 64);
  if (v111(a3, a4))
  {
    v19 = *(a4 + 128);
    v20 = v19(a3, a4);
    if (v20 >= 64)
    {
      v112 = -16;
      v109 = a2;
      v23 = v19;
      v24 = v16;
      v25 = v13;
      v26 = a5;
      v27 = *(a4 + 96);
      v28 = lazy protocol witness table accessor for type Int and conformance Int(v20, v21, v22);
      v104 = (a4 + 64);
      v29 = v110;
      v27(&v112, &type metadata for Int, v28, a3, a4);
      a5 = v26;
      v13 = v25;
      v16 = v24;
      v19 = v23;
      a2 = v109;
      v30 = (*(*(*(a4 + 32) + 8) + 16))(v109, v29, a3);
      v31 = v29;
      v18 = v104;
      result = (*(v13 + 8))(v31, a3);
      if (v30)
      {
        goto LABEL_25;
      }

      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v33 = v111(a3, a4);
  v19 = *(a4 + 128);
  v34 = v19(a3, a4);
  if ((v33 & 1) == 0)
  {
    if (v34 >= 64)
    {
      goto LABEL_11;
    }

LABEL_10:
    result = (*(a4 + 120))(a3, a4);
    if (result < -16)
    {
      goto LABEL_25;
    }

    goto LABEL_11;
  }

  v109 = a2;
  v104 = v19;
  if (v34 <= 64)
  {
    v71 = v106;
    v70 = v107;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v107, a3, v106, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    v73 = v105;
    (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v71, AssociatedConformanceWitness);
    v74 = v110;
    (v70[3])(v73, a3, v70);
    a2 = v109;
    LOBYTE(v70) = (*(*(*(a4 + 32) + 8) + 16))(v109, v74, a3);
    result = (*(v13 + 8))(v74, a3);
    if (v70)
    {
      goto LABEL_25;
    }

    result = (*(a4 + 120))(a3, a4);
    v19 = v104;
    if (result < -16)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v112 = -16;
    v37 = v16;
    v38 = v13;
    v39 = a5;
    v40 = *(a4 + 96);
    v41 = lazy protocol witness table accessor for type Int and conformance Int(v34, v35, v36);
    v42 = v110;
    v40(&v112, &type metadata for Int, v41, a3, a4);
    a5 = v39;
    v13 = v38;
    v16 = v37;
    v43 = v109;
    v44 = (*(*(*(a4 + 32) + 8) + 16))(v109, v42, a3);
    v45 = v42;
    v18 = (a4 + 64);
    a2 = v43;
    result = (*(v13 + 8))(v45, a3);
    v19 = v104;
    if (v44)
    {
      goto LABEL_25;
    }
  }

LABEL_11:
  v46 = v111(a3, a4);
  v103 = a4 + 128;
  v47 = v19(a3, a4);
  if (v46)
  {
    if (v47 > 64)
    {
      goto LABEL_13;
    }

LABEL_16:
    result = (*(a4 + 120))(a3, a4);
    if (result > 16)
    {
      goto LABEL_25;
    }

    goto LABEL_17;
  }

  if (v47 < 64)
  {
    goto LABEL_16;
  }

LABEL_13:
  v112 = 16;
  v109 = a2;
  v50 = v19;
  v51 = v16;
  v52 = v13;
  v53 = a5;
  v54 = *(a4 + 96);
  v55 = lazy protocol witness table accessor for type Int and conformance Int(v47, v48, v49);
  v104 = v18;
  v56 = v110;
  v54(&v112, &type metadata for Int, v55, a3, a4);
  a5 = v53;
  v13 = v52;
  v16 = v51;
  v19 = v50;
  a2 = v109;
  v57 = (*(*(*(a4 + 32) + 8) + 16))(v56, v109, a3);
  v58 = v56;
  v18 = v104;
  result = (*(v13 + 8))(v58, a3);
  if (v57)
  {
    goto LABEL_25;
  }

LABEL_17:
  (*(v13 + 16))(v16, a2, a3);
  if ((v111(a3, a4) & 1) == 0 || v19(a3, a4) < 65)
  {
    goto LABEL_34;
  }

  if ((v111(a3, a4) & 1) == 0)
  {
    v76 = v111(a3, a4);
    v77 = v19(a3, a4);
    if ((v76 & 1) == 0)
    {
      if (v77 >= 64)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }

    v104 = v19;
    if (v77 <= 64)
    {
      v88 = v106;
      v87 = v107;
      v89 = swift_getAssociatedConformanceWitness(v107, a3, v106, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v90 = v105;
      (*(v89 + 8))(&qword_18071E0A8, 256, v88, v89);
      v91 = v110;
      (v87[3])(v90, a3, v87);
      LOBYTE(v87) = (*(*(*(a4 + 32) + 8) + 16))(v16, v91, a3);
      (*(v13 + 8))(v91, a3);
      v19 = v104;
      if ((v87 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v112 = 0x8000000000000000;
      v80 = v16;
      v81 = v13;
      v82 = a5;
      v83 = *(a4 + 96);
      v84 = lazy protocol witness table accessor for type Int and conformance Int(v77, v78, v79);
      v85 = v110;
      v83(&v112, &type metadata for Int, v84, a3, a4);
      a5 = v82;
      v13 = v81;
      v16 = v80;
      v86 = (*(*(*(a4 + 32) + 8) + 16))(v80, v85, a3);
      (*(v13 + 8))(v85, a3);
      v19 = v104;
      if ((v86 & 1) == 0)
      {
        goto LABEL_34;
      }
    }

LABEL_38:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v59 = v19(a3, a4);
  if (v59 < 64)
  {
LABEL_33:
    (*(a4 + 120))(a3, a4);
    goto LABEL_34;
  }

  v112 = 0x8000000000000000;
  v62 = v19;
  v63 = v16;
  v64 = v13;
  v65 = a5;
  v66 = *(a4 + 96);
  v67 = lazy protocol witness table accessor for type Int and conformance Int(v59, v60, v61);
  v104 = v18;
  v68 = v110;
  v66(&v112, &type metadata for Int, v67, a3, a4);
  a5 = v65;
  v13 = v64;
  v16 = v63;
  v19 = v62;
  v69 = (*(*(*(a4 + 32) + 8) + 16))(v16, v68, a3);
  (*(v13 + 8))(v68, a3);
  if (v69)
  {
    goto LABEL_38;
  }

LABEL_34:
  if (v19(a3, a4) > 64 || v19(a3, a4) == 64 && (v111(a3, a4) & 1) == 0)
  {
    v92 = v111(a3, a4);
    v93 = v19(a3, a4);
    if (v92)
    {
      if (v93 > 64)
      {
        goto LABEL_37;
      }
    }

    else if (v93 >= 64)
    {
LABEL_37:
      v112 = 0x7FFFFFFFFFFFFFFFLL;
      v96 = v16;
      v97 = a5;
      v98 = *(a4 + 96);
      v99 = lazy protocol witness table accessor for type Int and conformance Int(v93, v94, v95);
      v100 = v110;
      v98(&v112, &type metadata for Int, v99, a3, a4);
      a5 = v97;
      v16 = v96;
      v101 = (*(*(*(a4 + 32) + 8) + 16))(v100, v96, a3);
      (*(v13 + 8))(v100, a3);
      if (v101)
      {
        goto LABEL_38;
      }

      goto LABEL_44;
    }

    (*(a4 + 120))(a3, a4);
  }

LABEL_44:
  v102 = (*(a4 + 120))(a3, a4);
  result = (*(v13 + 8))(v16, a3);
  if ((v102 & 0x8000000000000000) != 0)
  {
    if (v102 > 0xFFFFFFFFFFFFFFF0)
    {
      v75 = v108 >> -v102;
      goto LABEL_47;
    }
  }

  else if (v102 <= 0xF)
  {
    v75 = v108 << v102;
    goto LABEL_47;
  }

LABEL_25:
  LOWORD(v75) = 0;
LABEL_47:
  *a5 = v75;
  return result;
}

uint64_t protocol witness for static BinaryInteger.<<= infix<A>(_:_:) in conformance UInt16(_WORD *a1, uint64_t a2, const char *a3, uint64_t a4)
{
  v106 = *(*(a4 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v106, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v105 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v104 = v102 - v10;
  v11 = *(a3 - 1);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v108 = v102 - v15;
  v16 = (a4 + 64);
  v109 = *(a4 + 64);
  if (v109(a3, a4))
  {
    v17 = *(a4 + 128);
    v18 = v17(a3, a4);
    if (v18 >= 64)
    {
      v110 = -16;
      v107 = a2;
      v21 = v17;
      v22 = v14;
      v23 = v11;
      v24 = a1;
      v25 = *(a4 + 96);
      v26 = lazy protocol witness table accessor for type Int and conformance Int(v18, v19, v20);
      v103 = (a4 + 64);
      v27 = v108;
      v25(&v110, &type metadata for Int, v26, a3, a4);
      a1 = v24;
      v11 = v23;
      v14 = v22;
      v17 = v21;
      a2 = v107;
      v28 = (*(*(*(a4 + 32) + 8) + 16))(v107, v27, a3);
      v29 = v27;
      v16 = v103;
      result = (*(v11 + 8))(v29, a3);
      if (v28)
      {
        goto LABEL_25;
      }

      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v31 = v109(a3, a4);
  v17 = *(a4 + 128);
  v32 = v17(a3, a4);
  if ((v31 & 1) == 0)
  {
    if (v32 >= 64)
    {
      goto LABEL_11;
    }

LABEL_10:
    result = (*(a4 + 120))(a3, a4);
    if (result < -16)
    {
      goto LABEL_25;
    }

    goto LABEL_11;
  }

  v107 = a2;
  v103 = v17;
  if (v32 <= 64)
  {
    v69 = v105;
    v68 = v106;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v106, a3, v105, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    v71 = v104;
    (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v69, AssociatedConformanceWitness);
    v72 = v108;
    (v68[3])(v71, a3, v68);
    a2 = v107;
    LOBYTE(v68) = (*(*(*(a4 + 32) + 8) + 16))(v107, v72, a3);
    result = (*(v11 + 8))(v72, a3);
    if (v68)
    {
      goto LABEL_25;
    }

    result = (*(a4 + 120))(a3, a4);
    v17 = v103;
    if (result < -16)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v110 = -16;
    v35 = v14;
    v36 = v11;
    v37 = a1;
    v38 = *(a4 + 96);
    v39 = lazy protocol witness table accessor for type Int and conformance Int(v32, v33, v34);
    v40 = v108;
    v38(&v110, &type metadata for Int, v39, a3, a4);
    a1 = v37;
    v11 = v36;
    v14 = v35;
    v41 = v107;
    v42 = (*(*(*(a4 + 32) + 8) + 16))(v107, v40, a3);
    v43 = v40;
    v16 = (a4 + 64);
    a2 = v41;
    result = (*(v11 + 8))(v43, a3);
    v17 = v103;
    if (v42)
    {
      goto LABEL_25;
    }
  }

LABEL_11:
  v44 = v109(a3, a4);
  v102[1] = a4 + 128;
  v45 = v17(a3, a4);
  if (v44)
  {
    if (v45 > 64)
    {
      goto LABEL_13;
    }

LABEL_16:
    result = (*(a4 + 120))(a3, a4);
    if (result > 16)
    {
      goto LABEL_25;
    }

    goto LABEL_17;
  }

  if (v45 < 64)
  {
    goto LABEL_16;
  }

LABEL_13:
  v110 = 16;
  v107 = a2;
  v48 = v17;
  v49 = v14;
  v50 = v11;
  v51 = a1;
  v52 = *(a4 + 96);
  v53 = lazy protocol witness table accessor for type Int and conformance Int(v45, v46, v47);
  v103 = v16;
  v54 = v108;
  v52(&v110, &type metadata for Int, v53, a3, a4);
  a1 = v51;
  v11 = v50;
  v14 = v49;
  v17 = v48;
  a2 = v107;
  v55 = (*(*(*(a4 + 32) + 8) + 16))(v54, v107, a3);
  v56 = v54;
  v16 = v103;
  result = (*(v11 + 8))(v56, a3);
  if (v55)
  {
    goto LABEL_25;
  }

LABEL_17:
  (*(v11 + 16))(v14, a2, a3);
  if ((v109(a3, a4) & 1) == 0 || v17(a3, a4) < 65)
  {
    goto LABEL_34;
  }

  if ((v109(a3, a4) & 1) == 0)
  {
    v74 = v109(a3, a4);
    v75 = v17(a3, a4);
    if ((v74 & 1) == 0)
    {
      if (v75 >= 64)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }

    v103 = v17;
    if (v75 <= 64)
    {
      v86 = v105;
      v85 = v106;
      v87 = swift_getAssociatedConformanceWitness(v106, a3, v105, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v88 = v104;
      (*(v87 + 8))(&qword_18071E0A8, 256, v86, v87);
      v89 = v108;
      (v85[3])(v88, a3, v85);
      LOBYTE(v85) = (*(*(*(a4 + 32) + 8) + 16))(v14, v89, a3);
      (*(v11 + 8))(v89, a3);
      v17 = v103;
      if ((v85 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v110 = 0x8000000000000000;
      v78 = v14;
      v79 = v11;
      v80 = a1;
      v81 = *(a4 + 96);
      v82 = lazy protocol witness table accessor for type Int and conformance Int(v75, v76, v77);
      v83 = v108;
      v81(&v110, &type metadata for Int, v82, a3, a4);
      a1 = v80;
      v11 = v79;
      v14 = v78;
      v84 = (*(*(*(a4 + 32) + 8) + 16))(v78, v83, a3);
      (*(v11 + 8))(v83, a3);
      v17 = v103;
      if ((v84 & 1) == 0)
      {
        goto LABEL_34;
      }
    }

LABEL_38:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v57 = v17(a3, a4);
  if (v57 < 64)
  {
LABEL_33:
    (*(a4 + 120))(a3, a4);
    goto LABEL_34;
  }

  v110 = 0x8000000000000000;
  v60 = v17;
  v61 = v14;
  v62 = v11;
  v63 = a1;
  v64 = *(a4 + 96);
  v65 = lazy protocol witness table accessor for type Int and conformance Int(v57, v58, v59);
  v103 = v16;
  v66 = v108;
  v64(&v110, &type metadata for Int, v65, a3, a4);
  a1 = v63;
  v11 = v62;
  v14 = v61;
  v17 = v60;
  v67 = (*(*(*(a4 + 32) + 8) + 16))(v14, v66, a3);
  (*(v11 + 8))(v66, a3);
  if (v67)
  {
    goto LABEL_38;
  }

LABEL_34:
  if (v17(a3, a4) > 64 || v17(a3, a4) == 64 && (v109(a3, a4) & 1) == 0)
  {
    v90 = v109(a3, a4);
    v91 = v17(a3, a4);
    if (v90)
    {
      if (v91 > 64)
      {
        goto LABEL_37;
      }
    }

    else if (v91 >= 64)
    {
LABEL_37:
      v110 = 0x7FFFFFFFFFFFFFFFLL;
      v94 = v14;
      v95 = a1;
      v96 = *(a4 + 96);
      v97 = lazy protocol witness table accessor for type Int and conformance Int(v91, v92, v93);
      v98 = v108;
      v96(&v110, &type metadata for Int, v97, a3, a4);
      a1 = v95;
      v14 = v94;
      v99 = (*(*(*(a4 + 32) + 8) + 16))(v98, v94, a3);
      (*(v11 + 8))(v98, a3);
      if (v99)
      {
        goto LABEL_38;
      }

      goto LABEL_44;
    }

    (*(a4 + 120))(a3, a4);
  }

LABEL_44:
  v100 = (*(a4 + 120))(a3, a4);
  result = (*(v11 + 8))(v14, a3);
  v101 = *a1;
  if ((v100 & 0x8000000000000000) != 0)
  {
    if (v100 > 0xFFFFFFFFFFFFFFF0)
    {
      v73 = v101 >> -v100;
      goto LABEL_47;
    }
  }

  else if (v100 < 0x10)
  {
    v73 = v101 << v100;
    goto LABEL_47;
  }

LABEL_25:
  LOWORD(v73) = 0;
LABEL_47:
  *a1 = v73;
  return result;
}

_WORD *protocol witness for BinaryInteger.quotientAndRemainder(dividingBy:) in conformance UInt16(_WORD *result, _WORD *a2, _WORD *a3)
{
  if (!*a3)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v4 = *v3 / *a3;
  *a2 = *v3 % *a3;
  *result = v4;
  return result;
}

void protocol witness for LosslessStringConvertible.init(_:) in conformance UInt16(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = HIBYTE(a2) & 0xF;
  v6 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {
    a2;
    v34 = 0;
    LOBYTE(v33) = 1;
    goto LABEL_47;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v37[0] = a1;
      v37[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      v16 = specialized closure #1 in FixedWidthInteger.init<A>(_:radix:)(v37, v5, 10);
      v20 = HIWORD(v16) & 1;
LABEL_42:
      v38 = v20;
      goto LABEL_43;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      if ((a1 & 0xFFFFFFFFFFFFLL) != 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v35 = _StringObject.sharedUTF8.getter(a1, a2);
      v6 = v36;
      v8 = v35;
      if (v6 > 0)
      {
LABEL_9:
        v9 = *v8;
        if (v9 == 43)
        {
          v21 = specialized Collection.subscript.getter(1, v8, v6);
          v25 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v21, v22, v23, v24);
          if (v26)
          {
            LOWORD(v16) = 0;
            if (v25)
            {
              while (1)
              {
                v27 = *v25 - 48;
                if (v27 >= 0xA)
                {
                  goto LABEL_41;
                }

                v28 = 10 * v16;
                v16 = (10 * v16) + v27;
                if ((v28 & 0xF0000) != 0 || HIWORD(v16) != 0)
                {
                  goto LABEL_41;
                }

                ++v25;
                if (!--v26)
                {
                  goto LABEL_40;
                }
              }
            }

            goto LABEL_40;
          }
        }

        else
        {
          if (v9 != 45)
          {
            LOWORD(v16) = 0;
            while (1)
            {
              v30 = *v8 - 48;
              if (v30 >= 0xA)
              {
                goto LABEL_41;
              }

              v31 = 10 * v16;
              v16 = (10 * v16) + v30;
              if ((v31 & 0xF0000) != 0 || HIWORD(v16) != 0)
              {
                goto LABEL_41;
              }

              ++v8;
              if (!--v6)
              {
                goto LABEL_40;
              }
            }
          }

          v10 = specialized Collection.subscript.getter(1, v8, v6);
          v14 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v10, v11, v12, v13);
          if (v15)
          {
            LOWORD(v16) = 0;
            if (v14)
            {
              while (1)
              {
                v17 = *v14 - 48;
                if (v17 >= 0xA)
                {
                  break;
                }

                v18 = 10 * v16;
                v16 = (10 * v16) - v17;
                if ((v18 & 0xF0000) != 0 || (v16 & 0xFFFF0000) != 0)
                {
                  break;
                }

                ++v14;
                if (!--v15)
                {
                  goto LABEL_40;
                }
              }

LABEL_41:
              LOWORD(v16) = 0;
              LOBYTE(v20) = 1;
              goto LABEL_42;
            }

LABEL_40:
            v38 = 0;
LABEL_43:
            LOBYTE(v33) = v38;
            a2;
            goto LABEL_44;
          }
        }

        LOWORD(v16) = 0;
        v38 = 1;
        goto LABEL_43;
      }
    }

    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v16 = specialized _parseInteger<A, B>(ascii:radix:)(a1, a2, 10);
  a2;
  v33 = HIWORD(v16) & 1;
LABEL_44:
  if (v33)
  {
    v34 = 0;
  }

  else
  {
    v34 = v16;
  }

LABEL_47:
  *a3 = v34;
  *(a3 + 2) = v33 & 1;
}

uint64_t protocol witness for Numeric.init<A>(exactly:) in conformance UInt16@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _WORD *a5@<X8>)
{
  v34 = a4;
  v36 = a5;
  v37 = *(a2 - 1);
  v38 = a1;
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(v9 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v10, a2, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v12 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v34 - v13;
  v35 = *(a3 + 64);
  if ((v35(a2, a3) & 1) == 0 || (v15 = swift_getAssociatedConformanceWitness(v10, a2, v12, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral), (*(v15 + 8))(&qword_18071E0A8, 256, v12, v15), (*(v10 + 24))(v14, a2, v10), v16 = (*(*(*(a3 + 32) + 8) + 16))(v38, v8, a2), v17 = *(v37 + 8), v17(v8, a2), (v16 & 1) == 0))
  {
    v18 = *(a3 + 128);
    if (v18(a2, a3) < 16)
    {
      goto LABEL_12;
    }

    v39 = -1;
    v19 = v35(a2, a3);
    v20 = v38;
    v21 = v18(a2, a3);
    if (v19)
    {
      if (v21 <= 16)
      {
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v10, a2, v12, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v12, AssociatedConformanceWitness);
        (*(v10 + 24))(v14, a2, v10);
        v25 = (*(*(*(a3 + 32) + 8) + 40))(v20, v8, a2);
        (*(v37 + 8))(v8, a2);
        if ((v25 & 1) == 0)
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      }
    }

    else if (v21 < 17)
    {
LABEL_11:
      (*(a3 + 120))(a2, a3);
      goto LABEL_12;
    }

    v26 = *(a3 + 96);
    v27 = lazy protocol witness table accessor for type UInt16 and conformance UInt16(v21, v22, v23);
    v26(&v39, v34, v27, a2, a3);
    v28 = (*(*(*(a3 + 32) + 8) + 16))(v8, v20, a2);
    v17 = *(v37 + 8);
    v17(v8, a2);
    if ((v28 & 1) == 0)
    {
LABEL_12:
      v32 = v38;
      v30 = (*(a3 + 120))(a2, a3);
      result = (*(v37 + 8))(v32, a2);
      v31 = 0;
      goto LABEL_13;
    }
  }

  result = (v17)(v38, a2);
  v30 = 0;
  v31 = 1;
LABEL_13:
  v33 = v36;
  *v36 = v30;
  *(v33 + 2) = v31;
  return result;
}

unsigned __int16 *protocol witness for static Numeric.* infix(_:_:) in conformance UInt16@<X0>(unsigned __int16 *result@<X0>, unsigned __int16 *a2@<X1>, _WORD *a3@<X8>)
{
  v3 = *result * *a2;
  if ((v3 & 0xFFFF0000) != 0)
  {
    __break(1u);
  }

  else
  {
    *a3 = v3;
  }

  return result;
}

uint64_t static UInt16.* infix(_:_:)(unsigned __int16 a1, unsigned __int16 a2)
{
  result = a1 * a2;
  if ((result & 0xFFFF0000) != 0)
  {
    __break(1u);
  }

  return result;
}

_WORD *protocol witness for static Numeric.*= infix(_:_:) in conformance UInt16(_WORD *result, unsigned __int16 *a2)
{
  v2 = *result * *a2;
  if ((v2 & 0xFFFF0000) != 0)
  {
    __break(1u);
  }

  else
  {
    *result = v2;
  }

  return result;
}

unsigned __int16 *protocol witness for Strideable.distance(to:) in conformance UInt16@<X0>(unsigned __int16 *result@<X0>, uint64_t *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  v5 = v4 - v3;
  v6 = v3 >= v4;
  v7 = v3 - v4;
  if (!v6)
  {
    v7 = -v5;
  }

  *a2 = v7;
  return result;
}

unint64_t *protocol witness for Strideable.advanced(by:) in conformance UInt16@<X0>(unint64_t *result@<X0>, _WORD *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  if ((*result & 0x8000000000000000) == 0)
  {
    if (v3 >= 0x10000)
    {
      goto LABEL_8;
    }

    v4 += v3;
    v3 = v4;
    if (v4 == v4)
    {
LABEL_7:
      *a2 = v4;
      return result;
    }

    __break(1u);
  }

  v5 = -v3;
  if (v5 >= 0x10000)
  {
LABEL_8:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v4 -= v5;
  if ((v4 & 0xFFFF0000) == 0)
  {
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

unsigned __int16 *protocol witness for static AdditiveArithmetic.+ infix(_:_:) in conformance UInt16@<X0>(unsigned __int16 *result@<X0>, unsigned __int16 *a2@<X1>, _WORD *a3@<X8>)
{
  v3 = *result + *a2;
  if ((v3 & 0x10000) != 0)
  {
    __break(1u);
  }

  else
  {
    *a3 = v3;
  }

  return result;
}

_WORD *protocol witness for static AdditiveArithmetic.+= infix(_:_:) in conformance UInt16(_WORD *result, unsigned __int16 *a2)
{
  v2 = *result + *a2;
  if ((v2 & 0x10000) != 0)
  {
    __break(1u);
  }

  else
  {
    *result = v2;
  }

  return result;
}

unsigned __int16 *protocol witness for static AdditiveArithmetic.- infix(_:_:) in conformance UInt16@<X0>(unsigned __int16 *result@<X0>, unsigned __int16 *a2@<X1>, _WORD *a3@<X8>)
{
  v3 = *result - *a2;
  if ((v3 & 0xFFFF0000) != 0)
  {
    __break(1u);
  }

  else
  {
    *a3 = v3;
  }

  return result;
}

_WORD *protocol witness for static AdditiveArithmetic.-= infix(_:_:) in conformance UInt16(_WORD *result, unsigned __int16 *a2)
{
  v2 = *result - *a2;
  if ((v2 & 0xFFFF0000) != 0)
  {
    __break(1u);
  }

  else
  {
    *result = v2;
  }

  return result;
}

uint64_t UInt16._toCustomAnyHashable()@<X0>(__int16 a1@<W0>, uint64_t a2@<X8>)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22_IntegerAnyHashableBoxVys6UInt16VGMd, _ss22_IntegerAnyHashableBoxVys6UInt16VGMR);
  *(a2 + 24) = result;
  *(a2 + 32) = &protocol witness table for _IntegerAnyHashableBox<A>;
  *a2 = a1;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance UInt16@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22_IntegerAnyHashableBoxVys6UInt16VGMd, _ss22_IntegerAnyHashableBoxVys6UInt16VGMR);
  *(a1 + 24) = result;
  *(a1 + 32) = &protocol witness table for _IntegerAnyHashableBox<A>;
  *a1 = v3;
  return result;
}

uint64_t Int16.init(_:)(__n128 a1)
{
  if ((a1.n128_u16[0] & 0x7FFFu) >= 0x7C00 || *a1.n128_u16 <= COERCE_SHORT_FLOAT(-2047) || *a1.n128_u16 >= COERCE_SHORT_FLOAT(30720))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return *a1.n128_u16;
}

uint64_t Int16.init(exactly:)(__n128 a1)
{
  v1 = *a1.n128_u16 <= COERCE_SHORT_FLOAT(-2047);
  if (*a1.n128_u16 >= COERCE_SHORT_FLOAT(30720))
  {
    v1 = 1;
  }

  if (truncl(*a1.n128_u16) != *a1.n128_u16)
  {
    v1 = 1;
  }

  v2 = *a1.n128_u16;
  if (v1)
  {
    v2 = 0;
  }

  return v2 | (v1 << 16);
}

Swift::Int16 __swiftcall Int16.init(_:)(Swift::Float a1)
{
  if ((LODWORD(a1) & 0x7FFFFFFFu) >= 0x7F800000 || a1 <= -32769.0 || a1 >= 32768.0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a1;
}

Swift::Int16_optional __swiftcall Int16.init(exactly:)(Swift::Float exactly)
{
  v1 = exactly <= -32769.0;
  if (exactly >= 32768.0)
  {
    v1 = 1;
  }

  if (truncf(exactly) != exactly)
  {
    v1 = 1;
  }

  v2 = exactly;
  if (v1)
  {
    v2 = 0;
  }

  return (v2 | (v1 << 16));
}

Swift::Int16 __swiftcall Int16.init(_:)(Swift::Double a1)
{
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000 || a1 <= -32769.0 || a1 >= 32768.0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a1;
}

Swift::Int16_optional __swiftcall Int16.init(exactly:)(Swift::Double exactly)
{
  v1 = exactly <= -32769.0;
  if (exactly >= 32768.0)
  {
    v1 = 1;
  }

  if (trunc(exactly) != exactly)
  {
    v1 = 1;
  }

  v2 = exactly;
  if (v1)
  {
    v2 = 0;
  }

  return (v2 | (v1 << 16));
}

__int16 *static Int16.+= infix(_:_:)(__int16 *result, __int16 a2)
{
  v2 = *result + a2;
  if ((*result + a2) == v2)
  {
    *result = v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

__int16 *static Int16.-= infix(_:_:)(__int16 *result, __int16 a2)
{
  v2 = *result - a2;
  if ((*result - a2) == v2)
  {
    *result = v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

__int16 *static Int16.*= infix(_:_:)(__int16 *result, __int16 a2)
{
  v2 = *result * a2;
  if ((*result * a2) == v2)
  {
    *result = v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

_WORD *static Int16./= infix(_:_:)(_WORD *result, __int16 a2)
{
  if (!a2 || (v2 = *result, a2 == -1) && v2 == 0x8000)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *result = v2 / a2;
  return result;
}

Swift::tuple_partialValue_Int16_overflow_Bool __swiftcall Int16.addingReportingOverflow(_:)(Swift::Int16 a1)
{
  v2 = v1 + a1;
  result.overflow = v1;
  result.partialValue = v2;
  return result;
}

Swift::tuple_partialValue_Int16_overflow_Bool __swiftcall Int16.subtractingReportingOverflow(_:)(Swift::Int16 a1)
{
  v2 = v1 - a1;
  result.overflow = v1;
  result.partialValue = v2;
  return result;
}

Swift::tuple_partialValue_Int16_overflow_Bool __swiftcall Int16.multipliedReportingOverflow(by:)(Swift::Int16 by)
{
  v2 = v1 * by;
  result.overflow = v1;
  result.partialValue = v2;
  return result;
}

Swift::tuple_partialValue_Int16_overflow_Bool __swiftcall Int16.dividedReportingOverflow(by:)(Swift::Int16 by)
{
  if (by)
  {
    if (by == -1 && v1 == 0x8000)
    {
      v1 = 0x8000;
    }

    else
    {
      v1 /= by;
    }
  }

  v2 = v1;
  result.overflow = v1;
  result.partialValue = v2;
  return result;
}

Swift::tuple_partialValue_Int16_overflow_Bool __swiftcall Int16.remainderReportingOverflow(dividingBy:)(Swift::Int16 dividingBy)
{
  if (dividingBy)
  {
    if (dividingBy == -1 && v1 == 0x8000)
    {
      v1 = 0;
    }

    else
    {
      v1 %= dividingBy;
    }
  }

  v2 = v1;
  result.overflow = v1;
  result.partialValue = v2;
  return result;
}

_WORD *static Int16.%= infix(_:_:)(_WORD *result, __int16 a2)
{
  if (!a2 || (v2 = *result, a2 == -1) && v2 == 0x8000)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *result = v2 % a2;
  return result;
}

uint64_t Int16.nonzeroBitCount.getter(unsigned __int16 a1, int8x8_t a2)
{
  a2.i32[0] = a1;
  v2 = vcnt_s8(a2);
  v2.i16[0] = vaddlv_u8(v2);
  return v2.u32[0];
}

Swift::Int __swiftcall Int16.Words.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

Swift::Int __swiftcall Int16.Words.index(before:)(Swift::Int before)
{
  v1 = __OFSUB__(before, 1);
  result = before - 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t Int16.Words.subscript.getter(uint64_t a1, __int16 a2)
{
  if (a1 < 0 || a1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a2;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance Int16.Words(void *a1, uint64_t *a2))()
{
  if (swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc(0x30, 0xA339uLL);
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = Int16.Words.subscript.read(v4, *a2);
  v5[4] = v7;
  v5[5] = v6;
  return protocol witness for Collection.subscript.read in conformance UInt8.Words;
}

uint64_t (*Int16.Words.subscript.read(uint64_t a1, uint64_t a2))()
{
  if (a2 < 0 || a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return _swift_displayCrashMessage;
}

void *protocol witness for Collection.subscript.getter in conformance UInt16.Words@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  if ((*result & 0x8000000000000000) != 0 || (v3 = result[1], v3 >= 2))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v4 = *v2;
  *a2 = *result;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  return result;
}

uint64_t Int16.magnitude.getter(__int16 a1)
{
  if (a1 >= 0)
  {
    return a1;
  }

  else
  {
    return -a1;
  }
}

Swift::tuple_high_Int16_low_UInt16 __swiftcall Int16.multipliedFullWidth(by:)(Swift::Int16 by)
{
  v2 = (v1 * by) >> 16;
  result.low = v1;
  result.high = v2;
  return result;
}

Swift::tuple_quotient_Int16_remainder_Int16 __swiftcall Int16.dividingFullWidth(_:)(Swift::tuple_high_Int16_low_UInt16 a1)
{
  if (!v1 || (v2 = a1.low | (a1.high << 16), v1 == -1) && v2 == 0x80000000 || (v3 = v2 / v1, v3 != v3))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  result.remainder = v2;
  result.quotient = v3;
  return result;
}

BOOL protocol witness for FixedWidthInteger.addingReportingOverflow(_:) in conformance Int16(_WORD *a1, __int16 *a2)
{
  v3 = *v2 + *a2;
  v4 = v3 != (*v2 + *a2);
  *a1 = v3;
  return v4;
}

BOOL protocol witness for FixedWidthInteger.subtractingReportingOverflow(_:) in conformance Int16(_WORD *a1, __int16 *a2)
{
  v3 = *v2 - *a2;
  v4 = v3 != (*v2 - *a2);
  *a1 = v3;
  return v4;
}

BOOL protocol witness for FixedWidthInteger.multipliedReportingOverflow(by:) in conformance Int16(_WORD *a1, __int16 *a2)
{
  v3 = *v2 * *a2;
  v4 = v3 != (*v2 * *a2);
  *a1 = v3;
  return v4;
}

uint64_t protocol witness for FixedWidthInteger.dividedReportingOverflow(by:) in conformance Int16(_WORD *a1, _WORD *a2)
{
  v3 = *a2;
  v4 = *v2;
  if (!*a2 || v3 == 0xFFFF && v4 == 0x8000)
  {
    v5 = 1;
  }

  else
  {
    v5 = 0;
    LOWORD(v4) = v4 / v3;
  }

  *a1 = v4;
  return v5;
}

uint64_t protocol witness for FixedWidthInteger.remainderReportingOverflow(dividingBy:) in conformance Int16(_WORD *a1, _WORD *a2)
{
  v3 = *a2;
  v4 = *v2;
  if (!*a2)
  {
    goto LABEL_7;
  }

  if (v3 == 0xFFFF && v4 == 0x8000)
  {
    LOWORD(v4) = 0;
LABEL_7:
    v5 = 1;
    goto LABEL_5;
  }

  v5 = 0;
  LOWORD(v4) = v4 % v3;
LABEL_5:
  *a1 = v4;
  return v5;
}

_WORD *protocol witness for FixedWidthInteger.multipliedFullWidth(by:) in conformance Int16(_WORD *result, _WORD *a2, __int16 *a3)
{
  v4 = *v3 * *a3;
  *result = HIWORD(v4);
  *a2 = v4;
  return result;
}

Swift::Int16 protocol witness for FixedWidthInteger.dividingFullWidth(_:) in conformance Int16(Swift::Int16 *a1, _WORD *a2, _WORD *a3, _WORD *a4)
{
  result = Int16.dividingFullWidth(_:)(__PAIR32__(*a4, *a3)).quotient;
  *a1 = result;
  *a2 = v7;
  return result;
}

uint64_t _ss6UInt16Vs17FixedWidthIntegerssACP15nonzeroBitCountSivgTW_0()
{
  v1 = vcnt_s8(*v0);
  v1.i16[0] = vaddlv_u8(v1);
  return v1.u32[0];
}

_WORD *protocol witness for _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:) in conformance Int16@<X0>(_WORD *result@<X0>, unint64_t a2@<X1>, _WORD *a3@<X8>)
{
  if (a2 >> 8 <= 0x10)
  {
    *a3 = *result;
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

uint64_t protocol witness for BinaryInteger.init<A>(_:) in conformance UInt16@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, const char *a4@<X3>, uint64_t (*a5)(void)@<X5>, _WORD *a6@<X8>)
{
  v12 = a5();
  static FixedWidthInteger._convert<A>(from:)(&v41, a1, a4, a2, v12, a3);
  if ((v41 & 0x10000) != 0)
  {
    v40 = v6;
    v41 = static String._createEmpty(withInitialCapacity:)(80);
    v42 = v15;
    TypeName = swift_getTypeName(a2, 0);
    if ((v17 & 0x8000000000000000) == 0)
    {
      v18 = TypeName;
      v19 = v17;
      v20 = validateUTF8(_:)(TypeName, v17);
      v24 = v20 < 0 ? repairUTF8(_:firstKnownBrokenRange:)(v18, v19, v21, v22) : specialized static String._uncheckedFromUTF8(_:isASCII:)(v18, v19, v20 & 1, v23);
      v26 = v25;
      String.write(_:)(*&v24);
      v26;
      v27._object = 0x800000018066D440;
      v27._countAndFlagsBits = 0xD00000000000001ELL;
      String.write(_:)(v27);
      v28 = swift_getTypeName(v40, 0);
      if ((v29 & 0x8000000000000000) == 0)
      {
        v30 = v28;
        v31 = v29;
        v32 = validateUTF8(_:)(v28, v29);
        if (v32 < 0)
        {
          v36 = repairUTF8(_:firstKnownBrokenRange:)(v30, v31, v33, v34);
        }

        else
        {
          v36 = specialized static String._uncheckedFromUTF8(_:isASCII:)(v30, v31, v32 & 1, v35);
        }

        v38 = v37;
        String.write(_:)(*&v36);
        v38;
        v39._countAndFlagsBits = 0xD00000000000002ELL;
        v39._object = 0x800000018066D460;
        String.write(_:)(v39);
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v41, v42, "Swift/Integers.swift", 0x14uLL, 2, 0xAB4uLL);
      }
    }

    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v13 = v41;
  result = (*(*(a2 - 1) + 8))(a1, a2);
  *a6 = v13;
  return result;
}

uint64_t protocol witness for BinaryInteger.init<A>(_:) in conformance Int16@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _WORD *a6@<X8>)
{
  v37 = a4;
  v38 = a5;
  v40 = a6;
  v9 = *(*(a3 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v9, a2, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v11 = v10;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v36 - v13;
  v41 = *(a2 - 1);
  MEMORY[0x1EEE9AC00](v12);
  v39 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = *(a3 + 64);
  v16 = v42(a2, a3);
  v17 = *(a3 + 128);
  if ((v16 & 1) != 0 && v17(a2, a3) >= 17)
  {
    v36 = v9;
    v43 = 0x8000;
    v18 = v42;
    if (v42(a2, a3))
    {
      if (v17(a2, a3) < 16)
      {
LABEL_13:
        (*(a3 + 120))(a2, a3);
        goto LABEL_14;
      }
    }

    else
    {
      v19 = v18(a2, a3);
      v20 = v17(a2, a3);
      if ((v19 & 1) == 0)
      {
        if (v20 >= 16)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }

      if (v20 <= 16)
      {
        v23 = v36;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v36, a2, v11, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v11, AssociatedConformanceWitness);
        v25 = v39;
        (*(v23 + 3))(v14, a2, v23);
        v26 = (*(*(*(a3 + 32) + 8) + 16))(a1, v25, a2);
        (*(v41 + 8))(v25, a2);
        if (v26)
        {
          goto LABEL_18;
        }

        goto LABEL_13;
      }
    }

    v21 = v39;
    (*(a3 + 96))(&v43, v37, v38, a2, a3);
    v22 = (*(*(*(a3 + 32) + 8) + 16))(a1, v21, a2);
    (*(v41 + 8))(v21, a2);
    if (v22)
    {
      goto LABEL_18;
    }
  }

LABEL_14:
  v27 = v17(a2, a3);
  v29 = v41;
  v28 = v42;
  if (v27 > 16 || v17(a2, a3) == 16 && (v28(a2, a3) & 1) == 0)
  {
    v44 = 0x7FFF;
    v30 = v28(a2, a3);
    v31 = v17(a2, a3);
    if (v30)
    {
      if (v31 > 16)
      {
        goto LABEL_17;
      }
    }

    else if (v31 > 15)
    {
LABEL_17:
      v32 = v39;
      (*(a3 + 96))(&v44, v37, v38, a2, a3);
      v33 = (*(*(*(a3 + 32) + 8) + 16))(v32, a1, a2);
      (*(v29 + 8))(v32, a2);
      if ((v33 & 1) == 0)
      {
        goto LABEL_24;
      }

LABEL_18:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    (*(a3 + 120))(a2, a3);
  }

LABEL_24:
  v34 = (*(a3 + 120))(a2, a3);
  result = (*(v29 + 8))(a1, a2);
  *v40 = v34;
  return result;
}

uint64_t protocol witness for BinaryInteger.init<A>(truncatingIfNeeded:) in conformance UInt16@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _WORD *a4@<X8>)
{
  v7 = (*(a3 + 120))(a2, a3);
  result = (*(*(a2 - 8) + 8))(a1, a2);
  *a4 = v7;
  return result;
}

unsigned __int16 *protocol witness for static BinaryInteger./ infix(_:_:) in conformance Int16@<X0>(unsigned __int16 *result@<X0>, _WORD *a2@<X1>, _WORD *a3@<X8>)
{
  v3 = *a2;
  if (!*a2 || ((v4 = *result, v4 == 0x8000) ? (v5 = v3 == 0xFFFF) : (v5 = 0), v5))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *a3 = v4 / v3;
  return result;
}

uint64_t static Int16./ infix(_:_:)(unsigned __int16 a1, __int16 a2)
{
  if (!a2 || a1 == 0x8000 && a2 == -1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return (a1 / a2);
}

_WORD *protocol witness for static BinaryInteger./= infix(_:_:) in conformance Int16(_WORD *result, _WORD *a2)
{
  v2 = *a2;
  if (!*a2 || (v3 = *result, v2 == 0xFFFF) && v3 == 0x8000)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *result = v3 / v2;
  return result;
}

unsigned __int16 *protocol witness for static BinaryInteger.% infix(_:_:) in conformance Int16@<X0>(unsigned __int16 *result@<X0>, _WORD *a2@<X1>, _WORD *a3@<X8>)
{
  v3 = *a2;
  if (!*a2 || ((v4 = *result, v4 == 0x8000) ? (v5 = v3 == 0xFFFF) : (v5 = 0), v5))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *a3 = v4 % v3;
  return result;
}

uint64_t static Int16.% infix(_:_:)(unsigned __int16 a1, __int16 a2)
{
  if (!a2 || a1 == 0x8000 && a2 == -1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return (a1 % a2);
}

_WORD *protocol witness for static BinaryInteger.%= infix(_:_:) in conformance Int16(_WORD *result, _WORD *a2)
{
  v2 = *a2;
  if (!*a2 || (v3 = *result, v2 == 0xFFFF) && v3 == 0x8000)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *result = v3 % v2;
  return result;
}

uint64_t protocol witness for static BinaryInteger.>> infix<A>(_:_:) in conformance Int16@<X0>(unsigned __int16 *a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, _WORD *a5@<X8>)
{
  v103 = a5;
  v98 = *(*(a4 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v98, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v97 = v9;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v96 = &v95 - v11;
  v12 = *(a3 - 1);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v101 = &v95 - v16;
  v17 = *a1;
  v19 = a4 + 64;
  v18 = *(a4 + 64);
  if ((v18(a3, a4) & 1) == 0)
  {
    v33 = v18(a3, a4);
    v102 = *(a4 + 128);
    v34 = v102(a3, a4);
    if (v33)
    {
      v95 = a2;
      v100 = v18;
      if (v34 <= 64)
      {
        v64 = v97;
        v63 = v98;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v98, a3, v97, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        v66 = v96;
        (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v64, AssociatedConformanceWitness);
        v67 = v101;
        (v63[3])(v66, a3, v63);
        a2 = v95;
        LOBYTE(v63) = (*(*(*(a4 + 32) + 8) + 16))(v95, v67, a3);
        result = (*(v12 + 8))(v67, a3);
        if (v63)
        {
          goto LABEL_26;
        }

        result = (*(a4 + 120))(a3, a4);
        v18 = v100;
        if (result < -16)
        {
          goto LABEL_26;
        }

        goto LABEL_11;
      }

      v104 = -16;
      v37 = *(a4 + 96);
      v38 = lazy protocol witness table accessor for type Int and conformance Int(v34, v35, v36);
      v99 = a4 + 64;
      v39 = v101;
      v37(&v104, &type metadata for Int, v38, a3, a4);
      a2 = v95;
      v40 = (*(*(*(a4 + 32) + 8) + 16))(v95, v39, a3);
      v41 = v39;
      v19 = v99;
      result = (*(v12 + 8))(v41, a3);
      v18 = v100;
      if ((v40 & 1) == 0)
      {
        goto LABEL_11;
      }

LABEL_26:
      LOWORD(v55) = 0;
      goto LABEL_48;
    }

    if (v34 >= 64)
    {
      goto LABEL_11;
    }

LABEL_10:
    result = (*(a4 + 120))(a3, a4);
    if (result >= -16)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

  v102 = *(a4 + 128);
  v20 = v102(a3, a4);
  if (v20 < 64)
  {
    goto LABEL_10;
  }

  v104 = -16;
  v100 = v18;
  v23 = v15;
  v24 = v17;
  v25 = v12;
  v26 = a2;
  v27 = *(a4 + 96);
  v28 = lazy protocol witness table accessor for type Int and conformance Int(v20, v21, v22);
  v99 = a4 + 64;
  v29 = v101;
  v27(&v104, &type metadata for Int, v28, a3, a4);
  a2 = v26;
  v12 = v25;
  v17 = v24;
  v15 = v23;
  v18 = v100;
  v30 = (*(*(*(a4 + 32) + 8) + 16))(a2, v29, a3);
  v31 = v29;
  v19 = v99;
  result = (*(v12 + 8))(v31, a3);
  if (v30)
  {
    goto LABEL_26;
  }

LABEL_11:
  v42 = v18(a3, a4);
  v95 = a4 + 128;
  v43 = v102(a3, a4);
  if (v42)
  {
    if (v43 > 64)
    {
      goto LABEL_13;
    }

LABEL_16:
    result = (*(a4 + 120))(a3, a4);
    if (result > 16)
    {
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  if (v43 < 64)
  {
    goto LABEL_16;
  }

LABEL_13:
  v104 = 16;
  v100 = v18;
  v46 = v15;
  v47 = v17;
  v48 = v12;
  v49 = a2;
  v50 = *(a4 + 96);
  v51 = lazy protocol witness table accessor for type Int and conformance Int(v43, v44, v45);
  v99 = v19;
  v52 = v101;
  v50(&v104, &type metadata for Int, v51, a3, a4);
  a2 = v49;
  v12 = v48;
  v17 = v47;
  v15 = v46;
  v18 = v100;
  v53 = (*(*(*(a4 + 32) + 8) + 16))(v52, a2, a3);
  v54 = v52;
  v19 = v99;
  result = (*(v12 + 8))(v54, a3);
  if (v53)
  {
    goto LABEL_17;
  }

LABEL_18:
  (*(v12 + 16))(v15, a2, a3);
  if ((v18(a3, a4) & 1) == 0 || v102(a3, a4) < 65)
  {
    goto LABEL_35;
  }

  if ((v18(a3, a4) & 1) == 0)
  {
    v68 = v18(a3, a4);
    v69 = v102(a3, a4);
    if ((v68 & 1) == 0)
    {
      if (v69 >= 64)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }

    v100 = v18;
    if (v69 <= 64)
    {
      v76 = v97;
      v77 = v98;
      v78 = swift_getAssociatedConformanceWitness(v98, a3, v97, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v79 = v96;
      (*(v78 + 8))(&qword_18071E0A8, 256, v76, v78);
      v80 = v77;
      v81 = v77[3];
      v82 = v101;
      (v81)(v79, a3, v80);
      LOBYTE(v79) = (*(*(*(a4 + 32) + 8) + 16))(v15, v82, a3);
      (*(v12 + 8))(v82, a3);
      v18 = v100;
      if ((v79 & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v104 = 0x8000000000000000;
      v72 = *(a4 + 96);
      v73 = lazy protocol witness table accessor for type Int and conformance Int(v69, v70, v71);
      v99 = v19;
      v74 = v101;
      v72(&v104, &type metadata for Int, v73, a3, a4);
      v75 = (*(*(*(a4 + 32) + 8) + 16))(v15, v74, a3);
      (*(v12 + 8))(v74, a3);
      v18 = v100;
      if ((v75 & 1) == 0)
      {
        goto LABEL_35;
      }
    }

LABEL_39:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v56 = v102(a3, a4);
  if (v56 < 64)
  {
LABEL_34:
    (*(a4 + 120))(a3, a4);
    goto LABEL_35;
  }

  v104 = 0x8000000000000000;
  v100 = v18;
  v59 = *(a4 + 96);
  v60 = lazy protocol witness table accessor for type Int and conformance Int(v56, v57, v58);
  v99 = v19;
  v61 = v101;
  v59(&v104, &type metadata for Int, v60, a3, a4);
  v18 = v100;
  v62 = (*(*(*(a4 + 32) + 8) + 16))(v15, v61, a3);
  (*(v12 + 8))(v61, a3);
  if (v62)
  {
    goto LABEL_39;
  }

LABEL_35:
  v83 = v102;
  if (v102(a3, a4) <= 64 && (v83(a3, a4) != 64 || (v18(a3, a4) & 1) != 0))
  {
    goto LABEL_45;
  }

  v84 = v18(a3, a4);
  v85 = v83;
  v86 = v84;
  v87 = v85(a3, a4);
  if (v86)
  {
    if (v87 > 64)
    {
      goto LABEL_38;
    }
  }

  else if (v87 >= 64)
  {
LABEL_38:
    v104 = 0x7FFFFFFFFFFFFFFFLL;
    v90 = *(a4 + 96);
    v91 = lazy protocol witness table accessor for type Int and conformance Int(v87, v88, v89);
    v92 = v101;
    v90(&v104, &type metadata for Int, v91, a3, a4);
    v93 = (*(*(*(a4 + 32) + 8) + 16))(v92, v15, a3);
    (*(v12 + 8))(v92, a3);
    if (v93)
    {
      goto LABEL_39;
    }

    goto LABEL_45;
  }

  (*(a4 + 120))(a3, a4);
LABEL_45:
  v94 = (*(a4 + 120))(a3, a4);
  result = (*(v12 + 8))(v15, a3);
  if ((v94 & 0x8000000000000000) != 0)
  {
    if (v94 > 0xFFFFFFFFFFFFFFF0)
    {
      v55 = v17 << -v94;
      goto LABEL_48;
    }

    goto LABEL_26;
  }

  if (v94 < 0x10)
  {
    v55 = v17 >> v94;
    goto LABEL_48;
  }

LABEL_17:
  v55 = v17 >> 15;
LABEL_48:
  *v103 = v55;
  return result;
}

uint64_t protocol witness for static BinaryInteger.>>= infix<A>(_:_:) in conformance Int16(unsigned __int16 *a1, uint64_t a2, const char *a3, uint64_t a4)
{
  v106 = *(*(a4 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v106, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v105 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v104 = v102 - v10;
  v11 = *(a3 - 1);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v108 = v102 - v15;
  v16 = (a4 + 64);
  v109 = *(a4 + 64);
  if ((v109(a3, a4) & 1) == 0)
  {
    v31 = v109(a3, a4);
    v17 = *(a4 + 128);
    v32 = v17(a3, a4);
    if (v31)
    {
      v107 = a2;
      v103 = v17;
      if (v32 <= 64)
      {
        v70 = v105;
        v69 = v106;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v106, a3, v105, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        v72 = v104;
        (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v70, AssociatedConformanceWitness);
        v73 = v108;
        (v69[3])(v72, a3, v69);
        a2 = v107;
        LOBYTE(v69) = (*(*(*(a4 + 32) + 8) + 16))(v107, v73, a3);
        result = (*(v11 + 8))(v73, a3);
        if (v69)
        {
          goto LABEL_25;
        }

        result = (*(a4 + 120))(a3, a4);
        v17 = v103;
        if (result < -16)
        {
          goto LABEL_25;
        }

        goto LABEL_11;
      }

      v110 = -16;
      v35 = v14;
      v36 = v11;
      v37 = a1;
      v38 = *(a4 + 96);
      v39 = lazy protocol witness table accessor for type Int and conformance Int(v32, v33, v34);
      v40 = v108;
      v38(&v110, &type metadata for Int, v39, a3, a4);
      a1 = v37;
      v11 = v36;
      v14 = v35;
      v41 = v107;
      v42 = (*(*(*(a4 + 32) + 8) + 16))(v107, v40, a3);
      v43 = v40;
      v16 = (a4 + 64);
      a2 = v41;
      result = (*(v11 + 8))(v43, a3);
      v17 = v103;
      if ((v42 & 1) == 0)
      {
        goto LABEL_11;
      }

LABEL_25:
      LOWORD(v68) = 0;
      goto LABEL_47;
    }

    if (v32 >= 64)
    {
      goto LABEL_11;
    }

LABEL_10:
    result = (*(a4 + 120))(a3, a4);
    if (result >= -16)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

  v17 = *(a4 + 128);
  v18 = v17(a3, a4);
  if (v18 < 64)
  {
    goto LABEL_10;
  }

  v110 = -16;
  v107 = a2;
  v21 = v17;
  v22 = v14;
  v23 = v11;
  v24 = a1;
  v25 = *(a4 + 96);
  v26 = lazy protocol witness table accessor for type Int and conformance Int(v18, v19, v20);
  v103 = (a4 + 64);
  v27 = v108;
  v25(&v110, &type metadata for Int, v26, a3, a4);
  a1 = v24;
  v11 = v23;
  v14 = v22;
  v17 = v21;
  a2 = v107;
  v28 = (*(*(*(a4 + 32) + 8) + 16))(v107, v27, a3);
  v29 = v27;
  v16 = v103;
  result = (*(v11 + 8))(v29, a3);
  if (v28)
  {
    goto LABEL_25;
  }

LABEL_11:
  v44 = v109(a3, a4);
  v102[1] = a4 + 128;
  v45 = v17(a3, a4);
  if (v44)
  {
    if (v45 > 64)
    {
      goto LABEL_13;
    }

LABEL_21:
    result = (*(a4 + 120))(a3, a4);
    if (result <= 16)
    {
      goto LABEL_14;
    }

LABEL_22:
    v68 = *a1 >> 15;
    goto LABEL_47;
  }

  if (v45 < 64)
  {
    goto LABEL_21;
  }

LABEL_13:
  v110 = 16;
  v107 = a2;
  v48 = v17;
  v49 = v14;
  v50 = v11;
  v51 = a1;
  v52 = *(a4 + 96);
  v53 = lazy protocol witness table accessor for type Int and conformance Int(v45, v46, v47);
  v103 = v16;
  v54 = v108;
  v52(&v110, &type metadata for Int, v53, a3, a4);
  a1 = v51;
  v11 = v50;
  v14 = v49;
  v17 = v48;
  a2 = v107;
  v55 = (*(*(*(a4 + 32) + 8) + 16))(v54, v107, a3);
  v56 = v54;
  v16 = v103;
  result = (*(v11 + 8))(v56, a3);
  if (v55)
  {
    goto LABEL_22;
  }

LABEL_14:
  (*(v11 + 16))(v14, a2, a3);
  if ((v109(a3, a4) & 1) == 0 || v17(a3, a4) < 65)
  {
    goto LABEL_34;
  }

  if ((v109(a3, a4) & 1) == 0)
  {
    v74 = v109(a3, a4);
    v75 = v17(a3, a4);
    if ((v74 & 1) == 0)
    {
      if (v75 >= 64)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }

    v103 = v17;
    if (v75 <= 64)
    {
      v86 = v105;
      v85 = v106;
      v87 = swift_getAssociatedConformanceWitness(v106, a3, v105, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v88 = v104;
      (*(v87 + 8))(&qword_18071E0A8, 256, v86, v87);
      v89 = v108;
      (v85[3])(v88, a3, v85);
      LOBYTE(v85) = (*(*(*(a4 + 32) + 8) + 16))(v14, v89, a3);
      (*(v11 + 8))(v89, a3);
      v17 = v103;
      if ((v85 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v110 = 0x8000000000000000;
      v78 = v14;
      v79 = v11;
      v80 = a1;
      v81 = *(a4 + 96);
      v82 = lazy protocol witness table accessor for type Int and conformance Int(v75, v76, v77);
      v83 = v108;
      v81(&v110, &type metadata for Int, v82, a3, a4);
      a1 = v80;
      v11 = v79;
      v14 = v78;
      v84 = (*(*(*(a4 + 32) + 8) + 16))(v78, v83, a3);
      (*(v11 + 8))(v83, a3);
      v17 = v103;
      if ((v84 & 1) == 0)
      {
        goto LABEL_34;
      }
    }

LABEL_38:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v57 = v17(a3, a4);
  if (v57 < 64)
  {
LABEL_33:
    (*(a4 + 120))(a3, a4);
    goto LABEL_34;
  }

  v110 = 0x8000000000000000;
  v60 = v17;
  v61 = v14;
  v62 = v11;
  v63 = a1;
  v64 = *(a4 + 96);
  v65 = lazy protocol witness table accessor for type Int and conformance Int(v57, v58, v59);
  v103 = v16;
  v66 = v108;
  v64(&v110, &type metadata for Int, v65, a3, a4);
  a1 = v63;
  v11 = v62;
  v14 = v61;
  v17 = v60;
  v67 = (*(*(*(a4 + 32) + 8) + 16))(v14, v66, a3);
  (*(v11 + 8))(v66, a3);
  if (v67)
  {
    goto LABEL_38;
  }

LABEL_34:
  if (v17(a3, a4) <= 64 && (v17(a3, a4) != 64 || (v109(a3, a4) & 1) != 0))
  {
    goto LABEL_44;
  }

  v90 = v109(a3, a4);
  v91 = v17(a3, a4);
  if (v90)
  {
    if (v91 > 64)
    {
      goto LABEL_37;
    }
  }

  else if (v91 >= 64)
  {
LABEL_37:
    v110 = 0x7FFFFFFFFFFFFFFFLL;
    v94 = v14;
    v95 = a1;
    v96 = *(a4 + 96);
    v97 = lazy protocol witness table accessor for type Int and conformance Int(v91, v92, v93);
    v98 = v108;
    v96(&v110, &type metadata for Int, v97, a3, a4);
    a1 = v95;
    v14 = v94;
    v99 = (*(*(*(a4 + 32) + 8) + 16))(v98, v94, a3);
    (*(v11 + 8))(v98, a3);
    if (v99)
    {
      goto LABEL_38;
    }

    goto LABEL_44;
  }

  (*(a4 + 120))(a3, a4);
LABEL_44:
  v100 = (*(a4 + 120))(a3, a4);
  result = (*(v11 + 8))(v14, a3);
  v101 = *a1;
  if ((v100 & 0x8000000000000000) != 0)
  {
    if (v100 > 0xFFFFFFFFFFFFFFF0)
    {
      v68 = v101 << -v100;
      goto LABEL_47;
    }

    goto LABEL_25;
  }

  if (v100 >= 0x10)
  {
    v68 = v101 >> 15;
  }

  else
  {
    v68 = v101 >> v100;
  }

LABEL_47:
  *a1 = v68;
  return result;
}

uint64_t protocol witness for static BinaryInteger.<< infix<A>(_:_:) in conformance Int16@<X0>(unsigned __int16 *a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, _WORD *a5@<X8>)
{
  v104 = *(*(a4 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v104, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v103 = v10;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v102 = &v101 - v12;
  v13 = *(a3 - 1);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v101 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v108 = &v101 - v17;
  v107 = *a1;
  v19 = a4 + 64;
  v18 = *(a4 + 64);
  if (v18(a3, a4))
  {
    v109 = *(a4 + 128);
    v20 = v109(a3, a4);
    if (v20 >= 64)
    {
      v110 = -16;
      v106 = v18;
      v34 = v16;
      v35 = v13;
      v36 = a2;
      v37 = a5;
      v38 = *(a4 + 96);
      v39 = lazy protocol witness table accessor for type Int and conformance Int(v20, v21, v22);
      v105 = a4 + 64;
      v40 = v108;
      v38(&v110, &type metadata for Int, v39, a3, a4);
      a5 = v37;
      a2 = v36;
      v13 = v35;
      v16 = v34;
      v18 = v106;
      v41 = (*(*(*(a4 + 32) + 8) + 16))(a2, v40, a3);
      v42 = v40;
      v19 = v105;
      result = (*(v13 + 8))(v42, a3);
      if (v41)
      {
        goto LABEL_16;
      }
    }

    else
    {
      result = (*(a4 + 120))(a3, a4);
      if (result <= -17)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
    v24 = v18(a3, a4);
    v109 = *(a4 + 128);
    v25 = v109(a3, a4);
    if (v24)
    {
      v101 = a2;
      v106 = v18;
      if (v25 <= 64)
      {
        v44 = v103;
        v43 = v104;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v104, a3, v103, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        v46 = v102;
        (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v44, AssociatedConformanceWitness);
        v47 = v108;
        (v43[3])(v46, a3, v43);
        a2 = v101;
        LOBYTE(v43) = (*(*(*(a4 + 32) + 8) + 16))(v101, v47, a3);
        result = (*(v13 + 8))(v47, a3);
        if (v43)
        {
          goto LABEL_16;
        }

        result = (*(a4 + 120))(a3, a4);
        v18 = v106;
        if (result < -16)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v110 = -16;
        v28 = a5;
        v29 = *(a4 + 96);
        v30 = lazy protocol witness table accessor for type Int and conformance Int(v25, v26, v27);
        v105 = a4 + 64;
        v31 = v108;
        v29(&v110, &type metadata for Int, v30, a3, a4);
        a5 = v28;
        a2 = v101;
        v32 = (*(*(*(a4 + 32) + 8) + 16))(v101, v31, a3);
        v33 = v31;
        v19 = v105;
        result = (*(v13 + 8))(v33, a3);
        v18 = v106;
        if (v32)
        {
          goto LABEL_16;
        }
      }
    }

    else if (v25 < 64)
    {
      result = (*(a4 + 120))(a3, a4);
      if (result < -16)
      {
        goto LABEL_16;
      }
    }
  }

  v49 = v18(a3, a4);
  v101 = a4 + 128;
  v50 = v109(a3, a4);
  if (v49)
  {
    if (v50 > 64)
    {
      goto LABEL_19;
    }
  }

  else if (v50 > 64)
  {
LABEL_19:
    v110 = 16;
    v106 = v18;
    v53 = v16;
    v54 = v13;
    v55 = a2;
    v56 = a5;
    v57 = *(a4 + 96);
    v58 = lazy protocol witness table accessor for type Int and conformance Int(v50, v51, v52);
    v105 = v19;
    v59 = v108;
    v57(&v110, &type metadata for Int, v58, a3, a4);
    a5 = v56;
    a2 = v55;
    v13 = v54;
    v16 = v53;
    v18 = v106;
    v60 = (*(*(*(a4 + 32) + 8) + 16))(v59, a2, a3);
    v61 = v59;
    v19 = v105;
    result = (*(v13 + 8))(v61, a3);
    if (v60)
    {
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  result = (*(a4 + 120))(a3, a4);
  if (result > 16)
  {
LABEL_23:
    LOWORD(v48) = 0;
    goto LABEL_51;
  }

LABEL_24:
  (*(v13 + 16))(v16, a2, a3);
  if ((v18(a3, a4) & 1) == 0 || v109(a3, a4) < 65)
  {
    goto LABEL_38;
  }

  if ((v18(a3, a4) & 1) == 0)
  {
    v70 = v18(a3, a4);
    v71 = v109(a3, a4);
    if ((v70 & 1) == 0)
    {
      if (v71 >= 64)
      {
        goto LABEL_38;
      }

      goto LABEL_37;
    }

    v106 = v18;
    if (v71 <= 64)
    {
      v79 = v103;
      v80 = v104;
      v81 = swift_getAssociatedConformanceWitness(v104, a3, v103, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v82 = v102;
      (*(v81 + 8))(&qword_18071E0A8, 256, v79, v81);
      v83 = v80;
      v84 = v80[3];
      v85 = v108;
      (v84)(v82, a3, v83);
      LOBYTE(v82) = (*(*(*(a4 + 32) + 8) + 16))(v16, v85, a3);
      (*(v13 + 8))(v85, a3);
      v18 = v106;
      if ((v82 & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v110 = 0x8000000000000000;
      v74 = a5;
      v75 = *(a4 + 96);
      v76 = lazy protocol witness table accessor for type Int and conformance Int(v71, v72, v73);
      v105 = v19;
      v77 = v108;
      v75(&v110, &type metadata for Int, v76, a3, a4);
      a5 = v74;
      v78 = (*(*(*(a4 + 32) + 8) + 16))(v16, v77, a3);
      (*(v13 + 8))(v77, a3);
      v18 = v106;
      if ((v78 & 1) == 0)
      {
        goto LABEL_38;
      }
    }

LABEL_42:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v62 = v109(a3, a4);
  if (v62 < 64)
  {
LABEL_37:
    (*(a4 + 120))(a3, a4);
    goto LABEL_38;
  }

  v110 = 0x8000000000000000;
  v106 = v18;
  v65 = a5;
  v66 = *(a4 + 96);
  v67 = lazy protocol witness table accessor for type Int and conformance Int(v62, v63, v64);
  v105 = v19;
  v68 = v108;
  v66(&v110, &type metadata for Int, v67, a3, a4);
  a5 = v65;
  v18 = v106;
  v69 = (*(*(*(a4 + 32) + 8) + 16))(v16, v68, a3);
  (*(v13 + 8))(v68, a3);
  if (v69)
  {
    goto LABEL_42;
  }

LABEL_38:
  v86 = v109;
  if (v109(a3, a4) <= 64 && (v86(a3, a4) != 64 || (v18(a3, a4) & 1) != 0))
  {
    goto LABEL_48;
  }

  v87 = v18(a3, a4);
  v88 = v86;
  v89 = v87;
  v90 = v88(a3, a4);
  if (v89)
  {
    if (v90 > 64)
    {
      goto LABEL_41;
    }
  }

  else if (v90 > 64)
  {
LABEL_41:
    v110 = 0x7FFFFFFFFFFFFFFFLL;
    v93 = v16;
    v94 = v13;
    v95 = a5;
    v96 = *(a4 + 96);
    v97 = lazy protocol witness table accessor for type Int and conformance Int(v90, v91, v92);
    v98 = v108;
    v96(&v110, &type metadata for Int, v97, a3, a4);
    a5 = v95;
    v13 = v94;
    v16 = v93;
    v99 = (*(*(*(a4 + 32) + 8) + 16))(v98, v93, a3);
    (*(v13 + 8))(v98, a3);
    if (v99)
    {
      goto LABEL_42;
    }

    goto LABEL_48;
  }

  (*(a4 + 120))(a3, a4);
LABEL_48:
  v100 = (*(a4 + 120))(a3, a4);
  result = (*(v13 + 8))(v16, a3);
  if ((v100 & 0x8000000000000000) == 0)
  {
    if (v100 < 0x10)
    {
      v48 = v107 << v100;
      goto LABEL_51;
    }

    goto LABEL_23;
  }

  if (v100 > 0xFFFFFFFFFFFFFFF0)
  {
    v48 = v107 >> -v100;
    goto LABEL_51;
  }

LABEL_16:
  v48 = v107 >> 15;
LABEL_51:
  *a5 = v48;
  return result;
}

uint64_t protocol witness for static BinaryInteger.<<= infix<A>(_:_:) in conformance Int16(unsigned __int16 *a1, uint64_t a2, const char *a3, uint64_t a4)
{
  v106 = *(*(a4 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v106, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v105 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v104 = v102 - v10;
  v11 = *(a3 - 1);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v108 = v102 - v15;
  v16 = (a4 + 64);
  v109 = *(a4 + 64);
  if (v109(a3, a4))
  {
    v17 = *(a4 + 128);
    v18 = v17(a3, a4);
    if (v18 >= 64)
    {
      v110 = -16;
      v107 = a2;
      v21 = v17;
      v22 = v14;
      v23 = v11;
      v24 = a1;
      v25 = *(a4 + 96);
      v26 = lazy protocol witness table accessor for type Int and conformance Int(v18, v19, v20);
      v103 = (a4 + 64);
      v27 = v108;
      v25(&v110, &type metadata for Int, v26, a3, a4);
      a1 = v24;
      v11 = v23;
      v14 = v22;
      v17 = v21;
      a2 = v107;
      v28 = (*(*(*(a4 + 32) + 8) + 16))(v107, v27, a3);
      v29 = v27;
      v16 = v103;
      result = (*(v11 + 8))(v29, a3);
      if ((v28 & 1) == 0)
      {
        goto LABEL_14;
      }

LABEL_13:
      v49 = *a1 >> 15;
      goto LABEL_48;
    }

LABEL_12:
    result = (*(a4 + 120))(a3, a4);
    if (result >= -16)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v31 = v109(a3, a4);
  v17 = *(a4 + 128);
  v32 = v17(a3, a4);
  if (v31)
  {
    v107 = a2;
    v103 = v17;
    if (v32 <= 64)
    {
      v45 = v105;
      v44 = v106;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v106, a3, v105, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v47 = v104;
      (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v45, AssociatedConformanceWitness);
      v48 = v108;
      (v44[3])(v47, a3, v44);
      a2 = v107;
      LOBYTE(v44) = (*(*(*(a4 + 32) + 8) + 16))(v107, v48, a3);
      result = (*(v11 + 8))(v48, a3);
      v17 = v103;
      if (v44)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    v110 = -16;
    v35 = v14;
    v36 = v11;
    v37 = a1;
    v38 = *(a4 + 96);
    v39 = lazy protocol witness table accessor for type Int and conformance Int(v32, v33, v34);
    v40 = v108;
    v38(&v110, &type metadata for Int, v39, a3, a4);
    a1 = v37;
    v11 = v36;
    v14 = v35;
    v41 = v107;
    v42 = (*(*(*(a4 + 32) + 8) + 16))(v107, v40, a3);
    v43 = v40;
    v16 = (a4 + 64);
    a2 = v41;
    result = (*(v11 + 8))(v43, a3);
    v17 = v103;
    if (v42)
    {
      goto LABEL_13;
    }
  }

  else if (v32 < 64)
  {
    goto LABEL_12;
  }

LABEL_14:
  v50 = v109(a3, a4);
  v102[1] = a4 + 128;
  v51 = v17(a3, a4);
  if (v50)
  {
    if (v51 > 64)
    {
      goto LABEL_16;
    }
  }

  else if (v51 >= 64)
  {
LABEL_16:
    v110 = 16;
    v107 = a2;
    v54 = v17;
    v55 = v14;
    v56 = v11;
    v57 = a1;
    v58 = *(a4 + 96);
    v59 = lazy protocol witness table accessor for type Int and conformance Int(v51, v52, v53);
    v103 = v16;
    v60 = v108;
    v58(&v110, &type metadata for Int, v59, a3, a4);
    a1 = v57;
    v11 = v56;
    v14 = v55;
    v17 = v54;
    a2 = v107;
    v61 = (*(*(*(a4 + 32) + 8) + 16))(v60, v107, a3);
    v62 = v60;
    v16 = v103;
    result = (*(v11 + 8))(v62, a3);
    if (v61)
    {
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  result = (*(a4 + 120))(a3, a4);
  if (result > 16)
  {
LABEL_20:
    LOWORD(v49) = 0;
    goto LABEL_48;
  }

LABEL_21:
  (*(v11 + 16))(v14, a2, a3);
  if ((v109(a3, a4) & 1) == 0 || v17(a3, a4) < 65)
  {
    goto LABEL_35;
  }

  if ((v109(a3, a4) & 1) == 0)
  {
    v74 = v109(a3, a4);
    v75 = v17(a3, a4);
    if ((v74 & 1) == 0)
    {
      if (v75 >= 64)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }

    v103 = v17;
    if (v75 <= 64)
    {
      v86 = v105;
      v85 = v106;
      v87 = swift_getAssociatedConformanceWitness(v106, a3, v105, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v88 = v104;
      (*(v87 + 8))(&qword_18071E0A8, 256, v86, v87);
      v89 = v108;
      (v85[3])(v88, a3, v85);
      LOBYTE(v85) = (*(*(*(a4 + 32) + 8) + 16))(v14, v89, a3);
      (*(v11 + 8))(v89, a3);
      v17 = v103;
      if ((v85 & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v110 = 0x8000000000000000;
      v78 = v14;
      v79 = v11;
      v80 = a1;
      v81 = *(a4 + 96);
      v82 = lazy protocol witness table accessor for type Int and conformance Int(v75, v76, v77);
      v83 = v108;
      v81(&v110, &type metadata for Int, v82, a3, a4);
      a1 = v80;
      v11 = v79;
      v14 = v78;
      v84 = (*(*(*(a4 + 32) + 8) + 16))(v78, v83, a3);
      (*(v11 + 8))(v83, a3);
      v17 = v103;
      if ((v84 & 1) == 0)
      {
        goto LABEL_35;
      }
    }

LABEL_39:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v63 = v17(a3, a4);
  if (v63 < 64)
  {
LABEL_34:
    (*(a4 + 120))(a3, a4);
    goto LABEL_35;
  }

  v110 = 0x8000000000000000;
  v66 = v17;
  v67 = v14;
  v68 = v11;
  v69 = a1;
  v70 = *(a4 + 96);
  v71 = lazy protocol witness table accessor for type Int and conformance Int(v63, v64, v65);
  v103 = v16;
  v72 = v108;
  v70(&v110, &type metadata for Int, v71, a3, a4);
  a1 = v69;
  v11 = v68;
  v14 = v67;
  v17 = v66;
  v73 = (*(*(*(a4 + 32) + 8) + 16))(v14, v72, a3);
  (*(v11 + 8))(v72, a3);
  if (v73)
  {
    goto LABEL_39;
  }

LABEL_35:
  if (v17(a3, a4) <= 64 && (v17(a3, a4) != 64 || (v109(a3, a4) & 1) != 0))
  {
    goto LABEL_45;
  }

  v90 = v109(a3, a4);
  v91 = v17(a3, a4);
  if (v90)
  {
    if (v91 > 64)
    {
      goto LABEL_38;
    }
  }

  else if (v91 >= 64)
  {
LABEL_38:
    v110 = 0x7FFFFFFFFFFFFFFFLL;
    v94 = v14;
    v95 = a1;
    v96 = *(a4 + 96);
    v97 = lazy protocol witness table accessor for type Int and conformance Int(v91, v92, v93);
    v98 = v108;
    v96(&v110, &type metadata for Int, v97, a3, a4);
    a1 = v95;
    v14 = v94;
    v99 = (*(*(*(a4 + 32) + 8) + 16))(v98, v94, a3);
    (*(v11 + 8))(v98, a3);
    if (v99)
    {
      goto LABEL_39;
    }

    goto LABEL_45;
  }

  (*(a4 + 120))(a3, a4);
LABEL_45:
  v100 = (*(a4 + 120))(a3, a4);
  result = (*(v11 + 8))(v14, a3);
  v101 = *a1;
  if ((v100 & 0x8000000000000000) == 0)
  {
    if (v100 < 0x10)
    {
      v49 = v101 << v100;
      goto LABEL_48;
    }

    goto LABEL_20;
  }

  if (v100 <= 0xFFFFFFFFFFFFFFF0)
  {
    v49 = v101 >> 15;
  }

  else
  {
    v49 = v101 >> -v100;
  }

LABEL_48:
  *a1 = v49;
  return result;
}

uint64_t protocol witness for BinaryInteger.quotientAndRemainder(dividingBy:) in conformance Int16(_WORD *a1, _WORD *a2, __int16 *a3)
{
  result = specialized BinaryInteger.quotientAndRemainder(dividingBy:)(a2, *a3, *v3);
  *a1 = result;
  return result;
}

void protocol witness for LosslessStringConvertible.init(_:) in conformance Int16(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = HIBYTE(a2) & 0xF;
  v6 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {
    a2;
    v40 = 0;
    LOBYTE(v39) = 1;
    goto LABEL_47;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v43[0] = a1;
      v43[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      v16 = specialized closure #1 in FixedWidthInteger.init<A>(_:radix:)(v43, v5, 10);
      v22 = HIWORD(v16) & 1;
LABEL_42:
      v44 = v22;
      goto LABEL_43;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      if ((a1 & 0xFFFFFFFFFFFFLL) != 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v41 = _StringObject.sharedUTF8.getter(a1, a2);
      v6 = v42;
      v8 = v41;
      if (v6 > 0)
      {
LABEL_9:
        v9 = *v8;
        if (v9 == 43)
        {
          v23 = specialized Collection.subscript.getter(1, v8, v6);
          v27 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v23, v24, v25, v26);
          if (v28)
          {
            LOWORD(v16) = 0;
            if (v27)
            {
              while (1)
              {
                v29 = *v27 - 48;
                if (v29 >= 0xA)
                {
                  goto LABEL_41;
                }

                v30 = 10 * v16;
                v31 = (10 * v16);
                v16 = v31 + v29;
                v32 = v16 != (v31 + v29);
                if (v31 != v30 || v32)
                {
                  goto LABEL_41;
                }

                ++v27;
                if (!--v28)
                {
                  goto LABEL_40;
                }
              }
            }

            goto LABEL_40;
          }
        }

        else
        {
          if (v9 != 45)
          {
            LOWORD(v16) = 0;
            while (1)
            {
              v34 = *v8 - 48;
              if (v34 >= 0xA)
              {
                goto LABEL_41;
              }

              v35 = 10 * v16;
              v36 = (10 * v16);
              v16 = v36 + v34;
              v37 = v16 != (v36 + v34);
              if (v36 != v35 || v37)
              {
                goto LABEL_41;
              }

              ++v8;
              if (!--v6)
              {
                goto LABEL_40;
              }
            }
          }

          v10 = specialized Collection.subscript.getter(1, v8, v6);
          v14 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v10, v11, v12, v13);
          if (v15)
          {
            LOWORD(v16) = 0;
            if (v14)
            {
              while (1)
              {
                v17 = *v14 - 48;
                if (v17 >= 0xA)
                {
                  break;
                }

                v18 = 10 * v16;
                v19 = (10 * v16);
                v16 = v19 - v17;
                v20 = v16 != (v19 - v17);
                if (v19 != v18 || v20)
                {
                  break;
                }

                ++v14;
                if (!--v15)
                {
                  goto LABEL_40;
                }
              }

LABEL_41:
              LOWORD(v16) = 0;
              LOBYTE(v22) = 1;
              goto LABEL_42;
            }

LABEL_40:
            v44 = 0;
LABEL_43:
            LOBYTE(v39) = v44;
            a2;
            goto LABEL_44;
          }
        }

        LOWORD(v16) = 0;
        v44 = 1;
        goto LABEL_43;
      }
    }

    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v16 = specialized _parseInteger<A, B>(ascii:radix:)(a1, a2, 10);
  a2;
  v39 = HIWORD(v16) & 1;
LABEL_44:
  if (v39)
  {
    v40 = 0;
  }

  else
  {
    v40 = v16;
  }

LABEL_47:
  *a3 = v40;
  *(a3 + 2) = v39 & 1;
}

__int16 *protocol witness for static SignedNumeric.- prefix(_:) in conformance Int16@<X0>(__int16 *result@<X0>, _WORD *a2@<X8>)
{
  v2 = *result;
  if (v2 + -*result)
  {
    __break(1u);
  }

  else
  {
    *a2 = -v2;
  }

  return result;
}

void protocol witness for SignedNumeric.negate() in conformance Int16()
{
  v1 = *v0;
  if (v1 + -*v0)
  {
    __break(1u);
  }

  else
  {
    *v0 = -v1;
  }
}

uint64_t protocol witness for Numeric.init<A>(exactly:) in conformance Int16@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _WORD *a5@<X8>)
{
  v49 = a4;
  v51 = a5;
  v8 = *(*(a3 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v8, a2, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v10 = v9;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v46[-v12];
  v52 = *(a2 - 1);
  MEMORY[0x1EEE9AC00](v11);
  v50 = &v46[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v53 = *(a3 + 64);
  v15 = v53(a2, a3);
  v16 = *(a3 + 128);
  if ((v15 & 1) == 0 || v16(a2, a3) < 17)
  {
    goto LABEL_15;
  }

  v48 = a1;
  v54 = 0x8000;
  v17 = v53;
  if (v53(a2, a3))
  {
    a1 = v48;
    v18 = v16(a2, a3);
    if (v18 < 16)
    {
      goto LABEL_14;
    }

LABEL_8:
    v21 = *(a3 + 96);
    v22 = lazy protocol witness table accessor for type Int16 and conformance Int16(v18, v19, v20);
    v23 = v50;
    v21(&v54, v49, v22, a2, a3);
    v24 = (*(*(*(a3 + 32) + 8) + 16))(a1, v23, a2);
    v25 = *(v52 + 8);
    v25(v23, a2);
    if (v24)
    {
      result = v25(a1, a2);
      goto LABEL_20;
    }

LABEL_15:
    v31 = v16(a2, a3);
    v32 = v52;
    v33 = v53;
    if (v31 <= 16 && (v16(a2, a3) != 16 || (v33(a2, a3) & 1) != 0))
    {
      goto LABEL_26;
    }

    v55 = 0x7FFF;
    v34 = v33(a2, a3);
    v35 = v16(a2, a3);
    if (v34)
    {
      if (v35 > 16)
      {
        goto LABEL_18;
      }
    }

    else if (v35 > 15)
    {
LABEL_18:
      v38 = *(a3 + 96);
      v39 = lazy protocol witness table accessor for type Int16 and conformance Int16(v35, v36, v37);
      v40 = v50;
      v38(&v55, v49, v39, a2, a3);
      v41 = (*(*(*(a3 + 32) + 8) + 16))(v40, a1, a2);
      v42 = *(v32 + 8);
      v42(v40, a2);
      if (v41)
      {
        result = v42(a1, a2);
        goto LABEL_20;
      }

LABEL_26:
      v43 = (*(a3 + 120))(a2, a3);
      result = (*(v32 + 8))(a1, a2);
      v44 = 0;
      goto LABEL_27;
    }

    (*(a3 + 120))(a2, a3);
    goto LABEL_26;
  }

  v47 = v17(a2, a3);
  a1 = v48;
  v18 = v16(a2, a3);
  if ((v47 & 1) == 0)
  {
    if (v18 >= 16)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (v18 > 16)
  {
    goto LABEL_8;
  }

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v8, a2, v10, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v10, AssociatedConformanceWitness);
  v28 = v50;
  (*(v8 + 24))(v13, a2, v8);
  v29 = (*(*(*(a3 + 32) + 8) + 16))(a1, v28, a2);
  v30 = *(v52 + 8);
  v30(v28, a2);
  if ((v29 & 1) == 0)
  {
LABEL_14:
    (*(a3 + 120))(a2, a3);
    goto LABEL_15;
  }

  result = v30(a1, a2);
LABEL_20:
  v43 = 0;
  v44 = 1;
LABEL_27:
  v45 = v51;
  *v51 = v43;
  *(v45 + 2) = v44;
  return result;
}

void protocol witness for Numeric.magnitude.getter in conformance Int16(_WORD *a1@<X8>)
{
  v2 = *v1;
  if (v2 < 0)
  {
    v2 = -v2;
  }

  *a1 = v2;
}

__int16 *protocol witness for static Numeric.* infix(_:_:) in conformance Int16@<X0>(__int16 *result@<X0>, __int16 *a2@<X1>, _WORD *a3@<X8>)
{
  v3 = *result * *a2;
  if ((*result * *a2) == v3)
  {
    *a3 = v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static Int16.* infix(_:_:)(__int16 a1, __int16 a2)
{
  result = (a1 * a2);
  if ((a1 * a2) != result)
  {
    __break(1u);
  }

  return result;
}

__int16 *protocol witness for static Numeric.*= infix(_:_:) in conformance Int16(__int16 *result, __int16 *a2)
{
  v2 = *result * *a2;
  if ((*result * *a2) == v2)
  {
    *result = v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unsigned __int16 *protocol witness for Strideable.distance(to:) in conformance Int16@<X0>(unsigned __int16 *result@<X0>, uint64_t *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  if (((v4 ^ v3) & 0x8000) == 0)
  {
    v5 = v3 - v4;
    if (v5 == v5)
    {
      *a2 = v5;
      return result;
    }

    __break(1u);
    goto LABEL_15;
  }

  if (v4 >= 0)
  {
    v6 = *v2;
  }

  else
  {
    v6 = -v4;
  }

  v3 = v3;
  if ((v3 & 0x8000u) != 0)
  {
    v3 = -v3;
  }

  v7 = v6 + v3;
  if ((v7 & 0x10000) != 0)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    v8 = v7;
  }

  else
  {
    v8 = -v7;
  }

  *a2 = v8;
  return result;
}

void *protocol witness for Strideable.advanced(by:) in conformance Int16@<X0>(void *result@<X0>, _WORD *a2@<X8>)
{
  v3 = *v2;
  v4 = v3 + *result;
  if (__OFADD__(v3, *result))
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v4 <= -32769 || v4 >= 0x8000)
  {
LABEL_6:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *a2 = v4;
  return result;
}

__int16 *protocol witness for static AdditiveArithmetic.+ infix(_:_:) in conformance Int16@<X0>(__int16 *result@<X0>, __int16 *a2@<X1>, _WORD *a3@<X8>)
{
  v3 = *result + *a2;
  if ((*result + *a2) == v3)
  {
    *a3 = v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static Int16.+ infix(_:_:)(__int16 a1, __int16 a2)
{
  result = (a1 + a2);
  if (result != result)
  {
    __break(1u);
  }

  return result;
}

__int16 *protocol witness for static AdditiveArithmetic.+= infix(_:_:) in conformance Int16(__int16 *result, __int16 *a2)
{
  v2 = *result + *a2;
  if ((*result + *a2) == v2)
  {
    *result = v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

__int16 *protocol witness for static AdditiveArithmetic.- infix(_:_:) in conformance Int16@<X0>(__int16 *result@<X0>, __int16 *a2@<X1>, _WORD *a3@<X8>)
{
  v3 = *result - *a2;
  if ((*result - *a2) == v3)
  {
    *a3 = v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static Int16.- infix(_:_:)(__int16 a1, __int16 a2)
{
  result = (a1 - a2);
  if (result != result)
  {
    __break(1u);
  }

  return result;
}

__int16 *protocol witness for static AdditiveArithmetic.-= infix(_:_:) in conformance Int16(__int16 *result, __int16 *a2)
{
  v2 = *result - *a2;
  if ((*result - *a2) == v2)
  {
    *result = v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t Int16._toCustomAnyHashable()@<X0>(__int16 a1@<W0>, uint64_t a2@<X8>)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22_IntegerAnyHashableBoxVys5Int16VGMd, _ss22_IntegerAnyHashableBoxVys5Int16VGMR);
  *(a2 + 24) = result;
  *(a2 + 32) = &protocol witness table for _IntegerAnyHashableBox<A>;
  *a2 = a1;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance Int16@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22_IntegerAnyHashableBoxVys5Int16VGMd, _ss22_IntegerAnyHashableBoxVys5Int16VGMR);
  *(a1 + 24) = result;
  *(a1 + 32) = &protocol witness table for _IntegerAnyHashableBox<A>;
  *a1 = v3;
  return result;
}

uint64_t UInt32.init(_:)(__n128 a1)
{
  if ((a1.n128_u16[0] & 0x7FFFu) >= 0x7C00 || *a1.n128_u16 <= COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(-1.0)))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return *a1.n128_u16;
}

unint64_t UInt32.init(exactly:)(__n128 a1)
{
  v1 = truncl(*a1.n128_u16) != *a1.n128_u16;
  v3 = *a1.n128_u16 <= COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(-1.0)) || (a1.n128_u16[0] & 0x7FFFu) > 0x7BFF || v1;
  v4 = *a1.n128_u16;
  if (v3)
  {
    v4 = 0;
  }

  return v4 | (v3 << 32);
}

Swift::UInt32 __swiftcall UInt32.init(_:)(Swift::Float a1)
{
  if ((LODWORD(a1) & 0x7FFFFFFFu) >= 0x7F800000 || a1 <= -1.0 || a1 >= 4295000000.0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a1;
}

Swift::UInt32_optional __swiftcall UInt32.init(exactly:)(Swift::Float exactly)
{
  v1 = exactly <= -1.0;
  if (exactly >= 4295000000.0)
  {
    v1 = 1;
  }

  if (truncf(exactly) != exactly)
  {
    v1 = 1;
  }

  v2 = exactly;
  if (v1)
  {
    v2 = 0;
  }

  return (v2 | (v1 << 32));
}

Swift::UInt32 __swiftcall UInt32.init(_:)(Swift::Double a1)
{
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000 || a1 <= -1.0 || a1 >= 4294967300.0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a1;
}

Swift::UInt32_optional __swiftcall UInt32.init(exactly:)(Swift::Double exactly)
{
  v1 = exactly <= -1.0;
  if (exactly >= 4294967300.0)
  {
    v1 = 1;
  }

  if (trunc(exactly) != exactly)
  {
    v1 = 1;
  }

  v2 = exactly;
  if (v1)
  {
    v2 = 0;
  }

  return (v2 | (v1 << 32));
}

unsigned int *static UInt32.-= infix(_:_:)(unsigned int *result, unsigned int a2)
{
  if (*result < a2)
  {
    __break(1u);
  }

  else
  {
    *result -= a2;
  }

  return result;
}

_DWORD *static UInt32.*= infix(_:_:)(_DWORD *result, unsigned int a2)
{
  v2 = *result * a2;
  if ((v2 & 0xFFFFFFFF00000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *result = v2;
  }

  return result;
}

_DWORD *static UInt32./= infix(_:_:)(_DWORD *result, unsigned int a2)
{
  if (!a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *result /= a2;
  return result;
}

Swift::tuple_partialValue_UInt32_overflow_Bool __swiftcall UInt32.subtractingReportingOverflow(_:)(Swift::UInt32 a1)
{
  v2 = v1 - a1;
  result.overflow = v1;
  result.partialValue = v2;
  return result;
}

Swift::tuple_partialValue_UInt32_overflow_Bool __swiftcall UInt32.multipliedReportingOverflow(by:)(Swift::UInt32 by)
{
  v2 = v1 * by;
  result.overflow = v1;
  result.partialValue = v2;
  return result;
}

Swift::tuple_partialValue_UInt32_overflow_Bool __swiftcall UInt32.dividedReportingOverflow(by:)(Swift::UInt32 by)
{
  if (by)
  {
    v1 /= by;
  }

  v2 = v1;
  result.overflow = v1;
  result.partialValue = v2;
  return result;
}

Swift::tuple_partialValue_UInt32_overflow_Bool __swiftcall UInt32.remainderReportingOverflow(dividingBy:)(Swift::UInt32 dividingBy)
{
  if (dividingBy)
  {
    v1 %= dividingBy;
  }

  v2 = v1;
  result.overflow = v1;
  result.partialValue = v2;
  return result;
}

_DWORD *static UInt32.%= infix(_:_:)(_DWORD *result, unsigned int a2)
{
  if (!a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *result %= a2;
  return result;
}

uint64_t UInt32.Words.subscript.getter(uint64_t a1, unsigned int a2)
{
  if (a1 < 0 || a1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a2;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance UInt32.Words(void *a1, uint64_t *a2))()
{
  if (swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc(0x30, 0xBD57uLL);
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = UInt32.Words.subscript.read(v4, *a2);
  v5[4] = v7;
  v5[5] = v6;
  return protocol witness for Collection.subscript.read in conformance UInt8.Words;
}

uint64_t (*UInt32.Words.subscript.read(uint64_t a1, uint64_t a2))()
{
  if (a2 < 0 || a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return _swift_displayCrashMessage;
}

Swift::tuple_high_UInt32_low_UInt32 __swiftcall UInt32.multipliedFullWidth(by:)(Swift::UInt32 by)
{
  v2 = __ROR8__(v1 * by, 32);
  result.low = v1;
  result.high = v2;
  return result;
}

Swift::tuple_quotient_UInt32_remainder_UInt32 __swiftcall UInt32.dividingFullWidth(_:)(Swift::tuple_quotient_UInt32_remainder_UInt32 result)
{
  if (!v1 || result.quotient >= v1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v3 = (result.remainder | (__PAIR64__(v2, result.quotient) << 32)) / v1;
  result.quotient = v3;
  return result;
}

BOOL protocol witness for FixedWidthInteger.addingReportingOverflow(_:) in conformance UInt32(_DWORD *a1, _DWORD *a2)
{
  v3 = __CFADD__(*v2, *a2);
  *a1 = *v2 + *a2;
  return v3;
}

BOOL protocol witness for FixedWidthInteger.subtractingReportingOverflow(_:) in conformance UInt32(_DWORD *a1, _DWORD *a2)
{
  v3 = *v2 < *a2;
  *a1 = *v2 - *a2;
  return v3;
}

BOOL protocol witness for FixedWidthInteger.multipliedReportingOverflow(by:) in conformance UInt32(_DWORD *a1, unsigned int *a2)
{
  v3 = *v2 * *a2;
  *a1 = v3;
  return (v3 & 0xFFFFFFFF00000000) != 0;
}

BOOL protocol witness for FixedWidthInteger.dividedReportingOverflow(by:) in conformance UInt32(_DWORD *a1, unsigned int *a2)
{
  v3 = *a2;
  v4 = *v2;
  if (*a2)
  {
    v4 /= v3;
  }

  *a1 = v4;
  return v3 == 0;
}

BOOL protocol witness for FixedWidthInteger.remainderReportingOverflow(dividingBy:) in conformance UInt32(_DWORD *a1, unsigned int *a2)
{
  v3 = *a2;
  v4 = *v2;
  if (*a2)
  {
    v4 %= v3;
  }

  *a1 = v4;
  return v3 == 0;
}

_DWORD *protocol witness for FixedWidthInteger.multipliedFullWidth(by:) in conformance UInt32(_DWORD *result, _DWORD *a2, unsigned int *a3)
{
  v4 = *v3 * *a3;
  *result = HIDWORD(v4);
  *a2 = v4;
  return result;
}

Swift::UInt32 protocol witness for FixedWidthInteger.dividingFullWidth(_:) in conformance UInt32(Swift::UInt32 *a1, _DWORD *a2, _DWORD *a3, _DWORD *a4)
{
  result = UInt32.dividingFullWidth(_:)(__PAIR64__(*a4, *a3)).quotient;
  *a1 = result;
  *a2 = v7;
  return result;
}

int *protocol witness for _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:) in conformance UInt32@<X0>(int *result@<X0>, unint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  v3 = 0;
  if (a2 >> 9 <= 0x10 && (a2 & 1) == 0)
  {
    v3 = *result;
  }

  *a3 = v3;
  return result;
}

uint64_t protocol witness for BinaryInteger.init<A>(_:) in conformance UInt32@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _DWORD *a6@<X8>)
{
  v33 = a4;
  v34 = a5;
  v37 = a1;
  v35 = a6;
  v8 = *(a2 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*(v11 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v12, a2, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v31 - v15;
  v17 = *(a3 + 64);
  if (v17(a2, a3))
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v12, a2, v14, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v14, AssociatedConformanceWitness);
    (*(v12 + 24))(v16, a2, v12);
    v19 = (*(*(*(a3 + 32) + 8) + 32))(v37, v10, a2);
    (*(v8 + 8))(v10, a2);
    if ((v19 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v31 = v16;
  v32 = v12;
  v36 = v8;
  v20 = v37;
  v21 = *(a3 + 128);
  if (v21(a2, a3) < 32)
  {
    goto LABEL_12;
  }

  v38 = -1;
  v22 = v17(a2, a3);
  v23 = v20;
  v24 = v21(a2, a3);
  if ((v22 & 1) == 0)
  {
    if (v24 <= 32)
    {
LABEL_11:
      (*(a3 + 120))(a2, a3);
      goto LABEL_12;
    }

LABEL_9:
    (*(a3 + 96))(&v38, v33, v34, a2, a3);
    v28 = (*(*(*(a3 + 32) + 8) + 16))(v10, v20, a2);
    (*(v36 + 8))(v10, a2);
    if ((v28 & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_13:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v24 > 32)
  {
    goto LABEL_9;
  }

  v25 = v32;
  v26 = swift_getAssociatedConformanceWitness(v32, a2, v14, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  v27 = v31;
  (*(v26 + 8))(&qword_18071E0A8, 256, v14, v26);
  v25[3](v27, a2, v25);
  v20 = v23;
  LOBYTE(v25) = (*(*(*(a3 + 32) + 8) + 40))(v23, v10, a2);
  (*(v36 + 8))(v10, a2);
  if (v25)
  {
    goto LABEL_11;
  }

LABEL_12:
  v29 = (*(a3 + 120))(a2, a3);
  result = (*(v36 + 8))(v20, a2);
  *v35 = v29;
  return result;
}

_DWORD *protocol witness for static BinaryInteger./ infix(_:_:) in conformance UInt32@<X0>(_DWORD *result@<X0>, _DWORD *a2@<X1>, int *a3@<X8>)
{
  if (!*a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *a3 = *result / *a2;
  return result;
}

_DWORD *protocol witness for static BinaryInteger./= infix(_:_:) in conformance UInt32(_DWORD *result, _DWORD *a2)
{
  if (!*a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *result /= *a2;
  return result;
}

_DWORD *protocol witness for static BinaryInteger.% infix(_:_:) in conformance UInt32@<X0>(_DWORD *result@<X0>, _DWORD *a2@<X1>, int *a3@<X8>)
{
  if (!*a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *a3 = *result % *a2;
  return result;
}

_DWORD *protocol witness for static BinaryInteger.%= infix(_:_:) in conformance UInt32(_DWORD *result, _DWORD *a2)
{
  if (!*a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *result %= *a2;
  return result;
}

uint64_t protocol witness for static BinaryInteger.>> infix<A>(_:_:) in conformance UInt32@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, unsigned int *a5@<X8>)
{
  v107 = *(*(a4 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v107, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v106 = v10;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v105 = &v103 - v12;
  v13 = *(a3 - 1);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v103 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v110 = &v103 - v17;
  v108 = *a1;
  v18 = (a4 + 64);
  v111 = *(a4 + 64);
  if (v111(a3, a4))
  {
    v19 = *(a4 + 128);
    v20 = v19(a3, a4);
    if (v20 >= 64)
    {
      v112 = -32;
      v109 = a2;
      v23 = v19;
      v24 = v16;
      v25 = v13;
      v26 = a5;
      v27 = *(a4 + 96);
      v28 = lazy protocol witness table accessor for type Int and conformance Int(v20, v21, v22);
      v104 = (a4 + 64);
      v29 = v110;
      v27(&v112, &type metadata for Int, v28, a3, a4);
      a5 = v26;
      v13 = v25;
      v16 = v24;
      v19 = v23;
      a2 = v109;
      v30 = (*(*(*(a4 + 32) + 8) + 16))(v109, v29, a3);
      v31 = v29;
      v18 = v104;
      result = (*(v13 + 8))(v31, a3);
      if (v30)
      {
        goto LABEL_25;
      }

      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v33 = v111(a3, a4);
  v19 = *(a4 + 128);
  v34 = v19(a3, a4);
  if ((v33 & 1) == 0)
  {
    if (v34 >= 64)
    {
      goto LABEL_11;
    }

LABEL_10:
    result = (*(a4 + 120))(a3, a4);
    if (result < -32)
    {
      goto LABEL_25;
    }

    goto LABEL_11;
  }

  v109 = a2;
  v104 = v19;
  if (v34 <= 64)
  {
    v71 = v106;
    v70 = v107;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v107, a3, v106, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    v73 = v105;
    (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v71, AssociatedConformanceWitness);
    v74 = v110;
    (v70[3])(v73, a3, v70);
    a2 = v109;
    LOBYTE(v70) = (*(*(*(a4 + 32) + 8) + 16))(v109, v74, a3);
    result = (*(v13 + 8))(v74, a3);
    if (v70)
    {
      goto LABEL_25;
    }

    result = (*(a4 + 120))(a3, a4);
    v19 = v104;
    if (result < -32)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v112 = -32;
    v37 = v16;
    v38 = v13;
    v39 = a5;
    v40 = *(a4 + 96);
    v41 = lazy protocol witness table accessor for type Int and conformance Int(v34, v35, v36);
    v42 = v110;
    v40(&v112, &type metadata for Int, v41, a3, a4);
    a5 = v39;
    v13 = v38;
    v16 = v37;
    v43 = v109;
    v44 = (*(*(*(a4 + 32) + 8) + 16))(v109, v42, a3);
    v45 = v42;
    v18 = (a4 + 64);
    a2 = v43;
    result = (*(v13 + 8))(v45, a3);
    v19 = v104;
    if (v44)
    {
      goto LABEL_25;
    }
  }

LABEL_11:
  v46 = v111(a3, a4);
  v103 = a4 + 128;
  v47 = v19(a3, a4);
  if (v46)
  {
    if (v47 > 64)
    {
      goto LABEL_13;
    }

LABEL_16:
    result = (*(a4 + 120))(a3, a4);
    if (result > 32)
    {
      goto LABEL_25;
    }

    goto LABEL_17;
  }

  if (v47 < 64)
  {
    goto LABEL_16;
  }

LABEL_13:
  v112 = 32;
  v109 = a2;
  v50 = v19;
  v51 = v16;
  v52 = v13;
  v53 = a5;
  v54 = *(a4 + 96);
  v55 = lazy protocol witness table accessor for type Int and conformance Int(v47, v48, v49);
  v104 = v18;
  v56 = v110;
  v54(&v112, &type metadata for Int, v55, a3, a4);
  a5 = v53;
  v13 = v52;
  v16 = v51;
  v19 = v50;
  a2 = v109;
  v57 = (*(*(*(a4 + 32) + 8) + 16))(v56, v109, a3);
  v58 = v56;
  v18 = v104;
  result = (*(v13 + 8))(v58, a3);
  if (v57)
  {
    goto LABEL_25;
  }

LABEL_17:
  (*(v13 + 16))(v16, a2, a3);
  if ((v111(a3, a4) & 1) == 0 || v19(a3, a4) < 65)
  {
    goto LABEL_34;
  }

  if ((v111(a3, a4) & 1) == 0)
  {
    v76 = v111(a3, a4);
    v77 = v19(a3, a4);
    if ((v76 & 1) == 0)
    {
      if (v77 >= 64)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }

    v104 = v19;
    if (v77 <= 64)
    {
      v88 = v106;
      v87 = v107;
      v89 = swift_getAssociatedConformanceWitness(v107, a3, v106, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v90 = v105;
      (*(v89 + 8))(&qword_18071E0A8, 256, v88, v89);
      v91 = v110;
      (v87[3])(v90, a3, v87);
      LOBYTE(v87) = (*(*(*(a4 + 32) + 8) + 16))(v16, v91, a3);
      (*(v13 + 8))(v91, a3);
      v19 = v104;
      if ((v87 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v112 = 0x8000000000000000;
      v80 = v16;
      v81 = v13;
      v82 = a5;
      v83 = *(a4 + 96);
      v84 = lazy protocol witness table accessor for type Int and conformance Int(v77, v78, v79);
      v85 = v110;
      v83(&v112, &type metadata for Int, v84, a3, a4);
      a5 = v82;
      v13 = v81;
      v16 = v80;
      v86 = (*(*(*(a4 + 32) + 8) + 16))(v80, v85, a3);
      (*(v13 + 8))(v85, a3);
      v19 = v104;
      if ((v86 & 1) == 0)
      {
        goto LABEL_34;
      }
    }

LABEL_38:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v59 = v19(a3, a4);
  if (v59 < 64)
  {
LABEL_33:
    (*(a4 + 120))(a3, a4);
    goto LABEL_34;
  }

  v112 = 0x8000000000000000;
  v62 = v19;
  v63 = v16;
  v64 = v13;
  v65 = a5;
  v66 = *(a4 + 96);
  v67 = lazy protocol witness table accessor for type Int and conformance Int(v59, v60, v61);
  v104 = v18;
  v68 = v110;
  v66(&v112, &type metadata for Int, v67, a3, a4);
  a5 = v65;
  v13 = v64;
  v16 = v63;
  v19 = v62;
  v69 = (*(*(*(a4 + 32) + 8) + 16))(v16, v68, a3);
  (*(v13 + 8))(v68, a3);
  if (v69)
  {
    goto LABEL_38;
  }

LABEL_34:
  if (v19(a3, a4) > 64 || v19(a3, a4) == 64 && (v111(a3, a4) & 1) == 0)
  {
    v92 = v111(a3, a4);
    v93 = v19(a3, a4);
    if (v92)
    {
      if (v93 > 64)
      {
        goto LABEL_37;
      }
    }

    else if (v93 >= 64)
    {
LABEL_37:
      v112 = 0x7FFFFFFFFFFFFFFFLL;
      v96 = v16;
      v97 = a5;
      v98 = *(a4 + 96);
      v99 = lazy protocol witness table accessor for type Int and conformance Int(v93, v94, v95);
      v100 = v110;
      v98(&v112, &type metadata for Int, v99, a3, a4);
      a5 = v97;
      v16 = v96;
      v101 = (*(*(*(a4 + 32) + 8) + 16))(v100, v96, a3);
      (*(v13 + 8))(v100, a3);
      if (v101)
      {
        goto LABEL_38;
      }

      goto LABEL_44;
    }

    (*(a4 + 120))(a3, a4);
  }

LABEL_44:
  v102 = (*(a4 + 120))(a3, a4);
  result = (*(v13 + 8))(v16, a3);
  if ((v102 & 0x8000000000000000) != 0)
  {
    if (v102 > 0xFFFFFFFFFFFFFFE0)
    {
      v75 = v108 << -v102;
      goto LABEL_47;
    }
  }

  else if (v102 < 0x20)
  {
    v75 = v108 >> v102;
    goto LABEL_47;
  }

LABEL_25:
  v75 = 0;
LABEL_47:
  *a5 = v75;
  return result;
}

uint64_t protocol witness for static BinaryInteger.>>= infix<A>(_:_:) in conformance UInt32(unsigned int *a1, uint64_t a2, const char *a3, uint64_t a4)
{
  v106 = *(*(a4 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v106, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v105 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v104 = v102 - v10;
  v11 = *(a3 - 1);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v108 = v102 - v15;
  v16 = (a4 + 64);
  v109 = *(a4 + 64);
  if (v109(a3, a4))
  {
    v17 = *(a4 + 128);
    v18 = v17(a3, a4);
    if (v18 >= 64)
    {
      v110 = -32;
      v107 = a2;
      v21 = v17;
      v22 = v14;
      v23 = v11;
      v24 = a1;
      v25 = *(a4 + 96);
      v26 = lazy protocol witness table accessor for type Int and conformance Int(v18, v19, v20);
      v103 = (a4 + 64);
      v27 = v108;
      v25(&v110, &type metadata for Int, v26, a3, a4);
      a1 = v24;
      v11 = v23;
      v14 = v22;
      v17 = v21;
      a2 = v107;
      v28 = (*(*(*(a4 + 32) + 8) + 16))(v107, v27, a3);
      v29 = v27;
      v16 = v103;
      result = (*(v11 + 8))(v29, a3);
      if (v28)
      {
        goto LABEL_25;
      }

      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v31 = v109(a3, a4);
  v17 = *(a4 + 128);
  v32 = v17(a3, a4);
  if ((v31 & 1) == 0)
  {
    if (v32 >= 64)
    {
      goto LABEL_11;
    }

LABEL_10:
    result = (*(a4 + 120))(a3, a4);
    if (result < -32)
    {
      goto LABEL_25;
    }

    goto LABEL_11;
  }

  v107 = a2;
  v103 = v17;
  if (v32 <= 64)
  {
    v69 = v105;
    v68 = v106;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v106, a3, v105, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    v71 = v104;
    (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v69, AssociatedConformanceWitness);
    v72 = v108;
    (v68[3])(v71, a3, v68);
    a2 = v107;
    LOBYTE(v68) = (*(*(*(a4 + 32) + 8) + 16))(v107, v72, a3);
    result = (*(v11 + 8))(v72, a3);
    if (v68)
    {
      goto LABEL_25;
    }

    result = (*(a4 + 120))(a3, a4);
    v17 = v103;
    if (result < -32)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v110 = -32;
    v35 = v14;
    v36 = v11;
    v37 = a1;
    v38 = *(a4 + 96);
    v39 = lazy protocol witness table accessor for type Int and conformance Int(v32, v33, v34);
    v40 = v108;
    v38(&v110, &type metadata for Int, v39, a3, a4);
    a1 = v37;
    v11 = v36;
    v14 = v35;
    v41 = v107;
    v42 = (*(*(*(a4 + 32) + 8) + 16))(v107, v40, a3);
    v43 = v40;
    v16 = (a4 + 64);
    a2 = v41;
    result = (*(v11 + 8))(v43, a3);
    v17 = v103;
    if (v42)
    {
      goto LABEL_25;
    }
  }

LABEL_11:
  v44 = v109(a3, a4);
  v102[1] = a4 + 128;
  v45 = v17(a3, a4);
  if (v44)
  {
    if (v45 > 64)
    {
      goto LABEL_13;
    }

LABEL_16:
    result = (*(a4 + 120))(a3, a4);
    if (result > 32)
    {
      goto LABEL_25;
    }

    goto LABEL_17;
  }

  if (v45 < 64)
  {
    goto LABEL_16;
  }

LABEL_13:
  v110 = 32;
  v107 = a2;
  v48 = v17;
  v49 = v14;
  v50 = v11;
  v51 = a1;
  v52 = *(a4 + 96);
  v53 = lazy protocol witness table accessor for type Int and conformance Int(v45, v46, v47);
  v103 = v16;
  v54 = v108;
  v52(&v110, &type metadata for Int, v53, a3, a4);
  a1 = v51;
  v11 = v50;
  v14 = v49;
  v17 = v48;
  a2 = v107;
  v55 = (*(*(*(a4 + 32) + 8) + 16))(v54, v107, a3);
  v56 = v54;
  v16 = v103;
  result = (*(v11 + 8))(v56, a3);
  if (v55)
  {
    goto LABEL_25;
  }

LABEL_17:
  (*(v11 + 16))(v14, a2, a3);
  if ((v109(a3, a4) & 1) == 0 || v17(a3, a4) < 65)
  {
    goto LABEL_34;
  }

  if ((v109(a3, a4) & 1) == 0)
  {
    v74 = v109(a3, a4);
    v75 = v17(a3, a4);
    if ((v74 & 1) == 0)
    {
      if (v75 >= 64)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }

    v103 = v17;
    if (v75 <= 64)
    {
      v86 = v105;
      v85 = v106;
      v87 = swift_getAssociatedConformanceWitness(v106, a3, v105, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v88 = v104;
      (*(v87 + 8))(&qword_18071E0A8, 256, v86, v87);
      v89 = v108;
      (v85[3])(v88, a3, v85);
      LOBYTE(v85) = (*(*(*(a4 + 32) + 8) + 16))(v14, v89, a3);
      (*(v11 + 8))(v89, a3);
      v17 = v103;
      if ((v85 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v110 = 0x8000000000000000;
      v78 = v14;
      v79 = v11;
      v80 = a1;
      v81 = *(a4 + 96);
      v82 = lazy protocol witness table accessor for type Int and conformance Int(v75, v76, v77);
      v83 = v108;
      v81(&v110, &type metadata for Int, v82, a3, a4);
      a1 = v80;
      v11 = v79;
      v14 = v78;
      v84 = (*(*(*(a4 + 32) + 8) + 16))(v78, v83, a3);
      (*(v11 + 8))(v83, a3);
      v17 = v103;
      if ((v84 & 1) == 0)
      {
        goto LABEL_34;
      }
    }

LABEL_38:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v57 = v17(a3, a4);
  if (v57 < 64)
  {
LABEL_33:
    (*(a4 + 120))(a3, a4);
    goto LABEL_34;
  }

  v110 = 0x8000000000000000;
  v60 = v17;
  v61 = v14;
  v62 = v11;
  v63 = a1;
  v64 = *(a4 + 96);
  v65 = lazy protocol witness table accessor for type Int and conformance Int(v57, v58, v59);
  v103 = v16;
  v66 = v108;
  v64(&v110, &type metadata for Int, v65, a3, a4);
  a1 = v63;
  v11 = v62;
  v14 = v61;
  v17 = v60;
  v67 = (*(*(*(a4 + 32) + 8) + 16))(v14, v66, a3);
  (*(v11 + 8))(v66, a3);
  if (v67)
  {
    goto LABEL_38;
  }

LABEL_34:
  if (v17(a3, a4) > 64 || v17(a3, a4) == 64 && (v109(a3, a4) & 1) == 0)
  {
    v90 = v109(a3, a4);
    v91 = v17(a3, a4);
    if (v90)
    {
      if (v91 > 64)
      {
        goto LABEL_37;
      }
    }

    else if (v91 >= 64)
    {
LABEL_37:
      v110 = 0x7FFFFFFFFFFFFFFFLL;
      v94 = v14;
      v95 = a1;
      v96 = *(a4 + 96);
      v97 = lazy protocol witness table accessor for type Int and conformance Int(v91, v92, v93);
      v98 = v108;
      v96(&v110, &type metadata for Int, v97, a3, a4);
      a1 = v95;
      v14 = v94;
      v99 = (*(*(*(a4 + 32) + 8) + 16))(v98, v94, a3);
      (*(v11 + 8))(v98, a3);
      if (v99)
      {
        goto LABEL_38;
      }

      goto LABEL_44;
    }

    (*(a4 + 120))(a3, a4);
  }

LABEL_44:
  v100 = (*(a4 + 120))(a3, a4);
  result = (*(v11 + 8))(v14, a3);
  v101 = *a1;
  if ((v100 & 0x8000000000000000) != 0)
  {
    if (v100 >= 0xFFFFFFFFFFFFFFE1)
    {
      v73 = v101 << -v100;
      goto LABEL_47;
    }
  }

  else if (v100 < 0x20)
  {
    v73 = v101 >> v100;
    goto LABEL_47;
  }

LABEL_25:
  v73 = 0;
LABEL_47:
  *a1 = v73;
  return result;
}

uint64_t protocol witness for static BinaryInteger.<< infix<A>(_:_:) in conformance UInt32@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, unsigned int *a5@<X8>)
{
  v107 = *(*(a4 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v107, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v106 = v10;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v105 = &v103 - v12;
  v13 = *(a3 - 1);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v103 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v110 = &v103 - v17;
  v108 = *a1;
  v18 = (a4 + 64);
  v111 = *(a4 + 64);
  if (v111(a3, a4))
  {
    v19 = *(a4 + 128);
    v20 = v19(a3, a4);
    if (v20 >= 64)
    {
      v112 = -32;
      v109 = a2;
      v23 = v19;
      v24 = v16;
      v25 = v13;
      v26 = a5;
      v27 = *(a4 + 96);
      v28 = lazy protocol witness table accessor for type Int and conformance Int(v20, v21, v22);
      v104 = (a4 + 64);
      v29 = v110;
      v27(&v112, &type metadata for Int, v28, a3, a4);
      a5 = v26;
      v13 = v25;
      v16 = v24;
      v19 = v23;
      a2 = v109;
      v30 = (*(*(*(a4 + 32) + 8) + 16))(v109, v29, a3);
      v31 = v29;
      v18 = v104;
      result = (*(v13 + 8))(v31, a3);
      if (v30)
      {
        goto LABEL_25;
      }

      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v33 = v111(a3, a4);
  v19 = *(a4 + 128);
  v34 = v19(a3, a4);
  if ((v33 & 1) == 0)
  {
    if (v34 >= 64)
    {
      goto LABEL_11;
    }

LABEL_10:
    result = (*(a4 + 120))(a3, a4);
    if (result < -32)
    {
      goto LABEL_25;
    }

    goto LABEL_11;
  }

  v109 = a2;
  v104 = v19;
  if (v34 <= 64)
  {
    v71 = v106;
    v70 = v107;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v107, a3, v106, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    v73 = v105;
    (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v71, AssociatedConformanceWitness);
    v74 = v110;
    (v70[3])(v73, a3, v70);
    a2 = v109;
    LOBYTE(v70) = (*(*(*(a4 + 32) + 8) + 16))(v109, v74, a3);
    result = (*(v13 + 8))(v74, a3);
    if (v70)
    {
      goto LABEL_25;
    }

    result = (*(a4 + 120))(a3, a4);
    v19 = v104;
    if (result < -32)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v112 = -32;
    v37 = v16;
    v38 = v13;
    v39 = a5;
    v40 = *(a4 + 96);
    v41 = lazy protocol witness table accessor for type Int and conformance Int(v34, v35, v36);
    v42 = v110;
    v40(&v112, &type metadata for Int, v41, a3, a4);
    a5 = v39;
    v13 = v38;
    v16 = v37;
    v43 = v109;
    v44 = (*(*(*(a4 + 32) + 8) + 16))(v109, v42, a3);
    v45 = v42;
    v18 = (a4 + 64);
    a2 = v43;
    result = (*(v13 + 8))(v45, a3);
    v19 = v104;
    if (v44)
    {
      goto LABEL_25;
    }
  }

LABEL_11:
  v46 = v111(a3, a4);
  v103 = a4 + 128;
  v47 = v19(a3, a4);
  if (v46)
  {
    if (v47 > 64)
    {
      goto LABEL_13;
    }

LABEL_16:
    result = (*(a4 + 120))(a3, a4);
    if (result > 32)
    {
      goto LABEL_25;
    }

    goto LABEL_17;
  }

  if (v47 < 64)
  {
    goto LABEL_16;
  }

LABEL_13:
  v112 = 32;
  v109 = a2;
  v50 = v19;
  v51 = v16;
  v52 = v13;
  v53 = a5;
  v54 = *(a4 + 96);
  v55 = lazy protocol witness table accessor for type Int and conformance Int(v47, v48, v49);
  v104 = v18;
  v56 = v110;
  v54(&v112, &type metadata for Int, v55, a3, a4);
  a5 = v53;
  v13 = v52;
  v16 = v51;
  v19 = v50;
  a2 = v109;
  v57 = (*(*(*(a4 + 32) + 8) + 16))(v56, v109, a3);
  v58 = v56;
  v18 = v104;
  result = (*(v13 + 8))(v58, a3);
  if (v57)
  {
    goto LABEL_25;
  }

LABEL_17:
  (*(v13 + 16))(v16, a2, a3);
  if ((v111(a3, a4) & 1) == 0 || v19(a3, a4) < 65)
  {
    goto LABEL_34;
  }

  if ((v111(a3, a4) & 1) == 0)
  {
    v76 = v111(a3, a4);
    v77 = v19(a3, a4);
    if ((v76 & 1) == 0)
    {
      if (v77 >= 64)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }

    v104 = v19;
    if (v77 <= 64)
    {
      v88 = v106;
      v87 = v107;
      v89 = swift_getAssociatedConformanceWitness(v107, a3, v106, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v90 = v105;
      (*(v89 + 8))(&qword_18071E0A8, 256, v88, v89);
      v91 = v110;
      (v87[3])(v90, a3, v87);
      LOBYTE(v87) = (*(*(*(a4 + 32) + 8) + 16))(v16, v91, a3);
      (*(v13 + 8))(v91, a3);
      v19 = v104;
      if ((v87 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v112 = 0x8000000000000000;
      v80 = v16;
      v81 = v13;
      v82 = a5;
      v83 = *(a4 + 96);
      v84 = lazy protocol witness table accessor for type Int and conformance Int(v77, v78, v79);
      v85 = v110;
      v83(&v112, &type metadata for Int, v84, a3, a4);
      a5 = v82;
      v13 = v81;
      v16 = v80;
      v86 = (*(*(*(a4 + 32) + 8) + 16))(v80, v85, a3);
      (*(v13 + 8))(v85, a3);
      v19 = v104;
      if ((v86 & 1) == 0)
      {
        goto LABEL_34;
      }
    }

LABEL_38:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v59 = v19(a3, a4);
  if (v59 < 64)
  {
LABEL_33:
    (*(a4 + 120))(a3, a4);
    goto LABEL_34;
  }

  v112 = 0x8000000000000000;
  v62 = v19;
  v63 = v16;
  v64 = v13;
  v65 = a5;
  v66 = *(a4 + 96);
  v67 = lazy protocol witness table accessor for type Int and conformance Int(v59, v60, v61);
  v104 = v18;
  v68 = v110;
  v66(&v112, &type metadata for Int, v67, a3, a4);
  a5 = v65;
  v13 = v64;
  v16 = v63;
  v19 = v62;
  v69 = (*(*(*(a4 + 32) + 8) + 16))(v16, v68, a3);
  (*(v13 + 8))(v68, a3);
  if (v69)
  {
    goto LABEL_38;
  }

LABEL_34:
  if (v19(a3, a4) > 64 || v19(a3, a4) == 64 && (v111(a3, a4) & 1) == 0)
  {
    v92 = v111(a3, a4);
    v93 = v19(a3, a4);
    if (v92)
    {
      if (v93 > 64)
      {
        goto LABEL_37;
      }
    }

    else if (v93 >= 64)
    {
LABEL_37:
      v112 = 0x7FFFFFFFFFFFFFFFLL;
      v96 = v16;
      v97 = a5;
      v98 = *(a4 + 96);
      v99 = lazy protocol witness table accessor for type Int and conformance Int(v93, v94, v95);
      v100 = v110;
      v98(&v112, &type metadata for Int, v99, a3, a4);
      a5 = v97;
      v16 = v96;
      v101 = (*(*(*(a4 + 32) + 8) + 16))(v100, v96, a3);
      (*(v13 + 8))(v100, a3);
      if (v101)
      {
        goto LABEL_38;
      }

      goto LABEL_44;
    }

    (*(a4 + 120))(a3, a4);
  }

LABEL_44:
  v102 = (*(a4 + 120))(a3, a4);
  result = (*(v13 + 8))(v16, a3);
  if ((v102 & 0x8000000000000000) != 0)
  {
    if (v102 > 0xFFFFFFFFFFFFFFE0)
    {
      v75 = v108 >> -v102;
      goto LABEL_47;
    }
  }

  else if (v102 <= 0x1F)
  {
    v75 = v108 << v102;
    goto LABEL_47;
  }

LABEL_25:
  v75 = 0;
LABEL_47:
  *a5 = v75;
  return result;
}

uint64_t protocol witness for static BinaryInteger.<<= infix<A>(_:_:) in conformance UInt32(unsigned int *a1, uint64_t a2, const char *a3, uint64_t a4)
{
  v106 = *(*(a4 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v106, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v105 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v104 = v102 - v10;
  v11 = *(a3 - 1);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v108 = v102 - v15;
  v16 = (a4 + 64);
  v109 = *(a4 + 64);
  if (v109(a3, a4))
  {
    v17 = *(a4 + 128);
    v18 = v17(a3, a4);
    if (v18 >= 64)
    {
      v110 = -32;
      v107 = a2;
      v21 = v17;
      v22 = v14;
      v23 = v11;
      v24 = a1;
      v25 = *(a4 + 96);
      v26 = lazy protocol witness table accessor for type Int and conformance Int(v18, v19, v20);
      v103 = (a4 + 64);
      v27 = v108;
      v25(&v110, &type metadata for Int, v26, a3, a4);
      a1 = v24;
      v11 = v23;
      v14 = v22;
      v17 = v21;
      a2 = v107;
      v28 = (*(*(*(a4 + 32) + 8) + 16))(v107, v27, a3);
      v29 = v27;
      v16 = v103;
      result = (*(v11 + 8))(v29, a3);
      if (v28)
      {
        goto LABEL_25;
      }

      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v31 = v109(a3, a4);
  v17 = *(a4 + 128);
  v32 = v17(a3, a4);
  if ((v31 & 1) == 0)
  {
    if (v32 >= 64)
    {
      goto LABEL_11;
    }

LABEL_10:
    result = (*(a4 + 120))(a3, a4);
    if (result < -32)
    {
      goto LABEL_25;
    }

    goto LABEL_11;
  }

  v107 = a2;
  v103 = v17;
  if (v32 <= 64)
  {
    v69 = v105;
    v68 = v106;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v106, a3, v105, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    v71 = v104;
    (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v69, AssociatedConformanceWitness);
    v72 = v108;
    (v68[3])(v71, a3, v68);
    a2 = v107;
    LOBYTE(v68) = (*(*(*(a4 + 32) + 8) + 16))(v107, v72, a3);
    result = (*(v11 + 8))(v72, a3);
    if (v68)
    {
      goto LABEL_25;
    }

    result = (*(a4 + 120))(a3, a4);
    v17 = v103;
    if (result < -32)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v110 = -32;
    v35 = v14;
    v36 = v11;
    v37 = a1;
    v38 = *(a4 + 96);
    v39 = lazy protocol witness table accessor for type Int and conformance Int(v32, v33, v34);
    v40 = v108;
    v38(&v110, &type metadata for Int, v39, a3, a4);
    a1 = v37;
    v11 = v36;
    v14 = v35;
    v41 = v107;
    v42 = (*(*(*(a4 + 32) + 8) + 16))(v107, v40, a3);
    v43 = v40;
    v16 = (a4 + 64);
    a2 = v41;
    result = (*(v11 + 8))(v43, a3);
    v17 = v103;
    if (v42)
    {
      goto LABEL_25;
    }
  }

LABEL_11:
  v44 = v109(a3, a4);
  v102[1] = a4 + 128;
  v45 = v17(a3, a4);
  if (v44)
  {
    if (v45 > 64)
    {
      goto LABEL_13;
    }

LABEL_16:
    result = (*(a4 + 120))(a3, a4);
    if (result > 32)
    {
      goto LABEL_25;
    }

    goto LABEL_17;
  }

  if (v45 < 64)
  {
    goto LABEL_16;
  }

LABEL_13:
  v110 = 32;
  v107 = a2;
  v48 = v17;
  v49 = v14;
  v50 = v11;
  v51 = a1;
  v52 = *(a4 + 96);
  v53 = lazy protocol witness table accessor for type Int and conformance Int(v45, v46, v47);
  v103 = v16;
  v54 = v108;
  v52(&v110, &type metadata for Int, v53, a3, a4);
  a1 = v51;
  v11 = v50;
  v14 = v49;
  v17 = v48;
  a2 = v107;
  v55 = (*(*(*(a4 + 32) + 8) + 16))(v54, v107, a3);
  v56 = v54;
  v16 = v103;
  result = (*(v11 + 8))(v56, a3);
  if (v55)
  {
    goto LABEL_25;
  }

LABEL_17:
  (*(v11 + 16))(v14, a2, a3);
  if ((v109(a3, a4) & 1) == 0 || v17(a3, a4) < 65)
  {
    goto LABEL_34;
  }

  if ((v109(a3, a4) & 1) == 0)
  {
    v74 = v109(a3, a4);
    v75 = v17(a3, a4);
    if ((v74 & 1) == 0)
    {
      if (v75 >= 64)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }

    v103 = v17;
    if (v75 <= 64)
    {
      v86 = v105;
      v85 = v106;
      v87 = swift_getAssociatedConformanceWitness(v106, a3, v105, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v88 = v104;
      (*(v87 + 8))(&qword_18071E0A8, 256, v86, v87);
      v89 = v108;
      (v85[3])(v88, a3, v85);
      LOBYTE(v85) = (*(*(*(a4 + 32) + 8) + 16))(v14, v89, a3);
      (*(v11 + 8))(v89, a3);
      v17 = v103;
      if ((v85 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v110 = 0x8000000000000000;
      v78 = v14;
      v79 = v11;
      v80 = a1;
      v81 = *(a4 + 96);
      v82 = lazy protocol witness table accessor for type Int and conformance Int(v75, v76, v77);
      v83 = v108;
      v81(&v110, &type metadata for Int, v82, a3, a4);
      a1 = v80;
      v11 = v79;
      v14 = v78;
      v84 = (*(*(*(a4 + 32) + 8) + 16))(v78, v83, a3);
      (*(v11 + 8))(v83, a3);
      v17 = v103;
      if ((v84 & 1) == 0)
      {
        goto LABEL_34;
      }
    }

LABEL_38:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v57 = v17(a3, a4);
  if (v57 < 64)
  {
LABEL_33:
    (*(a4 + 120))(a3, a4);
    goto LABEL_34;
  }

  v110 = 0x8000000000000000;
  v60 = v17;
  v61 = v14;
  v62 = v11;
  v63 = a1;
  v64 = *(a4 + 96);
  v65 = lazy protocol witness table accessor for type Int and conformance Int(v57, v58, v59);
  v103 = v16;
  v66 = v108;
  v64(&v110, &type metadata for Int, v65, a3, a4);
  a1 = v63;
  v11 = v62;
  v14 = v61;
  v17 = v60;
  v67 = (*(*(*(a4 + 32) + 8) + 16))(v14, v66, a3);
  (*(v11 + 8))(v66, a3);
  if (v67)
  {
    goto LABEL_38;
  }

LABEL_34:
  if (v17(a3, a4) > 64 || v17(a3, a4) == 64 && (v109(a3, a4) & 1) == 0)
  {
    v90 = v109(a3, a4);
    v91 = v17(a3, a4);
    if (v90)
    {
      if (v91 > 64)
      {
        goto LABEL_37;
      }
    }

    else if (v91 >= 64)
    {
LABEL_37:
      v110 = 0x7FFFFFFFFFFFFFFFLL;
      v94 = v14;
      v95 = a1;
      v96 = *(a4 + 96);
      v97 = lazy protocol witness table accessor for type Int and conformance Int(v91, v92, v93);
      v98 = v108;
      v96(&v110, &type metadata for Int, v97, a3, a4);
      a1 = v95;
      v14 = v94;
      v99 = (*(*(*(a4 + 32) + 8) + 16))(v98, v94, a3);
      (*(v11 + 8))(v98, a3);
      if (v99)
      {
        goto LABEL_38;
      }

      goto LABEL_44;
    }

    (*(a4 + 120))(a3, a4);
  }

LABEL_44:
  v100 = (*(a4 + 120))(a3, a4);
  result = (*(v11 + 8))(v14, a3);
  v101 = *a1;
  if ((v100 & 0x8000000000000000) != 0)
  {
    if (v100 > 0xFFFFFFFFFFFFFFE0)
    {
      v73 = v101 >> -v100;
      goto LABEL_47;
    }
  }

  else if (v100 < 0x20)
  {
    v73 = v101 << v100;
    goto LABEL_47;
  }

LABEL_25:
  v73 = 0;
LABEL_47:
  *a1 = v73;
  return result;
}

int *protocol witness for BinaryInteger.quotientAndRemainder(dividingBy:) in conformance UInt32(int *result, int *a2, unsigned int *a3)
{
  v4 = *a3;
  if (!*a3)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v5 = *v3;
  *a2 = *v3 % v4;
  *result = v5 / v4;
  return result;
}

void protocol witness for LosslessStringConvertible.init(_:) in conformance UInt32(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = HIBYTE(a2) & 0xF;
  v6 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {
    a2;
    v34 = 0;
    LOBYTE(v33) = 1;
    goto LABEL_43;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v37[0] = a1;
      v37[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      v20 = specialized closure #1 in FixedWidthInteger.init<A>(_:radix:)(v37, v5, 10);
      v38 = BYTE4(v20) & 1;
      LODWORD(v16) = v20;
LABEL_39:
      LOBYTE(v33) = v38;
      a2;
      goto LABEL_40;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      if ((a1 & 0xFFFFFFFFFFFFLL) != 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v35 = _StringObject.sharedUTF8.getter(a1, a2);
      v6 = v36;
      v8 = v35;
      if (v6 > 0)
      {
LABEL_9:
        v9 = *v8;
        if (v9 == 43)
        {
          v21 = specialized Collection.subscript.getter(1, v8, v6);
          v25 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v21, v22, v23, v24);
          if (v26)
          {
            LODWORD(v16) = 0;
            if (v25)
            {
              do
              {
                v27 = *v25 - 48;
                if (v27 >= 0xA)
                {
                  goto LABEL_38;
                }

                v28 = 10 * v16;
                LODWORD(v16) = v28 + v27;
                v29 = __CFADD__(v28, v27);
                if ((v28 & 0xFFFFFFFF00000000) != 0 || v29)
                {
                  goto LABEL_38;
                }

                ++v25;
              }

              while (--v26);
            }

LABEL_37:
            v38 = 0;
            goto LABEL_39;
          }
        }

        else
        {
          if (v9 != 45)
          {
            LODWORD(v16) = 0;
            while (1)
            {
              v30 = *v8 - 48;
              if (v30 >= 0xA)
              {
                goto LABEL_38;
              }

              v31 = 10 * v16;
              LODWORD(v16) = v31 + v30;
              v32 = __CFADD__(v31, v30);
              if ((v31 & 0xFFFFFFFF00000000) != 0 || v32)
              {
                goto LABEL_38;
              }

              ++v8;
              if (!--v6)
              {
                goto LABEL_37;
              }
            }
          }

          v10 = specialized Collection.subscript.getter(1, v8, v6);
          v14 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v10, v11, v12, v13);
          if (v15)
          {
            LODWORD(v16) = 0;
            if (v14)
            {
              while (1)
              {
                v17 = *v14 - 48;
                if (v17 >= 0xA)
                {
                  break;
                }

                v18 = 10 * v16;
                LODWORD(v16) = v18 - v17;
                v19 = v18 < v17;
                if ((v18 & 0xFFFFFFFF00000000) != 0 || v19)
                {
                  break;
                }

                ++v14;
                if (!--v15)
                {
                  goto LABEL_37;
                }
              }

LABEL_38:
              LODWORD(v16) = 0;
              v38 = 1;
              goto LABEL_39;
            }

            goto LABEL_37;
          }
        }

        LODWORD(v16) = 0;
        v38 = 1;
        goto LABEL_39;
      }
    }

    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v16 = specialized _parseInteger<A, B>(ascii:radix:)(a1, a2, 10);
  a2;
  v33 = HIDWORD(v16) & 1;
LABEL_40:
  if (v33)
  {
    v34 = 0;
  }

  else
  {
    v34 = v16;
  }

LABEL_43:
  *a3 = v34;
  *(a3 + 4) = v33 & 1;
}

uint64_t protocol witness for Numeric.init<A>(exactly:) in conformance UInt32@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _DWORD *a5@<X8>)
{
  v34 = a4;
  v36 = a5;
  v37 = *(a2 - 1);
  v38 = a1;
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(v9 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v10, a2, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v12 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v34 - v13;
  v35 = *(a3 + 64);
  if ((v35(a2, a3) & 1) == 0 || (v15 = swift_getAssociatedConformanceWitness(v10, a2, v12, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral), (*(v15 + 8))(&qword_18071E0A8, 256, v12, v15), (*(v10 + 24))(v14, a2, v10), v16 = (*(*(*(a3 + 32) + 8) + 16))(v38, v8, a2), v17 = *(v37 + 8), v17(v8, a2), (v16 & 1) == 0))
  {
    v18 = *(a3 + 128);
    if (v18(a2, a3) < 32)
    {
      goto LABEL_12;
    }

    v39 = -1;
    v19 = v35(a2, a3);
    v20 = v38;
    v21 = v18(a2, a3);
    if (v19)
    {
      if (v21 <= 32)
      {
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v10, a2, v12, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v12, AssociatedConformanceWitness);
        (*(v10 + 24))(v14, a2, v10);
        v25 = (*(*(*(a3 + 32) + 8) + 40))(v20, v8, a2);
        (*(v37 + 8))(v8, a2);
        if ((v25 & 1) == 0)
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      }
    }

    else if (v21 < 33)
    {
LABEL_11:
      (*(a3 + 120))(a2, a3);
      goto LABEL_12;
    }

    v26 = *(a3 + 96);
    v27 = lazy protocol witness table accessor for type UInt32 and conformance UInt32(v21, v22, v23);
    v26(&v39, v34, v27, a2, a3);
    v28 = (*(*(*(a3 + 32) + 8) + 16))(v8, v20, a2);
    v17 = *(v37 + 8);
    v17(v8, a2);
    if ((v28 & 1) == 0)
    {
LABEL_12:
      v32 = v38;
      v30 = (*(a3 + 120))(a2, a3);
      result = (*(v37 + 8))(v32, a2);
      v31 = 0;
      goto LABEL_13;
    }
  }

  result = (v17)(v38, a2);
  v30 = 0;
  v31 = 1;
LABEL_13:
  v33 = v36;
  *v36 = v30;
  *(v33 + 4) = v31;
  return result;
}

unsigned int *protocol witness for static Numeric.* infix(_:_:) in conformance UInt32@<X0>(unsigned int *result@<X0>, unsigned int *a2@<X1>, _DWORD *a3@<X8>)
{
  v3 = *result * *a2;
  if ((v3 & 0xFFFFFFFF00000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *a3 = v3;
  }

  return result;
}

unint64_t static UInt32.* infix(_:_:)(unsigned int a1, unsigned int a2)
{
  result = a1 * a2;
  if ((result & 0xFFFFFFFF00000000) != 0)
  {
    __break(1u);
  }

  return result;
}

_DWORD *protocol witness for static Numeric.*= infix(_:_:) in conformance UInt32(_DWORD *result, unsigned int *a2)
{
  v2 = *result * *a2;
  if ((v2 & 0xFFFFFFFF00000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *result = v2;
  }

  return result;
}

_DWORD *protocol witness for Strideable.distance(to:) in conformance UInt32@<X0>(_DWORD *result@<X0>, uint64_t *a2@<X8>)
{
  v3 = (*result - *v2);
  if (*result < *v2)
  {
    v3 = -(*v2 - *result);
  }

  *a2 = v3;
  return result;
}

unint64_t *protocol witness for Strideable.advanced(by:) in conformance UInt32@<X0>(unint64_t *result@<X0>, unsigned int *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  if ((*result & 0x8000000000000000) == 0)
  {
    if (HIDWORD(v3))
    {
      goto LABEL_10;
    }

    v5 = __CFADD__(v4, v3);
    v4 += v3;
    if (!v5)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  v6 = -v3;
  if (HIDWORD(v6))
  {
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v5 = v4 >= v6;
  v4 -= v6;
  if (!v5)
  {
    __break(1u);
    return result;
  }

LABEL_9:
  *a2 = v4;
  return result;
}

_DWORD *protocol witness for static AdditiveArithmetic.+ infix(_:_:) in conformance UInt32@<X0>(_DWORD *result@<X0>, _DWORD *a2@<X1>, _DWORD *a3@<X8>)
{
  if (__CFADD__(*result, *a2))
  {
    __break(1u);
  }

  else
  {
    *a3 = *result + *a2;
  }

  return result;
}

_DWORD *protocol witness for static AdditiveArithmetic.+= infix(_:_:) in conformance UInt32(_DWORD *result, _DWORD *a2)
{
  if (__CFADD__(*result, *a2))
  {
    __break(1u);
  }

  else
  {
    *result += *a2;
  }

  return result;
}

_DWORD *protocol witness for static AdditiveArithmetic.- infix(_:_:) in conformance UInt32@<X0>(_DWORD *result@<X0>, _DWORD *a2@<X1>, _DWORD *a3@<X8>)
{
  if (*result < *a2)
  {
    __break(1u);
  }

  else
  {
    *a3 = *result - *a2;
  }

  return result;
}

_DWORD *protocol witness for static AdditiveArithmetic.-= infix(_:_:) in conformance UInt32(_DWORD *result, _DWORD *a2)
{
  if (*result < *a2)
  {
    __break(1u);
  }

  else
  {
    *result -= *a2;
  }

  return result;
}

uint64_t UInt32._toCustomAnyHashable()@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22_IntegerAnyHashableBoxVys6UInt32VGMd, _ss22_IntegerAnyHashableBoxVys6UInt32VGMR);
  *(a2 + 24) = result;
  *(a2 + 32) = &protocol witness table for _IntegerAnyHashableBox<A>;
  *a2 = a1;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance UInt32@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22_IntegerAnyHashableBoxVys6UInt32VGMd, _ss22_IntegerAnyHashableBoxVys6UInt32VGMR);
  *(a1 + 24) = result;
  *(a1 + 32) = &protocol witness table for _IntegerAnyHashableBox<A>;
  *a1 = v3;
  return result;
}

uint64_t Int32.init(_:)(__n128 a1)
{
  if ((a1.n128_u16[0] & 0x7FFFu) >= 0x7C00)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return *a1.n128_u16;
}

unint64_t Int32.init(exactly:)(__n128 a1)
{
  v2 = truncl(*a1.n128_u16) != *a1.n128_u16 || (a1.n128_u16[0] & 0x7FFFu) > 0x7BFF;
  v3 = *a1.n128_u16;
  if (v2)
  {
    v3 = 0;
  }

  return v3 | (v2 << 32);
}

Swift::Int32 __swiftcall Int32.init(_:)(Swift::Float a1)
{
  if ((LODWORD(a1) & 0x7FFFFFFFu) >= 0x7F800000 || a1 <= -2147500000.0 || a1 >= 2147500000.0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a1;
}

Swift::Int32_optional __swiftcall Int32.init(exactly:)(Swift::Float exactly)
{
  v1 = exactly <= -2147500000.0;
  if (exactly >= 2147500000.0)
  {
    v1 = 1;
  }

  if (truncf(exactly) != exactly)
  {
    v1 = 1;
  }

  v2 = exactly;
  if (v1)
  {
    v2 = 0;
  }

  return (v2 | (v1 << 32));
}

Swift::Int32 __swiftcall Int32.init(_:)(Swift::Double a1)
{
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000 || a1 <= -2147483650.0 || a1 >= 2147483650.0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a1;
}

Swift::Int32_optional __swiftcall Int32.init(exactly:)(Swift::Double exactly)
{
  v1 = exactly <= -2147483650.0;
  if (exactly >= 2147483650.0)
  {
    v1 = 1;
  }

  if (trunc(exactly) != exactly)
  {
    v1 = 1;
  }

  v2 = exactly;
  if (v1)
  {
    v2 = 0;
  }

  return (v2 | (v1 << 32));
}

_DWORD *static Int32.-= infix(_:_:)(_DWORD *result, int a2)
{
  if (__OFSUB__(*result, a2))
  {
    __break(1u);
  }

  else
  {
    *result -= a2;
  }

  return result;
}

int *static Int32.*= infix(_:_:)(int *result, int a2)
{
  v2 = *result * a2;
  if (v2 == v2)
  {
    *result = v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

int *static Int32./= infix(_:_:)(int *result, int a2)
{
  if (!a2 || (v2 = *result, a2 == -1) && v2 == 0x80000000)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *result = v2 / a2;
  return result;
}

Swift::tuple_partialValue_Int32_overflow_Bool __swiftcall Int32.addingReportingOverflow(_:)(Swift::Int32 a1)
{
  v2 = v1 + a1;
  result.overflow = v1;
  result.partialValue = v2;
  return result;
}

Swift::tuple_partialValue_Int32_overflow_Bool __swiftcall Int32.subtractingReportingOverflow(_:)(Swift::Int32 a1)
{
  v2 = v1 - a1;
  result.overflow = v1;
  result.partialValue = v2;
  return result;
}

Swift::tuple_partialValue_Int32_overflow_Bool __swiftcall Int32.multipliedReportingOverflow(by:)(Swift::Int32 by)
{
  v2 = v1 * by;
  result.overflow = v1;
  result.partialValue = v2;
  return result;
}

Swift::tuple_partialValue_Int32_overflow_Bool __swiftcall Int32.dividedReportingOverflow(by:)(Swift::Int32 by)
{
  if (by)
  {
    if (by == -1 && v1 == 0x80000000)
    {
      v1 = 0x80000000;
    }

    else
    {
      v1 /= by;
    }
  }

  v2 = v1;
  result.overflow = v1;
  result.partialValue = v2;
  return result;
}

Swift::tuple_partialValue_Int32_overflow_Bool __swiftcall Int32.remainderReportingOverflow(dividingBy:)(Swift::Int32 dividingBy)
{
  if (dividingBy)
  {
    if (dividingBy == -1 && v1 == 0x80000000)
    {
      v1 = 0;
    }

    else
    {
      v1 %= dividingBy;
    }
  }

  v2 = v1;
  result.overflow = v1;
  result.partialValue = v2;
  return result;
}

int *static Int32.%= infix(_:_:)(int *result, int a2)
{
  if (!a2 || (v2 = *result, a2 == -1) && v2 == 0x80000000)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *result = v2 % a2;
  return result;
}

uint64_t Int32.nonzeroBitCount.getter(__int32 a1, int8x8_t a2)
{
  a2.i32[0] = a1;
  v2 = vcnt_s8(a2);
  v2.i16[0] = vaddlv_u8(v2);
  return v2.u32[0];
}

Swift::Int __swiftcall Int32.Words.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

Swift::Int __swiftcall Int32.Words.index(before:)(Swift::Int before)
{
  v1 = __OFSUB__(before, 1);
  result = before - 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t Int32.Words.subscript.getter(uint64_t a1, int a2)
{
  if (a1 < 0 || a1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a2;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance Int32.Words(void *a1, uint64_t *a2))()
{
  if (swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc(0x30, 0xEE43uLL);
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = Int32.Words.subscript.read(v4, *a2);
  v5[4] = v7;
  v5[5] = v6;
  return protocol witness for Collection.subscript.read in conformance UInt8.Words;
}

uint64_t (*Int32.Words.subscript.read(uint64_t a1, uint64_t a2))()
{
  if (a2 < 0 || a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return _swift_displayCrashMessage;
}

void *protocol witness for Collection.subscript.getter in conformance UInt32.Words@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  if ((*result & 0x8000000000000000) != 0 || (v3 = result[1], v3 >= 2))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v4 = *v2;
  *a2 = *result;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  return result;
}

uint64_t Int32.magnitude.getter(uint64_t result)
{
  if (result >= 0)
  {
    return result;
  }

  else
  {
    return -result;
  }
}

Swift::tuple_high_Int32_low_UInt32 __swiftcall Int32.multipliedFullWidth(by:)(Swift::Int32 by)
{
  v2 = __ROR8__(v1 * by, 32);
  result.low = v1;
  result.high = v2;
  return result;
}

Swift::tuple_quotient_Int32_remainder_Int32 __swiftcall Int32.dividingFullWidth(_:)(Swift::tuple_quotient_Int32_remainder_Int32 result)
{
  if (!v1 || v1 == -1 && (result.remainder | (__PAIR64__(v2, result.quotient) << 32)) == 0x8000000000000000 || (v3 = (result.remainder | (__PAIR64__(v2, result.quotient) << 32)) / v1, v3 != v3))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  result.quotient = v3;
  return result;
}

BOOL protocol witness for FixedWidthInteger.addingReportingOverflow(_:) in conformance Int32(_DWORD *a1, _DWORD *a2)
{
  v3 = __OFADD__(*v2, *a2);
  *a1 = *v2 + *a2;
  return v3;
}

BOOL protocol witness for FixedWidthInteger.subtractingReportingOverflow(_:) in conformance Int32(_DWORD *a1, _DWORD *a2)
{
  v3 = __OFSUB__(*v2, *a2);
  *a1 = *v2 - *a2;
  return v3;
}

BOOL protocol witness for FixedWidthInteger.multipliedReportingOverflow(by:) in conformance Int32(_DWORD *a1, int *a2)
{
  v3 = *v2 * *a2;
  *a1 = v3;
  return v3 != v3;
}

uint64_t protocol witness for FixedWidthInteger.dividedReportingOverflow(by:) in conformance Int32(signed int *a1, int *a2)
{
  v3 = *a2;
  v4 = *v2;
  if (*a2)
  {
    if (v3 == -1 && v4 == 0x80000000)
    {
      v6 = 1;
      v4 = 0x80000000;
    }

    else
    {
      v6 = 0;
      v4 /= v3;
    }
  }

  else
  {
    v6 = 1;
  }

  *a1 = v4;
  return v6;
}

uint64_t protocol witness for FixedWidthInteger.remainderReportingOverflow(dividingBy:) in conformance Int32(_DWORD *a1, int *a2)
{
  v3 = *a2;
  v4 = *v2;
  if (!*a2)
  {
    goto LABEL_9;
  }

  if (v3 == -1 && v4 == 0x80000000)
  {
    v4 = 0;
LABEL_9:
    v6 = 1;
    goto LABEL_7;
  }

  v6 = 0;
  v4 %= v3;
LABEL_7:
  *a1 = v4;
  return v6;
}

_DWORD *protocol witness for FixedWidthInteger.multipliedFullWidth(by:) in conformance Int32(_DWORD *result, _DWORD *a2, int *a3)
{
  v4 = *v3 * *a3;
  *result = HIDWORD(v4);
  *a2 = v4;
  return result;
}

Swift::Int32 protocol witness for FixedWidthInteger.dividingFullWidth(_:) in conformance Int32(Swift::Int32 *a1, _DWORD *a2, _DWORD *a3, _DWORD *a4)
{
  result = Int32.dividingFullWidth(_:)(__PAIR64__(*a4, *a3)).quotient;
  *a1 = result;
  *a2 = v7;
  return result;
}

uint64_t _ss6UInt32Vs17FixedWidthIntegerssACP15nonzeroBitCountSivgTW_0()
{
  v1 = vcnt_s8(*v0);
  v1.i16[0] = vaddlv_u8(v1);
  return v1.u32[0];
}

_DWORD *protocol witness for _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:) in conformance Int32@<X0>(_DWORD *result@<X0>, unint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  if (a2 >> 8 <= 0x20)
  {
    *a3 = *result;
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

uint64_t protocol witness for BinaryInteger.init<A>(_:) in conformance UInt32@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, const char *a4@<X3>, uint64_t (*a5)(void)@<X5>, _DWORD *a6@<X8>)
{
  v12 = a5();
  static FixedWidthInteger._convert<A>(from:)(&v41, a1, a4, a2, v12, a3);
  if ((v41 & 0x100000000) != 0)
  {
    v40 = v6;
    v41 = static String._createEmpty(withInitialCapacity:)(80);
    v42 = v15;
    TypeName = swift_getTypeName(a2, 0);
    if ((v17 & 0x8000000000000000) == 0)
    {
      v18 = TypeName;
      v19 = v17;
      v20 = validateUTF8(_:)(TypeName, v17);
      v24 = v20 < 0 ? repairUTF8(_:firstKnownBrokenRange:)(v18, v19, v21, v22) : specialized static String._uncheckedFromUTF8(_:isASCII:)(v18, v19, v20 & 1, v23);
      v26 = v25;
      String.write(_:)(*&v24);
      v26;
      v27._object = 0x800000018066D440;
      v27._countAndFlagsBits = 0xD00000000000001ELL;
      String.write(_:)(v27);
      v28 = swift_getTypeName(v40, 0);
      if ((v29 & 0x8000000000000000) == 0)
      {
        v30 = v28;
        v31 = v29;
        v32 = validateUTF8(_:)(v28, v29);
        if (v32 < 0)
        {
          v36 = repairUTF8(_:firstKnownBrokenRange:)(v30, v31, v33, v34);
        }

        else
        {
          v36 = specialized static String._uncheckedFromUTF8(_:isASCII:)(v30, v31, v32 & 1, v35);
        }

        v38 = v37;
        String.write(_:)(*&v36);
        v38;
        v39._countAndFlagsBits = 0xD00000000000002ELL;
        v39._object = 0x800000018066D460;
        String.write(_:)(v39);
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v41, v42, "Swift/Integers.swift", 0x14uLL, 2, 0xAB4uLL);
      }
    }

    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v13 = v41;
  result = (*(*(a2 - 1) + 8))(a1, a2);
  *a6 = v13;
  return result;
}

uint64_t protocol witness for BinaryInteger.init<A>(_:) in conformance Int32@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _DWORD *a6@<X8>)
{
  v37 = a4;
  v38 = a5;
  v40 = a6;
  v9 = *(*(a3 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v9, a2, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v11 = v10;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v36 - v13;
  v41 = *(a2 - 1);
  MEMORY[0x1EEE9AC00](v12);
  v39 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = *(a3 + 64);
  v16 = v42(a2, a3);
  v17 = *(a3 + 128);
  if ((v16 & 1) != 0 && v17(a2, a3) >= 33)
  {
    v36 = v9;
    v43 = 0x80000000;
    v18 = v42;
    if (v42(a2, a3))
    {
      if (v17(a2, a3) < 32)
      {
LABEL_13:
        (*(a3 + 120))(a2, a3);
        goto LABEL_14;
      }
    }

    else
    {
      v19 = v18(a2, a3);
      v20 = v17(a2, a3);
      if ((v19 & 1) == 0)
      {
        if (v20 >= 32)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }

      if (v20 <= 32)
      {
        v23 = v36;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v36, a2, v11, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v11, AssociatedConformanceWitness);
        v25 = v39;
        (*(v23 + 3))(v14, a2, v23);
        v26 = (*(*(*(a3 + 32) + 8) + 16))(a1, v25, a2);
        (*(v41 + 8))(v25, a2);
        if (v26)
        {
          goto LABEL_18;
        }

        goto LABEL_13;
      }
    }

    v21 = v39;
    (*(a3 + 96))(&v43, v37, v38, a2, a3);
    v22 = (*(*(*(a3 + 32) + 8) + 16))(a1, v21, a2);
    (*(v41 + 8))(v21, a2);
    if (v22)
    {
      goto LABEL_18;
    }
  }

LABEL_14:
  v27 = v17(a2, a3);
  v29 = v41;
  v28 = v42;
  if (v27 > 32 || v17(a2, a3) == 32 && (v28(a2, a3) & 1) == 0)
  {
    v44 = 0x7FFFFFFF;
    v30 = v28(a2, a3);
    v31 = v17(a2, a3);
    if (v30)
    {
      if (v31 > 32)
      {
        goto LABEL_17;
      }
    }

    else if (v31 > 31)
    {
LABEL_17:
      v32 = v39;
      (*(a3 + 96))(&v44, v37, v38, a2, a3);
      v33 = (*(*(*(a3 + 32) + 8) + 16))(v32, a1, a2);
      (*(v29 + 8))(v32, a2);
      if ((v33 & 1) == 0)
      {
        goto LABEL_24;
      }

LABEL_18:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    (*(a3 + 120))(a2, a3);
  }

LABEL_24:
  v34 = (*(a3 + 120))(a2, a3);
  result = (*(v29 + 8))(a1, a2);
  *v40 = v34;
  return result;
}

uint64_t protocol witness for BinaryInteger.init<A>(truncatingIfNeeded:) in conformance UInt32@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _DWORD *a4@<X8>)
{
  v7 = (*(a3 + 120))(a2, a3);
  result = (*(*(a2 - 8) + 8))(a1, a2);
  *a4 = v7;
  return result;
}

_DWORD *protocol witness for static BinaryInteger./ infix(_:_:) in conformance Int32@<X0>(_DWORD *result@<X0>, int *a2@<X1>, int *a3@<X8>)
{
  v3 = *a2;
  if (!*a2 || (*result == 0x80000000 ? (v4 = v3 == -1) : (v4 = 0), v4))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *a3 = *result / v3;
  return result;
}

uint64_t static Int32./ infix(_:_:)(int a1, int a2)
{
  if (!a2 || a1 == 0x80000000 && a2 == -1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return (a1 / a2);
}

int *protocol witness for static BinaryInteger./= infix(_:_:) in conformance Int32(int *result, int *a2)
{
  v2 = *a2;
  if (!*a2 || ((v3 = *result, v2 == -1) ? (v4 = v3 == 0x80000000) : (v4 = 0), v4))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *result = v3 / v2;
  return result;
}

_DWORD *protocol witness for static BinaryInteger.% infix(_:_:) in conformance Int32@<X0>(_DWORD *result@<X0>, int *a2@<X1>, int *a3@<X8>)
{
  v3 = *a2;
  if (!*a2 || (*result == 0x80000000 ? (v4 = v3 == -1) : (v4 = 0), v4))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *a3 = *result % v3;
  return result;
}

uint64_t static Int32.% infix(_:_:)(int a1, int a2)
{
  if (!a2 || a1 == 0x80000000 && a2 == -1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return (a1 % a2);
}

int *protocol witness for static BinaryInteger.%= infix(_:_:) in conformance Int32(int *result, int *a2)
{
  v2 = *a2;
  if (!*a2 || ((v3 = *result, v2 == -1) ? (v4 = v3 == 0x80000000) : (v4 = 0), v4))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *result = v3 % v2;
  return result;
}

uint64_t protocol witness for static BinaryInteger.>> infix<A>(_:_:) in conformance Int32@<X0>(int *a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, int *a5@<X8>)
{
  v103 = a5;
  v98 = *(*(a4 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v98, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v97 = v9;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v96 = &v95 - v11;
  v12 = *(a3 - 1);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v101 = &v95 - v16;
  v17 = *a1;
  v19 = a4 + 64;
  v18 = *(a4 + 64);
  if ((v18(a3, a4) & 1) == 0)
  {
    v33 = v18(a3, a4);
    v102 = *(a4 + 128);
    v34 = v102(a3, a4);
    if (v33)
    {
      v95 = a2;
      v100 = v18;
      if (v34 <= 64)
      {
        v64 = v97;
        v63 = v98;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v98, a3, v97, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        v66 = v96;
        (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v64, AssociatedConformanceWitness);
        v67 = v101;
        (v63[3])(v66, a3, v63);
        a2 = v95;
        LOBYTE(v63) = (*(*(*(a4 + 32) + 8) + 16))(v95, v67, a3);
        result = (*(v12 + 8))(v67, a3);
        if (v63)
        {
          goto LABEL_26;
        }

        result = (*(a4 + 120))(a3, a4);
        v18 = v100;
        if (result < -32)
        {
          goto LABEL_26;
        }

        goto LABEL_11;
      }

      v104 = -32;
      v37 = *(a4 + 96);
      v38 = lazy protocol witness table accessor for type Int and conformance Int(v34, v35, v36);
      v99 = a4 + 64;
      v39 = v101;
      v37(&v104, &type metadata for Int, v38, a3, a4);
      a2 = v95;
      v40 = (*(*(*(a4 + 32) + 8) + 16))(v95, v39, a3);
      v41 = v39;
      v19 = v99;
      result = (*(v12 + 8))(v41, a3);
      v18 = v100;
      if ((v40 & 1) == 0)
      {
        goto LABEL_11;
      }

LABEL_26:
      v55 = 0;
      goto LABEL_48;
    }

    if (v34 >= 64)
    {
      goto LABEL_11;
    }

LABEL_10:
    result = (*(a4 + 120))(a3, a4);
    if (result >= -32)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

  v102 = *(a4 + 128);
  v20 = v102(a3, a4);
  if (v20 < 64)
  {
    goto LABEL_10;
  }

  v104 = -32;
  v100 = v18;
  v23 = v15;
  v24 = v17;
  v25 = v12;
  v26 = a2;
  v27 = *(a4 + 96);
  v28 = lazy protocol witness table accessor for type Int and conformance Int(v20, v21, v22);
  v99 = a4 + 64;
  v29 = v101;
  v27(&v104, &type metadata for Int, v28, a3, a4);
  a2 = v26;
  v12 = v25;
  v17 = v24;
  v15 = v23;
  v18 = v100;
  v30 = (*(*(*(a4 + 32) + 8) + 16))(a2, v29, a3);
  v31 = v29;
  v19 = v99;
  result = (*(v12 + 8))(v31, a3);
  if (v30)
  {
    goto LABEL_26;
  }

LABEL_11:
  v42 = v18(a3, a4);
  v95 = a4 + 128;
  v43 = v102(a3, a4);
  if (v42)
  {
    if (v43 > 64)
    {
      goto LABEL_13;
    }

LABEL_16:
    result = (*(a4 + 120))(a3, a4);
    if (result > 32)
    {
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  if (v43 < 64)
  {
    goto LABEL_16;
  }

LABEL_13:
  v104 = 32;
  v100 = v18;
  v46 = v15;
  v47 = v17;
  v48 = v12;
  v49 = a2;
  v50 = *(a4 + 96);
  v51 = lazy protocol witness table accessor for type Int and conformance Int(v43, v44, v45);
  v99 = v19;
  v52 = v101;
  v50(&v104, &type metadata for Int, v51, a3, a4);
  a2 = v49;
  v12 = v48;
  v17 = v47;
  v15 = v46;
  v18 = v100;
  v53 = (*(*(*(a4 + 32) + 8) + 16))(v52, a2, a3);
  v54 = v52;
  v19 = v99;
  result = (*(v12 + 8))(v54, a3);
  if (v53)
  {
    goto LABEL_17;
  }

LABEL_18:
  (*(v12 + 16))(v15, a2, a3);
  if ((v18(a3, a4) & 1) == 0 || v102(a3, a4) < 65)
  {
    goto LABEL_35;
  }

  if ((v18(a3, a4) & 1) == 0)
  {
    v68 = v18(a3, a4);
    v69 = v102(a3, a4);
    if ((v68 & 1) == 0)
    {
      if (v69 >= 64)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }

    v100 = v18;
    if (v69 <= 64)
    {
      v76 = v97;
      v77 = v98;
      v78 = swift_getAssociatedConformanceWitness(v98, a3, v97, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v79 = v96;
      (*(v78 + 8))(&qword_18071E0A8, 256, v76, v78);
      v80 = v77;
      v81 = v77[3];
      v82 = v101;
      (v81)(v79, a3, v80);
      LOBYTE(v79) = (*(*(*(a4 + 32) + 8) + 16))(v15, v82, a3);
      (*(v12 + 8))(v82, a3);
      v18 = v100;
      if ((v79 & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v104 = 0x8000000000000000;
      v72 = *(a4 + 96);
      v73 = lazy protocol witness table accessor for type Int and conformance Int(v69, v70, v71);
      v99 = v19;
      v74 = v101;
      v72(&v104, &type metadata for Int, v73, a3, a4);
      v75 = (*(*(*(a4 + 32) + 8) + 16))(v15, v74, a3);
      (*(v12 + 8))(v74, a3);
      v18 = v100;
      if ((v75 & 1) == 0)
      {
        goto LABEL_35;
      }
    }

LABEL_39:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v56 = v102(a3, a4);
  if (v56 < 64)
  {
LABEL_34:
    (*(a4 + 120))(a3, a4);
    goto LABEL_35;
  }

  v104 = 0x8000000000000000;
  v100 = v18;
  v59 = *(a4 + 96);
  v60 = lazy protocol witness table accessor for type Int and conformance Int(v56, v57, v58);
  v99 = v19;
  v61 = v101;
  v59(&v104, &type metadata for Int, v60, a3, a4);
  v18 = v100;
  v62 = (*(*(*(a4 + 32) + 8) + 16))(v15, v61, a3);
  (*(v12 + 8))(v61, a3);
  if (v62)
  {
    goto LABEL_39;
  }

LABEL_35:
  v83 = v102;
  if (v102(a3, a4) <= 64 && (v83(a3, a4) != 64 || (v18(a3, a4) & 1) != 0))
  {
    goto LABEL_45;
  }

  v84 = v18(a3, a4);
  v85 = v83;
  v86 = v84;
  v87 = v85(a3, a4);
  if (v86)
  {
    if (v87 > 64)
    {
      goto LABEL_38;
    }
  }

  else if (v87 >= 64)
  {
LABEL_38:
    v104 = 0x7FFFFFFFFFFFFFFFLL;
    v90 = *(a4 + 96);
    v91 = lazy protocol witness table accessor for type Int and conformance Int(v87, v88, v89);
    v92 = v101;
    v90(&v104, &type metadata for Int, v91, a3, a4);
    v93 = (*(*(*(a4 + 32) + 8) + 16))(v92, v15, a3);
    (*(v12 + 8))(v92, a3);
    if (v93)
    {
      goto LABEL_39;
    }

    goto LABEL_45;
  }

  (*(a4 + 120))(a3, a4);
LABEL_45:
  v94 = (*(a4 + 120))(a3, a4);
  result = (*(v12 + 8))(v15, a3);
  if ((v94 & 0x8000000000000000) != 0)
  {
    if (v94 > 0xFFFFFFFFFFFFFFE0)
    {
      v55 = v17 << -v94;
      goto LABEL_48;
    }

    goto LABEL_26;
  }

  if (v94 < 0x20)
  {
    v55 = v17 >> v94;
    goto LABEL_48;
  }

LABEL_17:
  v55 = v17 >> 31;
LABEL_48:
  *v103 = v55;
  return result;
}

uint64_t protocol witness for static BinaryInteger.>>= infix<A>(_:_:) in conformance Int32(int *a1, uint64_t a2, const char *a3, uint64_t a4)
{
  v106 = *(*(a4 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v106, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v105 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v104 = v102 - v10;
  v11 = *(a3 - 1);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v108 = v102 - v15;
  v16 = (a4 + 64);
  v109 = *(a4 + 64);
  if ((v109(a3, a4) & 1) == 0)
  {
    v31 = v109(a3, a4);
    v17 = *(a4 + 128);
    v32 = v17(a3, a4);
    if (v31)
    {
      v107 = a2;
      v103 = v17;
      if (v32 <= 64)
      {
        v70 = v105;
        v69 = v106;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v106, a3, v105, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        v72 = v104;
        (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v70, AssociatedConformanceWitness);
        v73 = v108;
        (v69[3])(v72, a3, v69);
        a2 = v107;
        LOBYTE(v69) = (*(*(*(a4 + 32) + 8) + 16))(v107, v73, a3);
        result = (*(v11 + 8))(v73, a3);
        if (v69)
        {
          goto LABEL_25;
        }

        result = (*(a4 + 120))(a3, a4);
        v17 = v103;
        if (result < -32)
        {
          goto LABEL_25;
        }

        goto LABEL_11;
      }

      v110 = -32;
      v35 = v14;
      v36 = v11;
      v37 = a1;
      v38 = *(a4 + 96);
      v39 = lazy protocol witness table accessor for type Int and conformance Int(v32, v33, v34);
      v40 = v108;
      v38(&v110, &type metadata for Int, v39, a3, a4);
      a1 = v37;
      v11 = v36;
      v14 = v35;
      v41 = v107;
      v42 = (*(*(*(a4 + 32) + 8) + 16))(v107, v40, a3);
      v43 = v40;
      v16 = (a4 + 64);
      a2 = v41;
      result = (*(v11 + 8))(v43, a3);
      v17 = v103;
      if ((v42 & 1) == 0)
      {
        goto LABEL_11;
      }

LABEL_25:
      v68 = 0;
      goto LABEL_47;
    }

    if (v32 >= 64)
    {
      goto LABEL_11;
    }

LABEL_10:
    result = (*(a4 + 120))(a3, a4);
    if (result >= -32)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

  v17 = *(a4 + 128);
  v18 = v17(a3, a4);
  if (v18 < 64)
  {
    goto LABEL_10;
  }

  v110 = -32;
  v107 = a2;
  v21 = v17;
  v22 = v14;
  v23 = v11;
  v24 = a1;
  v25 = *(a4 + 96);
  v26 = lazy protocol witness table accessor for type Int and conformance Int(v18, v19, v20);
  v103 = (a4 + 64);
  v27 = v108;
  v25(&v110, &type metadata for Int, v26, a3, a4);
  a1 = v24;
  v11 = v23;
  v14 = v22;
  v17 = v21;
  a2 = v107;
  v28 = (*(*(*(a4 + 32) + 8) + 16))(v107, v27, a3);
  v29 = v27;
  v16 = v103;
  result = (*(v11 + 8))(v29, a3);
  if (v28)
  {
    goto LABEL_25;
  }

LABEL_11:
  v44 = v109(a3, a4);
  v102[1] = a4 + 128;
  v45 = v17(a3, a4);
  if (v44)
  {
    if (v45 > 64)
    {
      goto LABEL_13;
    }

LABEL_21:
    result = (*(a4 + 120))(a3, a4);
    if (result <= 32)
    {
      goto LABEL_14;
    }

LABEL_22:
    v68 = *a1 >> 31;
    goto LABEL_47;
  }

  if (v45 < 64)
  {
    goto LABEL_21;
  }

LABEL_13:
  v110 = 32;
  v107 = a2;
  v48 = v17;
  v49 = v14;
  v50 = v11;
  v51 = a1;
  v52 = *(a4 + 96);
  v53 = lazy protocol witness table accessor for type Int and conformance Int(v45, v46, v47);
  v103 = v16;
  v54 = v108;
  v52(&v110, &type metadata for Int, v53, a3, a4);
  a1 = v51;
  v11 = v50;
  v14 = v49;
  v17 = v48;
  a2 = v107;
  v55 = (*(*(*(a4 + 32) + 8) + 16))(v54, v107, a3);
  v56 = v54;
  v16 = v103;
  result = (*(v11 + 8))(v56, a3);
  if (v55)
  {
    goto LABEL_22;
  }

LABEL_14:
  (*(v11 + 16))(v14, a2, a3);
  if ((v109(a3, a4) & 1) == 0 || v17(a3, a4) < 65)
  {
    goto LABEL_34;
  }

  if ((v109(a3, a4) & 1) == 0)
  {
    v74 = v109(a3, a4);
    v75 = v17(a3, a4);
    if ((v74 & 1) == 0)
    {
      if (v75 >= 64)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }

    v103 = v17;
    if (v75 <= 64)
    {
      v86 = v105;
      v85 = v106;
      v87 = swift_getAssociatedConformanceWitness(v106, a3, v105, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v88 = v104;
      (*(v87 + 8))(&qword_18071E0A8, 256, v86, v87);
      v89 = v108;
      (v85[3])(v88, a3, v85);
      LOBYTE(v85) = (*(*(*(a4 + 32) + 8) + 16))(v14, v89, a3);
      (*(v11 + 8))(v89, a3);
      v17 = v103;
      if ((v85 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v110 = 0x8000000000000000;
      v78 = v14;
      v79 = v11;
      v80 = a1;
      v81 = *(a4 + 96);
      v82 = lazy protocol witness table accessor for type Int and conformance Int(v75, v76, v77);
      v83 = v108;
      v81(&v110, &type metadata for Int, v82, a3, a4);
      a1 = v80;
      v11 = v79;
      v14 = v78;
      v84 = (*(*(*(a4 + 32) + 8) + 16))(v78, v83, a3);
      (*(v11 + 8))(v83, a3);
      v17 = v103;
      if ((v84 & 1) == 0)
      {
        goto LABEL_34;
      }
    }

LABEL_38:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v57 = v17(a3, a4);
  if (v57 < 64)
  {
LABEL_33:
    (*(a4 + 120))(a3, a4);
    goto LABEL_34;
  }

  v110 = 0x8000000000000000;
  v60 = v17;
  v61 = v14;
  v62 = v11;
  v63 = a1;
  v64 = *(a4 + 96);
  v65 = lazy protocol witness table accessor for type Int and conformance Int(v57, v58, v59);
  v103 = v16;
  v66 = v108;
  v64(&v110, &type metadata for Int, v65, a3, a4);
  a1 = v63;
  v11 = v62;
  v14 = v61;
  v17 = v60;
  v67 = (*(*(*(a4 + 32) + 8) + 16))(v14, v66, a3);
  (*(v11 + 8))(v66, a3);
  if (v67)
  {
    goto LABEL_38;
  }

LABEL_34:
  if (v17(a3, a4) <= 64 && (v17(a3, a4) != 64 || (v109(a3, a4) & 1) != 0))
  {
    goto LABEL_44;
  }

  v90 = v109(a3, a4);
  v91 = v17(a3, a4);
  if (v90)
  {
    if (v91 > 64)
    {
      goto LABEL_37;
    }
  }

  else if (v91 >= 64)
  {
LABEL_37:
    v110 = 0x7FFFFFFFFFFFFFFFLL;
    v94 = v14;
    v95 = a1;
    v96 = *(a4 + 96);
    v97 = lazy protocol witness table accessor for type Int and conformance Int(v91, v92, v93);
    v98 = v108;
    v96(&v110, &type metadata for Int, v97, a3, a4);
    a1 = v95;
    v14 = v94;
    v99 = (*(*(*(a4 + 32) + 8) + 16))(v98, v94, a3);
    (*(v11 + 8))(v98, a3);
    if (v99)
    {
      goto LABEL_38;
    }

    goto LABEL_44;
  }

  (*(a4 + 120))(a3, a4);
LABEL_44:
  v100 = (*(a4 + 120))(a3, a4);
  result = (*(v11 + 8))(v14, a3);
  v101 = *a1;
  if ((v100 & 0x8000000000000000) != 0)
  {
    if (v100 > 0xFFFFFFFFFFFFFFE0)
    {
      v68 = v101 << -v100;
      goto LABEL_47;
    }

    goto LABEL_25;
  }

  if (v100 >= 0x20)
  {
    v68 = v101 >> 31;
  }

  else
  {
    v68 = v101 >> v100;
  }

LABEL_47:
  *a1 = v68;
  return result;
}

uint64_t protocol witness for static BinaryInteger.<< infix<A>(_:_:) in conformance Int32@<X0>(int *a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, int *a5@<X8>)
{
  v103 = a5;
  v98 = *(*(a4 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v98, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v97 = v9;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v96 = &v95 - v11;
  v12 = *(a3 - 1);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v101 = &v95 - v16;
  v17 = *a1;
  v19 = a4 + 64;
  v18 = *(a4 + 64);
  if (v18(a3, a4))
  {
    v102 = *(a4 + 128);
    v20 = v102(a3, a4);
    if (v20 >= 64)
    {
      v104 = -32;
      v100 = v18;
      v33 = v15;
      v34 = v17;
      v35 = v12;
      v36 = a2;
      v37 = *(a4 + 96);
      v38 = lazy protocol witness table accessor for type Int and conformance Int(v20, v21, v22);
      v99 = a4 + 64;
      v39 = v101;
      v37(&v104, &type metadata for Int, v38, a3, a4);
      a2 = v36;
      v12 = v35;
      v17 = v34;
      v15 = v33;
      v18 = v100;
      v40 = (*(*(*(a4 + 32) + 8) + 16))(a2, v39, a3);
      v41 = v39;
      v19 = v99;
      result = (*(v12 + 8))(v41, a3);
      if (v40)
      {
        goto LABEL_16;
      }
    }

    else
    {
      result = (*(a4 + 120))(a3, a4);
      if (result <= -33)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
    v24 = v18(a3, a4);
    v102 = *(a4 + 128);
    v25 = v102(a3, a4);
    if (v24)
    {
      v95 = a2;
      v100 = v18;
      if (v25 <= 64)
      {
        v43 = v97;
        v42 = v98;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v98, a3, v97, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        v45 = v96;
        (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v43, AssociatedConformanceWitness);
        v46 = v101;
        (v42[3])(v45, a3, v42);
        a2 = v95;
        LOBYTE(v42) = (*(*(*(a4 + 32) + 8) + 16))(v95, v46, a3);
        result = (*(v12 + 8))(v46, a3);
        if (v42)
        {
          goto LABEL_16;
        }

        result = (*(a4 + 120))(a3, a4);
        v18 = v100;
        if (result < -32)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v104 = -32;
        v28 = *(a4 + 96);
        v29 = lazy protocol witness table accessor for type Int and conformance Int(v25, v26, v27);
        v99 = a4 + 64;
        v30 = v101;
        v28(&v104, &type metadata for Int, v29, a3, a4);
        a2 = v95;
        v31 = (*(*(*(a4 + 32) + 8) + 16))(v95, v30, a3);
        v32 = v30;
        v19 = v99;
        result = (*(v12 + 8))(v32, a3);
        v18 = v100;
        if (v31)
        {
          goto LABEL_16;
        }
      }
    }

    else if (v25 < 64)
    {
      result = (*(a4 + 120))(a3, a4);
      if (result < -32)
      {
        goto LABEL_16;
      }
    }
  }

  v48 = v18(a3, a4);
  v95 = a4 + 128;
  v49 = v102(a3, a4);
  if (v48)
  {
    if (v49 > 64)
    {
      goto LABEL_19;
    }
  }

  else if (v49 >= 64)
  {
LABEL_19:
    v104 = 32;
    v100 = v18;
    v52 = v15;
    v53 = v17;
    v54 = v12;
    v55 = a2;
    v56 = *(a4 + 96);
    v57 = lazy protocol witness table accessor for type Int and conformance Int(v49, v50, v51);
    v99 = v19;
    v58 = v101;
    v56(&v104, &type metadata for Int, v57, a3, a4);
    a2 = v55;
    v12 = v54;
    v17 = v53;
    v15 = v52;
    v18 = v100;
    v59 = (*(*(*(a4 + 32) + 8) + 16))(v58, a2, a3);
    v60 = v58;
    v19 = v99;
    result = (*(v12 + 8))(v60, a3);
    if (v59)
    {
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  result = (*(a4 + 120))(a3, a4);
  if (result > 32)
  {
LABEL_23:
    v47 = 0;
    goto LABEL_51;
  }

LABEL_24:
  (*(v12 + 16))(v15, a2, a3);
  if ((v18(a3, a4) & 1) == 0 || v102(a3, a4) < 65)
  {
    goto LABEL_38;
  }

  if ((v18(a3, a4) & 1) == 0)
  {
    v68 = v18(a3, a4);
    v69 = v102(a3, a4);
    if ((v68 & 1) == 0)
    {
      if (v69 >= 64)
      {
        goto LABEL_38;
      }

      goto LABEL_37;
    }

    v100 = v18;
    if (v69 <= 64)
    {
      v76 = v97;
      v77 = v98;
      v78 = swift_getAssociatedConformanceWitness(v98, a3, v97, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v79 = v96;
      (*(v78 + 8))(&qword_18071E0A8, 256, v76, v78);
      v80 = v77;
      v81 = v77[3];
      v82 = v101;
      (v81)(v79, a3, v80);
      LOBYTE(v79) = (*(*(*(a4 + 32) + 8) + 16))(v15, v82, a3);
      (*(v12 + 8))(v82, a3);
      v18 = v100;
      if ((v79 & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v104 = 0x8000000000000000;
      v72 = *(a4 + 96);
      v73 = lazy protocol witness table accessor for type Int and conformance Int(v69, v70, v71);
      v99 = v19;
      v74 = v101;
      v72(&v104, &type metadata for Int, v73, a3, a4);
      v75 = (*(*(*(a4 + 32) + 8) + 16))(v15, v74, a3);
      (*(v12 + 8))(v74, a3);
      v18 = v100;
      if ((v75 & 1) == 0)
      {
        goto LABEL_38;
      }
    }

LABEL_42:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v61 = v102(a3, a4);
  if (v61 < 64)
  {
LABEL_37:
    (*(a4 + 120))(a3, a4);
    goto LABEL_38;
  }

  v104 = 0x8000000000000000;
  v100 = v18;
  v64 = *(a4 + 96);
  v65 = lazy protocol witness table accessor for type Int and conformance Int(v61, v62, v63);
  v99 = v19;
  v66 = v101;
  v64(&v104, &type metadata for Int, v65, a3, a4);
  v18 = v100;
  v67 = (*(*(*(a4 + 32) + 8) + 16))(v15, v66, a3);
  (*(v12 + 8))(v66, a3);
  if (v67)
  {
    goto LABEL_42;
  }

LABEL_38:
  v83 = v102;
  if (v102(a3, a4) <= 64 && (v83(a3, a4) != 64 || (v18(a3, a4) & 1) != 0))
  {
    goto LABEL_48;
  }

  v84 = v18(a3, a4);
  v85 = v83;
  v86 = v84;
  v87 = v85(a3, a4);
  if (v86)
  {
    if (v87 > 64)
    {
      goto LABEL_41;
    }
  }

  else if (v87 >= 64)
  {
LABEL_41:
    v104 = 0x7FFFFFFFFFFFFFFFLL;
    v90 = *(a4 + 96);
    v91 = lazy protocol witness table accessor for type Int and conformance Int(v87, v88, v89);
    v92 = v101;
    v90(&v104, &type metadata for Int, v91, a3, a4);
    v93 = (*(*(*(a4 + 32) + 8) + 16))(v92, v15, a3);
    (*(v12 + 8))(v92, a3);
    if (v93)
    {
      goto LABEL_42;
    }

    goto LABEL_48;
  }

  (*(a4 + 120))(a3, a4);
LABEL_48:
  v94 = (*(a4 + 120))(a3, a4);
  result = (*(v12 + 8))(v15, a3);
  if ((v94 & 0x8000000000000000) == 0)
  {
    if (v94 < 0x20)
    {
      v47 = v17 << v94;
      goto LABEL_51;
    }

    goto LABEL_23;
  }

  if (v94 > 0xFFFFFFFFFFFFFFE0)
  {
    v47 = v17 >> -v94;
    goto LABEL_51;
  }

LABEL_16:
  v47 = v17 >> 31;
LABEL_51:
  *v103 = v47;
  return result;
}

uint64_t protocol witness for static BinaryInteger.<<= infix<A>(_:_:) in conformance Int32(int *a1, uint64_t a2, const char *a3, uint64_t a4)
{
  v106 = *(*(a4 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v106, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v105 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v104 = v102 - v10;
  v11 = *(a3 - 1);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v108 = v102 - v15;
  v16 = (a4 + 64);
  v109 = *(a4 + 64);
  if (v109(a3, a4))
  {
    v17 = *(a4 + 128);
    v18 = v17(a3, a4);
    if (v18 >= 64)
    {
      v110 = -32;
      v107 = a2;
      v21 = v17;
      v22 = v14;
      v23 = v11;
      v24 = a1;
      v25 = *(a4 + 96);
      v26 = lazy protocol witness table accessor for type Int and conformance Int(v18, v19, v20);
      v103 = (a4 + 64);
      v27 = v108;
      v25(&v110, &type metadata for Int, v26, a3, a4);
      a1 = v24;
      v11 = v23;
      v14 = v22;
      v17 = v21;
      a2 = v107;
      v28 = (*(*(*(a4 + 32) + 8) + 16))(v107, v27, a3);
      v29 = v27;
      v16 = v103;
      result = (*(v11 + 8))(v29, a3);
      if ((v28 & 1) == 0)
      {
        goto LABEL_14;
      }

LABEL_13:
      v49 = *a1 >> 31;
      goto LABEL_48;
    }

LABEL_12:
    result = (*(a4 + 120))(a3, a4);
    if (result >= -32)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v31 = v109(a3, a4);
  v17 = *(a4 + 128);
  v32 = v17(a3, a4);
  if (v31)
  {
    v107 = a2;
    v103 = v17;
    if (v32 <= 64)
    {
      v45 = v105;
      v44 = v106;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v106, a3, v105, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v47 = v104;
      (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v45, AssociatedConformanceWitness);
      v48 = v108;
      (v44[3])(v47, a3, v44);
      a2 = v107;
      LOBYTE(v44) = (*(*(*(a4 + 32) + 8) + 16))(v107, v48, a3);
      result = (*(v11 + 8))(v48, a3);
      v17 = v103;
      if (v44)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    v110 = -32;
    v35 = v14;
    v36 = v11;
    v37 = a1;
    v38 = *(a4 + 96);
    v39 = lazy protocol witness table accessor for type Int and conformance Int(v32, v33, v34);
    v40 = v108;
    v38(&v110, &type metadata for Int, v39, a3, a4);
    a1 = v37;
    v11 = v36;
    v14 = v35;
    v41 = v107;
    v42 = (*(*(*(a4 + 32) + 8) + 16))(v107, v40, a3);
    v43 = v40;
    v16 = (a4 + 64);
    a2 = v41;
    result = (*(v11 + 8))(v43, a3);
    v17 = v103;
    if (v42)
    {
      goto LABEL_13;
    }
  }

  else if (v32 < 64)
  {
    goto LABEL_12;
  }

LABEL_14:
  v50 = v109(a3, a4);
  v102[1] = a4 + 128;
  v51 = v17(a3, a4);
  if (v50)
  {
    if (v51 > 64)
    {
      goto LABEL_16;
    }
  }

  else if (v51 >= 64)
  {
LABEL_16:
    v110 = 32;
    v107 = a2;
    v54 = v17;
    v55 = v14;
    v56 = v11;
    v57 = a1;
    v58 = *(a4 + 96);
    v59 = lazy protocol witness table accessor for type Int and conformance Int(v51, v52, v53);
    v103 = v16;
    v60 = v108;
    v58(&v110, &type metadata for Int, v59, a3, a4);
    a1 = v57;
    v11 = v56;
    v14 = v55;
    v17 = v54;
    a2 = v107;
    v61 = (*(*(*(a4 + 32) + 8) + 16))(v60, v107, a3);
    v62 = v60;
    v16 = v103;
    result = (*(v11 + 8))(v62, a3);
    if (v61)
    {
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  result = (*(a4 + 120))(a3, a4);
  if (result > 32)
  {
LABEL_20:
    v49 = 0;
    goto LABEL_48;
  }

LABEL_21:
  (*(v11 + 16))(v14, a2, a3);
  if ((v109(a3, a4) & 1) == 0 || v17(a3, a4) < 65)
  {
    goto LABEL_35;
  }

  if ((v109(a3, a4) & 1) == 0)
  {
    v74 = v109(a3, a4);
    v75 = v17(a3, a4);
    if ((v74 & 1) == 0)
    {
      if (v75 >= 64)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }

    v103 = v17;
    if (v75 <= 64)
    {
      v86 = v105;
      v85 = v106;
      v87 = swift_getAssociatedConformanceWitness(v106, a3, v105, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v88 = v104;
      (*(v87 + 8))(&qword_18071E0A8, 256, v86, v87);
      v89 = v108;
      (v85[3])(v88, a3, v85);
      LOBYTE(v85) = (*(*(*(a4 + 32) + 8) + 16))(v14, v89, a3);
      (*(v11 + 8))(v89, a3);
      v17 = v103;
      if ((v85 & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v110 = 0x8000000000000000;
      v78 = v14;
      v79 = v11;
      v80 = a1;
      v81 = *(a4 + 96);
      v82 = lazy protocol witness table accessor for type Int and conformance Int(v75, v76, v77);
      v83 = v108;
      v81(&v110, &type metadata for Int, v82, a3, a4);
      a1 = v80;
      v11 = v79;
      v14 = v78;
      v84 = (*(*(*(a4 + 32) + 8) + 16))(v78, v83, a3);
      (*(v11 + 8))(v83, a3);
      v17 = v103;
      if ((v84 & 1) == 0)
      {
        goto LABEL_35;
      }
    }

LABEL_39:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v63 = v17(a3, a4);
  if (v63 < 64)
  {
LABEL_34:
    (*(a4 + 120))(a3, a4);
    goto LABEL_35;
  }

  v110 = 0x8000000000000000;
  v66 = v17;
  v67 = v14;
  v68 = v11;
  v69 = a1;
  v70 = *(a4 + 96);
  v71 = lazy protocol witness table accessor for type Int and conformance Int(v63, v64, v65);
  v103 = v16;
  v72 = v108;
  v70(&v110, &type metadata for Int, v71, a3, a4);
  a1 = v69;
  v11 = v68;
  v14 = v67;
  v17 = v66;
  v73 = (*(*(*(a4 + 32) + 8) + 16))(v14, v72, a3);
  (*(v11 + 8))(v72, a3);
  if (v73)
  {
    goto LABEL_39;
  }

LABEL_35:
  if (v17(a3, a4) <= 64 && (v17(a3, a4) != 64 || (v109(a3, a4) & 1) != 0))
  {
    goto LABEL_45;
  }

  v90 = v109(a3, a4);
  v91 = v17(a3, a4);
  if (v90)
  {
    if (v91 > 64)
    {
      goto LABEL_38;
    }
  }

  else if (v91 >= 64)
  {
LABEL_38:
    v110 = 0x7FFFFFFFFFFFFFFFLL;
    v94 = v14;
    v95 = a1;
    v96 = *(a4 + 96);
    v97 = lazy protocol witness table accessor for type Int and conformance Int(v91, v92, v93);
    v98 = v108;
    v96(&v110, &type metadata for Int, v97, a3, a4);
    a1 = v95;
    v14 = v94;
    v99 = (*(*(*(a4 + 32) + 8) + 16))(v98, v94, a3);
    (*(v11 + 8))(v98, a3);
    if (v99)
    {
      goto LABEL_39;
    }

    goto LABEL_45;
  }

  (*(a4 + 120))(a3, a4);
LABEL_45:
  v100 = (*(a4 + 120))(a3, a4);
  result = (*(v11 + 8))(v14, a3);
  v101 = *a1;
  if ((v100 & 0x8000000000000000) == 0)
  {
    if (v100 < 0x20)
    {
      v49 = v101 << v100;
      goto LABEL_48;
    }

    goto LABEL_20;
  }

  if (v100 <= 0xFFFFFFFFFFFFFFE0)
  {
    v49 = v101 >> 31;
  }

  else
  {
    v49 = v101 >> -v100;
  }

LABEL_48:
  *a1 = v49;
  return result;
}

uint64_t protocol witness for BinaryInteger.quotientAndRemainder(dividingBy:) in conformance Int32(_DWORD *a1, int *a2, int *a3)
{
  result = specialized BinaryInteger.quotientAndRemainder(dividingBy:)(a2, *a3, *v3);
  *a1 = result;
  return result;
}

void protocol witness for LosslessStringConvertible.init(_:) in conformance Int32(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = HIBYTE(a2) & 0xF;
  v6 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {
    a2;
    v34 = 0;
    LOBYTE(v33) = 1;
    goto LABEL_46;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v37[0] = a1;
      v37[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      v20 = specialized closure #1 in FixedWidthInteger.init<A>(_:radix:)(v37, v5, 10);
      v38 = BYTE4(v20) & 1;
      LODWORD(v16) = v20;
LABEL_42:
      LOBYTE(v33) = v38;
      a2;
      goto LABEL_43;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      if ((a1 & 0xFFFFFFFFFFFFLL) != 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v35 = _StringObject.sharedUTF8.getter(a1, a2);
      v6 = v36;
      v8 = v35;
      if (v6 > 0)
      {
LABEL_9:
        v9 = *v8;
        if (v9 == 43)
        {
          v21 = specialized Collection.subscript.getter(1, v8, v6);
          v25 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v21, v22, v23, v24);
          if (v26)
          {
            LODWORD(v16) = 0;
            if (v25)
            {
              do
              {
                v27 = *v25 - 48;
                if (v27 >= 0xA)
                {
                  goto LABEL_41;
                }

                v28 = 10 * v16;
                LODWORD(v16) = v28 + v27;
                v29 = __OFADD__(v28, v27);
                if (v28 != v28 || v29)
                {
                  goto LABEL_41;
                }

                ++v25;
              }

              while (--v26);
            }

LABEL_40:
            v38 = 0;
            goto LABEL_42;
          }
        }

        else
        {
          if (v9 != 45)
          {
            LODWORD(v16) = 0;
            while (1)
            {
              v30 = *v8 - 48;
              if (v30 >= 0xA)
              {
                goto LABEL_41;
              }

              v31 = 10 * v16;
              LODWORD(v16) = v31 + v30;
              v32 = __OFADD__(v31, v30);
              if (v31 != v31 || v32)
              {
                goto LABEL_41;
              }

              ++v8;
              if (!--v6)
              {
                goto LABEL_40;
              }
            }
          }

          v10 = specialized Collection.subscript.getter(1, v8, v6);
          v14 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v10, v11, v12, v13);
          if (v15)
          {
            LODWORD(v16) = 0;
            if (v14)
            {
              while (1)
              {
                v17 = *v14 - 48;
                if (v17 >= 0xA)
                {
                  break;
                }

                v18 = 10 * v16;
                LODWORD(v16) = v18 - v17;
                v19 = __OFSUB__(v18, v17);
                if (v18 != v18 || v19)
                {
                  break;
                }

                ++v14;
                if (!--v15)
                {
                  goto LABEL_40;
                }
              }

LABEL_41:
              LODWORD(v16) = 0;
              v38 = 1;
              goto LABEL_42;
            }

            goto LABEL_40;
          }
        }

        LODWORD(v16) = 0;
        v38 = 1;
        goto LABEL_42;
      }
    }

    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v16 = specialized _parseInteger<A, B>(ascii:radix:)(a1, a2, 10);
  a2;
  v33 = HIDWORD(v16) & 1;
LABEL_43:
  if (v33)
  {
    v34 = 0;
  }

  else
  {
    v34 = v16;
  }

LABEL_46:
  *a3 = v34;
  *(a3 + 4) = v33 & 1;
}