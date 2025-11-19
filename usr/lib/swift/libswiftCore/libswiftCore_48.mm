Swift::UInt16 __swiftcall __SharedStringStorage.character(at:)(Swift::Int at)
{
  v2 = *(v1 + 32);
  v3._rawBits = String.UTF16View.index(_:offsetBy:)(15, at)._rawBits;
  rawBits = v3._rawBits;
  v5 = (v2 >> 59) & 1;
  if ((v1 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((v3._rawBits & 0xC) == 4 << v5)
  {
    rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(v3)._rawBits;
  }

  v6 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v6 = v2 & 0xFFFFFFFFFFFFLL;
  }

  v7 = rawBits >> 16;
  if (rawBits >> 16 >= v6)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if ((v1 & 0x1000000000000000) != 0)
  {

    return String.UTF16View._foreignSubscript(position:)(rawBits);
  }

  else
  {
    if ((rawBits & 1) == 0)
    {
      v7 = _StringGuts.scalarAlignSlow(_:)(rawBits)._rawBits >> 16;
    }

    v1;
    LODWORD(v8) = _StringGuts.fastUTF8Scalar(startingAt:)(v7);
    v9 = Unicode.Scalar.UTF16View.subscript.getter(rawBits >> 14, v8);
    v1;
    return v9;
  }
}

void __SharedStringStorage.getCharacters(_:range:)(unint64_t a1, Swift::Int a2, uint64_t a3)
{
  if (a2 < 0 || a3 < 0)
  {
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v5 = a2 + a3;
  if (__OFADD__(a2, a3))
  {
    __break(1u);
    goto LABEL_10;
  }

  v6 = *(v3 + 32);
  if ((v6 & 0xFFFFFFFFFFFFLL) < v5)
  {
    goto LABEL_10;
  }

  if (__OFSUB__(v5, a2))
  {
    __break(1u);
LABEL_14:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a3 < 0)
  {
    goto LABEL_14;
  }

  v3;
  v8._rawBits = 15;
  v9 = String.UTF16View._indexRange(for:from:)(a2, v5, v8, v6, v3);
  String.UTF16View._nativeCopy(into:alignedRange:)(a1, v5 - a2, v9, v10, v6, v3);

  v3;
}

uint64_t __SharedStringStorage.getCString(_:maxLength:encoding:)(char *__dst, uint64_t a2, unint64_t a3)
{
  v5 = *(v3 + 32);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (a3 != 4)
    {
      goto LABEL_3;
    }

LABEL_7:
    if ((v5 & 0xFFFFFFFFFFFFLL) >= a2)
    {
      return 0;
    }

    specialized UnsafeMutablePointer.initialize(from:count:)(*(v3 + 24), v5 & 0xFFFFFFFFFFFFLL, __dst);
    __dst[*(v3 + 32) & 0xFFFFFFFFFFFFLL] = 0;
    return 1;
  }

  if (a3 <= 0x1E && ((1 << a3) & 0x40000012) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  CStringTrampoline = _swift_stdlib_NSStringGetCStringTrampoline(v3, __dst, a2, a3);
  if (CStringTrampoline < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return CStringTrampoline;
}

uint64_t __SharedStringStorage.isEqualToString(to:)(uint64_t result, double a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, void *))
{
  if (!result)
  {
    return result;
  }

  v5 = result;
  if (result == v4)
  {
    return 1;
  }

  if (result < 0)
  {
LABEL_10:
    result = _swift_stdlib_isNSString(a2);
    if (result)
    {
      v9 = [v5 length];
      v11 = MEMORY[0x1EEE9AC00](v9);
      MEMORY[0x1EEE9AC00](v11);
      v10 = specialized _withCocoaASCIIPointer<A>(_:requireStableAddress:work:)(v5, a4);
      if (v10 == 2)
      {
        return String.UTF16View.count.getter(v4[4], v4) == v9 && [v4 compare:v5 options:2 range:0 locale:{objc_msgSend(v4, sel_length), 0}] == 0;
      }

      else
      {
        return v10 & 1;
      }
    }

    return result;
  }

  v7 = *v4;
  v8 = _swift_classOfObjCHeapObject(result);
  if (type metadata accessor for __StringStorage() != v8)
  {
    if (v7 == v8)
    {

      return specialized _AbstractStringStorage._nativeIsEqual<A>(_:)(v5);
    }

    goto LABEL_10;
  }

  return specialized _AbstractStringStorage._nativeIsEqual<A>(_:)(v5);
}

Swift::Int __swiftcall _findStringSwitchCase(cases:string:)(Swift::OpaquePointer cases, Swift::String string)
{
  v2 = *(cases._rawValue + 2);
  if (v2)
  {
    object = string._object;
    countAndFlagsBits = string._countAndFlagsBits;
    v5 = 0;
    v6 = cases._rawValue + 32;
    v7 = string._object & 0x6000000000000000;
    v8 = 8;
    do
    {
      v9 = &v6[24 * v5];
      v10 = v9[16];
      if ((v10 & 1) != 0 || (v11 = *v9) == 0)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v12 = *(v9 + 1);
      if ((v12 & 0x8000000000000000) != 0)
      {
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      if (v12)
      {
        if (v12 <= 0xF)
        {
          v15 = v12 - 8;
          if (v12 < 8)
          {
            v8 = v12;
          }

          v16 = v8 - 1;
          if (v12 < v8 - 1)
          {
            v16 = v12;
          }

          if (v8 == v16)
          {
            _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
          }

          v13 = *v11;
          if (v12 != 1)
          {
            v13 |= v11[1] << 8;
            if (v12 != 2)
            {
              v13 |= v11[2] << 16;
              if (v12 != 3)
              {
                v13 |= v11[3] << 24;
                if (v12 != 4)
                {
                  v13 |= v11[4] << 32;
                  if (v12 != 5)
                  {
                    v13 |= v11[5] << 40;
                    if (v12 != 6)
                    {
                      v13 |= v11[6] << 48;
                      if (v12 != 7)
                      {
                        v13 |= v11[7] << 56;
                      }
                    }
                  }
                }
              }
            }
          }

          if (v12 < 9)
          {
            v17 = 0;
          }

          else
          {
            v17 = 0;
            v18 = 0;
            v19 = v11 + 8;
            do
            {
              v20 = *v19++;
              v17 |= v20 << v18;
              v18 += 8;
              --v15;
            }

            while (v15);
          }

          v21 = 0xA000000000000000;
          if (((v17 | v13) & 0x8080808080808080) == 0)
          {
            v21 = 0xE000000000000000;
          }

          v14 = v21 | (v12 << 56) | v17;
          if (v13 != countAndFlagsBits)
          {
            goto LABEL_38;
          }
        }

        else
        {
          if ((v10 & 2) != 0)
          {
            v12 |= 0xC000000000000000;
          }

          v13 = v12 | 0x1000000000000000;
          v14 = (v11 + 0x7FFFFFFFFFFFFFE0) | 0x8000000000000000;
          if ((v12 | 0x1000000000000000) != countAndFlagsBits)
          {
            goto LABEL_38;
          }
        }
      }

      else
      {
        v13 = 0;
        v14 = 0xE000000000000000;
        if (countAndFlagsBits)
        {
          goto LABEL_38;
        }
      }

      if (v14 == object)
      {
        v14;
        return v5;
      }

LABEL_38:
      if ((~v14 & 0x6000000000000000) == 0 && v7 == 0x6000000000000000)
      {
        v14;
      }

      else
      {
        v23 = _stringCompareInternal(_:_:expecting:)(v13, v14, countAndFlagsBits, object, 0);
        v14;
        if (v23)
        {
          return v5;
        }
      }

      ++v5;
      v8 = 8;
    }

    while (v5 != v2);
  }

  return -1;
}

Swift::Int __swiftcall _findStringSwitchCaseWithCache(cases:string:cache:)(Swift::OpaquePointer cases, Swift::String string, Swift::_OpaqueStringSwitchCache *cache)
{
  object = string._object;
  countAndFlagsBits = string._countAndFlagsBits;
  context[2] = *MEMORY[0x1E69E9840];
  p_b = &cache->b;
  a = cache->a;
  context[0] = cases._rawValue;
  context[1] = &cache->b;
  v8 = cases._rawValue;
  if (a != -1)
  {
    swift_once(cache, @objc _createStringTableCache(_:), context);
    v8 = context[0];
  }

  v8;
  v9 = *p_b;
  if (!*(*p_b + 16))
  {
    return -1;
  }

  *p_b;
  v10 = specialized __RawDictionaryStorage.find<A>(_:)(countAndFlagsBits, object);
  if (v11)
  {
    v12 = *(*(v9 + 56) + 8 * v10);
  }

  else
  {
    v12 = -1;
  }

  v9;
  return v12;
}

Swift::Void __swiftcall _createStringTableCache(_:)(Builtin::RawPointer a1)
{
  v1 = *a1;
  v2 = *(a1 + 1);
  v3 = *(*a1 + 16);
  *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(&_swiftEmptyDictionarySingleton);
  if (qword_1ED412D10 >= v3)
  {
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
    }
  }

  else
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      v5 = v3;
      v6 = 1;
    }

    else
    {
      v5 = v3;
      v6 = 0;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v5, v6);
  }

  v7 = *(v1 + 16);
  if (v7)
  {
    v33 = v2;
    v1;
    v8 = 0;
    v9 = 8;
    while (1)
    {
      if (v8 >= *(v1 + 16))
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v11 = v1 + 32 + 24 * v8;
      v12 = *(v11 + 16);
      if (v12)
      {
        goto LABEL_59;
      }

      v13 = *v11;
      if (!*v11)
      {
        goto LABEL_59;
      }

      v14 = *(v11 + 8);
      if ((v14 & 0x8000000000000000) != 0)
      {
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      if (v14)
      {
        if (v14 <= 0xF)
        {
          v17 = v14 - 8;
          if (v14 < 8)
          {
            v9 = v14;
          }

          v18 = v9 - 1;
          if (v14 < v9 - 1)
          {
            v18 = v14;
          }

          if (v9 == v18)
          {
            _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
          }

          v15 = *v13;
          if (v14 != 1)
          {
            v15 |= v13[1] << 8;
            if (v14 != 2)
            {
              v15 |= v13[2] << 16;
              if (v14 != 3)
              {
                v15 |= v13[3] << 24;
                if (v14 != 4)
                {
                  v15 |= v13[4] << 32;
                  if (v14 != 5)
                  {
                    v15 |= v13[5] << 40;
                    if (v14 != 6)
                    {
                      v15 |= v13[6] << 48;
                      if (v14 != 7)
                      {
                        v15 |= v13[7] << 56;
                      }
                    }
                  }
                }
              }
            }
          }

          if (v14 < 9)
          {
            v19 = 0;
          }

          else
          {
            v19 = 0;
            v20 = 0;
            v21 = v13 + 8;
            do
            {
              v22 = *v21++;
              v19 |= v22 << v20;
              v20 += 8;
              --v17;
            }

            while (v17);
          }

          v23 = 0xA000000000000000;
          if (((v19 | v15) & 0x8080808080808080) == 0)
          {
            v23 = 0xE000000000000000;
          }

          v16 = v23 | (v14 << 56) | v19;
        }

        else
        {
          if ((v12 & 2) != 0)
          {
            v14 |= 0xC000000000000000;
          }

          v15 = v14 | 0x1000000000000000;
          v16 = (v13 + 0x7FFFFFFFFFFFFFE0) | 0x8000000000000000;
        }
      }

      else
      {
        v15 = 0;
        v16 = 0xE000000000000000;
      }

      v24 = swift_isUniquelyReferenced_nonNull_native(&_swiftEmptyDictionarySingleton);
      v25 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v16);
      v27 = (v26 & 1) == 0;
      v28 = qword_1ED412D08 + v27;
      if (__OFADD__(qword_1ED412D08, v27))
      {
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_59:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v29 = v26;
      if (qword_1ED412D10 < v28)
      {
        break;
      }

      if (v24)
      {
        goto LABEL_48;
      }

      v32 = v25;
      specialized _NativeDictionary.copy()();
      v25 = v32;
      if ((v29 & 1) == 0)
      {
LABEL_49:
        *(&_swiftEmptyDictionarySingleton + (v25 >> 6) + 8) = (*(&_swiftEmptyDictionarySingleton + (v25 >> 6) + 8) | (1 << v25));
        v31 = (qword_1ED412D28 + 16 * v25);
        *v31 = v15;
        v31[1] = v16;
        *(qword_1ED412D30 + 8 * v25) = v8;
        if (__OFADD__(qword_1ED412D08, 1))
        {
          goto LABEL_62;
        }

        ++qword_1ED412D08;
        goto LABEL_11;
      }

LABEL_10:
      v10 = v25;
      v16;
      *(qword_1ED412D30 + 8 * v10) = v8;
LABEL_11:
      ++v8;
      v9 = 8;
      if (v8 == v7)
      {
        v1;
        v2 = v33;
        goto LABEL_55;
      }
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v28, v24);
    v25 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v16);
    if ((v29 & 1) != (v30 & 1))
    {
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String);
    }

LABEL_48:
    if ((v29 & 1) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_10;
  }

LABEL_55:
  *v2 = &_swiftEmptyDictionarySingleton;

  v1;
}

id _StringRepresentation._form.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = v2;
  v3 = *(v1 + 32);
  *(a1 + 8) = v3;
  return outlined copy of _StringRepresentation._Form(v2, v3);
}

void _StringRepresentation._form.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  outlined consume of _StringRepresentation._Form(*(v1 + 24), *(v1 + 32));
  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
}

uint64_t _StringRepresentation._objectIdentifier.getter()
{
  if (*(v0 + 32))
  {
    v1 = 0;
  }

  else
  {
    v1 = *(v0 + 24);
  }

  if (*(v0 + 32) == 1)
  {
    return *(v0 + 24);
  }

  else
  {
    return v1;
  }
}

void _StringGuts._classify()(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    _StringGuts.nativeCapacity.getter(a1, a2);
    v11 = 0;
    v10 = (a2 >> 62) & 1;
    v12 = 3;
    v9 = 15;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
    v7 = _StringGuts.nativeCapacity.getter(a1, a2);
    if (v8)
    {
      v9 = 0;
    }

    else
    {
      v9 = v7;
    }

    v10 = a1 >> 63;
    if ((a2 & 0x4000000000000000) != 0)
    {
      v11 = a2 & 0xFFFFFFFFFFFFFFFLL;
      swift_unknownObjectRetain((a2 & 0xFFFFFFFFFFFFFFFLL));
      outlined consume of _StringRepresentation._Form(0, 3u);
      v12 = 0;
    }

    else if ((a2 & 0x8000000000000000) != 0)
    {
      v11 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      outlined consume of _StringRepresentation._Form(0, 3u);
      v12 = 2;
    }

    else
    {
      if ((a1 & 0x2000000000000000) == 0)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0, 0xE000000000000000, "Swift/StringTesting.swift", 0x19uLL, 2, 0x73uLL);
      }

      v11 = a2 & 0xFFFFFFFFFFFFFFFLL;
      (a2 & 0xFFFFFFFFFFFFFFFLL);
      outlined consume of _StringRepresentation._Form(0, 3u);
      v12 = 1;
    }
  }

  *a3 = v10;
  *(a3 + 8) = v5;
  *(a3 + 16) = v9;
  *(a3 + 24) = v11;
  *(a3 + 32) = v12;
}

char *UnsafeMutableRawPointer.initializeMemory<A>(as:from:count:)(int a1, char *a2, uint64_t a3, char *__dst, unint64_t *a5)
{
  if (a3 < 0)
  {
    goto LABEL_10;
  }

  v5 = *(*(a5 - 1) + 72);
  v6 = a3 * v5;
  if ((a3 * v5) >> 64 != (a3 * v5) >> 63)
  {
    __break(1u);
    goto LABEL_10;
  }

  v8 = &__dst[v6];
  v9 = &a2[v6];
  if (v8 > a2 && v9 > __dst)
  {
LABEL_10:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  swift_arrayInitWithCopy(__dst, a2, a3, a5);
  return __dst;
}

uint64_t UnsafeMutableRawBufferPointer.subscript.setter(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0 || !a3 || a4 - a3 <= a2)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  *(a3 + a2) = result;
  return result;
}

