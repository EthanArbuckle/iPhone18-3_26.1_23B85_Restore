_DWORD *protocol witness for static SignedNumeric.- prefix(_:) in conformance Int32@<X0>(_DWORD *result@<X0>, _DWORD *a2@<X8>)
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

void protocol witness for SignedNumeric.negate() in conformance Int32()
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

uint64_t protocol witness for Numeric.init<A>(exactly:) in conformance Int32@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _DWORD *a5@<X8>)
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
  if ((v15 & 1) == 0 || v16(a2, a3) < 33)
  {
    goto LABEL_15;
  }

  v48 = a1;
  v54 = 0x80000000;
  v17 = v53;
  if (v53(a2, a3))
  {
    a1 = v48;
    v18 = v16(a2, a3);
    if (v18 < 32)
    {
      goto LABEL_14;
    }

LABEL_8:
    v21 = *(a3 + 96);
    v22 = lazy protocol witness table accessor for type Int32 and conformance Int32(v18, v19, v20);
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
    if (v31 <= 32 && (v16(a2, a3) != 32 || (v33(a2, a3) & 1) != 0))
    {
      goto LABEL_26;
    }

    v55 = 0x7FFFFFFF;
    v34 = v33(a2, a3);
    v35 = v16(a2, a3);
    if (v34)
    {
      if (v35 > 32)
      {
        goto LABEL_18;
      }
    }

    else if (v35 > 31)
    {
LABEL_18:
      v38 = *(a3 + 96);
      v39 = lazy protocol witness table accessor for type Int32 and conformance Int32(v35, v36, v37);
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
    if (v18 >= 32)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (v18 > 32)
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
  *(v45 + 4) = v44;
  return result;
}

void protocol witness for Numeric.magnitude.getter in conformance Int32(int *a1@<X8>)
{
  v2 = *v1;
  if (*v1 < 0)
  {
    v2 = -v2;
  }

  *a1 = v2;
}

int *protocol witness for static Numeric.* infix(_:_:) in conformance Int32@<X0>(int *result@<X0>, int *a2@<X1>, _DWORD *a3@<X8>)
{
  v3 = *result * *a2;
  if (v3 == v3)
  {
    *a3 = v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static Int32.* infix(_:_:)(int a1, int a2)
{
  result = a1 * a2;
  if (result != result)
  {
    __break(1u);
  }

  return result;
}

int *protocol witness for static Numeric.*= infix(_:_:) in conformance Int32(int *result, int *a2)
{
  v2 = *result * *a2;
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

int *protocol witness for Strideable.distance(to:) in conformance Int32@<X0>(int *result@<X0>, uint64_t *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  if (((*v2 ^ *result) & 0x80000000) == 0)
  {
    v5 = __OFSUB__(v3, v4);
    v6 = v3 - v4;
    if (!v5)
    {
      *a2 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_15;
  }

  if (v4 >= 0)
  {
    v7 = *v2;
  }

  else
  {
    v7 = -v4;
  }

  if (v3 < 0)
  {
    v3 = -v3;
  }

  v8 = __CFADD__(v7, v3);
  v9 = (v7 + v3);
  if (v8)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    v10 = v9;
  }

  else
  {
    v10 = -v9;
  }

  *a2 = v10;
  return result;
}

void *protocol witness for Strideable.advanced(by:) in conformance Int32@<X0>(void *result@<X0>, _DWORD *a2@<X8>)
{
  v3 = *v2;
  v4 = v3 + *result;
  if (__OFADD__(v3, *result))
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v4 <= 0xFFFFFFFF7FFFFFFFLL || v4 >= 0x80000000)
  {
LABEL_6:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *a2 = v4;
  return result;
}

_DWORD *protocol witness for static AdditiveArithmetic.+ infix(_:_:) in conformance Int32@<X0>(_DWORD *result@<X0>, _DWORD *a2@<X1>, _DWORD *a3@<X8>)
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

uint64_t static Int32.+ infix(_:_:)(int a1, int a2)
{
  v2 = __OFADD__(a1, a2);
  result = (a1 + a2);
  if (v2)
  {
    __break(1u);
  }

  return result;
}

_DWORD *protocol witness for static AdditiveArithmetic.+= infix(_:_:) in conformance Int32(_DWORD *result, _DWORD *a2)
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

_DWORD *protocol witness for static AdditiveArithmetic.- infix(_:_:) in conformance Int32@<X0>(_DWORD *result@<X0>, _DWORD *a2@<X1>, _DWORD *a3@<X8>)
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

_DWORD *protocol witness for static AdditiveArithmetic.-= infix(_:_:) in conformance Int32(_DWORD *result, _DWORD *a2)
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

uint64_t Int32._toCustomAnyHashable()@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22_IntegerAnyHashableBoxVys5Int32VGMd, _ss22_IntegerAnyHashableBoxVys5Int32VGMR);
  *(a2 + 24) = result;
  *(a2 + 32) = &protocol witness table for _IntegerAnyHashableBox<A>;
  *a2 = a1;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance Int32@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22_IntegerAnyHashableBoxVys5Int32VGMd, _ss22_IntegerAnyHashableBoxVys5Int32VGMR);
  *(a1 + 24) = result;
  *(a1 + 32) = &protocol witness table for _IntegerAnyHashableBox<A>;
  *a1 = v3;
  return result;
}

unint64_t UInt64.init(_:)(__n128 a1)
{
  if ((a1.n128_u16[0] & 0x7FFFu) >= 0x7C00 || *a1.n128_u16 <= COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(-1.0)))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return *a1.n128_u16;
}

Swift::UInt64 __swiftcall UInt64.init(_:)(Swift::Float a1)
{
  if ((LODWORD(a1) & 0x7FFFFFFFu) >= 0x7F800000 || a1 <= -1.0 || a1 >= 1.8447e19)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a1;
}

Swift::UInt64 __swiftcall UInt64.init(_:)(Swift::Double a1)
{
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000 || a1 <= -1.0 || a1 >= 1.84467441e19)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a1;
}

void *static UInt64./= infix(_:_:)(void *result, unint64_t a2)
{
  if (!a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *result /= a2;
  return result;
}

void *static UInt64.%= infix(_:_:)(void *result, unint64_t a2)
{
  if (!a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *result %= a2;
  return result;
}

uint64_t UInt64.Words.subscript.getter(uint64_t a1, uint64_t a2)
{
  return UInt64.Words.subscript.getter(a1, a2);
}

{
  if (a1 < 0 || a1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a2;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance UInt64.Words(void *a1, uint64_t *a2))()
{
  if (swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc(0x30, 0x9A62uLL);
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = UInt64.Words.subscript.read(v4, *a2);
  v5[4] = v7;
  v5[5] = v6;
  return protocol witness for Collection.subscript.read in conformance UInt8.Words;
}

uint64_t (*UInt64.Words.subscript.read(uint64_t a1, uint64_t a2))()
{
  if (a2 < 0 || a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return _swift_displayCrashMessage;
}

Swift::tuple_quotient_UInt64_remainder_UInt64 __swiftcall UInt64.dividingFullWidth(_:)(Swift::tuple_high_UInt64_low_UInt64 a1)
{
  v2 = UInt64.dividingFullWidth(_:)(a1.high, a1.low, v1);
  result.remainder = v3;
  result.quotient = v2;
  return result;
}

Swift::UInt64 protocol witness for FixedWidthInteger.dividingFullWidth(_:) in conformance UInt64(Swift::UInt64 *a1, Swift::UInt64 *a2, Swift::tuple_high_UInt64_low_UInt64 *a3)
{
  v6 = UInt64.dividingFullWidth(_:)(*a3);
  result = v6.quotient;
  *a1 = v6.quotient;
  *a2 = v6.remainder;
  return result;
}

void *protocol witness for static BinaryInteger./ infix(_:_:) in conformance UInt64@<X0>(void *result@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if (!*a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *a3 = *result / *a2;
  return result;
}

unint64_t static UInt64./ infix(_:_:)(unint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a1 / a2;
}

void *protocol witness for static BinaryInteger./= infix(_:_:) in conformance UInt64(void *result, void *a2)
{
  if (!*a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *result /= *a2;
  return result;
}

void *protocol witness for static BinaryInteger.% infix(_:_:) in conformance UInt64@<X0>(void *result@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if (!*a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *a3 = *result % *a2;
  return result;
}

unint64_t static UInt64.% infix(_:_:)(unint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a1 % a2;
}

void *protocol witness for static BinaryInteger.%= infix(_:_:) in conformance UInt64(void *result, void *a2)
{
  if (!*a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *result %= *a2;
  return result;
}

unint64_t *protocol witness for BinaryInteger.quotientAndRemainder(dividingBy:) in conformance UInt64(unint64_t *result, unint64_t *a2, unint64_t *a3)
{
  return protocol witness for BinaryInteger.quotientAndRemainder(dividingBy:) in conformance UInt64(result, a2, a3);
}

{
  v4 = *a3;
  if (!*a3)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v5 = *v3 / v4;
  *a2 = *v3 % v4;
  *result = v5;
  return result;
}

uint64_t UInt64._toCustomAnyHashable()@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22_IntegerAnyHashableBoxVys6UInt64VGMd, _ss22_IntegerAnyHashableBoxVys6UInt64VGMR);
  a2[3] = result;
  a2[4] = &protocol witness table for _IntegerAnyHashableBox<A>;
  *a2 = a1;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance UInt64@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22_IntegerAnyHashableBoxVys6UInt64VGMd, _ss22_IntegerAnyHashableBoxVys6UInt64VGMR);
  a1[3] = result;
  a1[4] = &protocol witness table for _IntegerAnyHashableBox<A>;
  *a1 = v3;
  return result;
}

uint64_t Int64.init(_:)(__n128 a1)
{
  if ((a1.n128_u16[0] & 0x7FFFu) >= 0x7C00)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return *a1.n128_u16;
}

Swift::Int64 __swiftcall Int64.init(_:)(Swift::Float a1)
{
  if ((LODWORD(a1) & 0x7FFFFFFFu) >= 0x7F800000 || a1 <= -9.2234e18 || a1 >= 9.2234e18)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a1;
}

Swift::Int64 __swiftcall Int64.init(_:)(Swift::Double a1)
{
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000 || a1 <= -9.22337204e18 || a1 >= 9.22337204e18)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return a1;
}

uint64_t *static Int64./= infix(_:_:)(uint64_t *result, uint64_t a2)
{
  return static Int64./= infix(_:_:)(result, a2);
}

{
  if (!a2 || (v2 = *result, a2 == -1) && v2 == 0x8000000000000000)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *result = v2 / a2;
  return result;
}

uint64_t *static Int64.%= infix(_:_:)(uint64_t *result, uint64_t a2)
{
  return static Int64.%= infix(_:_:)(result, a2);
}

{
  if (!a2 || (v2 = *result, a2 == -1) && v2 == 0x8000000000000000)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *result = v2 % a2;
  return result;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance Int64.Words(void *a1, uint64_t *a2))()
{
  if (swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc(0x30, 0xA486uLL);
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = Int64.Words.subscript.read(v4, *a2);
  v5[4] = v7;
  v5[5] = v6;
  return protocol witness for Collection.subscript.read in conformance UInt8.Words;
}

uint64_t (*Int64.Words.subscript.read(uint64_t a1, uint64_t a2))()
{
  if (a2 < 0 || a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return _swift_displayCrashMessage;
}

Swift::tuple_quotient_Int64_remainder_Int64 __swiftcall Int64.dividingFullWidth(_:)(Swift::tuple_high_Int64_low_UInt64 a1)
{
  v2 = Int64.dividingFullWidth(_:)(a1.high, a1.low, v1);
  result.remainder = v3;
  result.quotient = v2;
  return result;
}

Swift::Int64 protocol witness for FixedWidthInteger.dividingFullWidth(_:) in conformance Int64(Swift::Int64 *a1, Swift::Int64 *a2, Swift::tuple_high_Int64_low_UInt64 *a3)
{
  v6 = Int64.dividingFullWidth(_:)(*a3);
  result = v6.quotient;
  *a1 = v6.quotient;
  *a2 = v6.remainder;
  return result;
}

uint64_t protocol witness for BinaryInteger.init<A>(_:) in conformance UInt64@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, const char *a4@<X3>, uint64_t (*a5)(void)@<X5>, uint64_t *a6@<X8>)
{
  v12 = a5();
  static FixedWidthInteger._convert<A>(from:)(&v41, a1, a4, a2, v12, a3);
  if (v42)
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

void *protocol witness for static BinaryInteger./ infix(_:_:) in conformance Int64@<X0>(void *result@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  return protocol witness for static BinaryInteger./ infix(_:_:) in conformance Int64(result, a2, a3);
}

{
  v3 = *a2;
  if (!*a2 || (*result == 0x8000000000000000 ? (v4 = v3 == -1) : (v4 = 0), v4))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *a3 = *result / v3;
  return result;
}

uint64_t *protocol witness for static BinaryInteger./= infix(_:_:) in conformance Int64(uint64_t *result, uint64_t *a2)
{
  return protocol witness for static BinaryInteger./= infix(_:_:) in conformance Int64(result, a2);
}

{
  v2 = *a2;
  if (!*a2 || ((v3 = *result, v2 == -1) ? (v4 = v3 == 0x8000000000000000) : (v4 = 0), v4))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *result = v3 / v2;
  return result;
}

uint64_t *protocol witness for static BinaryInteger.% infix(_:_:) in conformance Int64@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  return protocol witness for static BinaryInteger.% infix(_:_:) in conformance Int64(result, a2, a3);
}

{
  v3 = *a2;
  if (!*a2 || (*result == 0x8000000000000000 ? (v4 = v3 == -1) : (v4 = 0), v4))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *a3 = *result % v3;
  return result;
}

uint64_t *protocol witness for static BinaryInteger.%= infix(_:_:) in conformance Int64(uint64_t *result, uint64_t *a2)
{
  return protocol witness for static BinaryInteger.%= infix(_:_:) in conformance Int64(result, a2);
}

{
  v2 = *a2;
  if (!*a2 || ((v3 = *result, v2 == -1) ? (v4 = v3 == 0x8000000000000000) : (v4 = 0), v4))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *result = v3 % v2;
  return result;
}

uint64_t protocol witness for static BinaryInteger.>> infix<A>(_:_:) in conformance Int64@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
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
        if (result < -64)
        {
          goto LABEL_26;
        }

        goto LABEL_11;
      }

      v104 = -64;
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
    if (result >= -64)
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

  v104 = -64;
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
    if (result > 64)
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
  v104 = 64;
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
    if (v94 > 0xFFFFFFFFFFFFFFC0)
    {
      v55 = v17 << -v94;
      goto LABEL_48;
    }

    goto LABEL_26;
  }

  if (v94 < 0x40)
  {
    v55 = v17 >> v94;
    goto LABEL_48;
  }

LABEL_17:
  v55 = v17 >> 63;
LABEL_48:
  *v103 = v55;
  return result;
}

uint64_t protocol witness for static BinaryInteger.>>= infix<A>(_:_:) in conformance Int64(uint64_t *a1, uint64_t a2, const char *a3, uint64_t a4)
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
        if (result < -64)
        {
          goto LABEL_25;
        }

        goto LABEL_11;
      }

      v110 = -64;
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
    if (result >= -64)
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

  v110 = -64;
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
    if (result <= 64)
    {
      goto LABEL_14;
    }

LABEL_22:
    v68 = *a1 >> 63;
    goto LABEL_47;
  }

  if (v45 < 64)
  {
    goto LABEL_21;
  }

LABEL_13:
  v110 = 64;
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
    if (v100 > 0xFFFFFFFFFFFFFFC0)
    {
      v68 = v101 << -v100;
      goto LABEL_47;
    }

    goto LABEL_25;
  }

  if (v100 >= 0x40)
  {
    v68 = v101 >> 63;
  }

  else
  {
    v68 = v101 >> v100;
  }

LABEL_47:
  *a1 = v68;
  return result;
}

uint64_t protocol witness for static BinaryInteger.<< infix<A>(_:_:) in conformance Int64@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
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
    if (v20 < 64)
    {
      result = (*(a4 + 120))(a3, a4);
      if (result > -65)
      {
        goto LABEL_17;
      }

LABEL_16:
      v47 = v17 >> 63;
      goto LABEL_50;
    }

    v104 = -64;
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
        if (result < -64)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v104 = -64;
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
      if (result < -64)
      {
        goto LABEL_16;
      }
    }
  }

LABEL_17:
  v48 = v18(a3, a4);
  v95 = a4 + 128;
  v49 = v102(a3, a4);
  if (v48)
  {
    if (v49 > 64)
    {
      goto LABEL_19;
    }

LABEL_27:
    result = (*(a4 + 120))(a3, a4);
    if (result <= 64)
    {
      goto LABEL_20;
    }

LABEL_28:
    v47 = 0;
    goto LABEL_50;
  }

  if (v49 < 64)
  {
    goto LABEL_27;
  }

LABEL_19:
  v104 = 64;
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
    goto LABEL_28;
  }

LABEL_20:
  (*(v12 + 16))(v15, a2, a3);
  if ((v18(a3, a4) & 1) == 0 || v102(a3, a4) < 65)
  {
    goto LABEL_37;
  }

  if ((v18(a3, a4) & 1) == 0)
  {
    v68 = v18(a3, a4);
    v69 = v102(a3, a4);
    if ((v68 & 1) == 0)
    {
      if (v69 >= 64)
      {
        goto LABEL_37;
      }

      goto LABEL_36;
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
        goto LABEL_36;
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
        goto LABEL_37;
      }
    }

LABEL_41:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v61 = v102(a3, a4);
  if (v61 < 64)
  {
LABEL_36:
    (*(a4 + 120))(a3, a4);
    goto LABEL_37;
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
    goto LABEL_41;
  }

LABEL_37:
  v83 = v102;
  if (v102(a3, a4) <= 64 && (v83(a3, a4) != 64 || (v18(a3, a4) & 1) != 0))
  {
    goto LABEL_47;
  }

  v84 = v18(a3, a4);
  v85 = v83;
  v86 = v84;
  v87 = v85(a3, a4);
  if (v86)
  {
    if (v87 > 64)
    {
      goto LABEL_40;
    }

LABEL_46:
    (*(a4 + 120))(a3, a4);
    goto LABEL_47;
  }

  if (v87 < 64)
  {
    goto LABEL_46;
  }

LABEL_40:
  v104 = 0x7FFFFFFFFFFFFFFFLL;
  v90 = *(a4 + 96);
  v91 = lazy protocol witness table accessor for type Int and conformance Int(v87, v88, v89);
  v92 = v101;
  v90(&v104, &type metadata for Int, v91, a3, a4);
  v93 = (*(*(*(a4 + 32) + 8) + 16))(v92, v15, a3);
  (*(v12 + 8))(v92, a3);
  if (v93)
  {
    goto LABEL_41;
  }

LABEL_47:
  v94 = (*(a4 + 120))(a3, a4);
  result = (*(v12 + 8))(v15, a3);
  if ((v94 & 0x8000000000000000) != 0)
  {
    if (v94 > 0xFFFFFFFFFFFFFFC0)
    {
      v47 = v17 >> -v94;
      goto LABEL_50;
    }

    goto LABEL_16;
  }

  v47 = v17 << v94;
  if (v94 >= 0x40)
  {
    v47 = 0;
  }

LABEL_50:
  *v103 = v47;
  return result;
}

uint64_t protocol witness for static BinaryInteger.<<= infix<A>(_:_:) in conformance Int64(uint64_t *a1, uint64_t a2, const char *a3, uint64_t a4)
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
      v110 = -64;
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
      v49 = *a1 >> 63;
      goto LABEL_47;
    }

LABEL_12:
    result = (*(a4 + 120))(a3, a4);
    if (result >= -64)
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

    v110 = -64;
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

LABEL_19:
    result = (*(a4 + 120))(a3, a4);
    if (result > 64)
    {
      goto LABEL_17;
    }

    goto LABEL_20;
  }

  if (v51 < 64)
  {
    goto LABEL_19;
  }

LABEL_16:
  v110 = 64;
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
LABEL_17:
    v49 = 0;
    goto LABEL_47;
  }

LABEL_20:
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

  v63 = v17(a3, a4);
  if (v63 < 64)
  {
LABEL_33:
    (*(a4 + 120))(a3, a4);
    goto LABEL_34;
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
    if (v100 <= 0xFFFFFFFFFFFFFFC0)
    {
      v49 = v101 >> 63;
    }

    else
    {
      v49 = v101 >> -v100;
    }
  }

  else
  {
    v49 = v101 << v100;
    if (v100 >= 0x40)
    {
      v49 = 0;
    }
  }

LABEL_47:
  *a1 = v49;
  return result;
}

uint64_t protocol witness for BinaryInteger.quotientAndRemainder(dividingBy:) in conformance Int64(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = specialized BinaryInteger.quotientAndRemainder(dividingBy:)(a2, *a3, *v3);
  *a1 = result;
  return result;
}

