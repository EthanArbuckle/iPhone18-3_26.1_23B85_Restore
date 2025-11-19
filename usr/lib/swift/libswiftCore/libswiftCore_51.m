__objc2_class **static Unicode.UTF8._checkAllErrors<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x1EEE9AC00](a1);
  (*(v6 + 16))(&v31[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8]);
  v7 = (*(a3 + 56))(a2, a3);
  v8 = (v7 + 32);
  v30 = v7;
  v9 = *(v7 + 16);
  v10 = validateUTF8(_:)((v7 + 32), v9);
  if (v10 < 0)
  {
    v15 = v10;
    v16 = v11;
    v17 = v12;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v13 = &_swiftEmptyArrayStorage;
    while (1)
    {
      if (v15 > 4u)
      {
        goto LABEL_43;
      }

      if (v16 < 0)
      {
        goto LABEL_39;
      }

      if (v15 == 4)
      {
        if (v16 == v17)
        {
          goto LABEL_39;
        }

        if (__OFSUB__(v17, v16))
        {
          goto LABEL_42;
        }

        if (v17 - v16 >= 4)
        {
          goto LABEL_39;
        }
      }

      else
      {
        if (__OFSUB__(v17, v16))
        {
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        if (v17 - v16 != 1)
        {
          goto LABEL_39;
        }
      }

      v31[0] = v15;
      v32 = v16;
      v33 = v17;
      swift_willThrowTypedImpl(v31, &type metadata for Unicode.UTF8.ValidationError, &protocol witness table for Unicode.UTF8.ValidationError);
      v21 = __OFADD__(v16, v19);
      v22 = (v19 + v16);
      if (v21)
      {
        break;
      }

      v23 = (v19 + v17);
      if (__OFADD__(v17, v19))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v23 < v22)
      {
        goto LABEL_35;
      }

      if (((v15 == 0) & v18 & (v19 == v22)) == 0)
      {
        v20 = v15;
      }

      if ((v22 & 0x8000000000000000) != 0)
      {
        goto LABEL_39;
      }

      if (v20 == 4)
      {
        if (v23 == v22 || v23 - v22 >= 4)
        {
          goto LABEL_39;
        }
      }

      else if (v23 - v22 != 1)
      {
        goto LABEL_39;
      }

      if (v9 < v17)
      {
LABEL_35:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      if (v17 < 0 || (v9 -= v17, v9 < 0))
      {
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      if (!swift_isUniquelyReferenced_nonNull_native(v13))
      {
        v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, &v13[2]->isa + 1, 1, v13);
      }

      v25 = v13[2];
      v24 = v13[3];
      if (v25 >= v24 >> 1)
      {
        v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, v13);
      }

      v13[2] = (v25 + 1);
      v26 = &v13[3 * v25];
      *(v26 + 32) = v20;
      v8 += v17;
      v26[5] = v22;
      v26[6] = v23;
      v27 = validateUTF8(_:)(v8, v9);
      v15 = v27;
      v16 = v28;
      v17 = v29;
      v18 = 1;
      v19 = v23;
      if ((v27 & 0x8000000000000000) == 0)
      {
        goto LABEL_3;
      }
    }

    __break(1u);
LABEL_39:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v13 = &_swiftEmptyArrayStorage;
LABEL_3:
  v30;
  return v13;
}

unsigned __int8 *_ss8UTF8SpanV10validatingABs0B0Vys5UInt8VG_ts7UnicodeO0A0O15ValidationErrorVYKcfC(unsigned __int8 *result, uint64_t a2)
{
  if (result)
  {
    if (a2 < 0)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v2 = result;
    v3 = validateUTF8(_:)(result, a2);
    if (v3 < 0)
    {
      if (v3 > 4u)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v6 = specialized Unicode.UTF8.ValidationError.init(_:_:)(v3, v4, v5);
      v9[0] = v6;
      v10 = v7;
      v11 = v8;
      swift_willThrowTypedImpl(v9, &type metadata for Unicode.UTF8.ValidationError, &protocol witness table for Unicode.UTF8.ValidationError);
      return v6;
    }

    else
    {
      return v2;
    }
  }

  return result;
}