Swift::String::Index __swiftcall String.UnicodeScalarView.index(after:)(Swift::String::Index after)
{
  v3 = v2;
  v4 = v1;
  v5._rawBits = _StringGuts.validateScalarIndex(_:)(after)._rawBits;
  if ((v3 & 0x1000000000000000) != 0)
  {

    return String.UnicodeScalarView._foreignIndex(after:)(v5);
  }

  else
  {
    v6 = v5._rawBits >> 16;
    if ((v3 & 0x2000000000000000) != 0)
    {
      v12[0] = v4;
      v12[1] = v3 & 0xFFFFFFFFFFFFFFLL;
      v8 = *(v12 + v6);
    }

    else
    {
      if ((v4 & 0x1000000000000000) != 0)
      {
        v7 = ((v3 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v7 = _StringObject.sharedUTF8.getter(v4, v3);
      }

      v8 = v7[v6];
    }

    v9 = v8;
    v10 = __clz(v8 ^ 0xFF) - 24;
    if (v9 >= 0)
    {
      LOBYTE(v10) = 1;
    }

    return (((v6 + v10) << 16) | 5);
  }
}

Swift::Int __swiftcall _StringGuts.fastUTF8ScalarLength(startingAt:)(Swift::Int startingAt)
{
  if ((v2 & 0x2000000000000000) != 0)
  {
    v9[0] = v1;
    v9[1] = v2 & 0xFFFFFFFFFFFFFFLL;
    v3 = v9;
  }

  else if ((v1 & 0x1000000000000000) != 0)
  {
    v3 = ((v2 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v8 = startingAt;
    v3 = _StringObject.sharedUTF8.getter(v1, v2);
    startingAt = v8;
  }

  v4 = *(v3 + startingAt);
  v5 = v4;
  v6 = __clz(v4 ^ 0xFF) - 24;
  if (v5 >= 0)
  {
    LOBYTE(v6) = 1;
  }

  return v6;
}

Swift::String::Index __swiftcall String.UnicodeScalarView._foreignIndex(after:)(Swift::String::Index after)
{
  v2 = _StringGuts.foreignErrorCorrectedUTF16CodeUnit(at:)(after);
  v3 = 0x10000;
  if (v2 >> 10 == 54)
  {
    v3 = 0x20000;
  }

  return ((v3 + after._rawBits) & 0xFFFFFFFFFFFF0000 | 9);
}

Swift::String::Index __swiftcall String.UnicodeScalarView._foreignIndex(before:)(Swift::String::Index before)
{
  v2 = _StringGuts.foreignErrorCorrectedUTF16CodeUnit(at:)(((before._rawBits & 0xFFFFFFFFFFFF0000) - 0x10000));
  v3 = -65536;
  if (v2 >> 10 == 55)
  {
    v3 = -131072;
  }

  return ((v3 + before._rawBits) & 0xFFFFFFFFFFFF0000 | 9);
}

uint64_t String.UnicodeScalarView.subscript.getter(Swift::String::Index a1, uint64_t a2, unint64_t a3)
{
  v5._rawBits = _StringGuts.validateScalarIndex(_:)(a1)._rawBits;
  if ((a3 & 0x1000000000000000) != 0)
  {
    v10 = v5._rawBits & 0xFFFFFFFFFFFF0000;

    return *&_StringGuts.foreignErrorCorrectedScalar(startingAt:)(v10);
  }

  else
  {
    v7 = v5._rawBits >> 16;
    if ((a3 & 0x2000000000000000) != 0)
    {
      v13[0] = a2;
      v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
      return _decodeScalar(_:startingAt:)(v13, v6._rawBits, v7);
    }

    else
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        v8 = ((a3 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v11 = a3;
        v12 = v5._rawBits >> 16;
        v8 = _StringObject.sharedUTF8.getter(a2, v11);
        v7 = v12;
      }

      return _decodeScalar(_:startingAt:)(v8, v6._rawBits, v7);
    }
  }
}

Swift::tuple_Unicode_Scalar_scalarLength_Int __swiftcall _StringGuts.errorCorrectedScalar(startingAt:)(Swift::Int startingAt)
{
  if ((v2 & 0x1000000000000000) != 0)
  {
    v7 = startingAt << 16;

    v8 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)(v7);
    scalarLength = v8.scalarLength;
    value = v8._0._value;
  }

  else if ((v2 & 0x2000000000000000) != 0)
  {
    v9[0] = v1;
    v9[1] = v2 & 0xFFFFFFFFFFFFFFLL;
    value = _decodeScalar(_:startingAt:)(v9, v1, startingAt);
  }

  else
  {
    if ((v1 & 0x1000000000000000) != 0)
    {
      v4 = ((v2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v4 = _StringObject.sharedUTF8.getter(v1, v2);
    }

    value = _decodeScalar(_:startingAt:)(v4, v1, startingAt);
  }

  result.scalarLength = scalarLength;
  result._0._value = value;
  return result;
}

Swift::String::Index_optional __swiftcall String.UnicodeScalarView.index(_:offsetBy:limitedBy:)(Swift::String::Index _, Swift::Int offsetBy, Swift::String::Index limitedBy)
{
  v5 = v4;
  v6 = v3;
  rawBits = limitedBy._rawBits;
  v9 = (v3 >> 59) & 1;
  if ((v4 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  if ((limitedBy._rawBits & 0xC) == 4 << v9)
  {
    v33 = _._rawBits;
    rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(limitedBy)._rawBits;
    _._rawBits = v33;
  }

  v11 = _._rawBits;
  if ((_._rawBits & 0xC) == v10)
  {
    v34 = _._rawBits;
    v11 = _StringGuts._slowEnsureMatchingEncoding(_:)(_)._rawBits;
    _._rawBits = v34;
  }

  v12._rawBits = _StringGuts.validateInclusiveScalarIndex(_:)(_)._rawBits;
  v13 = rawBits >> 14;
  if (offsetBy < 0)
  {
    v21 = 0;
    v22 = v11 >> 14;
    v23 = &v36 + 7;
    v24 = &v36 + 6;
    while (v22 < v13 || v13 < v12._rawBits >> 14)
    {
      v25 = v12._rawBits >> 16;
      if (!(v12._rawBits >> 16))
      {
LABEL_53:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      if ((v5 & 0x1000000000000000) != 0)
      {
        v36 = v23;
        v31 = v24;
        v12._rawBits = String.UnicodeScalarView._foreignIndex(before:)(v12)._rawBits;
        v24 = v31;
        v23 = v36;
      }

      else
      {
        if ((v5 & 0x2000000000000000) != 0)
        {
          v37 = v6;
          v38 = v5 & 0xFFFFFFFFFFFFFFLL;
          if ((v23[v25] & 0xC0) == 0x80)
          {
            v28 = &v24[v25];
            v29 = 1;
            do
            {
              ++v29;
              v30 = *v28--;
            }

            while ((v30 & 0xC0) == 0x80);
          }

          else
          {
            v29 = 1;
          }

          v25 -= v29;
        }

        else
        {
          v26 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
          if ((v6 & 0x1000000000000000) == 0)
          {
            v35 = v24;
            v36 = v23;
            v26 = _StringObject.sharedUTF8.getter(v6, v5);
            v24 = v35;
            v23 = v36;
          }

          do
          {
            v27 = v26[--v25] & 0xC0;
          }

          while (v27 == 128);
        }

        v12._rawBits = (v25 << 16) | 5;
      }

      if (--v21 <= offsetBy)
      {
        if (v22 < v13 || v12._rawBits >> 14 >= v13)
        {
          goto LABEL_52;
        }

        break;
      }
    }
  }

  else
  {
    v14 = v11 >> 14;
    if (offsetBy)
    {
      if ((v5 & 0x2000000000000000) != 0)
      {
        v15 = HIBYTE(v5) & 0xF;
      }

      else
      {
        v15 = v6 & 0xFFFFFFFFFFFFLL;
      }

      while (v13 < v14 || v12._rawBits >> 14 < v13)
      {
        v16 = v12._rawBits >> 16;
        if (v12._rawBits >> 16 >= v15)
        {
          goto LABEL_53;
        }

        if ((v5 & 0x1000000000000000) != 0)
        {
          v12._rawBits = String.UnicodeScalarView._foreignIndex(after:)(v12)._rawBits;
          if (!--offsetBy)
          {
            goto LABEL_26;
          }
        }

        else
        {
          if ((v5 & 0x2000000000000000) != 0)
          {
            v37 = v6;
            v38 = v5 & 0xFFFFFFFFFFFFFFLL;
            v18 = *(&v37 + v16);
          }

          else
          {
            v17 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
            if ((v6 & 0x1000000000000000) == 0)
            {
              v17 = _StringObject.sharedUTF8.getter(v6, v5);
            }

            v18 = v17[v16];
          }

          v19 = v18;
          v20 = __clz(v18 ^ 0xFF) - 24;
          if (v19 >= 0)
          {
            LOBYTE(v20) = 1;
          }

          v12._rawBits = ((v16 + v20) << 16) | 5;
          if (!--offsetBy)
          {
            goto LABEL_26;
          }
        }
      }
    }

    else
    {
LABEL_26:
      if (v13 < v14 || v13 >= v12._rawBits >> 14)
      {
LABEL_52:
        v32 = 0;
        goto LABEL_54;
      }
    }
  }

  v12._rawBits = 0;
  v32 = 1;
LABEL_54:
  result.value = v12;
  result.is_nil = v32;
  return result;
}

Swift::UInt64 protocol witness for BidirectionalCollection.index(before:) in conformance String.UnicodeScalarView@<X0>(Swift::String::Index *a1@<X0>, Swift::UInt64 *a2@<X8>)
{
  v5 = *v2;
  v4 = v2[1];
  v6._rawBits = _StringGuts.validateInclusiveScalarIndex(_:)(a1->_rawBits)._rawBits;
  if (!(v6._rawBits >> 14))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if ((v4 & 0x1000000000000000) != 0)
  {
    result = String.UnicodeScalarView._foreignIndex(before:)(v6)._rawBits;
  }

  else
  {
    if ((v4 & 0x2000000000000000) != 0)
    {
      v16[0] = v5;
      v16[1] = v4 & 0xFFFFFFFFFFFFFFLL;
      if ((*(v16 + (v6._rawBits >> 16) - 1) & 0xC0) == 0x80)
      {
        v12 = v16 + (v6._rawBits >> 16) - 2;
        v11 = 1;
        do
        {
          ++v11;
          v13 = *v12--;
        }

        while ((v13 & 0xC0) == 0x80);
      }

      else
      {
        v11 = 1;
      }
    }

    else
    {
      if ((v5 & 0x1000000000000000) != 0)
      {
        v7 = ((v4 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        rawBits = v6._rawBits;
        v7 = _StringObject.sharedUTF8.getter(v5, v4);
        v6._rawBits = rawBits;
      }

      v8 = 0;
      v9 = v7 + (v6._rawBits >> 16) - 1;
      do
      {
        v10 = *(v9 + v8--) & 0xC0;
      }

      while (v10 == 128);
      v11 = -v8;
    }

    result = (v6._rawBits - (v11 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
  }

  *a2 = result;
  return result;
}

Swift::UInt64 protocol witness for BidirectionalCollection.formIndex(before:) in conformance String.UnicodeScalarView(Swift::String::Index *a1)
{
  v4 = *v1;
  v3 = v1[1];
  v5._rawBits = _StringGuts.validateInclusiveScalarIndex(_:)(a1->_rawBits)._rawBits;
  if (!(v5._rawBits >> 14))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if ((v3 & 0x1000000000000000) != 0)
  {
    result = String.UnicodeScalarView._foreignIndex(before:)(v5)._rawBits;
  }

  else
  {
    if ((v3 & 0x2000000000000000) != 0)
    {
      v15[0] = v4;
      v15[1] = v3 & 0xFFFFFFFFFFFFFFLL;
      if ((*(v15 + (v5._rawBits >> 16) - 1) & 0xC0) == 0x80)
      {
        v11 = v15 + (v5._rawBits >> 16) - 2;
        v10 = 1;
        do
        {
          ++v10;
          v12 = *v11--;
        }

        while ((v12 & 0xC0) == 0x80);
      }

      else
      {
        v10 = 1;
      }
    }

    else
    {
      if ((v4 & 0x1000000000000000) != 0)
      {
        v6 = ((v3 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        rawBits = v5._rawBits;
        v6 = _StringObject.sharedUTF8.getter(v4, v3);
        v5._rawBits = rawBits;
      }

      v7 = 0;
      v8 = v6 + (v5._rawBits >> 16) - 1;
      do
      {
        v9 = *(v8 + v7--) & 0xC0;
      }

      while (v9 == 128);
      v10 = -v7;
    }

    result = (v5._rawBits - (v10 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
  }

  a1->_rawBits = result;
  return result;
}

Swift::String::Index _sSS17UnicodeScalarViewVSlsSl5index_8offsetBy5IndexQzAF_SitFTW_0@<X0>(Swift::String::Index *a1@<X0>, Swift::Int a2@<X1>, Swift::String::Index *a3@<X8>)
{
  result._rawBits = String.UnicodeScalarView.index(_:offsetBy:)(a1->_rawBits, a2)._rawBits;
  a3->_rawBits = result._rawBits;
  return result;
}

Swift::String::Index _sSS17UnicodeScalarViewVSlsSl8distance4from2toSi5IndexQz_AGtFTW_0(Swift::UInt64 *a1, Swift::UInt64 *a2)
{
  v3._rawBits = *a1;
  v4._rawBits = *a2;
  return specialized Collection.count.getter(v3, v4, *v2, *(v2 + 8));
}

uint64_t (*protocol witness for Collection.subscript.read in conformance String.UnicodeScalarView(uint64_t *a1, Swift::String::Index *a2))()
{
  v5 = *v2;
  v4 = v2[1];
  v6._rawBits = _StringGuts.validateScalarIndex(_:)(a2->_rawBits)._rawBits;
  if ((v4 & 0x1000000000000000) != 0)
  {
    value = _StringGuts.foreignErrorCorrectedScalar(startingAt:)((v6._rawBits & 0xFFFFFFFFFFFF0000))._0._value;
  }

  else
  {
    v8 = v6._rawBits >> 16;
    if ((v4 & 0x2000000000000000) != 0)
    {
      *a1 = v5;
      a1[1] = v4 & 0xFFFFFFFFFFFFFFLL;
      v9 = a1;
    }

    else if ((v5 & 0x1000000000000000) != 0)
    {
      v9 = ((v4 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v12 = v4;
      v13 = v6._rawBits >> 16;
      v9 = _StringObject.sharedUTF8.getter(v5, v12);
      v8 = v13;
    }

    value = _decodeScalar(_:startingAt:)(v9, v7._rawBits, v8);
  }

  *a1 = value;
  return _swift_displayCrashMessage;
}

unint64_t protocol witness for Collection.subscript.getter in conformance String.UnicodeScalarView@<X0>(Swift::UInt64 *a1@<X0>, Swift::UInt64 *a2@<X8>)
{
  v4._rawBits = a1[1];
  *a2 = specialized String.UnicodeScalarView.subscript.getter(*a1, v4, *v2, v2[1]);
  a2[1] = v5;
  a2[2] = v7;
  a2[3] = v6;

  return v6;
}

Swift::UInt64 String.UnicodeScalarView.subscript.getter(Swift::UInt64 a1, Swift::String::Index a2, unint64_t a3, unint64_t a4)
{
  v4 = specialized String.UnicodeScalarView.subscript.getter(a1, a2, a3, a4);
  v5;
  return v4;
}

unint64_t protocol witness for Collection.indices.getter in conformance String@<X0>(void *a1@<X8>)
{
  specialized Collection<>.indices.getter();
  *a1 = v3;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v5;

  return v2;
}

Swift::String::Index protocol witness for BidirectionalCollection.index(_:offsetBy:limitedBy:) in conformance String.UnicodeScalarView@<X0>(Swift::String::Index *a1@<X0>, Swift::Int a2@<X1>, Swift::String::Index *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = String.UnicodeScalarView.index(_:offsetBy:limitedBy:)(a1->_rawBits, a2, a3->_rawBits);
  *a4 = v6.value._rawBits;
  *(a4 + 8) = v6.is_nil;
  return v6.value;
}

Swift::UInt64 protocol witness for Collection.index(after:) in conformance String.UnicodeScalarView@<X0>(Swift::String::Index *a1@<X0>, Swift::UInt64 *a2@<X8>)
{
  v5 = *v2;
  v4 = v2[1];
  v6._rawBits = _StringGuts.validateScalarIndex(_:)(a1->_rawBits)._rawBits;
  if ((v4 & 0x1000000000000000) != 0)
  {
    result = String.UnicodeScalarView._foreignIndex(after:)(v6)._rawBits;
  }

  else
  {
    v7 = v6._rawBits >> 16;
    if ((v4 & 0x2000000000000000) != 0)
    {
      v13[0] = v5;
      v13[1] = v4 & 0xFFFFFFFFFFFFFFLL;
      v9 = *(v13 + v7);
    }

    else
    {
      if ((v5 & 0x1000000000000000) != 0)
      {
        v8 = ((v4 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v8 = _StringObject.sharedUTF8.getter(v5, v4);
      }

      v9 = v8[v7];
    }

    v10 = v9;
    v11 = __clz(v9 ^ 0xFF) - 24;
    if (v10 >= 0)
    {
      LOBYTE(v11) = 1;
    }

    result = ((v7 + v11) << 16) | 5;
  }

  *a2 = result;
  return result;
}

Swift::UInt64 protocol witness for Collection.formIndex(after:) in conformance String.UnicodeScalarView(Swift::String::Index *a1)
{
  v4 = *v1;
  v3 = v1[1];
  v5._rawBits = _StringGuts.validateScalarIndex(_:)(a1->_rawBits)._rawBits;
  if ((v3 & 0x1000000000000000) != 0)
  {
    result = String.UnicodeScalarView._foreignIndex(after:)(v5)._rawBits;
  }

  else
  {
    v6 = v5._rawBits >> 16;
    if ((v3 & 0x2000000000000000) != 0)
    {
      v12[0] = v4;
      v12[1] = v3 & 0xFFFFFFFFFFFFFFLL;
      v8 = *(v12 + v6);
    }

    else
    {
      if ((v4 & 0x1000000000000000) != 0)
      {
        v7 = ((v3 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v7 = _StringObject.sharedUTF8.getter(v4, v3);
      }

      v8 = v7[v6];
    }

    v9 = v8;
    v10 = __clz(v8 ^ 0xFF) - 24;
    if (v9 >= 0)
    {
      LOBYTE(v10) = 1;
    }

    result = ((v6 + v10) << 16) | 5;
  }

  a1->_rawBits = result;
  return result;
}

void protocol witness for Sequence.makeIterator() in conformance String(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = *v1 & 0xFFFFFFFFFFFFLL;
  }

  *a1 = *v1;
  a1[1] = v2;
  a1[2] = 0;
  a1[3] = v3;
}

__objc2_class **protocol witness for Sequence._copyToContiguousArray() in conformance String.UnicodeScalarView()
{
  v1 = v0[1];
  v2 = specialized _copyCollectionToContiguousArray<A>(_:)(*v0, v1);
  v1;
  return v2;
}

void String.UnicodeScalarView.Iterator._guts.setter(uint64_t a1, uint64_t a2)
{
  v2[1];
  *v2 = a1;
  v2[1] = a2;
}

uint64_t protocol witness for IteratorProtocol.next() in conformance String.UnicodeScalarView.Iterator@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  if (v3 >= v4)
  {
    result = 0;
  }

  else
  {
    v5 = *v1;
    v6 = v1[1];
    if ((v6 & 0x1000000000000000) != 0)
    {
      v10 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)((v3 << 16));
      scalarLength = v10.scalarLength;
      result = *&v10._0._value;
    }

    else
    {
      if ((v6 & 0x2000000000000000) != 0)
      {
        v11[0] = *v1;
        v11[1] = v6 & 0xFFFFFFFFFFFFFFLL;
        v7 = v11;
      }

      else if ((v5 & 0x1000000000000000) != 0)
      {
        v7 = ((v6 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v7 = _StringObject.sharedUTF8.getter(*v1, v1[1]);
      }

      result = _decodeScalar(_:startingAt:)(v7, v5, v3);
    }

    v1[2] = scalarLength + v3;
  }

  *a1 = result;
  *(a1 + 4) = v3 >= v4;
  return result;
}

void String.UnicodeScalarView.debugDescription.getter(uint64_t a1, unint64_t x1_0)
{
  v3 = _StringGuts.init(_initialCapacity:)(27);
  v5 = v3;
  v6 = v4;
  v255 = v3;
  v256 = v4;
  v7 = HIBYTE(v4) & 0xF;
  v8 = v3 & 0xFFFFFFFFFFFFLL;
  if ((v4 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(v4) & 0xF;
  }

  else
  {
    v9 = v3 & 0xFFFFFFFFFFFFLL;
  }

  v242 = x1_0;
  if (!v9 && (v3 & ~v4 & 0x2000000000000000) == 0)
  {
    v4;
    v255 = 0xD000000000000018;
    v256 = 0x800000018066E220 | 0x8000000000000000;
LABEL_84:
    v35 = a1;
    goto LABEL_85;
  }

  v10 = 0x800000018066E220 & 0x2000000000000000;
  v11 = (0x800000018066E220 >> 56) & 0xF;
  if ((0x800000018066E220 & 0x2000000000000000 & v4) != 0)
  {
    v12 = v7 + v11;
    if (v7 + v11 <= 0xF)
    {
      if (v11)
      {
        v31 = 0;
        v32 = 0;
        v33 = 8 * v7;
        v34 = v4;
        x1_0 = v242;
        v35 = a1;
        do
        {
          v36 = (0x800000018066E220 | 0x8000000000000000) >> (v31 & 0x38);
          if (v32 < 8)
          {
            v36 = 0xD000000000000018 >> v31;
          }

          v37 = (v36 << (v33 & 0x38)) | ((-255 << (v33 & 0x38)) - 1) & v34;
          v38 = (v36 << v33) | ((-255 << v33) - 1) & *&v5;
          if (v7 <= 7)
          {
            v5 = v38;
          }

          else
          {
            v34 = v37;
          }

          ++v7;
          v33 += 8;
          v31 += 8;
          ++v32;
        }

        while (8 * v11 != v31);
      }

      else
      {
        v34 = v4;
        x1_0 = v242;
        v35 = a1;
      }

      v4;
      0x800000018066E220 | 0x8000000000000000;
      v60 = 0xA000000000000000;
      if (!(*&v5 & 0x8080808080808080 | v34 & 0x80808080808080))
      {
        v60 = 0xE000000000000000;
      }

      v59 = v60 & 0xFF00000000000000 | (v12 << 56) | v34 & 0xFFFFFFFFFFFFFFLL;
      goto LABEL_77;
    }
  }

  if (v10)
  {
    v13 = (0x800000018066E220 >> 56) & 0xF;
  }

  else
  {
    v13 = 24;
  }

  if ((0x800000018066E220 & 0x1000000000000000) == 0)
  {
    0x800000018066E220 | 0x8000000000000000;
    v15 = v13;
    if ((v6 & 0x1000000000000000) == 0)
    {
      goto LABEL_13;
    }

LABEL_290:
    v236 = String.UTF8View._foreignCount()();
    v17 = v236 + v15;
    if (!__OFADD__(v236, v15))
    {
      goto LABEL_14;
    }

LABEL_292:
    __break(1u);
LABEL_293:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  swift_bridgeObjectRetain_n(0x800000018066E220 | 0x8000000000000000, 2);
  v232._rawBits = 1;
  v233._rawBits = (v13 << 16) | 1;
  v234._rawBits = _StringGuts.validateScalarRange(_:)(v232, v233, 0xD000000000000018, 0x800000018066E220 | 0x8000000000000000)._rawBits;
  if (v234._rawBits < 0x10000)
  {
    v234._rawBits |= 3;
  }

  v15 = String.UTF8View.distance(from:to:)(v234, v235);
  0x800000018066E220 | 0x8000000000000000;
  if ((v6 & 0x1000000000000000) != 0)
  {
    goto LABEL_290;
  }

LABEL_13:
  v16 = __OFADD__(v9, v15);
  v17 = v9 + v15;
  if (v16)
  {
    goto LABEL_292;
  }

LABEL_14:
  v18 = *&v5 & ~v6;
  if ((v18 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v6 & 0xFFFFFFFFFFFFFFFLL))
  {
    v19 = _StringGuts.nativeUnusedCapacity.getter(*&v5, v6);
    if (v20)
    {
      goto LABEL_299;
    }

    if (v17 > 15)
    {
      goto LABEL_25;
    }

    if ((v6 & 0x2000000000000000) == 0)
    {
      if (v19 < v15)
      {
        goto LABEL_20;
      }

LABEL_25:
      v23 = v18 & 0x2000000000000000;
      v24 = _StringGuts.nativeUnusedCapacity.getter(*&v5, v6);
      if ((v25 & 1) != 0 || v24 < v15)
      {
        if (v23)
        {
          swift_isUniquelyReferenced_nonNull_native(v6 & 0xFFFFFFFFFFFFFFFLL);
        }

        v26 = 2 * _StringGuts.nativeCapacity.getter(*&v5, v6);
        if (v27)
        {
          v26 = 0;
        }

        if (v26 > v17)
        {
          v17 = v26;
        }
      }

      else if (v23 && swift_isUniquelyReferenced_nonNull_native(v6 & 0xFFFFFFFFFFFFFFFLL))
      {
        goto LABEL_34;
      }

      _StringGuts.grow(_:)(v17);
LABEL_34:
      if ((0x800000018066E220 & 0x1000000000000000) != 0)
      {
        _StringGuts._foreignAppendInPlace(_:)(0xD000000000000018, 0x800000018066E220 | 0x8000000000000000, 0, v13);
      }

      else
      {
        if (v10)
        {
          v28 = (0x800000018066E220 >> 62) & 1;
          v253 = 0xD000000000000018;
          v254 = 0x800000018066E220 & 0xFFFFFFFFFFFFF0;
          v29 = &v253;
          v30 = (0x800000018066E220 >> 56) & 0xF;
        }

        else
        {
          v29 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, 24, (0x800000018066E220 & 0xFFFFFFFFFFFFFF0) + 32, 24);
          LOBYTE(v28) = 1;
        }

        closure #1 in _StringGuts.append(_:)(v29, v30, &v255, v28);
      }

      swift_bridgeObjectRelease_n(0x800000018066E220 | 0x8000000000000000, 2);
      x1_0 = v242;
      goto LABEL_84;
    }

LABEL_47:
    v22 = v6;
LABEL_48:
    x1_0 = v242;
    goto LABEL_49;
  }

  if (v17 > 15)
  {
    goto LABEL_25;
  }

  if ((v6 & 0x2000000000000000) != 0)
  {
    goto LABEL_47;
  }

LABEL_20:
  if ((v6 & 0x1000000000000000) != 0)
  {
    v5 = _StringGuts._foreignConvertedToSmall()(*&v5, v6);
    v22 = v231;
    goto LABEL_48;
  }

  x1_0 = v242;
  if ((*&v5 & 0x1000000000000000) != 0)
  {
    v21 = ((v6 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v21 = _StringObject.sharedUTF8.getter(*&v5, v6);
    v8 = v239;
  }

  closure #1 in _StringGuts._convertedToSmall()(v21, v8, &v253, v14);
  v5 = v253;
  v22 = v254;
LABEL_49:
  v39 = 0xD000000000000018;
  0x800000018066E220 | 0x8000000000000000;
  v40._rawBits = 1;
  v41._rawBits = (v13 << 16) | 1;
  v42._rawBits = _StringGuts.validateScalarRange(_:)(v40, v41, 0xD000000000000018, 0x800000018066E220 | 0x8000000000000000)._rawBits;
  if (v42._rawBits < 0x10000)
  {
    v42._rawBits |= 3;
  }

  if (v42._rawBits >> 16 || v43._rawBits >> 16 != v13)
  {
    v39 = specialized static String._copying(_:)(v42._rawBits, v43._rawBits, 0xD000000000000018, 0x800000018066E220 | 0x8000000000000000);
    v45 = v47;
    0x800000018066E220 | 0x8000000000000000;
  }

  else
  {
    v45 = 0x800000018066E220 | 0x8000000000000000;
  }

  if ((v45 & 0x2000000000000000) != 0)
  {
    v45;
  }

  else if ((v45 & 0x1000000000000000) != 0)
  {
    v39 = _StringGuts._foreignConvertedToSmall()(*&v39, v45);
    v241 = v240;
    v45;
    v45 = v241;
  }

  else
  {
    if ((*&v39 & 0x1000000000000000) != 0)
    {
      v237 = ((v45 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v238 = *&v39 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v237 = _StringObject.sharedUTF8.getter(*&v39, v45);
    }

    closure #1 in _StringGuts._convertedToSmall()(v237, v238, &v253, v44);
    v45;
    v39 = v253;
    v45 = v254;
  }

  v48 = HIBYTE(v22) & 0xF;
  v49 = HIBYTE(v45) & 0xF;
  v50 = v49 + v48;
  if (v49 + v48 > 0xF)
  {
LABEL_299:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  0x800000018066E220 | 0x8000000000000000;
  if (v49)
  {
    v51 = 0;
    v52 = 0;
    v53 = 8 * v48;
    v54 = 8 * v49;
    v35 = a1;
    do
    {
      v55 = v45 >> (v51 & 0x38);
      if (v52 < 8)
      {
        v55 = *&v39 >> v51;
      }

      v56 = (v55 << (v53 & 0x38)) | ((-255 << (v53 & 0x38)) - 1) & v22;
      v57 = (v55 << v53) | ((-255 << v53) - 1) & *&v5;
      if (v48 <= 7)
      {
        v5 = v57;
      }

      else
      {
        v22 = v56;
      }

      ++v48;
      v53 += 8;
      v51 += 8;
      ++v52;
    }

    while (v54 != v51);
  }

  else
  {
    v35 = a1;
  }

  v6;
  0x800000018066E220 | 0x8000000000000000;
  v58 = 0xA000000000000000;
  if (!(*&v5 & 0x8080808080808080 | v22 & 0x80808080808080))
  {
    v58 = 0xE000000000000000;
  }

  v59 = v58 & 0xFF00000000000000 | (v50 << 56) | v22 & 0xFFFFFFFFFFFFFFLL;
LABEL_77:
  v255 = v5;
  v256 = v59;
LABEL_85:
  v61 = 34;
  v253 = 34;
  v254 = 0xE100000000000000;
  if ((x1_0 & 0x2000000000000000) != 0)
  {
    v62 = HIBYTE(x1_0) & 0xF;
  }

  else
  {
    v62 = v35 & 0xFFFFFFFFFFFFLL;
  }

  if (!v62)
  {
    v67 = 0xE100000000000000;
LABEL_209:
    v251 = 34;
    v252 = 0xE100000000000000;
    v160 = HIBYTE(v67) & 0xF;
    if ((v67 & 0x2000000000000000) == 0)
    {
      v160 = v61 & 0xFFFFFFFFFFFFLL;
    }

    if (!v160)
    {
LABEL_262:
      v252;
      v104 = v255;
      v98 = v256;
      v207 = HIBYTE(v256) & 0xF;
      if ((v256 & 0x2000000000000000) == 0)
      {
        v207 = v255 & 0xFFFFFFFFFFFFLL;
      }

      if (v207 || (v255 & ~v256 & 0x2000000000000000) != 0)
      {
        if ((v256 & 0x2000000000000000) != 0)
        {
          if ((v67 & 0x2000000000000000) != 0)
          {
            goto LABEL_272;
          }
        }

        else if ((v67 & 0x2000000000000000) != 0)
        {
          goto LABEL_273;
        }

        v208 = v61 & 0xFFFFFFFFFFFFLL;
LABEL_274:
        v67;
        _StringGuts.append(_:)(v61, v67, 0, v208, v212, v213, v214, v215, v216, v217, v218, v219);
        swift_bridgeObjectRelease_n(v67, 2);
        v61 = v255;
        v67 = v256;
      }

      else
      {
        v256;
        v255 = v61;
        v256 = v67;
      }

      goto LABEL_275;
    }

    while (1)
    {
      v165 = v251;
      v166 = v252;
      v167 = specialized Collection.first.getter(v251, v252);
      if ((v167 & 0x100000000) != 0)
      {
        goto LABEL_293;
      }

      v249 = v61;
      v250 = v67;
      v253 = 0;
      v254 = 0xE000000000000000;
      v168 = specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(v167);
      v170 = v169;
      _StringGuts.append(_:)(v168, v169, v171, v172, v173, v174, v175, v176, v177, v178);
      v170;
      v179 = v249;
      v180 = v250;
      v250;
      0xE000000000000000;
      v253 = v179;
      v254 = v180;
      v181 = HIBYTE(v180) & 0xF;
      if ((v180 & 0x2000000000000000) == 0)
      {
        v181 = v179;
      }

      v182 = 7;
      if (((v180 >> 60) & ((v179 & 0x800000000000000) == 0)) != 0)
      {
        v182 = 11;
      }

      v183._rawBits = v182 | (v181 << 16);
      v184._rawBits = _StringGuts.validateInclusiveCharacterIndex_5_7(_:)(v183)._rawBits;
      rawBits = v184._rawBits;
      if (!(v184._rawBits >> 14))
      {
        break;
      }

      v186 = v184._rawBits >> 16;
      if (v184._rawBits >= 0x20000)
      {
        if ((v180 & 0x1000000000000000) == 0)
        {
          if ((v180 & 0x2000000000000000) != 0)
          {
            v249 = v179;
            v250 = v180 & 0xFFFFFFFFFFFFFFLL;
            v188 = *&v248[v186];
          }

          else
          {
            if ((v179 & 0x1000000000000000) != 0)
            {
              v187 = ((v180 & 0xFFFFFFFFFFFFFFFLL) + 32);
            }

            else
            {
              v187 = _StringObject.sharedUTF8.getter(v179, v180);
              if (!v187)
              {
                _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
              }
            }

            v188 = *&v187[v186 - 2];
          }

          if (v188 != 2573 && (v188 & 0x8080) == 0)
          {
            v186 = 1;
LABEL_236:
            v190 = v186 << 8;
            goto LABEL_243;
          }
        }

        v186 = _StringGuts._opaqueComplexCharacterStride(endingAt:)(rawBits >> 16);
      }

      if (v186 >= 64)
      {
        v190 = 63;
      }

      else
      {
        v190 = v186 << 8;
      }

LABEL_243:
      v180;
      v191._rawBits = _StringGuts.validateInclusiveScalarIndex(_:)(v183)._rawBits;
      if (!(v191._rawBits >> 14))
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v192 = v191._rawBits;
      v180;
      if ((v180 & 0x1000000000000000) != 0)
      {
        v197 = String.UnicodeScalarView._foreignIndex(before:)(v192)._rawBits;
        v180;
      }

      else
      {
        if ((v180 & 0x2000000000000000) != 0)
        {
          v194 = 0;
          v249 = v179;
          v250 = v180 & 0xFFFFFFFFFFFFFFLL;
          do
          {
            v196 = v248[(v192 >> 16) + 1 + v194--] & 0xC0;
          }

          while (v196 == 128);
        }

        else
        {
          if ((v179 & 0x1000000000000000) != 0)
          {
            v193 = ((v180 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v193 = _StringObject.sharedUTF8.getter(v179, v180);
          }

          v194 = 0;
          do
          {
            v195 = v193[(v192 >> 16) - 1 + v194--] & 0xC0;
          }

          while (v195 == 128);
        }

        v180;
        v197 = (v192 - -65536 * v194) & 0xFFFFFFFFFFFF0000;
      }

      if (((rawBits - (v186 << 16)) & 0xFFFFFFFFFFFF0000 | v190) >> 14 >= v197 >> 14)
      {
        v166;
        v203._rawBits = specialized Collection.dropFirst(_:)(1, v165, v166)._rawBits;
        v205 = v204;
        v249 = v179;
        v250 = v180;
        v253 = 0;
        v254 = 0xE000000000000000;
        specialized String.UnicodeScalarView.append<A>(contentsOf:)(v203, v257, v206, v204);
        0xE000000000000000;
        v205;
        v61 = v249;
        v67 = v250;
        goto LABEL_262;
      }

      v249 = v179;
      v250 = v180;
      specialized RangeReplaceableCollection<>.removeLast()();
      v199 = v249;
      v198 = v250;
      v250;
      0xE000000000000000;
      v249 = v199;
      v250 = v198;
      v198;
      v200 = specialized RangeReplaceableCollection<>.removeLast()();
      0xE000000000000000;
      v253 = v249;
      v254 = v250;
      v201 = Unicode.Scalar._escaped(asASCII:)(1);
      object = v201.value._object;
      if (v201.value._object)
      {
        countAndFlagsBits = v201.value._countAndFlagsBits;
      }

      else
      {
        countAndFlagsBits = specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(v200);
      }

      v202 = object;
      v163._rawBits = 15;
      specialized String.UnicodeScalarView.replaceSubrange<A>(_:with:)(0xFuLL, v163, countAndFlagsBits, v202);
      v202;
      v61 = v253;
      v67 = v254;
      v164 = HIBYTE(v254) & 0xF;
      if ((v254 & 0x2000000000000000) == 0)
      {
        v164 = *&v253 & 0xFFFFFFFFFFFFLL;
      }

      if (!v164)
      {
        goto LABEL_262;
      }
    }

    if (_swift_stdlib_isExecutableLinkedOnOrAfter(0x50700u))
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v186 = 0;
    goto LABEL_236;
  }

  v63 = 0;
  v247 = v62;
  v243 = (x1_0 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v244 = x1_0 & 0xFFFFFFFFFFFFFFLL;
  v64 = 1;
  while (1)
  {
    while (1)
    {
      if ((x1_0 & 0x1000000000000000) != 0)
      {
        v71 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)((v63 << 16));
        scalarLength = v71.scalarLength;
        value = v71._0._value;
      }

      else
      {
        if ((x1_0 & 0x2000000000000000) != 0)
        {
          v251 = v35;
          v252 = v244;
          v68 = &v251;
        }

        else
        {
          v68 = v243;
          if ((v35 & 0x1000000000000000) == 0)
          {
            v68 = _StringObject.sharedUTF8.getter(v35, x1_0);
          }
        }

        value = _decodeScalar(_:startingAt:)(v68, v46, v63);
      }

      v72 = value;
      v63 += scalarLength;
      v73 = Unicode.Scalar._escaped(asASCII:)(0);
      if (!v73.value._object)
      {
        break;
      }

      v74 = v73.value._object;
      v75 = v254;
      v76 = HIBYTE(v254) & 0xF;
      if ((v254 & 0x2000000000000000) == 0)
      {
        v76 = *&v253 & 0xFFFFFFFFFFFFLL;
      }

      if (!v76 && (*&v253 & ~v254 & 0x2000000000000000) == 0)
      {
        v254;
        v253 = v73.value._countAndFlagsBits;
        v254 = v73.value._object;
        goto LABEL_122;
      }

      if ((v73.value._object & 0x2000000000000000 & v254) != 0)
      {
        v77 = specialized _SmallString.init(_:appending:)(*&v253, v254, v73.value._countAndFlagsBits, v73.value._object);
        if ((v79 & 1) == 0)
        {
          v101 = v77;
          v102 = v78;
          v75;
          v73.value._object;
          v253 = v101;
          v254 = v102;
          goto LABEL_122;
        }
      }

      if ((v73.value._object & 0x2000000000000000) != 0)
      {
        v80 = (v73.value._object >> 56) & 0xF;
      }

      else
      {
        v80 = v73.value._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      }

      v73.value._object;
      v89 = v73.value._countAndFlagsBits;
      v90 = v73.value._object;
      v91 = v80;
LABEL_114:
      _StringGuts.append(_:)(v89, v90, 0, v91, v81, v82, v83, v84, v85, v86, v87, v88);
      swift_bridgeObjectRelease_n(v74, 2);
LABEL_122:
      v64 = 1;
      if (v63 >= v62)
      {
        v61 = v253;
        v67 = v254;
        goto LABEL_209;
      }
    }

    v92 = v253;
    v61 = v254;
    if (v64)
    {
      LODWORD(v251) = 0;
      v93 = specialized BidirectionalCollection.last.getter(*&v253, v254);
      if ((v93 & 0x100000000) != 0)
      {
        goto LABEL_293;
      }

      if (!_GraphemeBreakingState.shouldBreak(between:and:)(v93, v72))
      {
        v119 = Unicode.Scalar._escaped(asASCII:)(1);
        v118 = v119.value._object;
        if (v119.value._object)
        {
          v120 = v119.value._countAndFlagsBits;
        }

        else
        {
          v120 = specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(v72);
        }

        v74 = v118;
        v147 = HIBYTE(v61) & 0xF;
        if ((v61 & 0x2000000000000000) == 0)
        {
          v147 = v92 & 0xFFFFFFFFFFFFLL;
        }

        if (!v147 && (v92 & ~v61 & 0x2000000000000000) == 0)
        {
          v61;
          v253 = v120;
          v254 = v74;
          v62 = v247;
          goto LABEL_122;
        }

        if ((v61 & 0x2000000000000000) != 0)
        {
          if ((v118 & 0x2000000000000000) != 0)
          {
            v150 = specialized _SmallString.init(_:appending:)(v92, v61, v120, v118);
            if ((v152 & 1) == 0)
            {
              v153 = v150;
              v154 = v151;
              v61;
              v74;
              v253 = v153;
              v254 = v154;
              v62 = v247;
              goto LABEL_122;
            }

            goto LABEL_198;
          }
        }

        else if ((v118 & 0x2000000000000000) != 0)
        {
LABEL_198:
          v148 = HIBYTE(v74) & 0xF;
          goto LABEL_199;
        }

        v148 = v120 & 0xFFFFFFFFFFFFLL;
LABEL_199:
        v62 = v247;
        v74;
        v89 = v120;
        v90 = v74;
        v91 = v148;
        goto LABEL_114;
      }
    }

    v251 = v92;
    v252 = v61;
    v253 = 0;
    v254 = 0xE000000000000000;
    v95 = specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(v72);
    v67 = v94;
    v96 = (v94 & 0x2000000000000000) == 0;
    v97 = HIBYTE(v61) & 0xF;
    v98 = HIBYTE(v94) & 0xF;
    if ((v61 & 0x2000000000000000) == 0)
    {
      v99 = v95 & 0xFFFFFFFFFFFFLL;
      v100 = HIBYTE(v94) & 0xF;
      if ((v94 & 0x2000000000000000) != 0)
      {
LABEL_127:
        v246 = v96;
        if ((v94 & 0x1000000000000000) != 0)
        {
          goto LABEL_166;
        }

        goto LABEL_128;
      }

LABEL_126:
      v100 = v99;
      goto LABEL_127;
    }

    if ((v94 & 0x2000000000000000) == 0)
    {
      v99 = v95 & 0xFFFFFFFFFFFFLL;
      v96 = 1;
      goto LABEL_126;
    }

    v129 = v98 + v97;
    if (v98 + v97 >= 0x10)
    {
      break;
    }

    v94;
    if (v98)
    {
      v140 = 0;
      v141 = 0;
      v142 = 8 * v97;
      v143 = 8 * v98;
      v65 = v61;
      do
      {
        v144 = v67 >> (v140 & 0x38);
        if (v141 < 8)
        {
          v144 = v95 >> v140;
        }

        v145 = (v144 << (v142 & 0x38)) | ((-255 << (v142 & 0x38)) - 1) & v65;
        v146 = (v144 << v142) | ((-255 << v142) - 1) & v92;
        if (v97 <= 7)
        {
          v92 = v146;
        }

        else
        {
          v65 = v145;
        }

        ++v97;
        v142 += 8;
        v140 += 8;
        ++v141;
      }

      while (v143 != v140);
    }

    else
    {
      v65 = v61;
    }

    v61;
    0xE000000000000000;
    v66 = 0xE000000000000000;
    if (v92 & 0x8080808080808080 | v65 & 0x80808080808080)
    {
      v66 = 0xA000000000000000;
    }

    v251 = v92;
    v252 = v66 & 0xFF00000000000000 | (v129 << 56) | v65 & 0xFFFFFFFFFFFFFFLL;
LABEL_94:
    v62 = v247;
LABEL_95:
    v64 = 0;
    v61 = v251;
    v67 = v252;
    v253 = v251;
    v254 = v252;
    v35 = a1;
    if (v63 >= v62)
    {
      goto LABEL_209;
    }
  }

  v99 = v95 & 0xFFFFFFFFFFFFLL;
  v100 = HIBYTE(v94) & 0xF;
  v246 = 0;
  if ((v94 & 0x1000000000000000) == 0)
  {
LABEL_128:
    v94;
    v103 = v100;
    if ((v61 & 0x1000000000000000) == 0)
    {
      goto LABEL_129;
    }

LABEL_169:
    v104 = String.UTF8View._foreignCount()();
    v105 = v104 + v103;
    if (__OFADD__(v104, v103))
    {
      goto LABEL_271;
    }

    goto LABEL_133;
  }

LABEL_166:
  swift_bridgeObjectRetain_n(v94, 2);
  v130._rawBits = 1;
  v131._rawBits = (v100 << 16) | 1;
  v132._rawBits = _StringGuts.validateScalarRange(_:)(v130, v131, v95, v67)._rawBits;
  if (v132._rawBits < 0x10000)
  {
    v132._rawBits |= 3;
  }

  v103 = String.UTF8View.distance(from:to:)(v132, v133);
  v67;
  if ((v61 & 0x1000000000000000) != 0)
  {
    goto LABEL_169;
  }

LABEL_129:
  if ((v61 & 0x2000000000000000) != 0)
  {
    v104 = HIBYTE(v61) & 0xF;
  }

  else
  {
    v104 = v92 & 0xFFFFFFFFFFFFLL;
  }

  v105 = v104 + v103;
  if (!__OFADD__(v104, v103))
  {
LABEL_133:
    if ((v92 & ~v61 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v61 & 0xFFFFFFFFFFFFFFFLL))
    {
      v106 = _StringGuts.nativeUnusedCapacity.getter(v92, v61);
      if (v107)
      {
        goto LABEL_299;
      }

      if (v105 > 15)
      {
LABEL_145:
        v112 = v99;
        _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v105, v103);
        if ((v67 & 0x1000000000000000) != 0)
        {
          v67;
          _StringGuts._foreignAppendInPlace(_:)(v95, v67, 0, v100);
          0xE000000000000000;
          v67;
          x1_0 = v242;
          v62 = v247;
        }

        else
        {
          x1_0 = v242;
          v62 = v247;
          if (v246)
          {
            if ((v95 & 0x1000000000000000) != 0)
            {
              v113 = (v67 & 0xFFFFFFFFFFFFFFFLL) + 32;
              v114 = v99;
            }

            else
            {
              v156 = _StringObject.sharedUTF8.getter(v95, v67);
              if (v157 < v99)
              {
                _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
              }

              v113 = v156;
              v99 = v157;
              v114 = v112;
            }

            v67;
            v115 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v114, v113, v99);
            v116 = v252 & 0xFFFFFFFFFFFFFFFLL;
            __StringStorage.appendInPlace(_:isASCII:)(v115, v117, v95 < 0);
            v251 = *(v116 + 24);
            0xE000000000000000;
            v67;
          }

          else
          {
            v67;
            v249 = v95;
            v250 = v67 & 0xFFFFFFFFFFFFFFLL;
            v67;
            v149 = v252 & 0xFFFFFFFFFFFFFFFLL;
            __StringStorage.appendInPlace(_:isASCII:)(&v249, v98, (v67 & 0x4000000000000000) != 0);
            v251 = *(v149 + 24);
            0xE000000000000000;
          }
        }

        goto LABEL_95;
      }

      if ((v61 & 0x2000000000000000) == 0)
      {
        if (v106 >= v103)
        {
          goto LABEL_145;
        }

        v67;
        goto LABEL_140;
      }

      v67;
LABEL_154:
      v111 = v61;
      x1_0 = v242;
    }

    else
    {
      if (v105 > 15)
      {
        goto LABEL_145;
      }

      v67;
      if ((v61 & 0x2000000000000000) != 0)
      {
        goto LABEL_154;
      }

LABEL_140:
      x1_0 = v242;
      if ((v61 & 0x1000000000000000) != 0)
      {
        v92 = _StringGuts._foreignConvertedToSmall()(v92, v61);
        v111 = v155;
      }

      else
      {
        if ((v92 & 0x1000000000000000) != 0)
        {
          v109 = ((v61 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v110 = v92 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v109 = _StringObject.sharedUTF8.getter(v92, v61);
        }

        closure #1 in _StringGuts._convertedToSmall()(v109, v110, &v249, v108);
        v92 = v249;
        v111 = v250;
      }
    }

    v67;
    v121._rawBits = 1;
    v122._rawBits = (v100 << 16) | 1;
    v123._rawBits = _StringGuts.validateScalarRange(_:)(v121, v122, v95, v67)._rawBits;
    if (v123._rawBits < 0x10000)
    {
      v123._rawBits |= 3;
    }

    if (v123._rawBits >> 16 || v124._rawBits >> 16 != v100)
    {
      v95 = specialized static String._copying(_:)(v123._rawBits, v124._rawBits, v95, v67);
      v126 = v134;
      v67;
      if ((v126 & 0x2000000000000000) == 0)
      {
        goto LABEL_160;
      }
    }

    else
    {
      v126 = v67;
      if ((v67 & 0x2000000000000000) == 0)
      {
LABEL_160:
        if ((v126 & 0x1000000000000000) != 0)
        {
          v95 = _StringGuts._foreignConvertedToSmall()(v95, v126);
          v159 = v158;
          v126;
          v126 = v159;
        }

        else
        {
          if ((v95 & 0x1000000000000000) != 0)
          {
            v127 = ((v126 & 0xFFFFFFFFFFFFFFFLL) + 32);
            v128 = v95 & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            v127 = _StringObject.sharedUTF8.getter(v95, v126);
          }

          closure #1 in _StringGuts._convertedToSmall()(v127, v128, &v249, v125);
          v126;
          v95 = v249;
          v126 = v250;
        }

        goto LABEL_175;
      }
    }

    v126;
LABEL_175:
    v135 = specialized _SmallString.init(_:appending:)(v92, v111, v95, v126);
    if (v137)
    {
      goto LABEL_299;
    }

    v138 = v135;
    v139 = v136;
    0xE000000000000000;
    v61;
    v67;
    v251 = v138;
    v252 = v139;
    goto LABEL_94;
  }

LABEL_271:
  __break(1u);
LABEL_272:
  v209 = specialized _SmallString.init(_:appending:)(v104, v98, v61, v67);
  if (v211)
  {
LABEL_273:
    v208 = HIBYTE(v67) & 0xF;
    goto LABEL_274;
  }

  v229 = v209;
  v230 = v210;
  v98;
  v67;
  v255 = v229;
  v256 = v230;
  v67 = v230;
  v61 = v229;
LABEL_275:
  v228 = HIBYTE(v67) & 0xF;
  if ((v67 & 0x2000000000000000) == 0)
  {
    v228 = v61 & 0xFFFFFFFFFFFFLL;
  }

  if (v228 || (v61 & ~v67 & 0x2000000000000000) != 0)
  {
    _StringGuts.append(_:)(0x29uLL, 0xE100000000000000, v220, v221, v222, v223, v224, v225, v226, v227);
    0xE100000000000000;
  }

  else
  {
    v67;
  }
}

unint64_t key path setter for String.unicodeScalars : String(void *a1, void *a2)
{
  a2[1];
  v4 = a1[1];
  *a2 = *a1;
  a2[1] = v4;

  return v4;
}

uint64_t specialized String.UnicodeScalarView.replaceSubrange<A>(_:with:)(Swift::UInt64 a1, Swift::String::Index a2, uint64_t a3, unint64_t a4)
{
  v6 = *v4;
  v5 = v4[1];
  v7 = (*v4 >> 59) & 1;
  if ((v5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v7) = 1;
  }

  v8 = a1 & 0xC;
  v9 = 4 << v7;
  v10 = a2._rawBits & 0xC;
  if ((a1 & 1) != 0 && v8 != v9 && (a2._rawBits & 1) != 0 && v10 != v9)
  {
    v11 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v11 = v6 & 0xFFFFFFFFFFFFLL;
    }

    if (v11 < a2._rawBits >> 16)
    {
      v12 = a1;
      v13 = a4;
      v14 = a3;
      rawBits = a2._rawBits;
      isExecutableLinkedOnOrAfter = _swift_stdlib_isExecutableLinkedOnOrAfter(0x50700u);
      a2._rawBits = rawBits;
      a3 = v14;
      a4 = v13;
      v17 = isExecutableLinkedOnOrAfter;
      a1 = v12;
      if (v17)
      {
        goto LABEL_20;
      }
    }

    goto LABEL_23;
  }

  if (v10 == v9)
  {
    v21 = a1;
    v22 = a3;
    v23 = a4;
    v24._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(a2)._rawBits;
    a3 = v22;
    a4 = v23;
    a2._rawBits = v24._rawBits;
    a1 = v21;
    if (v8 != v9)
    {
      goto LABEL_14;
    }

LABEL_27:
    v25 = a2._rawBits;
    v26 = a3;
    v27 = a4;
    a1 = _StringGuts._slowEnsureMatchingEncoding(_:)(a1)._rawBits;
    a2._rawBits = v25;
    a3 = v26;
    a4 = v27;
    goto LABEL_14;
  }

  if (v8 == v9)
  {
    goto LABEL_27;
  }

LABEL_14:
  v18 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v18 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (a2._rawBits >> 14 > 4 * v18 || a2._rawBits >> 14 < a1 >> 14)
  {
LABEL_20:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a1)
  {
    if (a2._rawBits)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v28 = a1;
    v29 = a2._rawBits;
    v30 = a3;
    v31 = a4;
    v32._rawBits = _StringGuts.scalarAlignSlow(_:)(a1)._rawBits;
    a2._rawBits = v29;
    a3 = v30;
    a4 = v31;
    a1 = v28 & 0xC | v32._rawBits & 0xFFFFFFFFFFFFFFF3 | 1;
    if (v29)
    {
      goto LABEL_23;
    }
  }

  v33 = a1;
  v34 = a2._rawBits;
  v35 = a3;
  v36 = a4;
  v37._rawBits = _StringGuts.scalarAlignSlow(_:)(a2)._rawBits;
  a3 = v35;
  a4 = v36;
  v38 = v37._rawBits;
  a1 = v33;
  a2._rawBits = v34 & 0xC | v38 & 0xFFFFFFFFFFFFFFF3 | 1;
LABEL_23:

  return specialized _StringGuts.replaceSubrange<A>(_:with:)(a1, a2._rawBits, a3, a4);
}

uint64_t String.UnicodeScalarView.replaceSubrange<A>(_:with:)(Swift::String::Index a1, Swift::String::Index a2, uint64_t a3, Class *a4, uint64_t a5)
{
  v9._rawBits = _StringGuts.validateScalarRange_5_7(_:)(a1, a2, *v5, v5[1])._rawBits;

  return _StringGuts.replaceSubrange<A>(_:with:)(v9._rawBits, v10._rawBits, a3, a4, a5);
}

uint64_t protocol witness for RangeReplaceableCollection.replaceSubrange<A>(_:with:) in conformance String(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void, void, uint64_t, uint64_t, uint64_t))
{
  a7(*a1, a1[1], a2, a3, a4);
  v9 = *(*(a3 - 8) + 8);

  return v9(a2, a3);
}

unint64_t protocol witness for RangeReplaceableCollection.init(repeating:count:) in conformance String.UnicodeScalarView@<X0>(int *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  result = specialized RangeReplaceableCollection.init(repeating:count:)(*a1, a2);
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t protocol witness for RangeReplaceableCollection.init<A>(_:) in conformance String.UnicodeScalarView@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  v7 = specialized RangeReplaceableCollection.init<A>(_:)(a1, a2, a3);
  v9 = v8;
  result = (*(*(a2 - 1) + 8))(a1, a2);
  *a4 = v7;
  a4[1] = v9;
  return result;
}

void protocol witness for RangeReplaceableCollection.append(_:) in conformance String.UnicodeScalarView(unsigned int *a1)
{
  v1 = specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(*a1);
  v3 = v2;
  _StringGuts.append(_:)(v1, v2, v4, v5, v6, v7, v8, v9, v10, v11);

  v3;
}

uint64_t protocol witness for RangeReplaceableCollection.append<A>(contentsOf:) in conformance String(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void))
{
  a6();
  v8 = *(*(a2 - 8) + 8);

  return v8(a1, a2);
}

unint64_t protocol witness for RangeReplaceableCollection.insert(_:at:) in conformance String.UnicodeScalarView(int *a1, Swift::UInt64 *a2)
{
  v3 = *a1;
  v5._rawBits = *a2;
  v4._rawBits = v5._rawBits;
  v6._rawBits = _StringGuts.validateScalarRange_5_7(_:)(v4, v5, *v2, v2[1])._rawBits;

  return specialized _StringGuts.replaceSubrange<A>(_:with:)(v6._rawBits, v7._rawBits, v3);
}

uint64_t protocol witness for RangeReplaceableCollection.insert<A>(contentsOf:at:) in conformance String(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, void))
{
  a7(a1, *a2);
  v9 = *(*(a3 - 8) + 8);

  return v9(a1, a3);
}

uint64_t protocol witness for RangeReplaceableCollection.remove(at:) in conformance String.UnicodeScalarView@<X0>(Swift::UInt64 *a1@<X0>, _DWORD *a2@<X8>)
{
  result = specialized RangeReplaceableCollection.remove(at:)(*a1);
  *a2 = result;
  return result;
}

unint64_t protocol witness for RangeReplaceableCollection.removeFirst() in conformance String.UnicodeScalarView@<X0>(_DWORD *a1@<X8>)
{
  result = specialized RangeReplaceableCollection.removeFirst()();
  *a1 = result;
  return result;
}

Swift::Bool __swiftcall _StringGuts.isOnUnicodeScalarBoundary(_:)(Swift::String::Index a1)
{
  if ((a1._rawBits & 0xC000) != 0)
  {
    return 0;
  }

  if (a1._rawBits < 0x4000)
  {
    return 1;
  }

  v6 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v6 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (a1._rawBits >> 14 == 4 * v6)
  {
    return 1;
  }

  v10[4] = v3;
  v10[5] = v4;
  if ((v2 & 0x1000000000000000) != 0)
  {
    return a1._rawBits >> 14 == _StringGuts.foreignScalarAlign(_:)(a1)._rawBits >> 14;
  }

  if ((v2 & 0x2000000000000000) != 0)
  {
    v10[0] = v1;
    v10[1] = v2 & 0xFFFFFFFFFFFFFFLL;
    v8 = *(v10 + (a1._rawBits >> 16));
  }

  else
  {
    if ((v1 & 0x1000000000000000) != 0)
    {
      v7 = ((v2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      rawBits = a1._rawBits;
      v7 = _StringObject.sharedUTF8.getter(v1, v2);
      a1._rawBits = rawBits;
    }

    v8 = v7[a1._rawBits >> 16];
  }

  return (v8 & 0xC0) != 128;
}

Swift::String::Index_optional __swiftcall String.Index.samePosition(in:)(Swift::String in)
{
  v2 = String.Index.samePosition(in:)(in._countAndFlagsBits, in._object, v1, specialized String.Index.init(_:within:));
  result.value._rawBits = v2;
  result.is_nil = v3;
  return result;
}

Swift::UInt16 __swiftcall _StringGuts.foreignErrorCorrectedUTF16CodeUnit(at:)(Swift::String::Index at)
{
  v3 = v2;
  v4 = v1;
  v6 = at._rawBits >> 16;
  result = [v2 & 0xFFFFFFFFFFFFFFFLL characterAtIndex_];
  if ((result & 0xFC00) == 0xD800)
  {
    v8 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v8 = v4 & 0xFFFFFFFFFFFFLL;
    }

    if (v6 + 1 < v8)
    {
      v9 = result;
      if (([v3 & 0xFFFFFFFFFFFFFFFLL characterAtIndex_] & 0xFC00) == 0xDC00)
      {
        return v9;
      }

      else
      {
        return -3;
      }
    }

    return -3;
  }

  if ((result & 0xFC00) == 0xDC00)
  {
    if (at._rawBits < 0x10000)
    {
      return -3;
    }

    v10 = v6 - 1;
    v11 = result;
    v12 = [v3 & 0xFFFFFFFFFFFFFFFLL characterAtIndex_];
    result = v11;
    if ((v12 & 0xFC00) != 0xD800)
    {
      return -3;
    }
  }

  return result;
}

Swift::String::Index __swiftcall String.UTF16View.index(before:)(Swift::String::Index before)
{
  v3 = (v1 >> 59) & 1;
  if ((v2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((before._rawBits & 0xC) == 4 << v3)
  {
    v9 = v1;
    v10 = v2;
    before._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(before)._rawBits;
    v1 = v9;
    v2 = v10;
    if (before._rawBits < 0x4000)
    {
      goto LABEL_22;
    }
  }

  else if (before._rawBits < 0x4000)
  {
    goto LABEL_22;
  }

  v4 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v4 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v4 < before._rawBits >> 14)
  {
LABEL_22:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if ((v2 & 0x1000000000000000) != 0)
  {

    return specialized String.UTF16View._foreignIndex(before:)(before._rawBits);
  }

  else
  {
    v5 = (v2 >> 62) & 1;
    if ((v2 & 0x2000000000000000) == 0)
    {
      LODWORD(v5) = v1 < 0;
    }

    if (v5 == 1)
    {
      return ((before._rawBits & 0xFFFFFFFFFFFF0000) - 65523);
    }

    else if ((before._rawBits & 0xC000) != 0)
    {
      return (before._rawBits & 0xFFFFFFFFFFFF0000 | 5);
    }

    else
    {
      if ((before._rawBits & 1) == 0)
      {
        before._rawBits = _StringGuts.scalarAlignSlow(_:)(before)._rawBits;
      }

      rawBits = before._rawBits;
      v8 = before._rawBits >> 16;
      result._rawBits = _StringGuts.fastUTF8ScalarLength(endingAt:)(before._rawBits >> 16);
      if (result._rawBits == 4)
      {
        return ((rawBits & 0xFFFFFFFFFFFF0000) - 245756);
      }

      else if (__OFSUB__(0, result._rawBits))
      {
        __break(1u);
      }

      else
      {
        return (((v8 - result._rawBits) << 16) | 5);
      }
    }
  }

  return result;
}

Swift::Int __swiftcall _StringGuts.fastUTF8ScalarLength(endingAt:)(Swift::Int endingAt)
{
  if ((v2 & 0x2000000000000000) != 0)
  {
LABEL_11:
    v9[0] = v1;
    v9[1] = v2 & 0xFFFFFFFFFFFFFFLL;
    v7 = endingAt - 1;
    endingAt = 1;
    do
    {
      if ((v7 & 0x8000000000000000) != 0 || v7 >= (HIBYTE(v2) & 0xF))
      {
        goto LABEL_19;
      }

      if ((*(v9 + v7) & 0xC0) != 0x80)
      {
        return endingAt;
      }

      --v7;
      v6 = __OFADD__(endingAt++, 1);
    }

    while (!v6);
    __break(1u);
  }

  else
  {
    if ((v1 & 0x1000000000000000) != 0)
    {
      v3 = ((v2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v1 &= 0xFFFFFFFFFFFFuLL;
    }

    else
    {
      v8 = endingAt;
      v3 = _StringObject.sharedUTF8.getter(v1, v2);
      endingAt = v8;
    }

    v4 = endingAt - 1;
    endingAt = 1;
    v5 = v4;
    while (1)
    {
      if (v5 < 0 || v4 >= v1)
      {
LABEL_19:
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      if ((v3[v5] & 0xC0) != 0x80)
      {
        break;
      }

      --v5;
      v6 = __OFADD__(endingAt++, 1);
      if (v6)
      {
        __break(1u);
        goto LABEL_11;
      }
    }
  }

  return endingAt;
}

Swift::String::Index __swiftcall String.UTF16View._foreignIndex(_:offsetBy:)(Swift::String::Index _, Swift::Int offsetBy)
{
  v4 = offsetBy + (_._rawBits >> 16);
  if (v4 < 0)
  {
    goto LABEL_6;
  }

  v5 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v5 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v5 < v4)
  {
LABEL_6:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return ((v4 << 16) | 8);
}

uint64_t Int.magnitude.getter(uint64_t result)
{
  if (result < 0)
  {
    return -result;
  }

  return result;
}

Swift::Int __swiftcall String.UTF16View._nativeGetOffset(for:)(Swift::Int result)
{
  v3 = (v2 >> 62) & 1;
  if ((v2 & 0x2000000000000000) == 0)
  {
    LODWORD(v3) = v1 < 0;
  }

  if (v3 == 1)
  {
    return result >> 16;
  }

  if (result < 0x4000)
  {
    return 0;
  }

  if ((result & 0xC001) == 0)
  {
    goto LABEL_61;
  }

  while (1)
  {
    v4 = v1 & ~v2 & 0x2000000000000000;
    if (v2 >> 60)
    {
      if (!v4)
      {
        break;
      }
    }

    else if (!v4)
    {
      goto LABEL_13;
    }

    if ((*((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x10) & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_13:
    if (result < 0x400000)
    {
      break;
    }

    v5 = result;
    v6 = v1;
    v7 = v2;
    v8 = _StringGuts.loadUnmanagedBreadcrumbs()(v1, v2);
    v9 = v6 & 0xFFFFFFFFFFFFLL;
    if ((v7 & 0x2000000000000000) != 0)
    {
      v10 = HIBYTE(v7) & 0xF;
    }

    else
    {
      v10 = v6 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 >> 14 == 4 * v10)
    {
      return v8[2];
    }

    v11 = _StringBreadcrumbs.getBreadcrumb(forIndex:)(v5);
    rawBits = v11.lowerBound._rawBits;
    v13 = v11.lowerBound._rawBits >> 16;
    v14 = v5 >> 16;
    if (v5 >> 16 < v11.lowerBound._rawBits >> 16)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if ((v7 & 0x2000000000000000) != 0)
    {
LABEL_64:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if ((v6 & 0x1000000000000000) != 0)
    {
      v15 = v5;
      v16 = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      if (v9 < v14)
      {
        goto LABEL_64;
      }
    }

    else
    {
      v16 = _StringObject.sharedUTF8.getter(v6, v7);
      rawBits = v11.lowerBound._rawBits;
      v13 = v11.lowerBound._rawBits >> 16;
      v15 = v5;
      v9 = v36;
      v14 = v5 >> 16;
      if (v9 < (v5 >> 16))
      {
        goto LABEL_64;
      }
    }

    v17 = (v15 >> 14) - (rawBits >> 14);
    v18 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v13, v14, v16, v9);
    result = _sSWySWSRyxGclufCs5UInt8V_Tt0gq5Tm(v18, v19);
    if (result)
    {
      v20 = result;
      if (v1 - result < 1)
      {
        goto LABEL_56;
      }

      v21 = v1;
      v22 = result;
      if ((*result & 0xC0) == 0x80)
      {
        v23 = result + 1;
        do
        {
          v22 = v23;
          if (v23 >= v1)
          {
            break;
          }

          ++v23;
        }

        while ((v22->i8[0] & 0xC0) == 0x80);
      }

      v37 = v22;
      result = _sSS9UTF16ViewV12_utf16Length7readPtr03endF016unsignedSIMDType06signedI0SiSVz_SVxmq_mts4SIMDRzsAHR_s5UInt8V6ScalarRtzs4Int8VAKRt_r0_lFs5SIMD8VyAJG_AQyANGTt1t2g5(&v37, v1);
      v24 = v37;
      if (result >= 1)
      {
        v25 = v37->i8[0];
        if ((v37->i8[0] & 0xC0) == 0x80)
        {
          if (v37 > v20)
          {
            v26 = (v37 - 1);
            while (v26 > v20)
            {
              v27 = v26->i8[0];
              v26 = (v26 - 1);
              v25 = v27;
              if ((v27 & 0xC0) != 0x80)
              {
                v24 = (v26 + 1);
                goto LABEL_40;
              }
            }

            v25 = v20->i8[0];
            v24 = v20;
LABEL_40:
            v37 = v24;
          }

          if ((v25 & 0xF8) == 0xF0)
          {
            if (v24 == v20)
            {
              goto LABEL_56;
            }

            result -= 2;
          }

          else
          {
            --result;
            if (v24 == v20)
            {
LABEL_56:
              result = 0;
              goto LABEL_57;
            }
          }
        }
      }

      for (; v24 < v21; result += v30)
      {
        v28 = __clz(~v24->i8[0]) - 24;
        if (v24->i8[0] >= 0)
        {
          v29 = 1;
        }

        else
        {
          v29 = v28;
        }

        v24 = (v24 + v29);
        if (v29 == 4)
        {
          v30 = 2;
        }

        else
        {
          v30 = 1;
        }

        if (v21 < v24)
        {
          v30 = 0;
        }
      }
    }

LABEL_57:
    v31 = v17 + result;
    if (__OFADD__(v17, result))
    {
      __break(1u);
      return result;
    }

    result = v11.offset + v31;
    if (!__OFADD__(v11.offset, v31))
    {
      return result;
    }

    __break(1u);
LABEL_61:
    v32 = result;
    v33 = v1;
    v34 = v2;
    v35._rawBits = _StringGuts.scalarAlignSlow(_:)(result)._rawBits;
    v1 = v33;
    v2 = v34;
    result = v32 & 0xC | v35._rawBits & 0xFFFFFFFFFFFFFFF3 | 1;
  }

  return String.UTF16View._utf16Distance(from:to:)(15, result);
}

Swift::String::Index __swiftcall String.UTF16View._nativeGetIndex(for:)(Swift::Int a1)
{
  if (a1 < 0)
  {
    goto LABEL_62;
  }

  if (!a1)
  {
    return 15;
  }

  v3 = (v2 >> 62) & 1;
  if ((v2 & 0x2000000000000000) == 0)
  {
    LODWORD(v3) = v1 < 0;
  }

  if (v3 == 1)
  {
    return ((a1 << 16) | 0xD);
  }

  v5 = v1 & ~v2 & 0x2000000000000000;
  if (v2 >> 60)
  {
    if (!v5)
    {
      return (specialized BidirectionalCollection._index(_:offsetBy:)(0xFuLL, a1, v1, v2) | 4);
    }

    goto LABEL_13;
  }

  if (v5)
  {
LABEL_13:
    if (a1 < 0x40 || (*((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x10) & 0x8000000000000000) == 0)
    {
      return (specialized BidirectionalCollection._index(_:offsetBy:)(0xFuLL, a1, v1, v2) | 4);
    }

    goto LABEL_15;
  }

  if (a1 < 0x40)
  {
    return (specialized BidirectionalCollection._index(_:offsetBy:)(0xFuLL, a1, v1, v2) | 4);
  }

LABEL_15:
  v6 = v1;
  v8 = v2;
  v9 = _StringGuts.loadUnmanagedBreadcrumbs()(v1, v2);
  if (v9[2] == a1)
  {
    v10 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v10 = v6;
    }

    v11 = v10 << 16;
    if ((v8 & 0x1000000000000000) == 0 || (v6 & 0x800000000000000) != 0)
    {
      return (v11 | 7);
    }

    else
    {
      return (v11 | 0xB);
    }
  }

  v12 = a1;
  v13 = a1 >> 6;
  v14 = v9[3];
  v15 = v12;
  sub_1802E86D0(v13, 1, v14);
  result._rawBits = *(v14 + 8 * v13 + 32);
  v16 = v15 & 0x3F;
  if ((v15 & 0x3F) == 0)
  {
    return result;
  }

  if ((v8 & 0x2000000000000000) != 0)
  {
    v26 = HIBYTE(v8) & 0xF;
    v33[0] = v6;
    v33[1] = v8 & 0xFFFFFFFFFFFFFFLL;
    v20 = result._rawBits >> 16;
    if (result._rawBits >> 16 < v26)
    {
      if ((result._rawBits & 0xC000) != 0)
      {
        v27 = -1;
      }

      else
      {
        v27 = 0;
      }

      do
      {
        v28 = *(v33 + v20);
        if (v28 < 0)
        {
          v30 = __clz(~v28);
          v31 = v30 - 24;
          v29 = (v30 - 24);
          if (v31 == 4)
          {
            v27 += 2;
            if (v27 >= v16)
            {
LABEL_58:
              if (v16 >= v27)
              {
                goto LABEL_59;
              }

              goto LABEL_63;
            }

            v29 = 4;
          }

          else if (++v27 >= v16)
          {
            goto LABEL_58;
          }
        }

        else
        {
          if (++v27 >= v16)
          {
            if (v16 >= v27)
            {
              v29 = 1;
LABEL_59:
              v20 += v29;
              goto LABEL_60;
            }

LABEL_63:
            v32 = 16388;
            return (v32 | (v20 << 16));
          }

          v29 = 1;
        }

        v20 += v29;
      }

      while (v20 < v26);
    }

LABEL_62:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  rawBits = result._rawBits;
  if ((v6 & 0x1000000000000000) != 0)
  {
    v18 = ((v8 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v19 = v6 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v18 = _StringObject.sharedUTF8.getter(v6, v8);
  }

  v20 = rawBits >> 16;
  if ((rawBits >> 16) >= v19)
  {
    goto LABEL_62;
  }

  if ((rawBits & 0xC000) != 0)
  {
    v21 = -1;
  }

  else
  {
    v21 = 0;
  }

  while (1)
  {
    v22 = v18[v20];
    if (v22 < 0)
    {
      break;
    }

    if (++v21 >= v16)
    {
      if (v16 < v21)
      {
        goto LABEL_63;
      }

      v23 = 1;
      goto LABEL_57;
    }

    v23 = 1;
LABEL_32:
    v20 += v23;
    if (v20 >= v19)
    {
      goto LABEL_62;
    }
  }

  v24 = __clz(~v22);
  v25 = v24 - 24;
  v23 = (v24 - 24);
  if (v25 != 4)
  {
    if (++v21 >= v16)
    {
      goto LABEL_56;
    }

    goto LABEL_32;
  }

  v21 += 2;
  if (v21 < v16)
  {
    v23 = 4;
    goto LABEL_32;
  }

LABEL_56:
  if (v16 < v21)
  {
    goto LABEL_63;
  }

LABEL_57:
  v20 += v23;
LABEL_60:
  v32 = 5;
  return (v32 | (v20 << 16));
}

Swift::String::Index_optional __swiftcall String.UTF16View.index(_:offsetBy:limitedBy:)(Swift::String::Index _, Swift::Int offsetBy, Swift::String::Index limitedBy)
{
  v5 = v4;
  v6 = v3;
  rawBits = limitedBy._rawBits;
  v10 = (v3 >> 59) & 1;
  if ((v4 & 0x1000000000000000) == 0)
  {
    LOBYTE(v10) = 1;
  }

  v11 = 4 << v10;
  if ((limitedBy._rawBits & 0xC) == 4 << v10)
  {
    rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(limitedBy)._rawBits;
  }

  v12 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v12 = v6 & 0xFFFFFFFFFFFFLL;
  }

  v13 = 4 * v12;
  if (4 * v12 < rawBits >> 14)
  {
    v17.value = String.UTF16View.index(_:offsetBy:)(_, offsetBy);
    goto LABEL_37;
  }

  if ((_._rawBits & 0xC) != v11)
  {
    if (v13 >= _._rawBits >> 14)
    {
      goto LABEL_10;
    }

LABEL_41:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  _._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(_)._rawBits;
  if (v13 < _._rawBits >> 14)
  {
    goto LABEL_41;
  }

LABEL_10:
  if ((v5 & 0x1000000000000000) != 0)
  {
    v17 = String.UTF16View._foreignIndex(_:offsetBy:limitedBy:)(_, offsetBy, rawBits);
    goto LABEL_38;
  }

  v14 = (v5 >> 62) & 1;
  if ((v5 & 0x2000000000000000) == 0)
  {
    LOBYTE(v14) = v6 < 0;
  }

  if ((v14 & 1) == 0)
  {
    if ((rawBits & 0xC001) == 0)
    {
      rawBits = rawBits & 0xC | _StringGuts.scalarAlignSlow(_:)(rawBits)._rawBits & 0xFFFFFFFFFFFFFFF3 | 1;
    }

    if ((_._rawBits & 0xC001) == 0)
    {
      _._rawBits = _._rawBits & 0xC | _StringGuts.scalarAlignSlow(_:)(_)._rawBits & 0xFFFFFFFFFFFFFFF3 | 1;
    }

    v15 = 96;
    if (_._rawBits < 0x4000)
    {
      v15 = 64;
    }

    v16 = offsetBy >= 0 ? offsetBy : -offsetBy;
    if (v16 < v15)
    {
      v17.value._rawBits = specialized BidirectionalCollection._index(_:offsetBy:limitedBy:)(_._rawBits, offsetBy, rawBits, v6, v5);
      if (!v17.is_nil)
      {
        v17.value._rawBits |= 4uLL;
      }

      goto LABEL_38;
    }
  }

  v18 = String.UTF16View._nativeGetOffset(for:)(_);
  v17.value._rawBits = String.UTF16View._nativeGetOffset(for:)(rawBits);
  if ((offsetBy & 0x8000000000000000) == 0)
  {
    if (rawBits >> 14 < _._rawBits >> 14)
    {
      goto LABEL_35;
    }

    if (!__OFADD__(v18, offsetBy))
    {
      if (v17.value._rawBits < v18 + offsetBy)
      {
        goto LABEL_44;
      }

      goto LABEL_35;
    }

    __break(1u);
LABEL_46:
    __break(1u);
    return v17;
  }

  if (_._rawBits >> 14 < rawBits >> 14)
  {
    goto LABEL_35;
  }

  if (__OFADD__(v18, offsetBy))
  {
    goto LABEL_46;
  }

  if (v18 + offsetBy < v17.value._rawBits)
  {
LABEL_44:
    v17.value._rawBits = 0;
    v17.is_nil = 1;
    goto LABEL_38;
  }

LABEL_35:
  if (__OFADD__(v18, offsetBy))
  {
    __break(1u);
    goto LABEL_44;
  }

  v17.value = String.UTF16View._nativeGetIndex(for:)(v18 + offsetBy);
LABEL_37:
  v17.is_nil = 0;
LABEL_38:
  v17.is_nil &= 1u;
  return v17;
}

Swift::String::Index_optional __swiftcall String.UTF16View._foreignIndex(_:offsetBy:limitedBy:)(Swift::String::Index _, Swift::Int offsetBy, Swift::String::Index limitedBy)
{
  v5 = (limitedBy._rawBits >> 16) - (_._rawBits >> 16);
  if (offsetBy >= 1)
  {
    if (v5 < 0 || v5 >= offsetBy)
    {
      goto LABEL_8;
    }

LABEL_7:
    v6 = 0;
    v7 = 1;
    goto LABEL_14;
  }

  if (v5 <= 0 && v5 > offsetBy)
  {
    goto LABEL_7;
  }

LABEL_8:
  v8 = (_._rawBits >> 16) + offsetBy;
  if (v8 < 0)
  {
    goto LABEL_13;
  }

  v9 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v9 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v9 < v8)
  {
LABEL_13:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v7 = 0;
  v6 = (v8 << 16) | 8;
LABEL_14:
  result.value._rawBits = v6;
  result.is_nil = v7;
  return result;
}

Swift::Int __swiftcall String.UTF16View.distance(from:to:)(Swift::String::Index from, Swift::String::Index to)
{
  v5 = (v2 >> 59) & 1;
  if ((v3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  v6 = 4 << v5;
  if ((from._rawBits & 0xC) == 4 << v5)
  {
    v14 = v2;
    v15 = v3;
    from._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(from)._rawBits;
    v2 = v14;
    v3 = v15;
  }

  if ((to._rawBits & 0xC) == v6)
  {
    rawBits = from._rawBits;
    v17 = to._rawBits;
    v18 = v2;
    v19 = v3;
    v20._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(v17)._rawBits;
    v2 = v18;
    v3 = v19;
    to._rawBits = v20._rawBits;
    from._rawBits = rawBits;
  }

  if ((v3 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(v3) & 0xF;
  }

  else
  {
    v7 = v2 & 0xFFFFFFFFFFFFLL;
  }

  v8 = from._rawBits >> 16;
  if (v7 < from._rawBits >> 16 && (v21 = from._rawBits, v22 = v3, v23 = v2, isExecutableLinkedOnOrAfter = _swift_stdlib_isExecutableLinkedOnOrAfter(0x50700u), v2 = v23, v3 = v22, v25 = isExecutableLinkedOnOrAfter, from._rawBits = v21, v25) || v7 < to._rawBits >> 16 && (v26 = from._rawBits, v27 = v3, v28 = v2, v29 = _swift_stdlib_isExecutableLinkedOnOrAfter(0x50700u), v2 = v28, v3 = v27, v30 = v29, from._rawBits = v26, v30))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if ((v3 & 0x1000000000000000) != 0)
  {

    return specialized String.UTF16View._foreignDistance(from:to:)(from._rawBits, to._rawBits);
  }

  v9 = (to._rawBits >> 16) - v8;
  v10 = (v3 >> 62) & 1;
  if ((v3 & 0x2000000000000000) == 0)
  {
    LOBYTE(v10) = v2 < 0;
  }

  if (v10)
  {
    return v9;
  }

  if (from._rawBits < 0x4000 || to._rawBits < 0x4000)
  {
    if ((v9 & 0x8000000000000000) == 0)
    {
      if (v9 < 0x20)
      {
        goto LABEL_27;
      }

      goto LABEL_23;
    }

    v12 = 32;
LABEL_26:
    if (v12 > v8 - (to._rawBits >> 16))
    {
      goto LABEL_27;
    }

LABEL_23:
    v11 = String.UTF16View._nativeGetOffset(for:)(from);
    return String.UTF16View._nativeGetOffset(for:)(to) - v11;
  }

  if ((v9 & 0x8000000000000000) != 0)
  {
    v12 = 64;
    goto LABEL_26;
  }

  if (v9 >= 0x40)
  {
    goto LABEL_23;
  }

LABEL_27:
  if ((from._rawBits & 0xC001) == 0)
  {
    from._rawBits = from._rawBits & 0xC | _StringGuts.scalarAlignSlow(_:)(from)._rawBits & 0xFFFFFFFFFFFFFFF3 | 1;
  }

  if ((to._rawBits & 0xC001) == 0)
  {
    v31 = from._rawBits;
    v32 = _StringGuts.scalarAlignSlow(_:)(to)._rawBits;
    from._rawBits = v31;
    to._rawBits = to._rawBits & 0xC | v32 & 0xFFFFFFFFFFFFFFF3 | 1;
  }

  if (to._rawBits >> 14 >= from._rawBits >> 14)
  {

    return String.UTF16View._utf16Distance(from:to:)(from, to);
  }

  else
  {
    result = String.UTF16View._utf16Distance(from:to:)(to, from);
    v9 = -result;
    if (!__OFSUB__(0, result))
    {
      return v9;
    }

    __break(1u);
  }

  return result;
}

Swift::Int __swiftcall String.UTF16View._utf16Distance(from:to:)(Swift::String::Index from, Swift::String::Index to)
{
  rawBits = to._rawBits;
  v5 = from._rawBits;
  result = from._rawBits >> 16;
  v7 = to._rawBits >> 16;
  if (v7 < result)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if ((v3 & 0x2000000000000000) != 0)
  {
    v43[0] = v2;
    v43[1] = (v3 & 0xFFFFFFFFFFFFFFLL);
    if ((HIBYTE(v3) & 0xF) >= v7 && (v7 - result) >= 0)
    {
      if (v7 == result)
      {
        goto LABEL_21;
      }

      v21 = (v43 + result);
      v22 = (v43 + v7);
      v23 = (v43 + result);
      if ((*(v43 + result) & 0xC0) == 0x80)
      {
        v24 = (v43 + result + 1);
        do
        {
          v23 = v24;
          if (v24 >= v22)
          {
            break;
          }

          v24 = (v24 + 1);
        }

        while ((v23->i8[0] & 0xC0) == 0x80);
      }

      v25 = result;
      v42 = v23;
      v12 = _sSS9UTF16ViewV12_utf16Length7readPtr03endF016unsignedSIMDType06signedI0SiSVz_SVxmq_mts4SIMDRzsAHR_s5UInt8V6ScalarRtzs4Int8VAKRt_r0_lFs5SIMD8VyAJG_AQyANGTt1t2g5(&v42, v43 + v7);
      v26 = v42;
      if (v12 >= 1)
      {
        v27 = v42->i8[0];
        if ((v42->i8[0] & 0xC0) == 0x80)
        {
          if (v21 < v42)
          {
            v28 = (v43 + v25);
            v29 = (v42 - 1);
            do
            {
              if (v21 >= v29)
              {
                goto LABEL_33;
              }

              v30 = v29->i8[0];
              v29 = (v29 - 1);
            }

            while ((v30 & 0xC0) == 0x80);
            v28 = (v29 + 1);
LABEL_33:
            v42 = v28;
            v27 = v28->i8[0];
            v26 = v28;
          }

          if ((v27 & 0xF8) == 0xF0)
          {
            if (v26 == v21)
            {
              goto LABEL_21;
            }

            v12 -= 2;
          }

          else
          {
            --v12;
            if (v26 == v21)
            {
              goto LABEL_21;
            }
          }
        }
      }

      for (; v26 < v22; v12 += v33)
      {
        v31 = __clz(~v26->i8[0]) - 24;
        if (v26->i8[0] >= 0)
        {
          v32 = 1;
        }

        else
        {
          v32 = v31;
        }

        v26 = (v26 + v32);
        if (v32 == 4)
        {
          v33 = 2;
        }

        else
        {
          v33 = 1;
        }

        if (v22 < v26)
        {
          v33 = 0;
        }
      }

      goto LABEL_65;
    }

LABEL_70:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if ((v2 & 0x1000000000000000) == 0)
  {
    goto LABEL_69;
  }

  v8 = ((v3 & 0xFFFFFFFFFFFFFFFLL) + 32);
  v9 = v2 & 0xFFFFFFFFFFFFLL;
  if ((v2 & 0xFFFFFFFFFFFFLL) < v7)
  {
    goto LABEL_70;
  }

  while (1)
  {
    v10 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(result, v7, v8, v9);
    v12 = _sSWySWSRyxGclufCs5UInt8V_Tt0gq5Tm(v10, v11);
    if (!v12)
    {
      goto LABEL_65;
    }

    v13 = v12;
    if ((v7 - v12) < 1)
    {
LABEL_21:
      v12 = 0;
      goto LABEL_65;
    }

    v14 = v7;
    v15 = v12;
    if ((*v12 & 0xC0) == 0x80)
    {
      v16 = (v12 + 1);
      do
      {
        v15 = v16;
        if (v16 >= v7)
        {
          break;
        }

        v16 = (v16 + 1);
      }

      while ((v15->i8[0] & 0xC0) == 0x80);
    }

    v43[0] = v15;
    v12 = _sSS9UTF16ViewV12_utf16Length7readPtr03endF016unsignedSIMDType06signedI0SiSVz_SVxmq_mts4SIMDRzsAHR_s5UInt8V6ScalarRtzs4Int8VAKRt_r0_lFs5SIMD8VyAJG_AQyANGTt1t2g5(v43, v7);
    v17 = v43[0];
    if (v12 >= 1)
    {
      v18 = v43[0]->i8[0];
      if ((v43[0]->i8[0] & 0xC0) == 0x80)
      {
        if (v43[0] > v13)
        {
          v19 = &v43[0][-1] + 7;
          while (v19 > v13)
          {
            v20 = *v19--;
            if ((v20 & 0xC0) != 0x80)
            {
              v17 = (v19 + 1);
              goto LABEL_50;
            }
          }

          v17 = v13;
LABEL_50:
          v43[0] = v17;
          v18 = v17->i8[0];
        }

        if ((v18 & 0xF8) == 0xF0)
        {
          if (v17 == v13)
          {
            goto LABEL_21;
          }

          v12 -= 2;
        }

        else
        {
          --v12;
          if (v17 == v13)
          {
            goto LABEL_21;
          }
        }
      }
    }

    for (; v17 < v14; v12 += v36)
    {
      v34 = __clz(~v17->i8[0]) - 24;
      if (v17->i8[0] >= 0)
      {
        v35 = 1;
      }

      else
      {
        v35 = v34;
      }

      v17 = (v17 + v35);
      if (v35 == 4)
      {
        v36 = 2;
      }

      else
      {
        v36 = 1;
      }

      if (v14 < v17)
      {
        v36 = 0;
      }
    }

LABEL_65:
    v37 = (rawBits >> 14) - (v5 >> 14);
    v38 = __OFADD__(v37, v12);
    result = v37 + v12;
    if (!v38)
    {
      return result;
    }

    __break(1u);
LABEL_69:
    v39 = result;
    v41 = v7;
    v8 = _StringObject.sharedUTF8.getter(v2, v3);
    result = v39;
    v9 = v40;
    v7 = v41;
    if (v9 < v41)
    {
      goto LABEL_70;
    }
  }
}

Swift::Int __swiftcall String.UTF16View._foreignCount()()
{
  if ((v1 & 0x2000000000000000) != 0)
  {
    return HIBYTE(v1) & 0xF;
  }

  else
  {
    return v0 & 0xFFFFFFFFFFFFLL;
  }
}

Swift::Unicode::Scalar __swiftcall _StringGuts.fastUTF8Scalar(startingAt:)(Swift::Int startingAt)
{
  if ((v2 & 0x2000000000000000) != 0)
  {
    v6[0] = v1;
    v6[1] = v2 & 0xFFFFFFFFFFFFFFLL;
    return _decodeScalar(_:startingAt:)(v6, v1, startingAt);
  }

  else
  {
    if ((v1 & 0x1000000000000000) != 0)
    {
      v4 = ((v2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v4 = _StringObject.sharedUTF8.getter(v1, v2);
    }

    return _decodeScalar(_:startingAt:)(v4, v1, startingAt);
  }
}

Swift::String::Index *protocol witness for BidirectionalCollection.index(before:) in conformance String.UTF16View@<X0>(Swift::String::Index *result@<X0>, unint64_t *a2@<X8>)
{
  v3._rawBits = result->_rawBits;
  v4 = *v2;
  v5 = v2[1];
  v6 = (*v2 >> 59) & 1;
  if ((v5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v6) = 1;
  }

  if ((result->_rawBits & 0xC) == 4 << v6)
  {
    v11 = *v2;
    v12 = v2[1];
    v13 = a2;
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(result->_rawBits)._rawBits;
    v5 = v12;
    v4 = v11;
    a2 = v13;
    v3._rawBits = result;
    if (result < 0x4000)
    {
      goto LABEL_23;
    }
  }

  else if (v3._rawBits < 0x4000)
  {
    goto LABEL_23;
  }

  v7 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v7 < v3._rawBits >> 14)
  {
LABEL_23:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if ((v5 & 0x1000000000000000) != 0)
  {
    rawBits = v3._rawBits;
    v15 = a2;
    result = specialized String.UTF16View._foreignIndex(before:)(rawBits);
    a2 = v15;
    v9 = result;
    goto LABEL_21;
  }

  v8 = (v5 >> 62) & 1;
  if ((v5 & 0x2000000000000000) == 0)
  {
    LOBYTE(v8) = v4 < 0;
  }

  if (v8)
  {
    v9 = (v3._rawBits & 0xFFFFFFFFFFFF0000) - 65523;
LABEL_21:
    *a2 = v9;
    return result;
  }

  if ((v3._rawBits & 0xC000) != 0)
  {
    v9 = v3._rawBits & 0xFFFFFFFFFFFF0000 | 5;
    goto LABEL_21;
  }

  v10 = a2;
  if ((v3._rawBits & 1) == 0)
  {
    v3._rawBits = _StringGuts.scalarAlignSlow(_:)(v3)._rawBits;
  }

  result = _StringGuts.fastUTF8ScalarLength(endingAt:)(v3._rawBits >> 16);
  if (result == 4)
  {
    v9 = (v3._rawBits & 0xFFFFFFFFFFFF0000) - 245756;
    a2 = v10;
    goto LABEL_21;
  }

  if (!__OFSUB__(0, result))
  {
    a2 = v10;
    v9 = (((v3._rawBits >> 16) - result) << 16) | 5;
    goto LABEL_21;
  }

  __break(1u);
  return result;
}

Swift::String::Index *protocol witness for BidirectionalCollection.formIndex(before:) in conformance String.UTF16View(Swift::String::Index *result)
{
  v3 = *v1;
  v2 = v1[1];
  rawBits = result->_rawBits;
  v5 = (*v1 >> 59) & 1;
  if ((v2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((result->_rawBits & 0xC) == 4 << v5)
  {
    v16 = result;
    rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(result->_rawBits)._rawBits;
    result = v16;
    if (rawBits < 0x4000)
    {
      goto LABEL_26;
    }
  }

  else if (rawBits < 0x4000)
  {
    goto LABEL_26;
  }

  v6 = HIBYTE(v2) & 0xF;
  v7 = v3 & 0xFFFFFFFFFFFFLL;
  if ((v2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(v2) & 0xF;
  }

  else
  {
    v8 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v8 < rawBits >> 14)
  {
LABEL_26:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if ((v2 & 0x1000000000000000) != 0)
  {
    v17 = result;
    v10 = specialized String.UTF16View._foreignIndex(before:)(rawBits);
    result = v17;
    goto LABEL_37;
  }

  v9 = (v2 >> 62) & 1;
  if ((v2 & 0x2000000000000000) == 0)
  {
    LOBYTE(v9) = v3 < 0;
  }

  if (v9)
  {
    v10 = (rawBits & 0xFFFFFFFFFFFF0000) - 65523;
    goto LABEL_37;
  }

  if ((rawBits & 0xC000) != 0)
  {
    v10 = rawBits & 0xFFFFFFFFFFFF0000 | 5;
    goto LABEL_37;
  }

  if (rawBits)
  {
    v11 = rawBits >> 16;
    if ((v2 & 0x2000000000000000) == 0)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v21 = result;
    v18._rawBits = _StringGuts.scalarAlignSlow(_:)(rawBits)._rawBits;
    v6 = HIBYTE(v2) & 0xF;
    rawBits = v18._rawBits;
    v7 = v3 & 0xFFFFFFFFFFFFLL;
    result = v21;
    v11 = rawBits >> 16;
    if ((v2 & 0x2000000000000000) == 0)
    {
LABEL_18:
      if ((v3 & 0x1000000000000000) != 0)
      {
        v12 = ((v2 & 0xFFFFFFFFFFFFFFFLL) + 32);
        if (rawBits < 0x10000)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v20 = rawBits;
        v21 = result;
        v12 = _StringObject.sharedUTF8.getter(v3, v2);
        rawBits = v20;
        result = v21;
        if (v20 < 0x10000)
        {
          goto LABEL_38;
        }
      }

      v13 = v12 - 1;
      v14 = 1;
      v15 = v11;
      do
      {
        if (v11 > v7)
        {
          break;
        }

        if ((v13[v15] & 0xC0) != 0x80)
        {
          goto LABEL_35;
        }

        ++v14;
        --v15;
      }

      while (v15);
LABEL_38:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }
  }

  v22[0] = v3;
  v22[1] = v2 & 0xFFFFFFFFFFFFFFLL;
  if (rawBits < 0x10000)
  {
    goto LABEL_38;
  }

  v14 = 1;
  v19 = v11 - 1;
  while (1)
  {
    if (v11 - 1 >= v6)
    {
      goto LABEL_38;
    }

    if ((*(v22 + v19) & 0xC0) != 0x80)
    {
      break;
    }

    ++v14;
    if (--v19 == -1)
    {
      goto LABEL_38;
    }
  }

LABEL_35:
  v10 = (rawBits & 0xFFFFFFFFFFFF0000) - 245756;
  if (v14 != 4)
  {
    v10 = ((v11 - v14) << 16) | 5;
  }

LABEL_37:
  result->_rawBits = v10;
  return result;
}

Swift::String::Index _sSS9UTF16ViewVSlsSl5index_8offsetBy5IndexQzAF_SitFTW_0@<X0>(Swift::String::Index *a1@<X0>, Swift::Int a2@<X1>, Swift::String::Index *a3@<X8>)
{
  result._rawBits = String.UTF16View.index(_:offsetBy:)(a1->_rawBits, a2)._rawBits;
  a3->_rawBits = result._rawBits;
  return result;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance String.UTF16View(_WORD *a1, Swift::UInt64 *a2))()
{
  rawBits = *a2;
  v5 = *v2;
  v6 = v2[1];
  v7 = (*v2 >> 59) & 1;
  if ((v6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v7) = 1;
  }

  if ((rawBits & 0xC) == 4 << v7)
  {
    v13 = *v2;
    v14 = v6;
    v15._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(rawBits)._rawBits;
    v6 = v14;
    v5 = v13;
    rawBits = v15._rawBits;
  }

  v8 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v8 = v5 & 0xFFFFFFFFFFFFLL;
  }

  v9 = rawBits >> 16;
  if (rawBits >> 16 >= v8)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if ((v6 & 0x1000000000000000) != 0)
  {
    v11 = String.UTF16View._foreignSubscript(position:)(rawBits);
  }

  else
  {
    if ((rawBits & 1) == 0)
    {
      v9 = _StringGuts.scalarAlignSlow(_:)(rawBits)._rawBits >> 16;
    }

    LODWORD(v10) = _StringGuts.fastUTF8Scalar(startingAt:)(v9);
    v11 = Unicode.Scalar.UTF16View.subscript.getter(rawBits >> 14, v10);
  }

  *a1 = v11;
  return _swift_displayCrashMessage;
}

unint64_t protocol witness for Collection.subscript.getter in conformance String.UTF8View@<X0>(Swift::UInt64 *a1@<X0>, Swift::UInt64 *a2@<X8>)
{
  v4._rawBits = a1[1];
  *a2 = specialized String.UTF8View.subscript.getter(*a1, v4, *v2, v2[1]);
  a2[1] = v5;
  a2[2] = v7;
  a2[3] = v6;

  return v6;
}

Swift::UInt64 String.UTF8View.subscript.getter(Swift::UInt64 a1, Swift::String::Index a2, unint64_t a3, unint64_t a4)
{
  v4 = specialized String.UTF8View.subscript.getter(a1, a2, a3, a4);
  v5;
  return v4;
}

uint64_t protocol witness for BidirectionalCollection.index(_:offsetBy:limitedBy:) in conformance String@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t (*a4)(void, uint64_t, void, void, void)@<X5>, uint64_t a5@<X8>)
{
  result = a4(*a1, a2, *a3, *v5, v5[1]);
  *a5 = result;
  *(a5 + 8) = v8 & 1;
  return result;
}

unint64_t protocol witness for Collection.index(after:) in conformance String.UTF16View@<X0>(Swift::UInt64 *a1@<X0>, unint64_t *a2@<X8>)
{
  rawBits = *a1;
  v6 = *v2;
  v5 = v2[1];
  v7 = (*v2 >> 59) & 1;
  if ((v5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v7) = 1;
  }

  if ((rawBits & 0xC) == 4 << v7)
  {
    rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(rawBits)._rawBits;
  }

  v8 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v8 = v6 & 0xFFFFFFFFFFFFLL;
  }

  v9 = rawBits >> 16;
  if (rawBits >> 16 >= v8)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if ((v5 & 0x1000000000000000) != 0)
  {
    result = specialized String.UTF16View._foreignIndex(after:)(rawBits);
    goto LABEL_29;
  }

  v10 = (v5 >> 62) & 1;
  if ((v5 & 0x2000000000000000) == 0)
  {
    LOBYTE(v10) = v6 < 0;
  }

  if ((v10 & 1) == 0)
  {
    if ((rawBits & 0xC001) != 0)
    {
      if ((v5 & 0x2000000000000000) == 0)
      {
LABEL_15:
        if ((v6 & 0x1000000000000000) != 0)
        {
          LODWORD(v12) = *((v5 & 0xFFFFFFFFFFFFFFFLL) + 32 + v9);
          if ((v12 & 0x80) != 0)
          {
            goto LABEL_17;
          }

LABEL_26:
          v12 = 1;
          goto LABEL_27;
        }

        v14 = rawBits;
        v12 = _StringObject.sharedUTF8.getter(v6, v5);
        rawBits = v14;
        LODWORD(v12) = *(v12 + v9);
        if ((v12 & 0x80) == 0)
        {
          goto LABEL_26;
        }

LABEL_17:
        LODWORD(v12) = __clz(v12 ^ 0xFF) - 24;
        if (v12 == 4)
        {
          if ((rawBits & 0xC000) == 0)
          {
            v13 = 16388;
LABEL_28:
            result = rawBits & 0xFFFFFFFFFFFF0000 | v13;
            goto LABEL_29;
          }

          v12 = 4;
        }

        else
        {
          v12 = v12;
        }

LABEL_27:
        rawBits += v12 << 16;
        v13 = 5;
        goto LABEL_28;
      }
    }

    else
    {
      rawBits = _StringGuts.scalarAlignSlow(_:)(rawBits)._rawBits;
      v9 = rawBits >> 16;
      if ((v5 & 0x2000000000000000) == 0)
      {
        goto LABEL_15;
      }
    }

    v15[0] = v6;
    v15[1] = v5 & 0xFFFFFFFFFFFFFFLL;
    LODWORD(v12) = *(v15 + v9);
    if ((v12 & 0x80) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_17;
  }

  result = (rawBits & 0xFFFFFFFFFFFF0000) + 65549;
LABEL_29:
  *a2 = result;
  return result;
}

unint64_t protocol witness for Collection.formIndex(after:) in conformance String.UTF16View(Swift::UInt64 *a1)
{
  v4 = *v1;
  v3 = v1[1];
  rawBits = *a1;
  v6 = (*v1 >> 59) & 1;
  if ((v3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v6) = 1;
  }

  if ((rawBits & 0xC) == 4 << v6)
  {
    rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(rawBits)._rawBits;
  }

  v7 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  v8 = rawBits >> 16;
  if (rawBits >> 16 >= v7)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if ((v3 & 0x1000000000000000) != 0)
  {
    result = specialized String.UTF16View._foreignIndex(after:)(rawBits);
    goto LABEL_29;
  }

  v9 = (v3 >> 62) & 1;
  if ((v3 & 0x2000000000000000) == 0)
  {
    LOBYTE(v9) = v4 < 0;
  }

  if ((v9 & 1) == 0)
  {
    if ((rawBits & 0xC001) != 0)
    {
      if ((v3 & 0x2000000000000000) == 0)
      {
LABEL_15:
        if ((v4 & 0x1000000000000000) != 0)
        {
          LODWORD(v11) = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 32 + v8);
          if ((v11 & 0x80) != 0)
          {
            goto LABEL_17;
          }

LABEL_26:
          v11 = 1;
          goto LABEL_27;
        }

        v13 = rawBits;
        v11 = _StringObject.sharedUTF8.getter(v4, v3);
        rawBits = v13;
        LODWORD(v11) = *(v11 + v8);
        if ((v11 & 0x80) == 0)
        {
          goto LABEL_26;
        }

LABEL_17:
        LODWORD(v11) = __clz(v11 ^ 0xFF) - 24;
        if (v11 == 4)
        {
          if ((rawBits & 0xC000) == 0)
          {
            v12 = 16388;
LABEL_28:
            result = rawBits & 0xFFFFFFFFFFFF0000 | v12;
            goto LABEL_29;
          }

          v11 = 4;
        }

        else
        {
          v11 = v11;
        }

LABEL_27:
        rawBits += v11 << 16;
        v12 = 5;
        goto LABEL_28;
      }
    }

    else
    {
      rawBits = _StringGuts.scalarAlignSlow(_:)(rawBits)._rawBits;
      v8 = rawBits >> 16;
      if ((v3 & 0x2000000000000000) == 0)
      {
        goto LABEL_15;
      }
    }

    v14[0] = v4;
    v14[1] = v3 & 0xFFFFFFFFFFFFFFLL;
    LODWORD(v11) = *(v14 + v8);
    if ((v11 & 0x80) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_17;
  }

  result = (rawBits & 0xFFFFFFFFFFFF0000) + 65549;
LABEL_29:
  *a1 = result;
  return result;
}

void protocol witness for Sequence.makeIterator() in conformance String.UTF16View(uint64_t a1@<X8>)
{
  v2 = v1[1];
  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = *v1 & 0xFFFFFFFFFFFFLL;
  }

  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = 0;
  *(a1 + 24) = v3;
  *(a1 + 32) = 0;
  *(a1 + 34) = 1;
}

__objc2_class **protocol witness for Sequence._copyToContiguousArray() in conformance String.UTF16View()
{
  v1 = v0[1];
  v2 = specialized _copyCollectionToContiguousArray<A>(_:)(*v0, v1);
  v1;
  return v2;
}

uint64_t String.UTF16View.Iterator._guts.getter()
{
  v1 = *v0;
  v0[1];
  return v1;
}

void String.UTF16View.Iterator._guts.setter(uint64_t a1, uint64_t a2)
{
  v2[1];
  *v2 = a1;
  v2[1] = a2;
}

uint64_t String.UTF16View.Iterator._nextIsTrailingSurrogate.setter(uint64_t result)
{
  *(v1 + 32) = result;
  *(v1 + 34) = BYTE2(result) & 1;
  return result;
}

uint64_t String.UTF16View.makeIterator()@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = HIBYTE(a2) & 0xF;
  *a3 = result;
  *(a3 + 8) = a2;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v3 = result & 0xFFFFFFFFFFFFLL;
  }

  *(a3 + 16) = 0;
  *(a3 + 24) = v3;
  *(a3 + 32) = 0;
  *(a3 + 34) = 1;
  return result;
}

Swift::UInt16_optional __swiftcall String.UTF16View.Iterator.next()()
{
  if (*(v0 + 34))
  {
    v1 = *(v0 + 16);
    if (v1 >= *(v0 + 24))
    {
      LOWORD(v6) = 0;
      v5 = 1;
    }

    else
    {
      v2 = *v0;
      v3 = *(v0 + 8);
      if ((v3 & 0x1000000000000000) != 0)
      {
        v9 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)((v1 << 16));
        scalarLength = v9.scalarLength;
        v6 = *&v9._0._value;
        goto LABEL_10;
      }

      if ((v3 & 0x2000000000000000) != 0)
      {
        v10[0] = *v0;
        v10[1] = v3 & 0xFFFFFFFFFFFFFFLL;
        v4 = v10;
      }

      else
      {
        if ((v2 & 0x1000000000000000) == 0)
        {
          goto LABEL_17;
        }

        v4 = ((v3 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      while (1)
      {
        v6 = _decodeScalar(_:startingAt:)(v4, v2, v1);
LABEL_10:
        *(v0 + 16) = scalarLength + v1;
        if (v6 < 0x10000)
        {
          break;
        }

        v1 = v6;
        *(v0 + 32) = Unicode.Scalar.UTF16View.subscript.getter(1, v6);
        *(v0 + 34) = 0;
        LODWORD(v6) = ((v1 + 67043328) >> 10) + 55296;
        if ((v6 & 0x10000) == 0)
        {
          break;
        }

        __break(1u);
LABEL_17:
        v4 = _StringObject.sharedUTF8.getter(v2, v3);
      }

      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
    LOWORD(v6) = *(v0 + 32);
    *(v0 + 32) = 0;
    *(v0 + 34) = 1;
  }

  return (v6 | (v5 << 16));
}

uint64_t protocol witness for IteratorProtocol.next() in conformance String.UTF16View.Iterator@<X0>(uint64_t a1@<X8>)
{
  *&result = String.UTF16View.Iterator.next()();
  *a1 = result;
  *(a1 + 2) = BYTE2(result) & 1;
  return result;
}

uint64_t (*String.utf16.modify(void *a1))()
{
  v4 = *v1;
  v3 = v1[1];
  a1[2] = v1;
  a1[3] = v3;
  *a1 = v4;
  a1[1] = v3;
  v3;
  return String.utf16.modify;
}

uint64_t String.UnicodeScalarView.customMirror.getter@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, Class *a3@<X2>, uint64_t *a4@<X3>, unsigned __int8 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v30[0] = a1;
  v30[1] = a2;
  v28[0] = 0;
  v28[1] = 0;
  swift_bridgeObjectRetain_n(a2, 2);
  v14 = static Mirror._superclassIterator<A>(_:_:)(v30, v28, a3);
  v16 = v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v18 = swift_allocObject(v17, 0x50, 7uLL);
  v18[6] = a1;
  v18[7] = a2;
  v18[8] = a6;
  v18[9] = 0;
  v19 = canonical specialized generic type metadata accessor for _IndexBox<String.Index>();
  v20 = swift_allocObject(v19, 0x18, 7uLL);
  v20[2] = 15;
  v21 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v21 = a1;
  }

  v22 = 11;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) == 0)
  {
    v22 = 7;
  }

  v23 = v22 | (v21 << 16);
  v24 = swift_allocObject(v19, 0x18, 7uLL);
  v24[2] = v23;
  v18[2] = v20;
  v18[3] = &protocol witness table for _IndexBox<A>;
  v18[4] = v24;
  v18[5] = &protocol witness table for _IndexBox<A>;
  v29[0] = a1;
  v29[1] = a2;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss21CustomLeafReflectable_pMd, _ss21CustomLeafReflectable_pMR);
  result = swift_dynamicCast(v28, v29, a3, v25, 6uLL);
  v27 = result;
  if (result)
  {
    result = __swift_destroy_boxed_opaque_existential_1Tm(v28);
  }

  *a7 = a3;
  *(a7 + 8) = v18;
  *(a7 + 16) = 9;
  *(a7 + 24) = v14;
  *(a7 + 32) = v16;
  *(a7 + 40) = v27;
  return result;
}

uint64_t _sSS9UTF16ViewV12_utf16Length7readPtr03endF016unsignedSIMDType06signedI0SiSVz_SVxmq_mts4SIMDRzsAHR_s5UInt8V6ScalarRtzs4Int8VAKRt_r0_lFs5SIMD8VyAJG_AQyANGTt1t2g5(int8x8_t **a1, unint64_t a2)
{
  v2 = *a1;
  if (&(*a1)[1] >= a2)
  {
    return 0;
  }

  v3 = 0;
  do
  {
    v4 = v2 + 2;
    v5 = vand_s8(vcgt_s8(0xC0C0C0C0C0C0C0C0, *v2), 0x8040201008040201);
    v5.i8[0] = vaddv_s8(v5);
    v6 = vand_s8(vcgt_u8(*v2, 0xEFEFEFEFEFEFEFEFLL), 0x8040201008040201);
    v6.i8[0] = vaddv_s8(v6);
    v7 = vcnt_s8(v6);
    v7.i16[0] = vaddlv_u8(v7);
    v8 = v7.i32[0];
    v7.i32[0] = v5.i32[0];
    v9 = vcnt_s8(v7);
    v9.i16[0] = vaddlv_u8(v9);
    v3 += v8 - v9.i32[0] + 8;
    *a1 = ++v2;
  }

  while (v4 < a2);
  return v3;
}

uint64_t static Int8.+ infix(_:_:)(char a1, char a2)
{
  result = (a1 + a2);
  if (result != result)
  {
    __break(1u);
  }

  return result;
}

uint64_t static SIMD<>..< infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v83 = a1;
  v91 = a6;
  swift_getAssociatedTypeWitness(255, a4, a3, &protocol requirements base descriptor for SIMD, associated type descriptor for SIMD.MaskStorage);
  v11 = v10;
  v87 = *(swift_getAssociatedConformanceWitness(a4, a3, v10, &protocol requirements base descriptor for SIMD, associated conformance descriptor for SIMD.SIMD.MaskStorage: SIMD) + 48);
  swift_getAssociatedTypeWitness(255, v87, v11, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v13 = v12;
  v88 = *(*(*(swift_getAssociatedConformanceWitness(a4, a3, v12, &protocol requirements base descriptor for SIMD, associated conformance descriptor for SIMD.SIMD.MaskStorage.SIMDStorage.Scalar: FixedWidthInteger) + 8) + 24) + 16);
  swift_getAssociatedTypeWitness(0, v88, v13, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v74 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v75 = v69 - v15;
  v78 = swift_checkMetadataState(0, v13);
  MEMORY[0x1EEE9AC00](v78);
  v73 = v69 - v16;
  v17 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v17, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v82 = v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = v69 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = v69 - v26;
  v84 = *(a3 - 1);
  v28 = MEMORY[0x1EEE9AC00](v25);
  v30 = (v69 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v28);
  v90 = v69 - v31;
  v92 = v19;
  v85 = *(v19 + 16);
  v86 = v32;
  (v85)(v27, a2);
  (*(v17 + 48))(a3, v17);
  v33 = (*(v17 + 40))(a3, v17);
  if (v33 < 0)
  {
    goto LABEL_16;
  }

  v79 = v11;
  v89 = a5;
  v93 = v30;
  v94 = a3;
  v35 = v85;
  v34 = v86;
  if (v33)
  {
    v36 = 0;
    do
    {
      v37 = v33;
      v38 = v34;
      v35(v24, v27, v34);
      (*(v17 + 64))(v24, v36, v94, v17);
      v33 = v37;
      v34 = v38;
      ++v36;
    }

    while (v37 != v36);
  }

  v85 = v17;
  v39 = *(v92 + 8);
  v92 += 8;
  v80 = v39;
  v81 = v24;
  v40 = v34;
  v39(v27, v34);
  (*(v84 + 32))(v90, v93, v94);
  v41 = swift_checkMetadataState(0, v79);
  v42 = v87;
  (v87[6])(v41, v87);
  v43 = v41;
  v44 = v42;
  v93 = v42[5];
  v79 = v42 + 5;
  v45 = (v93)(v41, v42);
  if (v45 < 0)
  {
    goto LABEL_16;
  }

  v46 = v40;
  v47 = v85;
  if (v45)
  {
    v48 = 0;
    v49 = *(v85 + 56);
    v69[1] = v88 + 3;
    v69[0] = v44 + 8;
    v72 = v45;
    v71 = v85 + 56;
    v77 = v43;
    v70 = v49;
    v76 = v89 + 16;
    v50 = v81;
    while (1)
    {
      v51 = v94;
      v52 = v49;
      v49(v48, v94, v47);
      v53 = v82;
      v54 = v51;
      v55 = v89;
      v52(v48, v54, v47);
      v56 = v44;
      v57 = (*(v55 + 16))(v50, v53, v46, v55);
      v58 = v53;
      v59 = v80;
      v80(v58, v46);
      v59(v50, v46);
      v60 = v77;
      v61 = (v93)(v77, v56);
      if (v61 < 0)
      {
        break;
      }

      if (v48 >= v61)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v62 = v74;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v88, v78, v74, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      if (v57)
      {
        v64 = v75;
        v65 = &unk_18071E0B0;
        v66 = 257;
      }

      else
      {
        v64 = v75;
        v65 = &qword_18071E0A8;
        v66 = 256;
      }

      (*(AssociatedConformanceWitness + 8))(v65, v66, v62, AssociatedConformanceWitness);
      v67 = v73;
      (v88[3])(v64);
      v44 = v87;
      (v87[8])(v67, v48++, v60, v87);
      v47 = v85;
      v46 = v86;
      v49 = v70;
      if (v72 == v48)
      {
        return (*(v84 + 8))(v90, v94);
      }
    }

LABEL_16:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return (*(v84 + 8))(v90, v94);
}

{
  v70 = a5;
  v64 = a1;
  v65 = a2;
  swift_getAssociatedTypeWitness(255, a4, a3, &protocol requirements base descriptor for SIMD, associated type descriptor for SIMD.MaskStorage);
  v10 = v9;
  v11 = *(swift_getAssociatedConformanceWitness(a4, a3, v9, &protocol requirements base descriptor for SIMD, associated conformance descriptor for SIMD.SIMD.MaskStorage: SIMD) + 48);
  swift_getAssociatedTypeWitness(255, v11, v10, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v13 = v12;
  v68 = *(*(*(swift_getAssociatedConformanceWitness(a4, a3, v12, &protocol requirements base descriptor for SIMD, associated conformance descriptor for SIMD.SIMD.MaskStorage.SIMDStorage.Scalar: FixedWidthInteger) + 8) + 24) + 16);
  swift_getAssociatedTypeWitness(0, v68, v13, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v56 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v51 - v15;
  v59 = swift_checkMetadataState(0, v13);
  MEMORY[0x1EEE9AC00](v59);
  v55 = v51 - v17;
  v69 = *(a4 + 48);
  v66 = a3;
  swift_getAssociatedTypeWitness(0, v69, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v60 = v18;
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v62 = v51 - v23;
  v24 = swift_checkMetadataState(0, v10);
  (*(v11 + 48))(v24, v11);
  v25 = *(v11 + 40);
  v67 = a6;
  v63 = v25;
  v61 = v11 + 40;
  result = v25(v24, v11);
  if (result < 0)
  {
    goto LABEL_12;
  }

  v54 = v16;
  if (result)
  {
    v27 = 0;
    v28 = v69[7];
    v29 = v70 + 16;
    v30 = (v19 + 8);
    v51[2] = v68 + 3;
    v51[1] = v11 + 64;
    v52 = v28;
    v53 = result;
    v51[3] = v69 + 7;
    v57 = v11;
    v58 = v24;
    while (1)
    {
      v31 = v62;
      v32 = v66;
      v33 = v30;
      v34 = v69;
      v35 = v29;
      v36 = v28;
      (v28)(v27, v66, v69);
      v37 = v34;
      v30 = v33;
      (v36)(v27, v32, v37);
      v29 = v35;
      v38 = v60;
      v39 = (*(v70 + 16))(v31, v22, v60);
      v40 = *v33;
      (*v33)(v22, v38);
      v41 = v31;
      v42 = v57;
      v43 = v58;
      v40(v41, v38);
      v44 = v63(v43, v42);
      if (v44 < 0)
      {
        break;
      }

      if (v27 >= v44)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v51[0] = v22;
      v45 = v56;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v68, v59, v56, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v47 = v54;
      if (v39)
      {
        v48 = &unk_18071E0B0;
        v49 = 257;
      }

      else
      {
        v48 = &qword_18071E0A8;
        v49 = 256;
      }

      (*(AssociatedConformanceWitness + 8))(v48, v49, v45, AssociatedConformanceWitness);
      v50 = v55;
      (v68[3])(v47);
      (*(v42 + 64))(v50, v27++, v43, v42);
      v28 = v52;
      result = v53;
      v22 = v51[0];
      if (v53 == v27)
      {
        return result;
      }
    }

LABEL_12:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

{
  v83 = a2;
  v91 = a6;
  swift_getAssociatedTypeWitness(255, a4, a3, &protocol requirements base descriptor for SIMD, associated type descriptor for SIMD.MaskStorage);
  v11 = v10;
  v87 = *(swift_getAssociatedConformanceWitness(a4, a3, v10, &protocol requirements base descriptor for SIMD, associated conformance descriptor for SIMD.SIMD.MaskStorage: SIMD) + 48);
  swift_getAssociatedTypeWitness(255, v87, v11, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v13 = v12;
  v88 = *(*(*(swift_getAssociatedConformanceWitness(a4, a3, v12, &protocol requirements base descriptor for SIMD, associated conformance descriptor for SIMD.SIMD.MaskStorage.SIMDStorage.Scalar: FixedWidthInteger) + 8) + 24) + 16);
  swift_getAssociatedTypeWitness(0, v88, v13, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v74 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v75 = v69 - v15;
  v78 = swift_checkMetadataState(0, v13);
  MEMORY[0x1EEE9AC00](v78);
  v73 = v69 - v16;
  v17 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v17, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v82 = v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = v69 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = v69 - v26;
  v84 = *(a3 - 1);
  v28 = MEMORY[0x1EEE9AC00](v25);
  v30 = (v69 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v28);
  v90 = v69 - v31;
  v92 = v19;
  v85 = *(v19 + 16);
  v86 = v32;
  (v85)(v27, a1);
  (*(v17 + 48))(a3, v17);
  v33 = (*(v17 + 40))(a3, v17);
  if (v33 < 0)
  {
    goto LABEL_16;
  }

  v79 = v11;
  v89 = a5;
  v93 = v30;
  v94 = a3;
  v35 = v85;
  v34 = v86;
  if (v33)
  {
    v36 = 0;
    do
    {
      v37 = v33;
      v38 = v34;
      v35(v24, v27, v34);
      (*(v17 + 64))(v24, v36, v94, v17);
      v33 = v37;
      v34 = v38;
      ++v36;
    }

    while (v37 != v36);
  }

  v85 = v17;
  v39 = *(v92 + 8);
  v92 += 8;
  v80 = v39;
  v81 = v24;
  v40 = v34;
  v39(v27, v34);
  (*(v84 + 32))(v90, v93, v94);
  v41 = swift_checkMetadataState(0, v79);
  v42 = v87;
  (v87[6])(v41, v87);
  v43 = v41;
  v44 = v42;
  v93 = v42[5];
  v79 = v42 + 5;
  v45 = (v93)(v41, v42);
  if (v45 < 0)
  {
    goto LABEL_16;
  }

  v46 = v40;
  v47 = v85;
  if (v45)
  {
    v48 = 0;
    v49 = *(v85 + 56);
    v69[1] = v88 + 3;
    v69[0] = v44 + 8;
    v72 = v45;
    v71 = v85 + 56;
    v77 = v43;
    v70 = v49;
    v76 = v89 + 16;
    v50 = v81;
    while (1)
    {
      v51 = v94;
      v52 = v49;
      v49(v48, v94, v47);
      v53 = v82;
      v54 = v51;
      v55 = v89;
      v52(v48, v54, v47);
      v56 = v44;
      v57 = (*(v55 + 16))(v50, v53, v46, v55);
      v58 = v53;
      v59 = v80;
      v80(v58, v46);
      v59(v50, v46);
      v60 = v77;
      v61 = (v93)(v77, v56);
      if (v61 < 0)
      {
        break;
      }

      if (v48 >= v61)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v62 = v74;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v88, v78, v74, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      if (v57)
      {
        v64 = v75;
        v65 = &unk_18071E0B0;
        v66 = 257;
      }

      else
      {
        v64 = v75;
        v65 = &qword_18071E0A8;
        v66 = 256;
      }

      (*(AssociatedConformanceWitness + 8))(v65, v66, v62, AssociatedConformanceWitness);
      v67 = v73;
      (v88[3])(v64);
      v44 = v87;
      (v87[8])(v67, v48++, v60, v87);
      v47 = v85;
      v46 = v86;
      v49 = v70;
      if (v72 == v48)
      {
        return (*(v84 + 8))(v90, v94);
      }
    }

LABEL_16:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return (*(v84 + 8))(v90, v94);
}

uint64_t SIMD.replacing(with:where:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v77 = a2;
  v71 = a1;
  swift_getAssociatedTypeWitness(255, a4, a3, &protocol requirements base descriptor for SIMD, associated type descriptor for SIMD.MaskStorage);
  v10 = v9;
  v78 = *(swift_getAssociatedConformanceWitness(a4, a3, v9, &protocol requirements base descriptor for SIMD, associated conformance descriptor for SIMD.SIMD.MaskStorage: SIMD) + 48);
  v76 = v10;
  swift_getAssociatedTypeWitness(255, v78, v10, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v12 = v11;
  v13 = *(swift_getAssociatedConformanceWitness(a4, a3, v11, &protocol requirements base descriptor for SIMD, associated conformance descriptor for SIMD.SIMD.MaskStorage.SIMDStorage.Scalar: FixedWidthInteger) + 8);
  v74 = *(*(v13 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v74, v12, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v60 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v59 = v58 - v15;
  v16 = swift_checkMetadataState(0, v12);
  v17 = *(v16 - 1);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v70 = v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v75 = v58 - v20;
  v21 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v21, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v73 = v58 - v23;
  (*(*(a3 - 1) + 16))(a5, v5, a3);
  result = (*(v21 + 40))(a3, v21);
  if (result < 0)
  {
LABEL_23:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v72 = a5;
  if (result)
  {
    v25 = 0;
    v27 = v78 + 5;
    v26 = v78[5];
    v67 = v13 + 64;
    v68 = v78 + 7;
    v65 = (v17 + 8);
    v66 = v13 + 128;
    v58[3] = v13 + 120;
    v58[1] = v74 + 3;
    v58[2] = v13 + 96;
    v63 = v21 + 64;
    v64 = v21 + 56;
    v69 = result;
    while (1)
    {
      v28 = v76;
      v29 = swift_checkMetadataState(0, v76);
      v30 = (v26)(v29, v78);
      if (v30 < 0)
      {
        goto LABEL_23;
      }

      if (v25 >= v30)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v61 = v26;
      v62 = v27;
      v31 = v78;
      v32 = v78[7];
      v33 = swift_checkMetadataState(0, v28);
      v34 = v75;
      (v32)(v25, v33, v31);
      v35 = *(v13 + 64);
      if ((v35(v16, v13) & 1) == 0)
      {
        break;
      }

      v36 = (*(v13 + 128))(v16, v13);
      if (v36 >= 64)
      {
        v79[0] = 0;
        v46 = *(v13 + 96);
        v47 = lazy protocol witness table accessor for type Int and conformance Int(v36, v37, v38);
        v45 = v70;
        v46(v79, &type metadata for Int, v47, v16, v13);
        (*(*(*(v13 + 32) + 8) + 16))(v34, v45, v16);
LABEL_13:
        v48 = *v65;
        (*v65)(v45, v16);
        v48(v34, v16);
        goto LABEL_20;
      }

      (*(v13 + 120))(v16, v13);
      (*v65)(v34, v16);
LABEL_20:
      v57 = v73;
      (*(v21 + 56))(v25, a3, v21);
      (*(v21 + 64))(v57, v25++, a3, v21);
      result = v69;
      v26 = v61;
      v27 = v62;
      if (v69 == v25)
      {
        return result;
      }
    }

    v39 = v35(v16, v13);
    v40 = (*(v13 + 128))(v16, v13);
    if ((v39 & 1) == 0)
    {
      v49 = v65;
      if (v40 < 64)
      {
        (*(v13 + 120))(v16, v13);
      }

      (*v49)(v34, v16);
      goto LABEL_20;
    }

    if (v40 <= 64)
    {
      v50 = v74;
      v51 = v60;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v74, v16, v60, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v53 = v59;
      (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v51, AssociatedConformanceWitness);
      v54 = v70;
      (v50[3])(v53, v16, v50);
      v55 = v75;
      LOBYTE(v51) = (*(*(*(v13 + 32) + 8) + 16))(v75, v54, v16);
      v56 = *v65;
      (*v65)(v54, v16);
      if ((v51 & 1) == 0)
      {
        (*(v13 + 120))(v16, v13);
      }

      v56(v55, v16);
      goto LABEL_20;
    }

    v79[0] = 0;
    v43 = *(v13 + 96);
    v44 = lazy protocol witness table accessor for type Int and conformance Int(v40, v41, v42);
    v45 = v70;
    v43(v79, &type metadata for Int, v44, v16, v13);
    v34 = v75;
    (*(*(*(v13 + 32) + 8) + 16))(v75, v45, v16);
    goto LABEL_13;
  }

  return result;
}

{
  v116 = a2;
  v117 = a5;
  swift_getAssociatedTypeWitness(255, a4, a3, &protocol requirements base descriptor for SIMD, associated type descriptor for SIMD.MaskStorage);
  v9 = v8;
  v120 = *(swift_getAssociatedConformanceWitness(a4, a3, v8, &protocol requirements base descriptor for SIMD, associated conformance descriptor for SIMD.SIMD.MaskStorage: SIMD) + 48);
  v112 = v9;
  swift_getAssociatedTypeWitness(255, v120, v9, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v11 = v10;
  v115 = *(swift_getAssociatedConformanceWitness(a4, a3, v10, &protocol requirements base descriptor for SIMD, associated conformance descriptor for SIMD.SIMD.MaskStorage.SIMDStorage.Scalar: FixedWidthInteger) + 8);
  v104 = *(*(v115 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v104, v11, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v100 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v99 = v98 - v13;
  v105 = swift_checkMetadataState(0, v11);
  v103 = *(v105 - 1);
  v14 = MEMORY[0x1EEE9AC00](v105);
  v101 = v98 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v98 - v16;
  v18 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v18, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v20 = v19;
  v21 = *(v19 - 8);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v102 = v98 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = v98 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v113 = *(a3 - 1);
  v28 = MEMORY[0x1EEE9AC00](v98 - v27);
  v30 = (v98 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = MEMORY[0x1EEE9AC00](v28);
  v119 = v98 - v32;
  v33 = v31;
  v107 = *(v21 + 16);
  v108 = (v21 + 16);
  (v107)(v31, a1, v20);
  (*(v18 + 48))(a3, v18);
  v34 = *(v18 + 40);
  v118 = v18;
  v109 = v34;
  v110 = v18 + 40;
  v35 = v34(a3, v18);
  if (v35 < 0)
  {
    goto LABEL_32;
  }

  v36 = v35;
  v106 = v21;
  v114 = v17;
  v121 = v30;
  v122 = a3;
  v37 = v20;
  v38 = v118;
  v39 = v107;
  if (v35)
  {
    v40 = 0;
    do
    {
      v39(v26, v33, v37);
      (*(v38 + 64))(v26, v40++, v122, v38);
    }

    while (v36 != v40);
  }

  (*(v106 + 1))(v33, v37);
  v41 = v113;
  v42 = v122;
  (*(v113 + 32))(v119, v121, v122);
  (*(v41 + 16))(v117, v111, v42);
  v43 = v109(v42, v38);
  if (v43 < 0)
  {
LABEL_32:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v44 = v43;
  v45 = v112;
  v46 = v114;
  if (v43)
  {
    v47 = 0;
    v48 = v120[5];
    v121 = v120 + 7;
    v110 = v115 + 128;
    v111 = v115 + 64;
    v108 = (v103 + 8);
    v98[3] = v115 + 120;
    v98[1] = v104 + 3;
    v98[2] = v115 + 96;
    v109 = (v38 + 56);
    v49 = v38 + 64;
    do
    {
      v50 = swift_checkMetadataState(0, v45);
      v51 = (v48)(v50, v120);
      if (v51 < 0)
      {
        goto LABEL_32;
      }

      if (v47 >= v51)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v103 = v49;
      v106 = v48;
      v52 = v120;
      v53 = v120[7];
      v54 = swift_checkMetadataState(0, v45);
      v55 = v52;
      v56 = v115;
      (v53)(v47, v54, v55);
      v57 = *(v56 + 64);
      v58 = v105;
      v59 = v57(v105, v56);
      v107 = v44;
      if (v59)
      {
        v60 = (*(v56 + 128))(v58, v56);
        if (v60 >= 64)
        {
          v123[0] = 0;
          v74 = *(v56 + 96);
          v75 = lazy protocol witness table accessor for type Int and conformance Int(v60, v61, v62);
          v76 = v101;
          v74(v123, &type metadata for Int, v75, v58, v56);
          v77 = (*(*(*(v56 + 32) + 8) + 16))(v114, v76, v58);
          v78 = *v108;
          v79 = v76;
          v46 = v114;
          (*v108)(v79, v58);
          v78(v46, v58);
          if (v77)
          {
            goto LABEL_28;
          }
        }

        else
        {
          v63 = (*(v56 + 120))(v58, v56);
          (*v108)(v46, v58);
          if (v63 < 0)
          {
            goto LABEL_28;
          }
        }
      }

      else
      {
        v64 = v57(v58, v56);
        v65 = (*(v56 + 128))(v58, v56);
        if (v64)
        {
          if (v65 <= 64)
          {
            v82 = v104;
            v81 = v105;
            v83 = v100;
            AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v104, v105, v100, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
            v85 = v99;
            (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v83, AssociatedConformanceWitness);
            v86 = v101;
            (v82[3])(v85, v81, v82);
            LOBYTE(v83) = (*(*(*(v56 + 32) + 8) + 16))(v114, v86, v81);
            v87 = *v108;
            (*v108)(v86, v81);
            v45 = v112;
            if (v83)
            {
              v88 = v114;
              v87(v114, v81);
              v46 = v88;
LABEL_28:
              v91 = v118;
              v92 = *(v118 + 56);
              v93 = v102;
              v94 = v47;
              goto LABEL_29;
            }

            v89 = v114;
            v90 = (*(v56 + 120))(v81, v56);
            v87(v89, v81);
            v46 = v89;
            if (v90 < 0)
            {
              goto LABEL_28;
            }
          }

          else
          {
            v123[0] = 0;
            v68 = *(v56 + 96);
            v69 = lazy protocol witness table accessor for type Int and conformance Int(v65, v66, v67);
            v70 = v101;
            v71 = v105;
            v68(v123, &type metadata for Int, v69, v105, v56);
            v72 = (*(*(*(v56 + 32) + 8) + 16))(v46, v70, v71);
            v73 = *v108;
            (*v108)(v70, v71);
            v73(v46, v71);
            v45 = v112;
            if (v72)
            {
              goto LABEL_28;
            }
          }
        }

        else if (v65 < 64)
        {
          v80 = (*(v56 + 120))(v58, v56);
          (*v108)(v46, v58);
          v45 = v112;
          if (v80 < 0)
          {
            goto LABEL_28;
          }
        }

        else
        {
          (*v108)(v46, v58);
          v45 = v112;
        }
      }

      v91 = v118;
      v92 = *(v118 + 56);
      v93 = v102;
      v94 = v47;
LABEL_29:
      v42 = v122;
      v92(v94, v122, v91);
      v95 = *(v91 + 64);
      v96 = v91;
      v49 = v103;
      v95(v93, v47++, v42, v96);
      v44 = v107;
      v48 = v106;
    }

    while (v107 != v47);
  }

  return (*(v113 + 8))(v119, v42);
}

uint64_t static SIMD<>..>= infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v83 = a1;
  v91 = a6;
  swift_getAssociatedTypeWitness(255, a4, a3, &protocol requirements base descriptor for SIMD, associated type descriptor for SIMD.MaskStorage);
  v11 = v10;
  v87 = *(swift_getAssociatedConformanceWitness(a4, a3, v10, &protocol requirements base descriptor for SIMD, associated conformance descriptor for SIMD.SIMD.MaskStorage: SIMD) + 48);
  swift_getAssociatedTypeWitness(255, v87, v11, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v13 = v12;
  v88 = *(*(*(swift_getAssociatedConformanceWitness(a4, a3, v12, &protocol requirements base descriptor for SIMD, associated conformance descriptor for SIMD.SIMD.MaskStorage.SIMDStorage.Scalar: FixedWidthInteger) + 8) + 24) + 16);
  swift_getAssociatedTypeWitness(0, v88, v13, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v74 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v75 = v69 - v15;
  v78 = swift_checkMetadataState(0, v13);
  MEMORY[0x1EEE9AC00](v78);
  v73 = v69 - v16;
  v17 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v17, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v82 = v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = v69 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = v69 - v26;
  v84 = *(a3 - 1);
  v28 = MEMORY[0x1EEE9AC00](v25);
  v30 = (v69 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v28);
  v90 = v69 - v31;
  v92 = v19;
  v85 = *(v19 + 16);
  v86 = v32;
  (v85)(v27, a2);
  (*(v17 + 48))(a3, v17);
  v33 = (*(v17 + 40))(a3, v17);
  if (v33 < 0)
  {
    goto LABEL_16;
  }

  v79 = v11;
  v89 = a5;
  v93 = v30;
  v94 = a3;
  v35 = v85;
  v34 = v86;
  if (v33)
  {
    v36 = 0;
    do
    {
      v37 = v33;
      v38 = v34;
      v35(v24, v27, v34);
      (*(v17 + 64))(v24, v36, v94, v17);
      v33 = v37;
      v34 = v38;
      ++v36;
    }

    while (v37 != v36);
  }

  v85 = v17;
  v39 = *(v92 + 8);
  v92 += 8;
  v80 = v39;
  v81 = v24;
  v40 = v34;
  v39(v27, v34);
  (*(v84 + 32))(v90, v93, v94);
  v41 = swift_checkMetadataState(0, v79);
  v42 = v87;
  (v87[6])(v41, v87);
  v43 = v41;
  v44 = v42;
  v93 = v42[5];
  v79 = v42 + 5;
  v45 = (v93)(v41, v42);
  if (v45 < 0)
  {
    goto LABEL_16;
  }

  v46 = v40;
  v47 = v85;
  if (v45)
  {
    v48 = 0;
    v49 = *(v85 + 56);
    v69[1] = v88 + 3;
    v69[0] = v44 + 8;
    v72 = v45;
    v71 = v85 + 56;
    v77 = v43;
    v70 = v49;
    v76 = v89 + 24;
    v50 = v81;
    while (1)
    {
      v51 = v94;
      v52 = v49;
      v49(v48, v94, v47);
      v53 = v82;
      v54 = v51;
      v55 = v89;
      v52(v48, v54, v47);
      v56 = v44;
      v57 = (*(v55 + 24))(v50, v53, v46, v55);
      v58 = v53;
      v59 = v80;
      v80(v58, v46);
      v59(v50, v46);
      v60 = v77;
      v61 = (v93)(v77, v56);
      if (v61 < 0)
      {
        break;
      }

      if (v48 >= v61)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v62 = v74;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v88, v78, v74, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      if (v57)
      {
        v64 = v75;
        v65 = &unk_18071E0B0;
        v66 = 257;
      }

      else
      {
        v64 = v75;
        v65 = &qword_18071E0A8;
        v66 = 256;
      }

      (*(AssociatedConformanceWitness + 8))(v65, v66, v62, AssociatedConformanceWitness);
      v67 = v73;
      (v88[3])(v64);
      v44 = v87;
      (v87[8])(v67, v48++, v60, v87);
      v47 = v85;
      v46 = v86;
      v49 = v70;
      if (v72 == v48)
      {
        return (*(v84 + 8))(v90, v94);
      }
    }

LABEL_16:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return (*(v84 + 8))(v90, v94);
}

{
  v70 = a5;
  v64 = a1;
  v65 = a2;
  swift_getAssociatedTypeWitness(255, a4, a3, &protocol requirements base descriptor for SIMD, associated type descriptor for SIMD.MaskStorage);
  v10 = v9;
  v11 = *(swift_getAssociatedConformanceWitness(a4, a3, v9, &protocol requirements base descriptor for SIMD, associated conformance descriptor for SIMD.SIMD.MaskStorage: SIMD) + 48);
  swift_getAssociatedTypeWitness(255, v11, v10, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v13 = v12;
  v68 = *(*(*(swift_getAssociatedConformanceWitness(a4, a3, v12, &protocol requirements base descriptor for SIMD, associated conformance descriptor for SIMD.SIMD.MaskStorage.SIMDStorage.Scalar: FixedWidthInteger) + 8) + 24) + 16);
  swift_getAssociatedTypeWitness(0, v68, v13, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v56 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v51 - v15;
  v59 = swift_checkMetadataState(0, v13);
  MEMORY[0x1EEE9AC00](v59);
  v55 = v51 - v17;
  v69 = *(a4 + 48);
  v66 = a3;
  swift_getAssociatedTypeWitness(0, v69, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v60 = v18;
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v62 = v51 - v23;
  v24 = swift_checkMetadataState(0, v10);
  (*(v11 + 48))(v24, v11);
  v25 = *(v11 + 40);
  v67 = a6;
  v63 = v25;
  v61 = v11 + 40;
  result = v25(v24, v11);
  if (result < 0)
  {
    goto LABEL_12;
  }

  v54 = v16;
  if (result)
  {
    v27 = 0;
    v28 = v69[7];
    v29 = v70 + 24;
    v30 = (v19 + 8);
    v51[2] = v68 + 3;
    v51[1] = v11 + 64;
    v52 = v28;
    v53 = result;
    v51[3] = v69 + 7;
    v57 = v11;
    v58 = v24;
    while (1)
    {
      v31 = v62;
      v32 = v66;
      v33 = v30;
      v34 = v69;
      v35 = v29;
      v36 = v28;
      (v28)(v27, v66, v69);
      v37 = v34;
      v30 = v33;
      (v36)(v27, v32, v37);
      v29 = v35;
      v38 = v60;
      v39 = (*(v70 + 24))(v31, v22, v60);
      v40 = *v33;
      (*v33)(v22, v38);
      v41 = v31;
      v42 = v57;
      v43 = v58;
      v40(v41, v38);
      v44 = v63(v43, v42);
      if (v44 < 0)
      {
        break;
      }

      if (v27 >= v44)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v51[0] = v22;
      v45 = v56;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v68, v59, v56, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v47 = v54;
      if (v39)
      {
        v48 = &unk_18071E0B0;
        v49 = 257;
      }

      else
      {
        v48 = &qword_18071E0A8;
        v49 = 256;
      }

      (*(AssociatedConformanceWitness + 8))(v48, v49, v45, AssociatedConformanceWitness);
      v50 = v55;
      (v68[3])(v47);
      (*(v42 + 64))(v50, v27++, v43, v42);
      v28 = v52;
      result = v53;
      v22 = v51[0];
      if (v53 == v27)
      {
        return result;
      }
    }

LABEL_12:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

{
  v83 = a2;
  v91 = a6;
  swift_getAssociatedTypeWitness(255, a4, a3, &protocol requirements base descriptor for SIMD, associated type descriptor for SIMD.MaskStorage);
  v11 = v10;
  v87 = *(swift_getAssociatedConformanceWitness(a4, a3, v10, &protocol requirements base descriptor for SIMD, associated conformance descriptor for SIMD.SIMD.MaskStorage: SIMD) + 48);
  swift_getAssociatedTypeWitness(255, v87, v11, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v13 = v12;
  v88 = *(*(*(swift_getAssociatedConformanceWitness(a4, a3, v12, &protocol requirements base descriptor for SIMD, associated conformance descriptor for SIMD.SIMD.MaskStorage.SIMDStorage.Scalar: FixedWidthInteger) + 8) + 24) + 16);
  swift_getAssociatedTypeWitness(0, v88, v13, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v74 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v75 = v69 - v15;
  v78 = swift_checkMetadataState(0, v13);
  MEMORY[0x1EEE9AC00](v78);
  v73 = v69 - v16;
  v17 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v17, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v82 = v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = v69 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = v69 - v26;
  v84 = *(a3 - 1);
  v28 = MEMORY[0x1EEE9AC00](v25);
  v30 = (v69 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v28);
  v90 = v69 - v31;
  v92 = v19;
  v85 = *(v19 + 16);
  v86 = v32;
  (v85)(v27, a1);
  (*(v17 + 48))(a3, v17);
  v33 = (*(v17 + 40))(a3, v17);
  if (v33 < 0)
  {
    goto LABEL_16;
  }

  v79 = v11;
  v89 = a5;
  v93 = v30;
  v94 = a3;
  v35 = v85;
  v34 = v86;
  if (v33)
  {
    v36 = 0;
    do
    {
      v37 = v33;
      v38 = v34;
      v35(v24, v27, v34);
      (*(v17 + 64))(v24, v36, v94, v17);
      v33 = v37;
      v34 = v38;
      ++v36;
    }

    while (v37 != v36);
  }

  v85 = v17;
  v39 = *(v92 + 8);
  v92 += 8;
  v80 = v39;
  v81 = v24;
  v40 = v34;
  v39(v27, v34);
  (*(v84 + 32))(v90, v93, v94);
  v41 = swift_checkMetadataState(0, v79);
  v42 = v87;
  (v87[6])(v41, v87);
  v43 = v41;
  v44 = v42;
  v93 = v42[5];
  v79 = v42 + 5;
  v45 = (v93)(v41, v42);
  if (v45 < 0)
  {
    goto LABEL_16;
  }

  v46 = v40;
  v47 = v85;
  if (v45)
  {
    v48 = 0;
    v49 = *(v85 + 56);
    v69[1] = v88 + 3;
    v69[0] = v44 + 8;
    v72 = v45;
    v71 = v85 + 56;
    v77 = v43;
    v70 = v49;
    v76 = v89 + 24;
    v50 = v81;
    while (1)
    {
      v51 = v94;
      v52 = v49;
      v49(v48, v94, v47);
      v53 = v82;
      v54 = v51;
      v55 = v89;
      v52(v48, v54, v47);
      v56 = v44;
      v57 = (*(v55 + 24))(v50, v53, v46, v55);
      v58 = v53;
      v59 = v80;
      v80(v58, v46);
      v59(v50, v46);
      v60 = v77;
      v61 = (v93)(v77, v56);
      if (v61 < 0)
      {
        break;
      }

      if (v48 >= v61)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v62 = v74;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v88, v78, v74, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      if (v57)
      {
        v64 = v75;
        v65 = &unk_18071E0B0;
        v66 = 257;
      }

      else
      {
        v64 = v75;
        v65 = &qword_18071E0A8;
        v66 = 256;
      }

      (*(AssociatedConformanceWitness + 8))(v65, v66, v62, AssociatedConformanceWitness);
      v67 = v73;
      (v88[3])(v64);
      v44 = v87;
      (v87[8])(v67, v48++, v60, v87);
      v47 = v85;
      v46 = v86;
      v49 = v70;
      if (v72 == v48)
      {
        return (*(v84 + 8))(v90, v94);
      }
    }

LABEL_16:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return (*(v84 + 8))(v90, v94);
}

uint64_t static SIMD<>.&- infix(_:_:)@<X0>(uint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v40 = a1;
  v8 = *(a3 + 48);
  swift_getAssociatedTypeWitness(0, v8, a2, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v10 = v9;
  v42 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v31 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v31 - v17;
  (*(v8 + 48))(a2, v8);
  result = (*(v8 + 40))(a2, v8);
  if (result < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v41 = a4;
  v38 = v18;
  v39 = a5;
  v37 = v10;
  if (result)
  {
    v20 = a2;
    v21 = v16;
    v22 = v13;
    v23 = 0;
    v24 = *(v8 + 56);
    v33 = v41 + 88;
    v34 = v24;
    v35 = v8 + 56;
    v36 = result;
    v31 = v8 + 64;
    v32 = (v42 + 8);
    do
    {
      v42 = v23 + 1;
      v25 = v34;
      v34(v23, v20, v8);
      v25(v23, v20, v8);
      v26 = v20;
      v27 = v37;
      v28 = v38;
      (*(v41 + 88))(v38, v22, v37);
      v29 = *v32;
      (*v32)(v22, v27);
      v29(v21, v27);
      v30 = v28;
      v20 = v26;
      (*(v8 + 64))(v30, v23, v26, v8);
      result = v36;
      v23 = v42;
    }

    while (v36 != v42);
  }

  return result;
}

Swift::Int __swiftcall _utf8ScalarLength(_:)(Swift::UInt8 a1)
{
  v1 = __clz(~a1) - 24;
  if ((a1 & 0x80u) == 0)
  {
    return 1;
  }

  else
  {
    return v1;
  }
}

uint64_t String.endIndex.getter(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1;
  }

  v3 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v3 = 11;
  }

  return v3 | (v2 << 16);
}

Swift::String::Index __swiftcall String.UTF8View.index(after:)(Swift::String::Index after)
{
  v3 = v1;
  v4 = (v1 >> 59) & 1;
  if ((v2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v4) = 1;
  }

  if ((after._rawBits & 0xC) == 4 << v4)
  {
    v6 = v2;
    after._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(after)._rawBits;
    v2 = v6;
    if ((v6 & 0x1000000000000000) == 0)
    {
      return ((after._rawBits & 0xFFFFFFFFFFFF0000) + 65540);
    }
  }

  else if ((v2 & 0x1000000000000000) == 0)
  {
    return ((after._rawBits & 0xFFFFFFFFFFFF0000) + 65540);
  }

  v7 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v7 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v7 <= after._rawBits >> 16)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return String.UTF8View._foreignIndex(after:)(after);
}

Swift::String::Index __swiftcall String.UTF8View._foreignIndex(after:)(Swift::String::Index after)
{
  rawBits = after._rawBits;
  if ((after._rawBits & 0xC001) == 0)
  {
    rawBits = _StringGuts.scalarAlignSlow(_:)(after)._rawBits;
  }

  v2 = rawBits & 0xFFFFFFFFFFFF0000;
  v3 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)((rawBits & 0xFFFFFFFFFFFF0000));
  v4 = rawBits >> 14;
  v5 = 2;
  if (v3._0._value >= 0x10000)
  {
    v5 = 3;
  }

  if (v3._0._value < 0x800)
  {
    v5 = 1;
  }

  v6 = v4 >= v5;
  v7._rawBits = v2 | ((v4 << 14) + 0x4000) | 8;
  if (v6)
  {
    v7._rawBits = (rawBits + (v3.scalarLength << 16)) & 0xFFFFFFFFFFFF0000 | 9;
  }

  if (v3._0._value >= 0x80)
  {
    return v7;
  }

  else
  {
    return (v2 + 65545);
  }
}

Swift::String::Index __swiftcall String.UTF8View.index(before:)(Swift::String::Index before)
{
  v3 = v2;
  v4 = (v1 >> 59) & 1;
  if ((v2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v4) = 1;
  }

  if ((before._rawBits & 0xC) == 4 << v4)
  {
    v6 = v1;
    before._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(before)._rawBits;
    v1 = v6;
    if (!(before._rawBits >> 14))
    {
      goto LABEL_8;
    }
  }

  else if (!(before._rawBits >> 14))
  {
    goto LABEL_8;
  }

  if ((v3 & 0x1000000000000000) == 0)
  {
    return ((before._rawBits & 0xFFFFFFFFFFFF0000) - 65532);
  }

  v7 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v7 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (v7 < before._rawBits >> 16)
  {
LABEL_8:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return String.UTF8View._foreignIndex(before:)(before);
}

Swift::String::Index __swiftcall String.UTF8View._foreignIndex(before:)(Swift::String::Index before)
{
  if ((before._rawBits & 0xC001) == 0)
  {
    before._rawBits = _StringGuts.scalarAlignSlow(_:)(before)._rawBits;
  }

  if (LOWORD(before._rawBits) >> 14)
  {
    v1 = (((LOWORD(before._rawBits) >> 14) << 14) - 0x4000) | before._rawBits & 0xFFFFFFFFFFFF0000;
  }

  else
  {
    rawBits = before._rawBits;
    v3 = _StringGuts.foreignErrorCorrectedScalar(endingAt:)((before._rawBits & 0xFFFFFFFFFFFF0000));
    v4 = 0x4000;
    v5 = 49152;
    if (v3._0._value < 0x10000)
    {
      v5 = 0x8000;
    }

    if (v3._0._value >= 0x800)
    {
      v4 = v5;
    }

    if (v3._0._value <= 0x7F)
    {
      v4 = 0;
    }

    v1 = v4 | (rawBits - (v3.scalarLength << 16)) & 0xFFFFFFFFFFFF0000;
  }

  return (v1 | 8);
}

Swift::String::Index_optional __swiftcall String.UTF8View.index(_:offsetBy:limitedBy:)(Swift::String::Index _, Swift::Int offsetBy, Swift::String::Index limitedBy)
{
  v5 = (v3 >> 59) & 1;
  if ((v4 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((_._rawBits & 0xC) != 4 << v5)
  {
    if ((v4 & 0x1000000000000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_20:
    v9 = String.UTF8View._foreignIndex(_:offsetBy:limitedBy:)(_, offsetBy, limitedBy);
    goto LABEL_18;
  }

  v11 = offsetBy;
  rawBits = limitedBy._rawBits;
  v13 = v4;
  v14 = v3;
  _._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(_)._rawBits;
  offsetBy = v11;
  limitedBy._rawBits = rawBits;
  v3 = v14;
  v4 = v13;
  if ((v13 & 0x1000000000000000) != 0)
  {
    goto LABEL_20;
  }

LABEL_5:
  v6 = _._rawBits >> 16;
  v7 = (_._rawBits >> 16) + offsetBy;
  if (__OFADD__(_._rawBits >> 16, offsetBy))
  {
    __break(1u);
    goto LABEL_22;
  }

  v8 = limitedBy._rawBits >> 16;
  if (offsetBy < 0)
  {
    if (v6 < v8 || v7 >= v8)
    {
      goto LABEL_13;
    }
  }

  else if (v8 < v6 || v8 >= v7)
  {
LABEL_13:
    if ((v7 & 0x8000000000000000) == 0)
    {
      v10 = HIBYTE(v4) & 0xF;
      if ((v4 & 0x2000000000000000) == 0)
      {
        v10 = v3 & 0xFFFFFFFFFFFFLL;
      }

      if (v10 >= v7)
      {
        v9.is_nil = 0;
        v9.value._rawBits = (v7 << 16) | 4;
        goto LABEL_18;
      }
    }

LABEL_22:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v9.value._rawBits = 0;
  v9.is_nil = 1;
LABEL_18:
  v9.is_nil &= 1u;
  return v9;
}

Swift::String::Index_optional __swiftcall String.UTF8View._foreignIndex(_:offsetBy:limitedBy:)(Swift::String::Index _, Swift::Int offsetBy, Swift::String::Index limitedBy)
{
  v5 = specialized BidirectionalCollection._index(_:offsetBy:limitedBy:)(_._rawBits, offsetBy, limitedBy._rawBits, v3, v4);
  v7 = v6 & 1;
  result.value._rawBits = v5;
  result.is_nil = v7;
  return result;
}

Swift::Int __swiftcall String.UTF8View._foreignDistance(from:to:)(Swift::String::Index from, Swift::String::Index to)
{
  v4 = v3;
  v5 = v2;
  v7._rawBits = from._rawBits;
  if ((from._rawBits & 0xC001) == 0)
  {
    goto LABEL_18;
  }

  while (1)
  {
    if ((to._rawBits & 0xC001) == 0)
    {
      to._rawBits = to._rawBits & 0xC | _StringGuts.scalarAlignSlow(_:)(to)._rawBits & 0xFFFFFFFFFFFFFFF3 | 1;
    }

    if (to._rawBits >> 16 < v7._rawBits >> 16)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (to._rawBits >> 16 == v7._rawBits >> 16)
    {
      v8 = 0;
    }

    else
    {
      v15 = 0;
      v16 = 0;
      v14 = 0;
      if (![v4 & 0xFFFFFFFFFFFFFFFLL getBytes:0 maxLength:0 usedLength:&v14 encoding:4 options:0 range:v7._rawBits >> 16 remainingRange:{(to._rawBits >> 16) - (v7._rawBits >> 16), &v15}] || v16)
      {
        return specialized BidirectionalCollection._distance(from:to:)(v7._rawBits, to._rawBits, v5, v4);
      }

      v8 = v14;
    }

    v9 = LOWORD(v7._rawBits) >> 14;
    v10 = __OFSUB__(v8, v9);
    v11 = v8 - v9;
    if (!v10)
    {
      break;
    }

    __break(1u);
LABEL_18:
    v7._rawBits = v7._rawBits & 0xC | _StringGuts.scalarAlignSlow(_:)(v7)._rawBits & 0xFFFFFFFFFFFFFFF3 | 1;
  }

  v12 = LOWORD(to._rawBits) >> 14;
  result = v11 + v12;
  if (!__OFADD__(v11, v12))
  {
    return result;
  }

  __break(1u);
  return specialized BidirectionalCollection._distance(from:to:)(v7._rawBits, to._rawBits, v5, v4);
}

uint64_t String.UTF8View.subscript.getter(Swift::UInt64 rawBits, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((rawBits & 0xC) == 4 << v3)
  {
    v8 = a2;
    v9 = a3;
    rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(rawBits)._rawBits;
    a2 = v8;
    a3 = v9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v5 = rawBits >> 16;
  if (rawBits >> 16 >= v4)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if ((a3 & 0x1000000000000000) != 0)
  {

    return String.UTF8View._foreignSubscript(position:)(rawBits);
  }

  else if ((a3 & 0x2000000000000000) != 0)
  {
    v10[0] = a2;
    v10[1] = a3 & 0xFFFFFFFFFFFFFFLL;
    return *(v10 + v5);
  }

  else
  {
    if ((a2 & 0x1000000000000000) != 0)
    {
      v6 = ((a3 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v6 = _StringObject.sharedUTF8.getter(a2, a3);
    }

    return v6[v5];
  }
}

Swift::UInt8 __swiftcall String.UTF8View._foreignSubscript(position:)(Swift::String::Index position)
{
  rawBits = position._rawBits;
  if ((position._rawBits & 0xC001) == 0)
  {
    rawBits = _StringGuts.scalarAlignSlow(_:)(position)._rawBits;
  }

  value = _StringGuts.foreignErrorCorrectedScalar(startingAt:)((rawBits & 0xFFFFFFFFFFFF0000))._0._value;
  if (value >= 0x80)
  {
    v6 = (value & 0x3F) << 8;
    if (value >= 0x800)
    {
      v7 = (v6 | (value >> 6) & 0x3F) << 8;
      v8 = (((v7 | (value >> 12) & 0x3F) << 8) | (value >> 18)) - 2122219023;
      v3 = (value >> 12) + v7 + 8487393;
      if (HIWORD(value))
      {
        v3 = v8;
      }
    }

    else
    {
      v3 = (value >> 6) + v6 + 33217;
    }
  }

  else
  {
    v3 = value + 1;
  }

  v4 = rawBits >> 14;
  if (v4 > 4 - (__clz(v3) >> 3))
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return (v3 >> (4 * v4) >> (4 * v4)) - 1;
}

Swift::UInt64 protocol witness for BidirectionalCollection.index(before:) in conformance String.UTF8View@<X0>(Swift::UInt64 *a1@<X0>, Swift::UInt64 *a2@<X8>)
{
  rawBits = *a1;
  v4 = *v2;
  v5 = v2[1];
  v6 = (v4 >> 59) & 1;
  if ((v5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v6) = 1;
  }

  if ((rawBits & 0xC) == 4 << v6)
  {
    v8 = a2;
    rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(rawBits)._rawBits;
    a2 = v8;
    if (!(rawBits >> 14))
    {
      goto LABEL_9;
    }
  }

  else if (!(rawBits >> 14))
  {
    goto LABEL_9;
  }

  if ((v5 & 0x1000000000000000) != 0)
  {
    v9 = a2;
    v10 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v10 = v4 & 0xFFFFFFFFFFFFLL;
    }

    if (v10 >= rawBits >> 16)
    {
      result = String.UTF8View._foreignIndex(before:)(rawBits)._rawBits;
      a2 = v9;
      goto LABEL_7;
    }

LABEL_9:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  result = (rawBits & 0xFFFFFFFFFFFF0000) - 65532;
LABEL_7:
  *a2 = result;
  return result;
}

Swift::String::Index *protocol witness for BidirectionalCollection.formIndex(before:) in conformance String.UTF8View(Swift::String::Index *result)
{
  v2 = *v1;
  v3 = v1[1];
  rawBits = result->_rawBits;
  v5 = (v2 >> 59) & 1;
  if ((v3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((result->_rawBits & 0xC) == 4 << v5)
  {
    v7 = result;
    rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(result->_rawBits)._rawBits;
    result = v7;
    if (!(rawBits >> 14))
    {
      goto LABEL_9;
    }
  }

  else if (!(rawBits >> 14))
  {
    goto LABEL_9;
  }

  if ((v3 & 0x1000000000000000) != 0)
  {
    v8 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v8 = v2 & 0xFFFFFFFFFFFFLL;
    }

    if (v8 >= rawBits >> 16)
    {
      v9 = result;
      v6 = String.UTF8View._foreignIndex(before:)(rawBits)._rawBits;
      result = v9;
      goto LABEL_7;
    }

LABEL_9:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v6 = (rawBits & 0xFFFFFFFFFFFF0000) - 65532;
LABEL_7:
  result->_rawBits = v6;
  return result;
}

Swift::String::Index protocol witness for BidirectionalCollection.index(_:offsetBy:limitedBy:) in conformance String.UTF8View@<X0>(Swift::UInt64 *a1@<X0>, Swift::Int a2@<X1>, Swift::UInt64 *a3@<X2>, uint64_t a4@<X8>)
{
  rawBits = *a1;
  v6._rawBits = *a3;
  v7 = *v4;
  v8 = v4[1];
  v9 = (v7 >> 59) & 1;
  if ((v8 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  if ((rawBits & 0xC) != 4 << v9)
  {
    if ((v8 & 0x1000000000000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_20:
    v17 = a4;
    v13 = String.UTF8View._foreignIndex(_:offsetBy:limitedBy:)(rawBits, a2, v6);
    a4 = v17;
    goto LABEL_18;
  }

  v15 = a2;
  v16 = a4;
  rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(rawBits)._rawBits;
  a2 = v15;
  a4 = v16;
  if ((v8 & 0x1000000000000000) != 0)
  {
    goto LABEL_20;
  }

LABEL_5:
  v10 = rawBits >> 16;
  v11 = (rawBits >> 16) + a2;
  if (__OFADD__(rawBits >> 16, a2))
  {
    __break(1u);
    goto LABEL_22;
  }

  v12 = v6._rawBits >> 16;
  if (a2 < 0)
  {
    if (v10 < v12 || v11 >= v12)
    {
      goto LABEL_13;
    }
  }

  else if (v12 < v10 || v12 >= v11)
  {
LABEL_13:
    if ((v11 & 0x8000000000000000) == 0)
    {
      v14 = HIBYTE(v8) & 0xF;
      if ((v8 & 0x2000000000000000) == 0)
      {
        v14 = v7 & 0xFFFFFFFFFFFFLL;
      }

      if (v14 >= v11)
      {
        v13.is_nil = 0;
        v13.value._rawBits = (v11 << 16) | 4;
        goto LABEL_18;
      }
    }

LABEL_22:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v13.value._rawBits = 0;
  v13.is_nil = 1;
LABEL_18:
  *a4 = v13.value._rawBits;
  *(a4 + 8) = v13.is_nil;
  return v13.value;
}

void protocol witness for Collection.endIndex.getter in conformance String(uint64_t *a1@<X8>)
{
  v2 = v1[1];
  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = *v1;
  }

  v4 = 7;
  if (((v2 >> 60) & ((*v1 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  *a1 = v4 | (v3 << 16);
}

uint64_t (*protocol witness for Collection.subscript.read in conformance String.UTF8View(Swift::UInt8 *a1, Swift::UInt64 *a2))()
{
  rawBits = *a2;
  v6 = *v2;
  v5 = v2[1];
  v7 = (v6 >> 59) & 1;
  if ((v5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v7) = 1;
  }

  if ((*a2 & 0xC) == 4 << v7)
  {
    rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(rawBits)._rawBits;
  }

  v8 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v8 = v6 & 0xFFFFFFFFFFFFLL;
  }

  v9 = rawBits >> 16;
  if (rawBits >> 16 >= v8)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if ((v5 & 0x1000000000000000) != 0)
  {
    v10 = String.UTF8View._foreignSubscript(position:)(rawBits);
  }

  else if ((v5 & 0x2000000000000000) != 0)
  {
    v12[0] = v6;
    v12[1] = v5 & 0xFFFFFFFFFFFFFFLL;
    v10 = *(v12 + v9);
  }

  else if ((v6 & 0x1000000000000000) != 0)
  {
    v10 = *((v5 & 0xFFFFFFFFFFFFFFFLL) + 0x20 + (rawBits >> 16));
  }

  else
  {
    v10 = *(_StringObject.sharedUTF8.getter(v6, v5) + v9);
  }

  *a1 = v10;
  return _swift_displayCrashMessage;
}

Swift::String::Index protocol witness for BidirectionalCollection.index(_:offsetBy:) in conformance String.UTF8View@<X0>(Swift::UInt64 *a1@<X0>, Swift::Int a2@<X1>, Swift::UInt64 *a3@<X8>)
{
  result._rawBits = *a1;
  v5 = *v3;
  v6 = v3[1];
  v7 = (v5 >> 59) & 1;
  if ((v6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v7) = 1;
  }

  if ((result._rawBits & 0xC) != 4 << v7)
  {
    if ((v6 & 0x1000000000000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_14:
    v12 = a3;
    result._rawBits = String.UTF8View._foreignIndex(_:offsetBy:)(result, a2)._rawBits;
    a3 = v12;
LABEL_11:
    *a3 = result._rawBits;
    return result;
  }

  v10 = a2;
  v11 = a3;
  result._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(result)._rawBits;
  a2 = v10;
  a3 = v11;
  if ((v6 & 0x1000000000000000) != 0)
  {
    goto LABEL_14;
  }

LABEL_5:
  v8 = a2 + (result._rawBits >> 16);
  if (!__OFADD__(a2, result._rawBits >> 16))
  {
    if ((v8 & 0x8000000000000000) != 0)
    {
      goto LABEL_12;
    }

    v9 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v9 = v5 & 0xFFFFFFFFFFFFLL;
    }

    if (v9 < v8)
    {
LABEL_12:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    result._rawBits = (v8 << 16) | 4;
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

Swift::Int protocol witness for BidirectionalCollection.distance(from:to:) in conformance String.UTF8View(Swift::String::Index *a1, Swift::UInt64 *a2)
{
  rawBits = a1->_rawBits;
  v4 = *a2;
  v5 = *v2;
  v6 = v2[1];
  v7 = (v5 >> 59) & 1;
  if ((v6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v7) = 1;
  }

  v8 = 4 << v7;
  if ((a1->_rawBits & 0xC) == 4 << v7)
  {
    rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(a1->_rawBits)._rawBits;
  }

  if ((v4 & 0xC) == v8)
  {
    v4 = _StringGuts._slowEnsureMatchingEncoding(_:)(v4)._rawBits;
    if ((v6 & 0x1000000000000000) == 0)
    {
      return (v4 >> 16) - (rawBits >> 16);
    }
  }

  else if ((v6 & 0x1000000000000000) == 0)
  {
    return (v4 >> 16) - (rawBits >> 16);
  }

  v10 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v10 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (v10 < rawBits >> 16 || v10 < v4 >> 16)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return String.UTF8View._foreignDistance(from:to:)(rawBits, v4);
}

Swift::UInt64 protocol witness for Collection.index(after:) in conformance String.UTF8View@<X0>(Swift::UInt64 *a1@<X0>, Swift::UInt64 *a2@<X8>)
{
  rawBits = *a1;
  v4 = *v2;
  v5 = v2[1];
  v6 = (v4 >> 59) & 1;
  if ((v5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v6) = 1;
  }

  if ((rawBits & 0xC) == 4 << v6)
  {
    v8 = a2;
    rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(rawBits)._rawBits;
    a2 = v8;
    if ((v5 & 0x1000000000000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else if ((v5 & 0x1000000000000000) == 0)
  {
LABEL_5:
    result = (rawBits & 0xFFFFFFFFFFFF0000) + 65540;
    goto LABEL_6;
  }

  v9 = a2;
  v10 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v10 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v10 <= rawBits >> 16)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  result = String.UTF8View._foreignIndex(after:)(rawBits)._rawBits;
  a2 = v9;
LABEL_6:
  *a2 = result;
  return result;
}

Swift::String::Index *protocol witness for Collection.formIndex(after:) in conformance String.UTF8View(Swift::String::Index *result)
{
  v2 = *v1;
  v3 = v1[1];
  rawBits = result->_rawBits;
  v5 = (v2 >> 59) & 1;
  if ((v3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((result->_rawBits & 0xC) == 4 << v5)
  {
    v7 = result;
    rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(result->_rawBits)._rawBits;
    result = v7;
    if ((v3 & 0x1000000000000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else if ((v3 & 0x1000000000000000) == 0)
  {
LABEL_5:
    v6 = (rawBits & 0xFFFFFFFFFFFF0000) + 65540;
    goto LABEL_6;
  }

  v8 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v8 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v8 <= rawBits >> 16)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v9 = result;
  v6 = String.UTF8View._foreignIndex(after:)(rawBits)._rawBits;
  result = v9;
LABEL_6:
  result->_rawBits = v6;
  return result;
}

void protocol witness for Sequence.makeIterator() in conformance String.UTF8View(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = 15;
}

Swift::Int protocol witness for Collection.count.getter in conformance String.UTF8View()
{
  v1 = v0[1];
  if ((v1 & 0x1000000000000000) != 0)
  {
    return String.UTF8View._foreignCount()();
  }

  if ((v1 & 0x2000000000000000) != 0)
  {
    return HIBYTE(v1) & 0xF;
  }

  return *v0 & 0xFFFFFFFFFFFFLL;
}

__objc2_class **protocol witness for Sequence._copyToContiguousArray() in conformance String.UTF8View()
{
  v1 = v0[1];
  v2 = specialized _copyCollectionToContiguousArray<A>(_:)(*v0, v1);
  v1;
  return v2;
}

uint64_t protocol witness for Sequence._copyContents(initializing:) in conformance String.UTF8View(void *a1, char *__dst, uint64_t a3)
{
  if (!__dst || (v5 = v3[1], v6 = _StringGuts.copyUTF8(into:)(__dst, a3, *v3, v5), (v7 & 1) != 0))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v8 = v6;
  v5;
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 15;
  return v8;
}

uint64_t String.UTF8View._copyContents(initializing:)(char *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (!a1 || (_StringGuts.copyUTF8(into:)(a1, a2, a3, a4), (v4 & 1) != 0))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return 0;
}

uint64_t String.UTF8View.withContiguousStorageIfAvailable<A>(_:)@<X0>(uint64_t (*a1)(void *, uint64_t)@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  if ((a3 & 0x1000000000000000) != 0)
  {
    return (*(*(a4 - 8) + 56))(a5, 1, 1, a4);
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v10 = HIBYTE(a3) & 0xF;
    v12[0] = a2;
    v12[1] = a3 & 0xFFFFFFFFFFFFFFLL;
    v9 = v12;
  }

  else if ((a2 & 0x1000000000000000) != 0)
  {
    v9 = ((a3 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v10 = a2 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = _StringObject.sharedUTF8.getter(a2, a3);
  }

  result = a1(v9, v10);
  if (!v5)
  {
    return (*(*(a4 - 8) + 56))(a5, 0, 1, a4);
  }

  return result;
}

uint64_t String.UTF16View.debugDescription.getter(uint64_t a1, unint64_t x1_0, Swift::Int a3, void *a4, Builtin::Word a5)
{
  v9 = _StringGuts.init(_initialCapacity:)(a3);
  v11 = v10;
  v266._countAndFlagsBits = v9;
  v266._object = v10;
  v12 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(a4, a5, 1);
  countAndFlagsBits = v12._countAndFlagsBits;
  v14 = HIBYTE(v11) & 0xF;
  v15 = *&v9 & 0xFFFFFFFFFFFFLL;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v16 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v16 = *&v9 & 0xFFFFFFFFFFFFLL;
  }

  v251 = x1_0;
  v254 = a1;
  if (v16 || (*&v9 & ~v11 & 0x2000000000000000) != 0)
  {
    v17 = (v12._object >> 56) & 0xF;
    if ((v11 & 0x2000000000000000) != 0)
    {
      if ((v12._object & 0x2000000000000000) != 0)
      {
        v45 = v17 + v14;
        if (v17 + v14 < 0x10)
        {
          if (v17)
          {
            v64 = 0;
            v65 = 0;
            v66 = 8 * v14;
            v67 = v11;
            do
            {
              v68 = v12._object >> (v64 & 0x38);
              if (v65 < 8)
              {
                v68 = v12._countAndFlagsBits >> v64;
              }

              v69 = (v68 << (v66 & 0x38)) | ((-255 << (v66 & 0x38)) - 1) & v67;
              v70 = (v68 << v66) | ((-255 << v66) - 1) & *&v9;
              if (v14 <= 7)
              {
                v9 = v70;
              }

              else
              {
                v67 = v69;
              }

              ++v14;
              v66 += 8;
              v64 += 8;
              ++v65;
            }

            while (8 * v17 != v64);
          }

          else
          {
            v67 = v11;
          }

          v11;
          v12._object;
          v71 = 0xA000000000000000;
          if (!(*&v9 & 0x8080808080808080 | v67 & 0x80808080808080))
          {
            v71 = 0xE000000000000000;
          }

          v63 = (v71 & 0xFF00000000000000 | (v45 << 56) | v67 & 0xFFFFFFFFFFFFFFLL);
          goto LABEL_96;
        }

        v258 = 0;
        v19 = (v12._object >> 56) & 0xF;
        v256 = v12._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
        if ((v12._object & 0x1000000000000000) == 0)
        {
LABEL_13:
          v20 = v12._object;
          v22 = v19;
          if ((v11 & 0x1000000000000000) == 0)
          {
            goto LABEL_14;
          }

          goto LABEL_52;
        }

LABEL_49:
        swift_bridgeObjectRetain_n(v12._object, 2);
        v46._rawBits = 1;
        v47._rawBits = (v19 << 16) | 1;
        v48._rawBits = _StringGuts.validateScalarRange(_:)(v46, v47, v12._countAndFlagsBits, v12._object)._rawBits;
        if (v48._rawBits < 0x10000)
        {
          v48._rawBits |= 3;
        }

        v22 = String.UTF8View.distance(from:to:)(v48, v49);
        v12._object;
        if ((v11 & 0x1000000000000000) == 0)
        {
LABEL_14:
          v23 = __OFADD__(v16, v22);
          v24 = v16 + v22;
          if (!v23)
          {
LABEL_15:
            v25 = *&v9 & ~v11;
            if ((v25 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v11 & 0xFFFFFFFFFFFFFFFLL))
            {
              v26 = _StringGuts.nativeUnusedCapacity.getter(*&v9, v11);
              if (v27)
              {
                goto LABEL_303;
              }

              if (v24 > 15)
              {
                goto LABEL_26;
              }

              if ((v11 & 0x2000000000000000) == 0)
              {
                if (v26 < v22)
                {
LABEL_21:
                  if ((v11 & 0x1000000000000000) == 0)
                  {
                    x1_0 = v251;
                    if ((*&v9 & 0x1000000000000000) != 0)
                    {
                      v28 = ((v11 & 0xFFFFFFFFFFFFFFFLL) + 32);
                    }

                    else
                    {
                      v28 = _StringObject.sharedUTF8.getter(*&v9, v11);
                      v15 = v248;
                    }

                    closure #1 in _StringGuts._convertedToSmall()(v28, v15, &v264, v21);
                    v9 = v264;
                    v29 = v265;
LABEL_42:
                    v12._object;
                    v39._rawBits = 1;
                    v40._rawBits = (v19 << 16) | 1;
                    v41._rawBits = _StringGuts.validateScalarRange(_:)(v39, v40, v12._countAndFlagsBits, v12._object)._rawBits;
                    if (v41._rawBits < 0x10000)
                    {
                      v41._rawBits |= 3;
                    }

                    if (v41._rawBits >> 16 || v42._rawBits >> 16 != v19)
                    {
                      countAndFlagsBits = specialized static String._copying(_:)(v41._rawBits, v42._rawBits, v12._countAndFlagsBits, v12._object);
                      object = v50;
                      v12._object;
                    }

                    else
                    {
                      object = v12._object;
                    }

                    if ((object & 0x2000000000000000) != 0)
                    {
                      object;
                    }

                    else if ((object & 0x1000000000000000) != 0)
                    {
                      countAndFlagsBits = _StringGuts._foreignConvertedToSmall()(*&countAndFlagsBits, object);
                      v250 = v249;
                      object;
                      object = v250;
                    }

                    else
                    {
                      if ((*&countAndFlagsBits & 0x1000000000000000) != 0)
                      {
                        v244 = ((object & 0xFFFFFFFFFFFFFFFLL) + 32);
                        v245 = *&countAndFlagsBits & 0xFFFFFFFFFFFFLL;
                      }

                      else
                      {
                        v244 = _StringObject.sharedUTF8.getter(*&countAndFlagsBits, object);
                      }

                      closure #1 in _StringGuts._convertedToSmall()(v244, v245, &v264, v43);
                      object;
                      countAndFlagsBits = v264;
                      object = v265;
                    }

                    v51 = HIBYTE(v29) & 0xF;
                    v52 = HIBYTE(object) & 0xF;
                    v53 = v52 + v51;
                    if (v52 + v51 <= 0xF)
                    {
                      v12._object;
                      if (v52)
                      {
                        v54 = 0;
                        v55 = 0;
                        v56 = 8 * v51;
                        v57 = 8 * v52;
                        a1 = v254;
                        do
                        {
                          v58 = object >> (v54 & 0x38);
                          if (v55 < 8)
                          {
                            v58 = *&countAndFlagsBits >> v54;
                          }

                          v59 = (v58 << (v56 & 0x38)) | ((-255 << (v56 & 0x38)) - 1) & v29;
                          v60 = (v58 << v56) | ((-255 << v56) - 1) & *&v9;
                          if (v51 <= 7)
                          {
                            v9 = v60;
                          }

                          else
                          {
                            v29 = v59;
                          }

                          ++v51;
                          v56 += 8;
                          v54 += 8;
                          ++v55;
                        }

                        while (v57 != v54);
                      }

                      else
                      {
                        a1 = v254;
                      }

                      v11;
                      v12._object;
                      v62 = 0xA000000000000000;
                      if (!(*&v9 & 0x8080808080808080 | v29 & 0x80808080808080))
                      {
                        v62 = 0xE000000000000000;
                      }

                      v63 = (v62 & 0xFF00000000000000 | (v53 << 56) | v29 & 0xFFFFFFFFFFFFFFLL);
LABEL_96:
                      v266._countAndFlagsBits = v9;
                      v266._object = v63;
                      goto LABEL_97;
                    }

LABEL_303:
                    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
                  }

                  v9 = _StringGuts._foreignConvertedToSmall()(*&v9, v11);
                  v29 = v243;
LABEL_41:
                  x1_0 = v251;
                  goto LABEL_42;
                }

LABEL_26:
                v15 = v25 & 0x2000000000000000;
                v20 = _StringGuts.nativeUnusedCapacity.getter(*&v9, v11);
                if (v30)
                {
                  x1_0 = v251;
                  a1 = v254;
                  if (v15)
                  {
LABEL_28:
                    swift_isUniquelyReferenced_nonNull_native(v11 & 0xFFFFFFFFFFFFFFFLL);
                  }

LABEL_29:
                  v31 = 2 * _StringGuts.nativeCapacity.getter(*&v9, v11);
                  if (v32)
                  {
                    v31 = 0;
                  }

                  if (v31 > v24)
                  {
                    v24 = v31;
                  }

LABEL_33:
                  _StringGuts.grow(_:)(v24);
LABEL_34:
                  if ((v12._object & 0x1000000000000000) != 0)
                  {
                    _StringGuts._foreignAppendInPlace(_:)(v12._countAndFlagsBits, v12._object, 0, v19);
                  }

                  else
                  {
                    if (v258)
                    {
                      if ((v12._countAndFlagsBits & 0x1000000000000000) != 0)
                      {
                        v33 = (v12._object & 0xFFFFFFFFFFFFFFFLL) + 32;
                        v34 = v256;
                        v35 = v256;
                      }

                      else
                      {
                        v246 = _StringObject.sharedUTF8.getter(v12._countAndFlagsBits, v12._object);
                        if (v247 < v256)
                        {
LABEL_305:
                          _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
                        }

                        v33 = v246;
                        v35 = v247;
                        x1_0 = v251;
                        a1 = v254;
                        v34 = v256;
                      }

                      v36 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v34, v33, v35);
                      v38 = v12._countAndFlagsBits >> 63;
                    }

                    else
                    {
                      v38 = (v12._object >> 62) & 1;
                      v264 = v12._countAndFlagsBits;
                      v265 = v12._object & 0xFFFFFFFFFFFFFFLL;
                      v36 = &v264;
                      v37 = (v12._object >> 56) & 0xF;
                    }

                    closure #1 in _StringGuts.append(_:)(v36, v37, &v266, v38);
                  }

                  swift_bridgeObjectRelease_n(v12._object, 2);
                  goto LABEL_97;
                }

LABEL_55:
                a1 = v254;
                if (v20 >= v22)
                {
                  x1_0 = v251;
                  if (v15 && swift_isUniquelyReferenced_nonNull_native(v11 & 0xFFFFFFFFFFFFFFFLL))
                  {
                    goto LABEL_34;
                  }

                  goto LABEL_33;
                }

                x1_0 = v251;
                if (v15)
                {
                  goto LABEL_28;
                }

                goto LABEL_29;
              }
            }

            else
            {
              if (v24 > 15)
              {
                goto LABEL_26;
              }

              if ((v11 & 0x2000000000000000) == 0)
              {
                goto LABEL_21;
              }
            }

            v29 = v11;
            goto LABEL_41;
          }

LABEL_54:
          __break(1u);
          goto LABEL_55;
        }

LABEL_52:
        v20 = String.UTF8View._foreignCount()();
        v24 = v20 + v22;
        if (!__OFADD__(v20, v22))
        {
          goto LABEL_15;
        }

        goto LABEL_54;
      }

      v18 = v12._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      v258 = 1;
    }

    else
    {
      v258 = (v12._object & 0x2000000000000000) == 0;
      v18 = v12._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      v19 = (v12._object >> 56) & 0xF;
      if ((v12._object & 0x2000000000000000) != 0)
      {
LABEL_12:
        v256 = v18;
        if ((v12._object & 0x1000000000000000) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_49;
      }
    }

    v19 = v18;
    goto LABEL_12;
  }

  v11;
  v266 = v12;
LABEL_97:
  v72 = 34;
  v264 = 34;
  v265 = 0xE100000000000000;
  if ((x1_0 & 0x2000000000000000) != 0)
  {
    v73 = HIBYTE(x1_0) & 0xF;
  }

  else
  {
    v73 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v73)
  {
    v78 = 0xE100000000000000;
LABEL_221:
    v262 = 34;
    v263 = 0xE100000000000000;
    v171 = HIBYTE(v78) & 0xF;
    if ((v78 & 0x2000000000000000) == 0)
    {
      v171 = v72 & 0xFFFFFFFFFFFFLL;
    }

    if (!v171)
    {
LABEL_274:
      v263;
      v115 = v266._countAndFlagsBits;
      v109 = v266._object;
      v218 = (v266._object >> 56) & 0xF;
      if ((v266._object & 0x2000000000000000) == 0)
      {
        v218 = v266._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      }

      if (v218 || (v266._countAndFlagsBits & ~v266._object & 0x2000000000000000) != 0)
      {
        if ((v266._object & 0x2000000000000000) != 0)
        {
          if ((v78 & 0x2000000000000000) != 0)
          {
            goto LABEL_284;
          }
        }

        else if ((v78 & 0x2000000000000000) != 0)
        {
          goto LABEL_285;
        }

        v219 = v72 & 0xFFFFFFFFFFFFLL;
LABEL_286:
        v78;
        _StringGuts.append(_:)(v72, v78, 0, v219, v223, v224, v225, v226, v227, v228, v229, v230);
        swift_bridgeObjectRelease_n(v78, 2);
        v72 = v266._countAndFlagsBits;
        v78 = v266._object;
      }

      else
      {
        v266._object;
        v266._countAndFlagsBits = v72;
        v266._object = v78;
      }

      goto LABEL_287;
    }

    while (1)
    {
      v176 = v262;
      v177 = v263;
      v178 = specialized Collection.first.getter(v262, v263);
      if ((v178 & 0x100000000) != 0)
      {
        goto LABEL_298;
      }

      v260 = v72;
      v261 = v78;
      v264 = 0;
      v265 = 0xE000000000000000;
      v179 = specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(v178);
      v181 = v180;
      _StringGuts.append(_:)(v179, v180, v182, v183, v184, v185, v186, v187, v188, v189);
      v181;
      v190 = v260;
      v191 = v261;
      v261;
      0xE000000000000000;
      v264 = v190;
      v265 = v191;
      v192 = HIBYTE(v191) & 0xF;
      if ((v191 & 0x2000000000000000) == 0)
      {
        v192 = v190;
      }

      v193 = 7;
      if (((v191 >> 60) & ((v190 & 0x800000000000000) == 0)) != 0)
      {
        v193 = 11;
      }

      v194._rawBits = v193 | (v192 << 16);
      v195._rawBits = _StringGuts.validateInclusiveCharacterIndex_5_7(_:)(v194)._rawBits;
      rawBits = v195._rawBits;
      if (!(v195._rawBits >> 14))
      {
        break;
      }

      v197 = v195._rawBits >> 16;
      if (v195._rawBits >= 0x20000)
      {
        if ((v191 & 0x1000000000000000) == 0)
        {
          if ((v191 & 0x2000000000000000) != 0)
          {
            v260 = v190;
            v261 = v191 & 0xFFFFFFFFFFFFFFLL;
            v199 = *&v259[v197];
          }

          else
          {
            if ((v190 & 0x1000000000000000) != 0)
            {
              v198 = ((v191 & 0xFFFFFFFFFFFFFFFLL) + 32);
            }

            else
            {
              v198 = _StringObject.sharedUTF8.getter(v190, v191);
              if (!v198)
              {
                _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
              }
            }

            v199 = *&v198[v197 - 2];
          }

          if (v199 != 2573 && (v199 & 0x8080) == 0)
          {
            v197 = 1;
LABEL_248:
            v201 = v197 << 8;
            goto LABEL_255;
          }
        }

        v197 = _StringGuts._opaqueComplexCharacterStride(endingAt:)(rawBits >> 16);
      }

      if (v197 >= 64)
      {
        v201 = 63;
      }

      else
      {
        v201 = v197 << 8;
      }

LABEL_255:
      v191;
      v202._rawBits = _StringGuts.validateInclusiveScalarIndex(_:)(v194)._rawBits;
      if (!(v202._rawBits >> 14))
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v203 = v202._rawBits;
      v191;
      if ((v191 & 0x1000000000000000) != 0)
      {
        v208 = String.UnicodeScalarView._foreignIndex(before:)(v203)._rawBits;
        v191;
      }

      else
      {
        if ((v191 & 0x2000000000000000) != 0)
        {
          v205 = 0;
          v260 = v190;
          v261 = v191 & 0xFFFFFFFFFFFFFFLL;
          do
          {
            v207 = v259[(v203 >> 16) + 1 + v205--] & 0xC0;
          }

          while (v207 == 128);
        }

        else
        {
          if ((v190 & 0x1000000000000000) != 0)
          {
            v204 = ((v191 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v204 = _StringObject.sharedUTF8.getter(v190, v191);
          }

          v205 = 0;
          do
          {
            v206 = v204[(v203 >> 16) - 1 + v205--] & 0xC0;
          }

          while (v206 == 128);
        }

        v191;
        v208 = (v203 - -65536 * v205) & 0xFFFFFFFFFFFF0000;
      }

      if (((rawBits - (v197 << 16)) & 0xFFFFFFFFFFFF0000 | v201) >> 14 >= v208 >> 14)
      {
        v177;
        v214._rawBits = specialized Collection.dropFirst(_:)(1, v176, v177)._rawBits;
        v216 = v215;
        v260 = v190;
        v261 = v191;
        v264 = 0;
        v265 = 0xE000000000000000;
        specialized String.UnicodeScalarView.append<A>(contentsOf:)(v214, v267, v217, v215);
        0xE000000000000000;
        v216;
        v72 = v260;
        v78 = v261;
        goto LABEL_274;
      }

      v260 = v190;
      v261 = v191;
      specialized RangeReplaceableCollection<>.removeLast()();
      v210 = v260;
      v209 = v261;
      v261;
      0xE000000000000000;
      v260 = v210;
      v261 = v209;
      v209;
      v211 = specialized RangeReplaceableCollection<>.removeLast()();
      0xE000000000000000;
      v264 = v260;
      v265 = v261;
      v212 = Unicode.Scalar._escaped(asASCII:)(1);
      v172 = v212.value._object;
      if (v212.value._object)
      {
        v173 = v212.value._countAndFlagsBits;
      }

      else
      {
        v173 = specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(v211);
      }

      v213 = v172;
      v174._rawBits = 15;
      specialized String.UnicodeScalarView.replaceSubrange<A>(_:with:)(0xFuLL, v174, v173, v213);
      v213;
      v72 = v264;
      v78 = v265;
      v175 = HIBYTE(v265) & 0xF;
      if ((v265 & 0x2000000000000000) == 0)
      {
        v175 = *&v264 & 0xFFFFFFFFFFFFLL;
      }

      if (!v175)
      {
        goto LABEL_274;
      }
    }

    if (_swift_stdlib_isExecutableLinkedOnOrAfter(0x50700u))
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v197 = 0;
    goto LABEL_248;
  }

  v74 = 0;
  v257 = v73;
  v252 = (x1_0 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v253 = x1_0 & 0xFFFFFFFFFFFFFFLL;
  v75 = 1;
  while (1)
  {
    while (1)
    {
      if ((x1_0 & 0x1000000000000000) != 0)
      {
        v82 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)((v74 << 16));
        scalarLength = v82.scalarLength;
        value = v82._0._value;
      }

      else
      {
        if ((x1_0 & 0x2000000000000000) != 0)
        {
          v262 = a1;
          v263 = v253;
          v79 = &v262;
        }

        else
        {
          v79 = v252;
          if ((a1 & 0x1000000000000000) == 0)
          {
            v79 = _StringObject.sharedUTF8.getter(a1, x1_0);
          }
        }

        value = _decodeScalar(_:startingAt:)(v79, v61, v74);
      }

      v83 = value;
      v74 += scalarLength;
      v84 = Unicode.Scalar._escaped(asASCII:)(0);
      if (!v84.value._object)
      {
        break;
      }

      v85 = v84.value._object;
      v86 = v265;
      v87 = HIBYTE(v265) & 0xF;
      if ((v265 & 0x2000000000000000) == 0)
      {
        v87 = *&v264 & 0xFFFFFFFFFFFFLL;
      }

      if (!v87 && (*&v264 & ~v265 & 0x2000000000000000) == 0)
      {
        v265;
        v264 = v84.value._countAndFlagsBits;
        v265 = v84.value._object;
        goto LABEL_134;
      }

      if ((v84.value._object & 0x2000000000000000 & v265) != 0)
      {
        v88 = specialized _SmallString.init(_:appending:)(*&v264, v265, v84.value._countAndFlagsBits, v84.value._object);
        if ((v90 & 1) == 0)
        {
          v112 = v88;
          v113 = v89;
          v86;
          v84.value._object;
          v264 = v112;
          v265 = v113;
          goto LABEL_134;
        }
      }

      if ((v84.value._object & 0x2000000000000000) != 0)
      {
        v91 = (v84.value._object >> 56) & 0xF;
      }

      else
      {
        v91 = v84.value._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      }

      v84.value._object;
      v100 = v84.value._countAndFlagsBits;
      v101 = v84.value._object;
      v102 = v91;
LABEL_126:
      _StringGuts.append(_:)(v100, v101, 0, v102, v92, v93, v94, v95, v96, v97, v98, v99);
      swift_bridgeObjectRelease_n(v85, 2);
LABEL_134:
      v75 = 1;
      if (v74 >= v73)
      {
        v72 = v264;
        v78 = v265;
        goto LABEL_221;
      }
    }

    v103 = v264;
    v72 = v265;
    if (v75)
    {
      LODWORD(v262) = 0;
      v104 = specialized BidirectionalCollection.last.getter(*&v264, v265);
      if ((v104 & 0x100000000) != 0)
      {
LABEL_298:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      if (!_GraphemeBreakingState.shouldBreak(between:and:)(v104, v83))
      {
        v130 = Unicode.Scalar._escaped(asASCII:)(1);
        v129 = v130.value._object;
        if (v130.value._object)
        {
          v131 = v130.value._countAndFlagsBits;
        }

        else
        {
          v131 = specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(v83);
        }

        v85 = v129;
        v158 = HIBYTE(v72) & 0xF;
        if ((v72 & 0x2000000000000000) == 0)
        {
          v158 = v103 & 0xFFFFFFFFFFFFLL;
        }

        if (!v158 && (v103 & ~v72 & 0x2000000000000000) == 0)
        {
          v72;
          v264 = v131;
          v265 = v85;
          v73 = v257;
          goto LABEL_134;
        }

        if ((v72 & 0x2000000000000000) != 0)
        {
          if ((v129 & 0x2000000000000000) != 0)
          {
            v161 = specialized _SmallString.init(_:appending:)(v103, v72, v131, v129);
            if ((v163 & 1) == 0)
            {
              v164 = v161;
              v165 = v162;
              v72;
              v85;
              v264 = v164;
              v265 = v165;
              v73 = v257;
              goto LABEL_134;
            }

            goto LABEL_210;
          }
        }

        else if ((v129 & 0x2000000000000000) != 0)
        {
LABEL_210:
          v159 = HIBYTE(v85) & 0xF;
          goto LABEL_211;
        }

        v159 = v131 & 0xFFFFFFFFFFFFLL;
LABEL_211:
        v73 = v257;
        v85;
        v100 = v131;
        v101 = v85;
        v102 = v159;
        goto LABEL_126;
      }
    }

    v262 = v103;
    v263 = v72;
    v264 = 0;
    v265 = 0xE000000000000000;
    v106 = specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(v83);
    v78 = v105;
    v107 = (v105 & 0x2000000000000000) == 0;
    v108 = HIBYTE(v72) & 0xF;
    v109 = HIBYTE(v105) & 0xF;
    if ((v72 & 0x2000000000000000) != 0)
    {
      break;
    }

    v110 = v106 & 0xFFFFFFFFFFFFLL;
    v111 = HIBYTE(v105) & 0xF;
    if ((v105 & 0x2000000000000000) == 0)
    {
      goto LABEL_138;
    }

LABEL_139:
    v255 = v107;
    if ((v105 & 0x1000000000000000) != 0)
    {
      goto LABEL_178;
    }

LABEL_140:
    v105;
    v114 = v111;
    if ((v72 & 0x1000000000000000) == 0)
    {
      goto LABEL_141;
    }

LABEL_181:
    v115 = String.UTF8View._foreignCount()();
    v116 = v115 + v114;
    if (__OFADD__(v115, v114))
    {
      goto LABEL_283;
    }

LABEL_145:
    if ((v103 & ~v72 & 0x2000000000000000) == 0 || !swift_isUniquelyReferenced_nonNull_native(v72 & 0xFFFFFFFFFFFFFFFLL))
    {
      if (v116 > 15)
      {
        goto LABEL_157;
      }

      v78;
      if ((v72 & 0x2000000000000000) == 0)
      {
LABEL_152:
        x1_0 = v251;
        if ((v72 & 0x1000000000000000) != 0)
        {
          v103 = _StringGuts._foreignConvertedToSmall()(v103, v72);
          v122 = v166;
        }

        else
        {
          if ((v103 & 0x1000000000000000) != 0)
          {
            v120 = ((v72 & 0xFFFFFFFFFFFFFFFLL) + 32);
            v121 = v103 & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            v120 = _StringObject.sharedUTF8.getter(v103, v72);
          }

          closure #1 in _StringGuts._convertedToSmall()(v120, v121, &v260, v119);
          v103 = v260;
          v122 = v261;
        }

LABEL_167:
        v78;
        v132._rawBits = 1;
        v133._rawBits = (v111 << 16) | 1;
        v134._rawBits = _StringGuts.validateScalarRange(_:)(v132, v133, v106, v78)._rawBits;
        if (v134._rawBits < 0x10000)
        {
          v134._rawBits |= 3;
        }

        if (v134._rawBits >> 16 || v135._rawBits >> 16 != v111)
        {
          v106 = specialized static String._copying(_:)(v134._rawBits, v135._rawBits, v106, v78);
          v137 = v145;
          v78;
          if ((v137 & 0x2000000000000000) == 0)
          {
LABEL_172:
            if ((v137 & 0x1000000000000000) != 0)
            {
              v106 = _StringGuts._foreignConvertedToSmall()(v106, v137);
              v170 = v169;
              v137;
              v137 = v170;
            }

            else
            {
              if ((v106 & 0x1000000000000000) != 0)
              {
                v138 = ((v137 & 0xFFFFFFFFFFFFFFFLL) + 32);
                v139 = v106 & 0xFFFFFFFFFFFFLL;
              }

              else
              {
                v138 = _StringObject.sharedUTF8.getter(v106, v137);
              }

              closure #1 in _StringGuts._convertedToSmall()(v138, v139, &v260, v136);
              v137;
              v106 = v260;
              v137 = v261;
            }

            goto LABEL_187;
          }
        }

        else
        {
          v137 = v78;
          if ((v78 & 0x2000000000000000) == 0)
          {
            goto LABEL_172;
          }
        }

        v137;
LABEL_187:
        v146 = specialized _SmallString.init(_:appending:)(v103, v122, v106, v137);
        if (v148)
        {
          goto LABEL_303;
        }

        v149 = v146;
        v150 = v147;
        0xE000000000000000;
        v72;
        v78;
        v262 = v149;
        v263 = v150;
        goto LABEL_106;
      }

LABEL_166:
      v122 = v72;
      x1_0 = v251;
      goto LABEL_167;
    }

    v117 = _StringGuts.nativeUnusedCapacity.getter(v103, v72);
    if (v118)
    {
      goto LABEL_303;
    }

    if (v116 > 15)
    {
      goto LABEL_157;
    }

    if ((v72 & 0x2000000000000000) != 0)
    {
      v78;
      goto LABEL_166;
    }

    if (v117 < v114)
    {
      v78;
      goto LABEL_152;
    }

LABEL_157:
    v123 = v110;
    _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v116, v114);
    if ((v78 & 0x1000000000000000) != 0)
    {
      v78;
      _StringGuts._foreignAppendInPlace(_:)(v106, v78, 0, v111);
      0xE000000000000000;
      v78;
      x1_0 = v251;
      v73 = v257;
    }

    else
    {
      x1_0 = v251;
      v73 = v257;
      if (v255)
      {
        if ((v106 & 0x1000000000000000) != 0)
        {
          v124 = (v78 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v125 = v110;
        }

        else
        {
          v167 = _StringObject.sharedUTF8.getter(v106, v78);
          if (v168 < v110)
          {
            goto LABEL_305;
          }

          v124 = v167;
          v110 = v168;
          v125 = v123;
        }

        v78;
        v126 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v125, v124, v110);
        v127 = v263 & 0xFFFFFFFFFFFFFFFLL;
        __StringStorage.appendInPlace(_:isASCII:)(v126, v128, v106 < 0);
        v262 = *(v127 + 24);
        0xE000000000000000;
        v78;
      }

      else
      {
        v78;
        v260 = v106;
        v261 = v78 & 0xFFFFFFFFFFFFFFLL;
        v78;
        v160 = v263 & 0xFFFFFFFFFFFFFFFLL;
        __StringStorage.appendInPlace(_:isASCII:)(&v260, v109, (v78 & 0x4000000000000000) != 0);
        v262 = *(v160 + 24);
        0xE000000000000000;
      }
    }

LABEL_107:
    v75 = 0;
    v72 = v262;
    v78 = v263;
    v264 = v262;
    v265 = v263;
    a1 = v254;
    if (v74 >= v73)
    {
      goto LABEL_221;
    }
  }

  if ((v105 & 0x2000000000000000) == 0)
  {
    v110 = v106 & 0xFFFFFFFFFFFFLL;
    v107 = 1;
LABEL_138:
    v111 = v110;
    goto LABEL_139;
  }

  v140 = v109 + v108;
  if (v109 + v108 < 0x10)
  {
    v105;
    if (v109)
    {
      v151 = 0;
      v152 = 0;
      v153 = 8 * v108;
      v154 = 8 * v109;
      v76 = v72;
      do
      {
        v155 = v78 >> (v151 & 0x38);
        if (v152 < 8)
        {
          v155 = v106 >> v151;
        }

        v156 = (v155 << (v153 & 0x38)) | ((-255 << (v153 & 0x38)) - 1) & v76;
        v157 = (v155 << v153) | ((-255 << v153) - 1) & v103;
        if (v108 <= 7)
        {
          v103 = v157;
        }

        else
        {
          v76 = v156;
        }

        ++v108;
        v153 += 8;
        v151 += 8;
        ++v152;
      }

      while (v154 != v151);
    }

    else
    {
      v76 = v72;
    }

    v72;
    0xE000000000000000;
    v77 = 0xE000000000000000;
    if (v103 & 0x8080808080808080 | v76 & 0x80808080808080)
    {
      v77 = 0xA000000000000000;
    }

    v262 = v103;
    v263 = v77 & 0xFF00000000000000 | (v140 << 56) | v76 & 0xFFFFFFFFFFFFFFLL;
LABEL_106:
    v73 = v257;
    goto LABEL_107;
  }

  v110 = v106 & 0xFFFFFFFFFFFFLL;
  v111 = HIBYTE(v105) & 0xF;
  v255 = 0;
  if ((v105 & 0x1000000000000000) == 0)
  {
    goto LABEL_140;
  }

LABEL_178:
  swift_bridgeObjectRetain_n(v105, 2);
  v141._rawBits = 1;
  v142._rawBits = (v111 << 16) | 1;
  v143._rawBits = _StringGuts.validateScalarRange(_:)(v141, v142, v106, v78)._rawBits;
  if (v143._rawBits < 0x10000)
  {
    v143._rawBits |= 3;
  }

  v114 = String.UTF8View.distance(from:to:)(v143, v144);
  v78;
  if ((v72 & 0x1000000000000000) != 0)
  {
    goto LABEL_181;
  }

LABEL_141:
  if ((v72 & 0x2000000000000000) != 0)
  {
    v115 = HIBYTE(v72) & 0xF;
  }

  else
  {
    v115 = v103 & 0xFFFFFFFFFFFFLL;
  }

  v116 = v115 + v114;
  if (!__OFADD__(v115, v114))
  {
    goto LABEL_145;
  }

LABEL_283:
  __break(1u);
LABEL_284:
  v220 = specialized _SmallString.init(_:appending:)(v115, v109, v72, v78);
  if (v222)
  {
LABEL_285:
    v219 = HIBYTE(v78) & 0xF;
    goto LABEL_286;
  }

  v241 = v220;
  v242 = v221;
  v109;
  v78;
  v266._countAndFlagsBits = v241;
  v266._object = v242;
  v78 = v242;
  v72 = v241;
LABEL_287:
  v239 = HIBYTE(v78) & 0xF;
  if ((v78 & 0x2000000000000000) == 0)
  {
    v239 = v72 & 0xFFFFFFFFFFFFLL;
  }

  if (v239 || (v72 & ~v78 & 0x2000000000000000) != 0)
  {
    _StringGuts.append(_:)(0x29uLL, 0xE100000000000000, v231, v232, v233, v234, v235, v236, v237, v238);
    0xE100000000000000;
    return v266._countAndFlagsBits;
  }

  else
  {
    v78;
    return 41;
  }
}

uint64_t (*String.utf8.modify(void *a1))()
{
  v4 = *v1;
  v3 = v1[1];
  a1[2] = v1;
  a1[3] = v3;
  *a1 = v4;
  a1[1] = v3;
  v3;
  return String.utf16.modify;
}

__objc2_class **String._slowUTF8CString()(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v25 = &_swiftEmptyArrayStorage;
  a2;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4 + 1, 0);
  v5 = &_swiftEmptyArrayStorage;
  if (v4)
  {
    v6 = (a1 >> 59) & 1;
    if ((a2 & 0x1000000000000000) == 0)
    {
      LOBYTE(v6) = 1;
    }

    v7 = 4 << v6;
    v8 = 15;
    do
    {
      v9 = v8 & 0xC;
      rawBits = v8;
      if (v9 == v7)
      {
        v15 = v8;
        rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(v8)._rawBits;
        v8 = v15;
      }

      v11 = rawBits >> 16;
      if (rawBits >> 16 >= v4)
      {
LABEL_29:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v16 = v8;
        v14 = String.UTF8View._foreignSubscript(position:)(rawBits);
        v8 = v16;
        if (v9 != v7)
        {
          goto LABEL_17;
        }
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v24[0] = a1;
          v24[1] = a2 & 0xFFFFFFFFFFFFFFLL;
          v12 = v24;
        }

        else
        {
          v12 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
          if ((a1 & 0x1000000000000000) == 0)
          {
            v13 = v8;
            v12 = _StringObject.sharedUTF8.getter(a1, a2);
            v8 = v13;
          }
        }

        v14 = *(v12 + v11);
        if (v9 != v7)
        {
LABEL_17:
          if ((a2 & 0x1000000000000000) != 0)
          {
            goto LABEL_21;
          }

          goto LABEL_18;
        }
      }

      v8 = _StringGuts._slowEnsureMatchingEncoding(_:)(v8)._rawBits;
      if ((a2 & 0x1000000000000000) != 0)
      {
LABEL_21:
        if (v4 <= v8 >> 16)
        {
          goto LABEL_29;
        }

        v8 = String.UTF8View._foreignIndex(after:)(v8)._rawBits;
        goto LABEL_23;
      }

LABEL_18:
      v8 = (v8 & 0xFFFFFFFFFFFF0000) + 65540;
LABEL_23:
      v25 = v5;
      v18 = v5[2];
      v17 = v5[3];
      if (v18 >= v17 >> 1)
      {
        v23 = v8;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), &v18->isa + 1, 1);
        v8 = v23;
        v5 = v25;
      }

      v5[2] = (&v18->isa + 1);
      *(&v18->info + v5) = v14;
    }

    while (4 * v4 != v8 >> 14);
  }

  a2;
  v25 = v5;
  v20 = v5[2];
  v19 = v5[3];
  v21 = &v20->isa + 1;
  if (v20 >= v19 >> 1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v21, 1);
    v5 = v25;
  }

  v5[2] = v21;
  *(&v20->info + v5) = 0;
  return v5;
}

Swift::Int __swiftcall String.UTF8View._foreignCount()()
{
  v2 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v2 = v0;
  }

  v3 = 7;
  if (((v1 >> 60) & ((v0 & 0x800000000000000) == 0)) != 0)
  {
    v3 = 11;
  }

  return String.UTF8View._foreignDistance(from:to:)(15, (v3 | (v2 << 16)));
}

uint64_t *String.UTF8View._underlyingSpan()()
{
  result = v0;
  v2 = v0[1];
  if ((v2 & 0x1000000000000000) != 0)
  {
    if ((v2 & 0x8000000000000000) == 0 || (v2 & 0xF000000000000000) == 0xC000000000000000)
    {
      Associated = _StringGuts._getOrAllocateAssociatedStorage()(*v0, v2);
      Associated;
      return Associated + 4;
    }

    else if ((v2 & 0x2000000000000000) == 0)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }
  }

  else if ((v2 & 0x2000000000000000) == 0)
  {
    if ((*v0 & 0x1000000000000000) != 0)
    {
      return ((v2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      return _StringObject.sharedUTF8.getter(*v0, v2);
    }
  }

  return result;
}

BOOL String.Index._foreignIsWithin(_:)(int a1, int a2, Swift::String::Index a3)
{
  rawBits = a3._rawBits;
  if ((a3._rawBits & 0xC001) == 0)
  {
    v6 = a3._rawBits;
    v5._rawBits = _StringGuts.scalarAlignSlow(_:)(a3)._rawBits;
    a3._rawBits = v6;
    rawBits = v6 & 0xC | v5._rawBits & 0xFFFFFFFFFFFFFFF3 | 1;
  }

  return (rawBits ^ a3._rawBits) < 0x4000;
}

Swift::tuple_Unicode_Scalar_scalarLength_Int __swiftcall _StringGuts.foreignErrorCorrectedScalar(endingAt:)(Swift::String::Index endingAt)
{
  v2 = v1;
  v4 = endingAt._rawBits >> 16;
  v5 = [v1 & 0xFFFFFFFFFFFFFFFLL characterAtIndex_];
  if ((v5 & 0xFC00) != 0xD800)
  {
    if ((v5 & 0xFC00) != 0xDC00)
    {
      goto LABEL_4;
    }

    if (endingAt._rawBits >= 0x20000)
    {
      v7 = v5;
      v8 = [v2 & 0xFFFFFFFFFFFFFFFLL characterAtIndex_];
      if ((v8 & 0xFC00) == 0xD800)
      {
        v5 = (v7 & 0x3FF | ((v8 & 0x3FF) << 10)) + 0x10000;
        v6 = 2;
        goto LABEL_8;
      }
    }
  }

  v5 = 65533;
LABEL_4:
  v6 = 1;
LABEL_8:
  result.scalarLength = v6;
  result._0._value = v5;
  return result;
}

Swift::_ValidUTF8Buffer::Index __swiftcall _ValidUTF8Buffer.index(_:offsetBy:)(Swift::_ValidUTF8Buffer::Index _, Swift::Int offsetBy)
{
  if (v2)
  {
    if (_._biasedBits)
    {
      v3 = v2;
      while (v3 != _._biasedBits)
      {
        v4 = v3 > 0xFF;
        v3 >>= 8;
        if (!v4)
        {
          goto LABEL_6;
        }
      }
    }
  }

  else if (_._biasedBits)
  {
    goto LABEL_6;
  }

  v5 = __clz(v2);
  v6 = __clz(_._biasedBits);
  v7 = __OFADD__(offsetBy, (v5 - v6) >> 3);
  v8 = offsetBy + ((v5 - v6) >> 3);
  if (v7)
  {
    __break(1u);
    goto LABEL_6;
  }

  if ((v8 & 0x8000000000000000) != 0 || 4 - (v5 >> 3) < v8)
  {
LABEL_6:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return (v2 >> (4 * (v8 & 7)) >> (4 * (v8 & 7)));
}

uint64_t _diagnoseInvalidUTF8MultiByteLeading(_:)(char a1)
{
  if ((a1 & 0xFE) == 0xC0)
  {
    v1 = 3;
  }

  else
  {
    v1 = 2;
  }

  if (a1 <= -65)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

Swift::Unicode::UTF8::ValidationError::Kind_optional __swiftcall Unicode.UTF8.ValidationError.Kind.init(rawValue:)(Swift::UInt8 rawValue)
{
  if (rawValue <= 4u)
  {
    v1 = rawValue;
  }

  else
  {
    v1 = 0;
  }

  return (v1 | ((rawValue > 4u) << 8));
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance UTF8ValidationResult(void *a1, uint64_t *a2)
{
  v2 = *a2;
  if ((*a1 & 0x8000000000000000) != 0)
  {
    if (v2 < 0)
    {
      v6 = a1[1] == a2[1] && a1[2] == a2[2];
      return *a1 == v2 && v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if (v2 < 0)
    {
      v3 = 0;
    }

    else
    {
      v3 = v2 ^ *a1 ^ 1;
    }

    return v3 & 1;
  }
}

uint64_t _legacyNarrowIllegalRange #1 (buf:) in validateUTF8(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = specialized Collection.dropFirst(_:)(2, a1, a2);
  v12 = specialized Collection.first.getter(v8, v9, v10, v11);
  v13 = specialized Collection.dropFirst(_:)(1, a1, a2);
  v17 = specialized Collection.first.getter(v13, v14, v15, v16);
  v18 = specialized Collection.first.getter(a1, a2, a3, a4);
  if ((v18 & 0x100) != 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v19 = v12 << 8;
  if ((v12 & 0x100) != 0)
  {
    v19 = 0;
  }

  v20 = v19 & 0xFF00;
  v21 = (v19 & 0xFF00 | v17) << 8;
  if ((v17 & 0x100) != 0)
  {
    v21 = v20;
  }

  if ((v21 & 0xC000 | v18 & 0xF0) == 0x80E0)
  {
    if ((v21 & 0x2000 | v18 & 0xF) == 0x200D || (v21 & 0x2000 | v18 & 0xF) == 0)
    {
      v23 = 1;
    }

    else
    {
      v23 = 2;
    }
  }

  else if ((v21 & 0xC000 | v18 & 0xF8) == 0x80F0)
  {
    v23 = 1;
    if (v21 & 0x3000 | v18 & 7 && __rev16(v21 & 0x3000 | v18 & 7) <= 0x400)
    {
      if ((v21 & 0xC00000) == 0x800000)
      {
        v23 = 3;
      }

      else
      {
        v23 = 2;
      }
    }
  }

  else
  {
    v23 = 1;
  }

  if (__OFADD__(a1, v23))
  {
    __break(1u);
LABEL_24:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (a1 + v23 < a1)
  {
    goto LABEL_24;
  }

  return a1;
}

uint64_t findInvalidRange #1 (_:) in validateUTF8(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  if (a1 != a2)
  {
    v8 = a1;
    specialized Slice.subscript.getter(a1, a1, a2, a3, a4);
    v7 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      goto LABEL_49;
    }

    a1 = v8;
  }

  v9 = a1;
  if (v7 == a2)
  {
    goto LABEL_35;
  }

  if (v7 <= a2)
  {
    v10 = a2;
  }

  else
  {
    v10 = v7;
  }

  if (v7 <= a4)
  {
    v11 = a4;
  }

  else
  {
    v11 = v7;
  }

  if (v7 < a1 || v7 >= a2 || v7 < 0 || v7 >= a4)
  {
LABEL_49:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v9 = a1;
  if ((*(a3 + v7) & 0xC0) == 0x80)
  {
    v9 = a1 + 1;
    if (__OFADD__(a1, 1))
    {
      goto LABEL_48;
    }

    if (a1 + 1 <= a1)
    {
      goto LABEL_49;
    }

    v12 = v7 + 1;
    if (v7 + 1 != a2)
    {
      if (v7 >= a1 && v12 != v10 && (v7 & 0x8000000000000000) == 0 && v12 != v11)
      {
        if ((*(a3 + v12) & 0xC0) != 0x80)
        {
          goto LABEL_34;
        }

        v13 = __OFADD__(v9, 1);
        v9 = a1 + 2;
        if (v13)
        {
          goto LABEL_48;
        }

        if (a1 + 2 <= a1)
        {
          goto LABEL_49;
        }

        v14 = v7 + 2;
        if (v7 + 2 == a2)
        {
          goto LABEL_34;
        }

        if (v7 >= a1 && v14 != v10 && (v7 & 0x8000000000000000) == 0 && v14 != v11)
        {
          if ((*(a3 + v14) & 0xC0) == 0x80)
          {
            v13 = __OFADD__(v9, 1);
            v9 = a1 + 3;
            if (!v13)
            {
              if (a1 + 3 <= a1)
              {
                goto LABEL_49;
              }

              goto LABEL_34;
            }

LABEL_48:
            __break(1u);
            goto LABEL_49;
          }

          goto LABEL_34;
        }
      }

      goto LABEL_49;
    }
  }

LABEL_34:
  if (v9 < a1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

LABEL_35:
  v15 = v9 + 1;
  if (__OFADD__(v9, 1))
  {
    __break(1u);
    goto LABEL_49;
  }

  if (v15 > a2)
  {
    goto LABEL_49;
  }

  return _legacyNarrowIllegalRange #1 (buf:) in validateUTF8(_:)(a1, v15, a3, a4);
}

Swift::Int __swiftcall _StringGuts.previousWordIndex(endingAt:)(Swift::Int endingAt)
{
  v3 = v2;
  if ((v2 & 0x1000000000000000) != 0)
  {

    return _StringGuts._foreignPreviousWordIndex(endingAt:)(endingAt);
  }

  else
  {
    if ((v2 & 0x2000000000000000) != 0)
    {
      v14[0] = v1;
      v14[1] = v2 & 0xFFFFFFFFFFFFFFLL;
      v11 = v1;
      v2;
      v10 = v14;
      v7 = endingAt;
      v8 = v11;
      v9 = v3;
    }

    else
    {
      if ((v1 & 0x1000000000000000) != 0)
      {
        v5 = ((v2 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v6 = v1;
      }

      else
      {
        v6 = v1;
        v5 = _StringObject.sharedUTF8.getter(v1, v2);
      }

      v3;
      v7 = endingAt;
      v8 = v6;
      v9 = v3;
      v10 = v5;
    }

    v12 = specialized _StringGuts.previousWordBoundary(endingAt:previousScalar:)(v7, v8, v9, v10);
    v3;
    return v12;
  }
}

Swift::Int __swiftcall _StringGuts.nextWordIndex(startingAt:)(Swift::Int startingAt)
{
  if ((v2 & 0x1000000000000000) != 0)
  {
    v6 = startingAt;
    v7 = v2;
    v8 = v1;
    v2;
    v9 = specialized _StringGuts.nextWordBoundary(startingAt:nextScalar:)(v6, v8, v7, v8, v7);
    v7;
    return v9;
  }

  else if ((v2 & 0x2000000000000000) != 0)
  {
    v15[0] = v1;
    v15[1] = v2 & 0xFFFFFFFFFFFFFFLL;
    return specialized _StringGuts.nextWordBoundary(startingAt:nextScalar:)(startingAt, v1, v2, v15, HIBYTE(v2) & 0xF);
  }

  else
  {
    if ((v1 & 0x1000000000000000) != 0)
    {
      v3 = (v2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      v4 = v1 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = startingAt;
      v11 = v1;
      v12 = v2;
      v13 = _StringObject.sharedUTF8.getter(v1, v2);
      v2 = v12;
      v3 = v13;
      startingAt = v10;
      v4 = v14;
      v1 = v11;
    }

    return specialized _StringGuts.nextWordBoundary(startingAt:nextScalar:)(startingAt, v1, v2, v3, v4);
  }
}

uint64_t specialized _StringGuts.nextWordBoundary(startingAt:nextScalar:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v5 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v5 <= a1 || a1 >= a5)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v9 = _decodeScalar(_:startingAt:)(a4, a2, a1);
  v11 = v10 + a1;
  if (v11 >= a5)
  {
    return v11;
  }

  v46 = 0;
  v12 = 0;
  v47 = 0;
  v48 = 0;
  v13 = 18;
  v14 = 1;
  do
  {
    v15 = v9;
    v9 = _decodeScalar(_:startingAt:)(a4, v10, v11);
    if (v15 == 13 && v9 == 10)
    {
      goto LABEL_8;
    }

    if (v15 - 10 < 4 || v15 == 133 || v15 - 8234 >= 0xFFFFFFFE)
    {
      break;
    }

    switch(v15)
    {
      case 0x200Du:
        if (v9 < 0xA)
        {
          goto LABEL_31;
        }

        if (v9 < 0xE || v9 == 133)
        {
          goto LABEL_314;
        }

        if (v9 >> 3 < 0x405)
        {
LABEL_31:
          v16 = 17;
LABEL_32:
          v17 = v16;
LABEL_33:
          switch(v9)
          {
            case 0x200Du:
              goto LABEL_90;
            case 0x27u:
LABEL_208:
              v18 = 0;
              v19 = 0;
              v20 = 15;
              goto LABEL_209;
            case 0x22u:
              goto LABEL_36;
          }

          v25 = v12;
          v21 = v10;
          break;
        }

        if (v9 < 0x202A)
        {
          goto LABEL_314;
        }

        v17 = 17;
        if (v9 - 127488 >= 0xFFFFFFE6)
        {
          goto LABEL_97;
        }

        v25 = v12;
        v21 = v10;
        LOBYTE(v16) = 17;
        break;
      case 0x27u:
        if (v9 < 0xA)
        {
          goto LABEL_26;
        }

        if (v9 < 0xE || v9 == 133)
        {
          goto LABEL_314;
        }

        if (v9 >> 3 < 0x405)
        {
LABEL_26:
          v16 = 15;
          goto LABEL_32;
        }

        if (v9 < 0x202A)
        {
          goto LABEL_314;
        }

        v17 = 15;
        if (v9 - 127488 >= 0xFFFFFFE6)
        {
          goto LABEL_97;
        }

        v25 = v12;
        v21 = v10;
        LOBYTE(v16) = 15;
        break;
      case 0x22u:
        if (v9 < 0xA)
        {
          goto LABEL_21;
        }

        if (v9 < 0xE || v9 == 133)
        {
          goto LABEL_314;
        }

        if (v9 >> 3 < 0x405)
        {
LABEL_21:
          v16 = 2;
          goto LABEL_32;
        }

        if (v9 < 0x202A)
        {
          goto LABEL_314;
        }

        v17 = 2;
        if (v9 - 127488 >= 0xFFFFFFE6)
        {
          goto LABEL_97;
        }

        v25 = v12;
        v21 = v10;
        LOBYTE(v16) = 2;
        break;
      default:
        if (v15 - 127488 >= 0xFFFFFFE6)
        {
          if (v9 >= 0xA)
          {
            if (v9 < 0xE || v9 == 133)
            {
              goto LABEL_314;
            }

            if (v9 >> 3 > 0x404)
            {
              if (v9 < 0x202A)
              {
                goto LABEL_314;
              }

              v17 = 14;
              if (v9 - 127488 >= 0xFFFFFFE6)
              {
LABEL_97:
                v29 = 0;
                v18 = 0;
                v19 = 0;
                v20 = 14;
                goto LABEL_210;
              }
            }

            else
            {
              v17 = 14;
              switch(v9)
              {
                case 0x22u:
LABEL_36:
                  v18 = 0;
                  v19 = 0;
                  v20 = 2;
LABEL_209:
                  v29 = 1;
                  goto LABEL_210;
                case 0x27u:
                  goto LABEL_208;
                case 0x200Du:
                  v13 = 14;
                  goto LABEL_8;
              }
            }

            v25 = v12;
            v21 = v10;
            LOBYTE(v16) = 14;
          }

          else
          {
            v25 = v12;
            v21 = v10;
            LOBYTE(v16) = 14;
            v17 = 14;
          }

          break;
        }

        v21 = v10;
        v22 = v9;
        WordBreakProperty = _swift_stdlib_getWordBreakProperty(v15);
        v24 = WordBreakProperty;
        if (WordBreakProperty > 5)
        {
          if (WordBreakProperty > 8)
          {
            v9 = v22;
            v10 = v21;
            switch(v24)
            {
              case 9:
                if (v22 < 0xA)
                {
                  v16 = 5;
                  goto LABEL_149;
                }

                if (v22 < 0xE || v22 == 133)
                {
                  goto LABEL_314;
                }

                if (v22 >> 3 > 0x404)
                {
                  if (v22 < 0x202A)
                  {
                    goto LABEL_314;
                  }

                  v41 = v22 - 127488;
                  v17 = 5;
                  if (v41 >= 0xFFFFFFE6)
                  {
                    goto LABEL_311;
                  }
                }

                else
                {
                  v17 = 5;
                  switch(v9)
                  {
                    case 0x22u:
                      goto LABEL_271;
                    case 0x27u:
                      goto LABEL_208;
                    case 0x200Du:
                      v13 = 5;
                      goto LABEL_8;
                  }
                }

                v25 = v12;
                LOBYTE(v16) = 5;
                break;
              case 10:
                if (v22 < 0xA)
                {
                  v16 = 16;
                  goto LABEL_149;
                }

                if (v22 < 0xE || v22 == 133)
                {
                  goto LABEL_314;
                }

                if (v22 >> 3 > 0x404)
                {
                  if (v22 < 0x202A)
                  {
                    goto LABEL_314;
                  }

                  v44 = v22 - 127488;
                  v17 = 16;
                  if (v44 >= 0xFFFFFFE6)
                  {
                    goto LABEL_311;
                  }
                }

                else
                {
                  v17 = 16;
                  switch(v9)
                  {
                    case 0x22u:
                      goto LABEL_271;
                    case 0x27u:
                      goto LABEL_208;
                    case 0x200Du:
                      v13 = 16;
                      goto LABEL_8;
                  }
                }

                v25 = v12;
                LOBYTE(v16) = 16;
                break;
              case 11:
                if (v22 < 0xA)
                {
                  v16 = 4;
                  goto LABEL_149;
                }

                if (v22 < 0xE || v22 == 133)
                {
                  goto LABEL_314;
                }

                if (v22 >> 3 > 0x404)
                {
                  if (v22 < 0x202A)
                  {
                    goto LABEL_314;
                  }

                  v37 = v22 - 127488;
                  v17 = 4;
                  if (v37 >= 0xFFFFFFE6)
                  {
                    goto LABEL_311;
                  }
                }

                else
                {
                  v17 = 4;
                  switch(v9)
                  {
                    case 0x22u:
                      goto LABEL_271;
                    case 0x27u:
                      goto LABEL_208;
                    case 0x200Du:
                      v13 = 4;
                      goto LABEL_8;
                  }
                }

                v25 = v12;
                LOBYTE(v16) = 4;
                break;
              default:
LABEL_150:
                if (v9 >= 0xA)
                {
                  if (v9 < 0xE || v9 == 133)
                  {
                    goto LABEL_314;
                  }

                  if (v9 >> 3 > 0x404)
                  {
                    if (v9 < 0x202A)
                    {
                      goto LABEL_314;
                    }

                    v17 = 1;
                    if (v9 - 127488 >= 0xFFFFFFE6)
                    {
LABEL_311:
                      v29 = 0;
                      v18 = 0;
                      v19 = 0;
LABEL_312:
                      v20 = 14;
                      goto LABEL_210;
                    }
                  }

                  else
                  {
                    v17 = 1;
                    switch(v9)
                    {
                      case 0x22u:
LABEL_271:
                        v18 = 0;
                        v19 = 0;
                        v20 = 2;
                        v29 = 1;
                        goto LABEL_210;
                      case 0x27u:
                        goto LABEL_208;
                      case 0x200Du:
                        v13 = 1;
                        goto LABEL_8;
                    }
                  }

                  v25 = v12;
                  LOBYTE(v16) = 1;
                }

                else
                {
                  v25 = v12;
                  LOBYTE(v16) = 1;
                  v17 = 1;
                }

                goto LABEL_86;
            }
          }

          else
          {
            v9 = v22;
            v10 = v21;
            switch(v24)
            {
              case 6:
                if (v22 < 0xA)
                {
                  v16 = 9;
                  goto LABEL_149;
                }

                if (v22 < 0xE || v22 == 133)
                {
                  goto LABEL_314;
                }

                if (v22 >> 3 > 0x404)
                {
                  if (v22 < 0x202A)
                  {
                    goto LABEL_314;
                  }

                  v40 = v22 - 127488;
                  v17 = 9;
                  if (v40 >= 0xFFFFFFE6)
                  {
                    goto LABEL_311;
                  }
                }

                else
                {
                  v17 = 9;
                  switch(v9)
                  {
                    case 0x22u:
                      goto LABEL_271;
                    case 0x27u:
                      goto LABEL_208;
                    case 0x200Du:
                      goto LABEL_193;
                  }
                }

                v25 = v12;
                LOBYTE(v16) = 9;
                break;
              case 7:
                if (v22 < 0xA)
                {
                  v16 = 10;
                  goto LABEL_149;
                }

                if (v22 < 0xE || v22 == 133)
                {
                  goto LABEL_314;
                }

                if (v22 >> 3 > 0x404)
                {
                  if (v22 < 0x202A)
                  {
                    goto LABEL_314;
                  }

                  v43 = v22 - 127488;
                  v17 = 10;
                  if (v43 >= 0xFFFFFFE6)
                  {
                    goto LABEL_311;
                  }
                }

                else
                {
                  v17 = 10;
                  switch(v9)
                  {
                    case 0x22u:
                      goto LABEL_271;
                    case 0x27u:
                      goto LABEL_208;
                    case 0x200Du:
LABEL_193:
                      v13 = v17;
                      goto LABEL_8;
                  }
                }

                v25 = v12;
                LOBYTE(v16) = 10;
                break;
              case 8:
                if (v22 < 0xA)
                {
                  v16 = 13;
                  goto LABEL_149;
                }

                if (v22 < 0xE || v22 == 133)
                {
                  goto LABEL_314;
                }

                if (v22 >> 3 > 0x404)
                {
                  if (v22 < 0x202A)
                  {
                    goto LABEL_314;
                  }

                  v35 = v22 - 127488;
                  v17 = 13;
                  if (v35 >= 0xFFFFFFE6)
                  {
                    goto LABEL_311;
                  }
                }

                else
                {
                  v17 = 13;
                  switch(v9)
                  {
                    case 0x22u:
                      goto LABEL_271;
                    case 0x27u:
                      goto LABEL_208;
                    case 0x200Du:
                      v13 = 13;
                      goto LABEL_8;
                  }
                }

                v25 = v12;
                LOBYTE(v16) = 13;
                break;
              default:
                goto LABEL_150;
            }
          }
        }

        else if (WordBreakProperty > 2)
        {
          v9 = v22;
          v10 = v21;
          switch(v24)
          {
            case 3:
              if (v22 < 0xA)
              {
                goto LABEL_132;
              }

              if (v22 < 0xE || v22 == 133)
              {
                goto LABEL_314;
              }

              if (v22 >> 3 < 0x405)
              {
LABEL_132:
                v16 = 7;
                goto LABEL_149;
              }

              if (v22 < 0x202A)
              {
                goto LABEL_314;
              }

              v39 = v22 - 127488;
              v17 = 7;
              if (v39 >= 0xFFFFFFE6)
              {
                goto LABEL_311;
              }

              v25 = v12;
              LOBYTE(v16) = 7;
              break;
            case 4:
              if (v22 < 0xA)
              {
                goto LABEL_146;
              }

              if (v22 < 0xE || v22 == 133)
              {
                goto LABEL_314;
              }

              if (v22 >> 3 < 0x405)
              {
LABEL_146:
                v17 = 0;
                LOBYTE(v16) = 0;
                goto LABEL_33;
              }

              if (v22 < 0x202A)
              {
                goto LABEL_314;
              }

              if (v22 - 127488 >= 0xFFFFFFE6)
              {
                v29 = 0;
                v18 = 0;
                v19 = 0;
                v17 = 0;
                goto LABEL_312;
              }

              v25 = v12;
              v17 = 0;
              LOBYTE(v16) = 0;
              break;
            case 5:
              if (v22 < 0xA)
              {
                v16 = 11;
                goto LABEL_149;
              }

              if (v22 < 0xE || v22 == 133)
              {
                goto LABEL_314;
              }

              if (v22 >> 3 > 0x404)
              {
                if (v22 < 0x202A)
                {
                  goto LABEL_314;
                }

                v36 = v22 - 127488;
                v17 = 11;
                if (v36 >= 0xFFFFFFE6)
                {
                  goto LABEL_311;
                }
              }

              else
              {
                v17 = 11;
                switch(v9)
                {
                  case 0x22u:
                    goto LABEL_271;
                  case 0x27u:
                    goto LABEL_208;
                  case 0x200Du:
                    goto LABEL_193;
                }
              }

              v25 = v12;
              LOBYTE(v16) = 11;
              break;
            default:
              goto LABEL_150;
          }
        }

        else
        {
          v9 = v22;
          v10 = v21;
          if (v24)
          {
            if (v24 == 1)
            {
              if (v22 < 0xA)
              {
                goto LABEL_139;
              }

              if (v22 < 0xE || v22 == 133)
              {
                goto LABEL_314;
              }

              if (v22 >> 3 < 0x405)
              {
LABEL_139:
                v16 = 6;
                goto LABEL_149;
              }

              if (v22 < 0x202A)
              {
                goto LABEL_314;
              }

              v42 = v22 - 127488;
              v17 = 6;
              if (v42 >= 0xFFFFFFE6)
              {
                goto LABEL_311;
              }

              v25 = v12;
              LOBYTE(v16) = 6;
            }

            else
            {
              if (v24 != 2)
              {
                goto LABEL_150;
              }

              if (v22 < 0xA)
              {
                goto LABEL_47;
              }

              if (v22 < 0xE || v22 == 133)
              {
                goto LABEL_314;
              }

              if (v22 >> 3 < 0x405)
              {
LABEL_47:
                v16 = 8;
LABEL_149:
                v17 = v16;
                goto LABEL_33;
              }

              if (v22 < 0x202A)
              {
                goto LABEL_314;
              }

              v34 = v22 - 127488;
              v17 = 8;
              if (v34 >= 0xFFFFFFE6)
              {
                goto LABEL_311;
              }

              v25 = v12;
              LOBYTE(v16) = 8;
            }
          }

          else
          {
            if (v22 < 0xA)
            {
              goto LABEL_125;
            }

            if (v22 < 0xE || v22 == 133)
            {
              goto LABEL_314;
            }

            if (v22 >> 3 < 0x405)
            {
LABEL_125:
              v16 = 3;
              goto LABEL_149;
            }

            if (v22 < 0x202A)
            {
              goto LABEL_314;
            }

            v38 = v22 - 127488;
            v17 = 3;
            if (v38 >= 0xFFFFFFE6)
            {
              goto LABEL_311;
            }

            v25 = v12;
            LOBYTE(v16) = 3;
          }
        }

        break;
    }

LABEL_86:
    v26 = v9;
    v27 = _swift_stdlib_getWordBreakProperty(v9);
    v28 = v27;
    if (v27 > 5)
    {
      if (v27 > 8)
      {
        v9 = v26;
        v10 = v21;
        if (v28 == 9)
        {
          v18 = 0;
          v19 = 0;
          v20 = 5;
LABEL_112:
          v29 = 1;
LABEL_113:
          v12 = v25;
          goto LABEL_210;
        }

        v12 = v25;
        if (v28 == 10)
        {
          if (v17 == 16)
          {
            goto LABEL_8;
          }

          v18 = 0;
          v19 = 0;
          v20 = 16;
          goto LABEL_209;
        }

        if (v28 == 11)
        {
          if (v17 == 17)
          {
            goto LABEL_8;
          }

          v18 = 0;
          v19 = 0;
          v20 = 4;
          goto LABEL_209;
        }
      }

      else
      {
        v9 = v26;
        v10 = v21;
        if (v28 == 6)
        {
          v18 = 0;
          v19 = 0;
          v20 = 9;
          goto LABEL_112;
        }

        v12 = v25;
        if (v28 == 7)
        {
          v18 = 0;
          v19 = 0;
          v20 = 10;
LABEL_116:
          v29 = 1;
          goto LABEL_210;
        }

        if (v28 == 8)
        {
          v19 = 0;
          v20 = 13;
          v29 = 1;
          v18 = 1;
          goto LABEL_210;
        }
      }
    }

    else if (v27 > 2)
    {
      v9 = v26;
      v10 = v21;
      if (v28 == 3)
      {
        v18 = 0;
        v20 = 7;
        v29 = 1;
        v19 = 1;
        goto LABEL_113;
      }

      v12 = v25;
      if (v28 == 4)
      {
        v18 = 0;
        v19 = 0;
        v20 = 0;
        goto LABEL_116;
      }

      if (v28 == 5)
      {
        v18 = 0;
        v19 = 0;
        v20 = 11;
        goto LABEL_209;
      }
    }

    else
    {
      v9 = v26;
      v10 = v21;
      if (v28 < 2)
      {
        v12 = v25;
LABEL_90:
        if (((1 << v16) & 0x20048) == 0)
        {
          v13 = v17;
        }

        goto LABEL_8;
      }

      v12 = v25;
      if (v28 == 2)
      {
        v18 = 0;
        v19 = 0;
        v20 = 8;
        goto LABEL_209;
      }
    }

    if (v17 == 1)
    {
      break;
    }

    v18 = 0;
    v19 = 0;
    v29 = 1;
    v20 = 1;
LABEL_210:
    if (v13 == 18)
    {
      v30 = v17;
    }

    else
    {
      v30 = v13;
    }

    if (v30 <= 8)
    {
      if (v30 <= 4)
      {
        if (!v30)
        {
          if (v20 > 0xF)
          {
            break;
          }

          v32 = 1 << v20;
          if ((v32 & 0x20A1) == 0)
          {
            if ((v32 & 0x8A00) == 0)
            {
              break;
            }

LABEL_257:
            v47 = 0;
            v14 = 0;
            v13 = 18;
            goto LABEL_270;
          }

          goto LABEL_266;
        }

        if (v30 != 2 || (v19 & 1) == 0)
        {
          break;
        }

        if (v14)
        {
          return v11;
        }

        if ((v48 & 1) == 0 || v47 <= 1)
        {
          return v12;
        }

        goto LABEL_7;
      }

      if (v30 == 5)
      {
        if (v20 > 0xD || ((1 << v20) & 0x21A1) == 0)
        {
          break;
        }

LABEL_266:
        v13 = 18;
        goto LABEL_8;
      }

      if (v30 == 7)
      {
        if (v20 > 0xF)
        {
          break;
        }

        if (((1 << v20) & 0xA0A1) == 0)
        {
          if (((1 << v20) & 0xA00) == 0)
          {
            if (v20 != 2)
            {
              break;
            }

            v14 = 0;
            v13 = 18;
            v31 = 2;
            goto LABEL_269;
          }

          goto LABEL_257;
        }

        goto LABEL_266;
      }

      if (v30 != 8)
      {
        break;
      }

      v13 = 18;
      if (v20 != 5 && v20 != 8)
      {
        break;
      }
    }

    else
    {
      if (v30 <= 12)
      {
        if (v30 == 9)
        {
          if (v20 && v20 != 7)
          {
            break;
          }

          goto LABEL_260;
        }

        if (v30 != 10)
        {
          goto LABEL_228;
        }

        if ((v18 & 1) == 0)
        {
          break;
        }

LABEL_248:
        if (v14)
        {
          return v11;
        }

        if ((v48 & 1) == 0 || v47 != 1)
        {
          return v12;
        }

LABEL_7:
        v47 = 0;
        v48 = 0;
        v12 = 0;
        v13 = 18;
        v14 = 1;
        goto LABEL_8;
      }

      if (v30 == 13)
      {
        if (v20 > 0xF)
        {
          break;
        }

        v33 = 1 << v20;
        if ((v33 & 0x20A1) == 0)
        {
          if ((v33 & 0x8C00) == 0)
          {
            break;
          }

          v14 = 0;
          v13 = 18;
          v31 = 1;
LABEL_269:
          v47 = v31;
LABEL_270:
          v48 = 1;
          v12 = v11;
          goto LABEL_8;
        }

        goto LABEL_266;
      }

      if (v30 != 14)
      {
        if (v30 != 15)
        {
          break;
        }

LABEL_228:
        if (v20 && v20 != 7)
        {
          if (v20 != 13)
          {
            break;
          }

          goto LABEL_248;
        }

LABEL_260:
        if (v14)
        {
          return v11;
        }

        if ((v48 & 1) == 0 || v47)
        {
          return v12;
        }

        goto LABEL_7;
      }

      if ((v29 | v46))
      {
        break;
      }

      v13 = 18;
      v46 = 1;
    }

LABEL_8:
    v11 += v10;
  }

  while (v11 < a5);
LABEL_314:
  if (v14)
  {
    return v11;
  }

  return v12;
}