uint64_t *protocol witness for Strideable.distance(to:) in conformance Int64@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  if (((*v2 ^ *result) & 0x8000000000000000) == 0)
  {
    v5 = __OFSUB__(v3, v4);
    v4 = v3 - v4;
    if (!v5)
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  if (v4 >= 0)
  {
    v6 = v4;
  }

  else
  {
    v6 = -v4;
  }

  if (v3 < 0)
  {
    v3 = -v3;
  }

  v7 = __CFADD__(v6, v3);
  v8 = v6 + v3;
  if (v7)
  {
    __break(1u);
LABEL_17:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v8 < 0)
  {
    goto LABEL_17;
  }

  if (v4 < 0)
  {
    v4 = v8;
  }

  else
  {
    v4 = -v8;
  }

LABEL_15:
  *a2 = v4;
  return result;
}

uint64_t Int64._toCustomAnyHashable()@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22_IntegerAnyHashableBoxVys5Int64VGMd, _ss22_IntegerAnyHashableBoxVys5Int64VGMR);
  a2[3] = result;
  a2[4] = &protocol witness table for _IntegerAnyHashableBox<A>;
  *a2 = a1;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance Int64@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22_IntegerAnyHashableBoxVys5Int64VGMd, _ss22_IntegerAnyHashableBoxVys5Int64VGMR);
  a1[3] = result;
  a1[4] = &protocol witness table for _IntegerAnyHashableBox<A>;
  *a1 = v3;
  return result;
}

unint64_t UInt.init(exactly:)(__n128 a1)
{
  v1 = truncl(*a1.n128_u16) != *a1.n128_u16;
  if (*a1.n128_u16 <= COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(-1.0)) || (a1.n128_u16[0] & 0x7FFFu) > 0x7BFF || v1)
  {
    return 0;
  }

  else
  {
    return *a1.n128_u16;
  }
}

Swift::UInt_optional __swiftcall UInt.init(exactly:)(Swift::Float exactly)
{
  v1 = exactly <= -1.0;
  if (exactly >= 1.8447e19)
  {
    v1 = 1;
  }

  v2 = truncf(exactly) != exactly || v1;
  if (v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = exactly;
  }

  result.value = v3;
  result.is_nil = v2;
  return result;
}

Swift::UInt_optional __swiftcall UInt.init(exactly:)(Swift::Double exactly)
{
  v1 = exactly <= -1.0;
  if (exactly >= 1.84467441e19)
  {
    v1 = 1;
  }

  v2 = trunc(exactly) != exactly || v1;
  if (v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = exactly;
  }

  result.value = v3;
  result.is_nil = v2;
  return result;
}

void *static UInt.+= infix(_:_:)(void *result, uint64_t a2)
{
  if (__CFADD__(*result, a2))
  {
    __break(1u);
  }

  else
  {
    *result += a2;
  }

  return result;
}

unint64_t *static UInt.-= infix(_:_:)(unint64_t *result, unint64_t a2)
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

unint64_t *static UInt.*= infix(_:_:)(unint64_t *result, unint64_t a2)
{
  if (is_mul_ok(*result, a2))
  {
    *result *= a2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *static UInt./= infix(_:_:)(void *result, unint64_t a2)
{
  if (!a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *result /= a2;
  return result;
}

Swift::tuple_partialValue_UInt_overflow_Bool __swiftcall UInt.subtractingReportingOverflow(_:)(Swift::UInt a1)
{
  v2 = v1 >= a1;
  v3 = v1 - a1;
  v4 = !v2;
  result.partialValue = v3;
  result.overflow = v4;
  return result;
}

Swift::tuple_partialValue_UInt_overflow_Bool __swiftcall UInt.multipliedReportingOverflow(by:)(Swift::UInt by)
{
  v2 = v1 * by;
  v3 = !is_mul_ok(v1, by);
  v4 = v2;
  result.partialValue = v4;
  result.overflow = v3;
  return result;
}

Swift::tuple_partialValue_UInt_overflow_Bool __swiftcall UInt.dividedReportingOverflow(by:)(Swift::UInt by)
{
  v2 = v1;
  if (by)
  {
    v2 = v1 / by;
  }

  v3 = by == 0;
  v4 = v2;
  result.partialValue = v4;
  result.overflow = v3;
  return result;
}

Swift::tuple_partialValue_UInt_overflow_Bool __swiftcall UInt.remainderReportingOverflow(dividingBy:)(Swift::UInt dividingBy)
{
  v2 = v1;
  if (dividingBy)
  {
    v2 = v1 % dividingBy;
  }

  v3 = dividingBy == 0;
  v4 = v2;
  result.partialValue = v4;
  result.overflow = v3;
  return result;
}

void *static UInt.%= infix(_:_:)(void *result, unint64_t a2)
{
  if (!a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *result %= a2;
  return result;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance UInt.Words(void *a1, uint64_t *a2))()
{
  if (swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc(0x30, 0xE6D7uLL);
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = UInt.Words.subscript.read(v4, *a2);
  v5[4] = v7;
  v5[5] = v6;
  return protocol witness for Collection.subscript.read in conformance UInt8.Words;
}

uint64_t (*UInt.Words.subscript.read(uint64_t a1, uint64_t a2))()
{
  if (a2 < 0 || a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return _swift_displayCrashMessage;
}

Swift::tuple_high_UInt_low_UInt __swiftcall UInt.multipliedFullWidth(by:)(Swift::UInt by)
{
  v2 = v1 * by;
  v3 = (v1 * by) >> 64;
  v4 = v2;
  result.low = v4;
  result.high = v3;
  return result;
}

Swift::tuple_quotient_UInt_remainder_UInt __swiftcall UInt.dividingFullWidth(_:)(Swift::tuple_high_UInt_low_UInt a1)
{
  v2 = UInt64.dividingFullWidth(_:)(a1.high, a1.low, v1);
  result.remainder = v3;
  result.quotient = v2;
  return result;
}

uint64_t UInt64.dividingFullWidth(_:)(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (!a3 || a1 >= a3)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return __udivti3();
}

BOOL _ss6UInt64Vs17FixedWidthIntegerssACP23addingReportingOverflowyx12partialValue_Sb8overflowtxFTW_0(void *a1, void *a2)
{
  v3 = __CFADD__(*v2, *a2);
  *a1 = *v2 + *a2;
  return v3;
}

BOOL _ss6UInt64Vs17FixedWidthIntegerssACP28subtractingReportingOverflowyx12partialValue_Sb8overflowtxFTW_0(void *a1, void *a2)
{
  v3 = *v2 < *a2;
  *a1 = *v2 - *a2;
  return v3;
}

BOOL _ss6UInt64Vs17FixedWidthIntegerssACP27multipliedReportingOverflow2byx12partialValue_Sb8overflowtx_tFTW_0(void *a1, unint64_t *a2)
{
  v3 = !is_mul_ok(*v2, *a2);
  *a1 = *v2 * *a2;
  return v3;
}

BOOL _ss6UInt64Vs17FixedWidthIntegerssACP24dividedReportingOverflow2byx12partialValue_Sb8overflowtx_tFTW_0(void *a1, unint64_t *a2)
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

BOOL _ss6UInt64Vs17FixedWidthIntegerssACP26remainderReportingOverflow10dividingByx12partialValue_Sb8overflowtx_tFTW_0(void *a1, unint64_t *a2)
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

void *_ss6UInt64Vs17FixedWidthIntegerssACP014multipliedFullC02byx4high_9MagnitudeQz3lowtx_tFTW_0(void *result, void *a2, void *a3)
{
  v4 = *v3 * *a3;
  *result = (*v3 * *a3) >> 64;
  *a2 = v4;
  return result;
}

Swift::UInt protocol witness for FixedWidthInteger.dividingFullWidth(_:) in conformance UInt(Swift::UInt *a1, Swift::UInt *a2, Swift::tuple_high_UInt_low_UInt *a3)
{
  v6 = UInt.dividingFullWidth(_:)(*a3);
  result = v6.quotient;
  *a1 = v6.quotient;
  *a2 = v6.remainder;
  return result;
}

uint64_t *_ss6UInt64Vs35_ExpressibleByBuiltinIntegerLiteralssACP08_builtineF0xBI_tcfCTW_0@<X0>(uint64_t *result@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = 0;
  if (a2 >> 9 <= 0x20 && (a2 & 1) == 0)
  {
    v3 = *result;
  }

  *a3 = v3;
  return result;
}

uint64_t _ss6UInt64VSzsSzyxqd__cSzRd__lufCTW_0@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
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
  if (v21(a2, a3) <= 63)
  {
    goto LABEL_12;
  }

  v38 = -1;
  v22 = v17(a2, a3);
  v23 = v20;
  v24 = v21(a2, a3);
  if ((v22 & 1) == 0)
  {
    if (v24 < 65)
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

  if (v24 > 64)
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

unint64_t _ss6UInt64VSzsSz16_binaryLogarithmSiyFTW_0()
{
  if (!*v0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return __clz(*v0) ^ 0x3F;
}

void *protocol witness for static BinaryInteger./ infix(_:_:) in conformance UInt@<X0>(void *result@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if (!*a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *a3 = *result / *a2;
  return result;
}

void *protocol witness for static BinaryInteger./= infix(_:_:) in conformance UInt(void *result, void *a2)
{
  if (!*a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *result /= *a2;
  return result;
}

void *protocol witness for static BinaryInteger.% infix(_:_:) in conformance UInt@<X0>(void *result@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if (!*a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *a3 = *result % *a2;
  return result;
}

void *protocol witness for static BinaryInteger.%= infix(_:_:) in conformance UInt(void *result, void *a2)
{
  if (!*a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *result %= *a2;
  return result;
}

uint64_t protocol witness for static BinaryInteger.>> infix<A>(_:_:) in conformance UInt64@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, unint64_t *a5@<X8>)
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
      v112 = -64;
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
  }

  else
  {
    v33 = v111(a3, a4);
    v19 = *(a4 + 128);
    v34 = v19(a3, a4);
    if (v33)
    {
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
        if (result < -64)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v112 = -64;
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

      goto LABEL_11;
    }

    if (v34 >= 64)
    {
      goto LABEL_11;
    }
  }

  result = (*(a4 + 120))(a3, a4);
  if (result < -64)
  {
    goto LABEL_25;
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

    goto LABEL_16;
  }

  if (v47 < 64)
  {
LABEL_16:
    result = (*(a4 + 120))(a3, a4);
    if (result <= 64)
    {
      goto LABEL_17;
    }

LABEL_25:
    v75 = 0;
    goto LABEL_47;
  }

LABEL_13:
  v112 = 64;
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
  if (v19(a3, a4) <= 64 && (v19(a3, a4) != 64 || (v111(a3, a4) & 1) != 0))
  {
    goto LABEL_44;
  }

  v92 = v111(a3, a4);
  v93 = v19(a3, a4);
  if (v92)
  {
    if (v93 > 64)
    {
      goto LABEL_37;
    }

LABEL_43:
    (*(a4 + 120))(a3, a4);
    goto LABEL_44;
  }

  if (v93 < 64)
  {
    goto LABEL_43;
  }

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

LABEL_44:
  v102 = (*(a4 + 120))(a3, a4);
  result = (*(v13 + 8))(v16, a3);
  if ((v102 & 0x8000000000000000) != 0)
  {
    if (v102 > 0xFFFFFFFFFFFFFFC0)
    {
      v75 = v108 << -v102;
      goto LABEL_47;
    }

    goto LABEL_25;
  }

  v75 = v108 >> v102;
  if (v102 >= 0x40)
  {
    v75 = 0;
  }

LABEL_47:
  *a5 = v75;
  return result;
}

uint64_t protocol witness for static BinaryInteger.>>= infix<A>(_:_:) in conformance UInt64(unint64_t *a1, uint64_t a2, const char *a3, uint64_t a4)
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
      v110 = -64;
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
    if (result < -64)
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
    if (result < -64)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v110 = -64;
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
  }

  else if (v45 >= 64)
  {
LABEL_13:
    v110 = 64;
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
    if ((v55 & 1) == 0)
    {
      goto LABEL_17;
    }

LABEL_25:
    v73 = 0;
    goto LABEL_47;
  }

  result = (*(a4 + 120))(a3, a4);
  if (result > 64)
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

LABEL_43:
    (*(a4 + 120))(a3, a4);
    goto LABEL_44;
  }

  if (v91 < 64)
  {
    goto LABEL_43;
  }

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

LABEL_44:
  v100 = (*(a4 + 120))(a3, a4);
  result = (*(v11 + 8))(v14, a3);
  v101 = *a1;
  if ((v100 & 0x8000000000000000) != 0)
  {
    if (v100 >= 0xFFFFFFFFFFFFFFC1)
    {
      v73 = v101 << -v100;
      goto LABEL_47;
    }

    goto LABEL_25;
  }

  v73 = v101 >> v100;
  if (v100 >= 0x40)
  {
    v73 = 0;
  }

LABEL_47:
  *a1 = v73;
  return result;
}

uint64_t protocol witness for static BinaryInteger.<< infix<A>(_:_:) in conformance UInt64@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, unint64_t *a5@<X8>)
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
      v112 = -64;
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
    if (result < -64)
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
    if (result < -64)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v112 = -64;
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
  }

  else if (v47 >= 64)
  {
LABEL_13:
    v112 = 64;
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
    if ((v57 & 1) == 0)
    {
      goto LABEL_17;
    }

LABEL_25:
    v75 = 0;
    goto LABEL_47;
  }

  result = (*(a4 + 120))(a3, a4);
  if (result > 64)
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
  if (v19(a3, a4) <= 64 && (v19(a3, a4) != 64 || (v111(a3, a4) & 1) != 0))
  {
    goto LABEL_44;
  }

  v92 = v111(a3, a4);
  v93 = v19(a3, a4);
  if (v92)
  {
    if (v93 > 64)
    {
      goto LABEL_37;
    }

LABEL_43:
    (*(a4 + 120))(a3, a4);
    goto LABEL_44;
  }

  if (v93 < 64)
  {
    goto LABEL_43;
  }

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

LABEL_44:
  v102 = (*(a4 + 120))(a3, a4);
  result = (*(v13 + 8))(v16, a3);
  if ((v102 & 0x8000000000000000) != 0)
  {
    if (v102 > 0xFFFFFFFFFFFFFFC0)
    {
      v75 = v108 >> -v102;
      goto LABEL_47;
    }

    goto LABEL_25;
  }

  v75 = v108 << v102;
  if (v102 >= 0x40)
  {
    v75 = 0;
  }

LABEL_47:
  *a5 = v75;
  return result;
}

uint64_t protocol witness for static BinaryInteger.<<= infix<A>(_:_:) in conformance UInt64(unint64_t *a1, uint64_t a2, const char *a3, uint64_t a4)
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
      v110 = -64;
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
    if (result < -64)
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
    if (result < -64)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v110 = -64;
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
  }

  else if (v45 >= 64)
  {
LABEL_13:
    v110 = 64;
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
    if ((v55 & 1) == 0)
    {
      goto LABEL_17;
    }

LABEL_25:
    v73 = 0;
    goto LABEL_47;
  }

  result = (*(a4 + 120))(a3, a4);
  if (result > 64)
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

LABEL_43:
    (*(a4 + 120))(a3, a4);
    goto LABEL_44;
  }

  if (v91 < 64)
  {
    goto LABEL_43;
  }

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

LABEL_44:
  v100 = (*(a4 + 120))(a3, a4);
  result = (*(v11 + 8))(v14, a3);
  v101 = *a1;
  if ((v100 & 0x8000000000000000) != 0)
  {
    if (v100 > 0xFFFFFFFFFFFFFFC0)
    {
      v73 = v101 >> -v100;
      goto LABEL_47;
    }

    goto LABEL_25;
  }

  v73 = v101 << v100;
  if (v100 >= 0x40)
  {
    v73 = 0;
  }

LABEL_47:
  *a1 = v73;
  return result;
}

BOOL _ss6UInt64VSzsSz10isMultiple2ofSbx_tFTW_0(void *a1)
{
  v2 = *v1;
  if (*a1)
  {
    v2 %= *a1;
  }

  return v2 == 0;
}

void protocol witness for LosslessStringConvertible.init(_:) in conformance UInt64(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
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
    v36 = 0;
    v35 = 1;
    goto LABEL_47;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v40[0] = a1;
      v40[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      v16 = specialized closure #1 in FixedWidthInteger.init<A>(_:radix:)(v40, v5, 10);
      v22 = v21 & 1;
LABEL_42:
      v41 = v22;
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
      v38 = _StringObject.sharedUTF8.getter(a1, a2);
      v6 = v39;
      v8 = v38;
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
            v16 = 0;
            if (v27)
            {
              while (1)
              {
                v29 = *v27 - 48;
                if (v29 >= 0xA)
                {
                  goto LABEL_41;
                }

                v30 = !is_mul_ok(v16, 0xAuLL);
                v19 = __CFADD__(10 * v16, v29);
                v16 = 10 * v16 + v29;
                v31 = v19;
                if (v30 || v31)
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
            v16 = 0;
            while (1)
            {
              v32 = *v8 - 48;
              if (v32 >= 0xA)
              {
                goto LABEL_41;
              }

              v33 = !is_mul_ok(v16, 0xAuLL);
              v19 = __CFADD__(10 * v16, v32);
              v16 = 10 * v16 + v32;
              v34 = v19;
              if (v33 || v34)
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
            v16 = 0;
            if (v14)
            {
              while (1)
              {
                v17 = *v14 - 48;
                if (v17 >= 0xA)
                {
                  break;
                }

                v18 = !is_mul_ok(v16, 0xAuLL);
                v19 = 10 * v16 >= v17;
                v16 = 10 * v16 - v17;
                v20 = !v19;
                if (v18 || v20)
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
              v16 = 0;
              v22 = 1;
              goto LABEL_42;
            }

LABEL_40:
            v41 = 0;
LABEL_43:
            v35 = v41;
            goto LABEL_44;
          }
        }

        v16 = 0;
        v41 = 1;
        goto LABEL_43;
      }
    }

    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v16 = specialized _parseInteger<A, B>(ascii:radix:)(a1, a2, 10);
  v35 = v37;
LABEL_44:
  a2;
  if (v35)
  {
    v36 = 0;
  }

  else
  {
    v36 = v16;
  }

LABEL_47:
  *a3 = v36;
  *(a3 + 8) = v35 & 1;
}

uint64_t protocol witness for Numeric.init<A>(exactly:) in conformance UInt64@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void)@<X5>, uint64_t *a6@<X8>)
{
  v34 = a5;
  v35 = a4;
  v37 = a6;
  v38 = *(a2 - 1);
  v39 = a1;
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*(v10 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v11, a2, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v13 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v33 - v14;
  v36 = *(a3 + 64);
  if ((v36(a2, a3) & 1) == 0 || (v16 = swift_getAssociatedConformanceWitness(v11, a2, v13, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral), (*(v16 + 8))(&qword_18071E0A8, 256, v13, v16), (*(v11 + 24))(v15, a2, v11), v17 = (*(*(*(a3 + 32) + 8) + 16))(v39, v9, a2), v18 = *(v38 + 8), v18(v9, a2), (v17 & 1) == 0))
  {
    v19 = *(a3 + 128);
    if (v19(a2, a3) < 64)
    {
      goto LABEL_12;
    }

    v40 = -1;
    v20 = v36(a2, a3);
    v21 = v39;
    v22 = v19(a2, a3);
    if (v20)
    {
      if (v22 <= 64)
      {
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v11, a2, v13, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v13, AssociatedConformanceWitness);
        (*(v11 + 24))(v15, a2, v11);
        v24 = (*(*(*(a3 + 32) + 8) + 40))(v21, v9, a2);
        (*(v38 + 8))(v9, a2);
        if ((v24 & 1) == 0)
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      }
    }

    else if (v22 < 65)
    {
LABEL_11:
      (*(a3 + 120))(a2, a3);
      goto LABEL_12;
    }

    v25 = *(a3 + 96);
    v26 = v34();
    v25(&v40, v35, v26, a2, a3);
    v27 = (*(*(*(a3 + 32) + 8) + 16))(v9, v21, a2);
    v18 = *(v38 + 8);
    v18(v9, a2);
    if ((v27 & 1) == 0)
    {
LABEL_12:
      v31 = v39;
      v29 = (*(a3 + 120))(a2, a3);
      result = (*(v38 + 8))(v31, a2);
      v30 = 0;
      goto LABEL_13;
    }
  }

  result = (v18)(v39, a2);
  v29 = 0;
  v30 = 1;
LABEL_13:
  v32 = v37;
  *v37 = v29;
  *(v32 + 8) = v30;
  return result;
}