Swift::String __swiftcall String.init(copying:)(Swift::UTF8Span copying)
{
  v2 = specialized static String._uncheckedFromUTF8(_:isASCII:)(copying._unsafeBaseAddress.value._rawValue, copying._countAndFlags & 0xFFFFFFFFFFFFFFLL, (copying._countAndFlags & 0x8000000000000000) != 0, v1);
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

atomic_ullong *String.utf8Span.getter()
{
  v1 = *(v0 + 8);
  if ((v1 & 0x1000000000000000) != 0)
  {
    if ((v1 & 0x8000000000000000) == 0 || (v1 & 0xF000000000000000) == 0xC000000000000000)
    {
      Associated = _StringGuts._getOrAllocateAssociatedStorage()(*v0, *(v0 + 8));
      Associated;
      return Associated + 4;
    }

    if ((v1 & 0x2000000000000000) == 0)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    return v0;
  }

  if ((v1 & 0x2000000000000000) != 0)
  {
    return v0;
  }

  if ((*v0 & 0x1000000000000000) != 0)
  {
    return ((v1 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    return _StringObject.sharedUTF8.getter(*v0, *(v0 + 8));
  }
}

uint64_t Substring.utf8Span.getter()
{
  rawBits = v0[3]._rawBits;
  if ((rawBits & 0x1000000000000000) == 0)
  {
    v2 = v0->_rawBits >> 16;
    v3 = v0[1]._rawBits >> 16;
    if ((rawBits & 0x2000000000000000) == 0)
    {
      v4 = v0[2]._rawBits;
      if ((v4 & 0x1000000000000000) != 0)
      {
        v5 = ((rawBits & 0xFFFFFFFFFFFFFFFLL) + 32);
        v6 = v4 & 0xFFFFFFFFFFFFLL;
        if (v3 >= v2)
        {
          return _ss4SpanVsRi_zrlE10extractingyAByxGSnySiGFs5UInt8V_Tg5(v2, v3, v5, v6);
        }
      }

      else
      {
        v14 = v0->_rawBits >> 16;
        v15 = v0[1]._rawBits >> 16;
        v5 = _StringObject.sharedUTF8.getter(v4, rawBits);
        v2 = v14;
        v6 = v16;
        v3 = v15;
        if (v15 >= v14)
        {
          return _ss4SpanVsRi_zrlE10extractingyAByxGSnySiGFs5UInt8V_Tg5(v2, v3, v5, v6);
        }
      }

LABEL_16:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    goto LABEL_10;
  }

  if ((rawBits & 0x8000000000000000) != 0 && (rawBits & 0xF000000000000000) != 0xC000000000000000)
  {
    if ((rawBits & 0x2000000000000000) == 0)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v2 = v0->_rawBits >> 16;
    v3 = v0[1]._rawBits >> 16;
LABEL_10:
    if ((v3 - v2) < 0)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    return &v0[2] + v2;
  }

  v8._rawBits = v0->_rawBits;
  v9 = String.UTF8View._foreignDistance(from:to:)(15, v0->_rawBits);
  v10 = String.UTF8View._foreignDistance(from:to:)(v8, v0[1]);
  rawBits;
  v11 = String.UTF8View._underlyingSpan()();
  if (v10 + v9 < v9)
  {
    goto LABEL_16;
  }

  v13 = _ss4SpanVsRi_zrlE10extractingyAByxGSnySiGFs5UInt8V_Tg5(v9, v10 + v9, v11, v12);
  rawBits;
  return v13;
}

Swift::Bool __swiftcall UTF8Span.checkForASCII()()
{
  v1 = *(v0 + 8);
  if (v1 < 0)
  {
    return 1;
  }

  if (_allASCII(_:)(*v0, v1 & 0xFFFFFFFFFFFFFFLL))
  {
    *(v0 + 8) = v1 | 0xC000000000000000;
    return 1;
  }

  return 0;
}

Swift::Bool __swiftcall UTF8Span.checkForNFC(quickCheck:)(Swift::Bool quickCheck)
{
  v2 = *(v1 + 8);
  if ((v2 & 0x4000000000000000) != 0)
  {
    return 1;
  }

  v3 = *v1;
  v4 = v2 & 0xFFFFFFFFFFFFFFLL;
  if (quickCheck)
  {
    if (v4)
    {
      v5 = 0;
      v6 = 0;
      while (1)
      {
        v7 = &v3[v6];
        v8 = v3[v6];
        if (v8 >= 0xCC)
        {
          v10 = __clz(v8 ^ 0xFF) - 24;
          v11 = v7[1];
          if (v10 == 2)
          {
            v12 = (v8 & 0x1F) << 6;
            v13 = 2;
          }

          else if (v10 == 3)
          {
            v12 = ((v8 & 0xF) << 12) | ((v11 & 0x3F) << 6);
            v11 = v7[2];
            v13 = 3;
          }

          else
          {
            v14 = ((v8 & 0xF) << 18) | ((v11 & 0x3F) << 12);
            v11 = v7[3];
            v12 = v14 & 0xFFFFF03F | ((v7[2] & 0x3F) << 6);
            v13 = 4;
          }

          if (v12 >= 0x300)
          {
            NormData = _swift_stdlib_getNormData(v12 | v11 & 0x3F);
          }

          else
          {
            NormData = 0;
          }

          result = 0;
          v17 = v5 <= (NormData >> 3);
          v5 = (NormData >> 3);
          if (!(NormData >> 3))
          {
            v17 = 1;
          }

          if ((NormData & 6) != 0 || !v17)
          {
            return result;
          }

          v6 += v13;
          if (v6 >= v4)
          {
            goto LABEL_40;
          }
        }

        else
        {
          if (v8 < 0xC0)
          {
            v9 = 1;
          }

          else
          {
            v9 = 2;
          }

          v6 += v9;
          if (v6 >= v4)
          {
            goto LABEL_40;
          }

          v5 = 0;
        }

        if (v6 < 0)
        {
          _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
        }
      }
    }

    goto LABEL_40;
  }

  v18 = validateUTF8(_:)(*v1, v2 & 0xFFFFFFFFFFFFFFLL);
  if (v18 < 0)
  {
    v22 = repairUTF8(_:firstKnownBrokenRange:)(v3, v2 & 0xFFFFFFFFFFFFFFLL, v19, v20);
  }

  else
  {
    v22 = specialized static String._uncheckedFromUTF8(_:isASCII:)(v3, v2 & 0xFFFFFFFFFFFFFFLL, v18 & 1, v21);
  }

  v24 = v23;
  v31 = &_swiftEmptyArrayStorage;
  if ((v23 & 0x2000000000000000) != 0)
  {
    v25 = HIBYTE(v23) & 0xF;
  }

  else
  {
    v25 = v22 & 0xFFFFFFFFFFFFLL;
  }

  specialized _StringGutsSlice._withNFCCodeUnits(_:)(v22, v23, 0, v25, &v31);
  v24;
  v26 = 0;
  while (v4 != v26)
  {
    v27 = v31[2];
    if (v26 == v27)
    {
      goto LABEL_45;
    }

    if (v26 >= v27)
    {
      goto LABEL_44;
    }

    v28 = *(&v26->isa + v3);
    v29 = *(&v26->info + v31);
    v26 = (v26 + 1);
    if (v28 != v29)
    {
      goto LABEL_45;
    }
  }

  v30 = v31[2];
  if (v4 == v30)
  {
    v31;
LABEL_40:
    *(v1 + 8) = v2 | 0x4000000000000000;
    return 1;
  }

  if (v4 >= v30)
  {
LABEL_44:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

LABEL_45:
  v31;
  return 0;
}

Swift::Unicode::Scalar_optional __swiftcall UTF8Span.UnicodeScalarIterator.next()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 8) & 0xFFFFFFFFFFFFFFLL;
  if (v1 < v2)
  {
    v4 = UnsafeRawPointer._decodeScalar(startingAt:)(*(v0 + 16));
    *(v0 + 16) = v4.nextScalarStart;
    value = v4._0._value;
  }

  else
  {
    value = 0;
  }

  return (value | ((v1 >= v2) << 32));
}

Swift::String_optional __swiftcall UTF8Span.CharacterIterator.next()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 8) & 0xFFFFFFFFFFFFFFLL;
  if (v1 >= v2)
  {
    v4._0._countAndFlagsBits = 0;
    v4._0._object = 0;
  }

  else
  {
    v4 = UnsafeRawPointer._decodeCharacter(startingAt:limitedBy:)(v1, v2);
    *(v0 + 16) = v4.nextCharacterStart;
  }

  return v4._0;
}

Swift::Bool __swiftcall UTF8Span.isCanonicallyEquivalent(to:)(Swift::UTF8Span to)
{
  v4 = v2;
  v5 = v2 & 0xFFFFFFFFFFFFFFLL;
  v6 = to._countAndFlags & 0xFFFFFFFFFFFFFFLL;
  if ((v4 & 0x4000000000000000) != 0 && (to._countAndFlags & 0x4000000000000000) != 0)
  {
    return v5 == v6 && _swift_stdlib_memcmp(v1, to._unsafeBaseAddress.value._rawValue, v5) == 0;
  }

  return _stringCompareFastUTF8Abnormal(_:_:expecting:)(v1, v5, to._unsafeBaseAddress.value._rawValue, v6, 0);
}

Swift::Bool __swiftcall UTF8Span.isCanonicallyLessThan(_:)(Swift::UTF8Span a1)
{
  v3 = v1;
  v4 = v2 & 0xFFFFFFFFFFFFFFLL;
  v5 = a1._countAndFlags & 0xFFFFFFFFFFFFFFLL;
  if ((v2 & 0x4000000000000000) != 0 && (a1._countAndFlags & 0x4000000000000000) != 0)
  {
    if (v5 >= v4)
    {
      v6 = v2 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v6 = a1._countAndFlags & 0xFFFFFFFFFFFFFFLL;
    }

    v7 = _swift_stdlib_memcmp(v3, a1._unsafeBaseAddress.value._rawValue, v6);
    v8 = v7;
    if (!v7)
    {
      v8 = v4 - v5;
    }

    return v8 >> 63;
  }

  else
  {

    LOBYTE(v9) = _stringCompareFastUTF8Abnormal(_:_:expecting:)(v1, v2 & 0xFFFFFFFFFFFFFFLL, a1._unsafeBaseAddress.value._rawValue, v5, 1u);
  }

  return v9;
}

Swift::tuple_Unicode_Scalar_nextScalarStart_Int __swiftcall UnsafeRawPointer._decodeScalar(startingAt:)(Swift::Int startingAt)
{
  v3 = (v1 + startingAt);
  v4 = *(v1 + startingAt);
  v5 = *(v1 + startingAt);
  if (v4 < 0)
  {
    v7 = __clz(v5 ^ 0xFF) - 24;
    v6 = startingAt + v7;
    if (v7 > 2u)
    {
      v8 = v3[1];
      if (v7 == 3)
      {
        v9 = v3[2];
        v10 = ((v5 & 0xF) << 12) | ((v8 & 0x3F) << 6);
      }

      else
      {
        v11 = v3[2];
        v9 = v3[3];
        v10 = ((v5 & 0xF) << 18) | ((v8 & 0x3F) << 12) | ((v11 & 0x3F) << 6);
      }

      v5 = v10 & 0xFFFFFFC0 | v9 & 0x3F;
    }

    else if (v7 != 1)
    {
      v5 = v3[1] & 0x3F | ((v5 & 0x1F) << 6);
    }
  }

  else
  {
    v6 = startingAt + 1;
  }

  result.nextScalarStart = v6;
  result._0._value = v5;
  return result;
}

Swift::Int __swiftcall UTF8Span._scalarAlignBackwards(_:)(Swift::Int a1)
{
  if (!a1 || (v2 & 0xFFFFFFFFFFFFFFLL) == a1)
  {
    return a1;
  }

  if ((v2 & 0xFFFFFFFFFFFFFFuLL) <= a1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if ((*(v1 + a1) & 0xC0) != 0x80)
  {
    return a1;
  }

  do
  {
    v3 = a1 - 1;
    v5 = *(v1 - 1 + a1--) & 0xC0;
  }

  while (v5 == 128);
  return v3;
}

Swift::Int __swiftcall UnsafeRawPointer._nextCharacterStart(_:limitedBy:)(Swift::Int _, Swift::Int limitedBy)
{
  if (_ >= limitedBy)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v3 = v2;
  v6 = UnsafeRawPointer._decodeScalar(startingAt:)(_);
  v5._value = v6._0;
  nextScalarStart = v6.nextScalarStart;
  if (v6.nextScalarStart < limitedBy)
  {
    do
    {
      v8 = (v3 + nextScalarStart);
      v9 = *(v3 + nextScalarStart);
      if (*(v3 + nextScalarStart) < 0)
      {
        v11 = __clz(v9 ^ 0xFF) - 24;
        v10 = nextScalarStart + v11;
        if (v11 > 2u)
        {
          if (v11 == 3)
          {
            v9 = ((v9 & 0xF) << 12) | ((v8[1] & 0x3F) << 6) | v8[2] & 0x3F;
          }

          else
          {
            v9 = ((v9 & 0xF) << 18) | ((v8[1] & 0x3F) << 12) | ((v8[2] & 0x3F) << 6) | v8[3] & 0x3F;
          }
        }

        else if (v11 != 1)
        {
          v9 = v8[1] & 0x3F | ((v9 & 0x1F) << 6);
        }
      }

      else
      {
        v10 = nextScalarStart + 1;
      }

      if (_GraphemeBreakingState.shouldBreak(between:and:)(v5, v9))
      {
        break;
      }

      v5._value = v9;
      nextScalarStart = v10;
    }

    while (v10 < limitedBy);
  }

  return nextScalarStart;
}

Swift::tuple_String_nextCharacterStart_Int __swiftcall UnsafeRawPointer._decodeCharacter(startingAt:limitedBy:)(Swift::Int startingAt, Swift::Int limitedBy)
{
  v3 = v2;
  v5 = UnsafeRawPointer._nextCharacterStart(_:limitedBy:)(startingAt, limitedBy);
  v6 = v5 - startingAt;
  if (v5 < startingAt)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (__OFSUB__(v5, startingAt))
  {
    __break(1u);
LABEL_17:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v6 < 0)
  {
    goto LABEL_17;
  }

  v7 = v5;
  v8 = validateUTF8(_:)((v3 + startingAt), v6);
  if (v8 < 0)
  {
    v12 = repairUTF8(_:firstKnownBrokenRange:)((v3 + startingAt), v6, v9, v10);
  }

  else
  {
    v12 = specialized static String._uncheckedFromUTF8(_:isASCII:)(v3 + startingAt, v6, v8 & 1, v11);
  }

  v14 = v12;
  v15 = v13;
  if ((v13 & 0x2000000000000000) != 0)
  {
    v16 = HIBYTE(v13) & 0xF;
  }

  else
  {
    v16 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (!v16)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v17._rawBits = _StringGuts.validateCharacterIndex(_:)(15)._rawBits;
  if (String._uncheckedIndex(after:)(v17)._rawBits >> 14 != 4 * v16)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (!(v15 & 0x2000000000000000 | v14 & 0x1000000000000000))
  {
    v14 = specialized static String._copying(_:)(v14, v15);
    v22 = v21;
    v15;
    v15 = v22;
  }

  v18 = v14;
  v19 = v15;
  v20 = v7;
  result.nextCharacterStart = v20;
  result._0._object = v19;
  result._0._countAndFlagsBits = v18;
  return result;
}

Swift::UTF8Span::UnicodeScalarIterator __swiftcall UTF8Span.UnicodeScalarIterator.init(_:)(Swift::UTF8Span a1)
{
  v1 = 0;
  result.codeUnits = a1;
  result.currentCodeUnitOffset = v1;
  return result;
}

Swift::Unicode::Scalar_optional __swiftcall UTF8Span.UnicodeScalarIterator.previous()()
{
  v1 = v0[2];
  v2 = v1 - 1;
  if (v1 < 1)
  {
    v6 = 0;
  }

  else
  {
    if ((*(*v0 + v2) & 0xC0) == 0x80)
    {
      v3 = v0[2];
      do
      {
        v4 = *(*v0 - 2 + v3--) & 0xC0;
      }

      while (v4 == 128);
      v2 = v3 - 1;
    }

    value = UnsafeRawPointer._decodeScalar(startingAt:)(v2)._0._value;
    v0[2] = v2;
    v6 = value;
  }

  return (v6 | ((v1 < 1) << 32));
}

Swift::Int __swiftcall UTF8Span.UnicodeScalarIterator.skipForward()()
{
  v1 = v0[2];
  if (v1 >= (v0[1] & 0xFFFFFFFFFFFFFFLL))
  {
    return 0;
  }

  v2 = __clz(~*(*v0 + v1)) - 24;
  if (*(*v0 + v1) >= 0)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  v0[2] = v1 + v3;
  return 1;
}

Swift::Int __swiftcall UTF8Span.UnicodeScalarIterator.skipForward(by:)(Swift::Int by)
{
  if (by < 1)
  {
    return 0;
  }

  result = 0;
  v4 = v1[2];
  v5 = v1[1] & 0xFFFFFFFFFFFFFFLL;
  while (v4 < v5)
  {
    v6 = __clz(~*(*v1 + v4)) - 24;
    if (*(*v1 + v4) >= 0)
    {
      v7 = 1;
    }

    else
    {
      v7 = v6;
    }

    v4 += v7;
    v1[2] = v4;
    if (by == ++result)
    {
      return by;
    }
  }

  return result;
}

Swift::Int __swiftcall UTF8Span.UnicodeScalarIterator.skipBack()()
{
  v1 = v0[2];
  v2 = v1 - 1;
  if (v1 < 1)
  {
    return 0;
  }

  if ((*(*v0 + v2) & 0xC0) == 0x80)
  {
    do
    {
      v3 = *(*v0 - 2 + v1--) & 0xC0;
    }

    while (v3 == 128);
    v2 = v1 - 1;
  }

  v0[2] = v2;
  return 1;
}

Swift::Int __swiftcall UTF8Span.UnicodeScalarIterator.skipBack(by:)(Swift::Int by)
{
  if (by < 1)
  {
    return 0;
  }

  result = 0;
  v4 = v1[2];
  while (1)
  {
    v5 = v4 - 1;
    if (v4 < 1)
    {
      break;
    }

    if ((*(*v1 + v5) & 0xC0) == 0x80)
    {
      do
      {
        v6 = *(*v1 - 2 + v4--) & 0xC0;
      }

      while (v6 == 128);
      v5 = v4 - 1;
    }

    v1[2] = v5;
    ++result;
    v4 = v5;
    if (result == by)
    {
      return by;
    }
  }

  return result;
}

Swift::UTF8Span __swiftcall UTF8Span.UnicodeScalarIterator.prefix()()
{
  if ((v2 & 0x8000000000000000) != 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v3 = v1;
  v4 = _ss4SpanVsRi_zrlE10extractingyAByxGSnySiGFs5UInt8V_Tg5(0, v2, v0, v1 & 0xFFFFFFFFFFFFFFLL);
  v6 = v5 | 0xC000000000000000;
  if (v3 >= 0)
  {
    v6 = v5;
  }

  v7 = v6 | v3 & 0x4000000000000000;
  if (v4)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  result._countAndFlags = v8;
  result._unsafeBaseAddress.value._rawValue = v4;
  return result;
}

Swift::UTF8Span __swiftcall UTF8Span.UnicodeScalarIterator.suffix()()
{
  v3 = v1;
  v4 = v1 & 0xFFFFFFFFFFFFFFLL;
  if (v4 < v2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v5 = _ss4SpanVsRi_zrlE10extractingyAByxGSnySiGFs5UInt8V_Tg5(v2, v4, v0, v4);
  v7 = v6 | 0xC000000000000000;
  if (v3 >= 0)
  {
    v7 = v6;
  }

  v8 = v7 | v3 & 0x4000000000000000;
  if (v5)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  result._countAndFlags = v9;
  result._unsafeBaseAddress.value._rawValue = v5;
  return result;
}

Swift::UTF8Span::CharacterIterator __swiftcall UTF8Span.CharacterIterator.init(_:)(Swift::UTF8Span a1)
{
  *v1 = a1;
  v1[1]._unsafeBaseAddress.value._rawValue = 0;
  result.codeUnits = a1;
  return result;
}

Swift::String_optional __swiftcall UTF8Span.CharacterIterator.previous()()
{
  v1 = v0[2];
  if (v1 < 1)
  {
    v2 = 0;
    v3 = 0;
  }

  else
  {
    v2 = specialized UnsafeRawPointer._decodeCharacter(endingAt:limitedBy:)(v1, *v0);
    v0[2] = v4;
  }

  result.value._object = v3;
  result.value._countAndFlagsBits = v2;
  return result;
}

Swift::Int __swiftcall UTF8Span.CharacterIterator.skipForward()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 8) & 0xFFFFFFFFFFFFFFLL;
  if (v1 >= v2)
  {
    return 0;
  }

  *(v0 + 16) = UnsafeRawPointer._nextCharacterStart(_:limitedBy:)(v1, v2);
  return 1;
}

Swift::Int __swiftcall UTF8Span.CharacterIterator.skipForward(by:)(Swift::Int by)
{
  if (by < 1)
  {
    return 0;
  }

  v3 = 0;
  v4 = *(v1 + 16);
  while (1)
  {
    v5 = *(v1 + 8) & 0xFFFFFFFFFFFFFFLL;
    if (v4 >= v5)
    {
      break;
    }

    v4 = UnsafeRawPointer._nextCharacterStart(_:limitedBy:)(v4, v5);
    *(v1 + 16) = v4;
    if (by == ++v3)
    {
      return by;
    }
  }

  return v3;
}

Swift::Int __swiftcall UTF8Span.CharacterIterator.skipBack()()
{
  v1 = v0[2];
  if (v1 < 1)
  {
    return 0;
  }

  v0[2] = specialized UnsafeRawPointer._previousCharacterStart(_:limitedBy:)(v1, *v0);
  return 1;
}

Swift::Int __swiftcall UTF8Span.CharacterIterator.skipBack(by:)(Swift::Int by)
{
  if (by < 1)
  {
    return 0;
  }

  v3 = 0;
  v4 = v1[2];
  while (v4 >= 1)
  {
    v4 = specialized UnsafeRawPointer._previousCharacterStart(_:limitedBy:)(v4, *v1);
    v1[2] = v4;
    if (by == ++v3)
    {
      return by;
    }
  }

  return v3;
}

uint64_t UTF8Span.UnicodeScalarIterator.reset(roundingForwardsFrom:)(uint64_t result)
{
  v2 = v1[1];
  if ((v2 & 0xFFFFFFFFFFFFFFLL) != result && result != 0)
  {
    while ((*(*v1 + result) & 0xC0) == 0x80)
    {
      v4 = result + 1;
      v5 = result == -1;
      if ((v2 & 0xFFFFFFFFFFFFFFLL) - 1 != result)
      {
        ++result;
        if (!v5)
        {
          continue;
        }
      }

      goto LABEL_7;
    }
  }

  v4 = result;
LABEL_7:
  v1[2] = v4;
  return result;
}

Swift::UTF8Span __swiftcall UTF8Span.CharacterIterator.prefix()()
{
  v1 = v0[2];
  if ((v1 & 0x8000000000000000) != 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v2 = v0[1];
  v3 = _ss4SpanVsRi_zrlE10extractingyAByxGSnySiGFs5UInt8V_Tg5(0, v1, *v0, v2 & 0xFFFFFFFFFFFFFFLL);
  v5 = v4 | 0xC000000000000000;
  if (v2 >= 0)
  {
    v5 = v4;
  }

  v6 = v5 | v2 & 0x4000000000000000;
  if (v3)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  result._countAndFlags = v7;
  result._unsafeBaseAddress.value._rawValue = v3;
  return result;
}

Swift::UTF8Span __swiftcall UTF8Span.CharacterIterator.suffix()()
{
  v2 = v0[1];
  v1 = v0[2];
  if ((v2 & 0xFFFFFFFFFFFFFFLL) < v1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v3 = _ss4SpanVsRi_zrlE10extractingyAByxGSnySiGFs5UInt8V_Tg5(v1, v2 & 0xFFFFFFFFFFFFFFLL, *v0, v2 & 0xFFFFFFFFFFFFFFLL);
  v5 = v4 | 0xC000000000000000;
  if (v2 >= 0)
  {
    v5 = v4;
  }

  v6 = v5 | v2 & 0x4000000000000000;
  if (v3)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  result._countAndFlags = v7;
  result._unsafeBaseAddress.value._rawValue = v3;
  return result;
}

uint64_t static UInt16.+ infix(_:_:)(unsigned __int16 a1, unsigned __int16 a2)
{
  result = a1 + a2;
  if ((result & 0x10000) != 0)
  {
    __break(1u);
  }

  return result;
}

void *static Unicode.UTF16._copy<A, B>(source:destination:count:)(char *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = a1;
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v13 - 8);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v21 + 72);
  v24 = *(v23 + 72);
  if (v22 == v24)
  {
    if ((v15 & 0x8000000000000000) != 0 || (v22 & 0x8000000000000000) != 0)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (is_mul_ok(v15, v22))
    {
      v25 = v15 * v22;

      return memcpy(a2, v10, v25);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if ((v15 & 0x8000000000000000) != 0)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (v15)
    {
      v28 = *(v16 + 16);
      v26 = v16 + 16;
      v27 = v28;
      v36 = (v26 - 8);
      v37 = a6 + 8;
      v34 = (v18 + 40);
      v35 = v17 + 16;
      do
      {
        if (!v15)
        {
          _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v33 = v15;
        v29 = v17;
        v38 = v27;
        v39 = v26;
        v27(v20, v10, a4);
        v30 = *(a6 + 8);
        v40 = v12;
        v31 = a6;
        v32 = v30(v20, a4, a6);
        (*v36)(v20, a4);
        (*(v29 + 16))(v32, a5, v29);
        a6 = v31;
        v12 = v40;
        result = (*v34)(a2, v40, a5);
        v27 = v38;
        v26 = v39;
        v17 = v29;
        v10 += v22;
        a2 += v24;
        v15 = v33 - 1;
      }

      while (v33 != 1);
    }
  }

  return result;
}

uint64_t static Unicode.UTF16.transcodedLength<A, B>(of:decodedAs:repairingIllFormedSequences:)(unint64_t a1, ValueMetadata *a2, int a3, unint64_t a4, const char *a5, int **a6, int **a7)
{
  v7 = a7;
  v212 = a6;
  v198 = a3;
  v209 = a2;
  v214 = a1;
  swift_getAssociatedTypeWitness(0, a7, a5, &protocol requirements base descriptor for _UnicodeEncoding, associated type descriptor for _UnicodeEncoding.EncodedScalar);
  v12 = v11;
  v179 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v182 = &v163 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v186 = &v163 - v15;
  v207 = type metadata accessor for Optional(0, v12, v16, v17);
  v178 = *(v207 - 8);
  MEMORY[0x1EEE9AC00](v207);
  v206 = &v163 - v18;
  v208 = v12;
  v191 = type metadata accessor for Unicode.ParseResult(0, v12, v19, v20);
  v177 = *(v191 - 8);
  v21 = MEMORY[0x1EEE9AC00](v191);
  v200 = (&v163 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = MEMORY[0x1EEE9AC00](v21);
  v189 = (&v163 - v24);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v190 = (&v163 - v26);
  MEMORY[0x1EEE9AC00](v25);
  v201 = &v163 - v27;
  swift_getAssociatedTypeWitness(255, a6, a4, &protocol requirements base descriptor for IteratorProtocol, associated type descriptor for IteratorProtocol.Element);
  v29 = v28;
  v167 = type metadata accessor for Optional(0, v28, v30, v31);
  v166 = *(v167 - 8);
  MEMORY[0x1EEE9AC00](v167);
  v202 = (&v163 - v32);
  v33 = *(swift_getAssociatedConformanceWitness(v7, a5, v29, &protocol requirements base descriptor for _UnicodeEncoding, associated conformance descriptor for _UnicodeEncoding._UnicodeEncoding.CodeUnit: FixedWidthInteger) + 8);
  v204 = *(*(v33 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v204, v29, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v181 = v34;
  v35 = MEMORY[0x1EEE9AC00](v34);
  v180 = &v163 - v36;
  v205 = *(v29 - 1);
  v37 = MEMORY[0x1EEE9AC00](v35);
  v168 = &v163 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x1EEE9AC00](v37);
  v41 = &v163 - v40;
  v42 = MEMORY[0x1EEE9AC00](v39);
  v44 = &v163 - v43;
  MEMORY[0x1EEE9AC00](v42);
  v203 = (&v163 - v45);
  swift_getAssociatedTypeWitness(0, v7, a5, &protocol requirements base descriptor for _UnicodeEncoding, associated type descriptor for _UnicodeEncoding.ForwardParser);
  v47 = v46;
  v176 = *(v46 - 8);
  v48 = MEMORY[0x1EEE9AC00](v46);
  v50 = &v163 - v49;
  MEMORY[0x1EEE9AC00](v48);
  v175 = v52;
  v53 = *(v52 + 16);
  v213 = &v163 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v214 = a4;
  v53();
  v183 = a5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v7, a5, v47, &protocol requirements base descriptor for _UnicodeEncoding, associated conformance descriptor for _UnicodeEncoding._UnicodeEncoding.ForwardParser: _UnicodeParser);
  v55 = *(AssociatedConformanceWitness + 24);
  v210 = v50;
  v211 = v47;
  v169 = AssociatedConformanceWitness;
  v55(v47, AssociatedConformanceWitness);
  v56 = v177;
  v57 = v178;
  v58 = v179;
  v59 = v212;
  v60 = 0;
  v164 = v7;
  if (v209 != &type metadata for Unicode.UTF8)
  {
    goto LABEL_2;
  }

  v188 = v41;
  v91 = v204;
  v92 = v181;
  v93 = swift_getAssociatedConformanceWitness(v204, v29, v181, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
  v94 = *(v93 + 8);
  v95 = v180;
  v174 = v93;
  v173 = v93 + 8;
  v172 = v94;
  (v94)(&qword_18071E0A8, 256, v92);
  v96 = v91[3];
  v97 = v203;
  v171 = v91 + 3;
  v170 = v96;
  (v96)(v95, v29, v91);
  v98 = v59;
  v60 = 0;
  v195 = v59[2];
  v196 = (v59 + 2);
  v194 = (v205 + 48);
  v99 = (v205 + 8);
  v192 = (v205 + 32);
  v100 = (v205 + 16);
  v197 = v33 + 64;
  v199 = (v33 + 128);
  v185 = v33 + 96;
  v205 = v33;
  v184 = v33 + 120;
  v187 = v99;
  while (1)
  {
    v107 = v202;
    (v195)(v214, v98);
    if ((*v194)(v107, 1, v29) == 1)
    {
      break;
    }

    v209 = *v99;
    (v209)(v97, v29);
    (*v192)(v97, v107, v29);
    v193 = *v100;
    (v193)(v44, v97, v29);
    v108 = v205;
    v109 = *(v205 + 64);
    if (v109(v29, v205))
    {
      v110 = (*(v108 + 128))(v29, v108);
      if (v110 >= 64)
      {
        v215 = 128;
        v101 = *(v108 + 96);
        v102 = lazy protocol witness table accessor for type Int and conformance Int(v110, v111, v112);
        v103 = v188;
        v101(&v215, &type metadata for Int, v102, v29, v108);
        v104 = (*(*(*(v108 + 32) + 8) + 16))(v44, v103, v29);
        v105 = v103;
        v99 = v187;
        v106 = v209;
        (v209)(v105, v29);
        (v106)(v44, v29);
        v98 = v212;
        v97 = v203;
        v91 = v204;
        if ((v104 & 1) == 0)
        {
          goto LABEL_58;
        }
      }

      else
      {
        v113 = (*(v108 + 120))(v29, v108);
        (v209)(v44, v29);
        v98 = v212;
        v97 = v203;
        v91 = v204;
        if (v113 >= 128)
        {
          goto LABEL_58;
        }
      }

      goto LABEL_38;
    }

    v114 = v109(v29, v108);
    v115 = (*(v108 + 128))(v29, v108);
    if (v114)
    {
      if (v115 > 64)
      {
        v215 = 128;
        v118 = v205;
        v119 = *(v205 + 96);
        v120 = lazy protocol witness table accessor for type Int and conformance Int(v115, v116, v117);
        v121 = v188;
        v119(&v215, &type metadata for Int, v120, v29, v118);
        v122 = (*(*(*(v118 + 32) + 8) + 16))(v44, v121, v29);
        v123 = v121;
        v124 = v29;
        v99 = v187;
        goto LABEL_52;
      }

      v126 = v180;
      v172(&qword_18071E0A8, 256);
      v127 = v188;
      (v170)(v126, v29, v204);
      v128 = v205;
      v129 = (*(*(*(v205 + 32) + 8) + 16))(v44, v127, v29);
      v130 = v127;
      v99 = v187;
      v131 = v209;
      (v209)(v130, v29);
      if (v129)
      {
        (v131)(v44, v29);
        v98 = v212;
        v97 = v203;
        v91 = v204;
        goto LABEL_38;
      }

      v125 = (*(v128 + 120))(v29, v128);
      (v131)(v44, v29);
    }

    else
    {
      if (v115 >= 64)
      {
        v215 = 128;
        v132 = v205;
        v133 = *(v205 + 96);
        v134 = lazy protocol witness table accessor for type Int and conformance Int(v115, v116, v117);
        v135 = v188;
        v133(&v215, &type metadata for Int, v134, v29, v132);
        v122 = (*(*(*(v132 + 32) + 8) + 16))(v44, v135, v29);
        v123 = v135;
        v99 = v187;
        v124 = v29;
LABEL_52:
        v136 = v209;
        (v209)(v123, v124);
        (v136)(v44, v29);
        v98 = v212;
        v97 = v203;
        v91 = v204;
        if ((v122 & 1) == 0)
        {
          goto LABEL_58;
        }

        goto LABEL_38;
      }

      v125 = (*(v205 + 120))(v29);
      (v209)(v44, v29);
    }

    v98 = v212;
    v97 = v203;
    v91 = v204;
    if (v125 >= 128)
    {
      goto LABEL_58;
    }

LABEL_38:
    v77 = __OFADD__(v60++, 1);
    if (v77)
    {
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }
  }

  (*(v166 + 8))(v107, v167);
  v193 = *v100;
LABEL_58:
  v137 = v168;
  (v193)(v168, v97, v29);
  v138 = v205;
  v139 = *(v205 + 64);
  if ((v139(v29, v205) & 1) == 0)
  {
    v144 = v139(v29, v138);
    v140 = (*(v138 + 128))(v29, v138);
    v142 = v181;
    v145 = v180;
    if (v144)
    {
      if (v140 <= 64)
      {
        v172(&qword_18071E0A8, 256);
        v151 = v188;
        (v170)(v145, v29, v91);
        v138 = v205;
        v152 = v168;
        v153 = (*(*(*(v205 + 32) + 8) + 16))(v168, v151, v29);
        v150 = *v187;
        (*v187)(v151, v29);
        if (v153)
        {
          (v150)(v152, v29);
        }

        else
        {
          v158 = (*(v138 + 120))(v29, v138);
          (v150)(v152, v29);
          if (v158 >= 128)
          {
            goto LABEL_76;
          }
        }

        goto LABEL_73;
      }

      v215 = 128;
      v138 = v205;
      v146 = *(v205 + 96);
      v147 = lazy protocol witness table accessor for type Int and conformance Int(v140, v141, v181);
      v143 = v188;
      v146(&v215, &type metadata for Int, v147, v29, v138);
      v137 = v168;
      v148 = (*(*(*(v138 + 32) + 8) + 16))(v168, v143, v29);
    }

    else
    {
      v143 = v188;
      if (v140 < 64)
      {
        v138 = v205;
        goto LABEL_67;
      }

      v215 = 128;
      v138 = v205;
LABEL_71:
      v154 = *(v138 + 96);
      v155 = lazy protocol witness table accessor for type Int and conformance Int(v140, v141, v142);
      v154(&v215, &type metadata for Int, v155, v29, v138);
      v148 = (*(*(*(v138 + 32) + 8) + 16))(v137, v143, v29);
    }

    v156 = v148;
    v150 = *v187;
    (*v187)(v143, v29);
    (v150)(v137, v29);
    if ((v156 & 1) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_73;
  }

  v140 = (*(v138 + 128))(v29, v138);
  v143 = v188;
  if (v140 >= 64)
  {
    v215 = 128;
    goto LABEL_71;
  }

LABEL_67:
  v149 = (*(v138 + 120))(v29, v138, v142);
  v150 = *v187;
  (*v187)(v137, v29);
  if (v149 >= 128)
  {
LABEL_76:
    v159 = specialized numericCast<A, B>(_:)(v97, v29, v138);
    if (v211 != &type metadata for Unicode.UTF8.ForwardParser)
    {
      goto LABEL_81;
    }

    v160 = v159;
    (v150)(v97, v29);
    v161 = v176;
    v162 = v210;
    (*(v176 + 8))(v210, &type metadata for Unicode.UTF8.ForwardParser);
    LODWORD(v215) = v160;
    BYTE4(v215) = 8;
    (*(v161 + 16))(v162, &v215, &type metadata for Unicode.UTF8.ForwardParser);
    v7 = v164;
    v58 = v179;
    v57 = v178;
    v56 = v177;
LABEL_2:
    v61 = 0;
    v62 = v169;
    v204 = *(v169 + 32);
    v205 = v169 + 32;
    v63 = (v56 + 16);
    v209 = (v56 + 8);
    v202 = (v57 + 8);
    v203 = (v58 + 56);
    v195 = (v58 + 32);
    v199 = (v56 + 32);
    v193 = (v7 + 88);
    v194 = (v58 + 8);
    v64 = v191;
    v65 = v190;
    v66 = v201;
    v196 = (v56 + 16);
    while (1)
    {
      v67 = v62;
      (v204)(v213, v214, v212, v211);
      v68 = *v63;
      (*v63)(v65, v66, v64);
      if (swift_getEnumCaseMultiPayload(v65, v64))
      {
        Kind = v209->Kind;
        (v209->Kind)(v65, v64);
        v70 = v206;
        (*v203)(v206, 1, 1, v208);
        (*v202)(v70, v207);
      }

      else
      {
        v197 = v60;
        v71 = *v195;
        v72 = v206;
        v73 = v208;
        (*v195)(v206, v65, v208);
        (*v203)(v72, 0, 1, v73);
        v74 = v72;
        v64 = v191;
        (*v202)(v74, v207);
        v75 = v189;
        v68(v189, v66, v64);
        if (!swift_getEnumCaseMultiPayload(v75, v64))
        {
          v78 = v75;
          v79 = v182;
          v71(v182, v78, v73);
          (v209->Kind)(v66, v64);
          v71(v186, v79, v73);
          if (v183 != &type metadata for Unicode.UTF8)
          {
            v63 = v196;
            v80 = v197;
            if (v183 == &type metadata for Unicode.UTF16)
            {
              if (v165 != 5)
              {
                goto LABEL_81;
              }

              v83 = *v186;
              v84 = v186[4];
              (*v194)();
LABEL_16:
              v62 = v67;
            }

            else
            {
              v89 = v186;
              v83 = v164[11](v186);
              (*v194)(v89, v208);
              v62 = v67;
              if (v83 < 0x10000)
              {
                v84 = 16;
              }

              else
              {
                v83 = ((v83 + 983040) >> 10) & 0x3FF | ((v83 & 0x3FF) << 16) | 0xDC00D800;
                v84 = 32;
              }
            }

LABEL_17:
            v85 = v84 >> 4;
            v77 = __OFADD__(v80, v85);
            v60 = v80 + v85;
            if (v77)
            {
              __break(1u);
LABEL_81:
              _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
            }

            if (v84)
            {
              do
              {
                v86 = v83;
                v83 >>= 16;
                v84 -= 16;
                v61 |= v86;
              }

              while (v84);
            }

            v65 = v190;
            continue;
          }

          v63 = v196;
          v80 = v197;
          if (v73 != &type metadata for _ValidUTF8Buffer)
          {
            goto LABEL_81;
          }

          v81 = *v186;
          (*v194)();
          v82 = __clz(v81) >> 3;
          if (v82 == 3)
          {
            v83 = (v81 - 1) & 0x7F;
            v84 = 16;
            goto LABEL_16;
          }

          v87 = v81 - 16843009;
          v88 = (v87 << 6) | (v87 >> 8) & 0x3F;
          if (v82 == 2)
          {
            v62 = v67;
            v83 = (v87 << 6) & 0x7FF | (v87 >> 8) & 0x3F;
            v84 = 16;
            goto LABEL_17;
          }

          v90 = HIWORD(v87) & 0x3F | (v88 << 6);
          if (v82 == 1)
          {
            v83 = ((v81 - 16843009) >> 16) & 0x3F | (v88 << 6);
            goto LABEL_31;
          }

          v83 = (v90 << 6) & 0x1FFFC0 | HIBYTE(v87) & 0x3F;
          if (((v90 << 6) & 0x1FFFC0u) < 0x10000)
          {
LABEL_31:
            v84 = 16;
          }

          else
          {
            v83 = (((v90 << 6) & 0x3C0 | HIBYTE(v87) & 0x3F) << 16) | (((v90 << 6) + 983040) >> 10) & 0x3FF | 0xDC00D800;
            v84 = 32;
          }

          v64 = v191;
          v66 = v201;
          v62 = v67;
          v63 = v196;
          v80 = v197;
          goto LABEL_17;
        }

        Kind = v209->Kind;
        (v209->Kind)(v75, v64);
        v65 = v190;
        v63 = v196;
        v60 = v197;
      }

      v76 = v200;
      v66 = v201;
      (*v199)(v200, v201, v64);
      if (swift_getEnumCaseMultiPayload(v76, v64) != 1)
      {
        Kind(v200, v64);
        (*(v176 + 8))(v210, v211);
        (*(v175 + 8))(v213, v214);
        return v60;
      }

      if ((v198 & 1) == 0)
      {
        (*(v176 + 8))(v210, v211);
        (*(v175 + 8))(v213, v214);
        return 0;
      }

      v77 = __OFADD__(v60++, 1);
      if (v77)
      {
        __break(1u);
        goto LABEL_80;
      }

      v61 |= 0xFFFDu;
      v62 = v67;
    }
  }

LABEL_73:
  (v150)(v97, v29);
  (*(v176 + 8))(v210, v211);
  (*(v175 + 8))(v213, v214);
  return v60;
}

unint64_t static Unicode.UTF16.transcode<A>(_:from:)(unsigned int *a1, uint64_t a2, ValueMetadata *a3, uint64_t a4)
{
  if (a3 != &type metadata for Unicode.UTF8)
  {
    if (a3 != &type metadata for Unicode.UTF16)
    {
      v18 = (*(a4 + 88))(a1, a3, a4);
      v14 = ((v18 & 0x3FF) << 16) | ((v18 + 983040) >> 10) & 0x3FF | 0x20DC00D800;
      v16 = v18 | 0x1000000000;
      v17 = HIWORD(v18) == 0;
      goto LABEL_16;
    }

    swift_getAssociatedTypeWitness(0, a4, &type metadata for Unicode.UTF16, &protocol requirements base descriptor for _UnicodeEncoding, associated type descriptor for _UnicodeEncoding.EncodedScalar);
    if (*(*(v10 - 8) + 64) == 5)
    {
      return *a1 | (*(a1 + 4) << 32);
    }

LABEL_9:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  swift_getAssociatedTypeWitness(0, a4, &type metadata for Unicode.UTF8, &protocol requirements base descriptor for _UnicodeEncoding, associated type descriptor for _UnicodeEncoding.EncodedScalar);
  if (v5 != &type metadata for _ValidUTF8Buffer)
  {
    goto LABEL_9;
  }

  v6 = *a1;
  v7 = __clz(*a1) >> 3;
  if (v7 == 3)
  {
    return (v6 - 1) & 0x7F | 0x1000000000;
  }

  v11 = v6 - 16843009;
  v12 = (v11 << 6) | (v11 >> 8) & 0x3F;
  v13 = HIWORD(v11) & 0x3F | (v12 << 6);
  if (((v13 << 6) & 0x1F0000) != 0)
  {
    v14 = (((v13 << 6) + 983040) >> 10) & 0x3FF | (((v13 << 6) & 0x3C0 | HIBYTE(v11) & 0x3F) << 16) | 0x20DC00D800;
  }

  else
  {
    v14 = (v13 << 6) & 0x1FFFC0 | HIBYTE(v11) & 0x3F | 0x1000000000;
  }

  v15 = v13 | 0x1000000000;
  if (v7 == 1)
  {
    v14 = v15;
  }

  v16 = v12 & 0x7FF | 0x1000000000;
  v17 = v7 == 2;
LABEL_16:
  if (v17)
  {
    return v16;
  }

  else
  {
    return v14;
  }
}

uint64_t static Unicode.UTF16.decode(_:)(uint64_t result)
{
  if ((result & 0xFF00000000) == 0x1000000000)
  {
    return result;
  }

  else
  {
    return (WORD1(result) & 0x3FF | ((result & 0x3FF) << 10)) + 0x10000;
  }
}

uint64_t static Unicode.UTF16.encode(_:)(unsigned int a1)
{
  v1 = 0x1000000000;
  LODWORD(v2) = ((a1 & 0x3FF) << 16) | ((a1 + 983040) >> 10) & 0x3FF;
  if (a1 >= 0x10000)
  {
    v2 = v2;
  }

  else
  {
    v2 = a1;
  }

  if (a1 >= 0x10000)
  {
    v1 = 0x20DC00D800;
  }

  return v1 | v2;
}

uint64_t protocol witness for static _UnicodeEncoding.decode(_:) in conformance Unicode.UTF16(uint64_t a1)
{
  if (*(a1 + 4) == 16)
  {
    return *a1;
  }

  else
  {
    return (HIWORD(*a1) & 0x3FF | ((*a1 & 0x3FFu) << 10)) + 0x10000;
  }
}

uint64_t protocol witness for static _UnicodeEncoding.encode(_:) in conformance Unicode.UTF16@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = 0x1000000000;
  v3 = ((result & 0x3FF) << 16) | ((result + 983040) >> 10) & 0x3FF;
  if (result >= 0x10000)
  {
    v2 = 0x20DC00D800;
  }

  else
  {
    v3 = result;
  }

  *(a2 + 4) = BYTE4(v2);
  *a2 = v2 | v3;
  *(a2 + 5) = 0;
  return result;
}

void protocol witness for static _UnicodeEncoding.transcode<A>(_:from:) in conformance Unicode.UTF16(unsigned int *a1@<X0>, ValueMetadata *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (a2 == &type metadata for Unicode.UTF8)
  {
    swift_getAssociatedTypeWitness(0, a3, &type metadata for Unicode.UTF8, &protocol requirements base descriptor for _UnicodeEncoding, associated type descriptor for _UnicodeEncoding.EncodedScalar);
    if (v7 == &type metadata for _ValidUTF8Buffer)
    {
      v8 = *a1;
      v9 = __clz(*a1) >> 3;
      if (v9 == 3)
      {
        v10 = (v8 - 1) & 0x7F | 0x1000000000;
      }

      else
      {
        v12 = v8 - 16843009;
        v13 = (v12 << 6) & 0x7FF | (v12 >> 8) & 0x3F | 0x1000000000;
        v14 = HIWORD(v12) & 0x3F | (((v12 << 6) | (v12 >> 8) & 0x3F) << 6);
        if (((v14 << 6) & 0x1F0000) != 0)
        {
          v15 = (((v14 << 6) + 983040) >> 10) & 0x3FF | (((v14 << 6) & 0x3C0 | HIBYTE(v12) & 0x3F) << 16) | 0x20DC00D800;
        }

        else
        {
          v15 = (v14 << 6) & 0x1FFFC0 | HIBYTE(v12) & 0x3F | 0x1000000000;
        }

        if (v9 == 1)
        {
          v15 = v14 | 0x1000000000;
        }

        if (v9 == 2)
        {
          v10 = v13;
        }

        else
        {
          v10 = v15;
        }
      }

      goto LABEL_5;
    }

LABEL_9:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a2 == v4)
  {
    swift_getAssociatedTypeWitness(0, a3, a2, &protocol requirements base descriptor for _UnicodeEncoding, associated type descriptor for _UnicodeEncoding.EncodedScalar);
    if (*(*(v11 - 8) + 64) == 5)
    {
      v10 = *a1 | (*(a1 + 4) << 32);
      goto LABEL_5;
    }

    goto LABEL_9;
  }

  v16 = (*(a3 + 88))(a1, a2, a3);
  v10 = v16 | 0x1000000000;
  if (v16 >= 0x10000)
  {
    v10 = ((v16 & 0x3FF) << 16) | ((v16 + 983040) >> 10) & 0x3FF | 0x20DC00D800;
  }

LABEL_5:
  *a4 = v10;
  *(a4 + 4) = BYTE4(v10);
}

Swift::tuple_isValid_Bool_bitCount_UInt8 __swiftcall Unicode.UTF16.ReverseParser._parseMultipleCodeUnits()()
{
  v1 = (v0 & 0xFC00FC00) == 3623934976;
  result.isValid = v1;
  return result;
}

unint64_t Unicode.UTF16.ReverseParser._bufferedScalar(bitCount:)(unint64_t result, int a2)
{
  v2 = 32 - result;
  if ((v2 & 0xFFFFFF00) != 0)
  {
    __break(1u);
  }

  else
  {
    HIDWORD(v3) = a2;
    LODWORD(v3) = a2;
    return ((v3 >> 16) >> v2) | (result << 32);
  }

  return result;
}

uint64_t static UInt8.- infix(_:_:)(unsigned __int8 a1, unsigned __int8 a2)
{
  result = a1 - a2;
  if ((result & 0xFFFFFF00) != 0)
  {
    __break(1u);
  }

  return result;
}

void *protocol witness for _UnicodeParser.parseScalar<A>(from:) in conformance Unicode.UTF16.ReverseParser@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(v4 + 4);
  if (*(v4 + 4))
  {
    v13 = *v4;
    if ((*v4 & 0xF800) != 0xD800)
    {
      lazy protocol witness table accessor for type Unicode.UTF16.ReverseParser and conformance Unicode.UTF16.ReverseParser(a1, a2, a3);
      v19 = protocol witness for _UTFParser._buffer.modify in conformance Unicode.UTF8.ReverseParser();
      specialized RangeReplaceableCollection.remove(at:)(0);
      result = (v19)(v20, 0);
      v12 = 0;
      v11 = v13 | 0x1000000000;
      goto LABEL_22;
    }

    v9 = *(a3 + 16);
    result = v9(v20, a2, a3);
  }

  else
  {
    v9 = *(a3 + 16);
    result = v9(v20, a2, a3);
    if ((v20[0] & 0x10000) != 0)
    {
      v11 = 0;
      v12 = 2;
      goto LABEL_22;
    }

    if ((v20[0] & 0xF800) != 0xD800)
    {
      v12 = 0;
      v11 = LOWORD(v20[0]) | 0x1000000000;
      goto LABEL_22;
    }

    v13 = LOWORD(v20[0]) | (*(v4 + 2) << 16);
    *v4 = v13;
    v8 = 16;
    *(v4 + 4) = 16;
    result = v9(v20, a2, a3);
  }

  if ((v20[0] & 0x10000) != 0)
  {
    v14 = v8;
  }

  else
  {
    if (v8 > 0x1F)
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v13 = (LOWORD(v20[0]) << v8) | ((-65535 << v8) - 1) & v13;
    *v4 = v13;
    v14 = v8 + 16;
    *(v4 + 4) = v8 + 16;
    if (v8 <= 0xF)
    {
      result = v9(v20, a2, a3);
      if ((v20[0] & 0x10000) == 0)
      {
        v13 = (LOWORD(v20[0]) << v14) | ((0x10000 << v8) - 1) & v13;
        *v4 = v13;
        v14 = v8 | 0x20;
        *(v4 + 4) = v8 | 0x20;
      }
    }
  }

  v15 = v13 & 0xFC00FC00;
  if ((v13 & 0xFC00FC00) == 0xD800DC00)
  {
    v16 = 32;
  }

  else
  {
    v16 = 16;
  }

  *(v4 + 4) = v14 - v16;
  if (v15 == -671032320)
  {
    v17 = 32;
  }

  else
  {
    v17 = 16;
  }

  *v4 = v13 >> v17;
  if (v15 == -671032320)
  {
    v12 = 0;
    HIDWORD(v18) = v13;
    LODWORD(v18) = v13;
    v11 = (v18 >> 16) | (v17 << 32);
  }

  else
  {
    result = specialized numericCast<A, B>(_:)(0x10uLL);
    if (!result)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v12 = 1;
    v11 = 0x10u / result;
  }

LABEL_22:
  *a4 = v11;
  *(a4 + 8) = v12;
  return result;
}

uint64_t protocol witness for _UTFParser._parseMultipleCodeUnits() in conformance Unicode.UTF16.ReverseParser()
{
  if ((*v0 & 0xFC00FC00) == 0xD800DC00)
  {
    v1 = 0x2000;
  }

  else
  {
    v1 = 4096;
  }

  if ((*v0 & 0xFC00FC00) == 0xD800DC00)
  {
    return v1 + 1;
  }

  else
  {
    return v1;
  }
}

uint64_t protocol witness for _UTFParser._bufferedScalar(bitCount:) in conformance Unicode.UTF16.ReverseParser@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = 32 - result;
  if ((v3 & 0xFFFFFF00) != 0)
  {
    __break(1u);
  }

  else
  {
    HIDWORD(v4) = *v2;
    LODWORD(v4) = *v2;
    *a2 = (v4 >> 16) >> v3;
    *(a2 + 4) = result;
  }

  return result;
}

Swift::tuple_isValid_Bool_bitCount_UInt8 __swiftcall Unicode.UTF16.ForwardParser._parseMultipleCodeUnits()()
{
  v1 = (v0 & 0xFC00FC00) == 3691042816;
  result.isValid = v1;
  return result;
}

void *protocol witness for _UnicodeParser.parseScalar<A>(from:) in conformance Unicode.UTF16.ForwardParser@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(v4 + 4);
  if (*(v4 + 4))
  {
    v13 = *v4;
    if ((*v4 & 0xF800) != 0xD800)
    {
      lazy protocol witness table accessor for type Unicode.UTF16.ForwardParser and conformance Unicode.UTF16.ForwardParser(a1, a2, a3);
      v18 = protocol witness for _UTFParser._buffer.modify in conformance Unicode.UTF8.ReverseParser();
      specialized RangeReplaceableCollection.remove(at:)(0);
      result = (v18)(v19, 0);
      v12 = 0;
      v11 = v13 | 0x1000000000;
      goto LABEL_22;
    }

    v9 = *(a3 + 16);
    result = v9(v19, a2, a3);
  }

  else
  {
    v9 = *(a3 + 16);
    result = v9(v19, a2, a3);
    if ((v19[0] & 0x10000) != 0)
    {
      v11 = 0;
      v12 = 2;
      goto LABEL_22;
    }

    if ((v19[0] & 0xF800) != 0xD800)
    {
      v12 = 0;
      v11 = LOWORD(v19[0]) | 0x1000000000;
      goto LABEL_22;
    }

    v13 = LOWORD(v19[0]) | (*(v4 + 2) << 16);
    *v4 = v13;
    v8 = 16;
    *(v4 + 4) = 16;
    result = v9(v19, a2, a3);
  }

  if ((v19[0] & 0x10000) != 0)
  {
    v14 = v8;
  }

  else
  {
    if (v8 > 0x1F)
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v13 = (LOWORD(v19[0]) << v8) | ((-65535 << v8) - 1) & v13;
    *v4 = v13;
    v14 = v8 + 16;
    *(v4 + 4) = v8 + 16;
    if (v8 <= 0xF)
    {
      result = v9(v19, a2, a3);
      if ((v19[0] & 0x10000) == 0)
      {
        v13 = (LOWORD(v19[0]) << v14) | ((0x10000 << v8) - 1) & v13;
        *v4 = v13;
        v14 = v8 | 0x20;
        *(v4 + 4) = v8 | 0x20;
      }
    }
  }

  v15 = v13 & 0xFC00FC00;
  if ((v13 & 0xFC00FC00) == 0xDC00D800)
  {
    v16 = 32;
  }

  else
  {
    v16 = 16;
  }

  *(v4 + 4) = v14 - v16;
  if (v15 == -603924480)
  {
    v17 = 32;
  }

  else
  {
    v17 = 16;
  }

  *v4 = v13 >> v17;
  if (v15 == -603924480)
  {
    v12 = 0;
    v11 = v13 | (v17 << 32);
  }

  else
  {
    result = specialized numericCast<A, B>(_:)(0x10uLL);
    if (!result)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v12 = 1;
    v11 = 0x10u / result;
  }

LABEL_22:
  *a4 = v11;
  *(a4 + 8) = v12;
  return result;
}

uint64_t protocol witness for _UTFParser._parseMultipleCodeUnits() in conformance Unicode.UTF16.ForwardParser()
{
  if ((*v0 & 0xFC00FC00) == 0xDC00D800)
  {
    v1 = 0x2000;
  }

  else
  {
    v1 = 4096;
  }

  if ((*v0 & 0xFC00FC00) == 0xDC00D800)
  {
    return v1 + 1;
  }

  else
  {
    return v1;
  }
}

uint64_t protocol witness for _UTFParser._bufferedScalar(bitCount:) in conformance Unicode.UTF16.ForwardParser@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *v2;
  *(a2 + 4) = result;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance _MergeError()
{
  specialized Hasher.init(_seed:)(0, v1);
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance _MergeError(uint64_t a1)
{
  specialized Hasher.init(_seed:)(a1, v2);
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t protocol witness for static _UnicodeEncoding.encode(_:) in conformance Unicode.UTF32@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t protocol witness for static _UnicodeEncoding.transcode<A>(_:from:) in conformance Unicode.UTF32@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  result = specialized static _UnicodeEncoding.transcode<A>(_:from:)(a1, a2, a3);
  *a4 = result;
  *(a4 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t Unicode.UTF32.Parser.parseScalar<A>(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 16))(&v5, a2, a3);
  if ((v5 & 0x100000000) != 0)
  {
    return 0;
  }

  if (WORD1(v5) > 0x10u || v5 >> 11 == 27)
  {
    return 1;
  }

  else
  {
    return v5;
  }
}

uint64_t protocol witness for _UnicodeParser.parseScalar<A>(from:) in conformance Unicode.UTF32.Parser@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = Unicode.UTF32.Parser.parseScalar<A>(from:)(a1, a2, a3);
  *a4 = result;
  *(a4 + 8) = v6;
  return result;
}

uint64_t static UnicodeDecodingResult.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = (a2 & 0x100000000) == 0 && a1 == a2;
  v4 = BYTE4(a2) & (a2 != 0);
  if (!a1)
  {
    v4 = BYTE4(a2) & (a2 == 0);
  }

  if ((a1 & 0x100000000) != 0)
  {
    return v4;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance UnicodeDecodingResult(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 4);
  v3 = (*a1 == *a2) & ~v2;
  if (*a2)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(a2 + 4);
  }

  if (!*a2)
  {
    v2 = 0;
  }

  if (*a1)
  {
    v5 = v2;
  }

  else
  {
    v5 = v4;
  }

  if (*(a1 + 4) == 1)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

uint64_t static UnicodeCodec._nullCodeUnitOffset(in:)(uint64_t a1, const char *a2, uint64_t a3)
{
  return static UnicodeCodec._nullCodeUnitOffset(in:)(a1, a2, a3);
}

{
  v5 = *(a3 + 8);
  swift_getAssociatedTypeWitness(255, v5, a2, &protocol requirements base descriptor for _UnicodeEncoding, associated type descriptor for _UnicodeEncoding.CodeUnit);
  v7 = v6;
  v8 = *(swift_getAssociatedConformanceWitness(v5, a2, v6, &protocol requirements base descriptor for _UnicodeEncoding, associated conformance descriptor for _UnicodeEncoding._UnicodeEncoding.CodeUnit: FixedWidthInteger) + 8);
  v9 = *(*(v8 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v9, v7, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v43 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v42 = v41 - v11;
  v12 = swift_checkMetadataState(0, v7);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v41 - v16;
  v18 = 0;
  v19 = *(v8 + 64);
  v21 = *(v20 + 16);
  v20 += 16;
  v50 = v21;
  v51 = v19;
  v48 = *(v20 + 56);
  v49 = v8 + 128;
  v52 = v20;
  v22 = (v20 - 8);
  v45 = v8 + 120;
  v46 = v8 + 96;
  v44 = v9;
  v41[1] = v9 + 3;
  v47 = v8 + 64;
  v21(v41 - v16, a1, v12);
  while (1)
  {
    v29 = v51;
    if (v51(v12, v8))
    {
      v30 = (*(v8 + 128))(v12, v8);
      if (v30 >= 64)
      {
        goto LABEL_2;
      }

      v33 = (*(v8 + 120))(v12, v8);
      result = (*v22)(v17, v12);
      if (!v33)
      {
        return v18;
      }
    }

    else
    {
      v34 = v29(v12, v8);
      v30 = (*(v8 + 128))(v12, v8);
      if (v34)
      {
        if (v30 > 64)
        {
          goto LABEL_2;
        }

        v35 = v43;
        v36 = v44;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v44, v12, v43, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        v38 = v42;
        (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v35, AssociatedConformanceWitness);
        (*(v36 + 3))(v38, v12, v36);
        LOBYTE(v35) = (*(*(*(v8 + 32) + 8) + 32))(v17, v15, v12);
        v39 = *v22;
        (*v22)(v15, v12);
        if ((v35 & 1) == 0)
        {
          result = v39(v17, v12);
          goto LABEL_3;
        }

        v40 = (*(v8 + 120))(v12, v8);
        result = v39(v17, v12);
      }

      else
      {
        if (v30 >= 64)
        {
LABEL_2:
          v53 = 0;
          v23 = *(v8 + 96);
          v24 = lazy protocol witness table accessor for type Int and conformance Int(v30, v31, v32);
          v23(&v53, &type metadata for Int, v24, v12, v8);
          v25 = (*(*(*(v8 + 16) + 8) + 8))(v17, v15, v12);
          v26 = *v22;
          (*v22)(v15, v12);
          result = v26(v17, v12);
          if (v25)
          {
            return v18;
          }

          goto LABEL_3;
        }

        v40 = (*(v8 + 120))(v12, v8);
        result = (*v22)(v17, v12);
      }

      if (!v40)
      {
        return v18;
      }
    }

LABEL_3:
    a1 += v48;
    if (__OFADD__(v18++, 1))
    {
      break;
    }

    v50(v17, a1, v12);
  }

  __break(1u);
  return result;
}

unint64_t Unicode.UTF8.decode<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v7 = *(v3 + 4);
  v25 = *v3;
  v26 = v7;
  if (v7)
  {
    if ((v6 & 0x80) == 0)
    {
      lazy protocol witness table accessor for type Unicode.UTF8.ForwardParser and conformance Unicode.UTF8.ForwardParser(a1, a2, a3);
      v23 = protocol witness for _UTFParser._buffer.modify in conformance Unicode.UTF8.ReverseParser();
      specialized RangeReplaceableCollection.remove(at:)(0);
      (v23)(v24, 0);
      v11 = (v6 + 1);
      goto LABEL_32;
    }

    v8 = *(a3 + 16);
    v8(v24, a2, a3);
  }

  else
  {
    v8 = *(a3 + 16);
    v8(v24, a2, a3);
    if ((v24[0] & 0x100) != 0)
    {
      v9 = 0;
      *v3 = v6;
      *(v3 + 4) = 0;
LABEL_4:
      v10 = 1;
      goto LABEL_40;
    }

    if ((v24[0] & 0x80) == 0)
    {
      v11 = LOBYTE(v24[0]) + 1;
      goto LABEL_32;
    }

    v6 = v6 & 0xFFFFFF00 | LOBYTE(v24[0]);
    v7 = 8;
    v8(v24, a2, a3);
  }

  if ((v24[0] & 0x100) != 0)
  {
    v12 = v7;
  }

  else
  {
    if (v7 >= 0x20)
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v6 = (LOBYTE(v24[0]) << v7) | ((-255 << v7) - 1) & v6;
    v12 = v7 + 8;
    if (v7 <= 0x17)
    {
      v8(v24, a2, a3);
      if ((v24[0] & 0x100) == 0)
      {
        v6 = (LOBYTE(v24[0]) << v12) | ((-65280 << v7) - 1) & v6;
        v12 = v7 + 16;
        if (v7 <= 0xF)
        {
          v8(v24, a2, a3);
          if ((v24[0] & 0x100) == 0)
          {
            v6 = (LOBYTE(v24[0]) << v12) | ((-16711680 << v7) - 1) & v6;
            v12 = v7 + 24;
            if (v7 <= 7)
            {
              v8(v24, a2, a3);
              if ((v24[0] & 0x100) == 0)
              {
                v6 = (LOBYTE(v24[0]) << v12) | ((0x1000000 << v7) - 1) & v6;
                v12 = v7 | 0x20;
              }
            }
          }
        }
      }
    }
  }

  if ((v6 & 0xC0E0) != 0x80C0)
  {
    if ((v6 & 0xC0C0F0) == 0x8080E0)
    {
      if ((v6 & 0x200F) != 0 && (v6 & 0x200F) != 0x200D)
      {
        v13 = 24;
        v14 = 1;
        goto LABEL_30;
      }
    }

    else if ((v6 & 0xC0C0C0F8) == 0x808080F0 && (v6 & 0x3007) != 0 && __rev16(v6 & 0x3007) <= 0x400)
    {
      v13 = 32;
      v14 = 1;
      goto LABEL_30;
    }

LABEL_29:
    v15 = Unicode.UTF8.ForwardParser._invalidLength()();
    v14 = 0;
    v13 = 8 * v15;
    goto LABEL_30;
  }

  if ((v6 & 0x1E) == 0)
  {
    goto LABEL_29;
  }

  v13 = 16;
  v14 = 1;
LABEL_30:
  v16 = v6 >> (v13 & 0x38);
  v25 = v16;
  v26 = v12 - v13;
  if ((v14 & 1) == 0)
  {
    *v3 = v16;
    *(v3 + 4) = v12 - v13;
    v9 = 1;
    goto LABEL_4;
  }

  v11 = ((1 << ((v13 >> 1) & 0x1C) << ((v13 >> 1) & 0x1C)) - 1) & (v6 + 16843009);
LABEL_32:
  v17 = __clz(v11) >> 3;
  switch(v17)
  {
    case 1u:
      LODWORD(v9) = ((v11 - 65793) >> 2) & 0xFC0 | ((v11 - 65793) >> 16) & 0x3F | (((v11 - 65793) & 0xF) << 12);
      break;
    case 2u:
      LODWORD(v9) = (((v11 - 257) & 0x1F) << 6) | ((v11 - 257) >> 8) & 0x3F;
      break;
    case 3u:
      LODWORD(v9) = v11 - 1;
      break;
    default:
      v18 = vdupq_n_s32(v11 - 16843009);
      v19.i64[0] = vshlq_u32(v18, xmmword_18071DE00).u64[0];
      v19.i64[1] = vshlq_u32(v18, xmmword_18071DE10).i64[1];
      v20 = vandq_s8(v19, xmmword_18071DE20);
      *v20.i8 = vorr_s8(*v20.i8, *&vextq_s8(v20, v20, 8uLL));
      LODWORD(v9) = v20.i32[0] | v20.i32[1];
      break;
  }

  v10 = 0;
  v21 = v26;
  *v3 = v25;
  *(v3 + 4) = v21;
  v9 = v9;
LABEL_40:
  LOBYTE(v24[0]) = v10;
  return v9 | (v10 << 32);
}

unint64_t static Unicode.UTF8._decodeOne(_:)(int a1)
{
  if ((a1 & 0x80) == 0)
  {
    v2 = 0;
    v3 = a1 & 0x7F;
    v4 = 1;
    return (v4 << 40) | (v2 << 32) | v3;
  }

  if ((a1 & 0xC0E0) == 0x80C0)
  {
    if ((a1 & 0x1E) != 0)
    {
      v6 = 16;
      v7 = 1;
      goto LABEL_16;
    }
  }

  else if ((a1 & 0xC0C0F0) == 0x8080E0)
  {
    if ((a1 & 0x200F) != 0 && (a1 & 0x200F) != 0x200D)
    {
      v6 = 24;
      v7 = 1;
      goto LABEL_16;
    }
  }

  else if ((a1 & 0xC0C0C0F8) == 0x808080F0 && (a1 & 0x3007) != 0 && __rev16(a1 & 0x3007) <= 0x400)
  {
    v6 = 32;
    v7 = 1;
    goto LABEL_16;
  }

  v8 = Unicode.UTF8.ForwardParser._invalidLength()();
  v7 = 0;
  v6 = 8 * v8;
LABEL_16:
  if (v7)
  {
    v9 = ((1 << ((v6 >> 1) & 0x1C) << ((v6 >> 1) & 0x1C)) - 1) & (a1 + 16843009);
    v10 = __clz(v9) >> 3;
    v4 = 4 - v10;
    switch(v10)
    {
      case 1u:
        v2 = 0;
        v3 = ((v9 - 65793) >> 2) & 0xFC0 | ((v9 - 65793) >> 16) & 0x3F | (((v9 - 65793) & 0xF) << 12);
        break;
      case 2u:
        v2 = 0;
        v3 = (((v9 - 257) & 0x1F) << 6) | ((v9 - 257) >> 8) & 0x3F;
        break;
      case 3u:
        v2 = 0;
        v3 = v9 - 1;
        break;
      default:
        v2 = 0;
        v11 = vdupq_n_s32(v9 - 16843009);
        v12.i64[0] = vshlq_u32(v11, xmmword_18071DE00).u64[0];
        v12.i64[1] = vshlq_u32(v11, xmmword_18071DE10).i64[1];
        v13 = vandq_s8(v12, xmmword_18071DE20);
        *v13.i8 = vorr_s8(*v13.i8, *&vextq_s8(v13, v13, 8uLL));
        v3 = v13.i32[0] | v13.i32[1];
        break;
    }
  }

  else
  {
    v3 = 0;
    v4 = v6 >> 3;
    v2 = 1;
  }

  return (v4 << 40) | (v2 << 32) | v3;
}

uint64_t static Unicode.UTF8.encode(_:into:)(unsigned int a1, uint64_t (*a2)(void))
{
  if (a1 < 0x80)
  {
    return a2();
  }

  v3 = (a1 & 0x3F) << 8;
  v4 = (v3 | (a1 >> 6) & 0x3F) << 8;
  v5 = (((v4 | (a1 >> 12) & 0x3F) << 8) | (a1 >> 18)) - 2122219023;
  v6 = (a1 >> 12) + v4 + 8487393;
  if (HIWORD(a1))
  {
    v6 = v5;
  }

  if (a1 <= 0x7FF)
  {
    v7 = (a1 >> 6) + v3 + 33217;
  }

  else
  {
    v7 = v6;
  }

  v8 = a2;
  (a2)(v7 - 1);
  result = (v8)((v7 >> 8) - 1);
  if (v7 >= 0x10000)
  {
    result = (v8)(HIWORD(v7) - 1);
    if (HIBYTE(v7))
    {
      a2 = v8;
      return a2();
    }
  }

  return result;
}

unint64_t protocol witness for UnicodeCodec.decode<A>(_:) in conformance Unicode.UTF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = *(v3 + 4);
  v27 = *v3;
  v28 = v8;
  if (v8)
  {
    if ((v7 & 0x80) == 0)
    {
      lazy protocol witness table accessor for type Unicode.UTF8.ForwardParser and conformance Unicode.UTF8.ForwardParser(a1, a2, a3);
      v25 = protocol witness for _UTFParser._buffer.modify in conformance Unicode.UTF8.ReverseParser();
      specialized RangeReplaceableCollection.remove(at:)(0);
      (v25)(v26, 0);
      v12 = (v7 + 1);
      goto LABEL_32;
    }

    v9 = *(a3 + 16);
    v9(v26, a2, a3);
  }

  else
  {
    v9 = *(a3 + 16);
    v9(v26, a2, a3);
    if ((v26[0] & 0x100) != 0)
    {
      v10 = 0;
      *v3 = v7;
      *(v3 + 4) = 0;
LABEL_4:
      v11 = 1;
      goto LABEL_40;
    }

    if ((v26[0] & 0x80) == 0)
    {
      v12 = LOBYTE(v26[0]) + 1;
      goto LABEL_32;
    }

    v7 = v7 & 0xFFFFFF00 | LOBYTE(v26[0]);
    v8 = 8;
    v9(v26, a2, a3);
  }

  if ((v26[0] & 0x100) != 0)
  {
    v13 = v8;
  }

  else
  {
    if (v8 >= 0x20)
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v7 = (LOBYTE(v26[0]) << v8) | ((-255 << v8) - 1) & v7;
    v13 = v8 + 8;
    if (v8 <= 0x17)
    {
      v9(v26, a2, a3);
      if ((v26[0] & 0x100) == 0)
      {
        v7 = (LOBYTE(v26[0]) << v13) | ((-65280 << v8) - 1) & v7;
        v13 = v8 + 16;
        if (v8 <= 0xF)
        {
          v9(v26, a2, a3);
          if ((v26[0] & 0x100) == 0)
          {
            v7 = (LOBYTE(v26[0]) << v13) | ((-16711680 << v8) - 1) & v7;
            v13 = v8 + 24;
            if (v8 <= 7)
            {
              v9(v26, a2, a3);
              if ((v26[0] & 0x100) == 0)
              {
                v7 = (LOBYTE(v26[0]) << v13) | ((0x1000000 << v8) - 1) & v7;
                v13 = v8 | 0x20;
              }
            }
          }
        }
      }
    }
  }

  if ((v7 & 0xC0E0) != 0x80C0)
  {
    if ((v7 & 0xC0C0F0) == 0x8080E0)
    {
      if ((v7 & 0x200F) != 0 && (v7 & 0x200F) != 0x200D)
      {
        v14 = 24;
        v15 = 1;
        goto LABEL_30;
      }
    }

    else if ((v7 & 0xC0C0C0F8) == 0x808080F0 && (v7 & 0x3007) != 0 && __rev16(v7 & 0x3007) <= 0x400)
    {
      v14 = 32;
      v15 = 1;
      goto LABEL_30;
    }

LABEL_29:
    v16 = Unicode.UTF8.ForwardParser._invalidLength()();
    v15 = 0;
    v14 = 8 * v16;
    goto LABEL_30;
  }

  if ((v7 & 0x1E) == 0)
  {
    goto LABEL_29;
  }

  v14 = 16;
  v15 = 1;
LABEL_30:
  v17 = v7 >> (v14 & 0x38);
  v27 = v17;
  v18 = v13 - v14;
  v28 = v13 - v14;
  if ((v15 & 1) == 0)
  {
    if (!specialized numericCast<A, B>(_:)(8uLL))
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    *v4 = v17;
    *(v4 + 4) = v18;
    v10 = 1;
    goto LABEL_4;
  }

  v12 = ((1 << ((v14 >> 1) & 0x1C) << ((v14 >> 1) & 0x1C)) - 1) & (v7 + 16843009);
LABEL_32:
  v19 = __clz(v12) >> 3;
  switch(v19)
  {
    case 1u:
      LODWORD(v10) = ((v12 - 65793) >> 2) & 0xFC0 | ((v12 - 65793) >> 16) & 0x3F | (((v12 - 65793) & 0xF) << 12);
      break;
    case 2u:
      LODWORD(v10) = (((v12 - 257) & 0x1F) << 6) | ((v12 - 257) >> 8) & 0x3F;
      break;
    case 3u:
      LODWORD(v10) = v12 - 1;
      break;
    default:
      v20 = vdupq_n_s32(v12 - 16843009);
      v21.i64[0] = vshlq_u32(v20, xmmword_18071DE00).u64[0];
      v21.i64[1] = vshlq_u32(v20, xmmword_18071DE10).i64[1];
      v22 = vandq_s8(v21, xmmword_18071DE20);
      *v22.i8 = vorr_s8(*v22.i8, *&vextq_s8(v22, v22, 8uLL));
      LODWORD(v10) = v22.i32[0] | v22.i32[1];
      break;
  }

  v11 = 0;
  v23 = v28;
  *v4 = v27;
  *(v4 + 4) = v23;
  v10 = v10;
LABEL_40:
  LOBYTE(v26[0]) = v11;
  return v10 | (v11 << 32);
}

uint64_t protocol witness for static UnicodeCodec.encode(_:into:) in conformance Unicode.UTF8(unsigned int a1, uint64_t (*a2)(char *))
{
  if (a1 >= 0x80)
  {
    v5 = (a1 & 0x3F) << 8;
    if (a1 >= 0x800)
    {
      v6 = (v5 | (a1 >> 6) & 0x3F) << 8;
      v7 = (((v6 | (a1 >> 12) & 0x3F) << 8) | (a1 >> 18)) - 2122219023;
      v8 = (a1 >> 12) + v6 + 8487393;
      if (HIWORD(a1))
      {
        v3 = v7;
      }

      else
      {
        v3 = v8;
      }
    }

    else
    {
      v3 = (a1 >> 6) + v5 + 33217;
    }
  }

  else
  {
    v3 = a1 + 1;
  }

  v12 = v3 - 1;
  result = a2(&v12);
  if (v3 >= 0x100)
  {
    v11 = BYTE1(v3) - 1;
    result = a2(&v11);
    if (HIWORD(v3))
    {
      v10 = BYTE2(v3) - 1;
      result = a2(&v10);
      if (HIBYTE(v3))
      {
        v9 = HIBYTE(v3) - 1;
        return a2(&v9);
      }
    }
  }

  return result;
}

unint64_t Unicode.UTF16.decode<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  LODWORD(v6) = *v3;
  v7 = *(v3 + 4);
  v21 = *v3;
  v22 = v7;
  if (v7)
  {
    if ((v6 & 0xF800) != 0xD800)
    {
      lazy protocol witness table accessor for type Unicode.UTF16.ForwardParser and conformance Unicode.UTF16.ForwardParser(a1, a2, a3);
      v19 = protocol witness for _UTFParser._buffer.modify in conformance Unicode.UTF8.ReverseParser();
      specialized RangeReplaceableCollection.remove(at:)(0);
      (v19)(v20, 0);
      LODWORD(v9) = v6;
      LODWORD(v6) = v21;
      v12 = v22;
      goto LABEL_27;
    }

    v8 = *(a3 + 16);
    v8(v20, a2, a3);
    goto LABEL_7;
  }

  v8 = *(a3 + 16);
  v8(v20, a2, a3);
  if ((v20[0] & 0x10000) == 0)
  {
    LODWORD(v9) = LOWORD(v20[0]);
    if ((v20[0] & 0xF800) != 0xD800)
    {
      v12 = 0;
      goto LABEL_27;
    }

    LODWORD(v6) = v6 & 0xFFFF0000 | LOWORD(v20[0]);
    v7 = 16;
    v8(v20, a2, a3);
LABEL_7:
    if ((v20[0] & 0x10000) != 0)
    {
      v11 = v6;
    }

    else
    {
      if (v7 >= 0x20)
      {
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v11 = (LOWORD(v20[0]) << v7) | ((-65535 << v7) - 1) & v6;
      if (v7 > 0xF)
      {
        LOBYTE(v7) = v7 + 16;
      }

      else
      {
        v8(v20, a2, a3);
        v13 = (LOWORD(v20[0]) << (v7 + 16)) | ((0x10000 << v7) - 1) & v11;
        if ((v20[0] & 0x10000) != 0)
        {
          LOBYTE(v7) = v7 + 16;
        }

        else
        {
          LOBYTE(v7) = v7 | 0x20;
        }

        if ((v20[0] & 0x10000) == 0)
        {
          v11 = v13;
        }
      }
    }

    v14 = v11 & 0xFC00FC00;
    if ((v11 & 0xFC00FC00) == 0xDC00D800)
    {
      v15 = 32;
    }

    else
    {
      v15 = 16;
    }

    v12 = v7 - v15;
    v16 = v14 == -603924480;
    if (v14 == -603924480)
    {
      v17 = 32;
    }

    else
    {
      v17 = 16;
    }

    v6 = v11 >> v17;
    if (!v16)
    {
      *v3 = v6;
      *(v3 + 4) = v12;
      v9 = 1;
      goto LABEL_4;
    }

    LODWORD(v9) = (HIWORD(v11) & 0x3FF | ((v11 & 0x3FF) << 10)) + 0x10000;
LABEL_27:
    v10 = 0;
    *v3 = v6;
    *(v3 + 4) = v12;
    v9 = v9;
    goto LABEL_28;
  }

  v9 = 0;
  *v3 = v6;
  *(v3 + 4) = 0;
LABEL_4:
  v10 = 1;
LABEL_28:
  LOBYTE(v20[0]) = v10;
  return v9 | (v10 << 32);
}

uint64_t static Unicode.UTF16.encode(_:into:)(unsigned int a1, uint64_t (*a2)(void))
{
  if (a1 >= 0x10000)
  {
    v3 = a2;
    (a2)(((a1 + 983040) >> 10) & 0x3FF | ((a1 & 0x3FF) << 16) | 0xDC00D800);
    a2 = v3;
  }

  return a2();
}

_WORD *protocol witness for static UnicodeCodec._nullCodeUnitOffset(in:) in conformance Unicode.UTF16(_WORD *result)
{
  if (!*result)
  {
    return 0;
  }

  for (i = 0; ; ++i)
  {
    v2 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (!result[v2])
    {
      return v2;
    }
  }

  __break(1u);
  return result;
}

unint64_t Unicode.UTF32.decode<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 16))(&v8, a2, a3);
  v3 = v8;
  v4 = WORD1(v8) > 0x10u || v8 >> 11 == 27;
  v5 = v4;
  if (v4)
  {
    v3 = 1;
  }

  if ((v8 & 0x100000000) != 0)
  {
    v3 = 0;
    v6 = 1;
  }

  else
  {
    v6 = v5;
  }

  return v3 | (v6 << 32);
}

_DWORD *protocol witness for static UnicodeCodec._nullCodeUnitOffset(in:) in conformance Unicode.UTF32(_DWORD *result)
{
  if (!*result)
  {
    return 0;
  }

  for (i = 0; ; ++i)
  {
    v2 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (!result[v2])
    {
      return v2;
    }
  }

  __break(1u);
  return result;
}

BOOL hasBreakWhenPaired #1 (_:) in _quickHasGraphemeBreakBetween(_:_:)(unsigned int a1)
{
  v1 = vdupq_n_s32(a1);
  v2 = 1;
  if ((vmaxv_u8(vmovn_s16(vuzp1q_s16(vcgtq_u32(vaddq_s32(v1, xmmword_18071DD50), xmmword_18071DD70), vcgtq_u32(vaddq_s32(v1, xmmword_18071DD60), xmmword_18071DD80)))) & 1) == 0)
  {
    return a1 < 0x300 || a1 - 65281 < 0x9D;
  }

  return v2;
}

Swift::String::Index __swiftcall _StringGuts._slowRoundDownToNearestCharacter(_:)(Swift::String::Index a1)
{
  v3 = a1._rawBits >> 16;
  if (a1._rawBits < 0x20000)
  {
    v5 = 0;
    goto LABEL_14;
  }

  if ((v2 & 0x1000000000000000) != 0)
  {
    goto LABEL_43;
  }

  if ((v2 & 0x2000000000000000) != 0)
  {
    v36 = v1;
    v37 = v2 & 0xFFFFFFFFFFFFFFLL;
    v4 = &v36;
  }

  else if ((v1 & 0x1000000000000000) != 0)
  {
    v4 = ((v2 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    rawBits = a1._rawBits;
    v33 = v1;
    v34 = v2;
    v35 = _StringObject.sharedUTF8.getter(v1, v2);
    v2 = v34;
    v1 = v33;
    v4 = v35;
    a1._rawBits = rawBits;
    if (!v4)
    {
LABEL_48:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }
  }

  v6 = *(v4 + v3 - 2);
  if (v6 != 2573 && (v6 & 0x80808080) == 0)
  {
    v5 = v3 - 1;
    if (__OFSUB__(v3, 1))
    {
      goto LABEL_45;
    }

    goto LABEL_14;
  }

  while (1)
  {
LABEL_43:
    v22 = a1._rawBits;
    v23 = v1;
    v24 = v2;
    v25 = _StringGuts._opaqueComplexCharacterStride(endingAt:)(v3);
    v2 = v24;
    v1 = v23;
    v26 = v25;
    a1._rawBits = v22;
    v5 = v3 - v26;
    if (__OFSUB__(v3, v26))
    {
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

LABEL_14:
    if ((v2 & 0x1000000000000000) != 0)
    {
      goto LABEL_40;
    }

    if ((v2 & 0x2000000000000000) == 0)
    {
      break;
    }

    v36 = v1;
    v37 = v2 & 0xFFFFFFFFFFFFFFLL;
    if (v5 + 1 != (HIBYTE(v2) & 0xF))
    {
      v11 = *(&v36 + v5);
      if (v11 == 2573 || (v11 & 0x80808080) != 0)
      {
        goto LABEL_40;
      }
    }

LABEL_29:
    v13 = 1;
    v14 = v5 + 1;
    if (!__OFADD__(v5, 1))
    {
      goto LABEL_30;
    }

LABEL_42:
    __break(1u);
  }

  if ((v1 & 0x1000000000000000) != 0)
  {
    v8 = (v2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v9 = v1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_18;
  }

LABEL_46:
  v27 = a1._rawBits;
  v28 = v1;
  v29 = v2;
  v30 = _StringObject.sharedUTF8.getter(v1, v2);
  v2 = v29;
  v8 = v30;
  a1._rawBits = v27;
  v9 = v31;
  v1 = v28;
LABEL_18:
  if (v5 + 1 == v9)
  {
    goto LABEL_29;
  }

  if (!v8)
  {
    goto LABEL_48;
  }

  v10 = *(v8 + v5);
  if (v10 != 2573 && (v10 & 0x80808080) == 0)
  {
    goto LABEL_29;
  }

LABEL_40:
  v18 = a1._rawBits;
  v19 = v1;
  v20 = v2;
  v21 = _StringGuts._opaqueComplexCharacterStride(startingAt:)(v5);
  v2 = v20;
  v1 = v19;
  v13 = v21;
  a1._rawBits = v18;
  v14 = v5 + v13;
  if (__OFADD__(v5, v13))
  {
    goto LABEL_42;
  }

LABEL_30:
  if (v3 >= v14)
  {
    return (a1._rawBits | 3);
  }

  if (v13 <= 63)
  {
    v15 = v13 << 8;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15 | (v5 << 16);
  if ((v2 & 0x1000000000000000) == 0 || (v1 & 0x800000000000000) != 0)
  {
    return (v16 | 7);
  }

  else
  {
    return (v16 | 0xB);
  }
}

uint64_t _StringGuts._slowRoundDownToNearestCharacter(_:in:)(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v7 = a2;
  v8 = a1;
  v9 = a1 >> 16;
  v10 = _StringGuts._opaqueCharacterStride(endingAt:in:)(a1 >> 16, a2 >> 16, a3, a4, a5);
  v11 = v9 - v10;
  if (__OFSUB__(v9, v10))
  {
    goto LABEL_29;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    goto LABEL_26;
  }

  if ((a5 & 0x2000000000000000) != 0)
  {
    v22[0] = a4;
    v22[1] = a5 & 0xFFFFFFFFFFFFFFLL;
    if (v11 + 1 != (HIBYTE(a5) & 0xF))
    {
      v14 = *(v22 + v11);
      goto LABEL_11;
    }

    goto LABEL_16;
  }

  if ((a4 & 0x1000000000000000) == 0)
  {
    goto LABEL_30;
  }

  v12 = ((a5 & 0xFFFFFFFFFFFFFFFLL) + 32);
  v13 = a4 & 0xFFFFFFFFFFFFLL;
  while (1)
  {
    if (v11 + 1 != v13)
    {
      if (!v12)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v14 = *&v12[v11];
LABEL_11:
      if (v14 == 2573 || (v14 & 0x8080) != 0)
      {
        break;
      }
    }

LABEL_16:
    v16 = 1;
    v17 = v11 + 1;
    if (!__OFADD__(v11, 1))
    {
      goto LABEL_17;
    }

LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    v12 = _StringObject.sharedUTF8.getter(a4, a5);
  }

LABEL_26:
  v16 = _StringGuts._opaqueComplexCharacterStride(startingAt:)(v11);
  v17 = v11 + v16;
  if (__OFADD__(v11, v16))
  {
    goto LABEL_28;
  }

LABEL_17:
  if (v9 < v17)
  {
    v18 = v16 << 8;
    if (v16 > 63)
    {
      v18 = 0;
    }

    v19 = v7 & 2 | (v11 << 16) | v18;
    if ((a5 & 0x1000000000000000) == 0 || (a4 & 0x800000000000000) != 0)
    {
      v20 = 5;
    }

    else
    {
      v20 = 9;
    }

    return v19 | v20;
  }

  return v8;
}

Swift::Int __swiftcall _StringGuts._opaqueComplexCharacterStride(startingAt:)(Swift::Int startingAt)
{
  if ((v2 & 0x1000000000000000) == 0)
  {
    if ((v2 & 0x2000000000000000) == 0)
    {
      if ((v1 & 0x1000000000000000) != 0)
      {
        v4 = ((v2 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v5 = v1 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v4 = _StringObject.sharedUTF8.getter(v1, v2);
        v5 = v1;
      }

      LODWORD(v23[0]) = 0;
      if (v5 > startingAt)
      {
        v6._value = _decodeScalar(_:startingAt:)(v4, v1, startingAt);
        v8 = v7 + startingAt;
        while (1)
        {
          v11 = v8;
          if (v8 >= v5)
          {
            return v11 - startingAt;
          }

          v12 = &v4[v8];
          v13 = v4[v8];
          if ((v4[v8] & 0x80000000) == 0)
          {
            goto LABEL_7;
          }

          v14 = (__clz(v13 ^ 0xFF) - 24);
          if (v14 > 2)
          {
            if (v14 == 3)
            {
              v13 = ((v13 & 0xF) << 12) | ((v12[1] & 0x3F) << 6) | v12[2] & 0x3F;
              v9 = 3;
            }

            else
            {
              v13 = ((v13 & 0xF) << 18) | ((v12[1] & 0x3F) << 12) | ((v12[2] & 0x3F) << 6) | v12[3] & 0x3F;
              v9 = 4;
            }

            goto LABEL_8;
          }

          if (v14 == 1)
          {
LABEL_7:
            v9 = 1;
          }

          else
          {
            v13 = v12[1] & 0x3F | ((v13 & 0x1F) << 6);
            v9 = 2;
          }

LABEL_8:
          v8 += v9;
          v10 = _GraphemeBreakingState.shouldBreak(between:and:)(v6, v13);
          v6._value = v13;
          if (v10)
          {
            return v11 - startingAt;
          }
        }
      }

LABEL_35:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v15 = HIBYTE(v2) & 0xF;
    v23[0] = v1;
    v23[1] = v2 & 0xFFFFFFFFFFFFFFLL;
    if (v15 <= startingAt)
    {
      goto LABEL_35;
    }

    v16._value = _decodeScalar(_:startingAt:)(v23, v1, startingAt);
    v11 = v17 + startingAt;
    while (1)
    {
      if (v11 >= v15)
      {
        return v11 - startingAt;
      }

      v18 = v23 + v11;
      v19 = *(v23 + v11);
      if ((*(v23 + v11) & 0x80000000) == 0)
      {
        break;
      }

      v21 = (__clz(v19 ^ 0xFF) - 24);
      if (v21 > 2)
      {
        if (v21 == 3)
        {
          v19 = ((v19 & 0xF) << 12) | ((v18[1] & 0x3F) << 6) | v18[2] & 0x3F;
          v20 = 3;
        }

        else
        {
          v19 = ((v19 & 0xF) << 18) | ((v18[1] & 0x3F) << 12) | ((v18[2] & 0x3F) << 6) | v18[3] & 0x3F;
          v20 = 4;
        }
      }

      else
      {
        if (v21 == 1)
        {
          break;
        }

        v19 = v18[1] & 0x3F | ((v19 & 0x1F) << 6);
        v20 = 2;
      }

LABEL_22:
      if (_GraphemeBreakingState.shouldBreak(between:and:)(v16, v19))
      {
        return v11 - startingAt;
      }

      v11 += v20;
      v16._value = v19;
    }

    v20 = 1;
    goto LABEL_22;
  }

  return _StringGuts._foreignOpaqueCharacterStride(startingAt:)(startingAt, v1, v2);
}

Swift::UInt64 _StringGuts._foreignOpaqueCharacterStride(startingAt:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v41 = 0;
  if (v3 <= a1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v7._rawBits = a1 << 16;
  v8._rawBits = _StringGuts.validateScalarIndex(_:)((a1 << 16))._rawBits;
  v38 = a1;
  if ((a3 & 0x1000000000000000) != 0)
  {
    v12._value = _StringGuts.foreignErrorCorrectedScalar(startingAt:)((v8._rawBits & 0xFFFFFFFFFFFF0000))._0._value;
    v36._rawBits = _StringGuts.validateScalarIndex(_:)(v7)._rawBits;
    rawBits = String.UnicodeScalarView._foreignIndex(after:)(v36)._rawBits;
  }

  else
  {
    v10 = v8._rawBits >> 16;
    if ((a3 & 0x2000000000000000) != 0)
    {
      v39 = a2;
      v40 = a3 & 0xFFFFFFFFFFFFFFLL;
      v12._value = _decodeScalar(_:startingAt:)(&v39, v9._rawBits, v10);
      v13._rawBits = _StringGuts.validateScalarIndex(_:)(v7)._rawBits >> 16;
      v39 = a2;
      v40 = a3 & 0xFFFFFFFFFFFFFFLL;
      v15 = *(&v39 + v13._rawBits);
    }

    else
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        v11 = ((a3 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v37 = v8._rawBits >> 16;
        v11 = _StringObject.sharedUTF8.getter(a2, a3);
        v10 = v37;
      }

      v12._value = _decodeScalar(_:startingAt:)(v11, v9._rawBits, v10);
      v13._rawBits = _StringGuts.validateScalarIndex(_:)(v7)._rawBits >> 16;
      if ((a2 & 0x1000000000000000) != 0)
      {
        v14 = ((a3 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v14 = _StringObject.sharedUTF8.getter(a2, a3);
      }

      v15 = v14[v13._rawBits];
    }

    v16 = v15;
    v17 = __clz(v15 ^ 0xFF) - 24;
    if (v16 >= 0)
    {
      LOBYTE(v17) = 1;
    }

    rawBits = (v13._rawBits + v17) << 16;
  }

  do
  {
    v22 = rawBits >> 16;
    if (rawBits >> 16 >= v3)
    {
      break;
    }

    v23._rawBits = _StringGuts.validateScalarIndex(_:)((rawBits & 0xFFFFFFFFFFFF0000))._rawBits;
    if ((a3 & 0x1000000000000000) != 0)
    {
      v19._value = _StringGuts.foreignErrorCorrectedScalar(startingAt:)((v23._rawBits & 0xFFFFFFFFFFFF0000))._0._value;
      v20._rawBits = _StringGuts.validateScalarIndex(_:)((rawBits & 0xFFFFFFFFFFFF0000))._rawBits;
      rawBits = String.UnicodeScalarView._foreignIndex(after:)(v20)._rawBits;
    }

    else
    {
      v25 = v23._rawBits >> 16;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v39 = a2;
        v40 = a3 & 0xFFFFFFFFFFFFFFLL;
        v19._value = _decodeScalar(_:startingAt:)(&v39, v24._rawBits, v25);
        v29 = _StringGuts.validateScalarIndex(_:)((rawBits & 0xFFFFFFFFFFFF0000))._rawBits >> 16;
        v39 = a2;
        v40 = a3 & 0xFFFFFFFFFFFFFFLL;
        v30 = *(&v39 + v29);
      }

      else
      {
        v26 = ((a3 & 0xFFFFFFFFFFFFFFFLL) + 32);
        if ((a2 & 0x1000000000000000) == 0)
        {
          v33 = v25;
          v26 = _StringObject.sharedUTF8.getter(a2, a3);
          v25 = v33;
        }

        v19._value = _decodeScalar(_:startingAt:)(v26, v24._rawBits, v25);
        v27._rawBits = _StringGuts.validateScalarIndex(_:)((rawBits & 0xFFFFFFFFFFFF0000))._rawBits;
        v28 = ((a3 & 0xFFFFFFFFFFFFFFFLL) + 32);
        if ((a2 & 0x1000000000000000) == 0)
        {
          v34 = v27._rawBits;
          v28 = _StringObject.sharedUTF8.getter(a2, a3);
          v27._rawBits = v34;
        }

        v29 = v27._rawBits >> 16;
        v30 = v28[v29];
      }

      v31 = v30;
      v32 = __clz(v30 ^ 0xFF) - 24;
      if (v31 >= 0)
      {
        LOBYTE(v32) = 1;
      }

      rawBits = (v29 + v32) << 16;
    }

    v21 = _GraphemeBreakingState.shouldBreak(between:and:)(v12, v19);
    v12._value = v19._value;
  }

  while (!v21);
  return v22 - v38;
}

Swift::Int __swiftcall _StringGuts._opaqueComplexCharacterStride(endingAt:)(Swift::Int endingAt)
{
  if ((v2 & 0x1000000000000000) == 0)
  {
    if ((v2 & 0x2000000000000000) != 0)
    {
      v33[0] = v1;
      v33[1] = v2 & 0xFFFFFFFFFFFFFFLL;
      if (endingAt > 0)
      {
        v5 = endingAt - 1;
        if ((*(v33 + endingAt - 1) & 0xC0) == 0x80)
        {
          v18 = endingAt;
          do
          {
            v19 = v32[v18--] & 0xC0;
          }

          while (v19 == 128);
          v5 = v18 - 1;
        }

        v20 = _decodeScalar(_:startingAt:)(v33, v1, v5);
        if (v5 >= 1)
        {
          v21 = v20;
          do
          {
            v22 = v5 - 1;
            v23 = *(v33 + v5 - 1);
            if ((v23 & 0xC0) == 0x80)
            {
              v24 = v5;
              do
              {
                v23 = v32[v24--];
              }

              while ((v23 & 0xC0) == 0x80);
              v22 = v24 - 1;
            }

            if ((v23 & 0x80) != 0)
            {
              v25 = v33 + v22;
              v26 = __clz(v23 ^ 0xFF) - 24;
              v27 = *(v33 + v22 + 1);
              if (v26 == 2)
              {
                v23 = v27 & 0x3F | ((v23 & 0x1F) << 6);
              }

              else
              {
                if (v26 == 3)
                {
                  v28 = v25[2];
                  v29 = ((v23 & 0xF) << 12) | ((v27 & 0x3F) << 6);
                }

                else
                {
                  v30 = v25[2];
                  v28 = v25[3];
                  v29 = ((v23 & 0xF) << 18) | ((v27 & 0x3F) << 12) | ((v30 & 0x3F) << 6);
                }

                v23 = v29 & 0xFFFFFFC0 | v28 & 0x3F;
              }
            }

            if (specialized _shouldBreakWithLookback(between:and:at:with:)(v23, v21, v5, v33))
            {
              break;
            }

            v21 = v23;
            v5 = v22;
          }

          while (v22 > 0);
        }

        return endingAt - v5;
      }
    }

    else if ((v1 & 0x1000000000000000) != 0)
    {
      v4 = ((v2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      if (endingAt >= 1)
      {
LABEL_5:
        v5 = endingAt;
        do
        {
          v6 = v4[--v5] & 0xC0;
        }

        while (v6 == 128);
        v7 = _decodeScalar(_:startingAt:)(v4, v1, v5);
        if (v5 >= 1)
        {
          v8 = v7;
          do
          {
            v9 = v5 - 1;
            v10 = v4[v5 - 1];
            if ((v10 & 0xC0) == 0x80)
            {
              v11 = v5;
              do
              {
                v10 = v4[v11-- - 2];
              }

              while ((v10 & 0xC0) == 0x80);
              v9 = v11 - 1;
            }

            if ((v10 & 0x80) != 0)
            {
              v12 = &v4[v9];
              v13 = __clz(v10 ^ 0xFF) - 24;
              v14 = v4[v9 + 1];
              if (v13 == 2)
              {
                v10 = v14 & 0x3F | ((v10 & 0x1F) << 6);
              }

              else
              {
                if (v13 == 3)
                {
                  v15 = v12[2];
                  v16 = ((v10 & 0xF) << 12) | ((v14 & 0x3F) << 6);
                }

                else
                {
                  v17 = v12[2];
                  v15 = v12[3];
                  v16 = ((v10 & 0xF) << 18) | ((v14 & 0x3F) << 12) | ((v17 & 0x3F) << 6);
                }

                v10 = v16 & 0xFFFFFFC0 | v15 & 0x3F;
              }
            }

            if (specialized _shouldBreakWithLookback(between:and:at:with:)(v10, v8, v5, v4))
            {
              break;
            }

            v8 = v10;
            v5 = v9;
          }

          while (v9 > 0);
        }

        return endingAt - v5;
      }
    }

    else
    {
      v4 = _StringObject.sharedUTF8.getter(v1, v2);
      if (endingAt >= 1)
      {
        goto LABEL_5;
      }
    }

    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return _StringGuts._foreignOpaqueCharacterStride(endingAt:)(endingAt, v1, v2);
}

uint64_t _StringGuts._foreignOpaqueCharacterStride(endingAt:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v7._rawBits = a1 << 16;
  a3;
  v8._rawBits = _StringGuts.validateInclusiveScalarIndex(_:)(v7)._rawBits;
  if (!(v8._rawBits >> 14))
  {
LABEL_165:
    a3;
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if ((a3 & 0x1000000000000000) != 0)
  {
    rawBits = String.UnicodeScalarView._foreignIndex(before:)(v8)._rawBits;
    v66._rawBits = _StringGuts.validateScalarIndex(_:)(rawBits)._rawBits;
    value = _StringGuts.foreignErrorCorrectedScalar(startingAt:)((v66._rawBits & 0xFFFFFFFFFFFF0000))._0._value;
    goto LABEL_20;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v70 = a2;
    v71 = a3 & 0xFFFFFFFFFFFFFFLL;
    if ((*(&v70 + (v8._rawBits >> 16) - 1) & 0xC0) == 0x80)
    {
      v14 = &v70 + (v8._rawBits >> 16) - 2;
      v13 = 1;
      do
      {
        ++v13;
        v15 = *v14--;
      }

      while ((v15 & 0xC0) == 0x80);
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    if ((a2 & 0x1000000000000000) != 0)
    {
      v9 = ((a3 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v67 = v8._rawBits;
      v9 = _StringObject.sharedUTF8.getter(a2, a3);
      v8._rawBits = v67;
      if (!v9)
      {
LABEL_168:
        a3;
        __break(1u);
        goto LABEL_169;
      }
    }

    v10 = 0;
    v11 = v9 + (v8._rawBits >> 16) - 1;
    do
    {
      v12 = *(v11 + v10--) & 0xC0;
    }

    while (v12 == 128);
    v13 = -v10;
  }

  rawBits = (v8._rawBits - (v13 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
  v17._rawBits = _StringGuts.validateScalarIndex(_:)(rawBits)._rawBits >> 16;
  if ((a3 & 0x2000000000000000) != 0)
  {
    v70 = a2;
    v71 = a3 & 0xFFFFFFFFFFFFFFLL;
    v18 = &v70;
    goto LABEL_19;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
LABEL_169:
    v68 = v17._rawBits;
    v18 = _StringObject.sharedUTF8.getter(a2, a3);
    v17._rawBits = v68;
    goto LABEL_19;
  }

  v18 = ((a3 & 0xFFFFFFFFFFFFFFFLL) + 32);
LABEL_19:
  value = _decodeScalar(_:startingAt:)(v18, v16._rawBits, v17._rawBits);
LABEL_20:
  v20 = value;
  v21 = rawBits >> 16;
  if (rawBits < 0x10000)
  {
    goto LABEL_162;
  }

  v69 = a3 & 0xFFFFFFFFFFFFFFLL;
  while (1)
  {
    v22 = v20;
    v23._rawBits = _StringGuts.validateInclusiveScalarIndex(_:)((v21 << 16))._rawBits;
    if (!(v23._rawBits >> 14))
    {
      goto LABEL_165;
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      rawBits = String.UnicodeScalarView._foreignIndex(before:)(v23)._rawBits;
      v29._rawBits = _StringGuts.validateScalarIndex(_:)(rawBits)._rawBits;
      v30 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)((v29._rawBits & 0xFFFFFFFFFFFF0000))._0._value;
    }

    else
    {
      if ((a3 & 0x2000000000000000) != 0)
      {
        v70 = a2;
        v71 = v69;
        if ((*(&v69 + (v23._rawBits >> 16) + 7) & 0xC0) == 0x80)
        {
          v31 = &v69 + (v23._rawBits >> 16) + 6;
          v28 = 1;
          do
          {
            ++v28;
            v32 = *v31--;
          }

          while ((v32 & 0xC0) == 0x80);
        }

        else
        {
          v28 = 1;
        }
      }

      else
      {
        v24 = ((a3 & 0xFFFFFFFFFFFFFFFLL) + 32);
        if ((a2 & 0x1000000000000000) == 0)
        {
          v64 = v23._rawBits;
          v24 = _StringObject.sharedUTF8.getter(a2, a3);
          v23._rawBits = v64;
          if (!v24)
          {
            goto LABEL_168;
          }
        }

        v25 = 0;
        v26 = v24 + (v23._rawBits >> 16) - 1;
        do
        {
          v27 = *(v26 + v25--) & 0xC0;
        }

        while (v27 == 128);
        v28 = -v25;
      }

      rawBits = (v23._rawBits - (v28 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
      v34._rawBits = _StringGuts.validateScalarIndex(_:)(rawBits)._rawBits >> 16;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v70 = a2;
        v71 = v69;
        v35 = &v70;
      }

      else
      {
        v35 = ((a3 & 0xFFFFFFFFFFFFFFFLL) + 32);
        if ((a2 & 0x1000000000000000) == 0)
        {
          v36 = v34._rawBits;
          v35 = _StringObject.sharedUTF8.getter(a2, a3);
          v34._rawBits = v36;
        }
      }

      v30 = _decodeScalar(_:startingAt:)(v35, v33._rawBits, v34._rawBits);
    }

    v20 = v30;
    a3;
    if (v20 == 13 && v22 == 10)
    {
      goto LABEL_54;
    }

    if (hasBreakWhenPaired #1 (_:) in _quickHasGraphemeBreakBetween(_:_:)(v20) && hasBreakWhenPaired #1 (_:) in _quickHasGraphemeBreakBetween(_:_:)(v22))
    {
      goto LABEL_161;
    }

    if (v20 < 0x20)
    {
      break;
    }

    if (v20 <= 0x7E)
    {
      swift_bridgeObjectRetain_n(a3, 3);
      goto LABEL_51;
    }

    if (v20 == 8205)
    {
      swift_bridgeObjectRetain_n(a3, 3);
      v38 = 12;
      goto LABEL_80;
    }

    if (v20 - 4448 > 0xFFFFFF9F || v20 - 43389 >= 0xFFFFFFE3)
    {
      swift_bridgeObjectRetain_n(a3, 3);
      v38 = 4;
      goto LABEL_80;
    }

    if (v20 - 4520 > 0xFFFFFFB7 || v20 - 55239 > 0xFFFFFFE8)
    {
      swift_bridgeObjectRetain_n(a3, 3);
      v38 = 11;
      goto LABEL_80;
    }

    if (v20 - 4608 > 0xFFFFFFA7 || v20 - 55292 > 0xFFFFFFCE)
    {
      swift_bridgeObjectRetain_n(a3, 3);
      v38 = 10;
      goto LABEL_80;
    }

    if (v20 - 55204 > 0xFFFFD45B)
    {
      HIDWORD(v42) = -1227133513 * (v20 - 16);
      LODWORD(v42) = HIDWORD(v42);
      if ((v42 >> 2) < 0x9249249)
      {
        v38 = 5;
      }

      else
      {
        v38 = 6;
      }

      goto LABEL_78;
    }

    if (v20 - 127488 > 0xFFFFFFE5)
    {
      swift_bridgeObjectRetain_n(a3, 3);
      v38 = 8;
      goto LABEL_80;
    }

    if (v20 - 131070 > 0xFFFFFC01)
    {
      v38 = 3;
LABEL_78:
      swift_bridgeObjectRetain_n(a3, 3);
      goto LABEL_80;
    }

    if (v20 - 921600 > 0xFFFFF1EF)
    {
      break;
    }

    swift_bridgeObjectRetain_n(a3, 3);
    GraphemeBreakProperty = _swift_stdlib_getGraphemeBreakProperty(v20);
    if (GraphemeBreakProperty <= 2)
    {
      switch(GraphemeBreakProperty)
      {
        case 1:
          v38 = 2;
          break;
        case 2:
          v38 = 7;
          break;
        case 0:
          goto LABEL_164;
        default:
LABEL_51:
          v38 = 0;
          v39 = Unicode._GraphemeBreakProperty.init(from:)(v22);
          if (v39 <= 0xC)
          {
            v40 = 1 << v39;
            if ((v40 & 0x1204) != 0)
            {
              goto LABEL_53;
            }

            if ((v40 & 3) != 0)
            {
              goto LABEL_160;
            }
          }

          goto LABEL_95;
      }
    }

    else if ((GraphemeBreakProperty - 4) >= 2)
    {
      if (GraphemeBreakProperty != 3)
      {
        goto LABEL_51;
      }

      v38 = 9;
    }

    else
    {
      v38 = 3;
    }

LABEL_80:
    v43 = Unicode._GraphemeBreakProperty.init(from:)(v22);
    if (v43 <= 8u)
    {
      if (v43 > 4u)
      {
        if (v43 == 5 || v43 == 6)
        {
          goto LABEL_93;
        }
      }

      else
      {
        switch(v43)
        {
          case 2u:
            goto LABEL_53;
          case 4u:
LABEL_93:
            if (v38 == 4 || v38 == 7)
            {
LABEL_53:
              swift_bridgeObjectRelease_n(a3, 3);
LABEL_54:
              a3;
              goto LABEL_55;
            }

            goto LABEL_95;
          case 1u:
            goto LABEL_160;
        }
      }

      goto LABEL_104;
    }

    if (v43 > 0xAu)
    {
      if (v43 != 11)
      {
        if (v43 == 12)
        {
          goto LABEL_53;
        }

LABEL_104:
        switch(v38)
        {
          case 7u:
            goto LABEL_53;
          case 8u:
            if (v43 == 8)
            {
              a3;
              v63 = specialized _countRIs(at:with:)(v21, a2, a3);
              swift_bridgeObjectRelease_n(a3, 5);
              if (v63)
              {
                goto LABEL_162;
              }

              goto LABEL_55;
            }

            v38 = 8;
            break;
          case 0xCu:
            if (v43 == 3)
            {
              a3;
              v48 = specialized _checkIfInEmojiSequence(at:with:)(v21, a2, a3);
              swift_bridgeObjectRelease_n(a3, 5);
              if (!v48)
              {
                goto LABEL_162;
              }

              goto LABEL_55;
            }

            v38 = 12;
            break;
        }

        goto LABEL_95;
      }

      if (v38 <= 0xBu)
      {
        v44 = 1 << v38;
        v45 = 2224;
LABEL_139:
        if ((v44 & v45) != 0)
        {
          goto LABEL_53;
        }
      }
    }

    else
    {
      if (v43 == 9)
      {
        goto LABEL_53;
      }

      if (v43 != 10)
      {
        goto LABEL_104;
      }

      if (v38 <= 0xBu)
      {
        v44 = 1 << v38;
        v45 = 3296;
        goto LABEL_139;
      }
    }

LABEL_95:
    if (!_swift_stdlib_isInCB_Consonant(v22) || v38 != 12 && v38 != 2)
    {
      goto LABEL_160;
    }

    if (_swift_stdlib_isInCB_Consonant(v20))
    {
      HIDWORD(v47) = v20 - 2381;
      LODWORD(v47) = v20 - 2381;
      v46 = v47 >> 7;
      if (v46 > 8 || ((1 << v46) & 0x15B) == 0)
      {
        goto LABEL_160;
      }
    }

    else if (v20 == 8204)
    {
      goto LABEL_160;
    }

    a3;
    v49 = closure #1 in _StringGuts._foreignPreviousWordIndex(endingAt:)(v21, a2, a3);
    if (v51)
    {
      goto LABEL_159;
    }

    v52 = v50;
    HIDWORD(v53) = v49 - 2381;
    LODWORD(v53) = v49 - 2381;
    v54 = ((v53 >> 7) < 9) & (0x15Bu >> (v53 >> 7));
LABEL_113:
    v55 = v54;
    while (1)
    {
      v56 = closure #1 in _StringGuts._foreignPreviousWordIndex(endingAt:)(v52, a2, a3);
      if (v58)
      {
        goto LABEL_159;
      }

      v59 = v56;
      v52 = v57;
      if (_swift_stdlib_isInCB_Consonant(v56))
      {
        break;
      }

      if (v59 <= 0x7E)
      {
        goto LABEL_159;
      }

      if (v59 != 8205)
      {
        v60 = vdupq_n_s64(v59);
        if ((vmaxv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vcgtq_u64(vaddq_s64(v60, xmmword_18071DE30), xmmword_18071DE70), vcgtq_u64(vaddq_s64(v60, xmmword_18071DE40), xmmword_18071DE80)), vuzp1q_s32(vcgtq_u64(vaddq_s64(v60, xmmword_18071DE50), xmmword_18071DE90), vcgtq_u64(vaddq_s64(v60, xmmword_18071DE60), xmmword_18071DEA0))))) & 1) != 0 || v59 - 921600 >= 0xFFFFFFFFFFFFF1F0 || _swift_stdlib_getGraphemeBreakProperty(v59) != 1)
        {
          goto LABEL_159;
        }
      }

      if (_swift_stdlib_isInCB_Consonant(v59))
      {
        HIDWORD(v62) = v59 - 2381;
        LODWORD(v62) = v59 - 2381;
        v61 = v62 >> 7;
        if (v61 > 8 || (LOBYTE(v54) = 1, ((1 << v61) & 0x15B) == 0))
        {
LABEL_159:
          a3;
          goto LABEL_160;
        }

        goto LABEL_113;
      }

      LOBYTE(v54) = 1;
      if (v59 <= 2892)
      {
        if (v59 == 2381 || v59 == 2509 || v59 == 2765)
        {
          goto LABEL_113;
        }
      }

      else if (v59 > 3404)
      {
        if (v59 == 3405)
        {
          goto LABEL_113;
        }

        if (v59 == 8204)
        {
          goto LABEL_159;
        }
      }

      else if (v59 == 2893 || v59 == 3149)
      {
        goto LABEL_113;
      }
    }

    swift_bridgeObjectRelease_n(a3, 5);
    if ((v55 & 1) == 0)
    {
      goto LABEL_162;
    }

LABEL_55:
    v21 = rawBits >> 16;
    if (!(rawBits >> 16))
    {
      goto LABEL_162;
    }
  }

  swift_bridgeObjectRetain_n(a3, 3);
LABEL_164:
  Unicode._GraphemeBreakProperty.init(from:)(v22);
LABEL_160:
  swift_bridgeObjectRelease_n(a3, 3);
LABEL_161:
  a3;
LABEL_162:
  a3;
  return a1 - v21;
}

Swift::UInt64 _StringGuts._foreignOpaqueCharacterStride(endingAt:in:)(int64_t a1, int64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 >= a1)
  {
LABEL_244:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v8._rawBits = _StringGuts.validateInclusiveScalarIndex(_:)((a1 << 16))._rawBits;
  if (!(v8._rawBits >> 14))
  {
LABEL_238:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v160 = a1;
  if ((a4 & 0x1000000000000000) != 0)
  {
    rawBits = String.UnicodeScalarView._foreignIndex(before:)(v8)._rawBits;
    v157._rawBits = _StringGuts.validateScalarIndex(_:)(rawBits)._rawBits;
    value = _StringGuts.foreignErrorCorrectedScalar(startingAt:)((v157._rawBits & 0xFFFFFFFFFFFF0000))._0._value;
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v163 = a3;
      v164 = a4 & 0xFFFFFFFFFFFFFFLL;
      if ((*(&v163 + (v8._rawBits >> 16) - 1) & 0xC0) == 0x80)
      {
        v14 = &v163 + (v8._rawBits >> 16) - 2;
        v13 = 1;
        do
        {
          ++v13;
          v15 = *v14--;
        }

        while ((v15 & 0xC0) == 0x80);
      }

      else
      {
        v13 = 1;
      }
    }

    else
    {
      if ((a3 & 0x1000000000000000) != 0)
      {
        v9 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v158 = v8._rawBits;
        v9 = _StringObject.sharedUTF8.getter(a3, a4);
        v8._rawBits = v158;
      }

      v10 = 0;
      v11 = v9 + (v8._rawBits >> 16) - 1;
      do
      {
        v12 = *(v11 + v10--) & 0xC0;
      }

      while (v12 == 128);
      v13 = -v10;
    }

    rawBits = (v8._rawBits - (v13 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
    v18._rawBits = _StringGuts.validateScalarIndex(_:)(rawBits)._rawBits >> 16;
    if ((a4 & 0x2000000000000000) != 0)
    {
      v163 = a3;
      v164 = a4 & 0xFFFFFFFFFFFFFFLL;
      v19 = &v163;
    }

    else if ((a3 & 0x1000000000000000) != 0)
    {
      v19 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v159 = v18._rawBits;
      v19 = _StringObject.sharedUTF8.getter(a3, a4);
      v18._rawBits = v159;
    }

    value = _decodeScalar(_:startingAt:)(v19, v17._rawBits, v18._rawBits);
  }

  v21 = value;
  v22 = rawBits >> 16;
  if ((rawBits >> 16) > a2)
  {
    v23 = HIBYTE(a4) & 0xF;
    if ((a4 & 0x2000000000000000) == 0)
    {
      v23 = a3 & 0xFFFFFFFFFFFFLL;
    }

    v161 = v23;
    v162 = a4 & 0xFFFFFFFFFFFFFFLL;
    while (1)
    {
      if (v161 < v22)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v24 = v21;
      v25._rawBits = _StringGuts.scalarAlignSlow(_:)((v22 << 16))._rawBits;
      if (!(v25._rawBits >> 14))
      {
        goto LABEL_238;
      }

      if ((a4 & 0x1000000000000000) != 0)
      {
        v31._rawBits = String.UnicodeScalarView._foreignIndex(before:)((v25._rawBits & 0xFFFFFFFFFFFFFFF2 | 1))._rawBits;
        v32._rawBits = _StringGuts.validateScalarIndex(_:)(v31)._rawBits;
        v33 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)((v32._rawBits & 0xFFFFFFFFFFFF0000))._0._value;
      }

      else
      {
        if ((a4 & 0x2000000000000000) != 0)
        {
          v163 = a3;
          v164 = v162;
          if ((*(&v162 + (v25._rawBits >> 16) + 7) & 0xC0) == 0x80)
          {
            v34 = &v162 + (v25._rawBits >> 16) + 6;
            v30 = 1;
            do
            {
              ++v30;
              v35 = *v34--;
            }

            while ((v35 & 0xC0) == 0x80);
          }

          else
          {
            v30 = 1;
          }
        }

        else
        {
          v26 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
          if ((a3 & 0x1000000000000000) == 0)
          {
            v152 = v25._rawBits;
            v26 = _StringObject.sharedUTF8.getter(a3, a4);
            v25._rawBits = v152;
          }

          v27 = 0;
          v28 = v26 + (v25._rawBits >> 16) - 1;
          do
          {
            v29 = *(v28 + v27--) & 0xC0;
          }

          while (v29 == 128);
          v30 = -v27;
        }

        v31._rawBits = (v25._rawBits - (v30 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
        v37._rawBits = _StringGuts.validateScalarIndex(_:)(v31)._rawBits >> 16;
        if ((a4 & 0x2000000000000000) != 0)
        {
          v163 = a3;
          v164 = v162;
          v38 = &v163;
        }

        else
        {
          v38 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
          if ((a3 & 0x1000000000000000) == 0)
          {
            v39 = v37._rawBits;
            v38 = _StringObject.sharedUTF8.getter(a3, a4);
            v37._rawBits = v39;
          }
        }

        v33 = _decodeScalar(_:startingAt:)(v38, v36._rawBits, v37._rawBits);
      }

      v21 = v33;
      if (v33 != 13 || v24 != 10)
      {
        break;
      }

LABEL_25:
      v22 = v31._rawBits >> 16;
      if ((v31._rawBits >> 16) <= a2)
      {
        return v160 - v22;
      }
    }

    v41 = vdupq_n_s32(v33);
    if ((vmaxv_u8(vmovn_s16(vuzp1q_s16(vcgtq_u32(vaddq_s32(v41, xmmword_18071DD50), xmmword_18071DD70), vcgtq_u32(vaddq_s32(v41, xmmword_18071DD60), xmmword_18071DD80)))) & 1) != 0 || v33 - 65438 > 0xFFFFFF62 || v33 <= 0x2FF)
    {
      v42 = vdupq_n_s32(v24);
      if ((vmaxv_u8(vmovn_s16(vuzp1q_s16(vcgtq_u32(vaddq_s32(v42, xmmword_18071DD50), xmmword_18071DD70), vcgtq_u32(vaddq_s32(v42, xmmword_18071DD60), xmmword_18071DD80)))) & 1) != 0 || v24 - 65438 > 0xFFFFFF62 || v24 < 0x300)
      {
        return v160 - v22;
      }
    }

    v43 = Unicode._GraphemeBreakProperty.init(from:)(v33);
    v44 = Unicode._GraphemeBreakProperty.init(from:)(v24);
    if (!v43)
    {
      if (v44 <= 0xCu)
      {
        if (((1 << v44) & 0x1204) != 0)
        {
          goto LABEL_25;
        }

        if (((1 << v44) & 3) != 0)
        {
          return v160 - v22;
        }
      }

      goto LABEL_77;
    }

    if (v43 == 1)
    {
      return v160 - v22;
    }

    if (v44 <= 8u)
    {
      if (v44 > 4u)
      {
        if (v44 != 5 && v44 != 6)
        {
          goto LABEL_86;
        }
      }

      else
      {
        if (v44 == 2)
        {
          goto LABEL_25;
        }

        if (v44 != 4)
        {
          if (v44 == 1)
          {
            return v160 - v22;
          }

          goto LABEL_86;
        }
      }

      if (v43 == 4 || v43 == 7)
      {
        goto LABEL_25;
      }

LABEL_77:
      if (!_swift_stdlib_isInCB_Consonant(v24) || v43 != 12 && v43 != 2)
      {
        return v160 - v22;
      }

      if (_swift_stdlib_isInCB_Consonant(v21))
      {
        HIDWORD(v48) = v21 - 2381;
        LODWORD(v48) = v21 - 2381;
        v47 = v48 >> 7;
        if (v47 > 8 || ((1 << v47) & 0x15B) == 0)
        {
          return v160 - v22;
        }
      }

      else if (v21 == 8204)
      {
        return v160 - v22;
      }

      v55._rawBits = _StringGuts.validateInclusiveScalarIndex(_:)((v22 << 16))._rawBits;
      if (!(v55._rawBits >> 14))
      {
        goto LABEL_238;
      }

      if ((a4 & 0x1000000000000000) != 0)
      {
        v61._rawBits = String.UnicodeScalarView._foreignIndex(before:)(v55)._rawBits;
        v62._rawBits = _StringGuts.validateScalarIndex(_:)(v61)._rawBits;
        v63 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)((v62._rawBits & 0xFFFFFFFFFFFF0000))._0._value;
      }

      else
      {
        if ((a4 & 0x2000000000000000) != 0)
        {
          v163 = a3;
          v164 = v162;
          if ((*(&v162 + (v55._rawBits >> 16) + 7) & 0xC0) == 0x80)
          {
            v64 = &v162 + (v55._rawBits >> 16) + 6;
            v60 = 1;
            do
            {
              ++v60;
              v65 = *v64--;
            }

            while ((v65 & 0xC0) == 0x80);
          }

          else
          {
            v60 = 1;
          }
        }

        else
        {
          v56 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
          if ((a3 & 0x1000000000000000) == 0)
          {
            v153 = v55._rawBits;
            v56 = _StringObject.sharedUTF8.getter(a3, a4);
            v55._rawBits = v153;
          }

          v57 = 0;
          v58 = v56 + (v55._rawBits >> 16) - 1;
          do
          {
            v59 = *(v58 + v57--) & 0xC0;
          }

          while (v59 == 128);
          v60 = -v57;
        }

        v61._rawBits = (v55._rawBits - (v60 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
        v67._rawBits = _StringGuts.validateScalarIndex(_:)(v61)._rawBits >> 16;
        if ((a4 & 0x2000000000000000) != 0)
        {
          v163 = a3;
          v164 = v162;
          v68 = &v163;
        }

        else
        {
          v68 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
          if ((a3 & 0x1000000000000000) == 0)
          {
            v69 = v67._rawBits;
            v68 = _StringObject.sharedUTF8.getter(a3, a4);
            v67._rawBits = v69;
          }
        }

        v63 = _decodeScalar(_:startingAt:)(v68, v66._rawBits, v67._rawBits);
      }

      v70 = v61._rawBits >> 16;
      if (v70 <= a2)
      {
        return v160 - v22;
      }

      HIDWORD(v71) = v63 - 2381;
      LODWORD(v71) = v63 - 2381;
      v72 = ((v71 >> 7) < 9) & (0x15Bu >> (v71 >> 7));
      while (1)
      {
        v73._rawBits = _StringGuts.validateInclusiveScalarIndex(_:)((v70 << 16))._rawBits;
        if (!(v73._rawBits >> 14))
        {
          goto LABEL_238;
        }

        if ((a4 & 0x1000000000000000) != 0)
        {
          v79._rawBits = String.UnicodeScalarView._foreignIndex(before:)(v73)._rawBits;
          v80._rawBits = _StringGuts.validateScalarIndex(_:)(v79)._rawBits;
          v81 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)((v80._rawBits & 0xFFFFFFFFFFFF0000))._0._value;
        }

        else
        {
          if ((a4 & 0x2000000000000000) != 0)
          {
            v163 = a3;
            v164 = v162;
            if ((*(&v162 + (v73._rawBits >> 16) + 7) & 0xC0) == 0x80)
            {
              v82 = &v162 + (v73._rawBits >> 16) + 6;
              v78 = 1;
              do
              {
                ++v78;
                v83 = *v82--;
              }

              while ((v83 & 0xC0) == 0x80);
            }

            else
            {
              v78 = 1;
            }
          }

          else
          {
            v74 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
            if ((a3 & 0x1000000000000000) == 0)
            {
              v94 = v73._rawBits;
              v74 = _StringObject.sharedUTF8.getter(a3, a4);
              v73._rawBits = v94;
            }

            v75 = 0;
            v76 = v74 + (v73._rawBits >> 16) - 1;
            do
            {
              v77 = *(v76 + v75--) & 0xC0;
            }

            while (v77 == 128);
            v78 = -v75;
          }

          v79._rawBits = (v73._rawBits - (v78 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
          v85._rawBits = _StringGuts.validateScalarIndex(_:)(v79)._rawBits >> 16;
          if ((a4 & 0x2000000000000000) != 0)
          {
            v163 = a3;
            v164 = v162;
            v86 = &v163;
          }

          else
          {
            v86 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
            if ((a3 & 0x1000000000000000) == 0)
            {
              v87 = v85._rawBits;
              v86 = _StringObject.sharedUTF8.getter(a3, a4);
              v85._rawBits = v87;
            }
          }

          v81 = _decodeScalar(_:startingAt:)(v86, v84._rawBits, v85._rawBits);
        }

        v88 = v81;
        if (_swift_stdlib_isInCB_Consonant(v81))
        {
          break;
        }

        v89 = Unicode._GraphemeBreakProperty.init(from:)(v88);
        if (v89 != 2 && v89 != 12)
        {
          return v160 - v22;
        }

        v70 = v79._rawBits >> 16;
        v91 = Unicode.Scalar._isInCBExtend.getter(v88);
        HIDWORD(v92) = v88 - 2381;
        LODWORD(v92) = v88 - 2381;
        v93 = ((v92 >> 7) < 9) & (0x15Bu >> (v92 >> 7));
        if (v91)
        {
          if (v70 <= a2)
          {
            LOBYTE(v93) = 1;
          }

          if (v93)
          {
            return v160 - v22;
          }
        }

        else
        {
          if (v70 <= a2)
          {
            LOBYTE(v93) = 0;
          }

          LOBYTE(v72) = 1;
          if ((v93 & 1) == 0)
          {
            return v160 - v22;
          }
        }
      }

      if ((v72 & 1) == 0)
      {
        return v160 - v22;
      }

      goto LABEL_25;
    }

    if (v44 > 0xAu)
    {
      if (v44 == 11)
      {
        if (v43 > 0xBu)
        {
          goto LABEL_77;
        }

        v45 = 1 << v43;
        v46 = 2224;
LABEL_110:
        if ((v45 & v46) != 0)
        {
          goto LABEL_25;
        }

        goto LABEL_77;
      }

      if (v44 == 12)
      {
        goto LABEL_25;
      }
    }

    else
    {
      if (v44 == 9)
      {
        goto LABEL_25;
      }

      if (v44 == 10)
      {
        if (v43 > 0xBu)
        {
          goto LABEL_77;
        }

        v45 = 1 << v43;
        v46 = 3296;
        goto LABEL_110;
      }
    }

LABEL_86:
    if (v43 == 7)
    {
      goto LABEL_25;
    }

    if (v43 == 8)
    {
      if (v44 == 8)
      {
        v95._rawBits = _StringGuts.validateInclusiveScalarIndex(_:)((v22 << 16))._rawBits;
        if (!(v95._rawBits >> 14))
        {
          goto LABEL_238;
        }

        if ((a4 & 0x1000000000000000) != 0)
        {
          v101._rawBits = String.UnicodeScalarView._foreignIndex(before:)(v95)._rawBits;
          v102._rawBits = _StringGuts.validateScalarIndex(_:)(v101)._rawBits;
          _StringGuts.foreignErrorCorrectedScalar(startingAt:)((v102._rawBits & 0xFFFFFFFFFFFF0000));
        }

        else
        {
          if ((a4 & 0x2000000000000000) != 0)
          {
            v163 = a3;
            v164 = v162;
            if ((*(&v162 + (v95._rawBits >> 16) + 7) & 0xC0) == 0x80)
            {
              v105 = &v162 + (v95._rawBits >> 16) + 6;
              v100 = 1;
              do
              {
                ++v100;
                v106 = *v105--;
              }

              while ((v106 & 0xC0) == 0x80);
            }

            else
            {
              v100 = 1;
            }
          }

          else
          {
            v96 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
            if ((a3 & 0x1000000000000000) == 0)
            {
              v154 = v95._rawBits;
              v96 = _StringObject.sharedUTF8.getter(a3, a4);
              v95._rawBits = v154;
            }

            v97 = 0;
            v98 = v96 + (v95._rawBits >> 16) - 1;
            do
            {
              v99 = *(v98 + v97--) & 0xC0;
            }

            while (v99 == 128);
            v100 = -v97;
          }

          v101._rawBits = (v95._rawBits - (v100 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
          v110._rawBits = _StringGuts.validateScalarIndex(_:)(v101)._rawBits >> 16;
          if ((a4 & 0x2000000000000000) != 0)
          {
            v163 = a3;
            v164 = v162;
            v111 = &v163;
          }

          else
          {
            v111 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
            if ((a3 & 0x1000000000000000) == 0)
            {
              v112 = v110._rawBits;
              v111 = _StringObject.sharedUTF8.getter(a3, a4);
              v110._rawBits = v112;
            }
          }

          _decodeScalar(_:startingAt:)(v111, v109._rawBits, v110._rawBits);
        }

        v113 = v101._rawBits >> 16;
        if ((v101._rawBits >> 16) > a2)
        {
          v114 = 0;
          do
          {
            v115._rawBits = _StringGuts.validateInclusiveScalarIndex(_:)((v113 << 16))._rawBits;
            if (!(v115._rawBits >> 14))
            {
              goto LABEL_238;
            }

            if ((a4 & 0x1000000000000000) != 0)
            {
              v121._rawBits = String.UnicodeScalarView._foreignIndex(before:)(v115)._rawBits;
              v122._rawBits = _StringGuts.validateScalarIndex(_:)(v121)._rawBits;
              v123 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)((v122._rawBits & 0xFFFFFFFFFFFF0000))._0._value;
            }

            else
            {
              if ((a4 & 0x2000000000000000) != 0)
              {
                v163 = a3;
                v164 = v162;
                if ((*(&v162 + (v115._rawBits >> 16) + 7) & 0xC0) == 0x80)
                {
                  v124 = &v162 + (v115._rawBits >> 16) + 6;
                  v120 = 1;
                  do
                  {
                    ++v120;
                    v125 = *v124--;
                  }

                  while ((v125 & 0xC0) == 0x80);
                }

                else
                {
                  v120 = 1;
                }
              }

              else
              {
                v116 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
                if ((a3 & 0x1000000000000000) == 0)
                {
                  v131 = v115._rawBits;
                  v116 = _StringObject.sharedUTF8.getter(a3, a4);
                  v115._rawBits = v131;
                }

                v117 = 0;
                v118 = v116 + (v115._rawBits >> 16) - 1;
                do
                {
                  v119 = *(v118 + v117--) & 0xC0;
                }

                while (v119 == 128);
                v120 = -v117;
              }

              v121._rawBits = (v115._rawBits - (v120 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
              v127._rawBits = _StringGuts.validateScalarIndex(_:)(v121)._rawBits >> 16;
              if ((a4 & 0x2000000000000000) != 0)
              {
                v163 = a3;
                v164 = v162;
                v128 = &v163;
              }

              else
              {
                v128 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
                if ((a3 & 0x1000000000000000) == 0)
                {
                  v129 = v127._rawBits;
                  v128 = _StringObject.sharedUTF8.getter(a3, a4);
                  v127._rawBits = v129;
                }
              }

              v123 = _decodeScalar(_:startingAt:)(v128, v126._rawBits, v127._rawBits);
            }

            if (Unicode._GraphemeBreakProperty.init(from:)(v123) != 8)
            {
              break;
            }

            if (__OFADD__(v114++, 1))
            {
              __break(1u);
              goto LABEL_244;
            }

            v113 = v121._rawBits >> 16;
          }

          while ((v121._rawBits >> 16) > a2);
          if (v114)
          {
            return v160 - v22;
          }
        }

        goto LABEL_25;
      }
    }

    else if (v43 == 12 && v44 == 3)
    {
      v49._rawBits = _StringGuts.validateInclusiveScalarIndex(_:)((v22 << 16))._rawBits;
      if (!(v49._rawBits >> 14))
      {
        goto LABEL_238;
      }

      if ((a4 & 0x1000000000000000) != 0)
      {
        v103._rawBits = String.UnicodeScalarView._foreignIndex(before:)(v49)._rawBits;
        v104._rawBits = _StringGuts.validateScalarIndex(_:)(v103)._rawBits;
        _StringGuts.foreignErrorCorrectedScalar(startingAt:)((v104._rawBits & 0xFFFFFFFFFFFF0000));
      }

      else
      {
        if ((a4 & 0x2000000000000000) != 0)
        {
          v163 = a3;
          v164 = v162;
          if ((*(&v162 + (v49._rawBits >> 16) + 7) & 0xC0) == 0x80)
          {
            v107 = &v162 + (v49._rawBits >> 16) + 6;
            v54 = 1;
            do
            {
              ++v54;
              v108 = *v107--;
            }

            while ((v108 & 0xC0) == 0x80);
          }

          else
          {
            v54 = 1;
          }
        }

        else
        {
          v50 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
          if ((a3 & 0x1000000000000000) == 0)
          {
            v155 = v49._rawBits;
            v50 = _StringObject.sharedUTF8.getter(a3, a4);
            v49._rawBits = v155;
          }

          v51 = 0;
          v52 = v50 + (v49._rawBits >> 16) - 1;
          do
          {
            v53 = *(v52 + v51--) & 0xC0;
          }

          while (v53 == 128);
          v54 = -v51;
        }

        v103._rawBits = (v49._rawBits - (v54 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
        v133._rawBits = _StringGuts.validateScalarIndex(_:)(v103)._rawBits >> 16;
        if ((a4 & 0x2000000000000000) != 0)
        {
          v163 = a3;
          v164 = v162;
          v134 = &v163;
        }

        else
        {
          v134 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
          if ((a3 & 0x1000000000000000) == 0)
          {
            v135 = v133._rawBits;
            v134 = _StringObject.sharedUTF8.getter(a3, a4);
            v133._rawBits = v135;
          }
        }

        _decodeScalar(_:startingAt:)(v134, v132._rawBits, v133._rawBits);
      }

      do
      {
        if ((v103._rawBits >> 16) <= a2)
        {
          return v160 - v22;
        }

        v139._rawBits = _StringGuts.validateInclusiveScalarIndex(_:)((v103._rawBits >> 16 << 16))._rawBits;
        if (!(v139._rawBits >> 14))
        {
          goto LABEL_238;
        }

        if ((a4 & 0x1000000000000000) != 0)
        {
          v103._rawBits = String.UnicodeScalarView._foreignIndex(before:)(v139)._rawBits;
          v136._rawBits = _StringGuts.validateScalarIndex(_:)(v103)._rawBits;
          v137 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)((v136._rawBits & 0xFFFFFFFFFFFF0000))._0._value;
        }

        else
        {
          if ((a4 & 0x2000000000000000) != 0)
          {
            v163 = a3;
            v164 = v162;
            if ((*(&v162 + (v139._rawBits >> 16) + 7) & 0xC0) == 0x80)
            {
              v145 = &v162 + (v139._rawBits >> 16) + 6;
              v144 = 1;
              do
              {
                ++v144;
                v146 = *v145--;
              }

              while ((v146 & 0xC0) == 0x80);
            }

            else
            {
              v144 = 1;
            }
          }

          else
          {
            v140 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
            if ((a3 & 0x1000000000000000) == 0)
            {
              v151 = v139._rawBits;
              v140 = _StringObject.sharedUTF8.getter(a3, a4);
              v139._rawBits = v151;
            }

            v141 = 0;
            v142 = v140 + (v139._rawBits >> 16) - 1;
            do
            {
              v143 = *(v142 + v141--) & 0xC0;
            }

            while (v143 == 128);
            v144 = -v141;
          }

          v103._rawBits = (v139._rawBits - (v144 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
          v148._rawBits = _StringGuts.validateScalarIndex(_:)(v103)._rawBits >> 16;
          if ((a4 & 0x2000000000000000) != 0)
          {
            v163 = a3;
            v164 = v162;
            v149 = &v163;
          }

          else
          {
            v149 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
            if ((a3 & 0x1000000000000000) == 0)
            {
              v150 = v148._rawBits;
              v149 = _StringObject.sharedUTF8.getter(a3, a4);
              v148._rawBits = v150;
            }
          }

          v137 = _decodeScalar(_:startingAt:)(v149, v147._rawBits, v148._rawBits);
        }

        v138 = Unicode._GraphemeBreakProperty.init(from:)(v137);
      }

      while (v138 == 2);
      if (v138 != 3)
      {
        return v160 - v22;
      }

      goto LABEL_25;
    }

    goto LABEL_77;
  }

  return v160 - v22;
}

uint64_t Unicode.Scalar._isInCBExtend.getter(signed int a1)
{
  if (_swift_stdlib_isInCB_Consonant(a1))
  {
    return 0;
  }

  result = 0;
  if (a1 <= 2892)
  {
    if (a1 != 2381 && a1 != 2509 && a1 != 2765)
    {
      return 1;
    }
  }

  else if (a1 > 3404)
  {
    if (a1 != 3405 && a1 != 8204)
    {
      return 1;
    }
  }

  else if (a1 != 2893 && a1 != 3149)
  {
    return 1;
  }

  return result;
}

uint64_t _GraphemeBreakingState.description.getter(uint64_t a1)
{
  v1 = a1;
  v2 = 91;
  v3 = 0xE100000000000000;
  v99 = 91;
  v100 = 0xE100000000000000;
  if ((a1 & 1) == 0)
  {
    if ((a1 & 0x100) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v4 = HIBYTE(v3) & 3;
    v3;
    if (v4)
    {
      0xE100000000000000;
      v2 = ((-255 << ((v3 >> 53) & 0x18)) - 1) & v2 | (69 << ((v3 >> 53) & 0x18));
      v3 = (v4 << 56) - 0x1F00000000000000;
    }

    else
    {
      v2 = 69;
      v3 = 0xE100000000000000;
    }

    v99 = v2;
    v100 = v3;
    if ((v1 & 0x10000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_10;
  }

  swift_bridgeObjectRelease_n(0xE100000000000000, 2);
  v2 = 19547;
  v3 = 0xE200000000000000;
  v99 = 19547;
  v100 = 0xE200000000000000;
  if ((v1 & 0x100) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v1 & 0x10000) == 0)
  {
    goto LABEL_26;
  }

LABEL_10:
  v5 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(v3) & 0xF;
  }

  else
  {
    v6 = v2;
  }

  if (v6)
  {
    if ((v3 & 0x2000000000000000) != 0 && v5 != 15)
    {
      v7 = 8 * (HIBYTE(v3) & 7);
      v8 = (-255 << v7) - 1;
      v9 = 73 << v7;
      v10 = v8 & v3 | v9;
      v11 = v8 & v2 | v9;
      if (v5 >= 8)
      {
        v12 = v10;
      }

      else
      {
        v12 = v3;
      }

      if (v5 < 8)
      {
        v2 = v11;
      }

      v3;
      0xE100000000000000;
      v13 = 0xA000000000000000;
      if (((v2 | v12) & 0x80808080808080) == 0)
      {
        v13 = 0xE000000000000000;
      }

      v3 = (v13 & 0xFF00000000000000 | (v5 << 56) | v12 & 0xFFFFFFFFFFFFFFLL) + 0x100000000000000;
      goto LABEL_25;
    }

    0xE100000000000000;
    if ((v3 & 0x1000000000000000) != 0)
    {
      v78 = String.UTF8View._foreignCount()();
      v24 = __OFADD__(v78, 1);
      v28 = v78 + 1;
      if (!v24)
      {
LABEL_53:
        if (v28 <= 15)
        {
          if ((v3 & 0x2000000000000000) != 0)
          {
            v42 = v3;
          }

          else if ((v3 & 0x1000000000000000) != 0)
          {
            v2 = _StringGuts._foreignConvertedToSmall()(v2, v3);
            v42 = v95;
          }

          else
          {
            v82 = _StringObject.sharedUTF8.getter(v2, v3);
            closure #1 in _StringGuts._convertedToSmall()(v82, v83, &v98, v84);
            v42 = *(&v98 + 1);
            v2 = v98;
          }

          0xE100000000000000;
          v43._rawBits = 1;
          v44._rawBits = 65537;
          v45._rawBits = _StringGuts.validateScalarRange(_:)(v43, v44, 0x49uLL, 0xE100000000000000)._rawBits;
          if (v45._rawBits < 0x10000)
          {
            v45._rawBits |= 3;
          }

          v47 = Substring.description.getter(v45._rawBits, v46._rawBits, 0x49uLL, 0xE100000000000000);
          v49 = v48;
          0xE100000000000000;
          if ((v49 & 0x2000000000000000) != 0)
          {
            v49;
          }

          else if ((v49 & 0x1000000000000000) != 0)
          {
            v47 = _StringGuts._foreignConvertedToSmall()(v47, v49);
            v97 = v96;
            v49;
            v49 = v97;
          }

          else
          {
            if ((v47 & 0x1000000000000000) != 0)
            {
              v85 = ((v49 & 0xFFFFFFFFFFFFFFFLL) + 32);
              v86 = v47 & 0xFFFFFFFFFFFFLL;
            }

            else
            {
              v85 = _StringObject.sharedUTF8.getter(v47, v49);
            }

            closure #1 in _StringGuts._convertedToSmall()(v85, v86, &v98, v50);
            v49;
            v49 = *(&v98 + 1);
            v47 = v98;
          }

          v51 = specialized _SmallString.init(_:appending:)(v2, v42, v47, v49);
          if (v53)
          {
            goto LABEL_134;
          }

          v2 = v51;
          v54 = v52;
          v3;
          swift_bridgeObjectRelease_n(0xE100000000000000, 2);
          v99 = v2;
          v100 = v54;
          v3 = v54;
        }

        else
        {
          _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v28, 1);
          v98 = xmmword_18071DEB0;
          closure #1 in _StringGuts.append(_:)(&v98, 1uLL, &v99, 1);
          swift_bridgeObjectRelease_n(0xE100000000000000, 2);
          v2 = v99;
          v3 = v100;
        }

        goto LABEL_26;
      }
    }

    else
    {
      v28 = v6 + 1;
      if (!__OFADD__(v6, 1))
      {
        goto LABEL_53;
      }
    }

    __break(1u);
    goto LABEL_120;
  }

  v3;
  v2 = 73;
  v3 = 0xE100000000000000;
LABEL_25:
  v99 = v2;
  v100 = v3;
LABEL_26:
  if ((v1 & 0x1000000) == 0)
  {
    goto LABEL_74;
  }

  v14 = HIBYTE(v3) & 0xF;
  v1 = v2 & 0xFFFFFFFFFFFFLL;
  if ((v3 & 0x2000000000000000) != 0)
  {
    v15 = HIBYTE(v3) & 0xF;
  }

  else
  {
    v15 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v15 || (v2 & ~v3 & 0x2000000000000000) != 0)
  {
    if ((v3 & 0x2000000000000000) == 0 || v14 == 15)
    {
      0xE100000000000000;
      if ((v3 & 0x1000000000000000) != 0)
      {
        goto LABEL_106;
      }

      v24 = __OFADD__(v15, 1);
      v25 = v15 + 1;
      if (!v24)
      {
        goto LABEL_44;
      }

LABEL_108:
      __break(1u);
      goto LABEL_109;
    }

    v16 = 8 * (HIBYTE(v3) & 7);
    v17 = (-255 << v16) - 1;
    v18 = 82 << v16;
    v19 = v17 & v3 | v18;
    v20 = v17 & v2 | v18;
    if (v14 >= 8)
    {
      v21 = v19;
    }

    else
    {
      v21 = v3;
    }

    if (v14 < 8)
    {
      v2 = v20;
    }

    v3;
    0xE100000000000000;
    v22 = 0xA000000000000000;
    if (!(v2 & 0x8080808080808080 | v21 & 0x80808080808080))
    {
      v22 = 0xE000000000000000;
    }

    v3 = (v22 & 0xFF00000000000000 | (v14 << 56) | v21 & 0xFFFFFFFFFFFFFFLL) + 0x100000000000000;
  }

  else
  {
    v3;
    v2 = 82;
    v3 = 0xE100000000000000;
  }

  v99 = v2;
  v100 = v3;
  while (1)
  {
LABEL_74:
    v55 = HIBYTE(v3) & 0xF;
    v1 = v2 & 0xFFFFFFFFFFFFLL;
    if ((v3 & 0x2000000000000000) != 0)
    {
      v56 = HIBYTE(v3) & 0xF;
    }

    else
    {
      v56 = v2 & 0xFFFFFFFFFFFFLL;
    }

    if (!v56 && (v2 & ~v3 & 0x2000000000000000) == 0)
    {
      v3;
      return 93;
    }

    if ((v3 & 0x2000000000000000) != 0 && v55 != 15)
    {
      break;
    }

    0xE100000000000000;
    if ((v3 & 0x1000000000000000) != 0)
    {
      v73 = String.UTF8View._foreignCount()();
      v58 = v73 + 1;
      if (!__OFADD__(v73, 1))
      {
LABEL_86:
        if ((v2 & ~v3 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v3 & 0xFFFFFFFFFFFFFFFLL))
        {
          v59 = _StringGuts.nativeUnusedCapacity.getter(v2, v3);
          if ((v60 & 1) == 0)
          {
            if (v58 > 15 || (v3 & 0x2000000000000000) == 0 && v59 > 0)
            {
              goto LABEL_92;
            }

            goto LABEL_94;
          }

LABEL_134:
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        if (v58 > 15)
        {
LABEL_92:
          _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v58, 1);
          v98 = xmmword_18071DB50;
          closure #1 in _StringGuts.append(_:)(&v98, 1uLL, &v99, 1);
          swift_bridgeObjectRelease_n(0xE100000000000000, 2);
          return v99;
        }

LABEL_94:
        if ((v3 & 0x2000000000000000) != 0)
        {
          v61 = v3;
          goto LABEL_96;
        }

LABEL_109:
        if ((v3 & 0x1000000000000000) != 0)
        {
          v2 = _StringGuts._foreignConvertedToSmall()(v2, v3);
          v61 = v87;
        }

        else
        {
          if ((v2 & 0x1000000000000000) != 0)
          {
            v75 = ((v3 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v75 = _StringObject.sharedUTF8.getter(v2, v3);
            v1 = v90;
          }

          closure #1 in _StringGuts._convertedToSmall()(v75, v1, &v98, v23);
          v61 = *(&v98 + 1);
          v2 = v98;
        }

LABEL_96:
        0xE100000000000000;
        v62._rawBits = 1;
        v63._rawBits = 65537;
        v64._rawBits = _StringGuts.validateScalarRange(_:)(v62, v63, 0x5DuLL, 0xE100000000000000)._rawBits;
        if (v64._rawBits < 0x10000)
        {
          v64._rawBits |= 3;
        }

        v66 = Substring.description.getter(v64._rawBits, v65._rawBits, 0x5DuLL, 0xE100000000000000);
        v68 = v67;
        0xE100000000000000;
        if ((v68 & 0x2000000000000000) != 0)
        {
          v68;
        }

        else if ((v68 & 0x1000000000000000) != 0)
        {
          v66 = _StringGuts._foreignConvertedToSmall()(v66, v68);
          v89 = v88;
          v68;
          v68 = v89;
        }

        else
        {
          if ((v66 & 0x1000000000000000) != 0)
          {
            v76 = ((v68 & 0xFFFFFFFFFFFFFFFLL) + 32);
            v77 = v66 & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            v76 = _StringObject.sharedUTF8.getter(v66, v68);
          }

          closure #1 in _StringGuts._convertedToSmall()(v76, v77, &v98, v69);
          v68;
          v68 = *(&v98 + 1);
          v66 = v98;
        }

        v70 = specialized _SmallString.init(_:appending:)(v2, v61, v66, v68);
        if ((v71 & 1) == 0)
        {
          v72 = v70;
          v3;
          swift_bridgeObjectRelease_n(0xE100000000000000, 2);
          return v72;
        }

        goto LABEL_134;
      }
    }

    else
    {
      v24 = __OFADD__(v56, 1);
      v58 = v56 + 1;
      if (!v24)
      {
        goto LABEL_86;
      }
    }

    __break(1u);
LABEL_106:
    v74 = String.UTF8View._foreignCount()();
    v25 = v74 + 1;
    if (__OFADD__(v74, 1))
    {
      goto LABEL_108;
    }

LABEL_44:
    if ((v2 & ~v3 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v3 & 0xFFFFFFFFFFFFFFFLL))
    {
      v26 = _StringGuts.nativeUnusedCapacity.getter(v2, v3);
      if (v27)
      {
        goto LABEL_134;
      }

      if (v25 <= 15 && ((v3 & 0x2000000000000000) != 0 || v26 <= 0))
      {
        goto LABEL_56;
      }

LABEL_50:
      _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v25, 1);
      v98 = xmmword_18071DEC0;
      closure #1 in _StringGuts.append(_:)(&v98, 1uLL, &v99, 1);
      swift_bridgeObjectRelease_n(0xE100000000000000, 2);
      v2 = v99;
      v3 = v100;
    }

    else
    {
      if (v25 > 15)
      {
        goto LABEL_50;
      }

LABEL_56:
      if ((v3 & 0x2000000000000000) != 0)
      {
        v29 = v3;
      }

      else
      {
LABEL_120:
        if ((v3 & 0x1000000000000000) != 0)
        {
          v2 = _StringGuts._foreignConvertedToSmall()(v2, v3);
          v29 = v91;
        }

        else
        {
          if ((v2 & 0x1000000000000000) != 0)
          {
            v79 = ((v3 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v79 = _StringObject.sharedUTF8.getter(v2, v3);
            v1 = v94;
          }

          closure #1 in _StringGuts._convertedToSmall()(v79, v1, &v98, v23);
          v29 = *(&v98 + 1);
          v2 = v98;
        }
      }

      0xE100000000000000;
      v30._rawBits = 1;
      v31._rawBits = 65537;
      v32._rawBits = _StringGuts.validateScalarRange(_:)(v30, v31, 0x52uLL, 0xE100000000000000)._rawBits;
      if (v32._rawBits < 0x10000)
      {
        v32._rawBits |= 3;
      }

      v34 = Substring.description.getter(v32._rawBits, v33._rawBits, 0x52uLL, 0xE100000000000000);
      v36 = v35;
      0xE100000000000000;
      if ((v36 & 0x2000000000000000) != 0)
      {
        v36;
      }

      else if ((v36 & 0x1000000000000000) != 0)
      {
        v34 = _StringGuts._foreignConvertedToSmall()(v34, v36);
        v93 = v92;
        v36;
        v36 = v93;
      }

      else
      {
        if ((v34 & 0x1000000000000000) != 0)
        {
          v80 = ((v36 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v81 = v34 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v80 = _StringObject.sharedUTF8.getter(v34, v36);
        }

        closure #1 in _StringGuts._convertedToSmall()(v80, v81, &v98, v37);
        v36;
        v36 = *(&v98 + 1);
        v34 = v98;
      }

      v38 = specialized _SmallString.init(_:appending:)(v2, v29, v34, v36);
      if (v40)
      {
        goto LABEL_134;
      }

      v2 = v38;
      v41 = v39;
      v3;
      swift_bridgeObjectRelease_n(0xE100000000000000, 2);
      v99 = v2;
      v100 = v41;
      v3 = v41;
    }
  }

  if (v55 < 8)
  {
    v2 = ((-255 << (8 * (HIBYTE(v3) & 7u))) - 1) & v2 | (93 << (8 * (HIBYTE(v3) & 7u)));
  }

  v3;
  0xE100000000000000;
  return v2;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance _GraphemeBreakingState()
{
  if (v0[3])
  {
    v1 = 0x1000000;
  }

  else
  {
    v1 = 0;
  }

  if (v0[2])
  {
    v2 = 0x10000;
  }

  else
  {
    v2 = 0;
  }

  if (v0[1])
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return _GraphemeBreakingState.description.getter(v3 | *v0 | v2 | v1);
}

uint64_t static Unicode._CharacterRecognizer.quickBreak(between:and:)(unsigned int a1, unsigned int a2)
{
  if (a1 == 13 && a2 == 10)
  {
    return 0;
  }

  if (hasBreakWhenPaired #1 (_:) in _quickHasGraphemeBreakBetween(_:_:)(a1) && hasBreakWhenPaired #1 (_:) in _quickHasGraphemeBreakBetween(_:_:)(a2))
  {
    return 1;
  }

  return 2;
}

Swift::Bool __swiftcall Unicode._CharacterRecognizer.hasBreak(before:)(Swift::Unicode::Scalar before)
{
  v2 = v1;
  v5._value = v1->_value;
  v4 = v1 + 1;
  v6 = _GraphemeBreakingState.shouldBreak(between:and:)(v5, before);
  if (v6)
  {
    v4->_value = 0;
  }

  v2->_value = before._value;
  return v6;
}

uint64_t Unicode._CharacterRecognizer._firstBreak(inUncheckedUnsafeUTF8Buffer:startingAt:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 < a2)
  {
    v4 = a3;
    while (1)
    {
      v7 = (a1 + v4);
      v8 = *(a1 + v4);
      if ((*(a1 + v4) & 0x80000000) == 0)
      {
        break;
      }

      v10 = (__clz(v8 ^ 0xFF) - 24);
      if (v10 > 2)
      {
        if (v10 == 3)
        {
          v8 = ((v8 & 0xF) << 12) | ((v7[1] & 0x3F) << 6) | v7[2] & 0x3F;
          v9 = 3;
        }

        else
        {
          v8 = ((v8 & 0xF) << 18) | ((v7[1] & 0x3F) << 12) | ((v7[2] & 0x3F) << 6) | v7[3] & 0x3F;
          v9 = 4;
        }
      }

      else
      {
        if (v10 == 1)
        {
          break;
        }

        v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        v9 = 2;
      }

LABEL_5:
      if (_GraphemeBreakingState.shouldBreak(between:and:)(v3->_value, v8))
      {
        v3->_value = v8;
        v3[1]._value = 0;
        return v4;
      }

      v3->_value = v8;
      v4 += v9;
      if (v4 >= a2)
      {
        return 0;
      }
    }

    v9 = 1;
    goto LABEL_5;
  }

  return 0;
}

uint64_t Unicode._CharacterRecognizer.description.getter()
{
  v1 = *v0;
  LODWORD(v2) = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  LODWORD(v5) = v0[7];
  v6 = _StringGuts.init(_initialCapacity:)(6);
  countAndFlagsBits = v6;
  v9 = v7;
  v229._countAndFlagsBits = v6;
  v229._object = v7;
  v10 = HIBYTE(v7) & 0xF;
  v11 = v6 & 0xFFFFFFFFFFFFLL;
  if ((v7 & 0x2000000000000000) != 0)
  {
    v12 = HIBYTE(v7) & 0xF;
  }

  else
  {
    v12 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (!v12 && (v6 & ~v7 & 0x2000000000000000) == 0)
  {
    object = 0xE000000000000000;
    v229._countAndFlagsBits = 0;
    v229._object = 0xE000000000000000;
    v7;
    countAndFlagsBits = 0;
    goto LABEL_34;
  }

  if ((v7 & 0x2000000000000000) != 0)
  {
    v7;
    0xE000000000000000;
    v28 = 0xA000000000000000;
    if (!(v9 & 0x80808080808080 | countAndFlagsBits & 0x8080808080808080))
    {
      v28 = 0xE000000000000000;
    }

    object = v28 & 0xFF00000000000000 | (v10 << 56) | v9 & 0xFFFFFFFFFFFFFFLL;
    v229._countAndFlagsBits = countAndFlagsBits;
    v229._object = object;
    goto LABEL_34;
  }

  0xE000000000000000;
  v14 = v11;
  if ((v9 & 0x1000000000000000) != 0)
  {
    v14 = String.UTF8View._foreignCount()();
    if ((countAndFlagsBits & 0x2000000000000000) == 0)
    {
      goto LABEL_32;
    }
  }

  else if ((countAndFlagsBits & 0x2000000000000000) == 0)
  {
    goto LABEL_32;
  }

  if (swift_isUniquelyReferenced_nonNull_native(v9 & 0xFFFFFFFFFFFFFFFLL))
  {
    v15 = _StringGuts.nativeUnusedCapacity.getter(countAndFlagsBits, v9);
    if (v16)
    {
      goto LABEL_302;
    }

    if (v14 <= 15 && (v15 & 0x8000000000000000) != 0)
    {
      goto LABEL_13;
    }

LABEL_33:
    _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v14, 0);
    v228 = 0uLL;
    closure #1 in _StringGuts.append(_:)(&v228, 0, &v229, 1);
    swift_bridgeObjectRelease_n(0xE000000000000000, 2);
    countAndFlagsBits = v229._countAndFlagsBits;
    object = v229._object;
    goto LABEL_34;
  }

LABEL_32:
  if (v14 > 15)
  {
    goto LABEL_33;
  }

LABEL_13:
  if ((v9 & 0x1000000000000000) != 0)
  {
    goto LABEL_278;
  }

  if ((countAndFlagsBits & 0x1000000000000000) != 0)
  {
    v17 = ((v9 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v17 = _StringObject.sharedUTF8.getter(countAndFlagsBits, v9);
    v11 = v199;
  }

  closure #1 in _StringGuts._convertedToSmall()(v17, v11, &v228, v13);
  v19 = *(&v228 + 1);
  v18 = v228;
  while (1)
  {
    v20 = v1;
    v21 = 0xE000000000000000;
    0xE000000000000000;
    v22._rawBits = 1;
    v23._rawBits = 1;
    v24._rawBits = _StringGuts.validateScalarRange(_:)(v22, v23, 0, 0xE000000000000000)._rawBits;
    if (v24._rawBits < 0x10000)
    {
      v24._rawBits |= 3;
    }

    if (v24._rawBits >> 16 || v25._rawBits >= 0x10000)
    {
      v27 = specialized static String._copying(_:)(v24._rawBits, v25._rawBits, 0, 0xE000000000000000);
      v21 = v30;
      0xE000000000000000;
    }

    else
    {
      v27 = 0;
    }

    if ((v21 & 0x2000000000000000) != 0)
    {
      v21;
    }

    else if ((v21 & 0x1000000000000000) != 0)
    {
      v27 = _StringGuts._foreignConvertedToSmall()(v27, v21);
      v227 = v218;
      v21;
      v21 = v227;
    }

    else
    {
      if ((v27 & 0x1000000000000000) != 0)
      {
        v197 = ((v21 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v198 = v27 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v197 = _StringObject.sharedUTF8.getter(v27, v21);
      }

      closure #1 in _StringGuts._convertedToSmall()(v197, v198, &v228, v26);
      v21;
      v21 = *(&v228 + 1);
      v27 = v228;
    }

    v31 = specialized _SmallString.init(_:appending:)(v18, v19, v27, v21);
    if (v33)
    {
      goto LABEL_302;
    }

    countAndFlagsBits = v31;
    object = v32;
    swift_bridgeObjectRelease_n(0xE000000000000000, 2);
    v229._countAndFlagsBits = countAndFlagsBits;
    v229._object = object;
    v9;
    v1 = v20;
LABEL_34:
    if (v5)
    {
      v34 = 0x1000000;
    }

    else
    {
      v34 = 0;
    }

    if (v4)
    {
      v35 = 0x10000;
    }

    else
    {
      v35 = 0;
    }

    if (v3)
    {
      v36 = 256;
    }

    else
    {
      v36 = 0;
    }

    v37 = _GraphemeBreakingState.description.getter(v36 | v2 | v35 | v34);
    v39 = v37;
    v40 = v38;
    v41 = HIBYTE(object) & 0xF;
    v42 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    if ((object & 0x2000000000000000) != 0)
    {
      v42 = HIBYTE(object) & 0xF;
    }

    if (!v42 && (countAndFlagsBits & ~object & 0x2000000000000000) == 0)
    {
      v229._countAndFlagsBits = v37;
      v229._object = v38;
      object;
      goto LABEL_108;
    }

    v43 = (v38 & 0x2000000000000000) == 0;
    v44 = HIBYTE(v38) & 0xF;
    if ((object & 0x2000000000000000) == 0)
    {
      v225 = v1;
      v45 = v37 & 0xFFFFFFFFFFFFLL;
      v46 = HIBYTE(v38) & 0xF;
      if ((v38 & 0x2000000000000000) != 0)
      {
LABEL_53:
        if ((v38 & 0x1000000000000000) == 0)
        {
          goto LABEL_54;
        }

        goto LABEL_83;
      }

LABEL_52:
      v46 = v45;
      goto LABEL_53;
    }

    if ((v38 & 0x2000000000000000) == 0)
    {
      v225 = v1;
      v45 = v37 & 0xFFFFFFFFFFFFLL;
      v43 = 1;
      goto LABEL_52;
    }

    v63 = v41 + v44;
    if (v41 + v44 < 0x10)
    {
      if (v44)
      {
        v75 = 0;
        v76 = 0;
        v77 = 8 * v41;
        do
        {
          v78 = v38 >> (v75 & 0x38);
          if (v76 < 8)
          {
            v78 = v37 >> v75;
          }

          v79 = (v78 << (v77 & 0x38)) | ((-255 << (v77 & 0x38)) - 1) & object;
          v80 = (v78 << v77) | ((-255 << v77) - 1) & countAndFlagsBits;
          if (v41 <= 7)
          {
            countAndFlagsBits = v80;
          }

          else
          {
            object = v79;
          }

          ++v41;
          v77 += 8;
          v75 += 8;
          ++v76;
        }

        while (8 * v44 != v75);
      }

      v38;
      v81 = 0xA000000000000000;
      if (!(countAndFlagsBits & 0x8080808080808080 | object & 0x80808080808080))
      {
        v81 = 0xE000000000000000;
      }

      v82 = (v81 & 0xFF00000000000000 | (v63 << 56) | object & 0xFFFFFFFFFFFFFFLL);
      v229._object;
      v229._countAndFlagsBits = countAndFlagsBits;
      v229._object = v82;
      goto LABEL_108;
    }

    v225 = v1;
    v43 = 0;
    v45 = v37 & 0xFFFFFFFFFFFFLL;
    v46 = HIBYTE(v38) & 0xF;
    if ((v38 & 0x1000000000000000) == 0)
    {
LABEL_54:
      v38;
      v49 = v46;
      if ((object & 0x1000000000000000) == 0)
      {
        goto LABEL_55;
      }

      goto LABEL_86;
    }

LABEL_83:
    swift_bridgeObjectRetain_n(v38, 2);
    v64._rawBits = 1;
    v65._rawBits = (v46 << 16) | 1;
    v66._rawBits = _StringGuts.validateScalarRange(_:)(v64, v65, v39, v40)._rawBits;
    if (v66._rawBits < 0x10000)
    {
      v66._rawBits |= 3;
    }

    v49 = String.UTF8View.distance(from:to:)(v66, v67);
    v40;
    countAndFlagsBits = v229._countAndFlagsBits;
    object = v229._object;
    if ((v229._object & 0x1000000000000000) == 0)
    {
LABEL_55:
      if ((object & 0x2000000000000000) != 0)
      {
        rawBits = HIBYTE(object) & 0xF;
        v51 = rawBits + v49;
        if (__OFADD__(rawBits, v49))
        {
          goto LABEL_88;
        }
      }

      else
      {
        rawBits = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
        v51 = (countAndFlagsBits & 0xFFFFFFFFFFFFLL) + v49;
        if (__OFADD__(countAndFlagsBits & 0xFFFFFFFFFFFFLL, v49))
        {
          goto LABEL_88;
        }
      }

      goto LABEL_60;
    }

LABEL_86:
    rawBits = String.UTF8View._foreignCount()();
    v51 = rawBits + v49;
    if (__OFADD__(rawBits, v49))
    {
LABEL_88:
      __break(1u);
LABEL_89:
      v39 = specialized static String._copying(_:)(rawBits, v47, v39, v40);
      v62 = v68;
      v40;
      goto LABEL_90;
    }

LABEL_60:
    if ((countAndFlagsBits & ~object & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(object & 0xFFFFFFFFFFFFFFFLL))
    {
      v52 = _StringGuts.nativeUnusedCapacity.getter(countAndFlagsBits, object);
      if (v53)
      {
        goto LABEL_302;
      }

      if (v51 > 15 || (v54 = object & 0x2000000000000000, (object & 0x2000000000000000) == 0) && v52 >= v49)
      {
LABEL_68:
        _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v51, v49);
        if ((v40 & 0x1000000000000000) != 0)
        {
          _StringGuts._foreignAppendInPlace(_:)(v39, v40, 0, v46);
        }

        else
        {
          if (v43)
          {
            if ((v39 & 0x1000000000000000) != 0)
            {
              v55 = (v40 & 0xFFFFFFFFFFFFFFFLL) + 32;
              v56 = v45;
            }

            else
            {
              v208 = _StringObject.sharedUTF8.getter(v39, v40);
              if (v209 < v45)
              {
                goto LABEL_301;
              }

              v55 = v208;
              v56 = v209;
            }

            v1 = v225;
            v57 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v45, v55, v56);
            closure #1 in _StringGuts.append(_:)(v57, v58, &v229, v39 < 0);
            swift_bridgeObjectRelease_n(v40, 2);
            goto LABEL_108;
          }

          *&v228 = v39;
          *(&v228 + 1) = v40 & 0xFFFFFFFFFFFFFFLL;
          closure #1 in _StringGuts.append(_:)(&v228, HIBYTE(v40) & 0xF, &v229, (v40 & 0x4000000000000000) != 0);
        }

        swift_bridgeObjectRelease_n(v40, 2);
        v1 = v225;
        goto LABEL_108;
      }
    }

    else
    {
      if (v51 > 15)
      {
        goto LABEL_68;
      }

      v54 = object & 0x2000000000000000;
    }

    if (!v54)
    {
      if ((object & 0x1000000000000000) != 0)
      {
        countAndFlagsBits = _StringGuts._foreignConvertedToSmall()(countAndFlagsBits, object);
        object = v212;
      }

      else
      {
        if ((countAndFlagsBits & 0x1000000000000000) != 0)
        {
          v188 = ((object & 0xFFFFFFFFFFFFFFFLL) + 32);
          v189 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v188 = _StringObject.sharedUTF8.getter(countAndFlagsBits, object);
        }

        closure #1 in _StringGuts._convertedToSmall()(v188, v189, &v228, v48);
        object = *(&v228 + 1);
        countAndFlagsBits = v228;
      }
    }

    v40;
    v59._rawBits = 1;
    v60._rawBits = (v46 << 16) | 1;
    rawBits = _StringGuts.validateScalarRange(_:)(v59, v60, v39, v40)._rawBits;
    if (rawBits < 0x10000)
    {
      rawBits |= 3uLL;
    }

    if (rawBits >> 16 || v47 >> 16 != v46)
    {
      goto LABEL_89;
    }

    v62 = v40;
LABEL_90:
    if ((v62 & 0x2000000000000000) != 0)
    {
      v62;
    }

    else if ((v62 & 0x1000000000000000) != 0)
    {
      v39 = _StringGuts._foreignConvertedToSmall()(v39, v62);
      v214 = v213;
      v62;
      v62 = v214;
    }

    else
    {
      if ((v39 & 0x1000000000000000) != 0)
      {
        v190 = ((v62 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v191 = v39 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v190 = _StringObject.sharedUTF8.getter(v39, v62);
      }

      closure #1 in _StringGuts._convertedToSmall()(v190, v191, &v228, v61);
      v62;
      v62 = *(&v228 + 1);
      v39 = v228;
    }

    v69 = specialized _SmallString.init(_:appending:)(countAndFlagsBits, object, v39, v62);
    if (v71)
    {
      goto LABEL_302;
    }

    v72 = v69;
    v73 = v70;
    swift_bridgeObjectRelease_n(v40, 2);
    v74 = v229._object;
    v229._countAndFlagsBits = v72;
    v229._object = v73;
    v74;
    v1 = v225;
LABEL_108:
    countAndFlagsBits = v229._countAndFlagsBits;
    v83 = v229._object;
    v84 = (v229._object >> 56) & 0xF;
    v85 = v229._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    if ((v229._object & 0x2000000000000000) != 0)
    {
      v86 = (v229._object >> 56) & 0xF;
    }

    else
    {
      v86 = v229._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (!v86 && (v229._countAndFlagsBits & ~v229._object & 0x2000000000000000) == 0)
    {
      countAndFlagsBits = 11093;
      v98 = 0xE200000000000000;
      v229._countAndFlagsBits = 11093;
      v229._object = 0xE200000000000000;
      v83;
      goto LABEL_142;
    }

    if ((v229._object & 0x2000000000000000) != 0 && v84 <= 0xD)
    {
      v87 = 8 * ((v229._object >> 56) & 7);
      v88 = (-255 << v87) - 1;
      v89 = 85 << v87;
      v90 = v84 + 1;
      if (v84 >= 8)
      {
        v92 = v88 & v229._object | v89;
        v91 = 8 * (v90 & 7);
      }

      else
      {
        countAndFlagsBits = v88 & v229._countAndFlagsBits | v89;
        if (v84 != 7)
        {
          countAndFlagsBits = ((-255 << (8 * (v90 & 7u))) - 1) & countAndFlagsBits | (43 << (8 * (v90 & 7u)));
          v111 = v229._object;
          goto LABEL_139;
        }

        v91 = 0;
        v92 = v229._object;
      }

      v111 = ((-255 << v91) - 1) & v92 | (43 << v91);
LABEL_139:
      v229._object;
      0xE200000000000000;
      v112 = 0xA000000000000000;
      if (!(countAndFlagsBits & 0x8080808080808080 | v111 & 0x80808080808080))
      {
        v112 = 0xE000000000000000;
      }

      v98 = (v112 & 0xFF00000000000000 | (v84 << 56) | v111 & 0xFFFFFFFFFFFFFFLL) + 0x200000000000000;
      v229._countAndFlagsBits = countAndFlagsBits;
      v229._object = v98;
      goto LABEL_142;
    }

    0xE200000000000000;
    if ((v83 & 0x1000000000000000) != 0)
    {
      v186 = String.UTF8View._foreignCount()();
      v95 = v186 + 2;
      if (__OFADD__(v186, 2))
      {
LABEL_256:
        __break(1u);
LABEL_257:
        v162 = String.UTF8View._foreignCount()();
        if ((v84 & 0x2000000000000000) == 0)
        {
          goto LABEL_258;
        }

LABEL_227:
        if (!swift_isUniquelyReferenced_nonNull_native(countAndFlagsBits & 0xFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_258;
        }

        v163 = _StringGuts.nativeUnusedCapacity.getter(v84, countAndFlagsBits);
        if ((v164 & 1) == 0)
        {
          if (v162 > 15 || (v163 & 0x8000000000000000) == 0)
          {
            goto LABEL_259;
          }

          goto LABEL_231;
        }

LABEL_302:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }
    }

    else
    {
      v94 = __OFADD__(v86, 2);
      v95 = v86 + 2;
      if (v94)
      {
        goto LABEL_256;
      }
    }

    if ((countAndFlagsBits & ~v83 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v83 & 0xFFFFFFFFFFFFFFFLL))
    {
      v96 = _StringGuts.nativeUnusedCapacity.getter(countAndFlagsBits, v83);
      if (v97)
      {
        goto LABEL_302;
      }

      if (v95 > 15 || (v83 & 0x2000000000000000) == 0 && v96 > 1)
      {
LABEL_126:
        _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v95, 2);
        v228 = xmmword_18071DED0;
        closure #1 in _StringGuts.append(_:)(&v228, 2uLL, &v229, 1);
        swift_bridgeObjectRelease_n(0xE200000000000000, 2);
        countAndFlagsBits = v229._countAndFlagsBits;
        v98 = v229._object;
        goto LABEL_142;
      }
    }

    else if (v95 > 15)
    {
      goto LABEL_126;
    }

    if ((v83 & 0x2000000000000000) == 0)
    {
      if ((v83 & 0x1000000000000000) != 0)
      {
        countAndFlagsBits = _StringGuts._foreignConvertedToSmall()(countAndFlagsBits, v83);
        v83 = v221;
      }

      else
      {
        if ((countAndFlagsBits & 0x1000000000000000) != 0)
        {
          v204 = ((v83 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v204 = _StringObject.sharedUTF8.getter(countAndFlagsBits, v83);
          v85 = v224;
        }

        closure #1 in _StringGuts._convertedToSmall()(v204, v85, &v228, v93);
        v83 = *(&v228 + 1);
        countAndFlagsBits = v228;
      }
    }

    0xE200000000000000;
    v99._rawBits = 1;
    v100._rawBits = 131073;
    v101._rawBits = _StringGuts.validateScalarRange(_:)(v99, v100, 0x2B55uLL, 0xE200000000000000)._rawBits;
    if (v101._rawBits < 0x10000)
    {
      v101._rawBits |= 3;
    }

    v103 = Substring.description.getter(v101._rawBits, v102._rawBits, 0x2B55uLL, 0xE200000000000000);
    v105 = v104;
    0xE200000000000000;
    if ((v105 & 0x2000000000000000) != 0)
    {
      v105;
    }

    else
    {
      v205 = v1;
      if ((v105 & 0x1000000000000000) != 0)
      {
        v103 = _StringGuts._foreignConvertedToSmall()(v103, v105);
        v223 = v222;
        v105;
        v105 = v223;
        v1 = v205;
      }

      else
      {
        if ((v103 & 0x1000000000000000) != 0)
        {
          v206 = ((v105 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v207 = v103 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v206 = _StringObject.sharedUTF8.getter(v103, v105);
        }

        closure #1 in _StringGuts._convertedToSmall()(v206, v207, &v228, v106);
        v105;
        v105 = *(&v228 + 1);
        v103 = v228;
      }
    }

    v107 = specialized _SmallString.init(_:appending:)(countAndFlagsBits, v83, v103, v105);
    if (v109)
    {
      goto LABEL_302;
    }

    countAndFlagsBits = v107;
    v98 = v108;
    swift_bridgeObjectRelease_n(0xE200000000000000, 2);
    v110 = v229._object;
    v229._countAndFlagsBits = countAndFlagsBits;
    v229._object = v98;
    v110;
LABEL_142:
    v113 = _uint64ToString(_:radix:uppercase:)(v1, 16, 1);
    v9 = v113._countAndFlagsBits;
    v114 = HIBYTE(v98) & 0xF;
    v115 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    if ((v98 & 0x2000000000000000) != 0)
    {
      v115 = HIBYTE(v98) & 0xF;
    }

    if (!v115 && (countAndFlagsBits & ~v98 & 0x2000000000000000) == 0)
    {
      v229 = v113;
      v159 = v98;
      goto LABEL_215;
    }

    v4 = (v113._object & 0x2000000000000000) == 0;
    v1 = (v113._object >> 56) & 0xF;
    if ((v98 & 0x2000000000000000) == 0)
    {
      v116 = v113._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      v117 = (v113._object >> 56) & 0xF;
      if ((v113._object & 0x2000000000000000) != 0)
      {
LABEL_152:
        if ((v113._object & 0x1000000000000000) == 0)
        {
          goto LABEL_153;
        }

        goto LABEL_193;
      }

LABEL_151:
      v117 = v116;
      goto LABEL_152;
    }

    if ((v113._object & 0x2000000000000000) == 0)
    {
      v116 = v113._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      v4 = 1;
      goto LABEL_151;
    }

    v143 = v114 + v1;
    if (v114 + v1 < 0x10)
    {
      if (v1)
      {
        v178 = 0;
        v179 = 0;
        v180 = 8 * v114;
        do
        {
          v181 = v113._object >> (v178 & 0x38);
          if (v179 < 8)
          {
            v181 = v113._countAndFlagsBits >> v178;
          }

          v182 = (v181 << (v180 & 0x38)) | ((-255 << (v180 & 0x38)) - 1) & v98;
          v183 = (v181 << v180) | ((-255 << v180) - 1) & countAndFlagsBits;
          if (v114 <= 7)
          {
            countAndFlagsBits = v183;
          }

          else
          {
            v98 = v182;
          }

          ++v114;
          v180 += 8;
          v178 += 8;
          ++v179;
        }

        while (8 * v1 != v178);
      }

      v113._object;
      v184 = 0xA000000000000000;
      if (!(countAndFlagsBits & 0x8080808080808080 | v98 & 0x80808080808080))
      {
        v184 = 0xE000000000000000;
      }

      v185 = (v184 & 0xFF00000000000000 | (v143 << 56) | v98 & 0xFFFFFFFFFFFFFFLL);
      v229._object;
      v229._countAndFlagsBits = countAndFlagsBits;
      v229._object = v185;
      goto LABEL_219;
    }

    v4 = 0;
    v116 = v113._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    v117 = (v113._object >> 56) & 0xF;
    if ((v113._object & 0x1000000000000000) == 0)
    {
LABEL_153:
      v113._object;
      v120 = v117;
      v226 = v116;
      if ((v98 & 0x1000000000000000) == 0)
      {
        goto LABEL_154;
      }

      goto LABEL_196;
    }

LABEL_193:
    swift_bridgeObjectRetain_n(v113._object, 2);
    v144._rawBits = 1;
    v145._rawBits = (v117 << 16) | 1;
    v146._rawBits = _StringGuts.validateScalarRange(_:)(v144, v145, v113._countAndFlagsBits, v113._object)._rawBits;
    if (v146._rawBits < 0x10000)
    {
      v146._rawBits |= 3;
    }

    v120 = String.UTF8View.distance(from:to:)(v146, v147);
    v113._object;
    countAndFlagsBits = v229._countAndFlagsBits;
    v98 = v229._object;
    v226 = v116;
    if ((v229._object & 0x1000000000000000) == 0)
    {
LABEL_154:
      if ((v98 & 0x2000000000000000) != 0)
      {
        v121 = HIBYTE(v98) & 0xF;
        v2 = v121 + v120;
        if (__OFADD__(v121, v120))
        {
          goto LABEL_198;
        }
      }

      else
      {
        v121 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
        v2 = (countAndFlagsBits & 0xFFFFFFFFFFFFLL) + v120;
        if (__OFADD__(countAndFlagsBits & 0xFFFFFFFFFFFFLL, v120))
        {
          goto LABEL_198;
        }
      }

      goto LABEL_159;
    }

LABEL_196:
    v121 = String.UTF8View._foreignCount()();
    v2 = v121 + v120;
    if (__OFADD__(v121, v120))
    {
LABEL_198:
      __break(1u);
      goto LABEL_199;
    }

LABEL_159:
    v5 = countAndFlagsBits & ~v98;
    if ((v5 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v98 & 0xFFFFFFFFFFFFFFFLL))
    {
      v122 = _StringGuts.nativeUnusedCapacity.getter(countAndFlagsBits, v98);
      if (v123)
      {
        goto LABEL_302;
      }

      if (v2 <= 15)
      {
        v124 = v98 & 0x2000000000000000;
        if ((v98 & 0x2000000000000000) != 0 || v122 < v120)
        {
          goto LABEL_185;
        }
      }

      v125 = _StringGuts.nativeUnusedCapacity.getter(countAndFlagsBits, v98) < v120;
      v3 = v126 | v125;
      goto LABEL_168;
    }

    if (v2 <= 15)
    {
      v124 = v98 & 0x2000000000000000;
LABEL_185:
      if (!v124)
      {
        if ((v98 & 0x1000000000000000) != 0)
        {
          countAndFlagsBits = _StringGuts._foreignConvertedToSmall()(countAndFlagsBits, v98);
          v98 = v215;
        }

        else
        {
          if ((countAndFlagsBits & 0x1000000000000000) != 0)
          {
            v192 = ((v98 & 0xFFFFFFFFFFFFFFFLL) + 32);
            v193 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            v192 = _StringObject.sharedUTF8.getter(countAndFlagsBits, v98);
          }

          closure #1 in _StringGuts._convertedToSmall()(v192, v193, &v228, v119);
          v98 = *(&v228 + 1);
          countAndFlagsBits = v228;
        }
      }

      v113._object;
      v139._rawBits = 1;
      v140._rawBits = (v117 << 16) | 1;
      v121 = _StringGuts.validateScalarRange(_:)(v139, v140, v113._countAndFlagsBits, v113._object)._rawBits;
      if (v121 < 0x10000)
      {
        v121 |= 3uLL;
      }

      if (!(v121 >> 16) && v118 >> 16 == v117)
      {
        v142 = v113._object;
        goto LABEL_200;
      }

LABEL_199:
      v9 = specialized static String._copying(_:)(v121, v118, v113._countAndFlagsBits, v113._object);
      v142 = v148;
      v113._object;
LABEL_200:
      if ((v142 & 0x2000000000000000) != 0)
      {
        v142;
      }

      else if ((v142 & 0x1000000000000000) != 0)
      {
        v9 = _StringGuts._foreignConvertedToSmall()(v9, v142);
        v217 = v216;
        v142;
        v142 = v217;
      }

      else
      {
        if ((v9 & 0x1000000000000000) != 0)
        {
          v194 = ((v142 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v195 = v9 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v194 = _StringObject.sharedUTF8.getter(v9, v142);
        }

        closure #1 in _StringGuts._convertedToSmall()(v194, v195, &v228, v141);
        v142;
        v142 = *(&v228 + 1);
        v9 = v228;
      }

      v149 = HIBYTE(v98) & 0xF;
      v150 = HIBYTE(v142) & 0xF;
      v151 = v150 + v149;
      if (v150 + v149 <= 0xF)
      {
        v113._object;
        if (v150)
        {
          v152 = 0;
          v153 = 0;
          v154 = 8 * v149;
          do
          {
            v155 = v142 >> (v152 & 0x38);
            if (v153 < 8)
            {
              v155 = v9 >> v152;
            }

            v156 = (v155 << (v154 & 0x38)) | ((-255 << (v154 & 0x38)) - 1) & v98;
            v157 = (v155 << v154) | ((-255 << v154) - 1) & countAndFlagsBits;
            if (v149 <= 7)
            {
              countAndFlagsBits = v157;
            }

            else
            {
              v98 = v156;
            }

            ++v149;
            v154 += 8;
            v152 += 8;
            ++v153;
          }

          while (8 * v150 != v152);
        }

        v113._object;
        v158 = 0xA000000000000000;
        if (!(countAndFlagsBits & 0x8080808080808080 | v98 & 0x80808080808080))
        {
          v158 = 0xE000000000000000;
        }

        v159 = v229._object;
        v229._countAndFlagsBits = countAndFlagsBits;
        v229._object = (v158 & 0xFF00000000000000 | (v151 << 56) | v98 & 0xFFFFFFFFFFFFFFLL);
LABEL_215:
        v159;
        goto LABEL_219;
      }

      goto LABEL_302;
    }

    v127 = _StringGuts.nativeUnusedCapacity.getter(countAndFlagsBits, v98) < v120;
    v3 = v128 | v127;
    if ((v5 & 0x2000000000000000) == 0)
    {
      goto LABEL_175;
    }

LABEL_168:
    if (!swift_isUniquelyReferenced_nonNull_native(v98 & 0xFFFFFFFFFFFFFFFLL))
    {
LABEL_175:
      if ((v3 & 1) == 0)
      {
        goto LABEL_182;
      }

      goto LABEL_176;
    }

    if ((v3 & 1) == 0)
    {
      if ((v113._object & 0x1000000000000000) != 0)
      {
        goto LABEL_183;
      }

      goto LABEL_171;
    }

LABEL_176:
    v135 = _StringGuts.nativeCapacity.getter(countAndFlagsBits, v98);
    v137 = (v136 & 1) != 0 ? 0 : v135;
    if (v137 + 0x4000000000000000 >= 0)
    {
      break;
    }

    __break(1u);
LABEL_278:
    v18 = _StringGuts._foreignConvertedToSmall()(countAndFlagsBits, v9);
    v19 = v196;
  }

  v138 = 2 * v137;
  if (v138 > v2)
  {
    v2 = v138;
  }

LABEL_182:
  _StringGuts.grow(_:)(v2);
  if ((v113._object & 0x1000000000000000) != 0)
  {
LABEL_183:
    _StringGuts._foreignAppendInPlace(_:)(v113._countAndFlagsBits, v113._object, 0, v117);
    goto LABEL_218;
  }

LABEL_171:
  if (v4)
  {
    if ((v113._countAndFlagsBits & 0x1000000000000000) != 0)
    {
      v129 = (v113._object & 0xFFFFFFFFFFFFFFFLL) + 32;
      v130 = v226;
      v131 = v226;
    }

    else
    {
      v210 = _StringObject.sharedUTF8.getter(v113._countAndFlagsBits, v113._object);
      if (v211 < v226)
      {
LABEL_301:
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v129 = v210;
      v131 = v211;
      v130 = v226;
    }

    v132 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v130, v129, v131);
    v134 = v113._countAndFlagsBits >> 63;
  }

  else
  {
    v134 = (v113._object >> 62) & 1;
    *&v228 = v113._countAndFlagsBits;
    *(&v228 + 1) = v113._object & 0xFFFFFFFFFFFFFFLL;
    v132 = &v228;
    v133 = (v113._object >> 56) & 0xF;
  }

  closure #1 in _StringGuts.append(_:)(v132, v133, &v229, v134);
LABEL_218:
  swift_bridgeObjectRelease_n(v113._object, 2);
LABEL_219:
  v84 = v229._countAndFlagsBits;
  countAndFlagsBits = v229._object;
  v83 = v229._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  if ((v229._object & 0x2000000000000000) != 0)
  {
    v160 = (v229._object >> 56) & 0xF;
  }

  else
  {
    v160 = v229._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v160 && (v229._countAndFlagsBits & ~v229._object & 0x2000000000000000) == 0)
  {
    v229._object;
    return 0;
  }

  if ((v229._object & 0x2000000000000000) != 0)
  {
    v229._object;
    0xE000000000000000;
    return v84;
  }

  0xE000000000000000;
  v162 = v83;
  if ((countAndFlagsBits & 0x1000000000000000) != 0)
  {
    goto LABEL_257;
  }

  if ((v84 & 0x2000000000000000) != 0)
  {
    goto LABEL_227;
  }

LABEL_258:
  if (v162 > 15)
  {
LABEL_259:
    _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v162, 0);
    v228 = 0uLL;
    closure #1 in _StringGuts.append(_:)(&v228, 0, &v229, 1);
    swift_bridgeObjectRelease_n(0xE000000000000000, 2);
    return v229._countAndFlagsBits;
  }

LABEL_231:
  if ((countAndFlagsBits & 0x1000000000000000) != 0)
  {
    v166 = _StringGuts._foreignConvertedToSmall()(v84, countAndFlagsBits);
    v167 = v200;
  }

  else
  {
    if ((v84 & 0x1000000000000000) != 0)
    {
      v165 = ((countAndFlagsBits & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v165 = _StringObject.sharedUTF8.getter(v84, countAndFlagsBits);
      v83 = v203;
    }

    closure #1 in _StringGuts._convertedToSmall()(v165, v83, &v228, v161);
    v167 = *(&v228 + 1);
    v166 = v228;
  }

  0xE000000000000000;
  v168._rawBits = 1;
  v169._rawBits = 1;
  v170._rawBits = _StringGuts.validateScalarRange(_:)(v168, v169, 0, 0xE000000000000000)._rawBits;
  if (v170._rawBits < 0x10000)
  {
    v170._rawBits |= 3;
  }

  v172 = Substring.description.getter(v170._rawBits, v171._rawBits, 0, 0xE000000000000000);
  v174 = v173;
  0xE000000000000000;
  if ((v174 & 0x2000000000000000) != 0)
  {
    v174;
  }

  else if ((v174 & 0x1000000000000000) != 0)
  {
    v172 = _StringGuts._foreignConvertedToSmall()(v172, v174);
    v220 = v219;
    v174;
    v174 = v220;
  }

  else
  {
    if ((v172 & 0x1000000000000000) != 0)
    {
      v201 = ((v174 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v202 = v172 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v201 = _StringObject.sharedUTF8.getter(v172, v174);
    }

    closure #1 in _StringGuts._convertedToSmall()(v201, v202, &v228, v175);
    v174;
    v174 = *(&v228 + 1);
    v172 = v228;
  }

  v176 = specialized _SmallString.init(_:appending:)(v166, v167, v172, v174);
  if (v177)
  {
    goto LABEL_302;
  }

  v84 = v176;
  swift_bridgeObjectRelease_n(0xE000000000000000, 2);
  v229._object;
  return v84;
}

uint64_t specialized _shouldBreakWithLookback(between:and:at:with:)(unsigned int a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  if (a1 == 13 && a2 == 10)
  {
    goto LABEL_3;
  }

  if (hasBreakWhenPaired #1 (_:) in _quickHasGraphemeBreakBetween(_:_:)(a1) && hasBreakWhenPaired #1 (_:) in _quickHasGraphemeBreakBetween(_:_:)(a2))
  {
    goto LABEL_32;
  }

  if (a1 < 0x20)
  {
    goto LABEL_31;
  }

  if (a1 <= 0x7E)
  {
    goto LABEL_71;
  }

  if (a1 == 8205)
  {
    v9 = 12;
    goto LABEL_10;
  }

  v9 = 4;
  if (a1 - 4448 > 0xFFFFFF9F)
  {
    goto LABEL_10;
  }

  if (a1 - 43389 >= 0xFFFFFFE3)
  {
    goto LABEL_10;
  }

  v9 = 11;
  if (a1 - 4520 > 0xFFFFFFB7)
  {
    goto LABEL_10;
  }

  if (a1 - 55239 > 0xFFFFFFE8)
  {
    goto LABEL_10;
  }

  v9 = 10;
  if (a1 - 4608 > 0xFFFFFFA7 || a1 - 55292 > 0xFFFFFFCE)
  {
    goto LABEL_10;
  }

  if (a1 - 55204 > 0xFFFFD45B)
  {
    HIDWORD(v17) = -1227133513 * (a1 - 16);
    LODWORD(v17) = HIDWORD(v17);
    if ((v17 >> 2) < 0x9249249)
    {
      v9 = 5;
    }

    else
    {
      v9 = 6;
    }

    goto LABEL_10;
  }

  if (a1 - 127488 > 0xFFFFFFE5)
  {
    v9 = 8;
    goto LABEL_10;
  }

  if (a1 - 131070 > 0xFFFFFC01)
  {
LABEL_68:
    v9 = 3;
    goto LABEL_10;
  }

  if (a1 - 921600 > 0xFFFFF1EF)
  {
LABEL_31:
    Unicode._GraphemeBreakProperty.init(from:)(a2);
    goto LABEL_32;
  }

  GraphemeBreakProperty = _swift_stdlib_getGraphemeBreakProperty(a1);
  if (GraphemeBreakProperty > 2)
  {
    if ((GraphemeBreakProperty - 4) >= 2)
    {
      if (GraphemeBreakProperty != 3)
      {
        goto LABEL_71;
      }

      v9 = 9;
      goto LABEL_10;
    }

    goto LABEL_68;
  }

  if (!GraphemeBreakProperty)
  {
    goto LABEL_31;
  }

  if (GraphemeBreakProperty != 1)
  {
    if (GraphemeBreakProperty == 2)
    {
      v9 = 7;
      goto LABEL_10;
    }

LABEL_71:
    v18 = Unicode._GraphemeBreakProperty.init(from:)(a2);
    if ((0x1207u >> v18))
    {
      v6 = 0xDFBu >> v18;
      return v6 & 1;
    }

    v9 = 0;
    goto LABEL_74;
  }

  v9 = 2;
LABEL_10:
  v10 = Unicode._GraphemeBreakProperty.init(from:)(a2);
  if (v10 > 5u)
  {
    v11 = a4;
    v12 = a3;
    if (v10 > 9u)
    {
      switch(v10)
      {
        case 0xAu:
          v15 = v9 - 5;
          if ((v9 - 5) >= 7u)
          {
            goto LABEL_74;
          }

          v16 = 103;
          break;
        case 0xBu:
          v15 = v9 - 4;
          if ((v9 - 4) >= 8u)
          {
            goto LABEL_74;
          }

          v16 = 139;
          break;
        case 0xCu:
LABEL_3:
          LOBYTE(v6) = 0;
          return v6 & 1;
        default:
          goto LABEL_43;
      }

      if (((v16 >> v15) & 1) == 0)
      {
        goto LABEL_74;
      }

      goto LABEL_3;
    }

    if (v10 != 6)
    {
      if (v10 != 9)
      {
        goto LABEL_43;
      }

      goto LABEL_3;
    }

LABEL_48:
    LOBYTE(v6) = 0;
    if (v9 == 4 || v9 == 7)
    {
      return v6 & 1;
    }

    goto LABEL_74;
  }

  v11 = a4;
  v12 = a3;
  if (v10 > 3u)
  {
    if (v10 == 4 || v10 == 5)
    {
      goto LABEL_48;
    }
  }

  else
  {
    if (v10 == 1)
    {
      goto LABEL_32;
    }

    if (v10 == 2)
    {
      goto LABEL_3;
    }
  }

LABEL_43:
  if (v9 == 7)
  {
    goto LABEL_3;
  }

  if (v9 != 8)
  {
    if (v9 == 12)
    {
      if (v10 == 3)
      {
        LOBYTE(v6) = !specialized _checkIfInEmojiSequence(at:with:)(a3, a4);
        return v6 & 1;
      }

      v9 = 12;
    }

LABEL_74:
    if (_swift_stdlib_isInCB_Consonant(a2) && (v9 == 12 || v9 == 2))
    {
      if (_swift_stdlib_isInCB_Consonant(a1))
      {
        HIDWORD(v20) = a1 - 2381;
        LODWORD(v20) = a1 - 2381;
        v19 = v20 >> 7;
        LOBYTE(v6) = 1;
        if (v19 > 8 || ((1 << v19) & 0x15B) == 0)
        {
          return v6 & 1;
        }

        goto LABEL_82;
      }

      if (a1 != 8204)
      {
LABEL_82:
        LOBYTE(v6) = specialized _checkIfInIndicSequence(at:with:)(a3, a4) ^ 1;
        return v6 & 1;
      }
    }

LABEL_32:
    LOBYTE(v6) = 1;
    return v6 & 1;
  }

  if (v10 != 8)
  {
    v9 = 8;
    goto LABEL_74;
  }

  return specialized _countRIs(at:with:)(v12, v11);
}

BOOL specialized _checkIfInEmojiSequence(at:with:)(uint64_t a1, uint64_t a2)
{
  v4 = a2 - 1;
  do
  {
    v5 = *(v4 + a1--) & 0xC0;
  }

  while (v5 == 128);
  _decodeScalar(_:startingAt:)(a2, a2, a1);
  while (a1 >= 1)
  {
    do
    {
      v7 = *(v4 + a1--) & 0xC0;
    }

    while (v7 == 128);
    v8 = _decodeScalar(_:startingAt:)(a2, v6, a1);
    result = 0;
    v10 = vdupq_n_s32(v8);
    if ((vmaxv_u8(vmovn_s16(vuzp1q_s16(vcgtq_u32(vaddq_s32(v10, xmmword_18071DEE0), xmmword_18071DF00), vcgtq_u32(vaddq_s32(v10, xmmword_18071DEF0), xmmword_18071DF10)))) & 1) != 0 || v8 == 8205 || v8 <= 0x7E)
    {
      return result;
    }

    if (v8 - 131070 > 0xFFFFFC01)
    {
      return 1;
    }

    if (v8 - 921600 > 0xFFFFF1EF)
    {
      return 0;
    }

    GraphemeBreakProperty = _swift_stdlib_getGraphemeBreakProperty(v8);
    if (GraphemeBreakProperty != 1)
    {
      return (GraphemeBreakProperty - 4) <= 1;
    }
  }

  return 0;
}

{
  v3 = a1 - 1;
  if ((*(a2 + a1 - 1) & 0xC0) == 0x80)
  {
    do
    {
      v4 = *(a2 - 2 + a1--) & 0xC0;
    }

    while (v4 == 128);
    v3 = a1 - 1;
  }

  while (1)
  {
    v5 = v3 - 1;
    if (v3 < 1)
    {
      break;
    }

    if ((*(a2 + v5) & 0xC0) == 0x80)
    {
      do
      {
        v6 = *(a2 - 2 + v3--) & 0xC0;
      }

      while (v6 == 128);
      v5 = v3 - 1;
    }

    value = UnsafeRawPointer._decodeScalar(startingAt:)(v5)._0._value;
    result = 0;
    v9 = vdupq_n_s32(value);
    if ((vmaxv_u8(vmovn_s16(vuzp1q_s16(vcgtq_u32(vaddq_s32(v9, xmmword_18071DEE0), xmmword_18071DF00), vcgtq_u32(vaddq_s32(v9, xmmword_18071DEF0), xmmword_18071DF10)))) & 1) != 0 || value == 8205 || value <= 0x7E)
    {
      return result;
    }

    if (value - 131070 > 0xFFFFFC01)
    {
      return 1;
    }

    if (value - 921600 > 0xFFFFF1EF)
    {
      return 0;
    }

    GraphemeBreakProperty = _swift_stdlib_getGraphemeBreakProperty(value);
    v3 = v5;
    if (GraphemeBreakProperty != 1)
    {
      return (GraphemeBreakProperty - 4) <= 1;
    }
  }

  return 0;
}

uint64_t specialized _countRIs(at:with:)(uint64_t a1, uint64_t a2)
{
  v4 = a2 - 1;
  do
  {
    v5 = *(v4 + a1--) & 0xC0;
  }

  while (v5 == 128);
  _decodeScalar(_:startingAt:)(a2, a2, a1);
  v7 = 0;
  while (a1 >= 1)
  {
    do
    {
      v8 = *(v4 + a1--) & 0xC0;
    }

    while (v8 == 128);
    v9 = _decodeScalar(_:startingAt:)(a2, v6, a1);
    if ((vmaxv_u16(vmovn_s32(vcgtq_u32(vaddq_s32(vdupq_n_s32(v9), xmmword_18071DEE0), xmmword_18071DF00))) & 1) != 0 || v9 - 4608 > 0xFFFFFFA7 || v9 - 55292 > 0xFFFFFFCE || v9 - 55204 > 0xFFFFD45B || v9 == 8205 || v9 <= 0x7E)
    {
      break;
    }

    if (v9 - 127488 <= 0xFFFFFFE5)
    {
      goto LABEL_16;
    }

    if (__OFADD__(v7++, 1))
    {
      __break(1u);
LABEL_16:
      if (v9 - 131070 <= 0xFFFFFC01 && v9 - 921600 <= 0xFFFFF1EF)
      {
        _swift_stdlib_getGraphemeBreakProperty(v9);
      }

      return v7 & 1;
    }
  }

  return v7 & 1;
}

{
  v3 = a1 - 1;
  if ((*(a2 + a1 - 1) & 0xC0) == 0x80)
  {
    do
    {
      v4 = *(a2 - 2 + a1--) & 0xC0;
    }

    while (v4 == 128);
    v3 = a1 - 1;
  }

  v5 = 0;
  while (1)
  {
    v6 = v3 - 1;
    if (v3 < 1)
    {
      break;
    }

    if ((*(a2 + v6) & 0xC0) == 0x80)
    {
      do
      {
        v7 = *(a2 - 2 + v3--) & 0xC0;
      }

      while (v7 == 128);
      v6 = v3 - 1;
    }

    value = UnsafeRawPointer._decodeScalar(startingAt:)(v6)._0._value;
    if ((vmaxv_u16(vmovn_s32(vcgtq_u32(vaddq_s32(vdupq_n_s32(value), xmmword_18071DEE0), xmmword_18071DF00))) & 1) != 0 || value - 4608 > 0xFFFFFFA7 || value - 55292 > 0xFFFFFFCE || value - 55204 > 0xFFFFD45B || value == 8205 || value <= 0x7E)
    {
      break;
    }

    if (value - 127488 <= 0xFFFFFFE5)
    {
      goto LABEL_19;
    }

    v3 = v6;
    if (__OFADD__(v5++, 1))
    {
      __break(1u);
LABEL_19:
      if (value - 131070 <= 0xFFFFFC01 && value - 921600 <= 0xFFFFF1EF)
      {
        _swift_stdlib_getGraphemeBreakProperty(value);
      }

      return v5 & 1;
    }
  }

  return v5 & 1;
}

uint64_t specialized _checkIfInIndicSequence(at:with:)(uint64_t a1, uint64_t a2)
{
  v4 = a2 - 1;
  do
  {
    v5 = *(v4 + a1--) & 0xC0;
  }

  while (v5 == 128);
  HIDWORD(v7) = _decodeScalar(_:startingAt:)(a2, a2, a1) - 2381;
  LODWORD(v7) = HIDWORD(v7);
  v8 = ((v7 >> 7) < 9) & (0x15Bu >> (v7 >> 7));
  while (1)
  {
    if (a1 < 1)
    {
LABEL_28:
      v11 = 0;
      return v11 & 1;
    }

    do
    {
      v9 = *(v4 + a1--) & 0xC0;
    }

    while (v9 == 128);
    v10 = _decodeScalar(_:startingAt:)(a2, v6, a1);
    if (_swift_stdlib_isInCB_Consonant(v10))
    {
      break;
    }

    if (v10 <= 0x7E)
    {
      goto LABEL_28;
    }

    if (v10 != 8205)
    {
      v11 = 0;
      v12 = vdupq_n_s32(v10);
      if ((vmaxv_u8(vmovn_s16(vuzp1q_s16(vcgtq_u32(vaddq_s32(v12, xmmword_18071DF20), xmmword_18071DF40), vcgtq_u32(vaddq_s32(v12, xmmword_18071DF30), xmmword_18071DF50)))) & 1) != 0 || (v10 - 921600) >= 0xFFFFF1F0)
      {
        return v11 & 1;
      }

      if (_swift_stdlib_getGraphemeBreakProperty(v10) != 1)
      {
        goto LABEL_28;
      }
    }

    if (_swift_stdlib_isInCB_Consonant(v10))
    {
      HIDWORD(v14) = v10 - 2381;
      LODWORD(v14) = v10 - 2381;
      v13 = v14 >> 7;
      if (v13 > 8)
      {
        goto LABEL_28;
      }

      LOBYTE(v8) = 1;
      if (((1 << v13) & 0x15B) == 0)
      {
        goto LABEL_28;
      }
    }

    else if (v10 <= 2892)
    {
      if (v10 == 2381 || v10 == 2509 || v10 == 2765)
      {
LABEL_25:
        LOBYTE(v8) = 1;
      }
    }

    else if (v10 > 3404)
    {
      if (v10 == 3405)
      {
        goto LABEL_25;
      }

      if (v10 == 8204)
      {
        goto LABEL_28;
      }
    }

    else if (v10 == 2893 || v10 == 3149)
    {
      goto LABEL_25;
    }
  }

  v11 = v8;
  return v11 & 1;
}

Swift::UInt8_optional __swiftcall _ValidUTF8Buffer.Iterator.next()()
{
  v1 = *v0;
  if (*v0)
  {
    v2 = v1 - 1;
    *v0 = v1 >> 8;
  }

  else
  {
    v2 = 0;
  }

  return (v2 | ((v1 == 0) << 8));
}

void protocol witness for IteratorProtocol.next() in conformance _ValidUTF8Buffer.Iterator(_BYTE *a1@<X8>)
{
  v2 = *v1;
  if (*v1)
  {
    v3 = v2 - 1;
    *v1 = v2 >> 8;
  }

  else
  {
    v3 = 0;
  }

  *a1 = v3;
  a1[1] = v2 == 0;
}

Swift::_ValidUTF8Buffer::Index __swiftcall _ValidUTF8Buffer.index(after:)(Swift::_ValidUTF8Buffer::Index after)
{
  if (!after._biasedBits)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return (after._biasedBits >> 8);
}

_DWORD *protocol witness for Collection.subscript.getter in conformance _ValidUTF8Buffer@<X0>(_DWORD *result@<X0>, _DWORD *a2@<X8>)
{
  v3 = *v2;
  if (*v2 < *result)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v4 = result[1];
  *a2 = *result;
  a2[1] = v4;
  a2[2] = v3;
  return result;
}

void protocol witness for Collection.indices.getter in conformance _ValidUTF8Buffer(uint64_t a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  *(a1 + 4) = v2;
}

Swift::Int __swiftcall _ValidUTF8Buffer.distance(from:to:)(Swift::_ValidUTF8Buffer::Index from, Swift::_ValidUTF8Buffer::Index to)
{
  if (from._biasedBits)
  {
    if (!v2)
    {
      goto LABEL_11;
    }

    v3 = v2;
    while (v3 != from._biasedBits)
    {
      v4 = v3 > 0xFF;
      v3 >>= 8;
      if (!v4)
      {
        goto LABEL_11;
      }
    }
  }

  if (!to._biasedBits)
  {
    return (__clz(from._biasedBits) - __clz(to._biasedBits)) >> 3;
  }

  if (!v2)
  {
LABEL_11:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  while (v2 != to._biasedBits)
  {
    v4 = v2 > 0xFF;
    v2 >>= 8;
    if (!v4)
    {
      goto LABEL_11;
    }
  }

  return (__clz(from._biasedBits) - __clz(to._biasedBits)) >> 3;
}

_DWORD *protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance _ValidUTF8Buffer(_DWORD *result, _DWORD *a2)
{
  if (*a2 < *result || *result < a2[1])
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

{
  if (*a2 < *result || result[1] < a2[1])
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

_DWORD *protocol witness for Collection.index(after:) in conformance _ValidUTF8Buffer@<X0>(_DWORD *result@<X0>, _DWORD *a2@<X8>)
{
  if (!*result)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *a2 = *result >> 8;
  return result;
}

_DWORD *protocol witness for Collection.formIndex(after:) in conformance _ValidUTF8Buffer(_DWORD *result)
{
  if (!*result)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *result >>= 8;
  return result;
}

Swift::_ValidUTF8Buffer::Index __swiftcall _ValidUTF8Buffer.index(before:)(Swift::_ValidUTF8Buffer::Index before)
{
  v2 = __clz(before._biasedBits);
  if ((v2 & 0x38) == 0x20)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return (v1 >> (~v2 & 0x18));
}

Swift::_ValidUTF8Buffer::Index protocol witness for BidirectionalCollection.index(before:) in conformance _ValidUTF8Buffer@<W0>(Swift::_ValidUTF8Buffer::Index *a1@<X0>, Swift::_ValidUTF8Buffer::Index *a2@<X8>)
{
  result._biasedBits = _ValidUTF8Buffer.index(before:)(a1->_biasedBits)._biasedBits;
  a2->_biasedBits = result._biasedBits;
  return result;
}

unsigned int *protocol witness for BidirectionalCollection.formIndex(before:) in conformance _ValidUTF8Buffer(unsigned int *result)
{
  v2 = __clz(*result);
  if ((v2 & 0x38) == 0x20)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *result = *v1 >> (~v2 & 0x18);
  return result;
}

Swift::Bool __swiftcall _ValidUTF8Buffer._isValid(_:)(Swift::_ValidUTF8Buffer::Index a1)
{
  if (a1._biasedBits)
  {
    if (v1)
    {
      do
      {
        result = v1 == a1._biasedBits;
        if (v1 == a1._biasedBits)
        {
          break;
        }

        v4 = v1 > 0xFF;
        v1 >>= 8;
      }

      while (v4);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return 1;
  }

  return result;
}

BOOL protocol witness for Collection.index(_:offsetBy:) in conformance _ValidUTF8Buffer@<W0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, unsigned int *a3@<X8>)
{
  v6 = *a1;
  v7 = *v3;
  if (!_ValidUTF8Buffer._isValid(_:)(v7))
  {
    goto LABEL_10;
  }

  result = _ValidUTF8Buffer._isValid(_:)(v6);
  if (!result)
  {
    goto LABEL_10;
  }

  v9 = __clz(v7);
  v10 = __clz(v6);
  v11 = __OFADD__(a2, (v9 - v10) >> 3);
  v12 = a2 + ((v9 - v10) >> 3);
  if (v11)
  {
    __break(1u);
    goto LABEL_10;
  }

  if ((v12 & 0x8000000000000000) != 0 || 4 - (v9 >> 3) < v12)
  {
LABEL_10:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *a3 = v7 >> (4 * (v12 & 7)) >> (4 * (v12 & 7));
  return result;
}

unint64_t protocol witness for Collection.index(_:offsetBy:limitedBy:) in conformance _ValidUTF8Buffer@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, unsigned int *a3@<X2>, uint64_t a4@<X8>)
{
  result = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(*a1, a2, *a3, *v4);
  *a4 = result;
  *(a4 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t protocol witness for Collection.distance(from:to:) in conformance _ValidUTF8Buffer(Swift::_ValidUTF8Buffer::Index *a1, unsigned int *a2)
{
  biasedBits = a1->_biasedBits;
  v3 = *a2;
  if (!_ValidUTF8Buffer._isValid(_:)(a1->_biasedBits) || !_ValidUTF8Buffer._isValid(_:)(v3))
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return (__clz(biasedBits) - __clz(v3)) >> 3;
}

Swift::Void __swiftcall _ValidUTF8Buffer.append(_:)(Swift::UInt8 a1)
{
  if (HIBYTE(*v1))
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *v1 |= (a1 + 1) << (-(__clz(*v1) & 0x18) & 0x18);
}

Swift::UInt8 __swiftcall _ValidUTF8Buffer.removeFirst()()
{
  v1 = *v0;
  if (!*v0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  result = v1 - 1;
  *v0 = v1 >> 8;
  return result;
}

uint64_t _ValidUTF8Buffer.replaceSubrange<A>(_:with:)(unint64_t a1, uint64_t a2, const char *a3)
{
  v7 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 8);
  swift_getAssociatedTypeWitness(0, v11, v12, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v30 - v16;
  v18 = *v3;
  if (a1)
  {
    if (!v18)
    {
      goto LABEL_34;
    }

    v19 = *v3;
    while (v19 != a1)
    {
      v20 = v19 > 0xFF;
      v19 >>= 8;
      if (!v20)
      {
        goto LABEL_34;
      }
    }
  }

  if (HIDWORD(a1))
  {
    if (!v18)
    {
      goto LABEL_34;
    }

    v27 = *v3;
    while (v27 != HIDWORD(a1))
    {
      v20 = v27 > 0xFF;
      v27 >>= 8;
      if (!v20)
      {
        goto LABEL_34;
      }
    }
  }

  if (v18 < a1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v21 = a2;
  v31 = v3;
  v32 = v15;
  v22 = 0;
  if (v18 != a1)
  {
    v28 = v18;
    while (v18 >= v28 && v28 > a1)
    {
      if (HIBYTE(v22))
      {
        goto LABEL_34;
      }

      v22 |= v28 << (-(__clz(v22) & 0x18) & 0x18);
      v28 >>= 8;
      if (v28 == a1)
      {
        goto LABEL_11;
      }
    }

LABEL_33:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

LABEL_11:
  (*(v7 + 16))(v9, v21, a3);
  (*(v11 + 32))(a3, v11);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v11, a3, v14, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v24 = *(AssociatedConformanceWitness + 16);
  v24(&v33, v14, AssociatedConformanceWitness);
  if ((v33 & 0x100) == 0)
  {
    v25 = v33;
    while (!HIBYTE(v22))
    {
      v22 |= (v25 + 1) << (-(__clz(v22) & 0x18) & 0x18);
      v24(&v33, v14, AssociatedConformanceWitness);
      v25 = v33;
      if (BYTE1(v33) == 1)
      {
        goto LABEL_15;
      }
    }

LABEL_34:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

LABEL_15:
  result = (*(v32 + 8))(v17, v14);
  if (v18 < HIDWORD(a1))
  {
    goto LABEL_33;
  }

  if (HIDWORD(a1))
  {
    v29 = HIDWORD(a1);
    while (v29 <= HIDWORD(a1))
    {
      if (HIBYTE(v22))
      {
        goto LABEL_34;
      }

      v22 |= v29 << (-(__clz(v22) & 0x18) & 0x18);
      v20 = v29 > 0xFF;
      LODWORD(v29) = v29 >> 8;
      if (!v20)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_33;
  }

LABEL_17:
  *v31 = v22;
  return result;
}

uint64_t protocol witness for RangeReplaceableCollection.replaceSubrange<A>(_:with:) in conformance _ValidUTF8Buffer(Swift::UInt32 *a1, uint64_t a2, const char *a3)
{
  v31 = *(a3 - 1);
  v32 = a2;
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 8);
  swift_getAssociatedTypeWitness(0, v9, v10, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v28 - v14;
  v17._biasedBits = *a1;
  v16._biasedBits = a1[1];
  v18 = *v3;
  if (!_ValidUTF8Buffer._isValid(_:)(v17) || !_ValidUTF8Buffer._isValid(_:)(v16))
  {
    goto LABEL_23;
  }

  if (v18 < v17._biasedBits)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v30 = v13;
  v19 = 0;
  if (v18 != v17._biasedBits)
  {
    v27 = v18;
    while (v18 >= v27 && v17._biasedBits < v27)
    {
      if (HIBYTE(v19))
      {
        goto LABEL_23;
      }

      v19 |= v27 << (-(__clz(v19) & 0x18) & 0x18);
      v27 >>= 8;
      if (v27 == v17._biasedBits)
      {
        goto LABEL_6;
      }
    }

LABEL_22:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

LABEL_6:
  v29 = v3;
  (*(v31 + 16))(v7, v32, a3);
  (*(v9 + 32))(a3, v9);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v9, a3, v12, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v21 = *(AssociatedConformanceWitness + 16);
  v21(&v33, v12, AssociatedConformanceWitness);
  if ((v33 & 0x100) == 0)
  {
    v22 = v33;
    while (!HIBYTE(v19))
    {
      v19 |= (v22 + 1) << (-(__clz(v19) & 0x18) & 0x18);
      v21(&v33, v12, AssociatedConformanceWitness);
      v22 = v33;
      if ((v33 & 0x100) != 0)
      {
        goto LABEL_10;
      }
    }

LABEL_23:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

LABEL_10:
  (*(v30 + 8))(v15, v12);
  if (v18 < v16._biasedBits)
  {
    goto LABEL_22;
  }

  v23 = v29;
  if (v16._biasedBits)
  {
    biasedBits = v16._biasedBits;
    while (v16._biasedBits >= biasedBits)
    {
      if (HIBYTE(v19))
      {
        goto LABEL_23;
      }

      v19 |= biasedBits << (-(__clz(v19) & 0x18) & 0x18);
      v25 = biasedBits >= 0x100;
      biasedBits >>= 8;
      if (!v25)
      {
        goto LABEL_16;
      }
    }

    goto LABEL_22;
  }

LABEL_16:
  result = (*(v31 + 8))(v32, a3);
  *v23 = v19;
  return result;
}

uint64_t protocol witness for RangeReplaceableCollection.init(repeating:count:) in conformance _ValidUTF8Buffer@<X0>(char *a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  result = specialized RangeReplaceableCollection.init(repeating:count:)(*a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for RangeReplaceableCollection.init<A>(_:) in conformance _ValidUTF8Buffer@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, _DWORD *a4@<X8>)
{
  result = specialized RangeReplaceableCollection.init<A>(_:)(a1, a2, a3);
  *a4 = result;
  return result;
}

_BYTE *protocol witness for RangeReplaceableCollection.append(_:) in conformance _ValidUTF8Buffer(_BYTE *result)
{
  if (HIBYTE(*v1))
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *v1 |= (*result + 1) << (-(__clz(*v1) & 0x18) & 0x18);
  return result;
}

uint64_t protocol witness for RangeReplaceableCollection.insert<A>(contentsOf:at:) in conformance _ValidUTF8Buffer(uint64_t a1, unsigned int *a2, const char *a3)
{
  specialized RangeReplaceableCollection.insert<A>(contentsOf:at:)(a1, *a2, a3);
  v5 = *(*(a3 - 1) + 8);

  return v5(a1, a3);
}

uint64_t protocol witness for RangeReplaceableCollection.remove(at:) in conformance _ValidUTF8Buffer@<X0>(unsigned int *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized RangeReplaceableCollection.remove(at:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RangeReplaceableCollection.removeFirst() in conformance _ValidUTF8Buffer(_BYTE *a1@<X8>)
{
  v2 = *v1;
  if (!*v1)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *v1 = v2 >> 8;
  *a1 = v2 - 1;
}

Swift::Void __swiftcall _ValidUTF8Buffer.append(contentsOf:)(Swift::_ValidUTF8Buffer contentsOf)
{
  v2 = 4 - (__clz(*v1) >> 3);
  if (v2 > __clz(contentsOf._biasedBits) >> 3)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *v1 |= contentsOf._biasedBits << (8 * (v2 & 3));
}

uint64_t Range<>.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void, uint64_t, void)@<X4>, uint64_t a5@<X8>)
{
  v7 = a4(0, a2, *(a3 + 8));
  v8 = *(*(v7 - 8) + 32);

  return v8(a5, a1, v7);
}

atomic_ullong *LazySequenceProtocol.compactMap<A>(_:)@<X0>(uint64_t a1@<X0>, atomic_ullong *a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  (*(a5 + 32))(a9, a3, a5);
  swift_getAssociatedTypeWitness(255, a5, a3, &protocol requirements base descriptor for LazySequenceProtocol, associated type descriptor for LazySequenceProtocol.Elements);
  v18 = v17;
  v21 = type metadata accessor for Optional(255, a4, v19, v20);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a5, a3, v18, &protocol requirements base descriptor for LazySequenceProtocol, associated conformance descriptor for LazySequenceProtocol.LazySequenceProtocol.Elements: Sequence);
  v23 = type metadata accessor for LazyMapSequence(0, v18, v21, AssociatedConformanceWitness);
  v24 = (a9 + *(v23 + 44));
  *v24 = a1;
  v24[1] = a2;
  v25 = swift_allocObject(a6, 0x28, 7uLL);
  v25[2] = a3;
  v25[3] = a4;
  v25[4] = a5;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for LazyMapSequence<A, B>, v23, v26);
  v29 = type metadata accessor for LazyFilterSequence(0, v23, WitnessTable, v28);
  v30 = (a9 + *(v29 + 36));
  *v30 = a7;
  v30[1] = v25;
  v31 = swift_allocObject(a8, 0x28, 7uLL);
  v31[2] = a3;
  v31[3] = a4;
  v31[4] = a5;
  v33 = swift_getWitnessTable(protocol conformance descriptor for LazyFilterSequence<A>, v29, v32);
  v34 = (a9 + *(type metadata accessor for LazyMapSequence(0, v29, a4, v33) + 44));
  *v34 = a10;
  v34[1] = v31;

  return a2;
}

void key path setter for String.utf16 : String(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a2[1];
  v3;
  v5;
  *a2 = v4;
  a2[1] = v3;
}

uint64_t (*String.characters.modify(void *a1))()
{
  v4 = *v1;
  v3 = v1[1];
  a1[2] = v1;
  a1[3] = v3;
  *a1 = v4;
  a1[1] = v3;
  v3;
  return String.characters.modify;
}

void String.utf16.modify(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  if (a2)
  {
    a1[1];
    v4;
    *v5 = v3;
    v5[1] = v2;

    v2;
  }

  else
  {
    a1[3];
    *v5 = v3;
    v5[1] = v2;
  }
}

unint64_t key path getter for Substring.utf8 : Substring@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  *a2 = *a1;
  *(a2 + 16) = v3;
  *(a2 + 24) = v2;
  return v2;
}

__n128 key path setter for Substring.characters : Substring(__n128 *a1, __n128 *a2)
{
  v7 = *a1;
  v4 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u64[1];
  v5 = a2[1].n128_u64[1];
  v3;
  v5;
  result = v7;
  *a2 = v7;
  a2[1].n128_u64[0] = v4;
  a2[1].n128_u64[1] = v3;
  return result;
}

void Substring.characters.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3];
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
}

uint64_t (*Substring.characters.modify(void *a1))()
{
  if (swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc(0x30, 0x1722uLL);
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[4] = v1;
  v6 = *(v1 + 2);
  v5 = *(v1 + 3);
  v7 = *v1;
  v4[5] = v5;
  *v4 = v7;
  v4[2] = v6;
  v4[3] = v5;
  v5;
  return Substring.characters.modify;
}

void Substring.unicodeScalars.modify(unint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v6 = (*a1)[2];
  v5 = (*a1)[3];
  v8 = (*a1)[4];
  v7 = (*a1)[5];
  if (a2)
  {
    (*a1)[3];
    v7;
    *v8 = v4;
    v8[1] = v3;
    v8[2] = v6;
    v8[3] = v5;
    v2[3];
  }

  else
  {
    (*a1)[5];
    *v8 = v4;
    v8[1] = v3;
    v8[2] = v6;
    v8[3] = v5;
  }

  free(v2);
}

uint64_t Substring.customPlaygroundQuickLook.getter@<X0>(Swift::UInt64 a1@<X0>, Swift::UInt64 a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  result = Substring.description.getter(a1, a2, a3, a4);
  *a5 = result;
  *(a5 + 8) = v7;
  *(a5 + 32) = 0;
  return result;
}

uint64_t protocol witness for _CustomPlaygroundQuickLookable.customPlaygroundQuickLook.getter in conformance Substring@<X0>(uint64_t a1@<X8>)
{
  result = Substring.description.getter(*v1, v1[1], v1[2], v1[3]);
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 32) = 0;
  return result;
}

uint64_t Collection.index<A>(_:offsetBy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, const char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v51 = a5;
  v49 = a1;
  v50 = a3;
  v48 = a7;
  v46 = *(*(a6 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v46, a4, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v11 = v10;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v45 - v13;
  v15 = *(a4 - 1);
  v16 = MEMORY[0x1EEE9AC00](v12);
  v47 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v45 - v18;
  (*(v15 + 16))(&v45 - v18, a2, a4);
  v52 = *(a6 + 64);
  v20 = v52(a4, a6);
  v21 = *(a6 + 128);
  if ((v20 & 1) != 0 && v21(a4, a6) >= 65)
  {
    v45 = v15;
    v22 = v52;
    if (v52(a4, a6))
    {
      v23 = v21(a4, a6);
      v15 = v45;
      if (v23 < 64)
      {
LABEL_13:
        (*(a6 + 120))(a4, a6);
        goto LABEL_14;
      }
    }

    else
    {
      v26 = v22(a4, a6);
      v23 = v21(a4, a6);
      if ((v26 & 1) == 0)
      {
        v15 = v45;
        if (v23 >= 64)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }

      v15 = v45;
      if (v23 <= 64)
      {
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v46, a4, v11, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v11, AssociatedConformanceWitness);
        v31 = v47;
        (v46[3])(v14, a4);
        v32 = (*(*(*(a6 + 32) + 8) + 16))(v19, v31, a4);
        (*(v15 + 8))(v31, a4);
        if (v32)
        {
          goto LABEL_18;
        }

        goto LABEL_13;
      }
    }

    v53 = 0x8000000000000000;
    v46 = *(a6 + 96);
    v27 = lazy protocol witness table accessor for type Int and conformance Int(v23, v24, v25);
    v28 = v47;
    (v46)(&v53, &type metadata for Int, v27, a4, a6);
    v29 = (*(*(*(a6 + 32) + 8) + 16))(v19, v28, a4);
    (*(v15 + 8))(v28, a4);
    if (v29)
    {
      goto LABEL_18;
    }
  }

LABEL_14:
  v33 = v21(a4, a6);
  v34 = v52;
  if (v33 > 64 || v21(a4, a6) == 64 && (v34(a4, a6) & 1) == 0)
  {
    v35 = v34(a4, a6);
    v36 = v21(a4, a6);
    if (v35)
    {
      if (v36 >= 65)
      {
        goto LABEL_17;
      }
    }

    else if (v36 >= 64)
    {
LABEL_17:
      v53 = 0x7FFFFFFFFFFFFFFFLL;
      v39 = *(a6 + 96);
      v40 = lazy protocol witness table accessor for type Int and conformance Int(v36, v37, v38);
      v41 = v47;
      v39(&v53, &type metadata for Int, v40, a4, a6);
      v42 = (*(*(*(a6 + 32) + 8) + 16))(v41, v19, a4);
      (*(v15 + 8))(v41, a4);
      if ((v42 & 1) == 0)
      {
        goto LABEL_24;
      }

LABEL_18:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    (*(a6 + 120))(a4, a6);
  }

LABEL_24:
  v43 = (*(a6 + 120))(a4, a6);
  (*(v15 + 8))(v19, a4);
  return (*(v51 + 136))(v49, v43, v50);
}

uint64_t Collection.formIndex<A>(_:offsetBy:)(uint64_t a1, uint64_t a2, unint64_t a3, const char *a4, int **a5, uint64_t a6)
{
  v55 = a1;
  v50 = *(*(a6 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v50, a4, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v49 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v47[-v12];
  v57 = a5;
  v56 = a3;
  swift_getAssociatedTypeWitness(0, a5, a3, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v53 = *(v14 - 8);
  v54 = v14;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v52 = &v47[-v16];
  v17 = *(a4 - 1);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v51 = &v47[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v47[-v20];
  (*(v17 + 16))(&v47[-v20], a2, a4);
  v22 = *(a6 + 64);
  v23 = v22(a4, a6);
  v24 = *(a6 + 128);
  if ((v23 & 1) != 0 && v24(a4, a6) >= 65)
  {
    if (v22(a4, a6))
    {
      v25 = v24(a4, a6);
      if (v25 < 64)
      {
LABEL_13:
        (*(a6 + 120))(a4, a6);
        goto LABEL_14;
      }
    }

    else
    {
      v48 = v22(a4, a6);
      v25 = v24(a4, a6);
      if ((v48 & 1) == 0)
      {
        if (v25 >= 64)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }

      if (v25 <= 64)
      {
        v31 = v49;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v50, a4, v49, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v31, AssociatedConformanceWitness);
        (v50[3])(v13, a4);
        v33 = v51;
        LOBYTE(v31) = (*(*(*(a6 + 32) + 8) + 16))(v21, v51, a4);
        (*(v17 + 8))(v33, a4);
        if (v31)
        {
          goto LABEL_18;
        }

        goto LABEL_13;
      }
    }

    v58 = 0x8000000000000000;
    v50 = *(a6 + 96);
    v28 = lazy protocol witness table accessor for type Int and conformance Int(v25, v26, v27);
    (v50)(&v58, &type metadata for Int, v28, a4, a6);
    v29 = v51;
    v30 = (*(*(*(a6 + 32) + 8) + 16))(v21, v51, a4);
    (*(v17 + 8))(v29, a4);
    if (v30)
    {
      goto LABEL_18;
    }
  }

LABEL_14:
  if (v24(a4, a6) > 64 || v24(a4, a6) == 64 && (v22(a4, a6) & 1) == 0)
  {
    v34 = v22(a4, a6);
    v35 = v24(a4, a6);
    if (v34)
    {
      if (v35 >= 65)
      {
        goto LABEL_17;
      }
    }

    else if (v35 >= 64)
    {
LABEL_17:
      v58 = 0x7FFFFFFFFFFFFFFFLL;
      v38 = *(a6 + 96);
      v39 = lazy protocol witness table accessor for type Int and conformance Int(v35, v36, v37);
      v40 = v51;
      v38(&v58, &type metadata for Int, v39, a4, a6);
      v41 = (*(*(*(a6 + 32) + 8) + 16))(v40, v21, a4);
      (*(v17 + 8))(v40, a4);
      if ((v41 & 1) == 0)
      {
        goto LABEL_24;
      }

LABEL_18:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    (*(a6 + 120))(a4, a6);
  }

LABEL_24:
  v42 = (*(a6 + 120))(a4, a6);
  (*(v17 + 8))(v21, a4);
  v44 = v52;
  v43 = v53;
  v45 = v54;
  (*(v53 + 32))(v52, v55, v54);
  (v57[17])(v44, v42, v56);
  return (*(v43 + 8))(v44, v45);
}

uint64_t Collection.index<A>(_:offsetBy:limitedBy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, const char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v54 = a6;
  v52 = a3;
  v53 = a4;
  v50 = a8;
  v51 = a1;
  v48 = *(*(a7 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v48, a5, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v12 = v11;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v46 - v14;
  v16 = *(a5 - 1);
  v17 = MEMORY[0x1EEE9AC00](v13);
  v49 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v46 - v19;
  (*(v16 + 16))(&v46 - v19, a2, a5);
  v55 = *(a7 + 64);
  v21 = v55(a5, a7);
  v22 = *(a7 + 128);
  if ((v21 & 1) != 0 && v22(a5, a7) >= 65)
  {
    v47 = v16;
    v23 = v55;
    if (v55(a5, a7))
    {
      v24 = v22(a5, a7);
      v16 = v47;
      if (v24 < 64)
      {
LABEL_13:
        (*(a7 + 120))(a5, a7);
        goto LABEL_14;
      }
    }

    else
    {
      v27 = v23(a5, a7);
      v24 = v22(a5, a7);
      if ((v27 & 1) == 0)
      {
        v16 = v47;
        if (v24 >= 64)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }

      v16 = v47;
      if (v24 <= 64)
      {
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v48, a5, v12, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v12, AssociatedConformanceWitness);
        v32 = v49;
        (v48[3])(v15, a5);
        v33 = (*(*(*(a7 + 32) + 8) + 16))(v20, v32, a5);
        (*(v16 + 8))(v32, a5);
        if (v33)
        {
          goto LABEL_18;
        }

        goto LABEL_13;
      }
    }

    v56 = 0x8000000000000000;
    v48 = *(a7 + 96);
    v28 = lazy protocol witness table accessor for type Int and conformance Int(v24, v25, v26);
    v29 = v49;
    (v48)(&v56, &type metadata for Int, v28, a5, a7);
    v30 = (*(*(*(a7 + 32) + 8) + 16))(v20, v29, a5);
    (*(v16 + 8))(v29, a5);
    if (v30)
    {
      goto LABEL_18;
    }
  }

LABEL_14:
  v34 = v22(a5, a7);
  v35 = v55;
  if (v34 > 64 || v22(a5, a7) == 64 && (v35(a5, a7) & 1) == 0)
  {
    v36 = v35(a5, a7);
    v37 = v22(a5, a7);
    if (v36)
    {
      if (v37 >= 65)
      {
        goto LABEL_17;
      }
    }

    else if (v37 >= 64)
    {
LABEL_17:
      v56 = 0x7FFFFFFFFFFFFFFFLL;
      v40 = *(a7 + 96);
      v41 = lazy protocol witness table accessor for type Int and conformance Int(v37, v38, v39);
      v42 = v49;
      v40(&v56, &type metadata for Int, v41, a5, a7);
      v43 = (*(*(*(a7 + 32) + 8) + 16))(v42, v20, a5);
      (*(v16 + 8))(v42, a5);
      if ((v43 & 1) == 0)
      {
        goto LABEL_24;
      }

LABEL_18:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    (*(a7 + 120))(a5, a7);
  }

LABEL_24:
  v44 = (*(a7 + 120))(a5, a7);
  (*(v16 + 8))(v20, a5);
  return (*(v54 + 144))(v51, v44, v52, v53);
}

BOOL Collection.formIndex<A>(_:offsetBy:limitedBy:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const char *a5, int **a6, uint64_t a7)
{
  v65 = a3;
  v66 = a1;
  v57 = *(*(a7 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v57, a5, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v13 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v56 = &v54[-v14];
  v63 = a6;
  v62 = a4;
  swift_getAssociatedTypeWitness(255, a6, a4, &protocol requirements base descriptor for Collection, associated type descriptor for Collection.Index);
  v64 = v15;
  v18 = type metadata accessor for Optional(0, v15, v16, v17);
  v58 = *(v18 - 8);
  v59 = v18;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v61 = &v54[-v20];
  v21 = *(a5 - 1);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v60 = &v54[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v54[-v24];
  (*(v21 + 16))(&v54[-v24], a2, a5);
  v26 = *(a7 + 64);
  v27 = v26(a5, a7);
  v28 = *(a7 + 128);
  if ((v27 & 1) != 0 && v28(a5, a7) >= 65)
  {
    if (v26(a5, a7))
    {
      v29 = v28(a5, a7);
      if (v29 < 64)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v55 = v26(a5, a7);
      v29 = v28(a5, a7);
      if ((v55 & 1) == 0)
      {
        if (v29 >= 64)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }

      if (v29 <= 64)
      {
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v57, a5, v13, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
        (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v13, AssociatedConformanceWitness);
        v36 = v60;
        (v57[3])(v56, a5);
        v37 = (*(*(*(a7 + 32) + 8) + 16))(v25, v36, a5);
        (*(v21 + 8))(v36, a5);
        if ((v37 & 1) == 0)
        {
LABEL_13:
          (*(a7 + 120))(a5, a7);
          goto LABEL_14;
        }

LABEL_18:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }
    }

    v67 = 0x8000000000000000;
    v57 = *(a7 + 96);
    v32 = lazy protocol witness table accessor for type Int and conformance Int(v29, v30, v31);
    (v57)(&v67, &type metadata for Int, v32, a5, a7);
    v33 = v60;
    v34 = (*(*(*(a7 + 32) + 8) + 16))(v25, v60, a5);
    (*(v21 + 8))(v33, a5);
    if (v34)
    {
      goto LABEL_18;
    }
  }

LABEL_14:
  if (v28(a5, a7) <= 64 && (v28(a5, a7) != 64 || (v26(a5, a7) & 1) != 0))
  {
    goto LABEL_24;
  }

  v38 = v26(a5, a7);
  v39 = v28(a5, a7);
  if (v38)
  {
    if (v39 >= 65)
    {
      goto LABEL_17;
    }

LABEL_23:
    (*(a7 + 120))(a5, a7);
    goto LABEL_24;
  }

  if (v39 < 64)
  {
    goto LABEL_23;
  }

LABEL_17:
  v67 = 0x7FFFFFFFFFFFFFFFLL;
  v42 = *(a7 + 96);
  v43 = lazy protocol witness table accessor for type Int and conformance Int(v39, v40, v41);
  v44 = v60;
  v42(&v67, &type metadata for Int, v43, a5, a7);
  v45 = (*(*(*(a7 + 32) + 8) + 16))(v44, v25, a5);
  (*(v21 + 8))(v44, a5);
  if (v45)
  {
    goto LABEL_18;
  }

LABEL_24:
  v46 = (*(a7 + 120))(a5, a7);
  (*(v21 + 8))(v25, a5);
  v47 = v61;
  v49 = v65;
  v48 = v66;
  (v63[18])(v66, v46, v65, v62);
  v50 = v64;
  v51 = *(v64 - 8);
  (*(v51 + 8))(v48, v64);
  v52 = (*(v51 + 48))(v47, 1, v50);
  if (v52 == 1)
  {
    (*(v58 + 8))(v47, v59);
    (*(v51 + 16))(v48, v49, v50);
  }

  else
  {
    (*(v51 + 32))(v48, v47, v50);
  }

  return v52 != 1;
}