unint64_t *protocol witness for static Numeric.* infix(_:_:) in conformance UInt64@<X0>(unint64_t *result@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  if (is_mul_ok(*result, *a2))
  {
    *a3 = *result * *a2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t *protocol witness for static Numeric.*= infix(_:_:) in conformance UInt64(unint64_t *result, unint64_t *a2)
{
  if (is_mul_ok(*result, *a2))
  {
    *result *= *a2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t *protocol witness for Strideable.distance(to:) in conformance UInt64@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  v5 = *result - *v2;
  if (*result >= *v2)
  {
    if (*result - *v2 >= 0)
    {
      goto LABEL_5;
    }

LABEL_6:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v4 - v3 < 0)
  {
    goto LABEL_6;
  }

  v5 = v3 - v4;
LABEL_5:
  *a2 = v5;
  return result;
}

uint64_t *protocol witness for Strideable.advanced(by:) in conformance UInt64@<X0>(uint64_t *result@<X0>, unint64_t *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  if ((*result & 0x8000000000000000) == 0)
  {
    v5 = __CFADD__(v4, v3);
    v3 += v4;
    if (!v5)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v6 = -v3;
  v5 = v4 >= v6;
  v3 = v4 - v6;
  if (!v5)
  {
    __break(1u);
    return result;
  }

LABEL_7:
  *a2 = v3;
  return result;
}

void *protocol witness for static AdditiveArithmetic.+ infix(_:_:) in conformance UInt64@<X0>(void *result@<X0>, void *a2@<X1>, void *a3@<X8>)
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

void *protocol witness for static AdditiveArithmetic.+= infix(_:_:) in conformance UInt64(void *result, void *a2)
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

void *protocol witness for static AdditiveArithmetic.- infix(_:_:) in conformance UInt64@<X0>(void *result@<X0>, void *a2@<X1>, void *a3@<X8>)
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

void *protocol witness for static AdditiveArithmetic.-= infix(_:_:) in conformance UInt64(void *result, void *a2)
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

uint64_t UInt._toCustomAnyHashable()@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22_IntegerAnyHashableBoxVySuGMd, _ss22_IntegerAnyHashableBoxVySuGMR);
  a2[3] = result;
  a2[4] = &protocol witness table for _IntegerAnyHashableBox<A>;
  *a2 = a1;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance UInt@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22_IntegerAnyHashableBoxVySuGMd, _ss22_IntegerAnyHashableBoxVySuGMR);
  a1[3] = result;
  a1[4] = &protocol witness table for _IntegerAnyHashableBox<A>;
  *a1 = v3;
  return result;
}

uint64_t Int.init(exactly:)(__n128 a1)
{
  if (truncl(*a1.n128_u16) != *a1.n128_u16 || (a1.n128_u16[0] & 0x7FFFu) > 0x7BFF)
  {
    return 0;
  }

  else
  {
    return *a1.n128_u16;
  }
}

Swift::Int_optional __swiftcall Int.init(exactly:)(Swift::Float exactly)
{
  v1 = exactly <= -9.2234e18;
  if (exactly >= 9.2234e18)
  {
    v1 = 1;
  }

  v2 = truncf(exactly) != exactly || v1;
  if (v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = exactly;
  }

  result.value = v3;
  result.is_nil = v2;
  return result;
}

uint64_t *static Int.*= infix(_:_:)(uint64_t *result, uint64_t a2)
{
  v2 = *result * a2;
  if ((*result * a2) >> 64 == v2 >> 63)
  {
    *result = v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::tuple_partialValue_Int_overflow_Bool __swiftcall Int.addingReportingOverflow(_:)(Swift::Int a1)
{
  v2 = __OFADD__(v1, a1);
  v3 = v1 + a1;
  v4 = v2;
  result.partialValue = v3;
  result.overflow = v4;
  return result;
}

Swift::tuple_partialValue_Int_overflow_Bool __swiftcall Int.subtractingReportingOverflow(_:)(Swift::Int a1)
{
  v2 = __OFSUB__(v1, a1);
  v3 = v1 - a1;
  v4 = v2;
  result.partialValue = v3;
  result.overflow = v4;
  return result;
}

Swift::tuple_partialValue_Int_overflow_Bool __swiftcall Int.dividedReportingOverflow(by:)(Swift::Int by)
{
  v2 = v1;
  if (by)
  {
    if (by == -1 && v1 == 0x8000000000000000)
    {
      v3 = 1;
      v4 = 0x8000000000000000;
    }

    else
    {
      v3 = 0;
      v4 = v2 / by;
    }
  }

  else
  {
    v3 = 1;
    v4 = v2;
  }

  result.partialValue = v4;
  result.overflow = v3;
  return result;
}

Swift::tuple_partialValue_Int_overflow_Bool __swiftcall Int.remainderReportingOverflow(dividingBy:)(Swift::Int dividingBy)
{
  v2 = v1;
  if (dividingBy)
  {
    if (dividingBy == -1 && v1 == 0x8000000000000000)
    {
      v3 = 1;
      v4 = 0;
    }

    else
    {
      v3 = 0;
      v4 = v2 % dividingBy;
    }
  }

  else
  {
    v3 = 1;
    v4 = v2;
  }

  result.partialValue = v4;
  result.overflow = v3;
  return result;
}

Swift::Int __swiftcall Int.Words.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

Swift::Int __swiftcall Int.Words.index(before:)(Swift::Int before)
{
  v1 = __OFSUB__(before, 1);
  result = before - 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance Int.Words(void *a1, uint64_t *a2))()
{
  if (swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc(0x30, 0x96FEuLL);
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = Int.Words.subscript.read(v4, *a2);
  v5[4] = v7;
  v5[5] = v6;
  return protocol witness for Collection.subscript.read in conformance Int.Words;
}

void protocol witness for Collection.subscript.read in conformance UInt8.Words(void *a1)
{
  v1 = *a1;
  (*(*a1 + 40))(*a1);

  free(v1);
}

uint64_t (*Int.Words.subscript.read(uint64_t a1, uint64_t a2))()
{
  if (a2 < 0 || a2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return _swift_displayCrashMessage;
}

void *protocol witness for Collection.subscript.getter in conformance UInt64.Words@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if ((*result & 0x8000000000000000) != 0 || (v3 = result[1], v3 >= 2))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v4 = *v2;
  *a2 = *result;
  a2[1] = v3;
  a2[2] = v4;
  return result;
}

Swift::tuple_high_Int_low_UInt __swiftcall Int.multipliedFullWidth(by:)(Swift::Int by)
{
  v2 = v1 * by;
  v3 = (v1 * by) >> 64;
  v4 = v2;
  result.low = v4;
  result.high = v3;
  return result;
}

Swift::tuple_quotient_Int_remainder_Int __swiftcall Int.dividingFullWidth(_:)(Swift::tuple_high_Int_low_UInt a1)
{
  v2 = Int64.dividingFullWidth(_:)(a1.high, a1.low, v1);
  result.remainder = v3;
  result.quotient = v2;
  return result;
}

uint64_t Int64.dividingFullWidth(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3 || (result = __divti3(), v4 ^ (result >> 63)))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

BOOL _ss5Int64Vs17FixedWidthIntegerssACP23addingReportingOverflowyx12partialValue_Sb8overflowtxFTW_0(void *a1, void *a2)
{
  v3 = __OFADD__(*v2, *a2);
  *a1 = *v2 + *a2;
  return v3;
}

BOOL _ss5Int64Vs17FixedWidthIntegerssACP28subtractingReportingOverflowyx12partialValue_Sb8overflowtxFTW_0(void *a1, void *a2)
{
  v3 = __OFSUB__(*v2, *a2);
  *a1 = *v2 - *a2;
  return v3;
}

BOOL _ss5Int64Vs17FixedWidthIntegerssACP27multipliedReportingOverflow2byx12partialValue_Sb8overflowtx_tFTW_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *v2 * *a2;
  v4 = (*v2 * *a2) >> 64 != v3 >> 63;
  *a1 = v3;
  return v4;
}

uint64_t _ss5Int64Vs17FixedWidthIntegerssACP24dividedReportingOverflow2byx12partialValue_Sb8overflowtx_tFTW_0(int64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2;
  if (*a2)
  {
    if (v3 == -1 && v4 == 0x8000000000000000)
    {
      v6 = 1;
      v4 = 0x8000000000000000;
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

uint64_t _ss5Int64Vs17FixedWidthIntegerssACP26remainderReportingOverflow10dividingByx12partialValue_Sb8overflowtx_tFTW_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2;
  if (!*a2)
  {
    goto LABEL_9;
  }

  if (v3 == -1 && v4 == 0x8000000000000000)
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

void *_ss5Int64Vs17FixedWidthIntegerssACP014multipliedFullC02byx4high_9MagnitudeQz3lowtx_tFTW_0(void *result, uint64_t *a2, uint64_t *a3)
{
  v4 = *v3 * *a3;
  *result = (*v3 * *a3) >> 64;
  *a2 = v4;
  return result;
}

Swift::Int protocol witness for FixedWidthInteger.dividingFullWidth(_:) in conformance Int(Swift::Int *a1, Swift::Int *a2, Swift::tuple_high_Int_low_UInt *a3)
{
  v6 = Int.dividingFullWidth(_:)(*a3);
  result = v6.quotient;
  *a1 = v6.quotient;
  *a2 = v6.remainder;
  return result;
}

void *_ss5Int64Vs35_ExpressibleByBuiltinIntegerLiteralssACP08_builtineF0xBI_tcfCTW_0@<X0>(void *result@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  if (a2 >> 8 <= 0x40)
  {
    *a3 = *result;
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

uint64_t protocol witness for BinaryInteger.init<A>(_:) in conformance Int64@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
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
  if ((v16 & 1) != 0 && v17(a2, a3) >= 65)
  {
    v36 = v9;
    v43 = 0x8000000000000000;
    v18 = v42;
    if (v42(a2, a3))
    {
      if (v17(a2, a3) < 64)
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
        if (v20 >= 64)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }

      if (v20 <= 64)
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
  if (v27 > 64 || v17(a2, a3) == 64 && (v28(a2, a3) & 1) == 0)
  {
    v43 = 0x7FFFFFFFFFFFFFFFLL;
    v30 = v28(a2, a3);
    v31 = v17(a2, a3);
    if (v30)
    {
      if (v31 > 64)
      {
        goto LABEL_17;
      }
    }

    else if (v31 > 63)
    {
LABEL_17:
      v32 = v39;
      (*(a3 + 96))(&v43, v37, v38, a2, a3);
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

uint64_t protocol witness for BinaryInteger.init<A>(truncatingIfNeeded:) in conformance UInt64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = (*(a3 + 120))(a2, a3);
  result = (*(*(a2 - 8) + 8))(a1, a2);
  *a4 = v7;
  return result;
}

unint64_t _ss5Int64VSzsSz16_binaryLogarithmSiyFTW_0()
{
  if (*v0 <= 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return __clz(*v0) ^ 0x3F;
}

uint64_t protocol witness for static BinaryInteger.>> infix<A>(_:_:) in conformance Int@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v58 = a5;
  v59 = a6;
  v60 = a7;
  v55 = *(*(a4 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v55, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v54 = v11;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v53 = &v52 - v13;
  v14 = *(a3 - 1);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v52 - v18;
  v57 = *a1;
  v20 = *(a4 + 64);
  v21 = v20(a3, a4);
  v56 = v17;
  if (v21)
  {
    v22 = *(a4 + 128);
    if (v22(a3, a4) < 64)
    {
      result = (*(a4 + 120))(a3, a4);
      if (result >= -64)
      {
        goto LABEL_18;
      }

LABEL_17:
      v33 = 0;
      v34 = v60;
      goto LABEL_51;
    }

    v61 = -64;
    (*(a4 + 96))(&v61, v58, v59, a3, a4);
    v27 = (*(*(*(a4 + 32) + 8) + 16))(a2, v19, a3);
    v28 = v14;
LABEL_9:
    result = (*(v28 + 8))(v19, a3);
    if (v27)
    {
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  v24 = v14;
  v25 = v20(a3, a4);
  v22 = *(a4 + 128);
  v26 = v22(a3, a4);
  if (v25)
  {
    if (v26 <= 64)
    {
      v52 = v22;
      v29 = v54;
      v30 = v55;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v55, a3, v54, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v32 = v53;
      (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v29, AssociatedConformanceWitness);
      (v30[3])(v32, a3, v30);
      LOBYTE(v29) = (*(*(*(a4 + 32) + 8) + 16))(a2, v19, a3);
      v14 = v24;
      result = (*(v24 + 8))(v19, a3);
      if (v29)
      {
        goto LABEL_17;
      }

      result = (*(a4 + 120))(a3, a4);
      v22 = v52;
      if (result < -64)
      {
        goto LABEL_17;
      }

      goto LABEL_18;
    }

    v61 = -64;
    (*(a4 + 96))(&v61, v58, v59, a3, a4);
    v27 = (*(*(*(a4 + 32) + 8) + 16))(a2, v19, a3);
    v14 = v24;
    v28 = v24;
    goto LABEL_9;
  }

  if (v26 >= 64)
  {
    v14 = v24;
    goto LABEL_18;
  }

  result = (*(a4 + 120))(a3, a4);
  v14 = v24;
  if (result < -64)
  {
    goto LABEL_17;
  }

LABEL_18:
  v35 = v14;
  v36 = v20(a3, a4);
  v52 = (a4 + 128);
  v37 = v22(a3, a4);
  if (v36)
  {
    if (v37 > 64)
    {
      goto LABEL_20;
    }

LABEL_28:
    result = (*(a4 + 120))(a3, a4);
    v39 = v35;
    if (result <= 64)
    {
      goto LABEL_21;
    }

LABEL_29:
    v33 = v57 >> 63;
    v34 = v60;
    goto LABEL_51;
  }

  if (v37 < 64)
  {
    goto LABEL_28;
  }

LABEL_20:
  v61 = 64;
  (*(a4 + 96))(&v61, v58, v59, a3, a4);
  v38 = (*(*(*(a4 + 32) + 8) + 16))(v19, a2, a3);
  v39 = v35;
  result = (*(v35 + 8))(v19, a3);
  if (v38)
  {
    goto LABEL_29;
  }

LABEL_21:
  v40 = v56;
  (*(v39 + 16))(v56, a2, a3);
  if ((v20(a3, a4) & 1) == 0 || v22(a3, a4) < 65)
  {
    goto LABEL_38;
  }

  if ((v20(a3, a4) & 1) == 0)
  {
    v42 = v20(a3, a4);
    v43 = v22(a3, a4);
    if ((v42 & 1) == 0)
    {
      if (v43 >= 64)
      {
        goto LABEL_38;
      }

      goto LABEL_37;
    }

    if (v43 <= 64)
    {
      v45 = v54;
      v46 = swift_getAssociatedConformanceWitness(v55, a3, v54, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v47 = v53;
      (*(v46 + 8))(&qword_18071E0A8, 256, v45, v46);
      (v55[3])(v47, a3);
      LOBYTE(v45) = (*(*(*(a4 + 32) + 8) + 16))(v40, v19, a3);
      (*(v39 + 8))(v19, a3);
      if ((v45 & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v61 = 0x8000000000000000;
      (*(a4 + 96))(&v61, v58, v59, a3, a4);
      v44 = (*(*(*(a4 + 32) + 8) + 16))(v40, v19, a3);
      (*(v39 + 8))(v19, a3);
      if ((v44 & 1) == 0)
      {
        goto LABEL_38;
      }
    }

LABEL_42:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v22(a3, a4) < 64)
  {
LABEL_37:
    (*(a4 + 120))(a3, a4);
    goto LABEL_38;
  }

  v61 = 0x8000000000000000;
  (*(a4 + 96))(&v61, v58, v59, a3, a4);
  v41 = (*(*(*(a4 + 32) + 8) + 16))(v40, v19, a3);
  (*(v39 + 8))(v19, a3);
  if (v41)
  {
    goto LABEL_42;
  }

LABEL_38:
  if (v22(a3, a4) <= 64 && (v22(a3, a4) != 64 || (v20(a3, a4) & 1) != 0))
  {
    goto LABEL_48;
  }

  v48 = v20(a3, a4);
  v49 = v22(a3, a4);
  if (v48)
  {
    if (v49 > 64)
    {
      goto LABEL_41;
    }
  }

  else if (v49 >= 64)
  {
LABEL_41:
    v61 = 0x7FFFFFFFFFFFFFFFLL;
    (*(a4 + 96))(&v61, v58, v59, a3, a4);
    v50 = (*(*(*(a4 + 32) + 8) + 16))(v19, v40, a3);
    (*(v39 + 8))(v19, a3);
    if (v50)
    {
      goto LABEL_42;
    }

    goto LABEL_48;
  }

  (*(a4 + 120))(a3, a4);
LABEL_48:
  v51 = (*(a4 + 120))(a3, a4);
  result = (*(v39 + 8))(v40, a3);
  if ((v51 & 0x8000000000000000) != 0)
  {
    v34 = v60;
    if (v51 <= 0xFFFFFFFFFFFFFFC0)
    {
      v33 = 0;
    }

    else
    {
      v33 = v57 << -v51;
    }
  }

  else
  {
    v34 = v60;
    if (v51 >= 0x40)
    {
      v33 = v57 >> 63;
    }

    else
    {
      v33 = v57 >> v51;
    }
  }

LABEL_51:
  *v34 = v33;
  return result;
}

uint64_t protocol witness for static BinaryInteger.>>= infix<A>(_:_:) in conformance Int(uint64_t *a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v49 = a5;
  v50 = a6;
  v51 = a1;
  v48 = *(*(a4 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v48, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v47 = v9;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v46 = &v44 - v11;
  v52 = *(a3 - 1);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v44 - v15;
  v17 = *(a4 + 64);
  if ((v17(a3, a4) & 1) == 0)
  {
    v19 = v17(a3, a4);
    v18 = *(a4 + 128);
    v20 = v18(a3, a4);
    if ((v19 & 1) == 0)
    {
      if (v20 >= 64)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    if (v20 <= 64)
    {
      v45 = v14;
      v30 = v47;
      v29 = v48;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v48, a3, v47, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v32 = v46;
      (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v30, AssociatedConformanceWitness);
      (v29[3])(v32, a3, v29);
      LOBYTE(v29) = (*(*(*(a4 + 32) + 8) + 16))(a2, v16, a3);
      result = (*(v52 + 8))(v16, a3);
      if (v29)
      {
        goto LABEL_24;
      }

      result = (*(a4 + 120))(a3, a4);
      v14 = v45;
      if (result < -64)
      {
        goto LABEL_24;
      }

      goto LABEL_10;
    }

LABEL_6:
    v53 = -64;
    (*(a4 + 96))(&v53, v49, v50, a3, a4);
    v21 = (*(*(*(a4 + 32) + 8) + 16))(a2, v16, a3);
    result = (*(v52 + 8))(v16, a3);
    if (v21)
    {
      goto LABEL_24;
    }

    goto LABEL_10;
  }

  v18 = *(a4 + 128);
  if (v18(a3, a4) >= 64)
  {
    goto LABEL_6;
  }

LABEL_9:
  result = (*(a4 + 120))(a3, a4);
  if (result < -64)
  {
    goto LABEL_24;
  }

LABEL_10:
  v23 = v17(a3, a4);
  v45 = (a4 + 128);
  v24 = v18(a3, a4);
  if (v23)
  {
    if (v24 > 64)
    {
      goto LABEL_12;
    }

LABEL_19:
    result = (*(a4 + 120))(a3, a4);
    if (result <= 64)
    {
      goto LABEL_13;
    }

    goto LABEL_20;
  }

  if (v24 < 64)
  {
    goto LABEL_19;
  }

LABEL_12:
  v53 = 64;
  (*(a4 + 96))(&v53, v49, v50, a3, a4);
  v25 = (*(*(*(a4 + 32) + 8) + 16))(v16, a2, a3);
  result = (*(v52 + 8))(v16, a3);
  if ((v25 & 1) == 0)
  {
LABEL_13:
    (*(v52 + 16))(v14, a2, a3);
    if ((v17(a3, a4) & 1) != 0 && v18(a3, a4) >= 65)
    {
      if (v17(a3, a4))
      {
        if (v18(a3, a4) < 64)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v33 = v17(a3, a4);
        v34 = v18(a3, a4);
        if ((v33 & 1) == 0)
        {
          if (v34 >= 64)
          {
            goto LABEL_33;
          }

          goto LABEL_32;
        }

        if (v34 <= 64)
        {
          v37 = v47;
          v36 = v48;
          v38 = swift_getAssociatedConformanceWitness(v48, a3, v47, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
          v39 = v46;
          (*(v38 + 8))(&qword_18071E0A8, 256, v37, v38);
          (v36[3])(v39, a3, v36);
          LOBYTE(v36) = (*(*(*(a4 + 32) + 8) + 16))(v14, v16, a3);
          (*(v52 + 8))(v16, a3);
          if ((v36 & 1) == 0)
          {
LABEL_32:
            (*(a4 + 120))(a3, a4);
            goto LABEL_33;
          }

LABEL_37:
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }
      }

      v53 = 0x8000000000000000;
      (*(a4 + 96))(&v53, v49, v50, a3, a4);
      v35 = (*(*(*(a4 + 32) + 8) + 16))(v14, v16, a3);
      (*(v52 + 8))(v16, a3);
      if (v35)
      {
        goto LABEL_37;
      }
    }

LABEL_33:
    if (v18(a3, a4) <= 64 && (v18(a3, a4) != 64 || (v17(a3, a4) & 1) != 0))
    {
      goto LABEL_43;
    }

    v40 = v17(a3, a4);
    v41 = v18(a3, a4);
    if (v40)
    {
      if (v41 > 64)
      {
        goto LABEL_36;
      }
    }

    else if (v41 >= 64)
    {
LABEL_36:
      v53 = 0x7FFFFFFFFFFFFFFFLL;
      (*(a4 + 96))(&v53, v49, v50, a3, a4);
      v42 = (*(*(*(a4 + 32) + 8) + 16))(v16, v14, a3);
      (*(v52 + 8))(v16, a3);
      if (v42)
      {
        goto LABEL_37;
      }

LABEL_43:
      v43 = (*(a4 + 120))(a3, a4);
      result = (*(v52 + 8))(v14, a3);
      v26 = v51;
      v27 = *v51;
      if ((v43 & 0x8000000000000000) == 0)
      {
        if (v43 < 0x40)
        {
          v28 = v27 >> v43;
          goto LABEL_46;
        }

        goto LABEL_21;
      }

      if (v43 > 0xFFFFFFFFFFFFFFC0)
      {
        v28 = v27 << -v43;
        v26 = v51;
        goto LABEL_46;
      }

LABEL_24:
      v28 = 0;
      v26 = v51;
      goto LABEL_46;
    }

    (*(a4 + 120))(a3, a4);
    goto LABEL_43;
  }

LABEL_20:
  v26 = v51;
  v27 = *v51;
LABEL_21:
  v28 = v27 >> 63;
LABEL_46:
  *v26 = v28;
  return result;
}

uint64_t protocol witness for static BinaryInteger.<< infix<A>(_:_:) in conformance Int@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v58 = a5;
  v59 = a6;
  v60 = a7;
  v55 = *(*(a4 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v55, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v54 = v11;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v53 = &v52 - v13;
  v14 = *(a3 - 1);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v52 - v18;
  v57 = *a1;
  v20 = *(a4 + 64);
  v21 = v20(a3, a4);
  v56 = v17;
  if (v21)
  {
    v22 = *(a4 + 128);
    if (v22(a3, a4) < 64)
    {
      result = (*(a4 + 120))(a3, a4);
      if (result > -65)
      {
        goto LABEL_18;
      }

LABEL_17:
      v33 = v57 >> 63;
LABEL_51:
      v51 = v60;
      goto LABEL_52;
    }

    v61 = -64;
    (*(a4 + 96))(&v61, v58, v59, a3, a4);
    v27 = (*(*(*(a4 + 32) + 8) + 16))(a2, v19, a3);
    v28 = v14;
LABEL_9:
    result = (*(v28 + 8))(v19, a3);
    if (v27)
    {
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  v24 = v14;
  v25 = v20(a3, a4);
  v22 = *(a4 + 128);
  v26 = v22(a3, a4);
  if (v25)
  {
    if (v26 <= 64)
    {
      v52 = v22;
      v29 = v54;
      v30 = v55;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v55, a3, v54, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v32 = v53;
      (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v29, AssociatedConformanceWitness);
      (v30[3])(v32, a3, v30);
      LOBYTE(v29) = (*(*(*(a4 + 32) + 8) + 16))(a2, v19, a3);
      v14 = v24;
      result = (*(v24 + 8))(v19, a3);
      if (v29)
      {
        goto LABEL_17;
      }

      result = (*(a4 + 120))(a3, a4);
      v22 = v52;
      if (result < -64)
      {
        goto LABEL_17;
      }

      goto LABEL_18;
    }

    v61 = -64;
    (*(a4 + 96))(&v61, v58, v59, a3, a4);
    v27 = (*(*(*(a4 + 32) + 8) + 16))(a2, v19, a3);
    v14 = v24;
    v28 = v24;
    goto LABEL_9;
  }

  if (v26 >= 64)
  {
    v14 = v24;
    goto LABEL_18;
  }

  result = (*(a4 + 120))(a3, a4);
  v14 = v24;
  if (result < -64)
  {
    goto LABEL_17;
  }

LABEL_18:
  v34 = v14;
  v35 = v20(a3, a4);
  v52 = (a4 + 128);
  v36 = v22(a3, a4);
  if (v35)
  {
    if (v36 > 64)
    {
      goto LABEL_20;
    }

LABEL_28:
    result = (*(a4 + 120))(a3, a4);
    v38 = v34;
    if (result <= 64)
    {
      goto LABEL_21;
    }

    goto LABEL_29;
  }

  if (v36 < 64)
  {
    goto LABEL_28;
  }

LABEL_20:
  v61 = 64;
  (*(a4 + 96))(&v61, v58, v59, a3, a4);
  v37 = (*(*(*(a4 + 32) + 8) + 16))(v19, a2, a3);
  v38 = v34;
  result = (*(v34 + 8))(v19, a3);
  if (v37)
  {
LABEL_29:
    v33 = 0;
    goto LABEL_51;
  }

LABEL_21:
  v39 = v56;
  (*(v38 + 16))(v56, a2, a3);
  if ((v20(a3, a4) & 1) == 0 || v22(a3, a4) < 65)
  {
    goto LABEL_38;
  }

  if ((v20(a3, a4) & 1) == 0)
  {
    v41 = v20(a3, a4);
    v42 = v22(a3, a4);
    if ((v41 & 1) == 0)
    {
      if (v42 >= 64)
      {
        goto LABEL_38;
      }

      goto LABEL_37;
    }

    if (v42 <= 64)
    {
      v44 = v54;
      v45 = swift_getAssociatedConformanceWitness(v55, a3, v54, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v46 = v53;
      (*(v45 + 8))(&qword_18071E0A8, 256, v44, v45);
      (v55[3])(v46, a3);
      LOBYTE(v44) = (*(*(*(a4 + 32) + 8) + 16))(v39, v19, a3);
      (*(v38 + 8))(v19, a3);
      if ((v44 & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v61 = 0x8000000000000000;
      (*(a4 + 96))(&v61, v58, v59, a3, a4);
      v43 = (*(*(*(a4 + 32) + 8) + 16))(v39, v19, a3);
      (*(v38 + 8))(v19, a3);
      if ((v43 & 1) == 0)
      {
        goto LABEL_38;
      }
    }

LABEL_42:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v22(a3, a4) < 64)
  {
LABEL_37:
    (*(a4 + 120))(a3, a4);
    goto LABEL_38;
  }

  v61 = 0x8000000000000000;
  (*(a4 + 96))(&v61, v58, v59, a3, a4);
  v40 = (*(*(*(a4 + 32) + 8) + 16))(v39, v19, a3);
  (*(v38 + 8))(v19, a3);
  if (v40)
  {
    goto LABEL_42;
  }

LABEL_38:
  if (v22(a3, a4) <= 64 && (v22(a3, a4) != 64 || (v20(a3, a4) & 1) != 0))
  {
    goto LABEL_48;
  }

  v47 = v20(a3, a4);
  v48 = v22(a3, a4);
  if (v47)
  {
    if (v48 > 64)
    {
      goto LABEL_41;
    }

LABEL_47:
    (*(a4 + 120))(a3, a4);
    goto LABEL_48;
  }

  if (v48 < 64)
  {
    goto LABEL_47;
  }

LABEL_41:
  v61 = 0x7FFFFFFFFFFFFFFFLL;
  (*(a4 + 96))(&v61, v58, v59, a3, a4);
  v49 = (*(*(*(a4 + 32) + 8) + 16))(v19, v39, a3);
  (*(v38 + 8))(v19, a3);
  if (v49)
  {
    goto LABEL_42;
  }

LABEL_48:
  v50 = (*(a4 + 120))(a3, a4);
  result = (*(v38 + 8))(v39, a3);
  if ((v50 & 0x8000000000000000) == 0)
  {
    v33 = v57 << v50;
    if (v50 >= 0x40)
    {
      v33 = 0;
    }

    goto LABEL_51;
  }

  v51 = v60;
  if (v50 <= 0xFFFFFFFFFFFFFFC0)
  {
    v33 = v57 >> 63;
  }

  else
  {
    v33 = v57 >> -v50;
  }

LABEL_52:
  *v51 = v33;
  return result;
}

uint64_t protocol witness for static BinaryInteger.<<= infix<A>(_:_:) in conformance Int(uint64_t *a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v53 = a5;
  v54 = a6;
  v55 = a1;
  v52 = *(*(a4 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v52, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v51 = v9;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v50 = &v48 - v11;
  v56 = *(a3 - 1);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v48 - v15;
  v17 = *(a4 + 64);
  if ((v17(a3, a4) & 1) == 0)
  {
    v19 = v17(a3, a4);
    v18 = *(a4 + 128);
    v20 = v18(a3, a4);
    if ((v19 & 1) == 0)
    {
      if (v20 >= 64)
      {
        goto LABEL_13;
      }

      goto LABEL_11;
    }

    if (v20 <= 64)
    {
      v24 = v51;
      v23 = v52;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v52, a3, v51, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v26 = *(AssociatedConformanceWitness + 8);
      v49 = v17;
      v27 = v18;
      v28 = v14;
      v29 = v50;
      v26(&qword_18071E0A8, 256, v24, AssociatedConformanceWitness);
      v30 = v29;
      v14 = v28;
      v18 = v27;
      v17 = v49;
      (v23[3])(v30, a3, v23);
      LOBYTE(v23) = (*(*(*(a4 + 32) + 8) + 16))(a2, v16, a3);
      result = (*(v56 + 8))(v16, a3);
      if ((v23 & 1) == 0)
      {
        goto LABEL_11;
      }

LABEL_12:
      v31 = v55;
      v32 = *v55 >> 63;
      goto LABEL_46;
    }

LABEL_6:
    v57 = -64;
    (*(a4 + 96))(&v57, v53, v54, a3, a4);
    v21 = (*(*(*(a4 + 32) + 8) + 16))(a2, v16, a3);
    result = (*(v56 + 8))(v16, a3);
    if ((v21 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v18 = *(a4 + 128);
  if (v18(a3, a4) >= 64)
  {
    goto LABEL_6;
  }

LABEL_11:
  result = (*(a4 + 120))(a3, a4);
  if (result < -64)
  {
    goto LABEL_12;
  }

LABEL_13:
  v33 = v17(a3, a4);
  v49 = (a4 + 128);
  v34 = v18(a3, a4);
  if (v33)
  {
    if (v34 > 64)
    {
      goto LABEL_15;
    }

LABEL_22:
    result = (*(a4 + 120))(a3, a4);
    if (result <= 64)
    {
      goto LABEL_16;
    }

LABEL_23:
    v32 = 0;
LABEL_24:
    v31 = v55;
    goto LABEL_46;
  }

  if (v34 < 64)
  {
    goto LABEL_22;
  }

LABEL_15:
  v57 = 64;
  (*(a4 + 96))(&v57, v53, v54, a3, a4);
  v35 = (*(*(*(a4 + 32) + 8) + 16))(v16, a2, a3);
  result = (*(v56 + 8))(v16, a3);
  if (v35)
  {
    goto LABEL_23;
  }

LABEL_16:
  (*(v56 + 16))(v14, a2, a3);
  if ((v17(a3, a4) & 1) != 0 && v18(a3, a4) >= 65)
  {
    if (v17(a3, a4))
    {
      if (v18(a3, a4) < 64)
      {
LABEL_32:
        (*(a4 + 120))(a3, a4);
        goto LABEL_33;
      }
    }

    else
    {
      v36 = v17(a3, a4);
      v37 = v18(a3, a4);
      if ((v36 & 1) == 0)
      {
        if (v37 >= 64)
        {
          goto LABEL_33;
        }

        goto LABEL_32;
      }

      if (v37 <= 64)
      {
        v40 = v51;
        v39 = v52;
        v41 = swift_getAssociatedConformanceWitness(v52, a3, v51, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        v42 = v50;
        (*(v41 + 8))(&qword_18071E0A8, 256, v40, v41);
        (v39[3])(v42, a3, v39);
        LOBYTE(v39) = (*(*(*(a4 + 32) + 8) + 16))(v14, v16, a3);
        (*(v56 + 8))(v16, a3);
        if (v39)
        {
          goto LABEL_37;
        }

        goto LABEL_32;
      }
    }

    v57 = 0x8000000000000000;
    (*(a4 + 96))(&v57, v53, v54, a3, a4);
    v38 = (*(*(*(a4 + 32) + 8) + 16))(v14, v16, a3);
    (*(v56 + 8))(v16, a3);
    if (v38)
    {
      goto LABEL_37;
    }
  }

LABEL_33:
  if (v18(a3, a4) > 64 || v18(a3, a4) == 64 && (v17(a3, a4) & 1) == 0)
  {
    v43 = v17(a3, a4);
    v44 = v18(a3, a4);
    if (v43)
    {
      if (v44 > 64)
      {
        goto LABEL_36;
      }
    }

    else if (v44 >= 64)
    {
LABEL_36:
      v57 = 0x7FFFFFFFFFFFFFFFLL;
      (*(a4 + 96))(&v57, v53, v54, a3, a4);
      v45 = (*(*(*(a4 + 32) + 8) + 16))(v16, v14, a3);
      (*(v56 + 8))(v16, a3);
      if ((v45 & 1) == 0)
      {
        goto LABEL_43;
      }

LABEL_37:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    (*(a4 + 120))(a3, a4);
  }

LABEL_43:
  v46 = (*(a4 + 120))(a3, a4);
  result = (*(v56 + 8))(v14, a3);
  v31 = v55;
  v47 = *v55;
  if ((v46 & 0x8000000000000000) != 0)
  {
    if (v46 <= 0xFFFFFFFFFFFFFFC0)
    {
      v31 = v55;
      v32 = v47 >> 63;
      goto LABEL_46;
    }

    v32 = v47 >> -v46;
    goto LABEL_24;
  }

  v32 = v47 << v46;
  if (v46 >= 0x40)
  {
    v32 = 0;
  }

LABEL_46:
  *v31 = v32;
  return result;
}

uint64_t protocol witness for BinaryInteger.quotientAndRemainder(dividingBy:) in conformance Int(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = specialized BinaryInteger.quotientAndRemainder(dividingBy:)(a2, *a3, *v3);
  *a1 = result;
  return result;
}

uint64_t _ss5Int64VSzsSz10isMultiple2ofSbx_tFTW_0(uint64_t *a1)
{
  v2 = *a1;
  if (*a1 == -1)
  {
    return 1;
  }

  v3 = *v1;
  if (v2)
  {
    return v3 % v2 == 0;
  }

  else
  {
    return v3 == 0;
  }
}

void protocol witness for LosslessStringConvertible.init(_:) in conformance Int64(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
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
    v38 = 0;
    v37 = 1;
    goto LABEL_47;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v42[0] = a1;
      v42[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      v16 = specialized closure #1 in FixedWidthInteger.init<A>(_:radix:)(v42, v5, 10);
      v22 = v21 & 1;
LABEL_42:
      v43 = v22;
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
      v40 = _StringObject.sharedUTF8.getter(a1, a2);
      v6 = v41;
      v8 = v40;
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
            v16 = 0;
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
                v31 = (v16 * 10) >> 64 != (10 * v16) >> 63;
                v16 = 10 * v16 + v29;
                v32 = __OFADD__(v30, v29);
                if (v31 || v32)
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
            v16 = 0;
            while (1)
            {
              v33 = *v8 - 48;
              if (v33 >= 0xA)
              {
                goto LABEL_41;
              }

              v34 = 10 * v16;
              v35 = (v16 * 10) >> 64 != (10 * v16) >> 63;
              v16 = 10 * v16 + v33;
              v36 = __OFADD__(v34, v33);
              if (v35 || v36)
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
            v16 = 0;
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
                v19 = (v16 * 10) >> 64 != (10 * v16) >> 63;
                v16 = 10 * v16 - v17;
                v20 = __OFSUB__(v18, v17);
                if (v19 || v20)
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
              v16 = 0;
              v22 = 1;
              goto LABEL_42;
            }

LABEL_40:
            v43 = 0;
LABEL_43:
            v37 = v43;
            goto LABEL_44;
          }
        }

        v16 = 0;
        v43 = 1;
        goto LABEL_43;
      }
    }

    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v16 = specialized _parseInteger<A, B>(ascii:radix:)(a1, a2, 10);
  v37 = v39;
LABEL_44:
  a2;
  if (v37)
  {
    v38 = 0;
  }

  else
  {
    v38 = v16;
  }

LABEL_47:
  *a3 = v38;
  *(a3 + 8) = v37 & 1;
}

void *_ss5Int64Vs13SignedNumericssACP1sopyxxFZTW_0@<X0>(void *result@<X0>, void *a2@<X8>)
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

void _ss5Int64Vs13SignedNumericssACP6negateyyFTW_0()
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

uint64_t protocol witness for Numeric.init<A>(exactly:) in conformance Int64@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void)@<X5>, uint64_t *a6@<X8>)
{
  v45 = a5;
  v46 = a4;
  v48 = a6;
  v9 = *(*(a3 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v9, a2, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v11 = v10;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v42[-v13];
  v49 = *(a2 - 1);
  MEMORY[0x1EEE9AC00](v12);
  v47 = &v42[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v50 = *(a3 + 64);
  v16 = v50(a2, a3);
  v17 = *(a3 + 128);
  if ((v16 & 1) == 0 || v17(a2, a3) < 65)
  {
    goto LABEL_14;
  }

  v44 = a1;
  v51 = 0x8000000000000000;
  v18 = v50;
  if (v50(a2, a3))
  {
    a1 = v44;
    if (v17(a2, a3) < 64)
    {
      goto LABEL_13;
    }

LABEL_8:
    v20 = *(a3 + 96);
    v21 = v45();
    v22 = v47;
    v20(&v51, v46, v21, a2, a3);
    v23 = (*(*(*(a3 + 32) + 8) + 16))(a1, v22, a2);
    v24 = *(v49 + 8);
    v24(v22, a2);
    if (v23)
    {
      goto LABEL_9;
    }

LABEL_14:
    v29 = v17(a2, a3);
    v31 = v49;
    v30 = v50;
    if (v29 <= 64 && (v17(a2, a3) != 64 || (v30(a2, a3) & 1) != 0))
    {
      goto LABEL_25;
    }

    v51 = 0x7FFFFFFFFFFFFFFFLL;
    v32 = v30(a2, a3);
    v33 = v17(a2, a3);
    if (v32)
    {
      if (v33 > 64)
      {
        goto LABEL_17;
      }
    }

    else if (v33 > 63)
    {
LABEL_17:
      v34 = *(a3 + 96);
      v35 = v45();
      v36 = v47;
      v34(&v51, v46, v35, a2, a3);
      v37 = (*(*(*(a3 + 32) + 8) + 16))(v36, a1, a2);
      v38 = *(v31 + 8);
      v38(v36, a2);
      if (v37)
      {
        result = v38(a1, a2);
        goto LABEL_19;
      }

LABEL_25:
      v39 = (*(a3 + 120))(a2, a3);
      result = (*(v31 + 8))(a1, a2);
      v40 = 0;
      goto LABEL_26;
    }

    (*(a3 + 120))(a2, a3);
    goto LABEL_25;
  }

  v43 = v18(a2, a3);
  a1 = v44;
  v19 = v17(a2, a3);
  if ((v43 & 1) == 0)
  {
    if (v19 >= 64)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (v19 > 64)
  {
    goto LABEL_8;
  }

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v9, a2, v11, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v11, AssociatedConformanceWitness);
  v27 = v47;
  (*(v9 + 24))(v14, a2, v9);
  v28 = (*(*(*(a3 + 32) + 8) + 16))(a1, v27, a2);
  v24 = *(v49 + 8);
  v24(v27, a2);
  if ((v28 & 1) == 0)
  {
LABEL_13:
    (*(a3 + 120))(a2, a3);
    goto LABEL_14;
  }

LABEL_9:
  result = v24(a1, a2);
LABEL_19:
  v39 = 0;
  v40 = 1;
LABEL_26:
  v41 = v48;
  *v48 = v39;
  *(v41 + 8) = v40;
  return result;
}

void _ss5Int64VSjsSj9magnitude9MagnitudeQzvgTW_0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  if (*v1 < 0)
  {
    v2 = -v2;
  }

  *a1 = v2;
}

uint64_t *protocol witness for static Numeric.* infix(_:_:) in conformance Int64@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = *result * *a2;
  if ((*result * *a2) >> 64 == v3 >> 63)
  {
    *a3 = v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t *protocol witness for static Numeric.*= infix(_:_:) in conformance Int64(uint64_t *result, uint64_t *a2)
{
  v2 = *result * *a2;
  if ((*result * *a2) >> 64 == v2 >> 63)
  {
    *result = v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *protocol witness for Strideable.distance(to:) in conformance Int@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFSUB__(*result, *v2))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result - *v2;
  }

  return result;
}

void *protocol witness for Strideable.advanced(by:) in conformance Int64@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFADD__(*v2, *result))
  {
    __break(1u);
  }

  else
  {
    *a2 = *v2 + *result;
  }

  return result;
}

unint64_t _ss5Int64VSxsSx5_step5after4from2bySiSg5index_x5valuetAgH_xAIt_x6StrideQztFZTW_0(int64_t *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  v6 = *a4 + *a6;
  v7 = 0x8000000000000000;
  if (__OFADD__(*a4, *a6))
  {
    v6 = (v6 >> 63) ^ 0x8000000000000000;
  }

  else
  {
    v7 = 0;
  }

  *a1 = v6;
  return v7;
}

void *protocol witness for static AdditiveArithmetic.+ infix(_:_:) in conformance Int64@<X0>(void *result@<X0>, void *a2@<X1>, void *a3@<X8>)
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

void *protocol witness for static AdditiveArithmetic.+= infix(_:_:) in conformance Int64(void *result, void *a2)
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

void *protocol witness for static AdditiveArithmetic.- infix(_:_:) in conformance Int64@<X0>(void *result@<X0>, void *a2@<X1>, void *a3@<X8>)
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

void *protocol witness for static AdditiveArithmetic.-= infix(_:_:) in conformance Int64(void *result, void *a2)
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

uint64_t Int._toCustomAnyHashable()@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22_IntegerAnyHashableBoxVySiGMd, _ss22_IntegerAnyHashableBoxVySiGMR);
  a2[3] = result;
  a2[4] = &protocol witness table for _IntegerAnyHashableBox<A>;
  *a2 = a1;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance Int@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22_IntegerAnyHashableBoxVySiGMd, _ss22_IntegerAnyHashableBoxVySiGMR);
  a1[3] = result;
  a1[4] = &protocol witness table for _IntegerAnyHashableBox<A>;
  *a1 = v3;
  return result;
}

uint64_t _IntegerAnyHashableBox._canonicalBox.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v39 = a2;
  v3 = *(a1 + 16);
  v4 = *(*(a1 + 24) + 8);
  v37 = *(*(v4 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v37, v3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v6 = v5;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v37 - v8;
  v10 = *(v3 - 1);
  v11 = MEMORY[0x1EEE9AC00](v7);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v37 - v14;
  v16 = *(v10 + 16);
  v38 = v2;
  v16(&v37 - v14, v2, v3);
  v17 = *(v4 + 64);
  if ((v17(v3, v4) & 1) == 0)
  {
    v21 = v17(v3, v4);
    v18 = (*(v4 + 128))(v3, v4);
    if ((v21 & 1) == 0)
    {
      if (v18 >= 64)
      {
        (*(v10 + 8))(v15, v3);
        goto LABEL_15;
      }

      goto LABEL_10;
    }

    if (v18 <= 64)
    {
      v27 = v37;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v37, v3, v6, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v6, AssociatedConformanceWitness);
      (v27[3])(v9, v3, v27);
      v29 = (*(*(*(v4 + 32) + 8) + 16))(v15, v13, v3);
      v30 = *(v10 + 8);
      v30(v13, v3);
      if (v29)
      {
        v30(v15, v3);
      }

      else
      {
        v31 = (*(v4 + 120))(v3, v4);
        v30(v15, v3);
        if ((v31 & 0x8000000000000000) == 0)
        {
          goto LABEL_15;
        }
      }

      goto LABEL_16;
    }

LABEL_6:
    v40 = 0;
    v22 = *(v4 + 96);
    v23 = lazy protocol witness table accessor for type Int and conformance Int(v18, v19, v20);
    v22(&v40, &type metadata for Int, v23, v3, v4);
    v24 = (*(*(*(v4 + 32) + 8) + 16))(v15, v13, v3);
    v25 = *(v10 + 8);
    v25(v13, v3);
    v25(v15, v3);
    if ((v24 & 1) == 0)
    {
      goto LABEL_15;
    }

LABEL_16:
    v32 = (*(v4 + 120))(v3, v4);
    v33 = &_ss22_IntegerAnyHashableBoxVys5Int64VGMd;
    v34 = _ss22_IntegerAnyHashableBoxVys5Int64VGMR;
    goto LABEL_17;
  }

  v18 = (*(v4 + 128))(v3, v4);
  if (v18 >= 64)
  {
    goto LABEL_6;
  }

LABEL_10:
  v26 = (*(v4 + 120))(v3, v4);
  (*(v10 + 8))(v15, v3);
  if (v26 < 0)
  {
    goto LABEL_16;
  }

LABEL_15:
  v32 = (*(v4 + 120))(v3, v4);
  v33 = &_ss22_IntegerAnyHashableBoxVys6UInt64VGMd;
  v34 = _ss22_IntegerAnyHashableBoxVys6UInt64VGMR;
LABEL_17:
  result = __swift_instantiateConcreteTypeFromMangledNameV2(v33, v34);
  v36 = v39;
  v39[3] = result;
  v36[4] = &protocol witness table for _IntegerAnyHashableBox<A>;
  *v36 = v32;
  return result;
}

uint64_t _IntegerAnyHashableBox._isEqual(to:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(*(a2 + 24) + 8);
  v6 = *(*(v5 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v6, v4, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v8 = v7;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v58 - v10;
  Description = v4[-1].Description;
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v58 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v58 - v18;
  if (v4 == &type metadata for UInt64)
  {
    outlined init with copy of MirrorPath(a1, v61);
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15_AnyHashableBox_pMd, _ss15_AnyHashableBox_pMR);
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22_IntegerAnyHashableBoxVys6UInt64VGMd, _ss22_IntegerAnyHashableBoxVys6UInt64VGMR);
    if (!swift_dynamicCast(&v60, v61, v26, v27, 6uLL))
    {
      return 2;
    }

    v58 = v60;
    Description[2](v19, v2, &type metadata for UInt64);
    v28 = *(v5 + 64);
    if (v28(&type metadata for UInt64, v5))
    {
      v29 = v28(&type metadata for UInt64, v5);
      v30 = (*(v5 + 128))(&type metadata for UInt64, v5);
      if (v29)
      {
        if (v30 <= 64)
        {
          AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v6, &type metadata for UInt64, v8, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
          (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v8, AssociatedConformanceWitness);
          (*(v6 + 24))(v11, &type metadata for UInt64, v6);
          v34 = (*(*(*(v5 + 32) + 8) + 32))(v19, v17, &type metadata for UInt64);
          v35 = Description[1];
          v35(v17, &type metadata for UInt64);
          if (v34)
          {
            v36 = &type metadata for UInt64;
            v37 = (*(v5 + 120))(&type metadata for UInt64, v5);
            v38 = v19;
LABEL_26:
            v35(v38, v36);
            return v37 == v58;
          }

          v56 = &type metadata for UInt64;
          v57 = v19;
          goto LABEL_32;
        }

LABEL_23:
        v61[0] = v58;
        v45 = *(v5 + 96);
        v46 = lazy protocol witness table accessor for type UInt64 and conformance UInt64(v30, v31, v32);
        v45(v61, &type metadata for UInt64, v46, &type metadata for UInt64, v5);
        v47 = (*(*(*(v5 + 16) + 8) + 8))(v19, v17, &type metadata for UInt64);
        v48 = Description[1];
        v48(v17, &type metadata for UInt64);
        v48(v19, &type metadata for UInt64);
        return v47 & 1;
      }

      if (v30 >= 64)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v30 = (*(v5 + 128))(&type metadata for UInt64, v5);
      if (v30 >= 64)
      {
        goto LABEL_23;
      }
    }

    v37 = (*(v5 + 120))(&type metadata for UInt64, v5);
    (Description[1])(v19, &type metadata for UInt64);
    return v37 == v58;
  }

  if (v4 != &type metadata for Int64)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  outlined init with copy of MirrorPath(a1, v61);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15_AnyHashableBox_pMd, _ss15_AnyHashableBox_pMR);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22_IntegerAnyHashableBoxVys5Int64VGMd, _ss22_IntegerAnyHashableBoxVys5Int64VGMR);
  if (!swift_dynamicCast(&v60, v61, v20, v21, 6uLL))
  {
    return 2;
  }

  v58 = v60;
  Description[2](v14, v2, &type metadata for Int64);
  v22 = *(v5 + 64);
  if (v22(&type metadata for Int64, v5))
  {
    v23 = (*(v5 + 128))(&type metadata for Int64, v5);
    if (v23 < 64)
    {
      goto LABEL_20;
    }

LABEL_16:
    v61[0] = v58;
    v41 = *(v5 + 96);
    v42 = lazy protocol witness table accessor for type Int64 and conformance Int64(v23, v24, v25);
    v41(v61, &type metadata for Int64, v42, &type metadata for Int64, v5);
    v43 = (*(*(*(v5 + 16) + 8) + 8))(v14, v17, &type metadata for Int64);
    v44 = Description[1];
    v44(v17, &type metadata for Int64);
    v44(v14, &type metadata for Int64);
    return v43 & 1;
  }

  v40 = v22(&type metadata for Int64, v5);
  v23 = (*(v5 + 128))(&type metadata for Int64, v5);
  if (v40)
  {
    if (v23 > 64)
    {
      goto LABEL_16;
    }

    v49 = swift_getAssociatedConformanceWitness(v6, &type metadata for Int64, v8, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    (*(v49 + 8))(&qword_18071E0A8, 256, v8, v49);
    (*(v6 + 24))(v11, &type metadata for Int64, v6);
    v50 = (*(*(*(v5 + 32) + 8) + 32))(v14, v17, &type metadata for Int64);
    v35 = Description[1];
    v35(v17, &type metadata for Int64);
    if (v50)
    {
      v36 = &type metadata for Int64;
      v37 = (*(v5 + 120))(&type metadata for Int64, v5);
      v38 = v14;
      goto LABEL_26;
    }

    v56 = &type metadata for Int64;
    v57 = v14;
LABEL_32:
    v35(v57, v56);
    return 0;
  }

  if (v23 < 64)
  {
LABEL_20:
    v37 = (*(v5 + 120))(&type metadata for Int64, v5);
    (Description[1])(v14, &type metadata for Int64);
    return v37 == v58;
  }

  v51 = Description;
  if ((v58 & 0x8000000000000000) == 0)
  {
    v61[0] = v58;
    v52 = *(v5 + 96);
    v53 = lazy protocol witness table accessor for type Int64 and conformance Int64(v23, v24, v25);
    v52(v61, &type metadata for Int64, v53, &type metadata for Int64, v5);
    v54 = (*(*(*(v5 + 16) + 8) + 8))(v14, v17, &type metadata for Int64);
    v55 = v51[1];
    v55(v17, &type metadata for Int64);
    v55(v14, &type metadata for Int64);
    return v54 & 1;
  }

  (Description[1])(v14, &type metadata for Int64);
  return 0;
}

uint64_t _IntegerAnyHashableBox._unbox<A>()@<X0>(uint64_t a1@<X0>, Class *a2@<X1>, swift *a3@<X8>)
{
  v6 = *(a1 + 16);
  MEMORY[0x1EEE9AC00](a1);
  v8 = (&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v9 + 16))(v8, v3, v6);
  v10 = swift_dynamicCast(a3, v8, v6, a2, 6uLL);
  return (*(*(a2 - 1) + 7))(a3, v10 ^ 1u, 1, a2);
}

uint64_t _ConcreteHashableBox._downCastConditional<A>(into:)(char *a1, uint64_t a2, Class *a3, uint64_t a4)
{
  v5 = v4;
  v9 = type metadata accessor for Optional(0, a3, a3, a4);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = (&v26 - v12);
  v14 = *(a2 + 16);
  v15 = MEMORY[0x1EEE9AC00](v11);
  v17 = (&v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v15);
  v20 = &v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v17, v5, v14);
  v22 = swift_dynamicCast(v13, v17, v14, a3, 6uLL);
  v23 = *(v18 + 56);
  if (v22)
  {
    v23(v13, 0, 1, a3);
    v24 = *(v18 + 32);
    v24(v20, v13, a3);
    v24(a1, v20, a3);
  }

  else
  {
    v23(v13, 1, 1, a3);
    (*(v10 + 8))(v13, v9);
  }

  return v22;
}

uint64_t < infix<A, B>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v27 = a8;
  v28 = a2;
  v30 = a7;
  v31 = a4;
  v29 = a3;
  swift_getTupleTypeMetadata2(0, a5, a6, 0, 0);
  v12 = v11;
  v32 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v27 - v16;
  v18 = *(*(a5 - 8) + 16);
  v18(&v27 - v16, a1, a5);
  v19 = *(v12 + 48);
  v20 = *(*(a6 - 8) + 16);
  v20(&v17[v19], v28, a6);
  v18(v15, v29, a5);
  v21 = v30;
  v22 = *(v12 + 48);
  v20(&v15[v22], v31, a6);
  if ((*(*(v21 + 8) + 8))(v17, v15, a5))
  {
    v23 = (*(v27 + 16))(&v17[v19], &v15[v22], a6);
  }

  else
  {
    v23 = (*(v21 + 16))(v17, v15, a5);
  }

  v24 = v23;
  v25 = *(v32 + 8);
  v25(v15, v12);
  v25(v17, v12);
  return v24 & 1;
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

uint64_t protocol witness for static AdditiveArithmetic.+ infix(_:_:) in conformance _UInt128@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t (*a3)(void, void, void, void)@<X4>, uint64_t *a4@<X8>)
{
  result = a3(*a1, a1[1], *a2, a2[1]);
  *a4 = result;
  a4[1] = v6;
  return result;
}

char *_UInt128.init<A>(exactly:)(uint64_t (*a1)(void, void), const char *a2, uint64_t a3)
{
  v6 = *(a3 + 24);
  swift_getAssociatedTypeWitness(255, v6, a2, &protocol requirements base descriptor for Numeric, associated type descriptor for Numeric.Magnitude);
  v8 = v7;
  v148 = *(swift_getAssociatedConformanceWitness(v6, a2, v7, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Numeric) + 16);
  swift_getAssociatedTypeWitness(0, v148, v8, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v147 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v146 = v139 - v10;
  v11 = swift_checkMetadataState(0, v8);
  v157 = *(v11 - 1);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v154 = v139 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v158 = v139 - v14;
  v151 = *(v6 + 16);
  swift_getAssociatedTypeWitness(0, v151, a2, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v150 = v15;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v149 = v139 - v17;
  v18 = *(a2 - 1);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v144 = v139 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v142 = v139 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v153 = v139 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v152 = v139 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v28 = v139 - v27;
  v30 = a3 + 64;
  v29 = *(a3 + 64);
  v31 = v29(a2, a3);
  v145 = v29;
  v159 = a1;
  if ((v31 & 1) == 0)
  {
    v38 = v29(a2, a3);
    v155 = *(a3 + 128);
    v39 = v155(a2, a3);
    if (v38)
    {
      v156 = v18;
      v37 = v158;
      if (v39 > 64)
      {
        v160[0] = 0;
        v42 = *(a3 + 96);
        v43 = lazy protocol witness table accessor for type Int and conformance Int(v39, v40, v41);
        v42(v160, &type metadata for Int, v43, a2, a3);
        v35 = v159;
        v44 = (*(*(*(a3 + 32) + 8) + 16))(v159, v28, a2);
        v18 = v156;
        goto LABEL_9;
      }

      v49 = v150;
      v50 = v151;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v151, a2, v150, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v52 = v149;
      (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v49, AssociatedConformanceWitness);
      (v50[3])(v52, a2, v50);
      v35 = v159;
      LOBYTE(v49) = (*(*(*(a3 + 32) + 8) + 16))(v159, v28, a2);
      v18 = v156;
      (*(v156 + 8))(v28, a2);
      if (v49)
      {
        goto LABEL_16;
      }

      v48 = (*(a3 + 120))(a2, a3);
    }

    else
    {
      v37 = v158;
      if (v39 >= 64)
      {
        goto LABEL_18;
      }

      v35 = v159;
      v48 = (*(a3 + 120))(a2, a3);
    }

    if ((v48 & 0x8000000000000000) == 0)
    {
      goto LABEL_18;
    }

LABEL_16:
    (*(v18 + 8))(v35, a2);
    return 0;
  }

  v155 = *(a3 + 128);
  v32 = v155(a2, a3);
  if (v32 >= 64)
  {
    v160[0] = 0;
    v45 = v18;
    v46 = *(a3 + 96);
    v47 = lazy protocol witness table accessor for type Int and conformance Int(v32, v33, v34);
    v46(v160, &type metadata for Int, v47, a2, a3);
    v18 = v45;
    v30 = a3 + 64;
    v37 = v158;
    v35 = v159;
    v44 = (*(*(*(a3 + 32) + 8) + 16))(v159, v28, a2);
LABEL_9:
    (*(v18 + 8))(v28, a2);
    if ((v44 & 1) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  v35 = a1;
  v36 = (*(a3 + 120))(a2, a3);
  v37 = v158;
  if (v36 < 0)
  {
    goto LABEL_16;
  }

LABEL_18:
  v139[1] = v30;
  v156 = v18;
  v143 = v28;
  (*(v6 + 56))(a2, v6);
  v141 = a3;
  v54 = swift_getAssociatedConformanceWitness(a3, a2, v11, &protocol requirements base descriptor for BinaryInteger, associated conformance descriptor for BinaryInteger.Numeric.Magnitude: BinaryInteger);
  v55 = v37;
  v56 = *(v54 + 64);
  if ((v56)(v11, v54))
  {
    v57 = v147;
    v58 = v148;
    v59 = swift_getAssociatedConformanceWitness(v148, v11, v147, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    v60 = v146;
    (*(v59 + 8))(&qword_18071E0A8, 256, v57, v59);
    v61 = v58[3];
    v140 = v56;
    v62 = v154;
    (v61)(v60, v11, v58);
    v63 = swift_getAssociatedConformanceWitness(v6, a2, v11, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Comparable);
    LOBYTE(v57) = (*(v63 + 16))(v37, v62, v11, v63);
    v64 = *(v157 + 8);
    v65 = v62;
    v56 = v140;
    v64(v65, v11);
    if (v57)
    {
      goto LABEL_27;
    }
  }

  v140 = v6;
  v66 = *(v54 + 128);
  if (v66(v11, v54) >= 64)
  {
    v67 = (v56)(v11, v54);
    v68 = v66(v11, v54);
    if (v67)
    {
      if (v68 > 64)
      {
        v160[0] = -1;
        v71 = *(v54 + 96);
        v72 = lazy protocol witness table accessor for type UInt64 and conformance UInt64(v68, v69, v70);
        v73 = v154;
        v71(v160, &type metadata for UInt64, v72, v11, v54);
        v74 = swift_getAssociatedConformanceWitness(v140, a2, v11, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Comparable);
        v55 = v158;
        v75 = (*(v74 + 16))(v73, v158, v11, v74);
        goto LABEL_26;
      }

      v111 = v147;
      v112 = v148;
      v113 = swift_getAssociatedConformanceWitness(v148, v11, v147, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v114 = v146;
      (*(v113 + 8))(&qword_18071E0A8, 256, v111, v113);
      v115 = v154;
      (v112[3])(v114, v11, v112);
      v116 = swift_getAssociatedConformanceWitness(v140, a2, v11, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Comparable);
      v55 = v158;
      LOBYTE(v111) = (*(v116 + 40))(v158, v115, v11, v116);
      (*(v157 + 8))(v115, v11);
      if ((v111 & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v55 = v158;
      if (v68 >= 65)
      {
        v160[0] = -1;
        v76 = *(v54 + 96);
        v77 = lazy protocol witness table accessor for type UInt64 and conformance UInt64(v68, v69, v70);
        v73 = v154;
        v76(v160, &type metadata for UInt64, v77, v11, v54);
        v78 = swift_getAssociatedConformanceWitness(v140, a2, v11, &protocol requirements base descriptor for Numeric, associated conformance descriptor for Numeric.Numeric.Magnitude: Comparable);
        v75 = (*(v78 + 16))(v73, v55, v11, v78);
LABEL_26:
        v79 = v75;
        v64 = *(v157 + 8);
        v64(v73, v11);
        if (v79)
        {
LABEL_27:
          v80 = (v64)(v158, v11);
          v160[0] = -1;
          v81 = v141;
          v82 = *(v141 + 88);
          v85 = lazy protocol witness table accessor for type UInt64 and conformance UInt64(v80, v83, v84);
          v86 = v143;
          v148 = v85;
          v82(v160, &type metadata for UInt64);
          v87 = v152;
          v88 = v159;
          (*(v81 + 192))(v159, v86, a2, v81);
          v89 = v156;
          v158 = *(v156 + 8);
          v90 = (v158)(v86, a2);
          v160[0] = 64;
          v91 = *(v81 + 240);
          v94 = lazy protocol witness table accessor for type Int and conformance Int(v90, v92, v93);
          v91(v88, v160, &type metadata for Int, v94, a2, v81);
          v95 = v89;
          v96 = *(v89 + 16);
          v97 = v142;
          v96(v142, v87, a2);
          v98 = v145;
          if (v145(a2, v81))
          {
            v99 = v150;
            v100 = v151;
            v101 = swift_getAssociatedConformanceWitness(v151, a2, v150, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
            v102 = v149;
            (*(v101 + 8))(&qword_18071E0A8, 256, v99, v101);
            v103 = v102;
            v95 = v156;
            (v100[3])(v103, a2, v100);
            LOBYTE(v99) = (*(*(*(v81 + 32) + 8) + 32))(v97, v86, a2);
            (v158)(v86, a2);
            if ((v99 & 1) == 0)
            {
              goto LABEL_56;
            }
          }

          v157 = v81 + 128;
          if (v155(a2, v81) >= 64)
          {
            v104 = v98(a2, v81);
            v105 = v155(a2, v81);
            if (v104)
            {
              if (v105 <= 64)
              {
                v106 = v150;
                v107 = v151;
                v108 = swift_getAssociatedConformanceWitness(v151, a2, v150, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
                v109 = v149;
                (*(v108 + 8))(&qword_18071E0A8, 256, v106, v108);
                v110 = v109;
                v95 = v156;
                (v107[3])(v110, a2, v107);
                LOBYTE(v106) = (*(*(*(v81 + 32) + 8) + 40))(v97, v86, a2);
                (v158)(v86, a2);
                if ((v106 & 1) == 0)
                {
                  goto LABEL_43;
                }

                goto LABEL_42;
              }
            }

            else if (v105 < 65)
            {
LABEL_42:
              (*(v81 + 120))(a2, v81);
              goto LABEL_43;
            }

            v160[0] = -1;
            (*(v81 + 96))(v160, &type metadata for UInt64, v148, a2, v81);
            v122 = (*(*(*(v81 + 32) + 8) + 16))(v86, v97, a2);
            (v158)(v86, a2);
            if (v122)
            {
LABEL_56:
              _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
            }
          }

LABEL_43:
          v123 = v158;
          (v158)(v159, a2);
          (v123)(v152, a2);
          v159 = *(v81 + 120);
          v154 = v159(a2, v81);
          (v123)(v97, a2);
          v124 = v144;
          (*(v95 + 32))(v144, v153, a2);
          if (v98(a2, v81))
          {
            v125 = v150;
            v126 = v151;
            v127 = swift_getAssociatedConformanceWitness(v151, a2, v150, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
            v128 = v149;
            (*(v127 + 8))(&qword_18071E0A8, 256, v125, v127);
            (v126[3])(v128, a2, v126);
            LOBYTE(v125) = (*(*(*(v81 + 32) + 8) + 16))(v124, v86, a2);
            (v158)(v86, a2);
            if (v125)
            {
              goto LABEL_52;
            }
          }

          if (v155(a2, v81) < 64)
          {
            goto LABEL_55;
          }

          v129 = v145(a2, v81);
          v130 = v155(a2, v81);
          if (v129)
          {
            if (v130 > 64)
            {
              v160[0] = -1;
              v131 = v143;
              (*(v81 + 96))(v160, &type metadata for UInt64, v148, a2, v81);
              v124 = v144;
              v132 = (*(*(*(v81 + 32) + 8) + 16))(v131, v144, a2);
              goto LABEL_51;
            }

            v134 = v150;
            v135 = v151;
            v136 = swift_getAssociatedConformanceWitness(v151, a2, v150, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
            v137 = v149;
            (*(v136 + 8))(&qword_18071E0A8, 256, v134, v136);
            v138 = v143;
            (v135[3])(v137, a2, v135);
            v124 = v144;
            LOBYTE(v134) = (*(*(*(v81 + 32) + 8) + 40))(v144, v138, a2);
            (v158)(v138, a2);
            if ((v134 & 1) == 0)
            {
LABEL_55:
              v159(a2, v81);
              (v158)(v124, a2);
              return v154;
            }
          }

          else
          {
            v131 = v143;
            v124 = v144;
            if (v130 >= 65)
            {
              v160[0] = -1;
              (*(v81 + 96))(v160, &type metadata for UInt64, v148, a2, v81);
              v132 = (*(*(*(v81 + 32) + 8) + 16))(v131, v124, a2);
LABEL_51:
              v133 = v132;
              (v158)(v131, a2);
              if (v133)
              {
LABEL_52:
                (v158)(v124, a2);
                return 0;
              }

              goto LABEL_55;
            }
          }

          v159(a2, v81);
          goto LABEL_55;
        }

        goto LABEL_36;
      }
    }

    (*(v54 + 120))(v11, v54);
  }

LABEL_36:
  v117 = (*(v54 + 120))(v11, v54);
  (*(v157 + 8))(v55, v11);
  v118 = v143;
  (*(*(v140 + 1) + 16))(a2);
  v119 = v159;
  v120 = (*(*(*(v141 + 32) + 8) + 16))(v159, v118, a2);
  v121 = *(v156 + 8);
  v121(v119, a2);
  v121(v118, a2);
  if (v120)
  {
    return -v117;
  }

  else
  {
    return v117;
  }
}

void *protocol witness for ExpressibleByIntegerLiteral.init(integerLiteral:) in conformance _UInt128@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if ((*result & 0x8000000000000000) != 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000028, 0x800000018066E8B0, "Swift/LegacyInt128.swift", 0x18uLL, 2, 0x83uLL);
  }

  *a2 = *result;
  a2[1] = 0;
  return result;
}

uint64_t _UInt128.Words.subscript.getter(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 >= 2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a1)
  {
    return a3;
  }

  else
  {
    return a2;
  }
}

unint64_t specialized _wideMaskedShiftRight<A>(_:_:)(unint64_t *a1, unint64_t a2, unint64_t a3, char a4)
{
  if ((a4 & 0x7Fu) > 0x3FuLL)
  {
    *a1 = a2 >> a4;
    return 0;
  }

  else if ((a4 & 0x7F) != 0)
  {
    *a1 = (a3 >> a4) | (a2 << -a4);
    return a2 >> a4;
  }

  else
  {
    *a1 = a3;
    return a2;
  }
}

uint64_t specialized _wideMaskedShiftRight<A>(_:_:)(uint64_t *a1, uint64_t a2, unint64_t a3, char a4)
{
  if ((a4 & 0x7Fu) >= 0x40uLL)
  {
    *a1 = a2 >> a4;
    return a2 >> 63;
  }

  else if ((a4 & 0x7F) != 0)
  {
    *a1 = (a3 >> a4) | (a2 << -a4);
    return a2 >> a4;
  }

  else
  {
    *a1 = a3;
    return a2;
  }
}

Swift::UInt64 specialized _wideDivide22<A>(_:by:)(void *a1, Swift::UInt64 *a2, Swift::UInt64 *a3, Swift::UInt64 a4, Swift::tuple_high_UInt64_low_UInt64 a5, Swift::UInt64 a6)
{
  if (!(a5.low | a6))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000010, 0x800000018066AEF0 | 0x8000000000000000, "Swift/LegacyInt128.swift", 0x18uLL, 2, 0x4CBuLL);
  }

  v6 = a6 < a5.high;
  if (a5.low != a4)
  {
    v6 = a5.low < a4;
  }

  if (!v6)
  {
    v12 = a4 < a5.low;
    v13 = 0;
    if (a5.low == a4)
    {
      v12 = a5.high < a6;
    }

    if (v12)
    {
      *a1 = 0;
      *a2 = a4;
      *a3 = a5.high;
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
    if (a6)
    {
      v13 = 0;
      *a3 = a5.high % a6;
      *a1 = a5.high / a6;
LABEL_56:
      *a2 = 0;
      return v13;
    }

LABEL_60:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (!a5.low)
  {
    if (a6)
    {
      v13 = a4 / a6;
      if (a4 % a6)
      {
        v14 = a1;
        v15.high = a4 % a6;
        v16 = a2;
        v15.low = a5.high;
        v17 = a3;
        v18 = UInt64.dividingFullWidth(_:)(v15);
        a3 = v17;
        quotient = v18.quotient;
        a1 = v14;
        remainder = v18.remainder;
        a2 = v16;
      }

      else
      {
        quotient = a5.high / a6;
        remainder = a5.high % a6;
      }

      *a1 = quotient;
      *a3 = remainder;
      goto LABEL_56;
    }

    goto LABEL_60;
  }

  v7 = __clz(a5.low);
  if (v7)
  {
    v8 = 0x80 - v7;
    a5.low = (a6 >> -v7) | (a5.low << v7);
    a6 <<= v7;
    v9 = (128 - v7) & 0x7F;
    v10 = a4 << v7;
    if (v9 > 0x3F)
    {
      high = a4 >> v8;
    }

    else
    {
      high = a5.high;
      if (v9)
      {
        high = (a5.high >> v8) | v10;
      }
    }

    a4 = (a5.high >> (-v7 & 0x3F)) | v10;
    v21 = a5.high << v7;
    a5.high = high;
    if (high == a5.low)
    {
      goto LABEL_24;
    }

LABEL_21:
    v22 = a1;
    v23.high = a5.high;
    v24 = a2;
    v23.low = a4;
    v25 = a3;
    v26 = a5.high;
    v27 = a6;
    v28 = a4;
    low = a5.low;
    v30 = UInt64.dividingFullWidth(_:)(v23).quotient;
    a5.low = low;
    a4 = v28;
    a6 = v27;
    a5.high = v26;
    a3 = v25;
    a2 = v24;
    v31 = v30;
    a1 = v22;
    goto LABEL_25;
  }

  v21 = a5.high;
  if (a5.high != a5.low)
  {
    goto LABEL_21;
  }

LABEL_24:
  v31 = -1;
LABEL_25:
  v32 = v31 * a6;
  v33 = (__PAIR128__(a5.low, a6) * v31) >> 64;
  if (__CFADD__((v31 * a6) >> 64, v31 * a5.low))
  {
    v34 = ((v31 * a5.low) >> 64) + 1;
  }

  else
  {
    v34 = (v31 * a5.low) >> 64;
  }

  v35 = a5.high >= v34;
  if (a5.high != v34)
  {
    goto LABEL_35;
  }

LABEL_32:
  v35 = a4 >= v33;
  if (a4 != v33)
  {
    while (1)
    {
      while (1)
      {
LABEL_35:
        if (v35)
        {
          goto LABEL_47;
        }

LABEL_36:
        v36 = __CFADD__(v21, a6);
        v35 = __CFADD__(a4, a5.low);
        a4 += a5.low;
        if (!v35)
        {
          break;
        }

        if (v36)
        {
          goto LABEL_44;
        }

LABEL_45:
        ++a5.high;
        --v31;
        v21 += a6;
        v35 = a5.high >= v34;
        if (a5.high == v34)
        {
          goto LABEL_32;
        }
      }

      if (a4 == -1)
      {
        if (!v36)
        {
          a4 = -1;
          goto LABEL_31;
        }

LABEL_44:
        ++a4;
        goto LABEL_45;
      }

      a4 += v36;
LABEL_31:
      v21 += a6;
      --v31;
      v35 = a5.high >= v34;
      if (a5.high == v34)
      {
        goto LABEL_32;
      }
    }
  }

  if (v21 < v32)
  {
    goto LABEL_36;
  }

  a4 = v33;
LABEL_47:
  v13 = 0;
  v35 = v21 >= v32;
  v37 = v21 - v32;
  v38 = a4 - v33;
  v39 = !v35;
  v40 = v38 - v39;
  *a1 = v31;
  v41 = (v40 << -v7) | (v37 >> v7);
  if (v7)
  {
    v42 = v40 >> v7;
  }

  else
  {
    v41 = v37;
    v42 = v40;
  }

  *a3 = v41;
  *a2 = v42;
  return v13;
}

Swift::tuple_high__UInt128_low__UInt128 __swiftcall _UInt128.multipliedFullWidth(by:)(Swift::_UInt128 by)
{
  v3 = v1 * by.low;
  v4 = (__PAIR128__(v2, v1) * by.low) >> 64;
  v5 = __CFADD__((v1 * by.low) >> 64, v2 * by.low);
  v6 = (v2 * by.high) >> 64;
  v7 = (v1 * by.high) >> 64;
  v8 = (v2 * by.low) >> 64;
  v11 = __PAIR128__(v2 * by.high, v4) + v1 * by.high;
  v9 = __CFADD__(__CFADD__(v4, v1 * by.high), v2 * by.high) | __CFADD__(v5, *(&v11 + 1));
  v10 = v5 + *(&v11 + 1);
  v12 = v9;
  v9 = __CFADD__(v8, v7);
  v13 = v8 + v7;
  if (v9)
  {
    ++v6;
  }

  v15 = (__PAIR128__(v6, v13) + __PAIR128__(v12, v10)) >> 64;
  v14 = v13 + v10;
  v16 = v3;
  v17 = v11;
  result.low.high = v17;
  result.low.low = v16;
  result.high.high = v15;
  result.high.low = v14;
  return result;
}

unint64_t specialized _wideDivide42<A>(_:by:)(Swift::UInt64 *a1, Swift::UInt64 *a2, Swift::UInt64 *a3, Swift::UInt64 a4, Swift::UInt64 a5, Swift::UInt64 a6, Swift::tuple_high_UInt64_low_UInt64 a7, Swift::UInt64 a8)
{
  v8 = a8;
  if (!(a7.low | a8))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000010, 0x800000018066AEF0 | 0x8000000000000000, "Swift/LegacyInt128.swift", 0x18uLL, 2, 0x4F3uLL);
  }

  v9 = a8 >= a5;
  if (a7.low != a4)
  {
    v9 = a7.low >= a4;
  }

  if (!v9)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000001FLL, 0x800000018066AEB0 | 0x8000000000000000, "Swift/LegacyInt128.swift", 0x18uLL, 2, 0x4F6uLL);
  }

  high = a7.high;
  if (!(a4 | a5))
  {
    v11 = a6;
    v12 = a7;

    return specialized _wideDivide22<A>(_:by:)(a1, a2, a3, v11, v12, a8);
  }

  if (!a7.low)
  {
    if (!a8)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v20 = a1;
    v21 = a3;
    v22 = a2;
    if (a4 % a8)
    {
      v23.low = a5;
      v24 = a6;
      v23.high = a4 % a8;
      remainder = UInt64.dividingFullWidth(_:)(v23).remainder;
      a6 = v24;
      v26 = remainder;
      if (remainder)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v26 = a5 % a8;
      if (a5 % a8)
      {
LABEL_17:
        v27 = a6;
        v29 = UInt64.dividingFullWidth(_:)(*&v26);
        v28 = v29.remainder;
        result = v29.quotient;
        if (v29.remainder)
        {
LABEL_18:
          v30 = result;
          v31.high = v28;
          v31.low = high;
          v33 = UInt64.dividingFullWidth(_:)(v31);
          v32 = v33.remainder;
          quotient = v33.quotient;
          result = v30;
LABEL_25:
          *v20 = quotient;
          *v21 = v32;
          *v22 = 0;
          return result;
        }

LABEL_24:
        quotient = high / a8;
        v32 = high % a8;
        goto LABEL_25;
      }
    }

    result = a6 / a8;
    v28 = a6 % a8;
    if (a6 % a8)
    {
      goto LABEL_18;
    }

    goto LABEL_24;
  }

  v14 = __clz(a7.low);
  if (!v14)
  {
    v35 = a7.high | a5;
    v16 = a6 | a4;
    if (!(a6 | a4))
    {
      goto LABEL_28;
    }

LABEL_33:
    v38 = a1;
    v39 = a3;
    v40 = a2;
    if (v16 == a7.low)
    {
      result = -1;
    }

    else
    {
      v41.high = v16;
      v41.low = v35;
      low = a7.low;
      v43 = a6;
      result = UInt64.dividingFullWidth(_:)(v41).quotient;
      a6 = v43;
      a7.low = low;
    }

    v44 = result * v8;
    v45 = (__PAIR128__(a7.low, v8) * result) >> 64;
    if (__CFADD__((result * v8) >> 64, result * a7.low))
    {
      v46 = ((result * a7.low) >> 64) + 1;
    }

    else
    {
      v46 = (result * a7.low) >> 64;
    }

    v47 = v16 >= v46;
    if (v16 == v46)
    {
      goto LABEL_54;
    }

LABEL_57:
    while (2)
    {
      if (!v47)
      {
        while (1)
        {
          v48 = __CFADD__(a6, v8);
          v47 = __CFADD__(v35, a7.low);
          v35 += a7.low;
          if (v47)
          {
            break;
          }

          if (v35 == -1)
          {
            if (v48)
            {
              goto LABEL_52;
            }

            v35 = -1;
          }

          else
          {
            v35 += v48;
          }

          a6 += v8;
          --result;
          v47 = v16 >= v46;
          if (v16 != v46)
          {
            goto LABEL_57;
          }

LABEL_54:
          v47 = v35 >= v45;
          if (v35 != v45)
          {
            goto LABEL_57;
          }

          if (a6 >= v44)
          {
            v35 = v45;
            goto LABEL_59;
          }
        }

        if (v48)
        {
LABEL_52:
          ++v35;
        }

        ++v16;
        --result;
        a6 += v8;
        v47 = v16 >= v46;
        if (v16 != v46)
        {
          continue;
        }

        goto LABEL_54;
      }

      break;
    }

LABEL_59:
    v51 = __PAIR128__(v35, a6) - __PAIR128__(v45, v44);
    v49 = (__PAIR128__(v35, a6) - __PAIR128__(v45, v44)) >> 64;
    v50 = v51;
    if (v49 == a7.low)
    {
      v52 = -1;
    }

    else
    {
      v53 = result;
      v54.high = v49;
      v54.low = v51;
      v55 = a7.low;
      v56 = UInt64.dividingFullWidth(_:)(v54).quotient;
      a7.low = v55;
      v52 = v56;
      result = v53;
    }

    v57 = v52 * v8;
    v58 = (__PAIR128__(a7.low, v8) * v52) >> 64;
    if (__CFADD__((v52 * v8) >> 64, v52 * a7.low))
    {
      v59 = ((v52 * a7.low) >> 64) + 1;
    }

    else
    {
      v59 = (v52 * a7.low) >> 64;
    }

    v60 = v49 >= v59;
    if (v49 == v59)
    {
      goto LABEL_80;
    }

LABEL_83:
    while (2)
    {
      if (v60)
      {
LABEL_85:
        v47 = high >= v57;
        v62 = high - v57;
        v63 = !v47;
        v64 = v50 - v58 - v63;
        *v38 = v52;
        v65 = (v64 << -v14) | (v62 >> v14);
        if (v14)
        {
          v66 = v64 >> v14;
        }

        else
        {
          v65 = v62;
          v66 = v64;
        }

        *v39 = v65;
        *v40 = v66;
        return result;
      }

      while (1)
      {
        v61 = __CFADD__(high, v8);
        v47 = __CFADD__(v50, a7.low);
        v50 += a7.low;
        if (v47)
        {
          break;
        }

        if (v50 == -1)
        {
          if (v61)
          {
            goto LABEL_78;
          }

          v50 = -1;
        }

        else
        {
          v50 += v61;
        }

        high += v8;
        --v52;
        v60 = v49 >= v59;
        if (v49 != v59)
        {
          goto LABEL_83;
        }

LABEL_80:
        v60 = v50 >= v58;
        if (v50 != v58)
        {
          goto LABEL_83;
        }

        if (high >= v57)
        {
          v50 = v58;
          goto LABEL_85;
        }
      }

      if (v61)
      {
LABEL_78:
        ++v50;
      }

      ++v49;
      --v52;
      high += v8;
      v60 = v49 >= v59;
      if (v49 != v59)
      {
        continue;
      }

      goto LABEL_80;
    }
  }

  v15 = 0x80 - v14;
  v16 = (a5 >> -v14) | (a4 << v14);
  v17 = (128 - v14) & 0x7F;
  v18 = a6 << v14;
  if (v17 > 0x3F)
  {
    v19 = a6 >> v15;
  }

  else if (v17)
  {
    v19 = (a7.high >> v15) | v18;
    v16 |= a6 >> v15;
  }

  else
  {
    v16 |= a6;
    v19 = a7.high;
  }

  a7.low = (a8 >> -v14) | (a7.low << v14);
  v8 = a8 << v14;
  v35 = v19 | (a5 << v14);
  a6 = (a7.high >> (-v14 & 0x3F)) | v18;
  high = a7.high << v14;
  if (v16)
  {
    goto LABEL_33;
  }

LABEL_28:
  v36 = a6 < v8;
  if (v35 != a7.low)
  {
    v36 = v35 < a7.low;
  }

  if (!v36)
  {
    goto LABEL_33;
  }

  if (v35 == a7.low)
  {
    v37 = -1;
  }

  else
  {
    v67 = a1;
    v68.high = v35;
    v69 = a2;
    v68.low = a6;
    v70 = a3;
    v71 = a7.low;
    v72 = a6;
    v73 = UInt64.dividingFullWidth(_:)(v68).quotient;
    a6 = v72;
    a7.low = v71;
    a3 = v70;
    a2 = v69;
    v37 = v73;
    a1 = v67;
  }

  v74 = v37 * v8;
  v75 = (__PAIR128__(a7.low, v8) * v37) >> 64;
  if (__CFADD__((v37 * v8) >> 64, v37 * a7.low))
  {
    v76 = ((v37 * a7.low) >> 64) + 1;
  }

  else
  {
    v76 = (v37 * a7.low) >> 64;
  }

  v77 = v35 >= v76;
  if (v35 == v76)
  {
    goto LABEL_111;
  }

LABEL_114:
  while (2)
  {
    if (!v77)
    {
      while (1)
      {
        v78 = __CFADD__(high, v8);
        v47 = __CFADD__(a6, a7.low);
        a6 += a7.low;
        if (v47)
        {
          break;
        }

        if (a6 == -1)
        {
          if (v78)
          {
            goto LABEL_109;
          }

          a6 = -1;
        }

        else
        {
          a6 += v78;
        }

        high += v8;
        --v37;
        v77 = v35 >= v76;
        if (v35 != v76)
        {
          goto LABEL_114;
        }

LABEL_111:
        v77 = a6 >= v75;
        if (a6 != v75)
        {
          goto LABEL_114;
        }

        if (high >= v74)
        {
          v79 = a1;
          a6 = v75;
          goto LABEL_117;
        }
      }

      if (v78)
      {
LABEL_109:
        ++a6;
      }

      ++v35;
      --v37;
      high += v8;
      v77 = v35 >= v76;
      if (v35 != v76)
      {
        continue;
      }

      goto LABEL_111;
    }

    break;
  }

  v79 = a1;
LABEL_117:
  result = 0;
  v47 = high >= v74;
  v80 = high - v74;
  v81 = a6 - v75;
  v82 = !v47;
  v83 = v81 - v82;
  *v79 = v37;
  v84 = (v83 << -v14) | (v80 >> v14);
  if (v14)
  {
    v85 = v83 >> v14;
  }

  else
  {
    v84 = v80;
    v85 = v83;
  }

  *a3 = v84;
  *a2 = v85;
  return result;
}

uint64_t specialized _wideMaskedShiftLeft<A>(_:_:)(uint64_t *a1, unint64_t a2, unint64_t a3, char a4)
{
  v4 = (a2 << a4) | (a3 >> -a4);
  if ((a4 & 0x7F) != 0)
  {
    v5 = a3 << a4;
  }

  else
  {
    v5 = a3;
  }

  if ((a4 & 0x7F) == 0)
  {
    v4 = a2;
  }

  if ((a4 & 0x7Fu) <= 0x3FuLL)
  {
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = a3 << a4;
  }

  *a1 = v5;
  return v6;
}

uint64_t protocol witness for FixedWidthInteger.addingReportingOverflow(_:) in conformance _UInt128(void *a1, void *a2)
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

unint64_t protocol witness for FixedWidthInteger.subtractingReportingOverflow(_:) in conformance _UInt128(unint64_t *a1, unint64_t *a2)
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

uint64_t protocol witness for FixedWidthInteger.multipliedReportingOverflow(by:) in conformance _UInt128(unint64_t *a1, unint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = *v2;
  v6 = v2[1];
  v7 = !is_mul_ok(v6, *a2);
  v8 = v6 * *a2;
  v9 = !is_mul_ok(*v2, v4);
  v10 = v8 + *v2 * v4;
  v11 = __CFADD__(v8, *v2 * v4);
  v12 = v5 * v3;
  v13 = (v5 * v3) >> 64;
  v14 = __CFADD__(v10, v13);
  v15 = v10 + v13;
  v16 = v14;
  if (v4)
  {
    v17 = v6 == 0;
  }

  else
  {
    v17 = 1;
  }

  v18 = 1;
  if (v17)
  {
    v19 = (v9 || v11) | v16;
    if (v7)
    {
      v18 = 1;
    }

    else
    {
      v18 = v19;
    }
  }

  *a1 = v12;
  a1[1] = v15;
  return v18 & 1;
}

BOOL protocol witness for FixedWidthInteger.dividedReportingOverflow(by:) in conformance _UInt128(Swift::UInt64 *a1, Swift::UInt64 *a2)
{
  v5.low = a2[1];
  v5.high = *v2;
  v4 = v2[1];
  v6 = v5.low | *a2;
  v7 = v6 == 0;
  if (v6)
  {
    v4 = specialized _wideDivide22<A>(_:by:)(&v11, &v10, &v9, v4, v5, *a2);
    v5.high = v11;
  }

  *a1 = v5.high;
  a1[1] = v4;
  return v7;
}

BOOL protocol witness for FixedWidthInteger.remainderReportingOverflow(dividingBy:) in conformance _UInt128(Swift::UInt64 *a1, Swift::UInt64 *a2)
{
  v5.low = a2[1];
  v5.high = *v2;
  v4 = v2[1];
  v6 = v5.low | *a2;
  v7 = v6 == 0;
  if (v6)
  {
    specialized _wideDivide22<A>(_:by:)(&v11, &v10, &v9, v4, v5, *a2);
    v5.high = v9;
    v4 = v10;
  }

  *a1 = v5.high;
  a1[1] = v4;
  return v7;
}

unint64_t protocol witness for FixedWidthInteger.dividingFullWidth(_:) in conformance _UInt128(void *a1, Swift::UInt64 *a2, Swift::UInt64 *a3, Swift::UInt64 *a4)
{
  v13.high = *a4;
  v13.low = v4[1];
  result = specialized _wideDivide42<A>(_:by:)(&v12, &v11, &v10, a3[1], *a3, a4[1], v13, *v4);
  v8 = v11;
  v9 = v10;
  *a1 = v12;
  a1[1] = result;
  *a2 = v9;
  a2[1] = v8;
  return result;
}

uint64_t *protocol witness for static FixedWidthInteger.&>> infix(_:_:) in conformance _UInt128@<X0>(uint64_t *result@<X0>, void *a2@<X1>, unint64_t *a3@<X8>)
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

uint64_t *protocol witness for static FixedWidthInteger.&<< infix(_:_:) in conformance _UInt128@<X0>(uint64_t *result@<X0>, void *a2@<X1>, void *a3@<X8>)
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

_OWORD *protocol witness for static FixedWidthInteger.&* infix(_:_:) in conformance _UInt128@<X0>(_OWORD *result@<X0>, _OWORD *a2@<X1>, void *a3@<X8>)
{
  v3 = (*a2 * *result) >> 64;
  *a3 = *a2 * *result;
  a3[1] = v3;
  return result;
}

uint64_t protocol witness for BinaryInteger.init<A>(truncatingIfNeeded:) in conformance _Int128@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X5>, uint64_t *a4@<X8>)
{
  v7 = a3();
  v9 = v8;
  result = (*(*(a2 - 8) + 8))(a1, a2);
  *a4 = v7;
  a4[1] = v9;
  return result;
}

uint64_t protocol witness for static BinaryInteger.>> infix<A>(_:_:) in conformance _UInt128@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, unint64_t *a5@<X8>)
{
  v110 = *(*(a4 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v110, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v109 = v10;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v108 = v106 - v12;
  v13 = *(a3 - 1);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = v106 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v114 = v106 - v17;
  v18 = *a1;
  v111 = a1[1];
  v112 = v18;
  v19 = (a4 + 64);
  v115 = *(a4 + 64);
  if (v115(a3, a4))
  {
    v20 = *(a4 + 128);
    v21 = v20(a3, a4);
    if (v21 >= 64)
    {
      v116 = -128;
      v113 = a2;
      v24 = v20;
      v25 = v16;
      v26 = v13;
      v27 = a5;
      v28 = *(a4 + 96);
      v29 = lazy protocol witness table accessor for type Int and conformance Int(v21, v22, v23);
      v107 = (a4 + 64);
      v30 = v114;
      v28(&v116, &type metadata for Int, v29, a3, a4);
      a5 = v27;
      v13 = v26;
      v16 = v25;
      v20 = v24;
      a2 = v113;
      v31 = (*(*(*(a4 + 32) + 8) + 16))(v113, v30, a3);
      v32 = v30;
      v19 = v107;
      result = (*(v13 + 8))(v32, a3);
      if (v31)
      {
        goto LABEL_25;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v34 = v115(a3, a4);
    v20 = *(a4 + 128);
    v35 = v20(a3, a4);
    if (v34)
    {
      v113 = a2;
      v107 = v20;
      if (v35 <= 64)
      {
        v72 = v109;
        v71 = v110;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v110, a3, v109, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        v74 = v108;
        (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v72, AssociatedConformanceWitness);
        v75 = v114;
        (v71[3])(v74, a3, v71);
        a2 = v113;
        LOBYTE(v71) = (*(*(*(a4 + 32) + 8) + 16))(v113, v75, a3);
        result = (*(v13 + 8))(v75, a3);
        if (v71)
        {
          goto LABEL_25;
        }

        result = (*(a4 + 120))(a3, a4);
        v20 = v107;
        if (result < -128)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v116 = -128;
        v38 = v16;
        v39 = v13;
        v40 = a5;
        v41 = *(a4 + 96);
        v42 = lazy protocol witness table accessor for type Int and conformance Int(v35, v36, v37);
        v43 = v114;
        v41(&v116, &type metadata for Int, v42, a3, a4);
        a5 = v40;
        v13 = v39;
        v16 = v38;
        v44 = v113;
        v45 = (*(*(*(a4 + 32) + 8) + 16))(v113, v43, a3);
        v46 = v43;
        v19 = (a4 + 64);
        a2 = v44;
        result = (*(v13 + 8))(v46, a3);
        v20 = v107;
        if (v45)
        {
          goto LABEL_25;
        }
      }

      goto LABEL_11;
    }

    if (v35 >= 64)
    {
      goto LABEL_11;
    }
  }

  result = (*(a4 + 120))(a3, a4);
  if (result < -128)
  {
    goto LABEL_25;
  }

LABEL_11:
  v47 = v115(a3, a4);
  v106[1] = a4 + 128;
  v48 = v20(a3, a4);
  if (v47)
  {
    if (v48 > 64)
    {
      goto LABEL_13;
    }
  }

  else if (v48 >= 64)
  {
LABEL_13:
    v116 = 128;
    v113 = a2;
    v51 = v20;
    v52 = v16;
    v53 = v13;
    v54 = a5;
    v55 = *(a4 + 96);
    v56 = lazy protocol witness table accessor for type Int and conformance Int(v48, v49, v50);
    v107 = v19;
    v57 = v114;
    v55(&v116, &type metadata for Int, v56, a3, a4);
    a5 = v54;
    v13 = v53;
    v16 = v52;
    v20 = v51;
    a2 = v113;
    v58 = (*(*(*(a4 + 32) + 8) + 16))(v57, v113, a3);
    v59 = v57;
    v19 = v107;
    result = (*(v13 + 8))(v59, a3);
    if (v58)
    {
      goto LABEL_25;
    }

    goto LABEL_17;
  }

  result = (*(a4 + 120))(a3, a4);
  if (result > 128)
  {
    goto LABEL_25;
  }

LABEL_17:
  (*(v13 + 16))(v16, a2, a3);
  if ((v115(a3, a4) & 1) == 0 || v20(a3, a4) < 65)
  {
    goto LABEL_36;
  }

  if ((v115(a3, a4) & 1) == 0)
  {
    v78 = v115(a3, a4);
    v79 = v20(a3, a4);
    if ((v78 & 1) == 0)
    {
      if (v79 >= 64)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    }

    v107 = v20;
    if (v79 <= 64)
    {
      v90 = v109;
      v89 = v110;
      v91 = swift_getAssociatedConformanceWitness(v110, a3, v109, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v92 = v108;
      (*(v91 + 8))(&qword_18071E0A8, 256, v90, v91);
      v93 = v114;
      (v89[3])(v92, a3, v89);
      LOBYTE(v89) = (*(*(*(a4 + 32) + 8) + 16))(v16, v93, a3);
      (*(v13 + 8))(v93, a3);
      v20 = v107;
      if ((v89 & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v116 = 0x8000000000000000;
      v82 = v16;
      v83 = v13;
      v84 = a5;
      v85 = *(a4 + 96);
      v86 = lazy protocol witness table accessor for type Int and conformance Int(v79, v80, v81);
      v87 = v114;
      v85(&v116, &type metadata for Int, v86, a3, a4);
      a5 = v84;
      v13 = v83;
      v16 = v82;
      v88 = (*(*(*(a4 + 32) + 8) + 16))(v82, v87, a3);
      (*(v13 + 8))(v87, a3);
      v20 = v107;
      if ((v88 & 1) == 0)
      {
        goto LABEL_36;
      }
    }

LABEL_40:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v60 = v20(a3, a4);
  if (v60 < 64)
  {
LABEL_35:
    (*(a4 + 120))(a3, a4);
    goto LABEL_36;
  }

  v116 = 0x8000000000000000;
  v63 = v20;
  v64 = v16;
  v65 = v13;
  v66 = a5;
  v67 = *(a4 + 96);
  v68 = lazy protocol witness table accessor for type Int and conformance Int(v60, v61, v62);
  v107 = v19;
  v69 = v114;
  v67(&v116, &type metadata for Int, v68, a3, a4);
  a5 = v66;
  v13 = v65;
  v16 = v64;
  v20 = v63;
  v70 = (*(*(*(a4 + 32) + 8) + 16))(v16, v69, a3);
  (*(v13 + 8))(v69, a3);
  if (v70)
  {
    goto LABEL_40;
  }

LABEL_36:
  if (v20(a3, a4) <= 64 && (v20(a3, a4) != 64 || (v115(a3, a4) & 1) != 0))
  {
    goto LABEL_46;
  }

  v94 = v115(a3, a4);
  v95 = v20(a3, a4);
  if (v94)
  {
    if (v95 > 64)
    {
      goto LABEL_39;
    }

LABEL_45:
    (*(a4 + 120))(a3, a4);
    goto LABEL_46;
  }

  if (v95 < 64)
  {
    goto LABEL_45;
  }

LABEL_39:
  v116 = 0x7FFFFFFFFFFFFFFFLL;
  v98 = v16;
  v99 = a5;
  v100 = *(a4 + 96);
  v101 = lazy protocol witness table accessor for type Int and conformance Int(v95, v96, v97);
  v102 = v114;
  v100(&v116, &type metadata for Int, v101, a3, a4);
  a5 = v99;
  v16 = v98;
  v103 = (*(*(*(a4 + 32) + 8) + 16))(v102, v98, a3);
  (*(v13 + 8))(v102, a3);
  if (v103)
  {
    goto LABEL_40;
  }

LABEL_46:
  v104 = (*(a4 + 120))(a3, a4);
  result = (*(v13 + 8))(v16, a3);
  if ((v104 & 0x8000000000000000) != 0)
  {
    if (v104 > 0xFFFFFFFFFFFFFF80)
    {
      v105 = -v104;
      if (-v104 < 0x40)
      {
        v76 = (v112 >> v104) | (v111 << v105);
        v77 = v112 << v105;
        goto LABEL_27;
      }

      v76 = v112 << v105;
      goto LABEL_26;
    }

LABEL_25:
    v76 = 0;
LABEL_26:
    v77 = 0;
    goto LABEL_27;
  }

  v76 = v111;
  v77 = v112;
  if (v104 >= 0x80)
  {
    goto LABEL_25;
  }

  if (v104 > 0x3F)
  {
    v77 = v111 >> v104;
    v76 = 0;
  }

  else if (v104)
  {
    v77 = (v111 << -v104) | (v112 >> v104);
    v76 = v111 >> v104;
  }

LABEL_27:
  *a5 = v77;
  a5[1] = v76;
  return result;
}

uint64_t protocol witness for static BinaryInteger.>>= infix<A>(_:_:) in conformance _UInt128(unint64_t *a1, uint64_t a2, const char *a3, uint64_t a4)
{
  v107 = *(*(a4 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v107, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v106 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v105 = v103 - v10;
  v11 = *(a3 - 1);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = v103 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v109 = v103 - v15;
  v16 = (a4 + 64);
  v110 = *(a4 + 64);
  if (v110(a3, a4))
  {
    v17 = *(a4 + 128);
    v18 = v17(a3, a4);
    if (v18 >= 64)
    {
      v111 = -128;
      v108 = a2;
      v35 = v17;
      v36 = v14;
      v37 = v11;
      v38 = a1;
      v39 = *(a4 + 96);
      v40 = lazy protocol witness table accessor for type Int and conformance Int(v18, v19, v20);
      v104 = (a4 + 64);
      v41 = v109;
      v39(&v111, &type metadata for Int, v40, a3, a4);
      a1 = v38;
      v11 = v37;
      v14 = v36;
      v17 = v35;
      a2 = v108;
      v42 = (*(*(*(a4 + 32) + 8) + 16))(v108, v41, a3);
      v43 = v41;
      v16 = v104;
      result = (*(v11 + 8))(v43, a3);
      if (v42)
      {
        goto LABEL_21;
      }
    }

    else
    {
      result = (*(a4 + 120))(a3, a4);
      if (result <= -129)
      {
        goto LABEL_21;
      }
    }
  }

  else
  {
    v22 = v110(a3, a4);
    v17 = *(a4 + 128);
    v23 = v17(a3, a4);
    if (v22)
    {
      v108 = a2;
      v104 = v17;
      if (v23 > 64)
      {
        v111 = -128;
        v26 = v14;
        v27 = v11;
        v28 = a1;
        v29 = *(a4 + 96);
        v30 = lazy protocol witness table accessor for type Int and conformance Int(v23, v24, v25);
        v31 = v109;
        v29(&v111, &type metadata for Int, v30, a3, a4);
        a1 = v28;
        v11 = v27;
        v14 = v26;
        v32 = v108;
        v33 = (*(*(*(a4 + 32) + 8) + 16))(v108, v31, a3);
        v34 = v31;
        v16 = (a4 + 64);
        a2 = v32;
        result = (*(v11 + 8))(v34, a3);
        v17 = v104;
        if (v33)
        {
          goto LABEL_21;
        }

        goto LABEL_15;
      }

      v45 = v106;
      v44 = v107;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v107, a3, v106, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v47 = v105;
      (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v45, AssociatedConformanceWitness);
      v48 = v109;
      (v44[3])(v47, a3, v44);
      a2 = v108;
      LOBYTE(v44) = (*(*(*(a4 + 32) + 8) + 16))(v108, v48, a3);
      result = (*(v11 + 8))(v48, a3);
      v17 = v104;
      if (v44)
      {
        goto LABEL_21;
      }
    }

    else if (v23 >= 64)
    {
      goto LABEL_15;
    }

    result = (*(a4 + 120))(a3, a4);
    if (result < -128)
    {
      goto LABEL_21;
    }
  }

LABEL_15:
  v49 = v110(a3, a4);
  v103[1] = a4 + 128;
  v50 = v17(a3, a4);
  if (v49)
  {
    if (v50 > 64)
    {
      goto LABEL_17;
    }

LABEL_20:
    result = (*(a4 + 120))(a3, a4);
    if (result > 128)
    {
      goto LABEL_21;
    }

    goto LABEL_24;
  }

  if (v50 < 64)
  {
    goto LABEL_20;
  }

LABEL_17:
  v111 = 128;
  v108 = a2;
  v53 = v17;
  v54 = v14;
  v55 = v11;
  v56 = a1;
  v57 = *(a4 + 96);
  v58 = lazy protocol witness table accessor for type Int and conformance Int(v50, v51, v52);
  v104 = v16;
  v59 = v109;
  v57(&v111, &type metadata for Int, v58, a3, a4);
  a1 = v56;
  v11 = v55;
  v14 = v54;
  v17 = v53;
  a2 = v108;
  v60 = (*(*(*(a4 + 32) + 8) + 16))(v59, v108, a3);
  v61 = v59;
  v16 = v104;
  result = (*(v11 + 8))(v61, a3);
  if (v60)
  {
    goto LABEL_21;
  }

LABEL_24:
  (*(v11 + 16))(v14, a2, a3);
  if ((v110(a3, a4) & 1) == 0 || v17(a3, a4) < 65)
  {
    goto LABEL_38;
  }

  if ((v110(a3, a4) & 1) == 0)
  {
    v75 = v110(a3, a4);
    v76 = v17(a3, a4);
    if ((v75 & 1) == 0)
    {
      if (v76 >= 64)
      {
        goto LABEL_38;
      }

      goto LABEL_37;
    }

    v104 = v17;
    if (v76 <= 64)
    {
      v87 = v106;
      v86 = v107;
      v88 = swift_getAssociatedConformanceWitness(v107, a3, v106, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v89 = v105;
      (*(v88 + 8))(&qword_18071E0A8, 256, v87, v88);
      v90 = v109;
      (v86[3])(v89, a3, v86);
      LOBYTE(v86) = (*(*(*(a4 + 32) + 8) + 16))(v14, v90, a3);
      (*(v11 + 8))(v90, a3);
      v17 = v104;
      if ((v86 & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v111 = 0x8000000000000000;
      v79 = v14;
      v80 = v11;
      v81 = a1;
      v82 = *(a4 + 96);
      v83 = lazy protocol witness table accessor for type Int and conformance Int(v76, v77, v78);
      v84 = v109;
      v82(&v111, &type metadata for Int, v83, a3, a4);
      a1 = v81;
      v11 = v80;
      v14 = v79;
      v85 = (*(*(*(a4 + 32) + 8) + 16))(v79, v84, a3);
      (*(v11 + 8))(v84, a3);
      v17 = v104;
      if ((v85 & 1) == 0)
      {
        goto LABEL_38;
      }
    }

LABEL_42:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v64 = v17(a3, a4);
  if (v64 < 64)
  {
LABEL_37:
    (*(a4 + 120))(a3, a4);
    goto LABEL_38;
  }

  v111 = 0x8000000000000000;
  v67 = v17;
  v68 = v14;
  v69 = v11;
  v70 = a1;
  v71 = *(a4 + 96);
  v72 = lazy protocol witness table accessor for type Int and conformance Int(v64, v65, v66);
  v104 = v16;
  v73 = v109;
  v71(&v111, &type metadata for Int, v72, a3, a4);
  a1 = v70;
  v11 = v69;
  v14 = v68;
  v17 = v67;
  v74 = (*(*(*(a4 + 32) + 8) + 16))(v14, v73, a3);
  (*(v11 + 8))(v73, a3);
  if (v74)
  {
    goto LABEL_42;
  }

LABEL_38:
  if (v17(a3, a4) <= 64 && (v17(a3, a4) != 64 || (v110(a3, a4) & 1) != 0))
  {
    goto LABEL_48;
  }

  v91 = v110(a3, a4);
  v92 = v17(a3, a4);
  if (v91)
  {
    if (v92 > 64)
    {
      goto LABEL_41;
    }

LABEL_47:
    (*(a4 + 120))(a3, a4);
    goto LABEL_48;
  }

  if (v92 < 64)
  {
    goto LABEL_47;
  }

LABEL_41:
  v111 = 0x7FFFFFFFFFFFFFFFLL;
  v95 = v14;
  v96 = a1;
  v97 = *(a4 + 96);
  v98 = lazy protocol witness table accessor for type Int and conformance Int(v92, v93, v94);
  v99 = v109;
  v97(&v111, &type metadata for Int, v98, a3, a4);
  a1 = v96;
  v14 = v95;
  v100 = (*(*(*(a4 + 32) + 8) + 16))(v99, v95, a3);
  (*(v11 + 8))(v99, a3);
  if (v100)
  {
    goto LABEL_42;
  }

LABEL_48:
  v101 = (*(a4 + 120))(a3, a4);
  result = (*(v11 + 8))(v14, a3);
  v63 = *a1;
  v62 = a1[1];
  if ((v101 & 0x8000000000000000) != 0)
  {
    if (v101 > 0xFFFFFFFFFFFFFF80)
    {
      v102 = -v101;
      if (-v101 < 0x40)
      {
        v62 = (v62 << v102) | (v63 >> v101);
        v63 <<= v102;
        goto LABEL_23;
      }

      v62 = v63 << v102;
      goto LABEL_22;
    }

LABEL_21:
    v62 = 0;
LABEL_22:
    v63 = 0;
    goto LABEL_23;
  }

  if (v101 >= 0x80)
  {
    goto LABEL_21;
  }

  if (v101 > 0x3F)
  {
    v63 = v62 >> v101;
    v62 = 0;
  }

  else if (v101)
  {
    v63 = (v62 << -v101) | (v63 >> v101);
    v62 >>= v101;
  }

LABEL_23:
  *a1 = v63;
  a1[1] = v62;
  return result;
}

unint64_t protocol witness for static BinaryInteger.<< infix<A>(_:_:) in conformance _UInt128@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v102 = a5;
  v96 = *(*(a4 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v96, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v95 = v9;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v94 = &v92 - v11;
  v12 = *(a3 - 1);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v101 = &v92 - v16;
  v17 = *a1;
  v97 = a1[1];
  v98 = v17;
  v18 = *(a4 + 64);
  if (v18(a3, a4))
  {
    v19 = *(a4 + 128);
    v20 = v19(a3, a4);
    if (v20 >= 64)
    {
      v103 = -128;
      v99 = v18;
      v23 = v15;
      v24 = v12;
      v25 = a2;
      v26 = *(a4 + 96);
      v27 = lazy protocol witness table accessor for type Int and conformance Int(v20, v21, v22);
      v100 = v19;
      v28 = v101;
      v26(&v103, &type metadata for Int, v27, a3, a4);
      a2 = v25;
      v12 = v24;
      v15 = v23;
      v18 = v99;
      v29 = (*(*(*(a4 + 32) + 8) + 16))(a2, v28, a3);
      v30 = v28;
      v19 = v100;
      (*(v12 + 8))(v30, a3);
      if (v29)
      {
        goto LABEL_25;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v31 = v18(a3, a4);
    v19 = *(a4 + 128);
    v32 = v19(a3, a4);
    if (v31)
    {
      v93 = a2;
      v100 = v19;
      if (v32 <= 64)
      {
        v60 = v95;
        v59 = v96;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v96, a3, v95, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        v62 = v94;
        (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v60, AssociatedConformanceWitness);
        v63 = v101;
        (v59[3])(v62, a3, v59);
        a2 = v93;
        LOBYTE(v59) = (*(*(*(a4 + 32) + 8) + 16))(v93, v63, a3);
        (*(v12 + 8))(v63, a3);
        if (v59)
        {
          goto LABEL_25;
        }

        v64 = (*(a4 + 120))(a3, a4);
        v19 = v100;
        if (v64 < -128)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v103 = -128;
        v99 = v18;
        v35 = *(a4 + 96);
        v36 = lazy protocol witness table accessor for type Int and conformance Int(v32, v33, v34);
        v37 = v101;
        v35(&v103, &type metadata for Int, v36, a3, a4);
        v18 = v99;
        a2 = v93;
        v38 = (*(*(*(a4 + 32) + 8) + 16))(v93, v37, a3);
        (*(v12 + 8))(v37, a3);
        v19 = v100;
        if (v38)
        {
          goto LABEL_25;
        }
      }

      goto LABEL_11;
    }

    if (v32 >= 64)
    {
      goto LABEL_11;
    }
  }

  if ((*(a4 + 120))(a3, a4) < -128)
  {
    goto LABEL_25;
  }

LABEL_11:
  v39 = v18(a3, a4);
  v93 = a4 + 128;
  v40 = v19(a3, a4);
  if (v39)
  {
    if (v40 > 64)
    {
      goto LABEL_13;
    }
  }

  else if (v40 >= 64)
  {
LABEL_13:
    v103 = 128;
    v99 = v18;
    v43 = v15;
    v44 = v12;
    v45 = a2;
    v46 = *(a4 + 96);
    v47 = lazy protocol witness table accessor for type Int and conformance Int(v40, v41, v42);
    v100 = v19;
    v48 = v101;
    v46(&v103, &type metadata for Int, v47, a3, a4);
    a2 = v45;
    v12 = v44;
    v15 = v43;
    v18 = v99;
    v49 = (*(*(*(a4 + 32) + 8) + 16))(v48, a2, a3);
    v50 = v48;
    v19 = v100;
    (*(v12 + 8))(v50, a3);
    if (v49)
    {
      goto LABEL_25;
    }

    goto LABEL_17;
  }

  if ((*(a4 + 120))(a3, a4) > 128)
  {
    goto LABEL_25;
  }

LABEL_17:
  (*(v12 + 16))(v15, a2, a3);
  if ((v18(a3, a4) & 1) == 0 || v19(a3, a4) < 65)
  {
    goto LABEL_34;
  }

  if ((v18(a3, a4) & 1) == 0)
  {
    v67 = v18(a3, a4);
    v68 = v19(a3, a4);
    if ((v67 & 1) == 0)
    {
      if (v68 >= 64)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }

    v100 = v19;
    if (v68 <= 64)
    {
      v75 = v95;
      v76 = v96;
      v77 = swift_getAssociatedConformanceWitness(v96, a3, v95, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v78 = v94;
      (*(v77 + 8))(&qword_18071E0A8, 256, v75, v77);
      v79 = v76;
      v80 = v76[3];
      v81 = v101;
      (v80)(v78, a3, v79);
      LOBYTE(v78) = (*(*(*(a4 + 32) + 8) + 16))(v15, v81, a3);
      (*(v12 + 8))(v81, a3);
      v19 = v100;
      if ((v78 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v103 = 0x8000000000000000;
      v99 = v18;
      v71 = *(a4 + 96);
      v72 = lazy protocol witness table accessor for type Int and conformance Int(v68, v69, v70);
      v73 = v101;
      v71(&v103, &type metadata for Int, v72, a3, a4);
      v18 = v99;
      v74 = (*(*(*(a4 + 32) + 8) + 16))(v15, v73, a3);
      (*(v12 + 8))(v73, a3);
      v19 = v100;
      if ((v74 & 1) == 0)
      {
        goto LABEL_34;
      }
    }

LABEL_38:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v51 = v19(a3, a4);
  if (v51 < 64)
  {
LABEL_33:
    (*(a4 + 120))(a3, a4);
    goto LABEL_34;
  }

  v103 = 0x8000000000000000;
  v99 = v18;
  v54 = *(a4 + 96);
  v55 = lazy protocol witness table accessor for type Int and conformance Int(v51, v52, v53);
  v100 = v19;
  v56 = v101;
  v54(&v103, &type metadata for Int, v55, a3, a4);
  v18 = v99;
  v57 = (*(*(*(a4 + 32) + 8) + 16))(v15, v56, a3);
  v58 = v56;
  v19 = v100;
  (*(v12 + 8))(v58, a3);
  if (v57)
  {
    goto LABEL_38;
  }

LABEL_34:
  if (v19(a3, a4) <= 64 && (v19(a3, a4) != 64 || (v18(a3, a4) & 1) != 0))
  {
    goto LABEL_44;
  }

  v82 = v18(a3, a4);
  v83 = v19(a3, a4);
  if (v82)
  {
    if (v83 > 64)
    {
      goto LABEL_37;
    }

LABEL_43:
    (*(a4 + 120))(a3, a4);
    goto LABEL_44;
  }

  if (v83 < 64)
  {
    goto LABEL_43;
  }

LABEL_37:
  v103 = 0x7FFFFFFFFFFFFFFFLL;
  v86 = *(a4 + 96);
  v87 = lazy protocol witness table accessor for type Int and conformance Int(v83, v84, v85);
  v88 = v101;
  v86(&v103, &type metadata for Int, v87, a3, a4);
  v89 = (*(*(*(a4 + 32) + 8) + 16))(v88, v15, a3);
  (*(v12 + 8))(v88, a3);
  if (v89)
  {
    goto LABEL_38;
  }

LABEL_44:
  v90 = (*(a4 + 120))(a3, a4);
  (*(v12 + 8))(v15, a3);
  if ((v90 & 0x8000000000000000) != 0)
  {
    if (v90 > 0xFFFFFFFFFFFFFF80)
    {
      result = specialized _wideMaskedShiftRight<A>(_:_:)(&v103, v97, v98, -v90);
      goto LABEL_47;
    }
  }

  else if (v90 < 0x80)
  {
    result = specialized _wideMaskedShiftLeft<A>(_:_:)(&v103, v97, v98, v90);
LABEL_47:
    v65 = v103;
    goto LABEL_48;
  }

LABEL_25:
  v65 = 0;
  result = 0;
LABEL_48:
  v91 = v102;
  *v102 = v65;
  v91[1] = result;
  return result;
}

uint64_t protocol witness for static BinaryInteger.<<= infix<A>(_:_:) in conformance _UInt128(unint64_t *a1, uint64_t a2, const char *a3, uint64_t a4)
{
  v107 = *(*(a4 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v107, a3, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v106 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v105 = v103 - v10;
  v11 = *(a3 - 1);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = v103 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v109 = v103 - v15;
  v16 = (a4 + 64);
  v110 = *(a4 + 64);
  if (v110(a3, a4))
  {
    v17 = *(a4 + 128);
    v18 = v17(a3, a4);
    if (v18 >= 64)
    {
      v111 = -128;
      v108 = a2;
      v35 = v17;
      v36 = v14;
      v37 = v11;
      v38 = a1;
      v39 = *(a4 + 96);
      v40 = lazy protocol witness table accessor for type Int and conformance Int(v18, v19, v20);
      v104 = (a4 + 64);
      v41 = v109;
      v39(&v111, &type metadata for Int, v40, a3, a4);
      a1 = v38;
      v11 = v37;
      v14 = v36;
      v17 = v35;
      a2 = v108;
      v42 = (*(*(*(a4 + 32) + 8) + 16))(v108, v41, a3);
      v43 = v41;
      v16 = v104;
      result = (*(v11 + 8))(v43, a3);
      if (v42)
      {
        goto LABEL_21;
      }
    }

    else
    {
      result = (*(a4 + 120))(a3, a4);
      if (result <= -129)
      {
        goto LABEL_21;
      }
    }
  }

  else
  {
    v22 = v110(a3, a4);
    v17 = *(a4 + 128);
    v23 = v17(a3, a4);
    if (v22)
    {
      v108 = a2;
      v104 = v17;
      if (v23 > 64)
      {
        v111 = -128;
        v26 = v14;
        v27 = v11;
        v28 = a1;
        v29 = *(a4 + 96);
        v30 = lazy protocol witness table accessor for type Int and conformance Int(v23, v24, v25);
        v31 = v109;
        v29(&v111, &type metadata for Int, v30, a3, a4);
        a1 = v28;
        v11 = v27;
        v14 = v26;
        v32 = v108;
        v33 = (*(*(*(a4 + 32) + 8) + 16))(v108, v31, a3);
        v34 = v31;
        v16 = (a4 + 64);
        a2 = v32;
        result = (*(v11 + 8))(v34, a3);
        v17 = v104;
        if (v33)
        {
          goto LABEL_21;
        }

        goto LABEL_15;
      }

      v45 = v106;
      v44 = v107;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v107, a3, v106, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v47 = v105;
      (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v45, AssociatedConformanceWitness);
      v48 = v109;
      (v44[3])(v47, a3, v44);
      a2 = v108;
      LOBYTE(v44) = (*(*(*(a4 + 32) + 8) + 16))(v108, v48, a3);
      result = (*(v11 + 8))(v48, a3);
      v17 = v104;
      if (v44)
      {
        goto LABEL_21;
      }
    }

    else if (v23 >= 64)
    {
      goto LABEL_15;
    }

    result = (*(a4 + 120))(a3, a4);
    if (result < -128)
    {
      goto LABEL_21;
    }
  }

LABEL_15:
  v49 = v110(a3, a4);
  v103[1] = a4 + 128;
  v50 = v17(a3, a4);
  if (v49)
  {
    if (v50 > 64)
    {
      goto LABEL_17;
    }

LABEL_20:
    result = (*(a4 + 120))(a3, a4);
    if (result > 128)
    {
      goto LABEL_21;
    }

    goto LABEL_24;
  }

  if (v50 < 64)
  {
    goto LABEL_20;
  }

LABEL_17:
  v111 = 128;
  v108 = a2;
  v53 = v17;
  v54 = v14;
  v55 = v11;
  v56 = a1;
  v57 = *(a4 + 96);
  v58 = lazy protocol witness table accessor for type Int and conformance Int(v50, v51, v52);
  v104 = v16;
  v59 = v109;
  v57(&v111, &type metadata for Int, v58, a3, a4);
  a1 = v56;
  v11 = v55;
  v14 = v54;
  v17 = v53;
  a2 = v108;
  v60 = (*(*(*(a4 + 32) + 8) + 16))(v59, v108, a3);
  v61 = v59;
  v16 = v104;
  result = (*(v11 + 8))(v61, a3);
  if (v60)
  {
    goto LABEL_21;
  }

LABEL_24:
  (*(v11 + 16))(v14, a2, a3);
  if ((v110(a3, a4) & 1) == 0 || v17(a3, a4) < 65)
  {
    goto LABEL_38;
  }

  if ((v110(a3, a4) & 1) == 0)
  {
    v75 = v110(a3, a4);
    v76 = v17(a3, a4);
    if ((v75 & 1) == 0)
    {
      if (v76 >= 64)
      {
        goto LABEL_38;
      }

      goto LABEL_37;
    }

    v104 = v17;
    if (v76 <= 64)
    {
      v87 = v106;
      v86 = v107;
      v88 = swift_getAssociatedConformanceWitness(v107, a3, v106, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v89 = v105;
      (*(v88 + 8))(&qword_18071E0A8, 256, v87, v88);
      v90 = v109;
      (v86[3])(v89, a3, v86);
      LOBYTE(v86) = (*(*(*(a4 + 32) + 8) + 16))(v14, v90, a3);
      (*(v11 + 8))(v90, a3);
      v17 = v104;
      if ((v86 & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v111 = 0x8000000000000000;
      v79 = v14;
      v80 = v11;
      v81 = a1;
      v82 = *(a4 + 96);
      v83 = lazy protocol witness table accessor for type Int and conformance Int(v76, v77, v78);
      v84 = v109;
      v82(&v111, &type metadata for Int, v83, a3, a4);
      a1 = v81;
      v11 = v80;
      v14 = v79;
      v85 = (*(*(*(a4 + 32) + 8) + 16))(v79, v84, a3);
      (*(v11 + 8))(v84, a3);
      v17 = v104;
      if ((v85 & 1) == 0)
      {
        goto LABEL_38;
      }
    }

LABEL_42:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v64 = v17(a3, a4);
  if (v64 < 64)
  {
LABEL_37:
    (*(a4 + 120))(a3, a4);
    goto LABEL_38;
  }

  v111 = 0x8000000000000000;
  v67 = v17;
  v68 = v14;
  v69 = v11;
  v70 = a1;
  v71 = *(a4 + 96);
  v72 = lazy protocol witness table accessor for type Int and conformance Int(v64, v65, v66);
  v104 = v16;
  v73 = v109;
  v71(&v111, &type metadata for Int, v72, a3, a4);
  a1 = v70;
  v11 = v69;
  v14 = v68;
  v17 = v67;
  v74 = (*(*(*(a4 + 32) + 8) + 16))(v14, v73, a3);
  (*(v11 + 8))(v73, a3);
  if (v74)
  {
    goto LABEL_42;
  }

LABEL_38:
  if (v17(a3, a4) <= 64 && (v17(a3, a4) != 64 || (v110(a3, a4) & 1) != 0))
  {
    goto LABEL_48;
  }

  v91 = v110(a3, a4);
  v92 = v17(a3, a4);
  if (v91)
  {
    if (v92 > 64)
    {
      goto LABEL_41;
    }

LABEL_47:
    (*(a4 + 120))(a3, a4);
    goto LABEL_48;
  }

  if (v92 < 64)
  {
    goto LABEL_47;
  }

LABEL_41:
  v111 = 0x7FFFFFFFFFFFFFFFLL;
  v95 = v14;
  v96 = a1;
  v97 = *(a4 + 96);
  v98 = lazy protocol witness table accessor for type Int and conformance Int(v92, v93, v94);
  v99 = v109;
  v97(&v111, &type metadata for Int, v98, a3, a4);
  a1 = v96;
  v14 = v95;
  v100 = (*(*(*(a4 + 32) + 8) + 16))(v99, v95, a3);
  (*(v11 + 8))(v99, a3);
  if (v100)
  {
    goto LABEL_42;
  }

LABEL_48:
  v101 = (*(a4 + 120))(a3, a4);
  result = (*(v11 + 8))(v14, a3);
  v63 = *a1;
  v62 = a1[1];
  if ((v101 & 0x8000000000000000) != 0)
  {
    if (v101 > 0xFFFFFFFFFFFFFF80)
    {
      v102 = -v101;
      if (-v101 >= 0x40)
      {
        v63 = v62 >> v102;
        v62 = 0;
      }

      else
      {
        v63 = (v62 << v101) | (v63 >> v102);
        v62 >>= v102;
      }

      goto LABEL_23;
    }

LABEL_21:
    v62 = 0;
LABEL_22:
    v63 = 0;
    goto LABEL_23;
  }

  if (v101 >= 0x80)
  {
    goto LABEL_21;
  }

  if (v101 > 0x3F)
  {
    v62 = v63 << v101;
    goto LABEL_22;
  }

  if (v101)
  {
    v62 = (v62 << v101) | (v63 >> -v101);
    v63 <<= v101;
  }

LABEL_23:
  *a1 = v63;
  a1[1] = v62;
  return result;
}