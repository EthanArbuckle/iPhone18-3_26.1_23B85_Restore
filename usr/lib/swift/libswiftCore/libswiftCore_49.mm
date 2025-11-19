uint64_t closure #1 in _StringGuts._foreignNextWordIndex(startingAt:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if ((a3 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= a1)
  {
    return 0;
  }

  v8._rawBits = _StringGuts.validateScalarIndex(_:)((a1 << 16))._rawBits;
  if ((a3 & 0x1000000000000000) != 0)
  {
    value = _StringGuts.foreignErrorCorrectedScalar(startingAt:)((v8._rawBits & 0xFFFFFFFFFFFF0000))._0._value;
    v13._rawBits = _StringGuts.validateScalarIndex(_:)((a1 << 16))._rawBits;
    String.UnicodeScalarView._foreignIndex(after:)(v13);
  }

  else
  {
    v10 = v8._rawBits >> 16;
    if ((a3 & 0x2000000000000000) != 0)
    {
      v15 = a2;
      v16 = a3 & 0xFFFFFFFFFFFFFFLL;
      value = _decodeScalar(_:startingAt:)(&v15, v9._rawBits, v10);
      _StringGuts.validateScalarIndex(_:)((a1 << 16))._rawBits;
      v15 = a2;
      v16 = a3 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        v11 = ((a3 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v14 = v8._rawBits >> 16;
        v11 = _StringObject.sharedUTF8.getter(a2, a3);
        v10 = v14;
      }

      value = _decodeScalar(_:startingAt:)(v11, v9._rawBits, v10);
      _StringGuts.validateScalarIndex(_:)((a1 << 16))._rawBits;
      if ((a2 & 0x1000000000000000) == 0)
      {
        _StringObject.sharedUTF8.getter(a2, a3);
      }
    }
  }

  return value;
}

Swift::Int __swiftcall _StringGuts._foreignPreviousWordIndex(endingAt:)(Swift::Int endingAt)
{
  v3 = v2;
  v4 = v1;
  v2;
  v6 = specialized _StringGuts.previousWordBoundary(endingAt:previousScalar:)(endingAt, v4, v3);
  v3;
  return v6;
}

uint64_t _decodeScalar(_:endingAt:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  v4 = a1 - 1;
  do
  {
    v5 = *(v4 + a3) & 0xC0;
    ++v3;
    --v4;
  }

  while (v5 == 128);
  return _decodeScalar(_:startingAt:)(a1, a2, a3 - v3);
}

uint64_t closure #1 in _StringGuts._foreignPreviousWordIndex(endingAt:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 1)
  {
    return 0;
  }

  v5._rawBits = _StringGuts.validateInclusiveScalarIndex(_:)((a1 << 16))._rawBits;
  if (!(v5._rawBits >> 14))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if ((a3 & 0x1000000000000000) != 0)
  {
    rawBits = String.UnicodeScalarView._foreignIndex(before:)(v5)._rawBits;
    v18._rawBits = _StringGuts.validateScalarIndex(_:)(rawBits)._rawBits;
    LODWORD(result) = _StringGuts.foreignErrorCorrectedScalar(startingAt:)((v18._rawBits & 0xFFFFFFFFFFFF0000))._0._value;
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v22 = a2;
      v23 = a3 & 0xFFFFFFFFFFFFFFLL;
      if ((*(&v22 + (v5._rawBits >> 16) - 1) & 0xC0) == 0x80)
      {
        v12 = &v22 + (v5._rawBits >> 16) - 2;
        v10 = 1;
        do
        {
          ++v10;
          v13 = *v12--;
        }

        while ((v13 & 0xC0) == 0x80);
      }

      else
      {
        v10 = 1;
      }
    }

    else
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = ((a3 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v19 = v5._rawBits;
        v6 = _StringObject.sharedUTF8.getter(a2, a3);
        v5._rawBits = v19;
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

    v15._rawBits = _StringGuts.validateScalarIndex(_:)(((v5._rawBits - (v10 << 16)) & 0xFFFFFFFFFFFF0000 | 5))._rawBits >> 16;
    if ((a3 & 0x2000000000000000) != 0)
    {
      v22 = a2;
      v23 = a3 & 0xFFFFFFFFFFFFFFLL;
      v16 = &v22;
    }

    else if ((a2 & 0x1000000000000000) != 0)
    {
      v16 = ((a3 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v20 = a3;
      v21 = v15._rawBits;
      v16 = _StringObject.sharedUTF8.getter(a2, v20);
      v15._rawBits = v21;
    }

    LODWORD(result) = _decodeScalar(_:startingAt:)(v16, v14._rawBits, v15._rawBits);
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance _WordQuestion(uint64_t *a1, unint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  if (*(a1 + 16) == 1)
  {
    if (v3 | v2)
    {
      if (v3 ^ 1 | v2)
      {
        if (*(a2 + 16) && __PAIR128__(v4, v5) >= 2)
        {
          return 1;
        }
      }

      else if (*(a2 + 16) && !(v5 ^ 1 | v4))
      {
        return 1;
      }

      return 0;
    }

    v8 = v5 | v4;
    return *(a2 + 16) && v8 == 0;
  }

  else
  {
    v6 = (v3 == v5) & ~*(a2 + 16);
    if (v2 == v4)
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }
}

Swift::UInt64 Substring.init(_:)(Swift::UInt64 a1, Swift::UInt64 a2, unint64_t a3, unint64_t a4)
{
  a4;
  v8._rawBits = a1;
  v9._rawBits = a2;
  rawBits = _StringGuts.validateScalarRange(_:)(v8, v9, a3, a4)._rawBits;
  a4;
  return rawBits;
}

uint64_t Substring.init<A>(_:)(uint64_t *a1, ValueMetadata *a2)
{
  Description = a2[-1].Description;
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = (&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = (&v16 - v9);
  MEMORY[0x1EEE9AC00](v8);
  v12 = (&v16 - v11);
  if (v13 != &type metadata for String)
  {
    if (a2 == &type metadata for Substring)
    {
      return *a1;
    }

    if (a2 == &unk_1EEEBBE38)
    {
      return specialized Substring.init<A>(_:)(*a1);
    }

    v14 = Description[2];
    v14(&v16 - v11, a1, a2);
    if (swift_dynamicCast(&v16, v12, a2, &type metadata for String, 6uLL))
    {
      (Description[1])(a1, a2);
    }

    else
    {
      v14(v10, a1, a2);
      if (swift_dynamicCast(&v16, v10, a2, &type metadata for Substring, 6uLL))
      {
        (Description[1])(a1, a2);
        return v16;
      }

      (Description[4])(v7, a1, a2);
      String.init<A>(_:)(v7, a2);
    }
  }

  return 15;
}

Swift::String::Index __swiftcall Substring.index(after:)(Swift::String::Index after)
{
  v5 = v4;
  v6 = v3;
  v7 = v2;
  v8 = v1;
  v9 = _StringGuts.validateCharacterIndex(_:in:)(after._rawBits, v1, v2, v3, v4);
  v10 = (v9 >> 8) & 0x3F;
  v11 = v9 >> 16;
  v12 = v7 >> 16;
  if (!v10)
  {
    if (v11 == v12)
    {
      v10 = 0;
      goto LABEL_20;
    }

    if ((v5 & 0x1000000000000000) != 0)
    {
      goto LABEL_48;
    }

    if ((v5 & 0x2000000000000000) != 0)
    {
      v31 = v6;
      v32 = v5 & 0xFFFFFFFFFFFFFFLL;
      if (v11 + 1 != (HIBYTE(v5) & 0xF))
      {
        v16 = *(&v31 + v11);
        if (v16 == 2573 || (v16 & 0x80808080) != 0)
        {
LABEL_48:
          v10 = _StringGuts._opaqueComplexCharacterStride(startingAt:)(v11);
          goto LABEL_20;
        }
      }
    }

    else
    {
      if ((v6 & 0x1000000000000000) != 0)
      {
        v13 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v14 = v6 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = _StringObject.sharedUTF8.getter(v6, v5);
      }

      if (v11 + 1 != v14)
      {
        if (!v13)
        {
          goto LABEL_30;
        }

        v15 = *&v13[v11];
        if (v15 == 2573 || (v15 & 0x80808080) != 0)
        {
          goto LABEL_48;
        }
      }
    }

    v10 = 1;
  }

LABEL_20:
  v18 = v10 + v11;
  if (v12 < v10 + v11)
  {
    v18 = v7 >> 16;
  }

  v19 = v18 << 16;
  v20 = v18 & 0xFFFFFFFFFFFFLL;
  v21 = v5 & 0x1000000000000000;
  if ((v18 & 0xFFFFFFFFFFFFLL) == v12)
  {
    v22 = 0;
LABEL_39:
    v19 |= v22 << 8;
    goto LABEL_40;
  }

  if (!v21)
  {
    if ((v5 & 0x2000000000000000) != 0)
    {
      v31 = v6;
      v32 = v5 & 0xFFFFFFFFFFFFFFLL;
      if (v20 + 1 == (HIBYTE(v5) & 0xF))
      {
        goto LABEL_38;
      }

      v23 = &v31;
    }

    else
    {
      if ((v6 & 0x1000000000000000) != 0)
      {
        v23 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v24 = v6 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v30 = v18 & 0xFFFFFFFFFFFFLL;
        v23 = _StringObject.sharedUTF8.getter(v6, v5);
        v20 = v30;
      }

      if (v20 + 1 == v24)
      {
        goto LABEL_38;
      }

      if (!v23)
      {
LABEL_30:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }
    }

    v25 = *(v23 + v20);
    if (v25 == 2573 || (v25 & 0x80808080) != 0)
    {
      goto LABEL_46;
    }

LABEL_38:
    v21 = 0;
    v22 = 1;
    goto LABEL_39;
  }

LABEL_46:
  v22 = _StringGuts._opaqueComplexCharacterStride(startingAt:)(v20);
  if (v22 <= 63)
  {
    goto LABEL_39;
  }

LABEL_40:
  v27 = (v6 & 0x800000000000000) != 0 || v21 == 0;
  v28 = 4;
  if (!v27)
  {
    v28 = 8;
  }

  return (v8 & 2 | v28 | v19 | 1);
}

Swift::String::Index __swiftcall Substring.index(before:)(Swift::String::Index before)
{
  v5 = v1;
  v6 = _StringGuts.validateInclusiveCharacterIndex(_:in:)(before._rawBits, v1, v2, v3, v4);
  if (v5 >> 14 >= v6 >> 14)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return Substring._uncheckedIndex(before:)(v6);
}

Swift::String::Index __swiftcall Substring._uncheckedIndex(before:)(Swift::String::Index before)
{
  v5 = v4;
  v6 = v3;
  v7 = v1;
  rawBits = before._rawBits;
  if ((v1 ^ before._rawBits) >= 0x4000)
  {
    v10 = _StringGuts._opaqueCharacterStride(endingAt:in:)(before._rawBits >> 16, v1 >> 16, v2, v3, v4);
    rawBits -= v10 << 16;
    v9 = v10 << 8;
    if (v10 > 63)
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v11 = 4;
  if (((v5 >> 60) & ((v6 & 0x800000000000000) == 0)) != 0)
  {
    v11 = 8;
  }

  return (v7 & 2 | v9 | rawBits & 0xFFFFFFFFFFFF0000 | v11 | 1);
}

Swift::String::Index __swiftcall Substring.index(_:offsetBy:)(Swift::String::Index _, Swift::Int offsetBy)
{
  v6 = v5;
  v7 = v4;
  v9._rawBits = _._rawBits;
  v10 = (v5 & 0x1000000000000000) == 0 || (v4 & 0x800000000000000) != 0;
  v11 = _._rawBits & 0xC;
  v12 = 4 << v10;
  v13 = v3 >> 14;
  if ((_._rawBits & 2) == 0 || v11 == v12)
  {
    if (v11 == v12)
    {
      v44 = v2;
      v45 = v3;
      v46._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(_)._rawBits;
      v3 = v45;
      v2 = v44;
      v9._rawBits = v46._rawBits;
    }

    v14 = v2 >> 14;
    if (v9._rawBits >> 14 < v2 >> 14 || v13 < v9._rawBits >> 14)
    {
LABEL_65:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (v9._rawBits)
    {
      if ((v2 & 2) != 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v47 = v2;
      v48 = v3;
      v49._rawBits = _StringGuts.scalarAlignSlow(_:)(v9)._rawBits;
      v3 = v48;
      v2 = v47;
      v9._rawBits = v9._rawBits & 0xC | v49._rawBits & 0xFFFFFFFFFFFFFFF3 | 1;
      if ((v47 & 2) != 0)
      {
LABEL_15:
        if ((v9._rawBits & 2) != 0)
        {
          goto LABEL_19;
        }
      }
    }

    if (v9._rawBits >> 14 != v14 && v9._rawBits >> 14 != v13)
    {
      rawBits = v9._rawBits;
      v16 = v2;
      v17 = v3;
      v18 = _StringGuts._slowRoundDownToNearestCharacter(_:in:)(rawBits, v2, v3, v7, v6);
      v3 = v17;
      v2 = v16;
      v9._rawBits = v18;
    }

    goto LABEL_19;
  }

  if (_._rawBits >> 14 < v2 >> 14 || v13 < _._rawBits >> 14)
  {
    goto LABEL_65;
  }

LABEL_19:
  if (offsetBy < 0)
  {
    v36 = 0;
    v37 = v2 >> 14;
    v38 = v2 >> 16;
    v39 = 4;
    if (((v6 >> 60) & ((v7 & 0x800000000000000) == 0)) != 0)
    {
      v39 = 8;
    }

    v40 = v2 & 2 | v39;
    do
    {
      if (v37 >= v9._rawBits >> 14)
      {
LABEL_74:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      --v36;
      v41 = _StringGuts._opaqueCharacterStride(endingAt:in:)(v9._rawBits >> 16, v38, v2, v7, v6);
      v42 = v41 << 8;
      if (v41 > 63)
      {
        v42 = 0;
      }

      v9._rawBits = v40 | v42 | (v9._rawBits - (v41 << 16)) & 0xFFFFFFFFFFFF0000 | 1;
    }

    while (v36 > offsetBy);
  }

  else if (offsetBy)
  {
    v19 = v3 >> 16;
    v20 = HIBYTE(v6) & 0xF;
    v21 = 4;
    if (((v6 >> 60) & ((v7 & 0x800000000000000) == 0)) != 0)
    {
      v21 = 8;
    }

    v22 = v2 & 2 | v21;
    while (1)
    {
      if (v13 <= v9._rawBits >> 14)
      {
        goto LABEL_74;
      }

      v23 = (v9._rawBits >> 8) & 0x3F;
      v24 = v9._rawBits >> 16;
      if (!v23)
      {
        break;
      }

LABEL_40:
      v28 = v23 + v24;
      if (v19 < v23 + v24)
      {
        v28 = v19;
      }

      v29 = v28 << 16;
      v30 = v28 & 0xFFFFFFFFFFFFLL;
      if ((v28 & 0xFFFFFFFFFFFFLL) != v19)
      {
        if ((v6 & 0x1000000000000000) != 0)
        {
          goto LABEL_62;
        }

        if ((v6 & 0x2000000000000000) != 0)
        {
          v55 = v7;
          v56 = v6 & 0xFFFFFFFFFFFFFFLL;
          if (v30 + 1 != v20)
          {
            v34 = *(&v55 + v30);
LABEL_53:
            if (v34 == 2573 || (v34 & 0x8080) != 0)
            {
LABEL_62:
              v51 = v20;
              v31 = _StringGuts._opaqueComplexCharacterStride(startingAt:)(v30);
              v20 = v51;
              if (v31 > 63)
              {
                goto LABEL_60;
              }

              goto LABEL_59;
            }
          }
        }

        else
        {
          v32 = ((v6 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v33 = v7 & 0xFFFFFFFFFFFFLL;
          if ((v7 & 0x1000000000000000) == 0)
          {
            v50 = v30;
            v53 = v20;
            v32 = _StringObject.sharedUTF8.getter(v7, v6);
            v30 = v50;
            v20 = v53;
          }

          if (v30 + 1 != v33)
          {
            if (!v32)
            {
LABEL_77:
              _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
            }

            v34 = *&v32[v30];
            goto LABEL_53;
          }
        }

        v31 = 1;
        goto LABEL_59;
      }

      v31 = 0;
LABEL_59:
      v29 |= v31 << 8;
LABEL_60:
      v9._rawBits = v22 | v29 | 1;
      if (!--offsetBy)
      {
        return v9;
      }
    }

    if (v24 == v19)
    {
      v23 = 0;
      goto LABEL_40;
    }

    if ((v6 & 0x1000000000000000) == 0)
    {
      if ((v6 & 0x2000000000000000) == 0)
      {
        v25 = ((v6 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v26 = v7 & 0xFFFFFFFFFFFFLL;
        if ((v7 & 0x1000000000000000) == 0)
        {
          v54 = v20;
          v25 = _StringObject.sharedUTF8.getter(v7, v6);
          v20 = v54;
        }

        if (v24 + 1 == v26)
        {
LABEL_39:
          v23 = 1;
          goto LABEL_40;
        }

        if (!v25)
        {
          goto LABEL_77;
        }

        v27 = *&v25[v24];
        if (v27 == 2573)
        {
          goto LABEL_64;
        }

        goto LABEL_38;
      }

      v55 = v7;
      v56 = v6 & 0xFFFFFFFFFFFFFFLL;
      if (v24 + 1 == v20)
      {
        goto LABEL_39;
      }

      v27 = *(&v55 + v24);
      if (v27 != 2573)
      {
LABEL_38:
        if ((v27 & 0x80808080) == 0)
        {
          goto LABEL_39;
        }
      }
    }

LABEL_64:
    v52 = v20;
    v23 = _StringGuts._opaqueComplexCharacterStride(startingAt:)(v24);
    v20 = v52;
    goto LABEL_40;
  }

  return v9;
}

Swift::String::Index_optional __swiftcall Substring.index(_:offsetBy:limitedBy:)(Swift::String::Index _, Swift::Int offsetBy, Swift::String::Index limitedBy)
{
  v7 = v6;
  v8 = v5;
  v10 = (v5 >> 59) & 1;
  if ((v6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v10) = 1;
  }

  v11 = 4 << v10;
  if ((limitedBy._rawBits & 0xC) == 4 << v10)
  {
    rawBits = _._rawBits;
    v57 = v3;
    v58 = v4;
    v59._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(limitedBy)._rawBits;
    v4 = v58;
    v3 = v57;
    limitedBy._rawBits = v59._rawBits;
    _._rawBits = rawBits;
  }

  if ((_._rawBits & 0xC) == v11)
  {
    v60 = _._rawBits;
    v61 = limitedBy._rawBits;
    v62 = v3;
    v63 = v4;
    v64 = _StringGuts._slowEnsureMatchingEncoding(_:)(_)._rawBits;
    v65._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(v60)._rawBits;
    limitedBy._rawBits = v61;
    v4 = v63;
    v3 = v62;
    v12._rawBits = v65._rawBits;
    _._rawBits = v64;
  }

  else
  {
    if ((_._rawBits & 2) != 0)
    {
      if (_._rawBits >> 14 >= v3 >> 14)
      {
        v12._rawBits = _._rawBits;
        if (v4 >> 14 >= _._rawBits >> 14)
        {
          goto LABEL_18;
        }
      }

LABEL_66:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v12._rawBits = _._rawBits;
  }

  v13 = v3 >> 14;
  if (v12._rawBits >> 14 < v3 >> 14)
  {
    goto LABEL_66;
  }

  v14 = v4 >> 14;
  if (v4 >> 14 < v12._rawBits >> 14)
  {
    goto LABEL_66;
  }

  if (v12._rawBits)
  {
    if ((v3 & 2) != 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v66 = _._rawBits;
    v67 = limitedBy._rawBits;
    v68 = v3;
    v69 = v4;
    v70._rawBits = _StringGuts.scalarAlignSlow(_:)(v12)._rawBits;
    limitedBy._rawBits = v67;
    v4 = v69;
    v3 = v68;
    v71 = v70._rawBits;
    _._rawBits = v66;
    v12._rawBits = v12._rawBits & 0xC | v71 & 0xFFFFFFFFFFFFFFF3 | 1;
    if ((v68 & 2) != 0)
    {
LABEL_12:
      if ((v12._rawBits & 2) != 0)
      {
        goto LABEL_18;
      }
    }
  }

  if (v12._rawBits >> 14 != v13 && v12._rawBits >> 14 != v14)
  {
    v15 = _._rawBits;
    v16 = v12._rawBits;
    v17 = limitedBy._rawBits;
    v18 = v3;
    v19 = v4;
    v20 = _StringGuts._slowRoundDownToNearestCharacter(_:in:)(v16, v3, v4, v8, v7);
    limitedBy._rawBits = v17;
    v4 = v19;
    v3 = v18;
    v12._rawBits = v20;
    _._rawBits = v15;
  }

LABEL_18:
  v21 = limitedBy._rawBits >> 14;
  v22 = _._rawBits >> 14;
  if (offsetBy < 0)
  {
    v45 = 0;
    v46 = v3 >> 14;
    v47 = v3 >> 16;
    v48 = 4;
    if (((v7 >> 60) & ((v8 & 0x800000000000000) == 0)) != 0)
    {
      v48 = 8;
    }

    v49 = v3 & 2 | v48;
    while (1)
    {
      v50 = v12._rawBits >> 14;
      if (v22 >= v21 && v21 >= v50)
      {
        break;
      }

      if (v46 >= v50)
      {
LABEL_84:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      --v45;
      v51 = _StringGuts._opaqueCharacterStride(endingAt:in:)(v12._rawBits >> 16, v47, limitedBy._rawBits, v8, v7);
      v52 = v51 << 8;
      if (v51 > 63)
      {
        v52 = 0;
      }

      v53 = (v12._rawBits - (v51 << 16)) & 0xFFFFFFFFFFFF0000 | v52;
      v12._rawBits = v49 | v53 | 1;
      if (v45 <= offsetBy)
      {
        if (v22 < v21 || v53 >> 14 >= v21)
        {
          goto LABEL_82;
        }

        break;
      }
    }
  }

  else
  {
    if (offsetBy)
    {
      v23 = v4 >> 14;
      v24 = v4 >> 16;
      v25 = HIBYTE(v7) & 0xF;
      v26 = v7 & 0xFFFFFFFFFFFFFFLL;
      v27 = (v7 & 0xFFFFFFFFFFFFFFFLL) + 32;
      v28 = 4;
      if (((v7 >> 60) & ((v8 & 0x800000000000000) == 0)) != 0)
      {
        v28 = 8;
      }

      v29 = v3 & 2 | v28;
      while (1)
      {
        v30 = v12._rawBits >> 14;
        if (v21 >= v22 && v30 >= v21)
        {
          goto LABEL_81;
        }

        if (v30 >= v23)
        {
          goto LABEL_84;
        }

        v31 = (v12._rawBits >> 8) & 0x3F;
        v32 = v12._rawBits >> 16;
        if (!v31)
        {
          break;
        }

LABEL_41:
        v36 = v31 + v32;
        if (v24 < v31 + v32)
        {
          v36 = v24;
        }

        v37 = v36 << 16;
        v38 = v36 & 0xFFFFFFFFFFFFLL;
        if ((v36 & 0xFFFFFFFFFFFFLL) != v24)
        {
          if ((v7 & 0x1000000000000000) != 0)
          {
            goto LABEL_63;
          }

          if ((v7 & 0x2000000000000000) != 0)
          {
            v85 = v8;
            v86 = v26;
            if (v38 + 1 != v25)
            {
              v42 = *(&v85 + v38);
LABEL_54:
              if (v42 == 2573 || (v42 & 0x8080) != 0)
              {
LABEL_63:
                v73 = v27;
                v77 = v26;
                v81 = v25;
                v39 = _StringGuts._opaqueComplexCharacterStride(startingAt:)(v38);
                v27 = v73;
                v26 = v77;
                v25 = v81;
                if (v39 > 63)
                {
                  goto LABEL_61;
                }

                goto LABEL_60;
              }
            }
          }

          else
          {
            v40 = v27;
            v41 = v8 & 0xFFFFFFFFFFFFLL;
            if ((v8 & 0x1000000000000000) == 0)
            {
              v72 = v38;
              v75 = v27;
              v79 = v26;
              v83 = v25;
              v44 = _StringObject.sharedUTF8.getter(v8, v7);
              v27 = v75;
              v26 = v79;
              v25 = v83;
              v40 = v44;
              v38 = v72;
            }

            if (v38 + 1 != v41)
            {
              if (!v40)
              {
LABEL_88:
                _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
              }

              v42 = *&v40[v38];
              goto LABEL_54;
            }
          }

          v39 = 1;
          goto LABEL_60;
        }

        v39 = 0;
LABEL_60:
        v37 |= v39 << 8;
LABEL_61:
        v12._rawBits = v29 | v37 | 1;
        if (!--offsetBy)
        {
          goto LABEL_67;
        }
      }

      if (v32 == v24)
      {
        v31 = 0;
        goto LABEL_41;
      }

      if ((v7 & 0x1000000000000000) == 0)
      {
        if ((v7 & 0x2000000000000000) == 0)
        {
          v33 = v27;
          v34 = v8 & 0xFFFFFFFFFFFFLL;
          if ((v8 & 0x1000000000000000) == 0)
          {
            v80 = v26;
            v84 = v25;
            v76 = v27;
            v33 = _StringObject.sharedUTF8.getter(v8, v7);
            v27 = v76;
            v26 = v80;
            v25 = v84;
          }

          if (v32 + 1 == v34)
          {
LABEL_40:
            v31 = 1;
            goto LABEL_41;
          }

          if (!v33)
          {
            goto LABEL_88;
          }

          v35 = *&v33[v32];
          if (v35 == 2573)
          {
            goto LABEL_65;
          }

          goto LABEL_39;
        }

        v85 = v8;
        v86 = v26;
        if (v32 + 1 == v25)
        {
          goto LABEL_40;
        }

        v35 = *(&v85 + v32);
        if (v35 != 2573)
        {
LABEL_39:
          if ((v35 & 0x80808080) == 0)
          {
            goto LABEL_40;
          }
        }
      }

LABEL_65:
      v74 = v27;
      v78 = v26;
      v82 = v25;
      v31 = _StringGuts._opaqueComplexCharacterStride(startingAt:)(v32);
      v27 = v74;
      v26 = v78;
      v25 = v82;
      goto LABEL_41;
    }

LABEL_67:
    if (v21 < v22 || v21 >= v12._rawBits >> 14)
    {
LABEL_82:
      v54 = 0;
      goto LABEL_83;
    }
  }

LABEL_81:
  v12._rawBits = 0;
  v54 = 1;
LABEL_83:
  v55 = v12._rawBits;
  result.value._rawBits = v55;
  result.is_nil = v54;
  return result;
}

Swift::Int __swiftcall Substring.distance(from:to:)(Swift::String::Index from, Swift::String::Index to)
{
  v6 = v5;
  v7 = v4;
  rawBits = from._rawBits;
  v9 = (v5 & 0x1000000000000000) == 0 || (v4 & 0x800000000000000) != 0;
  v10 = from._rawBits & 0xC;
  v11 = 4 << v9;
  v12 = v3 >> 14;
  if ((from._rawBits & 2) == 0 || v10 == v11)
  {
    if (v10 == v11)
    {
      goto LABEL_93;
    }

    goto LABEL_10;
  }

  if (from._rawBits >> 14 < v2 >> 14 || v12 < from._rawBits >> 14)
  {
LABEL_78:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

LABEL_18:
  v19 = to._rawBits & 0xC;
  if ((to._rawBits & 2) == 0 || v19 == v11)
  {
    if (v19 == v11)
    {
      v63 = v2;
      v64 = v3;
      v65._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(to)._rawBits;
      v3 = v64;
      v2 = v63;
      to._rawBits = v65._rawBits;
    }

    v20 = v2 >> 14;
    if (to._rawBits >> 14 < v2 >> 14 || v12 < to._rawBits >> 14)
    {
      goto LABEL_78;
    }

    if (to._rawBits)
    {
      if ((v2 & 2) != 0)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v66 = to._rawBits;
      v67 = v2;
      v68 = v3;
      v69._rawBits = _StringGuts.scalarAlignSlow(_:)(to)._rawBits;
      v3 = v68;
      v2 = v67;
      to._rawBits = v66 & 0xC | v69._rawBits & 0xFFFFFFFFFFFFFFF3 | 1;
      if ((v67 & 2) != 0)
      {
LABEL_29:
        if ((to._rawBits & 2) != 0)
        {
          goto LABEL_33;
        }
      }
    }

    if (to._rawBits >> 14 != v20 && to._rawBits >> 14 != v12)
    {
      v21 = v2;
      v22 = v3;
      v23 = _StringGuts._slowRoundDownToNearestCharacter(_:in:)(to._rawBits, v2, v3, v7, v6);
      v3 = v22;
      v2 = v21;
      to._rawBits = v23;
    }

    goto LABEL_33;
  }

  if (to._rawBits >> 14 < v2 >> 14 || v12 < to._rawBits >> 14)
  {
    goto LABEL_78;
  }

LABEL_33:
  v24 = rawBits >> 14;
  v25 = to._rawBits >> 14;
  if (rawBits >> 14 < to._rawBits >> 14)
  {
    v11 = 0;
    v26 = v3 >> 16;
    v27 = HIBYTE(v6) & 0xF;
    v28 = v6 & 0xFFFFFFFFFFFFFFLL;
    v29 = (v6 & 0xFFFFFFFFFFFFFFFLL) + 32;
    if (((v6 >> 60) & ((v7 & 0x800000000000000) == 0)) != 0)
    {
      v30 = 8;
    }

    else
    {
      v30 = 4;
    }

    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
LABEL_92:
        __break(1u);
LABEL_93:
        v54._rawBits = rawBits;
        v55 = to._rawBits;
        v56 = v2;
        v57 = v3;
        v58._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(v54)._rawBits;
        to._rawBits = v55;
        v3 = v57;
        v2 = v56;
        rawBits = v58._rawBits;
LABEL_10:
        v13 = v2 >> 14;
        if (rawBits >> 14 < v2 >> 14 || v12 < rawBits >> 14)
        {
          goto LABEL_78;
        }

        if (rawBits)
        {
          if ((v2 & 2) != 0)
          {
            goto LABEL_14;
          }

LABEL_15:
          if (rawBits >> 14 != v13 && rawBits >> 14 != v12)
          {
            v14 = rawBits;
            v15 = to._rawBits;
            v16 = v2;
            v17 = v3;
            v18 = _StringGuts._slowRoundDownToNearestCharacter(_:in:)(v14, v2, v3, v7, v6);
            to._rawBits = v15;
            v3 = v17;
            v2 = v16;
            rawBits = v18;
          }
        }

        else
        {
          v59 = to._rawBits;
          v60 = v2;
          v61 = v3;
          v62._rawBits = _StringGuts.scalarAlignSlow(_:)(rawBits)._rawBits;
          to._rawBits = v59;
          v3 = v61;
          v2 = v60;
          rawBits = rawBits & 0xC | v62._rawBits & 0xFFFFFFFFFFFFFFF3 | 1;
          if ((v60 & 2) == 0)
          {
            goto LABEL_15;
          }

LABEL_14:
          if ((rawBits & 2) == 0)
          {
            goto LABEL_15;
          }
        }

        goto LABEL_18;
      }

      v31 = (rawBits >> 8) & 0x3F;
      v32 = rawBits >> 16;
      if (!v31)
      {
        break;
      }

LABEL_53:
      v35 = v31 + v32;
      if (v26 < v31 + v32)
      {
        v35 = v26;
      }

      v36 = v35 << 16;
      v37 = v35 & 0xFFFFFFFFFFFFLL;
      if ((v35 & 0xFFFFFFFFFFFFLL) != v26)
      {
        if ((v6 & 0x1000000000000000) != 0)
        {
          goto LABEL_75;
        }

        if ((v6 & 0x2000000000000000) != 0)
        {
          v79 = v7;
          v80 = v28;
          if (v37 + 1 != v27)
          {
            v40 = *(&v79 + v37);
LABEL_66:
            if (v40 == 2573 || (v40 & 0x8080) != 0)
            {
LABEL_75:
              v71 = v29;
              v75 = v27;
              v42 = v28;
              v38 = _StringGuts._opaqueComplexCharacterStride(startingAt:)(v37);
              v29 = v71;
              v27 = v75;
              v28 = v42;
              if (v38 > 63)
              {
                goto LABEL_73;
              }

              goto LABEL_72;
            }
          }
        }

        else
        {
          v39 = v29;
          to._rawBits = v7 & 0xFFFFFFFFFFFFLL;
          if ((v7 & 0x1000000000000000) == 0)
          {
            v70 = v37;
            v73 = v29;
            v77 = v27;
            v44 = v28;
            v45 = _StringObject.sharedUTF8.getter(v7, v6);
            v29 = v73;
            v27 = v77;
            v28 = v44;
            v39 = v45;
            v37 = v70;
          }

          if (v37 + 1 != to._rawBits)
          {
            if (!v39)
            {
LABEL_98:
              _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
            }

            v40 = *&v39[v37];
            goto LABEL_66;
          }
        }

        v38 = 1;
        goto LABEL_72;
      }

      v38 = 0;
LABEL_72:
      v36 |= v38 << 8;
LABEL_73:
      rawBits = v30 | v36;
      ++v11;
      if (v25 <= v36 >> 14)
      {
        return v12;
      }
    }

    if (v32 == v26)
    {
      v31 = 0;
      goto LABEL_53;
    }

    if ((v6 & 0x1000000000000000) == 0)
    {
      if ((v6 & 0x2000000000000000) == 0)
      {
        v33 = v29;
        to._rawBits = v7 & 0xFFFFFFFFFFFFLL;
        if ((v7 & 0x1000000000000000) == 0)
        {
          v74 = v29;
          v78 = v27;
          v46 = v28;
          v33 = _StringObject.sharedUTF8.getter(v7, v6);
          v29 = v74;
          v27 = v78;
          v28 = v46;
        }

        if (v32 + 1 == to._rawBits)
        {
LABEL_52:
          v31 = 1;
          goto LABEL_53;
        }

        if (!v33)
        {
          goto LABEL_98;
        }

        v34 = *&v33[v32];
        if (v34 == 2573)
        {
          goto LABEL_77;
        }

        goto LABEL_51;
      }

      v79 = v7;
      v80 = v28;
      if (v32 + 1 == v27)
      {
        goto LABEL_52;
      }

      v34 = *(&v79 + v32);
      if (v34 != 2573)
      {
LABEL_51:
        if ((v34 & 0x80808080) == 0)
        {
          goto LABEL_52;
        }
      }
    }

LABEL_77:
    v72 = v29;
    v76 = v27;
    v43 = v28;
    v31 = _StringGuts._opaqueComplexCharacterStride(startingAt:)(v32);
    v29 = v72;
    v27 = v76;
    v28 = v43;
    goto LABEL_53;
  }

  if (v25 >= v24)
  {
    return 0;
  }

  v12 = 0;
  v47 = v2 >> 14;
  v11 = v2 >> 16;
  if (((v6 >> 60) & ((v7 & 0x800000000000000) == 0)) != 0)
  {
    v48 = 8;
  }

  else
  {
    v48 = 4;
  }

  do
  {
    if (__OFSUB__(v12--, 1))
    {
      goto LABEL_92;
    }

    if (v24 == v47)
    {
      v50 = 0;
    }

    else
    {
      v49 = _StringGuts._opaqueCharacterStride(endingAt:in:)(rawBits >> 16, v11, v2, v7, v6);
      rawBits -= v49 << 16;
      v50 = v49 << 8;
      if (v49 > 63)
      {
        v50 = 0;
      }
    }

    v51 = rawBits & 0xFFFFFFFFFFFF0000 | v50;
    rawBits = v48 | v51;
    v24 = v51 >> 14;
  }

  while (v25 < v24);
  return v12;
}

uint64_t Substring.subscript.getter(Swift::UInt64 rawBits, unint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = (a5 & 0x1000000000000000) == 0 || (a4 & 0x800000000000000) != 0;
  v6 = rawBits & 0xC;
  v7 = 4 << v5;
  v8 = a3 >> 14;
  if ((rawBits & 1) == 0 || v6 == v7)
  {
    if (v6 == v7)
    {
      v36 = a2;
      v37 = a5;
      v40 = a3;
      v28 = a4;
      rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(rawBits)._rawBits;
      a2 = v36;
      a5 = v37;
      a3 = v40;
      a4 = v28;
    }

    if (rawBits >> 14 < a2 >> 14 || rawBits >> 14 >= v8)
    {
LABEL_27:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if ((rawBits & 1) == 0)
    {
      v41 = a3;
      v29 = a5;
      v30 = a4;
      rawBits = _StringGuts.scalarAlignSlow(_:)(rawBits)._rawBits;
      a3 = v41;
      a4 = v30;
      a5 = v29;
    }
  }

  else if (rawBits >> 14 < a2 >> 14 || rawBits >> 14 >= v8)
  {
    goto LABEL_27;
  }

  v9 = (rawBits >> 8) & 0x3F;
  v10 = rawBits >> 16;
  v11 = a3 >> 16;
  if (!v9)
  {
    if (v10 == v11)
    {
      v9 = 0;
      goto LABEL_18;
    }

    if ((a5 & 0x1000000000000000) != 0)
    {
LABEL_53:
      v34 = a4;
      v38 = a5;
      v33 = _StringGuts._opaqueComplexCharacterStride(startingAt:)(v10);
      a4 = v34;
      a5 = v38;
      v9 = v33;
      goto LABEL_18;
    }

    if ((a5 & 0x2000000000000000) != 0)
    {
      v42 = a4;
      v43 = a5 & 0xFFFFFFFFFFFFFFLL;
      v26 = v10 + 1;
      if (v10 + 1 != (HIBYTE(a5) & 0xF))
      {
        v27 = *(&v42 + v10);
        goto LABEL_41;
      }
    }

    else
    {
      if ((a4 & 0x1000000000000000) != 0)
      {
        v24 = ((a5 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v25 = a4 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v39 = a5;
        v35 = a4;
        v24 = _StringObject.sharedUTF8.getter(a4, a5);
        a4 = v35;
        a5 = v39;
      }

      v26 = v10 + 1;
      if (v10 + 1 != v25)
      {
        if (!v24)
        {
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v27 = *&v24[v10];
LABEL_41:
        if (v27 != 2573 && (v27 & 0x80808080) == 0)
        {
          goto LABEL_43;
        }

        goto LABEL_53;
      }
    }

LABEL_43:
    if (v11 >= v26)
    {
      v13 = v26;
    }

    else
    {
      v13 = v11;
    }

    if (v13 >= v10)
    {
LABEL_23:
      if ((a5 & 0x2000000000000000) != 0)
      {
        v42 = a4;
        v43 = a5 & 0xFFFFFFFFFFFFFFLL;
        if ((HIBYTE(a5) & 0xF) >= v13)
        {
          v18 = v13 - v10;
          if (v13 - v10 >= 0)
          {
            v22 = _allASCII(_:)((&v42 + v10), v13 - v10);
            v21 = &v42 + v10;
            v19 = v22;
            return specialized static String._uncheckedFromUTF8(_:isASCII:)(v21, v18, v19, v20);
          }
        }
      }

      else if ((a4 & 0x1000000000000000) != 0)
      {
        v14 = ((a5 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v15 = a4 & 0xFFFFFFFFFFFFLL;
        if (v15 >= v13)
        {
LABEL_26:
          v16 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v10, v13, v14, v15);
          v18 = v17;
          v19 = _allASCII(_:)(v16, v17);
          v21 = v16;
          return specialized static String._uncheckedFromUTF8(_:isASCII:)(v21, v18, v19, v20);
        }
      }

      else
      {
        v31 = v13;
        v14 = _StringObject.sharedUTF8.getter(a4, a5);
        v15 = v32;
        v13 = v31;
        if (v15 >= v31)
        {
          goto LABEL_26;
        }
      }

      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

LABEL_47:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

LABEL_18:
  v12 = v9 + v10;
  if (v11 >= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = v11;
  }

  if ((a5 & 0x1000000000000000) == 0)
  {
    if (v13 >= v10)
    {
      goto LABEL_23;
    }

    goto LABEL_47;
  }

  return _StringGuts.foreignErrorCorrectedGrapheme(startingAt:endingAt:)(v10, v13)._countAndFlagsBits;
}

void specialized Substring._replaceSubrange<A>(_:with:)(Swift::String::Index a1, Swift::String::Index a2, unint64_t a3, Swift::UInt64 a4, unint64_t a5, Swift::UInt64 a6)
{
  v7 = v6;
  v8 = a6;
  v9._rawBits = a2._rawBits;
  v10 = (v6 + 2);
  v11 = v6[3];
  v12._rawBits = *v6;
  v13 = v6[1];
  v234 = v6[2];
  LODWORD(v14) = (v11 & 0x1000000000000000) == 0 || (v234 & 0x800000000000000) != 0;
  v15 = a1._rawBits & 0xC;
  v16 = 4 << v14;
  v17 = a2._rawBits & 0xC;
  if ((a1._rawBits & 1) != 0 && v15 != v16 && (a2._rawBits & 1) != 0 && v17 != v16)
  {
    if (a1._rawBits >> 14 >= v12._rawBits >> 14 && v13 >> 14 >= a2._rawBits >> 14)
    {
      goto LABEL_18;
    }

LABEL_36:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v17 == v16)
  {
    rawBits = a1._rawBits;
    v227 = a3;
    v163 = a5;
    v164 = a4;
    v165._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(a2)._rawBits;
    a4 = v164;
    a5 = v163;
    v9._rawBits = v165._rawBits;
    a3 = v227;
    a1._rawBits = rawBits;
    v8 = a6;
    if (v15 != v16)
    {
      goto LABEL_13;
    }

LABEL_147:
    v228 = a3;
    v15 = a5;
    v166 = a4;
    a1._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(a1)._rawBits;
    a3 = v228;
    a4 = v166;
    a5 = v15;
    goto LABEL_13;
  }

  if (v15 == v16)
  {
    goto LABEL_147;
  }

LABEL_13:
  if (a1._rawBits >> 14 < v12._rawBits >> 14 || v9._rawBits >> 14 < a1._rawBits >> 14 || v13 >> 14 < v9._rawBits >> 14)
  {
    goto LABEL_36;
  }

  if ((v9._rawBits & 1) == 0)
  {
    goto LABEL_161;
  }

  if ((a1._rawBits & 1) == 0)
  {
    goto LABEL_162;
  }

LABEL_18:
  v223 = a4;
  v224 = a5;
  v226 = a3;
  if (!v14)
  {
    v182 = v12._rawBits;
    if ((v12._rawBits & 0xC) == 4)
    {
      v216 = a1._rawBits;
      v182 = _StringGuts._slowEnsureMatchingEncoding(_:)(v12)._rawBits;
      a1._rawBits = v216;
    }

    if ((v11 & 0x2000000000000000) != 0)
    {
      v11 = HIBYTE(v11) & 0xF;
    }

    else
    {
      v11 = v234 & 0xFFFFFFFFFFFFLL;
    }

    if (v11 < v182 >> 16)
    {
      goto LABEL_228;
    }

    v183 = a1._rawBits;
    startingAt = String.UTF8View._foreignDistance(from:to:)(15, v182);
    if ((v12._rawBits & 0xC) == 4)
    {
      v12._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(v12)._rawBits;
    }

    if ((v13 & 0xC) == 4)
    {
      v13 = _StringGuts._slowEnsureMatchingEncoding(_:)(v13)._rawBits;
      if (v11 < v12._rawBits >> 16)
      {
        goto LABEL_228;
      }
    }

    else if (v11 < v12._rawBits >> 16)
    {
      goto LABEL_228;
    }

    if (v11 < v13 >> 16)
    {
      goto LABEL_228;
    }

    v184 = v8;
    v185 = String.UTF8View._foreignDistance(from:to:)(v12, v13);
    v186 = v183;
    if ((v183 & 0xC) != 4)
    {
LABEL_175:
      v187 = v9._rawBits;
      if ((v9._rawBits & 0xC) == 4)
      {
        v187 = _StringGuts._slowEnsureMatchingEncoding(_:)(v9)._rawBits;
        if (v11 < v186 >> 16)
        {
          goto LABEL_228;
        }
      }

      else if (v11 < v186 >> 16)
      {
        goto LABEL_228;
      }

      if (v11 >= v187 >> 16)
      {
        v188 = String.UTF8View._foreignDistance(from:to:)(v186, v187);
        v189 = specialized _StringGuts.replaceSubrange<A>(_:with:)(v183, v9._rawBits, v226, v223, v224, v184);
        v191 = v190 - v189;
        if (__OFSUB__(v190, v189))
        {
          __break(1u);
        }

        else
        {
          v192 = __OFADD__(v185, v191);
          v193 = v185 + v191;
          if (!v192)
          {
            v184 = v193 - v188;
            if (!__OFSUB__(v193, v188))
            {
              if (v189 == v190)
              {
                v194 = 0;
                v195 = startingAt << 16;
                goto LABEL_215;
              }

              v211 = *(v7 + 16);
              v212 = *(v7 + 24);
              if ((v212 & 0x1000000000000000) != 0)
              {
                goto LABEL_233;
              }

              if ((v212 & 0x2000000000000000) != 0)
              {
                v241 = *(v7 + 16);
                v242 = v212 & 0xFFFFFFFFFFFFFFLL;
                if (startingAt + 1 == (HIBYTE(v212) & 0xF))
                {
LABEL_214:
                  v195 = startingAt << 16;
                  v194 = 1;
                  goto LABEL_215;
                }

                v215 = *(&v241 + startingAt);
                goto LABEL_212;
              }

              if ((v211 & 0x1000000000000000) != 0)
              {
                v213 = ((v212 & 0xFFFFFFFFFFFFFFFLL) + 32);
                v214 = v211 & 0xFFFFFFFFFFFFLL;
              }

              else
              {
                v213 = _StringObject.sharedUTF8.getter(*(v7 + 16), *(v7 + 24));
              }

              if (startingAt + 1 == v214)
              {
                goto LABEL_214;
              }

              if (v213)
              {
                v215 = *&v213[startingAt];
LABEL_212:
                if (v215 != 2573 && (v215 & 0x80808080) == 0)
                {
                  goto LABEL_214;
                }

LABEL_233:
                v194 = _StringGuts._opaqueComplexCharacterStride(startingAt:)(startingAt);
                v195 = startingAt << 16;
                if (v194 > 63)
                {
LABEL_216:
                  *v7 = v195 | 5;
                  if (_StringGuts.isOnGraphemeClusterBoundary(_:)((v195 | 5)))
                  {
                    *v7 = v195 | 7;
                  }

                  v19 = startingAt + v184;
                  if (__OFADD__(startingAt, v184))
                  {
                    __break(1u);
LABEL_221:
                    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
                  }

                  goto LABEL_138;
                }

LABEL_215:
                v195 |= v194 << 8;
                goto LABEL_216;
              }

LABEL_229:
              _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
            }

LABEL_232:
            __break(1u);
            goto LABEL_233;
          }
        }

        __break(1u);
        goto LABEL_232;
      }

LABEL_228:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

LABEL_226:
    v186 = _StringGuts._slowEnsureMatchingEncoding(_:)(v183)._rawBits;
    goto LABEL_175;
  }

  v18 = a1._rawBits;
  v221 = v9._rawBits >> 16;
  v222 = a1._rawBits >> 16;
  if ((v234 & ~v11 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v11 & 0xFFFFFFFFFFFFFFFLL))
  {
    v9._rawBits = v222;
    startingAt = v222;
    if ((v8 & 0x1000000000000000) == 0)
    {
      v19 = v226 >> 16;
      v20 = v223 >> 16;
      if ((v8 & 0x2000000000000000) != 0)
      {
        v241 = v224;
        v242 = v8 & 0xFFFFFFFFFFFFFFLL;
        if ((HIBYTE(v8) & 0xF) >= v20 && (v20 - v19) >= 0)
        {
          v31 = v222 + v20 - v19;
          v159 = v234 & 0xFFFFFFFFFFFFLL;
          if ((v11 & 0x2000000000000000) != 0)
          {
            v159 = HIBYTE(v11) & 0xF;
          }

          v11 = v221;
          v234 = v20 - v19;
          _StringGuts.reserveCapacity(_:)(v159 - v221 + v31);
          v10 = *(v7 + 24);
          v8 = v222;
          __StringStorage.replace(from:to:with:)(v222, v221, &v241 + v19, v234);
          v24 = *((v10 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
          *(v7 + 16) = v24;
          goto LABEL_107;
        }
      }

      else
      {
        if ((v224 & 0x1000000000000000) != 0)
        {
          v21 = ((v8 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v22 = v224 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v21 = _StringObject.sharedUTF8.getter(v224, v8);
          v22 = v207;
          v20 = v223 >> 16;
        }

        v8 = v222;
        if (v22 >= v20)
        {
          v23 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v19, v20, v21, v22);
          v25 = v222 + v24;
          if (__OFADD__(v222, v24))
          {
            __break(1u);
          }

          else
          {
            v26 = v23;
            v27 = v234 & 0xFFFFFFFFFFFFLL;
            if ((v11 & 0x2000000000000000) != 0)
            {
              v27 = HIBYTE(v11) & 0xF;
            }

            v11 = v221;
            v28 = v27 - v221;
            v220 = v222 + v24;
            if (!__OFADD__(v25, v28))
            {
              v29 = v24;
              _StringGuts.reserveCapacity(_:)(v25 + v28);
              v10 = *(v7 + 24);
              __StringStorage.replace(from:to:with:)(v222, v221, v26, v29);
              v24 = *((v10 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
              *(v7 + 16) = v24;
              v31 = v220;
              goto LABEL_107;
            }
          }

          __break(1u);
          goto LABEL_198;
        }
      }

LABEL_202:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v219 = v12._rawBits;
    v184 = v223;
    v241 = v226;
    v242 = v223;
    v243 = v224;
    v244 = v8;
    v245 = closure #3 in _StringGuts.replaceSubrange<A>(_:with:);
    v246 = 0;
    v185 = v8;
    v8;
    v183 = &v241;
    v196 = specialized FlattenSequence<>.startIndex.getter();
    v199 = specialized FlattenSequence<>.distance(from:to:)(v196, v198, v197 & 1, v223, 0, 1);
    v200 = v222 + v199;
    if (__OFADD__(v222, v199))
    {
      __break(1u);
    }

    else
    {
      v201 = v234 & 0xFFFFFFFFFFFFLL;
      if ((v11 & 0x2000000000000000) != 0)
      {
        v201 = HIBYTE(v11) & 0xF;
      }

      v202 = v201 - v221;
      v220 = v222 + v199;
      v203 = v200 + v202;
      if (!__OFADD__(v200, v202))
      {
        v204 = v199;
        if (v203 >= 16)
        {
          v205 = _StringGuts.uniqueNativeCapacity.getter();
          if ((v206 & 1) != 0 || v205 < v203)
          {
            _StringGuts.grow(_:)(v203);
          }
        }

        v10 = *(v7 + 24);
        *&v236 = v226;
        *(&v236 + 1) = v223;
        v237 = v224;
        v238 = v8;
        v239 = closure #3 in _StringGuts.replaceSubrange<A>(_:with:);
        v240 = 0;
        v8 = v222;
        v11 = v221;
        specialized __StringStorage.replace<A>(from:to:with:replacementCount:)(v222, v221, &v236, v204);
        v185;
        v24 = *((v10 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        *(v7 + 16) = v24;
        v12._rawBits = v219;
        v31 = v220;
        v9._rawBits = v222;
        goto LABEL_107;
      }
    }

    __break(1u);
    goto LABEL_226;
  }

  v32 = 0xE000000000000000;
  v241 = 0;
  v242 = 0xE000000000000000;
  v33 = _StringGuts.nativeCapacity.getter(v234, v11);
  v14 = 0;
  if ((v34 & 1) == 0)
  {
    v35 = v33;
    if (v33 >= 16)
    {
      v36 = _StringGuts.uniqueNativeCapacity.getter();
      if ((v37 & 1) != 0 || v36 < v35)
      {
        v39 = 2 * _StringGuts.uniqueNativeCapacity.getter();
        if (v39 <= v35)
        {
          v39 = v35;
        }

        if (v38)
        {
          v40 = v35;
        }

        else
        {
          v40 = v39;
        }

        v236 = 0uLL;
        v32 = specialized static __StringStorage.create(initializingFrom:codeUnitCapacity:isASCII:)(&v236, 0, v40, 1);
        v14 = *(v32 + 24);
        0xE000000000000000;
        v241 = v14;
        v242 = v32;
      }

      else
      {
        v14 = 0;
        v32 = 0xE000000000000000;
      }
    }
  }

  rawBits = v11;
  startingAt = v8;
  v217 = v13;
  v218 = v7;
  v219 = v12._rawBits;
  v41._rawBits = v18;
  v11 = specialized Collection.subscript.getter(v41, v234, v11);
  v8 = v43;
  v10 = v42;
  v7 = v43 >> 16;
  v220 = v11 >> 16;
  if ((v42 & 0x1000000000000000) != 0)
  {
    goto LABEL_149;
  }

  v13 = v30;
  v12._rawBits = v7 - (v11 >> 16);
  swift_bridgeObjectRetain_n(v42, 2);
  if ((v32 & 0x1000000000000000) != 0)
  {
LABEL_152:
    v172 = String.UTF8View._foreignCount()();
    v44 = v172 + v12._rawBits;
    if (__OFADD__(v172, v12._rawBits))
    {
      goto LABEL_154;
    }

    goto LABEL_50;
  }

  while (1)
  {
    if ((v32 & 0x2000000000000000) == 0)
    {
      v44 = (v14 & 0xFFFFFFFFFFFFLL) + v12._rawBits;
      if (__OFADD__(v14 & 0xFFFFFFFFFFFFLL, v12._rawBits))
      {
        goto LABEL_154;
      }

      goto LABEL_50;
    }

    v45 = HIBYTE(v32) & 0xF;
    v44 = v45 + v12._rawBits;
    if (__OFADD__(v45, v12._rawBits))
    {
LABEL_154:
      __break(1u);
LABEL_155:
      swift_bridgeObjectRetain_n(v10, 3);
      v173._rawBits = v8 & 0xFFFFFFFFFFFF0000 | 1;
      v174._rawBits = v11 & 0xFFFFFFFFFFFF0000 | 1;
      v175._rawBits = _StringGuts.validateScalarRange(_:)(v173, v174, v7, v10)._rawBits;
      if (v175._rawBits < 0x10000)
      {
        v175._rawBits |= 3;
      }

      v9._rawBits = String.UTF8View.distance(from:to:)(v175, v176);
      v10;
      a1._rawBits = v220;
      if ((v32 & 0x1000000000000000) != 0)
      {
        goto LABEL_158;
      }

      goto LABEL_85;
    }

LABEL_50:
    if ((v14 & ~v32 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v32 & 0xFFFFFFFFFFFFFFFLL))
    {
      v46 = _StringGuts.nativeUnusedCapacity.getter(v14, v32);
      if (v47)
      {
        goto LABEL_221;
      }

      if (v44 <= 15 && ((v32 & 0x2000000000000000) != 0 || v46 < v12._rawBits))
      {
LABEL_62:
        v10;
        v72 = _StringGuts._convertedToSmall()(v14, v32, v64, v65, v66, v67, v68, v69, v70, v71);
        v74 = v73;
        v10;
        v75._rawBits = v11 & 0xFFFFFFFFFFFF0000 | 1;
        v76._rawBits = v8 & 0xFFFFFFFFFFFF0000 | 1;
        v77._rawBits = _StringGuts.validateScalarRange(_:)(v75, v76, v13, v10)._rawBits;
        if (v77._rawBits < 0x10000)
        {
          v77._rawBits |= 3;
        }

        v79 = Substring.description.getter(v77._rawBits, v78._rawBits, v13, v10);
        v81 = v80;
        v10;
        v90 = _StringGuts._convertedToSmall()(v79, v81, v82, v83, v84, v85, v86, v87, v88, v89);
        v92 = v91;
        v81;
        v93 = HIBYTE(v74) & 0xF;
        v94 = HIBYTE(v92) & 0xF;
        v95 = v94 + v93;
        if (v94 + v93 >= 0x10)
        {
          goto LABEL_221;
        }

        v10;
        if (v94)
        {
          v96 = 0;
          v97 = 0;
          v98 = 8 * v93;
          do
          {
            v99 = v92 >> (v96 & 0x38);
            if (v97 < 8)
            {
              v99 = v90 >> v96;
            }

            v100 = (v99 << (v98 & 0x38)) | ((-255 << (v98 & 0x38)) - 1) & v74;
            v101 = (v99 << v98) | ((-255 << v98) - 1) & v72;
            if (v93 <= 7)
            {
              v72 = v101;
            }

            else
            {
              v74 = v100;
            }

            ++v93;
            v98 += 8;
            v96 += 8;
            ++v97;
          }

          while (8 * v94 != v96);
        }

        v32;
        v102 = 0xA000000000000000;
        if (!(v72 & 0x8080808080808080 | v74 & 0x80808080808080))
        {
          v102 = 0xE000000000000000;
        }

        v241 = v72;
        v242 = v102 & 0xFF00000000000000 | (v95 << 56) | v74 & 0xFFFFFFFFFFFFFFLL;
        goto LABEL_77;
      }
    }

    else if (v44 < 16)
    {
      goto LABEL_62;
    }

    _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v44, v12._rawBits);
    if ((v10 & 0x1000000000000000) != 0)
    {
      v10;
      _StringGuts._foreignAppendInPlace(_:)(v13, v10, v220, v7);
      v10;
LABEL_77:
      v48 = rawBits;
      v63 = startingAt;
      goto LABEL_78;
    }

    v48 = rawBits;
    if ((v10 & 0x2000000000000000) != 0)
    {
      v10;
      *&v236 = v13;
      *(&v236 + 1) = v10 & 0xFFFFFFFFFFFFFFLL;
      if ((HIBYTE(v10) & 0xF) < v7 || v7 - v220 < 0)
      {
        goto LABEL_202;
      }

      v161 = v242 & 0xFFFFFFFFFFFFFFFLL;
      v10;
      __StringStorage.appendInPlace(_:isASCII:)(&v236 + v220, v7 - v220, (v10 & 0x4000000000000000) != 0);
      v241 = *(v161 + 24);
      v63 = startingAt;
    }

    else
    {
      if ((v13 & 0x1000000000000000) != 0)
      {
        v49 = ((v10 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v50 = v13 & 0xFFFFFFFFFFFFLL;
        if ((v13 & 0xFFFFFFFFFFFFLL) < v7)
        {
          goto LABEL_202;
        }
      }

      else
      {
        v49 = _StringObject.sharedUTF8.getter(v13, v10);
        v50 = v209;
        if (v209 < v7)
        {
          goto LABEL_202;
        }
      }

      v51 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v220, v7, v49, v50);
      v53 = v52;
      v54 = v242 & 0xFFFFFFFFFFFFFFFLL;
      v10;
      __StringStorage.appendInPlace(_:isASCII:)(v51, v53, (v13 & 0x8000000000000000) != 0);
      v241 = *(v54 + 24);
      v10;
      v63 = startingAt;
    }

LABEL_78:
    v103 = v241 & 0xFFFFFFFFFFFFLL;
    if ((v242 & 0x2000000000000000) != 0)
    {
      v103 = HIBYTE(v242) & 0xF;
    }

    startingAt = v103;
    String.append(contentsOf:)(v226, v223, v224, v63, v55, v56, v57, v58, v59, v60, v61, v62);
    v14 = v241;
    v32 = v242;
    if ((v242 & 0x2000000000000000) != 0)
    {
      v104 = HIBYTE(v242) & 0xF;
    }

    else
    {
      v104 = v241 & 0xFFFFFFFFFFFFLL;
    }

    v8 = specialized Collection.subscript.getter(v9._rawBits, v234, v48);
    v11 = v106;
    v7 = v107;
    v10 = v105;
    v12._rawBits = v8 >> 16;
    v13 = v106 >> 16;
    v220 = v104;
    if ((v105 & 0x1000000000000000) != 0)
    {
      goto LABEL_155;
    }

    v9._rawBits = v13 - v12._rawBits;
    swift_bridgeObjectRetain_n(v105, 2);
    a1._rawBits = v104;
    if ((v32 & 0x1000000000000000) == 0)
    {
LABEL_85:
      v108 = a1._rawBits + v9._rawBits;
      if (!__OFADD__(a1._rawBits, v9._rawBits))
      {
        goto LABEL_86;
      }

LABEL_160:
      __break(1u);
LABEL_161:
      v229 = a3;
      rawBits = a1._rawBits;
      v177 = a5;
      v15 = a4;
      v178._rawBits = _StringGuts.scalarAlignSlow(_:)(v9)._rawBits;
      a4 = v15;
      a5 = v177;
      v179 = v178._rawBits;
      a3 = v229;
      a1._rawBits = rawBits;
      v9._rawBits = v9._rawBits & 0xC | v179 & 0xFFFFFFFFFFFFFFF3 | 1;
      if ((rawBits & 1) == 0)
      {
LABEL_162:
        v15 = a1._rawBits;
        v225 = a5;
        v230 = a3;
        v180 = a4;
        v181._rawBits = _StringGuts.scalarAlignSlow(_:)(a1)._rawBits;
        a5 = v225;
        a3 = v230;
        a4 = v180;
        a1._rawBits = v15 & 0xC | v181._rawBits & 0xFFFFFFFFFFFFFFF3 | 1;
      }

      goto LABEL_18;
    }

LABEL_158:
    a1._rawBits = String.UTF8View._foreignCount()();
    v108 = a1._rawBits + v9._rawBits;
    if (__OFADD__(a1._rawBits, v9._rawBits))
    {
      goto LABEL_160;
    }

LABEL_86:
    if ((v14 & ~v32 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v32 & 0xFFFFFFFFFFFFFFFLL))
    {
      v109 = _StringGuts.nativeUnusedCapacity.getter(v14, v32);
      if (v110)
      {
        goto LABEL_221;
      }

      v111 = (v32 >> 61) & 1;
      if (v109 < v9._rawBits)
      {
        LOBYTE(v111) = 1;
      }

      if (v108 <= 15 && (v111 & 1) != 0)
      {
LABEL_93:
        v10;
        v120 = _StringGuts._convertedToSmall()(v14, v32, v112, v113, v114, v115, v116, v117, v118, v119);
        v122 = v121;
        v10;
        v123._rawBits = v8 & 0xFFFFFFFFFFFF0000 | 1;
        v124._rawBits = v11 & 0xFFFFFFFFFFFF0000 | 1;
        v125._rawBits = _StringGuts.validateScalarRange(_:)(v123, v124, v7, v10)._rawBits;
        if (v125._rawBits < 0x10000)
        {
          v125._rawBits |= 3;
        }

        v127 = Substring.description.getter(v125._rawBits, v126._rawBits, v7, v10);
        v129 = v128;
        v10;
        v138 = _StringGuts._convertedToSmall()(v127, v129, v130, v131, v132, v133, v134, v135, v136, v137);
        v140 = v139;
        v129;
        v141 = specialized _SmallString.init(_:appending:)(v120, v122, v138, v140);
        v9._rawBits = v222;
        if (v143)
        {
          goto LABEL_221;
        }

        v144 = v141;
        v145 = v142;
        rawBits;
        v32;
        v10;
        v241 = v144;
        v242 = v145;
        goto LABEL_97;
      }
    }

    else if (v108 < 16)
    {
      goto LABEL_93;
    }

    _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v108, v9._rawBits);
    v8 = startingAt;
    if ((v10 & 0x1000000000000000) != 0)
    {
      v10;
      _StringGuts._foreignAppendInPlace(_:)(v7, v10, v12._rawBits, v13);
      rawBits;
      v10;
      v7 = v218;
      v12._rawBits = v219;
      v13 = v217;
      v9._rawBits = v222;
LABEL_105:
      v11 = v221;
      goto LABEL_106;
    }

    v9._rawBits = v222;
    if ((v10 & 0x2000000000000000) == 0)
    {
      if ((v7 & 0x1000000000000000) != 0)
      {
        v146 = ((v10 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v147 = v7 & 0xFFFFFFFFFFFFLL;
        if ((v7 & 0xFFFFFFFFFFFFLL) < v13)
        {
          goto LABEL_202;
        }
      }

      else
      {
        v146 = _StringObject.sharedUTF8.getter(v7, v10);
        v147 = v210;
        if (v210 < v13)
        {
          goto LABEL_202;
        }
      }

      v148 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v12._rawBits, v13, v146, v147);
      v150 = v149;
      v151 = v242 & 0xFFFFFFFFFFFFFFFLL;
      v10;
      __StringStorage.appendInPlace(_:isASCII:)(v148, v150, v7 < 0);
      v241 = *(v151 + 24);
      rawBits;
      v10;
      v7 = v218;
      v12._rawBits = v219;
      v13 = v217;
      goto LABEL_105;
    }

    v10;
    *&v236 = v7;
    *(&v236 + 1) = v10 & 0xFFFFFFFFFFFFFFLL;
    if ((HIBYTE(v10) & 0xF) < v13 || (v13 - v12._rawBits) < 0)
    {
      goto LABEL_202;
    }

    v162 = v242 & 0xFFFFFFFFFFFFFFFLL;
    v10;
    __StringStorage.appendInPlace(_:isASCII:)(&v236 + v12._rawBits, v13 - v12._rawBits, (v10 & 0x4000000000000000) != 0);
    v241 = *(v162 + 24);
    rawBits;
LABEL_97:
    v7 = v218;
    v12._rawBits = v219;
    v13 = v217;
    v11 = v221;
    v8 = startingAt;
LABEL_106:
    v31 = v220;
    v24 = v241;
    v10 = v242;
    *(v7 + 16) = v241;
    *(v7 + 24) = v10;
LABEL_107:
    v152 = v31 - v8;
    if (!__OFSUB__(v31, v8))
    {
      break;
    }

    __break(1u);
LABEL_149:
    v167 = v30;
    swift_bridgeObjectRetain_n(v10, 3);
    v168._rawBits = v11 & 0xFFFFFFFFFFFF0000 | 1;
    v169._rawBits = v8 & 0xFFFFFFFFFFFF0000 | 1;
    v170._rawBits = _StringGuts.validateScalarRange(_:)(v168, v169, v167, v10)._rawBits;
    if (v170._rawBits < 0x10000)
    {
      v170._rawBits |= 3;
    }

    v13 = v167;
    v12._rawBits = String.UTF8View.distance(from:to:)(v170, v171);
    v10;
    v14 = v241;
    v32 = v242;
    if ((v242 & 0x1000000000000000) != 0)
    {
      goto LABEL_152;
    }
  }

  v15 = v12._rawBits >> 16;
  v8 = v13 >> 16;
  v19 = v9._rawBits - v11 + v152 + (v13 >> 16);
  v153 = (v12._rawBits >> 8) & 0x3F;
  if (!v153)
  {
    if (v15 >= v9._rawBits)
    {
      goto LABEL_113;
    }

LABEL_110:
    if (v19 == v8)
    {
      return;
    }

LABEL_138:
    *(v7 + 8) = (v19 << 16) | 5;
    return;
  }

  if (v153 + v15 < v9._rawBits)
  {
    goto LABEL_110;
  }

LABEL_113:
  if (v15 == v19)
  {
    v154 = 0;
    v155 = v12._rawBits & 0xFFFFFFFFFFFF0000;
    goto LABEL_132;
  }

  if ((v10 & 0x1000000000000000) != 0)
  {
    goto LABEL_183;
  }

  if ((v10 & 0x2000000000000000) != 0)
  {
    v235[0] = v24;
    v235[1] = v10 & 0xFFFFFFFFFFFFFFLL;
    if (v15 + 1 != (HIBYTE(v10) & 0xF))
    {
      v158 = *(v235 + v15);
      goto LABEL_129;
    }

LABEL_131:
    v155 = v12._rawBits & 0xFFFFFFFFFFFF0000;
    v154 = 1;
    goto LABEL_132;
  }

  if ((v24 & 0x1000000000000000) != 0)
  {
    v156 = ((v10 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v157 = v24 & 0xFFFFFFFFFFFFLL;
    goto LABEL_119;
  }

LABEL_198:
  v156 = _StringObject.sharedUTF8.getter(v24, v10);
  v157 = v208;
LABEL_119:
  if (v15 + 1 == v157)
  {
    goto LABEL_131;
  }

  if (!v156)
  {
    goto LABEL_229;
  }

  v158 = *&v156[v15];
LABEL_129:
  if (v158 != 2573 && (v158 & 0x80808080) == 0)
  {
    goto LABEL_131;
  }

LABEL_183:
  v154 = _StringGuts._opaqueComplexCharacterStride(startingAt:)(v15);
  v155 = v12._rawBits & 0xFFFFFFFFFFFF0000;
  if (v154 <= 63)
  {
LABEL_132:
    v155 |= v154 << 8;
  }

  v160 = v155 | 5;
  if ((v12._rawBits & 2) != 0 && (v15 < v9._rawBits || _StringGuts.isOnGraphemeClusterBoundary(_:)((v155 | 5))))
  {
    v160 = v155 | 7;
  }

  *v7 = v160;
  if (v19 != v8)
  {
    goto LABEL_138;
  }
}

void specialized Substring._replaceSubrange<A>(_:with:)(Swift::String::Index a1, Swift::String::Index a2, unint64_t a3, unint64_t a4)
{
  v5 = v4;
  v6._rawBits = a2._rawBits;
  v7._rawBits = a1._rawBits;
  v9 = (v4 + 2);
  v8 = v4[2];
  v10 = v4[3];
  v11 = *v4;
  v12 = v4[1];
  LODWORD(v13) = (v10 & 0x1000000000000000) == 0 || (v8 & 0x800000000000000) != 0;
  v14 = a1._rawBits & 0xC;
  v15 = 4 << v13;
  v16 = a2._rawBits & 0xC;
  if ((a1._rawBits & 1) != 0 && v14 != v15 && (a2._rawBits & 1) != 0 && v16 != v15)
  {
    if (a1._rawBits >> 14 >= v11 >> 14 && v12 >> 14 >= a2._rawBits >> 14)
    {
      goto LABEL_19;
    }

LABEL_40:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v16 == v15)
  {
    v218 = v8;
    v166 = a3;
    v167._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(a2)._rawBits;
    a3 = v166;
    v6._rawBits = v167._rawBits;
    v8 = v218;
    if (v14 != v15)
    {
      goto LABEL_13;
    }
  }

  else if (v14 != v15)
  {
    goto LABEL_13;
  }

  v168 = v8;
  v169 = a3;
  v170._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(v7)._rawBits;
  a3 = v169;
  v7._rawBits = v170._rawBits;
  v8 = v168;
LABEL_13:
  if (v7._rawBits >> 14 < v11 >> 14 || v6._rawBits >> 14 < v7._rawBits >> 14 || v12 >> 14 < v6._rawBits >> 14)
  {
    goto LABEL_40;
  }

  v17 = v8;
  if ((v6._rawBits & 1) == 0)
  {
    goto LABEL_161;
  }

  if ((v7._rawBits & 1) == 0)
  {
    goto LABEL_162;
  }

LABEL_18:
  v8 = v17;
  while (1)
  {
LABEL_19:
    v213 = a3;
    v217 = v8;
    if (!v13)
    {
      rawBits = v11;
      if ((v11 & 0xC) == 4)
      {
        v206 = v8;
        rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(v11)._rawBits;
        v8 = v206;
      }

      if ((v10 & 0x2000000000000000) != 0)
      {
        v187 = HIBYTE(v10) & 0xF;
      }

      else
      {
        v187 = v8 & 0xFFFFFFFFFFFFLL;
      }

      if (v187 >= rawBits >> 16)
      {
        startingAta = String.UTF8View._foreignDistance(from:to:)(15, rawBits);
        if ((v11 & 0xC) == 4)
        {
          v11 = _StringGuts._slowEnsureMatchingEncoding(_:)(v11)._rawBits;
        }

        if ((v12 & 0xC) == 4)
        {
          v12 = _StringGuts._slowEnsureMatchingEncoding(_:)(v12)._rawBits;
          if (v187 < v11 >> 16)
          {
            goto LABEL_216;
          }
        }

        else if (v187 < v11 >> 16)
        {
          goto LABEL_216;
        }

        if (v187 < v12 >> 16)
        {
          goto LABEL_216;
        }

        v188 = String.UTF8View._foreignDistance(from:to:)(v11, v12);
        v189 = v7._rawBits;
        if ((v7._rawBits & 0xC) == 4)
        {
          v189 = _StringGuts._slowEnsureMatchingEncoding(_:)(v7)._rawBits;
        }

        v190 = v6._rawBits;
        if ((v6._rawBits & 0xC) == 4)
        {
          v190 = _StringGuts._slowEnsureMatchingEncoding(_:)(v6)._rawBits;
          if (v187 < v189 >> 16)
          {
            goto LABEL_216;
          }
        }

        else if (v187 < v189 >> 16)
        {
          goto LABEL_216;
        }

        if (v187 >= v190 >> 16)
        {
          v191 = String.UTF8View._foreignDistance(from:to:)(v189, v190);
          v192 = specialized _StringGuts.replaceSubrange<A>(_:with:)(v7._rawBits, v6._rawBits, v213, a4);
          v194 = v193 - v192;
          if (__OFSUB__(v193, v192))
          {
            __break(1u);
          }

          else
          {
            v36 = __OFADD__(v188, v194);
            v195 = v188 + v194;
            if (!v36)
            {
              v36 = __OFSUB__(v195, v191);
              v191 = v195 - v191;
              if (!v36)
              {
                if (v192 == v193)
                {
                  v196 = 0;
                  v197 = startingAta << 16;
                  goto LABEL_206;
                }

                v201 = *(v5 + 16);
                v202 = *(v5 + 24);
                if ((v202 & 0x1000000000000000) == 0)
                {
                  if ((v202 & 0x2000000000000000) != 0)
                  {
                    v219 = *(v5 + 16);
                    v220 = v202 & 0xFFFFFFFFFFFFFFLL;
                    if (startingAta + 1 == (HIBYTE(v202) & 0xF))
                    {
LABEL_205:
                      v197 = startingAta << 16;
                      v196 = 1;
                      goto LABEL_206;
                    }

                    v205 = *(&v219 + startingAta);
                  }

                  else
                  {
                    if ((v201 & 0x1000000000000000) != 0)
                    {
                      v203 = ((v202 & 0xFFFFFFFFFFFFFFFLL) + 32);
                      v204 = v201 & 0xFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v203 = _StringObject.sharedUTF8.getter(*(v5 + 16), *(v5 + 24));
                    }

                    if (startingAta + 1 == v204)
                    {
                      goto LABEL_205;
                    }

                    if (!v203)
                    {
                      goto LABEL_217;
                    }

                    v205 = *&v203[startingAta];
                  }

                  if (v205 != 2573 && (v205 & 0x80808080) == 0)
                  {
                    goto LABEL_205;
                  }
                }

LABEL_221:
                v196 = _StringGuts._opaqueComplexCharacterStride(startingAt:)(startingAta);
                v197 = startingAta << 16;
                if (v196 > 63)
                {
LABEL_207:
                  *v5 = v197 | 5;
                  if (_StringGuts.isOnGraphemeClusterBoundary(_:)((v197 | 5)))
                  {
                    *v5 = v197 | 7;
                  }

                  v36 = __OFADD__(startingAta, v191);
                  v158 = startingAta + v191;
                  if (v36)
                  {
                    __break(1u);
LABEL_212:
                    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
                  }

                  goto LABEL_144;
                }

LABEL_206:
                v197 |= v196 << 8;
                goto LABEL_207;
              }

LABEL_220:
              __break(1u);
              goto LABEL_221;
            }
          }

          __break(1u);
          goto LABEL_220;
        }
      }

LABEL_216:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    startingAt = v7._rawBits >> 16;
    v18 = v6._rawBits >> 16;
    v209 = v12;
    v210 = v11;
    v211 = v6._rawBits >> 16;
    if ((v8 & ~v10 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v10 & 0xFFFFFFFFFFFFFFFLL))
    {
      a4;
      v19 = specialized FlattenSequence<>.startIndex.getter(v213, a4, closure #3 in _StringGuts.replaceSubrange<A>(_:with:));
      v22 = specialized FlattenSequence<>.distance(from:to:)(v19, v21, v20 & 1, 1, 0, 1, v213, a4, closure #3 in _StringGuts.replaceSubrange<A>(_:with:));
      v23 = v7._rawBits >> 16;
      v24 = startingAt + v22;
      if (__OFADD__(startingAt, v22))
      {
        __break(1u);
LABEL_187:
        __break(1u);
LABEL_188:
        __break(1u);
LABEL_193:
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v25 = v217 & 0xFFFFFFFFFFFFLL;
      if ((v10 & 0x2000000000000000) != 0)
      {
        v25 = HIBYTE(v10) & 0xF;
      }

      v26 = v25 - v18;
      v27 = v24 + v26;
      if (__OFADD__(v24, v26))
      {
        goto LABEL_187;
      }

      v28 = v22;
      v6._rawBits = startingAt + v22;
      if (v27 >= 16)
      {
        v29 = _StringGuts.uniqueNativeCapacity.getter();
        v23 = v7._rawBits >> 16;
        if ((v30 & 1) != 0 || v29 < v27)
        {
          _StringGuts.grow(_:)(v27);
          v23 = v7._rawBits >> 16;
        }
      }

      v7._rawBits = *(v5 + 24);
      v13 = v7._rawBits & 0xFFFFFFFFFFFFFFFLL;
      v31 = (v7._rawBits & 0xFFFFFFFFFFFFFFFLL) + 32;
      v11 = v31 + v23;
      v32 = v18;
      v33 = (*((v7._rawBits & 0xFFFFFFFFFFFFFFFLL) + 0x18) & 0xFFFFFFFFFFFFLL) - v18;
      specialized UnsafeMutablePointer.moveInitialize(from:count:)((v31 + v32), v33, (v11 + v28));
      v10 = *((v7._rawBits & 0xFFFFFFFFFFFFFFFLL) + 0x18) >> 63;
      v219 = v213;
      v220 = a4;
      v221 = closure #3 in _StringGuts.replaceSubrange<A>(_:with:);
      v222 = 0u;
      v223 = 0u;
      a4;
      v34 = 0;
      while (1)
      {
        v35 = specialized FlattenSequence.Iterator.next()();
        if ((v35 & 0x100) != 0)
        {
          break;
        }

        v10 = ((v35 & 0x80u) == 0) & v10;
        *(v11 + v34) = v35;
        v36 = __OFADD__(v34++, 1);
        if (v36)
        {
          __break(1u);
          goto LABEL_35;
        }
      }

      v220;
      v222;
      v223;
      if (__OFADD__(v6._rawBits, v33))
      {
        goto LABEL_188;
      }

      __StringStorage._updateCountAndFlags(newCount:newIsASCII:)(v6._rawBits + v33, v10 & 1);
      a4;
      v44 = *((v7._rawBits & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      *v9 = v44;
      v45 = startingAt;
      v46 = startingAt;
      v48 = v210;
      v47 = v211;
      goto LABEL_118;
    }

LABEL_35:
    v37 = 0xE000000000000000;
    v219 = 0;
    v220 = 0xE000000000000000;
    v38 = _StringGuts.nativeCapacity.getter(v217, v10);
    v17 = 0;
    if ((v39 & 1) == 0)
    {
      v40 = v38;
      if (v38 >= 16)
      {
        v41 = _StringGuts.uniqueNativeCapacity.getter();
        if ((v42 & 1) != 0 || v41 < v40)
        {
          v50 = 2 * _StringGuts.uniqueNativeCapacity.getter();
          if (v50 <= v40)
          {
            v50 = v40;
          }

          if (v49)
          {
            v51 = v40;
          }

          else
          {
            v51 = v50;
          }

          v224 = 0;
          v225 = 0;
          v37 = specialized static __StringStorage.create(initializingFrom:codeUnitCapacity:isASCII:)(&v224, 0, v51, 1);
          v17 = *(v37 + 24);
          0xE000000000000000;
          v219 = v17;
          v220 = v37;
        }

        else
        {
          v17 = 0;
          v37 = 0xE000000000000000;
        }
      }
    }

    v52._rawBits = v7._rawBits;
    v212 = v10;
    v13 = specialized Collection.subscript.getter(v52, v217, v10);
    v10 = v54;
    v7._rawBits = v53;
    v11 = v54 >> 16;
    v207 = v13 >> 16;
    if ((v53 & 0x1000000000000000) != 0)
    {
      goto LABEL_149;
    }

    v12 = v43;
    v55 = v11 - (v13 >> 16);
    swift_bridgeObjectRetain_n(v53, 2);
    v208 = v5;
    if ((v37 & 0x1000000000000000) != 0)
    {
LABEL_152:
      v176 = String.UTF8View._foreignCount()();
      v5 = v176 + v55;
      if (__OFADD__(v176, v55))
      {
        goto LABEL_154;
      }

      goto LABEL_56;
    }

LABEL_51:
    if ((v37 & 0x2000000000000000) == 0)
    {
      v5 = (v17 & 0xFFFFFFFFFFFFLL) + v55;
      if (__OFADD__(v17 & 0xFFFFFFFFFFFFLL, v55))
      {
        goto LABEL_154;
      }

      goto LABEL_56;
    }

    v56 = HIBYTE(v37) & 0xF;
    v5 = v56 + v55;
    if (__OFADD__(v56, v55))
    {
LABEL_154:
      __break(1u);
LABEL_155:
      swift_bridgeObjectRetain_n(v7._rawBits, 3);
      v177._rawBits = v17 & 0xFFFFFFFFFFFF0000 | 1;
      v178._rawBits = v10 & 0xFFFFFFFFFFFF0000 | 1;
      v179._rawBits = _StringGuts.validateScalarRange(_:)(v177, v178, v11, v7._rawBits)._rawBits;
      if (v179._rawBits < 0x10000)
      {
        v179._rawBits |= 3;
      }

      v6._rawBits = String.UTF8View.distance(from:to:)(v179, v180);
      v7._rawBits;
      v116 = a4;
      if ((v37 & 0x1000000000000000) != 0)
      {
        break;
      }

      goto LABEL_94;
    }

LABEL_56:
    if ((v17 & ~v37 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v37 & 0xFFFFFFFFFFFFFFFLL))
    {
      v57 = _StringGuts.nativeUnusedCapacity.getter(v17, v37);
      if (v58)
      {
        goto LABEL_212;
      }

      if (v5 > 15 || (v37 & 0x2000000000000000) == 0 && v57 >= v55)
      {
LABEL_62:
        _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v5, v55);
        if ((v7._rawBits & 0x1000000000000000) != 0)
        {
          v7._rawBits;
          _StringGuts._foreignAppendInPlace(_:)(v12, v7._rawBits, v207, v11);
          v7._rawBits;
          v59 = v212;
        }

        else
        {
          v59 = v212;
          if ((v7._rawBits & 0x2000000000000000) != 0)
          {
            v7._rawBits;
            v224 = v12;
            v225 = v7._rawBits & 0xFFFFFFFFFFFFFFLL;
            if ((HIBYTE(v7._rawBits) & 0xF) < v11 || (v11 - v207) < 0)
            {
              goto LABEL_193;
            }

            closure #1 in _StringGuts.append(_:)(&v224 + v207, v11 - v207, &v219, (v7._rawBits & 0x4000000000000000) != 0);
            v7._rawBits;
          }

          else
          {
            if ((v12 & 0x1000000000000000) != 0)
            {
              v60 = ((v7._rawBits & 0xFFFFFFFFFFFFFFFLL) + 32);
              v61 = v12 & 0xFFFFFFFFFFFFLL;
            }

            else
            {
              v60 = _StringObject.sharedUTF8.getter(v12, v7._rawBits);
              v61 = v199;
            }

            if (v61 < v11)
            {
              goto LABEL_193;
            }

            v62 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v207, v11, v60, v61);
            closure #1 in _StringGuts.append(_:)(v62, v63, &v219, (v12 & 0x8000000000000000) != 0);
            swift_bridgeObjectRelease_n(v7._rawBits, 2);
          }
        }

        goto LABEL_87;
      }
    }

    else if (v5 >= 16)
    {
      goto LABEL_62;
    }

    v7._rawBits;
    v80 = _StringGuts._convertedToSmall()(v17, v37, v72, v73, v74, v75, v76, v77, v78, v79);
    v82 = v81;
    v7._rawBits;
    v83._rawBits = v13 & 0xFFFFFFFFFFFF0000 | 1;
    v84._rawBits = v10 & 0xFFFFFFFFFFFF0000 | 1;
    v85._rawBits = _StringGuts.validateScalarRange(_:)(v83, v84, v12, v7._rawBits)._rawBits;
    if (v85._rawBits < 0x10000)
    {
      v85._rawBits |= 3;
    }

    v87 = Substring.description.getter(v85._rawBits, v86._rawBits, v12, v7._rawBits);
    v89 = v88;
    v7._rawBits;
    v98 = _StringGuts._convertedToSmall()(v87, v89, v90, v91, v92, v93, v94, v95, v96, v97);
    v100 = v99;
    v89;
    v101 = HIBYTE(v82) & 0xF;
    v102 = HIBYTE(v100) & 0xF;
    v103 = v102 + v101;
    if (v102 + v101 >= 0x10)
    {
      goto LABEL_212;
    }

    v7._rawBits;
    if (v102)
    {
      v104 = 0;
      v105 = 0;
      v106 = 8 * v101;
      do
      {
        v107 = v100 >> (v104 & 0x38);
        if (v105 < 8)
        {
          v107 = v98 >> v104;
        }

        v108 = (v107 << (v106 & 0x38)) | ((-255 << (v106 & 0x38)) - 1) & v82;
        v109 = (v107 << v106) | ((-255 << v106) - 1) & v80;
        if (v101 <= 7)
        {
          v80 = v109;
        }

        else
        {
          v82 = v108;
        }

        ++v101;
        v106 += 8;
        v104 += 8;
        ++v105;
      }

      while (8 * v102 != v104);
    }

    v37;
    v110 = 0xA000000000000000;
    if (!(v80 & 0x8080808080808080 | v82 & 0x80808080808080))
    {
      v110 = 0xE000000000000000;
    }

    v219 = v80;
    v220 = v110 & 0xFF00000000000000 | (v103 << 56) | v82 & 0xFFFFFFFFFFFFFFLL;
    v59 = v212;
LABEL_87:
    v111 = v219 & 0xFFFFFFFFFFFFLL;
    if ((v220 & 0x2000000000000000) != 0)
    {
      v111 = HIBYTE(v220) & 0xF;
    }

    v207 = v111;
    specialized String.append<A>(contentsOf:)(v213, a4, v64, v65, v66, v67, v68, v69, v70, v71);
    v13 = v219;
    v37 = v220;
    if ((v220 & 0x2000000000000000) != 0)
    {
      v112 = HIBYTE(v220) & 0xF;
    }

    else
    {
      v112 = v219 & 0xFFFFFFFFFFFFLL;
    }

    v17 = specialized Collection.subscript.getter(v6._rawBits, v217, v59);
    v10 = v114;
    v11 = v115;
    v7._rawBits = v113;
    v12 = v17 >> 16;
    v5 = v114 >> 16;
    a4 = v112;
    if ((v113 & 0x1000000000000000) != 0)
    {
      goto LABEL_155;
    }

    v6._rawBits = v5 - v12;
    swift_bridgeObjectRetain_n(v113, 2);
    v116 = v112;
    if ((v37 & 0x1000000000000000) != 0)
    {
      break;
    }

LABEL_94:
    v9 = v116 + v6._rawBits;
    if (!__OFADD__(v116, v6._rawBits))
    {
      goto LABEL_95;
    }

LABEL_160:
    __break(1u);
LABEL_161:
    v182 = a3;
    v183._rawBits = _StringGuts.scalarAlignSlow(_:)(v6)._rawBits;
    a3 = v182;
    v6._rawBits = v6._rawBits & 0xC | v183._rawBits & 0xFFFFFFFFFFFFFFF3 | 1;
    if (v7._rawBits)
    {
      goto LABEL_18;
    }

LABEL_162:
    v184 = a3;
    v185._rawBits = _StringGuts.scalarAlignSlow(_:)(v7)._rawBits;
    a3 = v184;
    v8 = v17;
    v7._rawBits = v7._rawBits & 0xC | v185._rawBits & 0xFFFFFFFFFFFFFFF3 | 1;
  }

  v181 = String.UTF8View._foreignCount()();
  v9 = v181 + v6._rawBits;
  if (__OFADD__(v181, v6._rawBits))
  {
    goto LABEL_160;
  }

LABEL_95:
  if ((v13 & ~v37 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v37 & 0xFFFFFFFFFFFFFFFLL))
  {
    v117 = _StringGuts.nativeUnusedCapacity.getter(v13, v37);
    if (v118)
    {
      goto LABEL_212;
    }

    v119 = (v37 >> 61) & 1;
    if (v117 < v6._rawBits)
    {
      LOBYTE(v119) = 1;
    }

    if (v9 <= 15 && (v119 & 1) != 0)
    {
LABEL_102:
      v7._rawBits;
      v128 = _StringGuts._convertedToSmall()(v13, v37, v120, v121, v122, v123, v124, v125, v126, v127);
      v130 = v129;
      v7._rawBits;
      v131._rawBits = v17 & 0xFFFFFFFFFFFF0000 | 1;
      v132._rawBits = v10 & 0xFFFFFFFFFFFF0000 | 1;
      v133._rawBits = _StringGuts.validateScalarRange(_:)(v131, v132, v11, v7._rawBits)._rawBits;
      if (v133._rawBits < 0x10000)
      {
        v133._rawBits |= 3;
      }

      v135 = Substring.description.getter(v133._rawBits, v134._rawBits, v11, v7._rawBits);
      v10 = v136;
      v7._rawBits;
      v145 = _StringGuts._convertedToSmall()(v135, v10, v137, v138, v139, v140, v141, v142, v143, v144);
      v11 = v146;
      v10;
      v147 = specialized _SmallString.init(_:appending:)(v128, v130, v145, v11);
      v6._rawBits = a4;
      if (v149)
      {
        goto LABEL_212;
      }

      v13 = v147;
      v150 = v148;
      v212;
      v37;
      v7._rawBits;
      v219 = v13;
      v220 = v150;
      v5 = v208;
      v48 = v210;
      v47 = v211;
      goto LABEL_117;
    }
  }

  else if (v9 < 16)
  {
    goto LABEL_102;
  }

  _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v9, v6._rawBits);
  if ((v7._rawBits & 0x1000000000000000) != 0)
  {
    v7._rawBits;
    _StringGuts._foreignAppendInPlace(_:)(v11, v7._rawBits, v12, v5);
    v212;
    v7._rawBits;
    v5 = v208;
    v48 = v210;
    v47 = v211;
    v6._rawBits = a4;
  }

  else
  {
    v47 = v211;
    v13 = v212;
    v6._rawBits = a4;
    if ((v7._rawBits & 0x2000000000000000) != 0)
    {
      v7._rawBits;
      v224 = v11;
      v225 = v7._rawBits & 0xFFFFFFFFFFFFFFLL;
      if ((HIBYTE(v7._rawBits) & 0xF) < v5 || (v5 - v12) < 0)
      {
        goto LABEL_193;
      }

      closure #1 in _StringGuts.append(_:)(&v224 + v12, v5 - v12, &v219, (v7._rawBits & 0x4000000000000000) != 0);
      v212;
      v7._rawBits;
    }

    else
    {
      if ((v11 & 0x1000000000000000) != 0)
      {
        v151 = ((v7._rawBits & 0xFFFFFFFFFFFFFFFLL) + 32);
        v152 = v11 & 0xFFFFFFFFFFFFLL;
        if ((v11 & 0xFFFFFFFFFFFFLL) < v5)
        {
          goto LABEL_193;
        }
      }

      else
      {
        v151 = _StringObject.sharedUTF8.getter(v11, v7._rawBits);
        v152 = v200;
        if (v200 < v5)
        {
          goto LABEL_193;
        }
      }

      v153 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v12, v5, v151, v152);
      closure #1 in _StringGuts.append(_:)(v153, v154, &v219, (v11 & 0x8000000000000000) != 0);
      v212;
      swift_bridgeObjectRelease_n(v7._rawBits, 2);
    }

    v5 = v208;
    v48 = v210;
  }

LABEL_117:
  v44 = v219;
  v7._rawBits = v220;
  *(v5 + 16) = v219;
  *(v5 + 24) = v7;
  v45 = startingAt;
  v46 = v207;
LABEL_118:
  v36 = __OFSUB__(v6._rawBits, v46);
  v155 = v6._rawBits - v46;
  if (v36)
  {
    __break(1u);
LABEL_149:
    v171 = v43;
    swift_bridgeObjectRetain_n(v7._rawBits, 3);
    v172._rawBits = v13 & 0xFFFFFFFFFFFF0000 | 1;
    v173._rawBits = v10 & 0xFFFFFFFFFFFF0000 | 1;
    v174._rawBits = _StringGuts.validateScalarRange(_:)(v172, v173, v171, v7._rawBits)._rawBits;
    if (v174._rawBits < 0x10000)
    {
      v174._rawBits |= 3;
    }

    v12 = v171;
    v55 = String.UTF8View.distance(from:to:)(v174, v175);
    v7._rawBits;
    v17 = v219;
    v37 = v220;
    v208 = v5;
    if ((v220 & 0x1000000000000000) != 0)
    {
      goto LABEL_152;
    }

    goto LABEL_51;
  }

  v156 = v48 >> 16;
  v157 = v209 >> 16;
  v158 = v45 - v47 + (v209 >> 16) + v155;
  v159 = (v48 >> 8) & 0x3F;
  if (!v159)
  {
    if (v156 >= v45)
    {
      goto LABEL_124;
    }

LABEL_121:
    if (v158 == v157)
    {
      return;
    }

LABEL_144:
    *(v5 + 8) = (v158 << 16) | 5;
    return;
  }

  if (v159 + v156 < v45)
  {
    goto LABEL_121;
  }

LABEL_124:
  if (v156 == v158)
  {
    v160 = 0;
    v161 = v48 & 0xFFFFFFFFFFFF0000;
    goto LABEL_138;
  }

  if ((v7._rawBits & 0x1000000000000000) != 0)
  {
    goto LABEL_184;
  }

  if ((v7._rawBits & 0x2000000000000000) != 0)
  {
    v219 = v44;
    v220 = v7._rawBits & 0xFFFFFFFFFFFFFFLL;
    if (v156 + 1 != (HIBYTE(v7._rawBits) & 0xF))
    {
      v164 = *(&v219 + v156);
      goto LABEL_135;
    }

LABEL_137:
    v161 = v48 & 0xFFFFFFFFFFFF0000;
    v160 = 1;
LABEL_138:
    v161 |= v160 << 8;
    goto LABEL_139;
  }

  if ((v44 & 0x1000000000000000) != 0)
  {
    v162 = ((v7._rawBits & 0xFFFFFFFFFFFFFFFLL) + 32);
    v163 = v44 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v162 = _StringObject.sharedUTF8.getter(v44, v7._rawBits);
    v45 = startingAt;
    v163 = v198;
  }

  if (v156 + 1 == v163)
  {
    goto LABEL_137;
  }

  if (!v162)
  {
LABEL_217:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v164 = *&v162[v156];
LABEL_135:
  if (v164 != 2573 && (v164 & 0x80808080) == 0)
  {
    goto LABEL_137;
  }

LABEL_184:
  v160 = _StringGuts._opaqueComplexCharacterStride(startingAt:)(v48 >> 16);
  v45 = startingAt;
  v161 = v48 & 0xFFFFFFFFFFFF0000;
  if (v160 <= 63)
  {
    goto LABEL_138;
  }

LABEL_139:
  v165 = v161 | 5;
  if ((v48 & 2) != 0 && (v156 < v45 || _StringGuts.isOnGraphemeClusterBoundary(_:)((v161 | 5))))
  {
    v165 = v161 | 7;
  }

  *v5 = v165;
  if (v158 != v157)
  {
    goto LABEL_144;
  }
}

void specialized Substring._replaceSubrange<A>(_:with:)(Swift::String::Index a1, Swift::String::Index a2)
{
  v3 = v2;
  v4._rawBits = a2._rawBits;
  v6 = (v2 + 2);
  v5 = v2[2];
  v7 = v2[3];
  v9 = *v2;
  v8 = v2[1];
  LODWORD(v10) = (v7 & 0x1000000000000000) == 0 || (v5 & 0x800000000000000) != 0;
  v11 = a1._rawBits & 0xC;
  v12 = 4 << v10;
  v13 = a2._rawBits & 0xC;
  if ((a1._rawBits & 1) != 0 && v11 != v12 && (a2._rawBits & 1) != 0 && v13 != v12)
  {
    if (a1._rawBits >> 14 < v9 >> 14 || v8 >> 14 < a2._rawBits >> 14)
    {
      goto LABEL_37;
    }

    goto LABEL_18;
  }

  if (v13 == v12)
  {
    fromb._rawBits = a1._rawBits;
    v4._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(a2)._rawBits;
    a1._rawBits = fromb._rawBits;
    if (v11 != v12)
    {
      goto LABEL_13;
    }
  }

  else if (v11 != v12)
  {
    goto LABEL_13;
  }

  a1._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(a1)._rawBits;
LABEL_13:
  if (a1._rawBits >> 14 < v9 >> 14 || v4._rawBits >> 14 < a1._rawBits >> 14 || v8 >> 14 < v4._rawBits >> 14)
  {
LABEL_37:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if ((v4._rawBits & 1) == 0)
  {
    goto LABEL_157;
  }

  if ((a1._rawBits & 1) == 0)
  {
    goto LABEL_158;
  }

LABEL_18:
  if (!v10)
  {
LABEL_159:
    v154 = v9;
    if ((v9 & 0xC) == 4)
    {
      rawBits = a1._rawBits;
      v154 = _StringGuts._slowEnsureMatchingEncoding(_:)(v9)._rawBits;
      a1._rawBits = rawBits;
    }

    froma = a1._rawBits;
    if ((v7 & 0x2000000000000000) != 0)
    {
      v155 = HIBYTE(v7) & 0xF;
    }

    else
    {
      v155 = v5 & 0xFFFFFFFFFFFFLL;
    }

    if (v155 >= v154 >> 16)
    {
      v156 = String.UTF8View._foreignDistance(from:to:)(15, v154);
      if ((v9 & 0xC) == 4)
      {
        v9 = _StringGuts._slowEnsureMatchingEncoding(_:)(v9)._rawBits;
      }

      if ((v8 & 0xC) == 4)
      {
        v8 = _StringGuts._slowEnsureMatchingEncoding(_:)(v8)._rawBits;
        if (v155 < v9 >> 16)
        {
          goto LABEL_212;
        }
      }

      else if (v155 < v9 >> 16)
      {
        goto LABEL_212;
      }

      if (v155 < v8 >> 16)
      {
        goto LABEL_212;
      }

      startingAta = v156;
      v157 = String.UTF8View._foreignDistance(from:to:)(v9, v8);
      v158 = froma;
      if ((froma & 0xC) == 4)
      {
        v158 = _StringGuts._slowEnsureMatchingEncoding(_:)(froma)._rawBits;
      }

      v159 = v4._rawBits;
      if ((v4._rawBits & 0xC) == 4)
      {
        v159 = _StringGuts._slowEnsureMatchingEncoding(_:)(v4)._rawBits;
        if (v155 < v158 >> 16)
        {
          goto LABEL_212;
        }
      }

      else if (v155 < v158 >> 16)
      {
        goto LABEL_212;
      }

      if (v155 >= v159 >> 16)
      {
        v160 = String.UTF8View._foreignDistance(from:to:)(v158, v159);
        v161 = specialized _StringGuts.replaceSubrange<A>(_:with:)(froma, v4._rawBits);
        v163 = v162 - v161;
        if (__OFSUB__(v162, v161))
        {
          __break(1u);
        }

        else
        {
          v23 = __OFADD__(v157, v163);
          v164 = v157 + v163;
          if (!v23)
          {
            v23 = __OFSUB__(v164, v160);
            v160 = v164 - v160;
            if (!v23)
            {
              if (v161 == v162)
              {
                v165 = 0;
                v166 = startingAta << 16;
                goto LABEL_199;
              }

              v170 = *(v3 + 16);
              v171 = *(v3 + 24);
              if ((v171 & 0x1000000000000000) == 0)
              {
                if ((v171 & 0x2000000000000000) != 0)
                {
                  v187 = *(v3 + 16);
                  *&v188 = v171 & 0xFFFFFFFFFFFFFFLL;
                  if (startingAta + 1 == (HIBYTE(v171) & 0xF))
                  {
LABEL_198:
                    v166 = startingAta << 16;
                    v165 = 1;
                    goto LABEL_199;
                  }

                  v174 = *(&v187 + startingAta);
                }

                else
                {
                  if ((v170 & 0x1000000000000000) != 0)
                  {
                    v172 = ((v171 & 0xFFFFFFFFFFFFFFFLL) + 32);
                    v173 = v170 & 0xFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v172 = _StringObject.sharedUTF8.getter(*(v3 + 16), *(v3 + 24));
                  }

                  if (startingAta + 1 == v173)
                  {
                    goto LABEL_198;
                  }

                  if (!v172)
                  {
                    goto LABEL_213;
                  }

                  v174 = *&v172[startingAta];
                }

                if (v174 != 2573 && (v174 & 0x80808080) == 0)
                {
                  goto LABEL_198;
                }
              }

LABEL_217:
              v165 = _StringGuts._opaqueComplexCharacterStride(startingAt:)(startingAta);
              v166 = startingAta << 16;
              if (v165 > 63)
              {
LABEL_200:
                *v3 = v166 | 5;
                if (_StringGuts.isOnGraphemeClusterBoundary(_:)((v166 | 5)))
                {
                  *v3 = v166 | 7;
                }

                v134 = startingAta + v160;
                if (__OFADD__(startingAta, v160))
                {
                  __break(1u);
LABEL_205:
                  __break(1u);
LABEL_206:
                  __break(1u);
LABEL_207:
                  __break(1u);
                  goto LABEL_208;
                }

                goto LABEL_138;
              }

LABEL_199:
              v166 |= v165 << 8;
              goto LABEL_200;
            }

LABEL_216:
            __break(1u);
            goto LABEL_217;
          }
        }

        __break(1u);
        goto LABEL_216;
      }
    }

LABEL_212:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  while (1)
  {
    v14 = a1._rawBits;
    v184 = v4._rawBits >> 16;
    startingAt = a1._rawBits >> 16;
    v179 = v8;
    if ((v5 & ~v7 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v7 & 0xFFFFFFFFFFFFFFFLL))
    {
      break;
    }

LABEL_32:
    v10 = 0xE000000000000000;
    v187 = 0;
    *&v188 = 0xE000000000000000;
    v183 = v5;
    v24 = _StringGuts.nativeCapacity.getter(v5, v7);
    v25 = 0;
    if ((v26 & 1) == 0)
    {
      v27 = v24;
      if (v24 >= 16)
      {
        v28 = _StringGuts.uniqueNativeCapacity.getter();
        if ((v29 & 1) != 0 || v28 < v27)
        {
          v34 = 2 * _StringGuts.uniqueNativeCapacity.getter();
          if (v34 <= v27)
          {
            v34 = v27;
          }

          if (v33)
          {
            v35 = v27;
          }

          else
          {
            v35 = v34;
          }

          v190 = 0;
          v191 = 0;
          v10 = specialized static __StringStorage.create(initializingFrom:codeUnitCapacity:isASCII:)(&v190, 0, v35, 1);
          v25 = *(v10 + 24);
          0xE000000000000000;
          v187 = v25;
          *&v188 = v10;
        }

        else
        {
          v25 = 0;
          v10 = 0xE000000000000000;
        }
      }
    }

    v177 = v3;
    v178 = v9;
    v36._rawBits = v14;
    from = v7;
    v39 = specialized Collection.subscript.getter(v36, v183, v7);
    v41 = v40;
    v6 = v38;
    v5 = v40 >> 16;
    v176 = v39 >> 16;
    if ((v38 & 0x1000000000000000) != 0)
    {
      v142 = v37;
      swift_bridgeObjectRetain_n(v38, 3);
      v143._rawBits = v39 & 0xFFFFFFFFFFFF0000 | 1;
      v144._rawBits = v41 & 0xFFFFFFFFFFFF0000 | 1;
      v145._rawBits = _StringGuts.validateScalarRange(_:)(v143, v144, v142, v6)._rawBits;
      if (v145._rawBits < 0x10000)
      {
        v145._rawBits |= 3;
      }

      v42 = v142;
      v3 = String.UTF8View.distance(from:to:)(v145, v146);
      v6;
      v25 = v187;
      v10 = v188;
      if ((v188 & 0x1000000000000000) == 0)
      {
LABEL_47:
        if ((v10 & 0x2000000000000000) != 0)
        {
          v43 = HIBYTE(v10) & 0xF;
          v8 = v43 + v3;
          if (__OFADD__(v43, v3))
          {
            goto LABEL_150;
          }
        }

        else
        {
          v8 = (v25 & 0xFFFFFFFFFFFFLL) + v3;
          if (__OFADD__(v25 & 0xFFFFFFFFFFFFLL, v3))
          {
            goto LABEL_150;
          }
        }

        goto LABEL_52;
      }
    }

    else
    {
      v42 = v37;
      v3 = v5 - (v39 >> 16);
      swift_bridgeObjectRetain_n(v38, 2);
      if ((v10 & 0x1000000000000000) == 0)
      {
        goto LABEL_47;
      }
    }

    v147 = String.UTF8View._foreignCount()();
    v8 = v147 + v3;
    if (__OFADD__(v147, v3))
    {
LABEL_150:
      __break(1u);
      goto LABEL_151;
    }

LABEL_52:
    if ((v25 & ~v10 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v10 & 0xFFFFFFFFFFFFFFFLL))
    {
      v44 = _StringGuts.nativeUnusedCapacity.getter(v25, v10);
      if (v45)
      {
        goto LABEL_208;
      }

      if (v8 <= 15 && ((v10 & 0x2000000000000000) != 0 || v44 < v3))
      {
LABEL_65:
        v6;
        v58 = _StringGuts._convertedToSmall()(v25, v10, v50, v51, v52, v53, v54, v55, v56, v57);
        v60 = v59;
        v6;
        v61._rawBits = v39 & 0xFFFFFFFFFFFF0000 | 1;
        v62._rawBits = v41 & 0xFFFFFFFFFFFF0000 | 1;
        v63._rawBits = _StringGuts.validateScalarRange(_:)(v61, v62, v42, v6)._rawBits;
        if (v63._rawBits < 0x10000)
        {
          v63._rawBits |= 3;
        }

        v65 = Substring.description.getter(v63._rawBits, v64._rawBits, v42, v6);
        v67 = v66;
        v6;
        v76 = _StringGuts._convertedToSmall()(v65, v67, v68, v69, v70, v71, v72, v73, v74, v75);
        v78 = v77;
        v67;
        v79 = HIBYTE(v60) & 0xF;
        v80 = HIBYTE(v78) & 0xF;
        v81 = v80 + v79;
        if (v80 + v79 >= 0x10)
        {
          goto LABEL_208;
        }

        v6;
        if (v80)
        {
          v82 = 0;
          v83 = 0;
          v84 = 8 * v79;
          do
          {
            v85 = v78 >> (v82 & 0x38);
            if (v83 < 8)
            {
              v85 = v76 >> v82;
            }

            v86 = (v85 << (v84 & 0x38)) | ((-255 << (v84 & 0x38)) - 1) & v60;
            v87 = (v85 << v84) | ((-255 << v84) - 1) & v58;
            if (v79 <= 7)
            {
              v58 = v87;
            }

            else
            {
              v60 = v86;
            }

            ++v79;
            v84 += 8;
            v82 += 8;
            ++v83;
          }

          while (8 * v80 != v82);
        }

        v10;
        v88 = 0xA000000000000000;
        if (!(v58 & 0x8080808080808080 | v60 & 0x80808080808080))
        {
          v88 = 0xE000000000000000;
        }

        v187 = v58;
        *&v188 = v88 & 0xFF00000000000000 | (v81 << 56) | v60 & 0xFFFFFFFFFFFFFFLL;
        goto LABEL_84;
      }
    }

    else if (v8 < 16)
    {
      goto LABEL_65;
    }

    _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v8, v3);
    if ((v6 & 0x1000000000000000) != 0)
    {
      v6;
      _StringGuts._foreignAppendInPlace(_:)(v42, v6, v176, v5);
LABEL_83:
      v6;
      goto LABEL_84;
    }

    if ((v6 & 0x2000000000000000) != 0)
    {
      v6;
      v190 = v42;
      v191 = v6 & 0xFFFFFFFFFFFFFFLL;
      if ((HIBYTE(v6) & 0xF) < v5 || (v5 - v176) < 0)
      {
        goto LABEL_186;
      }

      closure #1 in _StringGuts.append(_:)(&v190 + v176, v5 - v176, &v187, (v6 & 0x4000000000000000) != 0);
      goto LABEL_83;
    }

    if ((v42 & 0x1000000000000000) != 0)
    {
      v46 = ((v6 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v47 = v42 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v46 = _StringObject.sharedUTF8.getter(v42, v6);
      v47 = v168;
    }

    if (v47 < v5)
    {
      goto LABEL_186;
    }

    v48 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v176, v5, v46, v47);
    closure #1 in _StringGuts.append(_:)(v48, v49, &v187, v42 < 0);
    swift_bridgeObjectRelease_n(v6, 2);
LABEL_84:
    v3 = v187;
    v10 = v188;
    if ((v188 & 0x2000000000000000) != 0)
    {
      v41 = BYTE7(v188) & 0xF;
    }

    else
    {
      v41 = v187 & 0xFFFFFFFFFFFFLL;
    }

    if (&full type metadata for EmptyCollection<Character> == &full type metadata for String)
    {
      goto LABEL_205;
    }

    if (&full type metadata for EmptyCollection<Character> == &full type metadata for Substring)
    {
      goto LABEL_206;
    }

    if (&full type metadata for EmptyCollection<Character> == &full type metadata for [Character])
    {
      goto LABEL_207;
    }

    v39 = specialized Collection.subscript.getter(v4._rawBits, v183, from);
    v25 = v90;
    v8 = v91;
    v4._rawBits = v89;
    v5 = v39 >> 16;
    v6 = v90 >> 16;
    if ((v89 & 0x1000000000000000) == 0)
    {
      v9 = v6 - v5;
      a1._rawBits = swift_bridgeObjectRetain_n(v89, 2);
      if ((v10 & 0x1000000000000000) == 0)
      {
        goto LABEL_92;
      }

      goto LABEL_154;
    }

LABEL_151:
    swift_bridgeObjectRetain_n(v4._rawBits, 3);
    v148._rawBits = v39 & 0xFFFFFFFFFFFF0000 | 1;
    v149._rawBits = v25 & 0xFFFFFFFFFFFF0000 | 1;
    v150._rawBits = _StringGuts.validateScalarRange(_:)(v148, v149, v8, v4._rawBits)._rawBits;
    if (v150._rawBits < 0x10000)
    {
      v150._rawBits |= 3;
    }

    v9 = String.UTF8View.distance(from:to:)(v150, v151);
    v4._rawBits;
    if ((v10 & 0x1000000000000000) == 0)
    {
LABEL_92:
      v23 = __OFADD__(v41, v9);
      v7 = v41 + v9;
      if (!v23)
      {
        goto LABEL_93;
      }

      goto LABEL_156;
    }

LABEL_154:
    a1._rawBits = String.UTF8View._foreignCount()();
    v7 = a1._rawBits + v9;
    if (!__OFADD__(a1._rawBits, v9))
    {
LABEL_93:
      if ((v3 & ~v10 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v10 & 0xFFFFFFFFFFFFFFFLL))
      {
        v92 = _StringGuts.nativeUnusedCapacity.getter(v3, v10);
        if (v93)
        {
          goto LABEL_208;
        }

        v94 = (v10 >> 61) & 1;
        if (v92 < v9)
        {
          LOBYTE(v94) = 1;
        }

        if (v7 <= 15 && (v94 & 1) != 0)
        {
LABEL_100:
          v4._rawBits;
          v103 = _StringGuts._convertedToSmall()(v3, v10, v95, v96, v97, v98, v99, v100, v101, v102);
          v105 = v104;
          v4._rawBits;
          v106._rawBits = v39 & 0xFFFFFFFFFFFF0000 | 1;
          v107._rawBits = v25 & 0xFFFFFFFFFFFF0000 | 1;
          v108._rawBits = _StringGuts.validateScalarRange(_:)(v106, v107, v8, v4._rawBits)._rawBits;
          if (v108._rawBits < 0x10000)
          {
            v108._rawBits |= 3;
          }

          v110 = Substring.description.getter(v108._rawBits, v109._rawBits, v8, v4._rawBits);
          v112 = v111;
          v4._rawBits;
          v121 = _StringGuts._convertedToSmall()(v110, v112, v113, v114, v115, v116, v117, v118, v119, v120);
          v123 = v122;
          v112;
          v124 = specialized _SmallString.init(_:appending:)(v103, v105, v121, v123);
          v9 = v178;
          if ((v126 & 1) == 0)
          {
            v127 = v124;
            v128 = v125;
            from;
            v10;
            v4._rawBits;
            v187 = v127;
            *&v188 = v128;
            v3 = v177;
            goto LABEL_111;
          }

LABEL_208:
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }
      }

      else if (v7 < 16)
      {
        goto LABEL_100;
      }

      _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v7, v9);
      v3 = v177;
      if ((v4._rawBits & 0x1000000000000000) == 0)
      {
        v9 = v178;
        if ((v4._rawBits & 0x2000000000000000) != 0)
        {
          v4._rawBits;
          v190 = v8;
          v191 = v4._rawBits & 0xFFFFFFFFFFFFFFLL;
          if ((HIBYTE(v4._rawBits) & 0xF) < v6)
          {
            goto LABEL_186;
          }

          v32 = v179;
          v30 = startingAt;
          if ((v6 - v5) < 0)
          {
            goto LABEL_186;
          }

          closure #1 in _StringGuts.append(_:)(&v190 + v5, v6 - v5, &v187, (v4._rawBits & 0x4000000000000000) != 0);
          from;
          v4._rawBits;
        }

        else
        {
          if ((v8 & 0x1000000000000000) != 0)
          {
            v129 = ((v4._rawBits & 0xFFFFFFFFFFFFFFFLL) + 32);
            v130 = v8 & 0xFFFFFFFFFFFFLL;
            if ((v8 & 0xFFFFFFFFFFFFLL) >= v6)
            {
              goto LABEL_109;
            }

LABEL_186:
            _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
          }

          v129 = _StringObject.sharedUTF8.getter(v8, v4._rawBits);
          v130 = v169;
          if (v169 < v6)
          {
            goto LABEL_186;
          }

LABEL_109:
          v131 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v5, v6, v129, v130);
          closure #1 in _StringGuts.append(_:)(v131, v132, &v187, v8 < 0);
          from;
          swift_bridgeObjectRelease_n(v4._rawBits, 2);
LABEL_111:
          v32 = v179;
          v30 = startingAt;
        }

        v31 = v187;
        v7 = v188;
        *(v3 + 16) = v187;
        *(v3 + 24) = v7;
        goto LABEL_113;
      }

      v4._rawBits;
      _StringGuts._foreignAppendInPlace(_:)(v8, v4._rawBits, v5, v6);
      from;
      v4._rawBits;
      v9 = v178;
      goto LABEL_111;
    }

LABEL_156:
    __break(1u);
LABEL_157:
    v152 = a1._rawBits;
    v153 = _StringGuts.scalarAlignSlow(_:)(v4)._rawBits;
    a1._rawBits = v152;
    v4._rawBits = v4._rawBits & 0xC | v153 & 0xFFFFFFFFFFFFFFF3 | 1;
    if (v152)
    {
      goto LABEL_18;
    }

LABEL_158:
    a1._rawBits = a1._rawBits & 0xC | _StringGuts.scalarAlignSlow(_:)(a1)._rawBits & 0xFFFFFFFFFFFFFFF3 | 1;
    if (!v10)
    {
      goto LABEL_159;
    }
  }

  v15 = v5 & 0xFFFFFFFFFFFFLL;
  if ((v7 & 0x2000000000000000) != 0)
  {
    v15 = HIBYTE(v7) & 0xF;
  }

  v16 = v15 - v184 + startingAt;
  if (v16 >= 16)
  {
    v17 = _StringGuts.uniqueNativeCapacity.getter();
    if ((v18 & 1) != 0 || v17 < v16)
    {
      _StringGuts.grow(_:)(v16);
    }
  }

  v7 = *(v3 + 24);
  v14 = v7 & 0xFFFFFFFFFFFFFFFLL;
  v19 = (v7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v5 = v19 + startingAt;
  v20 = (*((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x18) & 0xFFFFFFFFFFFFLL) - v184;
  specialized UnsafeMutablePointer.moveInitialize(from:count:)((v19 + v184), v20, (v19 + startingAt));
  v21 = 0;
  v4._rawBits = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x18) >> 63;
  v187 = closure #3 in _StringGuts.replaceSubrange<A>(_:with:);
  v188 = 0u;
  v189 = 0u;
  while (1)
  {
    v22 = specialized FlattenSequence.Iterator.next()();
    if ((v22 & 0x100) != 0)
    {
      break;
    }

    v4._rawBits = ((v22 & 0x80u) == 0) & v4._rawBits;
    *(v5 + v21) = v22;
    v23 = __OFADD__(v21++, 1);
    if (v23)
    {
      __break(1u);
      goto LABEL_32;
    }
  }

  v189;
  v30 = startingAt;
  __StringStorage._updateCountAndFlags(newCount:newIsASCII:)(v20 + startingAt, v4._rawBits & 1);
  v31 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
  *v6 = v31;
  v32 = v179;
LABEL_113:
  v133 = v9 >> 16;
  v134 = v30 - v184 + (v32 >> 16);
  v135 = (v9 >> 8) & 0x3F;
  if (!v135)
  {
    if (v133 >= v30)
    {
      goto LABEL_118;
    }

LABEL_115:
    if (v30 == v184)
    {
      return;
    }

LABEL_138:
    *(v3 + 8) = (v134 << 16) | 5;
    return;
  }

  if (v135 + v133 < v30)
  {
    goto LABEL_115;
  }

LABEL_118:
  if (v133 == v134)
  {
    v136 = 0;
    v137 = v9 & 0xFFFFFFFFFFFF0000;
    goto LABEL_132;
  }

  if ((v7 & 0x1000000000000000) != 0)
  {
    goto LABEL_180;
  }

  if ((v7 & 0x2000000000000000) != 0)
  {
    v187 = v31;
    *&v188 = v7 & 0xFFFFFFFFFFFFFFLL;
    if (v133 + 1 != (HIBYTE(v7) & 0xF))
    {
      v140 = *(&v187 + v133);
      goto LABEL_129;
    }

LABEL_131:
    v137 = v9 & 0xFFFFFFFFFFFF0000;
    v136 = 1;
LABEL_132:
    v137 |= v136 << 8;
    goto LABEL_133;
  }

  if ((v31 & 0x1000000000000000) != 0)
  {
    v138 = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v139 = v31 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v138 = _StringObject.sharedUTF8.getter(v31, v7);
    v139 = v167;
  }

  if (v133 + 1 == v139)
  {
    goto LABEL_131;
  }

  if (!v138)
  {
LABEL_213:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v140 = *&v138[v133];
LABEL_129:
  if (v140 != 2573 && (v140 & 0x80808080) == 0)
  {
    goto LABEL_131;
  }

LABEL_180:
  v136 = _StringGuts._opaqueComplexCharacterStride(startingAt:)(v9 >> 16);
  v137 = v9 & 0xFFFFFFFFFFFF0000;
  if (v136 <= 63)
  {
    goto LABEL_132;
  }

LABEL_133:
  v141 = v137 | 5;
  if ((v9 & 2) != 0 && (v133 < v30 || _StringGuts.isOnGraphemeClusterBoundary(_:)((v137 | 5))))
  {
    v141 = v137 | 7;
  }

  *v3 = v141;
  if (v30 != v184)
  {
    goto LABEL_138;
  }
}

void Substring._replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2, unint64_t *a3, ValueMetadata *a4, uint64_t a5)
{
  v290 = a3;
  v282 = a5;
  v8 = *(a5 + 8);
  v9 = type metadata accessor for LazyMapSequence(255, a4, &type metadata for String.UTF8View, v8);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for LazyMapSequence<A, B>, v9, v10);
  v14 = lazy protocol witness table accessor for type String.UTF8View and conformance String.UTF8View(WitnessTable, v12, v13);
  v293 = type metadata accessor for FlattenSequence.Iterator(0, v9, WitnessTable, v14);
  v280 = *(v293 - 8);
  MEMORY[0x1EEE9AC00](v293);
  v16 = &v273 - v15;
  v288 = v8;
  v18 = type metadata accessor for LazySequence(0, a4, v8, v17);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v281 = &v273 - v19;
  v20 = type metadata accessor for FlattenSequence(255, v9, WitnessTable, v14);
  v22 = swift_getWitnessTable(protocol conformance descriptor for FlattenSequence<A>, v20, v21);
  v24 = type metadata accessor for LazySequence(0, v20, v22, v23);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v291 = a4;
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v273 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v27);
  v37 = (&v273 - v36);
  v39 = v5 + 2;
  v38 = v5[2];
  v40 = v5[3];
  v289 = v5;
  v41._rawBits = *v5;
  v42 = v5[1];
  v294 = v40;
  v292 = v38;
  LOBYTE(v43) = (v40 & 0x1000000000000000) == 0 || (v38 & 0x800000000000000) != 0;
  v44 = a1 & 0xC;
  v45 = 4 << v43;
  v46 = v33 & 0xC;
  if ((a1 & 1) != 0 && v44 != v45 && (v33 & 1) != 0 && v46 != v45)
  {
    v47 = v294;
    if (a1 >> 14 < v41._rawBits >> 14 || v42 >> 14 < v33 >> 14)
    {
      goto LABEL_35;
    }

    goto LABEL_19;
  }

  if (v46 == v45)
  {
    v279 = v39;
    v277 = v30;
    v278 = v35;
    v274 = v31;
    v275 = v16;
    v190 = v32;
    v284 = v42;
    rawBits = v41._rawBits;
    v191 = v34;
    v192._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(v33)._rawBits;
    v32 = v190;
    v16 = v275;
    v31 = v274;
    v35 = v278;
    v34 = v191;
    v41._rawBits = rawBits;
    v42 = v284;
    v33 = v192._rawBits;
    v30 = v277;
    v39 = v279;
    if (v44 != v45)
    {
      goto LABEL_13;
    }
  }

  else if (v44 != v45)
  {
LABEL_13:
    v47 = v294;
    goto LABEL_14;
  }

  v279 = v39;
  v277 = v30;
  v193._rawBits = a1;
  v283 = v33;
  v278 = v35;
  v274 = v31;
  v47 = v294;
  v275 = v16;
  v194 = v32;
  v195 = v41._rawBits;
  v196 = v34;
  v197._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(v193)._rawBits;
  v32 = v194;
  v16 = v275;
  v31 = v274;
  v35 = v278;
  v34 = v196;
  v33 = v283;
  v41._rawBits = v195;
  a1 = v197._rawBits;
  v30 = v277;
  v39 = v279;
LABEL_14:
  if (a1 >> 14 < v41._rawBits >> 14 || v33 >> 14 < a1 >> 14 || v42 >> 14 < v33 >> 14)
  {
LABEL_35:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if ((v33 & 1) == 0)
  {
    goto LABEL_148;
  }

  if ((a1 & 1) == 0)
  {
    goto LABEL_149;
  }

LABEL_19:
  if ((v43 & 1) == 0)
  {
LABEL_150:
    v217 = v33;
    v218._rawBits = v42;
    v219 = v41._rawBits & 0xC;
    v220 = v41._rawBits;
    if (v219 == 4)
    {
      v270 = v41._rawBits;
      v271._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(v41)._rawBits;
      v41._rawBits = v270;
      v220 = v271._rawBits;
    }

    if ((v294 & 0x2000000000000000) != 0)
    {
      v221 = HIBYTE(v294) & 0xF;
    }

    else
    {
      v221 = v292 & 0xFFFFFFFFFFFFLL;
    }

    if (v221 >= v220 >> 16)
    {
      v222._rawBits = v41._rawBits;
      v55 = String.UTF8View._foreignDistance(from:to:)(15, v220);
      v223 = v222._rawBits;
      if (v219 == 4)
      {
        v223 = _StringGuts._slowEnsureMatchingEncoding(_:)(v222)._rawBits;
      }

      v224 = v218._rawBits;
      if ((v218._rawBits & 0xC) == 4)
      {
        v272 = v223;
        v224 = _StringGuts._slowEnsureMatchingEncoding(_:)(v218)._rawBits;
        v223 = v272;
        if (v221 < v272 >> 16)
        {
          goto LABEL_255;
        }
      }

      else if (v221 < v223 >> 16)
      {
        goto LABEL_255;
      }

      if (v221 < v224 >> 16)
      {
        goto LABEL_255;
      }

      v50 = String.UTF8View._foreignDistance(from:to:)(v223, v224);
      v225 = a1;
      if ((a1 & 0xC) == 4)
      {
        v225 = _StringGuts._slowEnsureMatchingEncoding(_:)(a1)._rawBits;
      }

      v226 = v217;
      if ((v217 & 0xC) == 4)
      {
        v226 = _StringGuts._slowEnsureMatchingEncoding(_:)(v217)._rawBits;
        if (v221 < v225 >> 16)
        {
          goto LABEL_255;
        }
      }

      else if (v221 < v225 >> 16)
      {
        goto LABEL_255;
      }

      if (v221 >= v226 >> 16)
      {
        v227 = String.UTF8View._foreignDistance(from:to:)(v225, v226);
        v228 = _StringGuts.replaceSubrange<A>(_:with:)(a1, v217, v290, v291, v282);
        v230 = v229 - v228;
        if (__OFSUB__(v229, v228))
        {
          __break(1u);
        }

        else
        {
          v231 = __OFADD__(v50, v230);
          v232 = &v50[v230];
          if (!v231)
          {
            v50 = &v232[-v227];
            if (!__OFSUB__(v232, v227))
            {
              if (v228 == v229)
              {
                v233 = 0;
                v234 = v55 << 16;
                goto LABEL_246;
              }

LABEL_230:
              v42 = v289[2];
              v49 = v289[3];
              if ((v49 & 0x1000000000000000) != 0)
              {
                goto LABEL_261;
              }

              if ((v49 & 0x2000000000000000) == 0)
              {
                if ((v42 & 0x1000000000000000) != 0)
                {
                  v266 = ((v49 & 0xFFFFFFFFFFFFFFFLL) + 32);
                  v267 = v42 & 0xFFFFFFFFFFFFLL;
                }

                else
                {
                  v266 = _StringObject.sharedUTF8.getter(v289[2], v289[3]);
                }

                if (v55 + 1 != v267)
                {
                  if (!v266)
                  {
                    goto LABEL_256;
                  }

                  v268 = *&v266[v55];
                  goto LABEL_243;
                }

                goto LABEL_245;
              }

LABEL_241:
              v297 = v42;
              v298 = v49 & 0xFFFFFFFFFFFFFFLL;
              if (v55 + 1 != (HIBYTE(v49) & 0xF))
              {
                v268 = *(&v297 + v55);
LABEL_243:
                if (v268 == 2573 || (v268 & 0x80808080) != 0)
                {
                  goto LABEL_261;
                }
              }

LABEL_245:
              v234 = v55 << 16;
              v233 = 1;
LABEL_246:
              v234 |= v233 << 8;
              while (1)
              {
                *v289 = v234 | 5;
                if (_StringGuts.isOnGraphemeClusterBoundary(_:)((v234 | 5)))
                {
                  *v289 = v234 | 7;
                }

                v16 = &v50[v55];
                if (!__OFADD__(v55, v50))
                {
                  break;
                }

LABEL_260:
                __break(1u);
LABEL_261:
                v233 = _StringGuts._opaqueComplexCharacterStride(startingAt:)(v55);
                v234 = v55 << 16;
                if (v233 <= 63)
                {
                  goto LABEL_246;
                }
              }

              v53 = v289;
              goto LABEL_215;
            }

LABEL_259:
            __break(1u);
            goto LABEL_260;
          }
        }

        __break(1u);
        goto LABEL_259;
      }
    }

LABEL_255:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  while (1)
  {
    v275 = v16;
    v274 = v31;
    v278 = v35;
    v276 = v34;
    v277 = v30;
    v279 = v39;
    v285 = a1 >> 16;
    rawBits = v41._rawBits;
    v283 = v33;
    v284 = v42;
    v287 = v33 >> 16;
    v48 = v292;
    if ((v292 & ~v47 & 0x2000000000000000) != 0)
    {
      v16 = v32;
      if (swift_isUniquelyReferenced_nonNull_native(v47 & 0xFFFFFFFFFFFFFFFLL))
      {
        break;
      }
    }

    v42 = 0xE000000000000000;
    v297 = 0;
    v298 = 0xE000000000000000;
    v59 = _StringGuts.nativeCapacity.getter(v48, v47);
    v20 = 0;
    if ((v60 & 1) == 0)
    {
      v61 = v59;
      if (v59 >= 16)
      {
        v62 = _StringGuts.uniqueNativeCapacity.getter();
        if ((v63 & 1) != 0 || v62 < v61)
        {
          v65 = 2 * _StringGuts.uniqueNativeCapacity.getter();
          if (v65 <= v61)
          {
            v65 = v61;
          }

          if (v64)
          {
            v66 = v61;
          }

          else
          {
            v66 = v65;
          }

          v301 = 0;
          v302 = 0;
          v42 = specialized static __StringStorage.create(initializingFrom:codeUnitCapacity:isASCII:)(&v301, 0, v66, 1);
          v20 = *(v42 + 24);
          0xE000000000000000;
          v297 = v20;
          v298 = v42;
        }

        else
        {
          v20 = 0;
          v42 = 0xE000000000000000;
        }
      }
    }

    v67._rawBits = a1;
    v29 = specialized Collection.subscript.getter(v67, v48, v47);
    v71 = v70;
    v72 = v69;
    v43 = v29 >> 16;
    v16 = v70 >> 16;
    v293 = v68;
    if ((v69 & 0x1000000000000000) != 0)
    {
      v198 = v68;
      swift_bridgeObjectRetain_n(v69, 3);
      v199._rawBits = v29 & 0xFFFFFFFFFFFF0000 | 1;
      v200._rawBits = v71 & 0xFFFFFFFFFFFF0000 | 1;
      v201._rawBits = _StringGuts.validateScalarRange(_:)(v199, v200, v198, v72)._rawBits;
      if (v201._rawBits < 0x10000)
      {
        v201._rawBits |= 3;
      }

      v73 = String.UTF8View.distance(from:to:)(v201, v202);
      v72;
      v20 = v297;
      v42 = v298;
      if ((v298 & 0x1000000000000000) == 0)
      {
LABEL_44:
        if ((v42 & 0x2000000000000000) != 0)
        {
          v74 = HIBYTE(v42) & 0xF;
          a1 = v74 + v73;
          if (__OFADD__(v74, v73))
          {
            goto LABEL_141;
          }
        }

        else
        {
          a1 = (v20 & 0xFFFFFFFFFFFFLL) + v73;
          if (__OFADD__(v20 & 0xFFFFFFFFFFFFLL, v73))
          {
            goto LABEL_141;
          }
        }

        goto LABEL_49;
      }
    }

    else
    {
      v73 = v16 - v43;
      swift_bridgeObjectRetain_n(v69, 2);
      if ((v42 & 0x1000000000000000) == 0)
      {
        goto LABEL_44;
      }
    }

    v203 = String.UTF8View._foreignCount()();
    a1 = v203 + v73;
    if (__OFADD__(v203, v73))
    {
LABEL_141:
      __break(1u);
      goto LABEL_142;
    }

LABEL_49:
    if ((v20 & ~v42 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v42 & 0xFFFFFFFFFFFFFFFLL))
    {
      v75 = _StringGuts.nativeUnusedCapacity.getter(v20, v42);
      if (v76)
      {
        goto LABEL_251;
      }

      if (a1 > 15 || (v42 & 0x2000000000000000) == 0 && v75 >= v73)
      {
LABEL_55:
        _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(a1, v73);
        if ((v72 & 0x1000000000000000) != 0)
        {
          v72;
          _StringGuts._foreignAppendInPlace(_:)(v293, v72, v43, v16);
        }

        else
        {
          v77 = v293;
          if ((v72 & 0x2000000000000000) == 0)
          {
            if ((v293 & 0x1000000000000000) != 0)
            {
              v78 = ((v72 & 0xFFFFFFFFFFFFFFFLL) + 32);
              v79 = v293 & 0xFFFFFFFFFFFFLL;
              if ((v293 & 0xFFFFFFFFFFFFLL) < v16)
              {
                goto LABEL_238;
              }
            }

            else
            {
              v78 = _StringObject.sharedUTF8.getter(v293, v72);
              v79 = v263;
              if (v263 < v16)
              {
                goto LABEL_238;
              }
            }

            v80 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v43, v16, v78, v79);
            closure #1 in _StringGuts.append(_:)(v80, v81, &v297, v77 < 0);
            swift_bridgeObjectRelease_n(v72, 2);
            goto LABEL_93;
          }

          v72;
          v301 = v77;
          v302 = v72 & 0xFFFFFFFFFFFFFFLL;
          if ((HIBYTE(v72) & 0xF) < v16 || v16 - v43 < 0)
          {
            goto LABEL_238;
          }

          closure #1 in _StringGuts.append(_:)(&v301 + v43, v16 - v43, &v297, (v72 & 0x4000000000000000) != 0);
        }

        v72;
LABEL_93:
        v135 = v290;
        v136 = v291;
        v119 = v288;
        goto LABEL_94;
      }
    }

    else if (a1 > 15)
    {
      goto LABEL_55;
    }

    v72;
    v90 = _StringGuts._convertedToSmall()(v20, v42, v82, v83, v84, v85, v86, v87, v88, v89);
    v92 = v91;
    v72;
    v93._rawBits = v29 & 0xFFFFFFFFFFFF0000 | 1;
    v94._rawBits = v71 & 0xFFFFFFFFFFFF0000 | 1;
    v95 = v293;
    v96._rawBits = _StringGuts.validateScalarRange(_:)(v93, v94, v293, v72)._rawBits;
    if (v96._rawBits < 0x10000)
    {
      v96._rawBits |= 3;
    }

    v98 = Substring.description.getter(v96._rawBits, v97._rawBits, v95, v72);
    v100 = v99;
    v72;
    v109 = _StringGuts._convertedToSmall()(v98, v100, v101, v102, v103, v104, v105, v106, v107, v108);
    v111 = v110;
    v100;
    v112 = HIBYTE(v92) & 0xF;
    v113 = HIBYTE(v111) & 0xF;
    v114 = v113 + v112;
    if (v113 + v112 > 0xF)
    {
      goto LABEL_251;
    }

    v72;
    if (v113)
    {
      v115 = 0;
      v116 = 0;
      v117 = 8 * v112;
      v118 = 8 * v113;
      v47 = v294;
      v119 = v288;
      do
      {
        v120 = v111 >> (v115 & 0x38);
        if (v116 < 8)
        {
          v120 = v109 >> v115;
        }

        v121 = (v120 << (v117 & 0x38)) | ((-255 << (v117 & 0x38)) - 1) & v92;
        v122 = (v120 << v117) | ((-255 << v117) - 1) & v90;
        if (v112 <= 7)
        {
          v90 = v122;
        }

        else
        {
          v92 = v121;
        }

        ++v112;
        v117 += 8;
        v115 += 8;
        ++v116;
      }

      while (v118 != v115);
    }

    else
    {
      v47 = v294;
      v119 = v288;
    }

    v42;
    v134 = 0xA000000000000000;
    if (!(v90 & 0x8080808080808080 | v92 & 0x80808080808080))
    {
      v134 = 0xE000000000000000;
    }

    v297 = v90;
    v298 = v134 & 0xFF00000000000000 | (v114 << 56) | v92 & 0xFFFFFFFFFFFFFFLL;
    v135 = v290;
    v136 = v291;
LABEL_94:
    v137 = v297 & 0xFFFFFFFFFFFFLL;
    if ((v298 & 0x2000000000000000) != 0)
    {
      v137 = HIBYTE(v298) & 0xF;
    }

    v293 = v137;
    String.append<A>(contentsOf:)(v135, v136, v119);
    v20 = v297;
    v42 = v298;
    if ((v298 & 0x2000000000000000) != 0)
    {
      v138 = (HIBYTE(v298) & 0xF);
    }

    else
    {
      v138 = (v297 & 0xFFFFFFFFFFFFLL);
    }

    v47 = specialized Collection.subscript.getter(v283, v292, v47);
    v29 = v140;
    a1 = v141;
    v72 = v139;
    v43 = v47 >> 16;
    v16 = v140 >> 16;
    v291 = v138;
    if ((v139 & 0x1000000000000000) == 0)
    {
      v37 = (v16 - v43);
      swift_bridgeObjectRetain_n(v139, 2);
      v30 = v138;
      if ((v42 & 0x1000000000000000) == 0)
      {
        goto LABEL_101;
      }

      goto LABEL_145;
    }

LABEL_142:
    swift_bridgeObjectRetain_n(v72, 3);
    v204._rawBits = v47 & 0xFFFFFFFFFFFF0000 | 1;
    v205._rawBits = v29 & 0xFFFFFFFFFFFF0000 | 1;
    v206 = v291;
    v207._rawBits = _StringGuts.validateScalarRange(_:)(v204, v205, a1, v72)._rawBits;
    if (v207._rawBits < 0x10000)
    {
      v207._rawBits |= 3;
    }

    v37 = String.UTF8View.distance(from:to:)(v207, v208);
    v72;
    v30 = v206;
    if ((v42 & 0x1000000000000000) == 0)
    {
LABEL_101:
      v9 = v37 + v30;
      if (!__OFADD__(v30, v37))
      {
        goto LABEL_102;
      }

      goto LABEL_147;
    }

LABEL_145:
    v30 = String.UTF8View._foreignCount()();
    v9 = v37 + v30;
    if (!__OFADD__(v30, v37))
    {
LABEL_102:
      if ((v20 & ~v42 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v42 & 0xFFFFFFFFFFFFFFFLL))
      {
        v142 = _StringGuts.nativeUnusedCapacity.getter(v20, v42);
        if (v143)
        {
          goto LABEL_251;
        }

        v144 = (v42 >> 61) & 1;
        if (v142 < v37)
        {
          LODWORD(v144) = 1;
        }

        if (v9 <= 15 && v144)
        {
LABEL_109:
          v72;
          v153 = _StringGuts._convertedToSmall()(v20, v42, v145, v146, v147, v148, v149, v150, v151, v152);
          v16 = v154;
          v72;
          v155._rawBits = v47 & 0xFFFFFFFFFFFF0000 | 1;
          v156._rawBits = v29 & 0xFFFFFFFFFFFF0000 | 1;
          v157._rawBits = _StringGuts.validateScalarRange(_:)(v155, v156, a1, v72)._rawBits;
          if (v157._rawBits < 0x10000)
          {
            v157._rawBits |= 3;
          }

          v159 = Substring.description.getter(v157._rawBits, v158._rawBits, a1, v72);
          v47 = v160;
          v72;
          v169 = _StringGuts._convertedToSmall()(v159, v47, v161, v162, v163, v164, v165, v166, v167, v168);
          v171 = v170;
          v47;
          v172 = specialized _SmallString.init(_:appending:)(v153, v16, v169, v171);
          v53 = v289;
          v9 = v285;
          if ((v174 & 1) == 0)
          {
            v175 = v172;
            v176 = v173;
            v294;
            v42;
            v72;
            v297 = v175;
            v298 = v176;
            v54 = v287;
LABEL_123:
            v181 = v293;
            v133 = v297;
            v132 = v298;
            v53[2] = v297;
            v53[3] = v132;
            v182 = rawBits;
            goto LABEL_189;
          }

LABEL_251:
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }
      }

      else if (v9 <= 15)
      {
        goto LABEL_109;
      }

      v42 = &v297;
      _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v9, v37);
      v54 = v287;
      if ((v72 & 0x1000000000000000) != 0)
      {
        v72;
        _StringGuts._foreignAppendInPlace(_:)(a1, v72, v43, v16);
        v294;
        v72;
        v53 = v289;
        v9 = v285;
        goto LABEL_123;
      }

      v53 = v289;
      v9 = v285;
      v42 = v294;
      if ((v72 & 0x2000000000000000) != 0)
      {
        v72;
        v301 = a1;
        v302 = v72 & 0xFFFFFFFFFFFFFFLL;
        if ((HIBYTE(v72) & 0xF) >= v16 && v16 - v43 >= 0)
        {
          closure #1 in _StringGuts.append(_:)(&v301 + v43, v16 - v43, &v297, (v72 & 0x4000000000000000) != 0);
          v42;
          v72;
          goto LABEL_123;
        }
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v177 = ((v72 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v178 = a1 & 0xFFFFFFFFFFFFLL;
        if ((a1 & 0xFFFFFFFFFFFFLL) >= v16)
        {
LABEL_118:
          v179 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v43, v16, v177, v178);
          closure #1 in _StringGuts.append(_:)(v179, v180, &v297, a1 < 0);
          v42;
          swift_bridgeObjectRelease_n(v72, 2);
          goto LABEL_123;
        }
      }

      else
      {
        v177 = _StringObject.sharedUTF8.getter(a1, v72);
        v178 = v264;
        if (v264 >= v16)
        {
          goto LABEL_118;
        }
      }

LABEL_238:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

LABEL_147:
    __break(1u);
LABEL_148:
    v279 = v39;
    v277 = v30;
    v283 = v33;
    v278 = v35;
    v274 = v31;
    v275 = v16;
    v209 = v32;
    rawBits = v41._rawBits;
    v210 = v34;
    v211._rawBits = _StringGuts.scalarAlignSlow(_:)(v33)._rawBits;
    v32 = v209;
    v16 = v275;
    v31 = v274;
    v35 = v278;
    v34 = v210;
    v41._rawBits = rawBits;
    v212 = v211._rawBits & 0xFFFFFFFFFFFFFFF3;
    v30 = v277;
    v39 = v279;
    v33 = v283 & 0xC | v212 | 1;
    if (a1)
    {
      goto LABEL_19;
    }

LABEL_149:
    v279 = v39;
    v277 = v30;
    v283 = v33;
    v278 = v35;
    v274 = v31;
    v275 = v16;
    v213 = v32;
    rawBits = v41._rawBits;
    v214 = v34;
    v215._rawBits = _StringGuts.scalarAlignSlow(_:)(a1)._rawBits;
    v32 = v213;
    v16 = v275;
    v31 = v274;
    v35 = v278;
    v34 = v214;
    v33 = v283;
    v41._rawBits = rawBits;
    v216 = v215._rawBits & 0xFFFFFFFFFFFFFFF3;
    v30 = v277;
    v39 = v279;
    a1 = a1 & 0xC | v216 | 1;
    if ((v43 & 1) == 0)
    {
      goto LABEL_150;
    }
  }

  v49 = v16 + 16;
  v50 = *(v16 + 16);
  v52 = v290;
  v51 = v291;
  (v50)(v37, v290, v291);
  if ((swift_dynamicCast(&v297, v37, v51, &type metadata for String, 6uLL) & 1) == 0)
  {
    (v50)(v29, v52, v51);
    v123 = swift_dynamicCast(&v297, v29, v51, &type metadata for Substring, 6uLL);
    v53 = v289;
    if ((v123 & 1) == 0)
    {
      goto LABEL_173;
    }

    v47 = v300;
    v54 = v287;
    if ((v300 & 0x1000000000000000) != 0)
    {
      goto LABEL_227;
    }

    v55 = v297 >> 16;
    v124 = v298 >> 16;
    if ((v300 & 0x2000000000000000) != 0)
    {
      v297 = v299;
      v298 = v300 & 0xFFFFFFFFFFFFFFLL;
      v9 = v285;
      if ((HIBYTE(v300) & 0xF) < v124)
      {
        goto LABEL_238;
      }

      v188 = v124 - v55;
      if (v124 - v55 < 0)
      {
        goto LABEL_238;
      }

      v16 = &v297;
      v189 = v292 & 0xFFFFFFFFFFFFLL;
      if ((v294 & 0x2000000000000000) != 0)
      {
        v189 = HIBYTE(v294) & 0xF;
      }

      v291 = (v188 + v285);
      _StringGuts.reserveCapacity(_:)(v189 - v287 + v188 + v285);
      v132 = v53[3];
      v42 = v132 & 0xFFFFFFFFFFFFFFFLL;
      v184 = &v297 + v55;
      v185 = v9;
      v186 = v54;
      v187 = v188;
      goto LABEL_132;
    }

    v9 = v285;
    if ((v299 & 0x1000000000000000) != 0)
    {
      v125 = ((v300 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v126 = v299 & 0xFFFFFFFFFFFFLL;
      if ((v299 & 0xFFFFFFFFFFFFLL) < v124)
      {
        goto LABEL_238;
      }
    }

    else
    {
      v42 = v298 >> 16;
      v125 = _StringObject.sharedUTF8.getter(v299, v300);
      v126 = v269;
      v124 = v42;
      if (v126 < v42)
      {
        goto LABEL_238;
      }
    }

    v127 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v55, v124, v125, v126);
    v129 = v9 + v128;
    if (__OFADD__(v9, v128))
    {
      __break(1u);
    }

    else
    {
      v55 = v127;
      v130 = v292 & 0xFFFFFFFFFFFFLL;
      if ((v294 & 0x2000000000000000) != 0)
      {
        v130 = HIBYTE(v294) & 0xF;
      }

      v131 = v130 - v54;
      v291 = (v9 + v128);
      v58 = v129 + v131;
      if (!__OFADD__(v129, v131))
      {
        v56 = v128;
        goto LABEL_84;
      }
    }

    __break(1u);
    goto LABEL_241;
  }

  v47 = v298;
  v53 = v289;
  if ((v298 & 0x1000000000000000) == 0)
  {
    v54 = v287;
    if ((v298 & 0x2000000000000000) == 0)
    {
      v9 = v285;
      if ((v297 & 0x1000000000000000) != 0)
      {
        v55 = (v298 & 0xFFFFFFFFFFFFFFFLL) + 32;
        v56 = v297 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v55 = _StringObject.sharedUTF8.getter(v297, v298);
        v56 = v265;
      }

      v57 = v292 & 0xFFFFFFFFFFFFLL;
      if ((v294 & 0x2000000000000000) != 0)
      {
        v57 = HIBYTE(v294) & 0xF;
      }

      v291 = (v56 + v9);
      v58 = v57 - v54 + v56 + v9;
LABEL_84:
      _StringGuts.reserveCapacity(_:)(v58);
      v132 = v53[3];
      v42 = v132 & 0xFFFFFFFFFFFFFFFLL;
      __StringStorage.replace(from:to:with:)(v9, v54, v55, v56);
      v133 = *((v132 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v53[2] = v133;
      v47;
LABEL_133:
      v181 = v9;
      v182 = rawBits;
      goto LABEL_189;
    }

    v298 &= 0xFFFFFFFFFFFFFFuLL;
    v9 = v285;
    v183 = v292 & 0xFFFFFFFFFFFFLL;
    if ((v294 & 0x2000000000000000) != 0)
    {
      v183 = HIBYTE(v294) & 0xF;
    }

    v291 = ((HIBYTE(v47) & 0xF) + v285);
    _StringGuts.reserveCapacity(_:)(v291 + v183 - v287);
    v132 = v53[3];
    v42 = v132 & 0xFFFFFFFFFFFFFFFLL;
    v184 = &v297;
    v185 = v9;
    v186 = v54;
    v187 = HIBYTE(v47) & 0xF;
LABEL_132:
    __StringStorage.replace(from:to:with:)(v185, v186, v184, v187);
    v47;
    v133 = *(v42 + 24);
    v53[2] = v133;
    goto LABEL_133;
  }

  v298;
LABEL_173:
  v54 = v287;
  while (2)
  {
    v47 = v281;
    v235 = v291;
    (v50)(v281, v290, v291);
    v236 = *(v16 + 32);
    v16 += 32;
    v237 = v278;
    v236(v278, v47, v235);
    v238 = (v237 + *(v9 + 44));
    *v238 = closure #3 in _StringGuts.replaceSubrange<A>(_:with:);
    v238[1] = 0;
    v296 = v282;
    v239 = swift_getWitnessTable(protocol conformance descriptor for <> LazyMapSequence<A, B>, v9, &v296);
    v242 = lazy protocol witness table accessor for type String.UTF8View and conformance String.UTF8View(v239, v240, v241);
    v295[0] = v239;
    v295[1] = v242;
    v243 = swift_getWitnessTable(protocol conformance descriptor for <> FlattenSequence<A>, v20, v295);
    v244 = Collection.count.getter(v20, v243);
    v9 = v285;
    v245 = v285 + v244;
    if (__OFADD__(v285, v244))
    {
      __break(1u);
      goto LABEL_226;
    }

    v246 = v292 & 0xFFFFFFFFFFFFLL;
    if ((v294 & 0x2000000000000000) != 0)
    {
      v246 = HIBYTE(v294) & 0xF;
    }

    v247 = v246 - v54;
    v291 = (v285 + v244);
    v248 = v245 + v247;
    v16 = v275;
    if (__OFADD__(v245, v247))
    {
LABEL_226:
      __break(1u);
LABEL_227:
      v47;
      continue;
    }

    break;
  }

  v249 = v244;
  if (v248 >= 16)
  {
    v250 = _StringGuts.uniqueNativeCapacity.getter();
    if ((v251 & 1) != 0 || v250 < v248)
    {
      _StringGuts.grow(_:)(v248);
    }
  }

  v132 = v53[3];
  v55 = v132 & 0xFFFFFFFFFFFFFFFLL;
  v252 = (v132 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v50 = (v252 + v9);
  v47 = (*((v132 & 0xFFFFFFFFFFFFFFFLL) + 0x18) & 0xFFFFFFFFFFFFLL) - v54;
  specialized UnsafeMutablePointer.moveInitialize(from:count:)((v252 + v54), v47, (v252 + v9 + v249));
  v253 = *((v132 & 0xFFFFFFFFFFFFFFFLL) + 0x18) >> 63;
  v254 = v277;
  (*(v276 + 16))(v274, v278, v277);
  LazySequence.makeIterator()(v254);
  v255 = 0;
  while (1)
  {
    FlattenSequence.Iterator.next()(v293, &v297);
    if ((v297 & 0x100) != 0)
    {
      break;
    }

    LOBYTE(v253) = ((v297 & 0x80u) == 0) & v253;
    v50[v255] = v297;
    v231 = __OFADD__(v255++, 1);
    if (v231)
    {
      __break(1u);
      break;
    }
  }

  (*(v280 + 8))(v16, v293);
  if (__OFADD__(v291, v47))
  {
    __break(1u);
    goto LABEL_230;
  }

  v42 = v132 & 0xFFFFFFFFFFFFFFFLL;
  __StringStorage._updateCountAndFlags(newCount:newIsASCII:)(v291 + v47, v253 & 1);
  (*(v276 + 8))(v278, v277);
  v133 = *((v132 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
  *v279 = v133;
  v181 = v9;
  v182 = rawBits;
  v54 = v287;
LABEL_189:
  if (__OFSUB__(v291, v181))
  {
    __break(1u);
    goto LABEL_218;
  }

  v42 = v182 >> 16;
  v47 = v284 >> 16;
  v16 = v291 + v9 - v54 + (v284 >> 16) - v181;
  v256 = (v182 >> 8) & 0x3F;
  if (!v256)
  {
    if (v42 >= v9)
    {
      goto LABEL_195;
    }

LABEL_192:
    if (v16 == v47)
    {
      return;
    }

LABEL_215:
    v53[1] = (v16 << 16) | 5;
    return;
  }

  if (v256 + v42 < v9)
  {
    goto LABEL_192;
  }

LABEL_195:
  if (v42 == v16)
  {
    v257 = 0;
    v258 = v182 & 0xFFFFFFFFFFFF0000;
    goto LABEL_209;
  }

  if ((v132 & 0x1000000000000000) != 0)
  {
    goto LABEL_218;
  }

  if ((v132 & 0x2000000000000000) != 0)
  {
    v297 = v133;
    v298 = v132 & 0xFFFFFFFFFFFFFFLL;
    if (v42 + 1 != (HIBYTE(v132) & 0xF))
    {
      v261 = *(&v297 + v42);
      goto LABEL_206;
    }

LABEL_208:
    v258 = v182 & 0xFFFFFFFFFFFF0000;
    v257 = 1;
LABEL_209:
    v258 |= v257 << 8;
    goto LABEL_210;
  }

  if ((v133 & 0x1000000000000000) != 0)
  {
    v259 = ((v132 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v260 = v133 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v259 = _StringObject.sharedUTF8.getter(v133, v132);
    v182 = rawBits;
  }

  if (v42 + 1 == v260)
  {
    goto LABEL_208;
  }

  if (!v259)
  {
LABEL_256:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v261 = *&v259[v42];
LABEL_206:
  if (v261 != 2573 && (v261 & 0x80808080) == 0)
  {
    goto LABEL_208;
  }

LABEL_218:
  v257 = _StringGuts._opaqueComplexCharacterStride(startingAt:)(v42);
  LOBYTE(v182) = rawBits;
  v258 = rawBits & 0xFFFFFFFFFFFF0000;
  if (v257 <= 63)
  {
    goto LABEL_209;
  }

LABEL_210:
  v262 = v258 | 5;
  if ((v182 & 2) != 0 && (v42 < v9 || _StringGuts.isOnGraphemeClusterBoundary(_:)((v258 | 5))))
  {
    v262 = v258 | 7;
  }

  *v53 = v262;
  if (v16 != v47)
  {
    goto LABEL_215;
  }
}

uint64_t Substring.init<A, B>(decoding:as:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a3 - 1);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v12 = (v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (v10 != &type metadata for Unicode.UTF8)
  {
    static String._fromCodeUnits<A, B>(_:encoding:repair:)(a1, v10, 1, a3);
    if (!v19)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    goto LABEL_9;
  }

  MEMORY[0x1EEE9AC00](v9);
  (*(*(a5 + 8) + 72))(v22, closure #1 in String.init<A, B>(decoding:as:)partial apply);
  if (v22[1])
  {
LABEL_9:
    (*(v8 + 8))(a1, a3);
    return 15;
  }

  (*(v8 + 16))(v12, a1, a3);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss19_HasContiguousBytes_pMd, _ss19_HasContiguousBytes_pMR);
  if ((swift_dynamicCast(v20, v12, a3, v13, 6uLL) & 1) == 0)
  {
    v21 = 0;
    memset(v20, 0, sizeof(v20));
    outlined destroy of _HasContiguousBytes?(v20, &_ss19_HasContiguousBytes_pSgMd, _ss19_HasContiguousBytes_pSgMR);
LABEL_8:
    static String._fromNonContiguousUnsafeBitcastUTF8Repairing<A>(_:)(a1, a3, a5);
    goto LABEL_9;
  }

  _ss9CodingKey_pWOb_0(v20, v22);
  v14 = v23;
  v15 = v24;
  __swift_project_boxed_opaque_existential_0Tm(v22, v23);
  if (((*(v15 + 16))(v14, v15) & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    goto LABEL_8;
  }

  (*(v8 + 8))(a1, a3);
  v16 = v23;
  v17 = v24;
  __swift_project_boxed_opaque_existential_0Tm(v22, v23);
  (*(v17 + 8))(v20, closure #2 in String.init<A, B>(decoding:as:), 0, &type metadata for String, v16, v17);
  __swift_destroy_boxed_opaque_existential_1Tm(v22);
  return 15;
}

uint64_t Substring.init<A>(decodingCString:as:)(unsigned __int8 *a1, ValueMetadata *a2, const char *a3, int **a4)
{
  v72 = a2;
  swift_getAssociatedTypeWitness(255, a4, a3, &protocol requirements base descriptor for _UnicodeEncoding, associated type descriptor for _UnicodeEncoding.CodeUnit);
  v8 = v7;
  v9 = *(swift_getAssociatedConformanceWitness(a4, a3, v7, &protocol requirements base descriptor for _UnicodeEncoding, associated conformance descriptor for _UnicodeEncoding._UnicodeEncoding.CodeUnit: FixedWidthInteger) + 8);
  v10 = *(*(v9 + 24) + 16);
  swift_getAssociatedTypeWitness(0, v10, v8, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v12 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v57[-v13];
  v15 = swift_checkMetadataState(0, v8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v57[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = MEMORY[0x1EEE9AC00](v16);
  v22 = &v57[-v21];
  if (a3 == &type metadata for Unicode.UTF8)
  {
    String.init(cString:)(a1, _swift_stdlib_strlen_unsigned);
    return 15;
  }

  if (a3 == &type metadata for Unicode.UTF16)
  {
    if (v72 != &type metadata for Unicode.UTF8)
    {
      if (*a1)
      {
        v28 = (a1 + 2);
        v29 = a1;
        do
        {
          v30 = *v28++;
          v29 += 2;
        }

        while (v30);
      }

      else
      {
        v29 = a1;
      }

      v36 = v29 - a1;
      if (v36 > -2)
      {
        _sSS14_fromCodeUnits_8encoding6repairSS_Sb11repairsMadetSgx_q_mSbtSlRzs16_UnicodeEncodingR_0B4UnitQy_7ElementRtzr0_lFZSRys6UInt16VG_s0H0O5UTF16OTt2g5(a1, v36 / 2, v72, 1);
        if (!v37)
        {
          goto LABEL_49;
        }

        return 15;
      }

      goto LABEL_30;
    }

    if (!a1)
    {
      goto LABEL_49;
    }

    v31 = _swift_stdlib_strlen_unsigned(a1);
    if ((v31 & 0x8000000000000000) != 0)
    {
      goto LABEL_30;
    }

    v25 = v31;
    goto LABEL_23;
  }

  if (v72 == &type metadata for Unicode.UTF8)
  {
    v23 = v20;
    v24 = _swift_stdlib_strlen_unsigned(a1);
    if (v24 < 0)
    {
      goto LABEL_30;
    }

    v25 = v24;
    v26 = *(v23 + 72);
    if (v26 != 1)
    {
      if ((v24 * v26) >> 64 != (v24 * v26) >> 63)
      {
        __break(1u);
LABEL_51:
        if (!v26)
        {
          goto LABEL_52;
        }

        LODWORD(v59) = 0;
        v58 = 2142;
        v57[0] = 2;
LABEL_30:
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      if (v26 < 1 && v26 != -1)
      {
        goto LABEL_51;
      }

      v25 = v24 * v26;
      if (v24 * v26 < 0)
      {
        goto LABEL_30;
      }
    }

LABEL_23:
    v32 = validateUTF8(_:)(a1, v25);
    if (v32 < 0)
    {
      repairUTF8(_:firstKnownBrokenRange:)(a1, v25, v33, v34);
    }

    else
    {
      specialized static String._uncheckedFromUTF8(_:isASCII:)(a1, v25, v32 & 1, v35);
    }

    return 15;
  }

  v67 = *(v9 + 64);
  v68 = v9 + 64;
  v64 = v20;
  v65 = *(v20 + 16);
  v66 = v20 + 16;
  v63 = v9 + 128;
  v61 = v9 + 96;
  v70 = (v20 + 8);
  v71 = v19;
  v58 = v10 + 24;
  v59 = v9 + 120;
  for (i = a1; ; i = &v69[*(v64 + 72)])
  {
    v69 = i;
    v42 = v71;
    v65(v22);
    if ((v67)(v42, v9))
    {
      break;
    }

    LODWORD(v62) = v67();
    v43 = (*(v9 + 128))(v71, v9);
    if ((v62 & 1) == 0)
    {
      goto LABEL_41;
    }

    if (v43 > 64)
    {
      goto LABEL_32;
    }

    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v10, v71, v12, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
    (*(AssociatedConformanceWitness + 8))(&qword_18071E0A8, 256, v12, AssociatedConformanceWitness);
    (*(v10 + 24))(v14);
    v47 = (*(*(*(v9 + 32) + 8) + 32))(v22, v18);
    v62 = *v70;
    v62(v18, v71);
    if (v47)
    {
      v48 = (*(v9 + 120))(v71, v9);
      v62(v22, v71);
      if (!v48)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v62(v22, v71);
    }

LABEL_33:
    ;
  }

  v43 = (*(v9 + 128))(v71, v9);
LABEL_41:
  if (v43 >= 64)
  {
LABEL_32:
    v73[0] = 0;
    v62 = *(v9 + 96);
    v40 = lazy protocol witness table accessor for type Int and conformance Int(v43, v44, v45);
    v41 = v71;
    (v62)(v73, &type metadata for Int, v40, v71, v9);
    v60 = (*(*(*(v9 + 16) + 8) + 8))(v22, v18, v41);
    v62 = *v70;
    v62(v18, v41);
    v62(v22, v41);
    if (v60)
    {
      goto LABEL_45;
    }

    goto LABEL_33;
  }

  v49 = (*(v9 + 120))(v71, v9);
  (*v70)(v22, v71);
  if (v49)
  {
    goto LABEL_33;
  }

LABEL_45:
  v50 = *(v64 + 72);
  if (!v50 || v69 - a1 == 0x8000000000000000 && v50 == -1)
  {
LABEL_52:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v73[0] = UnsafeBufferPointer.init(start:count:)(a1, (v69 - a1) / v50);
  v73[1] = v51;
  v54 = type metadata accessor for UnsafeBufferPointer(0, v71, v52, v53);
  swift_getWitnessTable(protocol conformance descriptor for UnsafeBufferPointer<A>, v54, v55);
  static String._fromCodeUnits<A, B>(_:encoding:repair:)(v73, v72, 1, v54);
  if (!v56)
  {
LABEL_49:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return 15;
}

void Substring.withCString<A>(_:)(void (*a1)(__objc2_class **), uint64_t a2, Swift::UInt64 a3, Swift::UInt64 a4, unint64_t a5, unint64_t a6)
{
  v8 = Substring.description.getter(a3, a4, a5, a6);
  v10 = v9;
  String.withCString<A>(_:)(a1, a2, v8, v9);
  v10;
}

void Substring.withCString<A, B>(encodedAs:_:)(ValueMetadata *a1@<X0>, void (*a2)(unint64_t)@<X1>, uint64_t a3@<X2>, Swift::UInt64 a4@<X3>, Swift::UInt64 a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t (**a8)(char *, const char *)@<X7>, uint64_t a9@<X8>, const char *a10, uint64_t a11)
{
  v16 = Substring.description.getter(a4, a5, a6, a7);
  v18 = v17;
  if (a1 == &type metadata for Unicode.UTF8)
  {
    MEMORY[0x1EEE9AC00](v16);
    v20[2] = a8;
    v20[3] = a10;
    v20[4] = a11;
    v20[5] = a2;
    v20[6] = a3;
    String.withCString<A>(_:)(closure #1 in String.withCString<A, B>(encodedAs:_:)partial apply, v20, v19, v18);
    v18;
  }

  else
  {
    String._slowWithCString<A, B>(encodedAs:_:)(a2, a3, v16, v17, a8, a10, a11, a9);
    v18;
  }
}

Swift::Int Substring.hashValue.getter(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = 0u;
  v9 = 0u;
  v5 = 0;
  v6 = veorq_s8(_swift_stdlib_Hashing_parameters, xmmword_18071DB60);
  v7 = veorq_s8(_swift_stdlib_Hashing_parameters, xmmword_18071DB70);
  _StringGutsSlice._normalizedHash(into:)(&v5, a3, a4, a1 >> 16, a2 >> 16);
  return Hasher._finalize()();
}

unint64_t protocol witness for StringProtocol.utf8.getter in conformance Substring@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 16) = v3;
  *(a1 + 24) = v2;
  return v2;
}

Swift::String __swiftcall Substring.lowercased()()
{
  v4 = Substring.lowercased()(v0, v1, v2, v3, String.lowercased());
  result._object = v5;
  result._countAndFlagsBits = v4;
  return result;
}

uint64_t protocol witness for StringProtocol.lowercased() in conformance Substring(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = Substring.description.getter(*v3, v3[1], v3[2], v3[3]);
  v7 = v6;
  v8 = a3(v5);
  v7;
  return v8;
}

Swift::String __swiftcall Substring.uppercased()()
{
  v4 = Substring.lowercased()(v0, v1, v2, v3, String.uppercased());
  result._object = v5;
  result._countAndFlagsBits = v4;
  return result;
}

uint64_t Substring.lowercased()(Swift::UInt64 a1, Swift::UInt64 a2, unint64_t a3, unint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = Substring.description.getter(a1, a2, a3, a4);
  v8 = v7;
  v9 = a5(v6);
  v8;
  return v9;
}

uint64_t protocol witness for StringProtocol.init<A, B>(decoding:as:) in conformance Substring@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  result = Substring.init<A, B>(decoding:as:)(a1, a2, a3, a4, a5);
  *a6 = 15;
  a6[1] = v8;
  a6[2] = v9;
  a6[3] = v10;
  return result;
}

uint64_t protocol witness for StringProtocol.init(cString:) in conformance Substring@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized Substring.init(cString:)(a1);
  *a2 = result;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  return result;
}

uint64_t protocol witness for StringProtocol.init<A>(decodingCString:as:) in conformance Substring@<X0>(unsigned __int8 *a1@<X0>, ValueMetadata *a2@<X1>, const char *a3@<X2>, int **a4@<X3>, void *a5@<X8>)
{
  result = Substring.init<A>(decodingCString:as:)(a1, a2, a3, a4);
  *a5 = 15;
  a5[1] = v7;
  a5[2] = v8;
  a5[3] = v9;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Substring()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  specialized Hasher.init(_seed:)(0, v6);
  _StringGutsSlice._normalizedHash(into:)(v6, v3, v4, v1 >> 16, v2 >> 16);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance Substring(unint64_t *a1, ValueMetadata *a2)
{
  v4 = *v2;
  v5 = v2[1];
  if (a2 == &type metadata for String)
  {
    if ((v5 & 0x2000000000000000) != 0)
    {
      v7 = HIBYTE(v5) & 0xF;
    }

    else
    {
      v7 = v4 & 0xFFFFFFFFFFFFLL;
    }

    v6 = 0;
  }

  else
  {
    v6 = v4 >> 16;
    v7 = v5 >> 16;
    v4 = v2[2];
    v5 = v2[3];
  }

  _StringGutsSlice._normalizedHash(into:)(a1, v4, v5, v6, v7);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Substring(uint64_t a1, ValueMetadata *a2)
{
  v5 = *v2;
  v4 = v2[1];
  v6 = v2[2];
  v7 = v2[3];
  specialized Hasher.init(_seed:)(a1, v13);
  if (a2 == &type metadata for String)
  {
    if ((v4 & 0x2000000000000000) != 0)
    {
      v9 = HIBYTE(v4) & 0xF;
    }

    else
    {
      v9 = v5 & 0xFFFFFFFFFFFFLL;
    }

    v10 = v5;
    v11 = v4;
    v8 = 0;
  }

  else
  {
    v8 = v5 >> 16;
    v9 = v4 >> 16;
    v10 = v6;
    v11 = v7;
  }

  _StringGutsSlice._normalizedHash(into:)(v13, v10, v11, v8, v9);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Comparable.< infix(_:_:) in conformance Substring(unint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a2[2];
  v9 = a2[3];
  v10 = v4 >> 16;
  v11 = v5 >> 16;
  v12 = *a2 >> 16;
  v13 = a2[1] >> 16;
  if (v6 == v8 && v7 == v9 && v10 == v12 && v11 == v13)
  {
    return 0;
  }

  else
  {
    return _stringCompareInternal(_:_:_:_:expecting:)(v6, v7, v10, v11, v8, v9, v12, v13, 1) & 1;
  }
}

uint64_t protocol witness for static Comparable.<= infix(_:_:) in conformance Substring(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  v9 = a2[3];
  v10 = v6 >> 16;
  v11 = v7 >> 16;
  v12 = v2 >> 16;
  v13 = v3 >> 16;
  v14 = 1;
  if (v8 != v4 || v9 != v5 || v10 != v12 || v11 != v13)
  {
    v14 = _stringCompareInternal(_:_:_:_:expecting:)(v8, v9, v10, v11, v4, v5, v12, v13, 1) ^ 1;
  }

  return v14 & 1;
}

uint64_t protocol witness for static Comparable.>= infix(_:_:) in conformance Substring(unint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a2[2];
  v9 = a2[3];
  v10 = v4 >> 16;
  v11 = v5 >> 16;
  v12 = *a2 >> 16;
  v13 = a2[1] >> 16;
  v14 = 1;
  if (v6 != v8 || v7 != v9 || v10 != v12 || v11 != v13)
  {
    v14 = _stringCompareInternal(_:_:_:_:expecting:)(v6, v7, v10, v11, v8, v9, v12, v13, 1) ^ 1;
  }

  return v14 & 1;
}

uint64_t protocol witness for static Comparable.> infix(_:_:) in conformance Substring(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  v9 = a2[3];
  v10 = v6 >> 16;
  v11 = v7 >> 16;
  v12 = v2 >> 16;
  v13 = v3 >> 16;
  if (v8 == v4 && v9 == v5 && v10 == v12 && v11 == v13)
  {
    return 0;
  }

  else
  {
    return _stringCompareInternal(_:_:_:_:expecting:)(v8, v9, v10, v11, v4, v5, v12, v13, 1) & 1;
  }
}

uint64_t (*protocol witness for Collection.subscript.read in conformance Substring(uint64_t *a1, Swift::UInt64 *a2))()
{
  v4 = Substring.subscript.getter(*a2, *v2, *(v2 + 8), *(v2 + 16), *(v2 + 24));
  a1[1] = v5;
  a1[2] = v5;
  *a1 = v4;
  return protocol witness for Collection.subscript.read in conformance Substring;
}

unint64_t protocol witness for Collection.subscript.getter in conformance Substring@<X0>(unint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v4._rawBits = a1[1];
  *a2 = specialized Substring.subscript.getter(*a1, v4, *v2, *(v2 + 8), *(v2 + 16), *(v2 + 24));
  a2[1] = v5;
  a2[2] = v7;
  a2[3] = v6;

  return v6;
}

unint64_t Substring.subscript.getter(unint64_t a1, Swift::String::Index a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v6 = specialized Substring.subscript.getter(a1, a2, a3, a4, a5, a6);
  v7;
  return v6;
}

unint64_t protocol witness for Collection.indices.getter in conformance Substring@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = v1[3];
  *a1 = *v1;
  v4 = *(v1 + 1);
  *(a1 + 8) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v2;
  *(a1 + 40) = v4;
  return v3;
}

Swift::String::Index protocol witness for BidirectionalCollection.index(_:offsetBy:) in conformance Substring@<X0>(Swift::String::Index *a1@<X0>, Swift::Int a2@<X1>, Swift::String::Index *a3@<X8>)
{
  result._rawBits = Substring.index(_:offsetBy:)(a1->_rawBits, a2)._rawBits;
  a3->_rawBits = result._rawBits;
  return result;
}

Swift::String::Index protocol witness for BidirectionalCollection.index(_:offsetBy:limitedBy:) in conformance Substring@<X0>(Swift::String::Index *a1@<X0>, Swift::Int a2@<X1>, Swift::String::Index *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = Substring.index(_:offsetBy:limitedBy:)(a1->_rawBits, a2, a3->_rawBits);
  *a4 = v6.value._rawBits;
  *(a4 + 8) = v6.is_nil;
  return v6.value;
}

uint64_t protocol witness for BidirectionalCollection.index(before:) in conformance Substring@<X0>(void *a1@<X0>, uint64_t (*a2)(void, void, void, void, void)@<X3>, uint64_t *a3@<X8>)
{
  result = a2(*a1, *v3, v3[1], v3[2], v3[3]);
  *a3 = result;
  return result;
}

uint64_t protocol witness for BidirectionalCollection.formIndex(before:) in conformance Substring(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, void, void, void, void))
{
  result = a4(*a1, *v4, v4[1], v4[2], v4[3]);
  *a1 = result;
  return result;
}

Swift::UInt64 _StringGuts._opaqueCharacterStride(endingAt:in:)(int64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if ((a5 & 0x1000000000000000) == 0)
  {
    if ((a5 & 0x2000000000000000) == 0)
    {
      if ((a4 & 0x1000000000000000) != 0)
      {
        v7 = ((a5 & 0xFFFFFFFFFFFFFFFLL) + 32);
        if (a2 < a1)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v7 = _StringObject.sharedUTF8.getter(a4, a5);
        if (a2 < a1)
        {
LABEL_5:
          v8 = a1;
          do
          {
            v9 = v7[--v8] & 0xC0;
          }

          while (v9 == 128);
          v10 = _decodeScalar(_:startingAt:)(v7, a2, v8);
          if (v8 <= a2)
          {
            v20 = v8;
            return a1 - v20;
          }

          v12 = v10;
          v13 = v7 - 2;
          v104 = xmmword_18071DD50;
          while (1)
          {
            v20 = v8;
            v64 = v12;
            v65 = v8 - 1;
            v66 = v7[--v8] & 0xC0;
            if (v66 == 128)
            {
              v67 = v20;
              do
              {
                v68 = v13[v67--] & 0xC0;
              }

              while (v68 == 128);
              v8 = v67 - 1;
            }

            v69 = _decodeScalar(_:startingAt:)(v7, v11, v8);
            v12 = v69;
            if (v69 == 13 && v64 == 10)
            {
              goto LABEL_124;
            }

            v70 = vdupq_n_s32(v69);
            if (((vmaxv_u8(vmovn_s16(vuzp1q_s16(vcgtq_u32(vaddq_s32(v70, v104), xmmword_18071DD70), vcgtq_u32(vaddq_s32(v70, xmmword_18071DD60), xmmword_18071DD80)))) & 1) != 0 || v69 - 65438 > 0xFFFFFF62 || v69 <= 0x2FF) && hasBreakWhenPaired #1 (_:) in _quickHasGraphemeBreakBetween(_:_:)(v64))
            {
              return a1 - v20;
            }

            v71 = Unicode._GraphemeBreakProperty.init(from:)(v12);
            v72 = Unicode._GraphemeBreakProperty.init(from:)(v64);
            if (v71)
            {
              if (v71 == 1)
              {
                return a1 - v20;
              }

              if (v72 > 8u)
              {
                if (v72 > 0xAu)
                {
                  if (v72 == 11)
                  {
                    if (v71 > 0xBu)
                    {
                      goto LABEL_156;
                    }

                    v73 = 1 << v71;
                    v74 = 2224;
LABEL_206:
                    if ((v73 & v74) == 0)
                    {
                      goto LABEL_156;
                    }

                    goto LABEL_124;
                  }

                  if (v72 == 12)
                  {
                    goto LABEL_124;
                  }
                }

                else
                {
                  if (v72 == 9)
                  {
                    goto LABEL_124;
                  }

                  if (v72 == 10)
                  {
                    if (v71 > 0xBu)
                    {
                      goto LABEL_156;
                    }

                    v73 = 1 << v71;
                    v74 = 3296;
                    goto LABEL_206;
                  }
                }

                goto LABEL_165;
              }

              if (v72 > 4u)
              {
                if (v72 != 5 && v72 != 6)
                {
                  goto LABEL_165;
                }
              }

              else
              {
                if (v72 == 2)
                {
                  goto LABEL_124;
                }

                if (v72 != 4)
                {
                  if (v72 == 1)
                  {
                    return a1 - v20;
                  }

LABEL_165:
                  if (v71 != 7)
                  {
                    if (v71 == 8)
                    {
                      if (v72 != 8)
                      {
                        goto LABEL_156;
                      }

                      if ((v7[v65] & 0xC0) == 0x80)
                      {
                        v98 = v20;
                        do
                        {
                          v99 = v13[v98--] & 0xC0;
                        }

                        while (v99 == 128);
                        v65 = v98 - 1;
                      }

                      _decodeScalar(_:startingAt:)(v7, v11, v65);
                      if (v65 > a2)
                      {
                        v100 = 0;
                        do
                        {
                          v101 = v65 - 1;
                          if ((v7[v65 - 1] & 0xC0) == 0x80)
                          {
                            do
                            {
                              v102 = v13[v65--] & 0xC0;
                            }

                            while (v102 == 128);
                            v101 = v65 - 1;
                          }

                          v103 = _decodeScalar(_:startingAt:)(v7, v11, v101);
                          result = Unicode._GraphemeBreakProperty.init(from:)(v103);
                          if (result != 8)
                          {
                            break;
                          }

                          v63 = __OFADD__(v100++, 1);
                          if (v63)
                          {
                            goto LABEL_231;
                          }

                          v65 = v101;
                        }

                        while (v101 > a2);
                        if (v100)
                        {
                          return a1 - v20;
                        }
                      }
                    }

                    else
                    {
                      if (v71 != 12 || v72 != 3)
                      {
                        goto LABEL_156;
                      }

                      if ((v7[v65] & 0xC0) == 0x80)
                      {
                        v78 = v20;
                        do
                        {
                          v79 = v13[v78--] & 0xC0;
                        }

                        while (v79 == 128);
                        v65 = v78 - 1;
                      }

                      _decodeScalar(_:startingAt:)(v7, v11, v65);
                      if (v65 <= a2)
                      {
                        return a1 - v20;
                      }

                      while (1)
                      {
                        v80 = v65 - 1;
                        if ((v7[v65 - 1] & 0xC0) == 0x80)
                        {
                          do
                          {
                            v81 = v13[v65--] & 0xC0;
                          }

                          while (v81 == 128);
                          v80 = v65 - 1;
                        }

                        v82 = _decodeScalar(_:startingAt:)(v7, v11, v80);
                        v83 = Unicode._GraphemeBreakProperty.init(from:)(v82);
                        if (v83 != 2)
                        {
                          break;
                        }

                        v65 = v80;
                        if (v80 <= a2)
                        {
                          return a1 - v20;
                        }
                      }

                      if (v83 != 3)
                      {
                        return a1 - v20;
                      }
                    }
                  }

                  goto LABEL_124;
                }
              }

              if (v71 != 4 && v71 != 7)
              {
                goto LABEL_156;
              }
            }

            else
            {
              if (v72 > 0xCu)
              {
                goto LABEL_156;
              }

              if (((1 << v72) & 0x1204) == 0)
              {
                if (((1 << v72) & 3) != 0)
                {
                  return a1 - v20;
                }

LABEL_156:
                if (_swift_stdlib_isInCB_Consonant(v64) && (v71 == 12 || v71 == 2))
                {
                  if (_swift_stdlib_isInCB_Consonant(v12))
                  {
                    HIDWORD(v77) = v12 - 2381;
                    LODWORD(v77) = v12 - 2381;
                    v76 = v77 >> 7;
                    if (v76 > 8 || ((1 << v76) & 0x15B) == 0)
                    {
                      return a1 - v20;
                    }
                  }

                  else if (v12 == 8204)
                  {
                    return a1 - v20;
                  }

                  if ((v7[v65] & 0xC0) == 0x80)
                  {
                    v84 = v20;
                    do
                    {
                      v85 = v13[v84--] & 0xC0;
                    }

                    while (v85 == 128);
                    v65 = v84 - 1;
                  }

                  v86 = _decodeScalar(_:startingAt:)(v7, v75, v65);
                  if (v65 > a2)
                  {
                    HIDWORD(v88) = v86 - 2381;
                    LODWORD(v88) = v86 - 2381;
                    v89 = ((v88 >> 7) < 9) & (0x15Bu >> (v88 >> 7));
                    while (2)
                    {
                      v90 = v65;
                      while (1)
                      {
                        v65 = v90 - 1;
                        if ((v7[v90 - 1] & 0xC0) == 0x80)
                        {
                          do
                          {
                            v91 = v13[v90--] & 0xC0;
                          }

                          while (v91 == 128);
                          v65 = v90 - 1;
                        }

                        v92 = _decodeScalar(_:startingAt:)(v7, v87, v65);
                        if (_swift_stdlib_isInCB_Consonant(v92))
                        {
                          if ((v89 & 1) == 0)
                          {
                            return a1 - v20;
                          }

                          goto LABEL_124;
                        }

                        v93 = Unicode._GraphemeBreakProperty.init(from:)(v92);
                        if (v93 != 2 && v93 != 12)
                        {
                          return a1 - v20;
                        }

                        v94 = Unicode.Scalar._isInCBExtend.getter(v92);
                        HIDWORD(v95) = v92 - 2381;
                        LODWORD(v95) = v92 - 2381;
                        v96 = ((v95 >> 7) < 9) & (0x15Bu >> (v95 >> 7));
                        if ((v94 & 1) == 0)
                        {
                          break;
                        }

                        if (v65 <= a2)
                        {
                          v97 = 1;
                        }

                        else
                        {
                          v97 = v96;
                        }

                        v90 = v65;
                        if (v97)
                        {
                          return a1 - v20;
                        }
                      }

                      if (v65 <= a2)
                      {
                        LOBYTE(v96) = 0;
                      }

                      LOBYTE(v89) = 1;
                      if (v96)
                      {
                        continue;
                      }

                      break;
                    }
                  }
                }

                return a1 - v20;
              }
            }

LABEL_124:
            v20 = v8;
            if (v8 <= a2)
            {
              return a1 - v20;
            }
          }
        }
      }

LABEL_229:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v105[0] = a4;
    v105[1] = a5 & 0xFFFFFFFFFFFFFFLL;
    if (a2 >= a1)
    {
      goto LABEL_229;
    }

    v14 = a1 - 1;
    if ((*(v105 + a1 - 1) & 0xC0) == 0x80)
    {
      v15 = a1;
      do
      {
        v16 = v104.i8[v15-- + 14] & 0xC0;
      }

      while (v16 == 128);
      v14 = v15 - 1;
    }

    v17 = _decodeScalar(_:startingAt:)(v105, a2, v14);
    if (v14 <= a2)
    {
      v20 = v14;
      return a1 - v20;
    }

    v19 = v17;
    v104 = xmmword_18071DD50;
    while (1)
    {
      v20 = v14;
      v22 = v19;
      v23 = v14 - 1;
      v24 = *(v105 + --v14) & 0xC0;
      if (v24 == 128)
      {
        v25 = v20;
        do
        {
          v26 = v104.i8[v25-- + 14] & 0xC0;
        }

        while (v26 == 128);
        v14 = v25 - 1;
      }

      v27 = _decodeScalar(_:startingAt:)(v105, v18, v14);
      v19 = v27;
      if (v27 == 13 && v22 == 10)
      {
        goto LABEL_20;
      }

      v28 = vdupq_n_s32(v27);
      if ((vmaxv_u8(vmovn_s16(vuzp1q_s16(vcgtq_u32(vaddq_s32(v28, v104), xmmword_18071DD70), vcgtq_u32(vaddq_s32(v28, xmmword_18071DD60), xmmword_18071DD80)))) & 1) != 0 || v27 - 65438 > 0xFFFFFF62 || v27 <= 0x2FF)
      {
        v29 = vdupq_n_s32(v22);
        if ((vmaxv_u8(vmovn_s16(vuzp1q_s16(vcgtq_u32(vaddq_s32(v29, v104), xmmword_18071DD70), vcgtq_u32(vaddq_s32(v29, xmmword_18071DD60), xmmword_18071DD80)))) & 1) != 0 || v22 - 65438 > 0xFFFFFF62 || v22 < 0x300)
        {
          return a1 - v20;
        }
      }

      v30 = Unicode._GraphemeBreakProperty.init(from:)(v27);
      v31 = Unicode._GraphemeBreakProperty.init(from:)(v22);
      if (!v30)
      {
        if (v31 <= 0xCu)
        {
          if (((1 << v31) & 0x1204) != 0)
          {
            goto LABEL_20;
          }

          if (((1 << v31) & 3) != 0)
          {
            return a1 - v20;
          }
        }

        goto LABEL_54;
      }

      if (v30 == 1)
      {
        return a1 - v20;
      }

      if (v31 <= 8u)
      {
        break;
      }

      if (v31 > 0xAu)
      {
        if (v31 != 11)
        {
          if (v31 == 12)
          {
            goto LABEL_20;
          }

LABEL_63:
          if (v30 == 7)
          {
            goto LABEL_20;
          }

          if (v30 == 8)
          {
            if (v31 == 8)
            {
              if ((*(v105 + v23) & 0xC0) == 0x80)
              {
                v57 = v20;
                do
                {
                  v58 = v104.i8[v57-- + 14] & 0xC0;
                }

                while (v58 == 128);
                v23 = v57 - 1;
              }

              _decodeScalar(_:startingAt:)(v105, v18, v23);
              if (v23 > a2)
              {
                v59 = 0;
                do
                {
                  v60 = v23 - 1;
                  if ((*(v105 + v23 - 1) & 0xC0) == 0x80)
                  {
                    do
                    {
                      v61 = v104.i8[v23-- + 14] & 0xC0;
                    }

                    while (v61 == 128);
                    v60 = v23 - 1;
                  }

                  v62 = _decodeScalar(_:startingAt:)(v105, v18, v60);
                  result = Unicode._GraphemeBreakProperty.init(from:)(v62);
                  if (result != 8)
                  {
                    break;
                  }

                  v63 = __OFADD__(v59++, 1);
                  if (v63)
                  {
                    __break(1u);
LABEL_231:
                    __break(1u);
                    return result;
                  }

                  v23 = v60;
                }

                while (v60 > a2);
                if (v59)
                {
                  return a1 - v20;
                }
              }

              goto LABEL_20;
            }
          }

          else if (v30 == 12 && v31 == 3)
          {
            if ((*(v105 + v23) & 0xC0) == 0x80)
            {
              v37 = v20;
              do
              {
                v38 = v104.i8[v37-- + 14] & 0xC0;
              }

              while (v38 == 128);
              v23 = v37 - 1;
            }

            _decodeScalar(_:startingAt:)(v105, v18, v23);
            if (v23 <= a2)
            {
              return a1 - v20;
            }

            while (1)
            {
              v39 = v23 - 1;
              if ((*(v105 + v23 - 1) & 0xC0) == 0x80)
              {
                do
                {
                  v40 = v104.i8[v23-- + 14] & 0xC0;
                }

                while (v40 == 128);
                v39 = v23 - 1;
              }

              v41 = _decodeScalar(_:startingAt:)(v105, v18, v39);
              v42 = Unicode._GraphemeBreakProperty.init(from:)(v41);
              if (v42 != 2)
              {
                break;
              }

              v23 = v39;
              if (v39 <= a2)
              {
                return a1 - v20;
              }
            }

            if (v42 != 3)
            {
              return a1 - v20;
            }

            goto LABEL_20;
          }

          goto LABEL_54;
        }

        if (v30 <= 0xBu)
        {
          v32 = 1 << v30;
          v33 = 2224;
LABEL_104:
          if ((v32 & v33) != 0)
          {
            goto LABEL_20;
          }
        }
      }

      else
      {
        if (v31 == 9)
        {
          goto LABEL_20;
        }

        if (v31 != 10)
        {
          goto LABEL_63;
        }

        if (v30 <= 0xBu)
        {
          v32 = 1 << v30;
          v33 = 3296;
          goto LABEL_104;
        }
      }

LABEL_54:
      if (!_swift_stdlib_isInCB_Consonant(v22) || v30 != 12 && v30 != 2)
      {
        return a1 - v20;
      }

      if (_swift_stdlib_isInCB_Consonant(v19))
      {
        HIDWORD(v36) = v19 - 2381;
        LODWORD(v36) = v19 - 2381;
        v35 = v36 >> 7;
        if (v35 > 8 || ((1 << v35) & 0x15B) == 0)
        {
          return a1 - v20;
        }
      }

      else if (v19 == 8204)
      {
        return a1 - v20;
      }

      if ((*(v105 + v23) & 0xC0) == 0x80)
      {
        v43 = v20;
        do
        {
          v44 = v104.i8[v43-- + 14] & 0xC0;
        }

        while (v44 == 128);
        v23 = v43 - 1;
      }

      v45 = _decodeScalar(_:startingAt:)(v105, v34, v23);
      if (v23 <= a2)
      {
        return a1 - v20;
      }

      HIDWORD(v47) = v45 - 2381;
      LODWORD(v47) = v45 - 2381;
      v48 = ((v47 >> 7) < 9) & (0x15Bu >> (v47 >> 7));
LABEL_85:
      v49 = v23;
      while (1)
      {
        v23 = v49 - 1;
        if ((*(v105 + v49 - 1) & 0xC0) == 0x80)
        {
          do
          {
            v50 = v104.i8[v49-- + 14] & 0xC0;
          }

          while (v50 == 128);
          v23 = v49 - 1;
        }

        v51 = _decodeScalar(_:startingAt:)(v105, v46, v23);
        if (_swift_stdlib_isInCB_Consonant(v51))
        {
          break;
        }

        v52 = Unicode._GraphemeBreakProperty.init(from:)(v51);
        if (v52 != 2 && v52 != 12)
        {
          return a1 - v20;
        }

        v53 = Unicode.Scalar._isInCBExtend.getter(v51);
        HIDWORD(v54) = v51 - 2381;
        LODWORD(v54) = v51 - 2381;
        v55 = ((v54 >> 7) < 9) & (0x15Bu >> (v54 >> 7));
        if ((v53 & 1) == 0)
        {
          if (v23 <= a2)
          {
            LOBYTE(v55) = 0;
          }

          LOBYTE(v48) = 1;
          if ((v55 & 1) == 0)
          {
            return a1 - v20;
          }

          goto LABEL_85;
        }

        if (v23 <= a2)
        {
          v56 = 1;
        }

        else
        {
          v56 = v55;
        }

        v49 = v23;
        if (v56)
        {
          return a1 - v20;
        }
      }

      if ((v48 & 1) == 0)
      {
        return a1 - v20;
      }

LABEL_20:
      v20 = v14;
      if (v14 <= a2)
      {
        return a1 - v20;
      }
    }

    if (v31 > 4u)
    {
      if (v31 == 5 || v31 == 6)
      {
        goto LABEL_52;
      }
    }

    else
    {
      switch(v31)
      {
        case 2u:
          goto LABEL_20;
        case 4u:
LABEL_52:
          if (v30 == 4 || v30 == 7)
          {
            goto LABEL_20;
          }

          goto LABEL_54;
        case 1u:
          return a1 - v20;
      }
    }

    goto LABEL_63;
  }

  return _StringGuts._foreignOpaqueCharacterStride(endingAt:in:)(a1, a2, a4, a5);
}

uint64_t Substring.customMirror.getter@<X0>(Swift::UInt64 a1@<X0>, Swift::UInt64 a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = a4;
  v6 = a3;
  v8 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v8 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (a1 >> 16 || a2 >> 16 != v8)
  {
    v6 = specialized static String._copying(_:)(a1, a2, a3, a4);
    v5 = v9;
  }

  else
  {
    a4;
  }

  v23[0] = v6;
  v23[1] = v5;
  v21[0] = 0;
  v21[1] = 0;
  v10 = static Mirror._superclassIterator<A>(_:_:)(v23, v21, &type metadata for String);
  v12 = v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss14_CollectionBoxCys15LazyMapSequenceVys05EmptyA0VyytGSSSg5label_yp5valuetGGMd, _ss14_CollectionBoxCys15LazyMapSequenceVys05EmptyA0VyytGSSSg5label_yp5valuetGGMR);
  v14 = swift_allocObject(v13, 0x40, 7uLL);
  v14[6] = specialized closure #1 in Mirror.init<A, B>(_:unlabeledChildren:displayStyle:ancestorRepresentation:);
  v14[7] = 0;
  v15 = canonical specialized generic type metadata accessor for _IndexBox<Int>();
  v16 = swift_allocObject(v15, 0x18, 7uLL);
  v16[2] = 0;
  v17 = swift_allocObject(v15, 0x18, 7uLL);
  v17[2] = 0;
  v14[2] = v16;
  v14[3] = &protocol witness table for _IndexBox<A>;
  v14[4] = v17;
  v14[5] = &protocol witness table for _IndexBox<A>;
  v22[0] = v6;
  v22[1] = v5;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss21CustomLeafReflectable_pMd, _ss21CustomLeafReflectable_pMR);
  result = swift_dynamicCast(v21, v22, &type metadata for String, v18, 6uLL);
  v20 = result;
  if (result)
  {
    result = __swift_destroy_boxed_opaque_existential_1Tm(v21);
  }

  *a5 = &type metadata for String;
  *(a5 + 8) = v14;
  *(a5 + 16) = 9;
  *(a5 + 24) = v10;
  *(a5 + 32) = v12;
  *(a5 + 40) = v20;
  return result;
}

uint64_t Substring.debugDescription.getter(Swift::UInt64 a1, Swift::UInt64 x1_0, unint64_t a3, unint64_t a4)
{
  v4 = a4;
  v5 = HIBYTE(a4) & 0xF;
  v223 = a3;
  v6 = a3 & 0xFFFFFFFFFFFFLL;
  if ((a4 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(a4) & 0xF;
  }

  else
  {
    v7 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (a1 >> 16 || x1_0 >> 16 != v7)
  {
    v8 = specialized static String._copying(_:)(a1, x1_0, a3, a4);
    v4 = v9;
    v5 = HIBYTE(v9) & 0xF;
    v223 = v8;
    v6 = v8 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    a4;
  }

  v231.value._countAndFlagsBits = 34;
  v231.value._object = 0xE100000000000000;
  if ((v4 & 0x2000000000000000) != 0)
  {
    v10 = v5;
  }

  else
  {
    v10 = v6;
  }

  v221 = v4;
  v222 = v10;
  if (!v10)
  {
LABEL_218:
    v229 = 34;
    v230 = 0xE100000000000000;
    countAndFlagsBits = v231.value._countAndFlagsBits;
    object = v231.value._object;
    v173 = (v231.value._object >> 56) & 0xF;
    if ((v231.value._object & 0x2000000000000000) == 0)
    {
      v173 = v231.value._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (!v173)
    {
LABEL_270:
      v4;
      goto LABEL_273;
    }

    while (1)
    {
      v31 = v229;
      v28 = v230;
      v178 = specialized Collection.first.getter(v229, v230);
      if ((v178 & 0x100000000) != 0)
      {
        goto LABEL_279;
      }

      v227 = countAndFlagsBits;
      v228 = object;
      v231.value._countAndFlagsBits = 0;
      v231.value._object = 0xE000000000000000;
      v179 = specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(v178);
      v181 = v180;
      _StringGuts.append(_:)(v179, v180, v182, v183, v184, v185, v186, v187, v188, v189);
      v181;
      v23 = v227;
      v22 = v228;
      v228;
      0xE000000000000000;
      v231.value._countAndFlagsBits = v23;
      v231.value._object = v22;
      v190 = HIBYTE(v22) & 0xF;
      if ((v22 & 0x2000000000000000) == 0)
      {
        v190 = v23;
      }

      v191 = 7;
      if (((v22 >> 60) & ((v23 & 0x800000000000000) == 0)) != 0)
      {
        v191 = 11;
      }

      v192._rawBits = v191 | (v190 << 16);
      v193._rawBits = _StringGuts.validateInclusiveCharacterIndex_5_7(_:)(v192)._rawBits;
      rawBits = v193._rawBits;
      if (!(v193._rawBits >> 14))
      {
        break;
      }

      v195 = v193._rawBits >> 16;
      if (v193._rawBits >= 0x20000)
      {
        if ((v22 & 0x1000000000000000) == 0)
        {
          if ((v22 & 0x2000000000000000) != 0)
          {
            v227 = v23;
            v228 = (v22 & 0xFFFFFFFFFFFFFFLL);
            v197 = *&v226[v195];
          }

          else
          {
            if ((v23 & 0x1000000000000000) != 0)
            {
              v196 = ((v22 & 0xFFFFFFFFFFFFFFFLL) + 32);
            }

            else
            {
              v196 = _StringObject.sharedUTF8.getter(v23, v22);
              if (!v196)
              {
                _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
              }
            }

            v197 = *&v196[v195 - 2];
          }

          if (v197 != 2573 && (v197 & 0x8080) == 0)
          {
            v195 = 1;
LABEL_245:
            v199 = v195 << 8;
            goto LABEL_252;
          }
        }

        v195 = _StringGuts._opaqueComplexCharacterStride(endingAt:)(rawBits >> 16);
      }

      if (v195 >= 64)
      {
        v199 = 63;
      }

      else
      {
        v199 = v195 << 8;
      }

LABEL_252:
      v22;
      v200._rawBits = _StringGuts.validateInclusiveScalarIndex(_:)(v192)._rawBits;
      if (!(v200._rawBits >> 14))
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v201 = v200._rawBits;
      v22;
      if ((v22 & 0x1000000000000000) != 0)
      {
        v206 = String.UnicodeScalarView._foreignIndex(before:)(v201)._rawBits;
        v22;
      }

      else
      {
        if ((v22 & 0x2000000000000000) != 0)
        {
          v203 = 0;
          v227 = v23;
          v228 = (v22 & 0xFFFFFFFFFFFFFFLL);
          do
          {
            v205 = v226[(v201 >> 16) + 1 + v203--] & 0xC0;
          }

          while (v205 == 128);
        }

        else
        {
          if ((v23 & 0x1000000000000000) != 0)
          {
            v202 = ((v22 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v202 = _StringObject.sharedUTF8.getter(v23, v22);
          }

          v203 = 0;
          do
          {
            v204 = v202[(v201 >> 16) - 1 + v203--] & 0xC0;
          }

          while (v204 == 128);
        }

        v22;
        v206 = (v201 - -65536 * v203) & 0xFFFFFFFFFFFF0000;
      }

      if (((rawBits - (v195 << 16)) & 0xFFFFFFFFFFFF0000 | v199) >> 14 >= v206 >> 14)
      {
        goto LABEL_272;
      }

      v227 = v23;
      v228 = v22;
      specialized RangeReplaceableCollection<>.removeLast()();
      v208 = v227;
      v207 = v228;
      v228;
      0xE000000000000000;
      v227 = v208;
      v228 = v207;
      v207;
      v209 = specialized RangeReplaceableCollection<>.removeLast()();
      0xE000000000000000;
      v231.value._countAndFlagsBits = v227;
      v231.value._object = v228;
      v210 = Unicode.Scalar._escaped(asASCII:)(1);
      v174 = v210.value._object;
      if (v210.value._object)
      {
        v175 = v210.value._countAndFlagsBits;
      }

      else
      {
        v175 = specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(v209);
      }

      v211 = v174;
      v4 = v221;
      v176._rawBits = 15;
      specialized String.UnicodeScalarView.replaceSubrange<A>(_:with:)(0xFuLL, v176, v175, v211);
      v211;
      countAndFlagsBits = v231.value._countAndFlagsBits;
      object = v231.value._object;
      v177 = (v231.value._object >> 56) & 0xF;
      if ((v231.value._object & 0x2000000000000000) == 0)
      {
        v177 = v231.value._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      }

      if (!v177)
      {
        goto LABEL_270;
      }
    }

    if (_swift_stdlib_isExecutableLinkedOnOrAfter(0x50700u))
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v195 = 0;
    goto LABEL_245;
  }

  v217 = (v4 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v218 = v4 & 0xFFFFFFFFFFFFFFLL;
  v4;
  v12 = 0;
  v13 = 1;
  while (1)
  {
    if ((v4 & 0x1000000000000000) != 0)
    {
      v18 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)((v12 << 16));
      scalarLength = v18.scalarLength;
      value = v18._0._value;
    }

    else
    {
      if ((v4 & 0x2000000000000000) != 0)
      {
        v229 = v223;
        v230 = v218;
        v15 = &v229;
      }

      else
      {
        v15 = v217;
        if ((v223 & 0x1000000000000000) == 0)
        {
          v15 = _StringObject.sharedUTF8.getter(v223, v4);
        }
      }

      value = _decodeScalar(_:startingAt:)(v15, v11, v12);
    }

    v19 = value;
    v12 += scalarLength;
    v20 = Unicode.Scalar._escaped(asASCII:)(0);
    if (!v20.value._object)
    {
      v42 = v231.value._countAndFlagsBits;
      v41 = v231.value._object;
      if (v13)
      {
        LODWORD(v229) = 0;
        v43 = specialized BidirectionalCollection.last.getter(v231.value._countAndFlagsBits, v231.value._object);
        if ((v43 & 0x100000000) != 0)
        {
LABEL_279:
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        if (!_GraphemeBreakingState.shouldBreak(between:and:)(v43, v19))
        {
          v95 = Unicode.Scalar._escaped(asASCII:)(1);
          v94 = v95.value._object;
          if (v95.value._object)
          {
            v96 = v95.value._countAndFlagsBits;
          }

          else
          {
            v96 = specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(v19);
          }

          v97 = v94;
          v139 = HIBYTE(v41) & 0xF;
          if ((v41 & 0x2000000000000000) == 0)
          {
            v139 = *&v42 & 0xFFFFFFFFFFFFLL;
          }

          if (!v139 && (*&v42 & ~v41 & 0x2000000000000000) == 0)
          {
            v41;
            v231.value._countAndFlagsBits = v96;
            v231.value._object = v97;
            goto LABEL_191;
          }

          if ((v41 & 0x2000000000000000) == 0)
          {
            if ((v94 & 0x2000000000000000) != 0)
            {
LABEL_189:
              v140 = HIBYTE(v97) & 0xF;
LABEL_190:
              v97;
              _StringGuts.append(_:)(v96, v97, 0, v140, v145, v146, v147, v148, v149, v150, v151, v152);
              swift_bridgeObjectRelease_n(v97, 2);
LABEL_191:
              v4 = v221;
              v13 = 1;
              goto LABEL_17;
            }

LABEL_182:
            v140 = v96 & 0xFFFFFFFFFFFFLL;
            goto LABEL_190;
          }

          if ((v94 & 0x2000000000000000) == 0)
          {
            goto LABEL_182;
          }

          v142 = specialized _SmallString.init(_:appending:)(*&v42, v41, v96, v94);
          if (v144)
          {
            goto LABEL_189;
          }

          v154 = v142;
          v103 = v143;
          v41;
          v97;
          v231.value._countAndFlagsBits = v154;
LABEL_125:
          v231.value._object = v103;
          goto LABEL_191;
        }
      }

      v229 = v42;
      v230 = v41;
      v231.value._countAndFlagsBits = 0;
      v231.value._object = 0xE000000000000000;
      v45 = specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(v19);
      v46 = v44;
      v47 = (v44 & 0x2000000000000000) == 0;
      v48 = HIBYTE(v41) & 0xF;
      if ((v41 & 0x2000000000000000) != 0)
      {
        if ((v44 & 0x2000000000000000) != 0)
        {
          v49 = HIBYTE(v44) & 0xF;
          v112 = v49 + v48;
          if (v49 + v48 < 0x10)
          {
            v44;
            if (v49)
            {
              v131 = 0;
              v132 = 0;
              v133 = 8 * v48;
              v134 = 8 * v49;
              v135 = v41;
              v4 = v221;
              do
              {
                v136 = v46 >> (v131 & 0x38);
                if (v132 < 8)
                {
                  v136 = v45 >> v131;
                }

                v137 = (v136 << (v133 & 0x38)) | ((-255 << (v133 & 0x38)) - 1) & v135;
                v138 = (v136 << v133) | ((-255 << v133) - 1) & *&v42;
                if (v48 <= 7)
                {
                  v42 = v138;
                }

                else
                {
                  v135 = v137;
                }

                ++v48;
                v133 += 8;
                v131 += 8;
                ++v132;
              }

              while (v134 != v131);
            }

            else
            {
              v135 = v41;
              v4 = v221;
            }

            v41;
            0xE000000000000000;
            v153 = 0xE000000000000000;
            if (*&v42 & 0x8080808080808080 | v135 & 0x80808080808080)
            {
              v153 = 0xA000000000000000;
            }

            v229 = v42;
            v230 = v153 & 0xFF00000000000000 | (v112 << 56) | v135 & 0xFFFFFFFFFFFFFFLL;
            goto LABEL_16;
          }

          v225 = v12;
          v47 = 0;
          v51 = HIBYTE(v44) & 0xF;
          v220 = v45 & 0xFFFFFFFFFFFFLL;
          if ((v44 & 0x1000000000000000) == 0)
          {
LABEL_74:
            v44;
            v65 = v51;
            if ((v41 & 0x1000000000000000) == 0)
            {
              goto LABEL_75;
            }

            goto LABEL_142;
          }

LABEL_139:
          swift_bridgeObjectRetain_n(v44, 2);
          v113._rawBits = 1;
          v114._rawBits = (v51 << 16) | 1;
          v115._rawBits = _StringGuts.validateScalarRange(_:)(v113, v114, v45, v46)._rawBits;
          if (v115._rawBits < 0x10000)
          {
            v115._rawBits |= 3;
          }

          v65 = String.UTF8View.distance(from:to:)(v115, v116);
          v46;
          if ((v41 & 0x1000000000000000) == 0)
          {
LABEL_75:
            if ((v41 & 0x2000000000000000) != 0)
            {
              v66 = HIBYTE(v41) & 0xF;
            }

            else
            {
              v66 = *&v42 & 0xFFFFFFFFFFFFLL;
            }

            v67 = v66 + v65;
            if (__OFADD__(v66, v65))
            {
LABEL_274:
              __break(1u);
LABEL_275:
              _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
            }

LABEL_79:
            v68 = *&v42 & ~v41;
            if ((v68 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v41 & 0xFFFFFFFFFFFFFFFLL))
            {
              v69 = _StringGuts.nativeUnusedCapacity.getter(*&v42, v41);
              if (v70)
              {
                goto LABEL_278;
              }

              if (v67 > 15)
              {
                goto LABEL_91;
              }

              if ((v41 & 0x2000000000000000) == 0)
              {
                if (v69 < v65)
                {
                  v46;
                  goto LABEL_86;
                }

LABEL_91:
                v75 = v68 & 0x2000000000000000;
                v76 = _StringGuts.nativeUnusedCapacity.getter(*&v42, v41);
                if ((v77 & 1) != 0 || v76 < v65)
                {
                  if (v75)
                  {
                    swift_isUniquelyReferenced_nonNull_native(v41 & 0xFFFFFFFFFFFFFFFLL);
                  }

                  v78 = 2 * _StringGuts.nativeCapacity.getter(*&v42, v41);
                  if (v79)
                  {
                    v78 = 0;
                  }

                  if (v78 > v67)
                  {
                    v67 = v78;
                  }
                }

                else if (v75 && swift_isUniquelyReferenced_nonNull_native(v41 & 0xFFFFFFFFFFFFFFFLL))
                {
                  goto LABEL_100;
                }

                _StringGuts.grow(_:)(v67);
LABEL_100:
                if ((v46 & 0x1000000000000000) != 0)
                {
                  v46;
                  _StringGuts._foreignAppendInPlace(_:)(v45, v46, 0, v51);
                  0xE000000000000000;
                  v118 = v46;
                }

                else
                {
                  if (v47)
                  {
                    if ((v45 & 0x1000000000000000) != 0)
                    {
                      v80 = (v46 & 0xFFFFFFFFFFFFFFFLL) + 32;
                      v81 = v220;
                      v82 = v220;
                    }

                    else
                    {
                      v164 = _StringObject.sharedUTF8.getter(v45, v46);
                      v81 = v220;
                      if (v165 < v220)
                      {
                        goto LABEL_275;
                      }

                      v80 = v164;
                      v82 = v165;
                    }

                    v4 = v221;
                    v12 = v225;
                    v46;
                    v83 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v81, v80, v82);
                    v84 = (v230 & 0xFFFFFFFFFFFFFFFLL);
                    __StringStorage.appendInPlace(_:isASCII:)(v83, v85, v45 < 0);
                    v229 = v84[3];
                    0xE000000000000000;
                    v46;
                    goto LABEL_16;
                  }

                  v46;
                  v227 = v45;
                  v228 = (v46 & 0xFFFFFFFFFFFFFFLL);
                  v46;
                  v141 = (v230 & 0xFFFFFFFFFFFFFFFLL);
                  __StringStorage.appendInPlace(_:isASCII:)(&v227, v49, (v46 & 0x4000000000000000) != 0);
                  v229 = v141[3];
                  v118 = 0xE000000000000000;
                }

                v118;
                v4 = v221;
                v12 = v225;
LABEL_16:
                v13 = 0;
                v231.value._countAndFlagsBits = v229;
                v231.value._object = v230;
                goto LABEL_17;
              }

              v46;
            }

            else
            {
              if (v67 > 15)
              {
                goto LABEL_91;
              }

              v46;
              if ((v41 & 0x2000000000000000) == 0)
              {
LABEL_86:
                if ((v41 & 0x1000000000000000) != 0)
                {
                  v42 = _StringGuts._foreignConvertedToSmall()(*&v42, v41);
                  v74 = v156;
                }

                else
                {
                  if ((*&v42 & 0x1000000000000000) != 0)
                  {
                    v72 = ((v41 & 0xFFFFFFFFFFFFFFFLL) + 32);
                    v73 = *&v42 & 0xFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v72 = _StringObject.sharedUTF8.getter(*&v42, v41);
                  }

                  closure #1 in _StringGuts._convertedToSmall()(v72, v73, &v227, v71);
                  v42 = v227;
                  v74 = v228;
                }

LABEL_128:
                v46;
                v104._rawBits = 1;
                v105._rawBits = (v51 << 16) | 1;
                v106._rawBits = _StringGuts.validateScalarRange(_:)(v104, v105, v45, v46)._rawBits;
                if (v106._rawBits < 0x10000)
                {
                  v106._rawBits |= 3;
                }

                if (v106._rawBits >> 16 || v107._rawBits >> 16 != v51)
                {
                  v45 = specialized static String._copying(_:)(v106._rawBits, v107._rawBits, v45, v46);
                  v109 = v120;
                  v46;
                  v12 = v225;
                  if ((v109 & 0x2000000000000000) == 0)
                  {
LABEL_133:
                    if ((v109 & 0x1000000000000000) != 0)
                    {
                      v45 = _StringGuts._foreignConvertedToSmall()(v45, v109);
                      v170 = v169;
                      v109;
                      v109 = v170;
                    }

                    else
                    {
                      if ((v45 & 0x1000000000000000) != 0)
                      {
                        v110 = ((v109 & 0xFFFFFFFFFFFFFFFLL) + 32);
                        v111 = v45 & 0xFFFFFFFFFFFFLL;
                      }

                      else
                      {
                        v110 = _StringObject.sharedUTF8.getter(v45, v109);
                      }

                      closure #1 in _StringGuts._convertedToSmall()(v110, v111, &v227, v108);
                      v109;
                      v45 = v227;
                      v109 = v228;
                    }

                    goto LABEL_152;
                  }
                }

                else
                {
                  v109 = v46;
                  v12 = v225;
                  if ((v46 & 0x2000000000000000) == 0)
                  {
                    goto LABEL_133;
                  }
                }

                v109;
LABEL_152:
                v121 = HIBYTE(v74) & 0xF;
                v122 = HIBYTE(v109) & 0xF;
                v123 = v122 + v121;
                if (v122 + v121 > 0xF)
                {
LABEL_278:
                  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
                }

                v46;
                if (v122)
                {
                  v124 = 0;
                  v125 = 0;
                  v126 = 8 * v121;
                  do
                  {
                    v127 = v109 >> (v124 & 0x38);
                    if (v125 < 8)
                    {
                      v127 = v45 >> v124;
                    }

                    v128 = (v127 << (v126 & 0x38)) | ((-255 << (v126 & 0x38)) - 1) & v74;
                    v129 = (v127 << v126) | ((-255 << v126) - 1) & *&v42;
                    if (v121 <= 7)
                    {
                      v42 = v129;
                    }

                    else
                    {
                      v74 = v128;
                    }

                    ++v121;
                    v126 += 8;
                    v124 += 8;
                    ++v125;
                  }

                  while (8 * v122 != v124);
                }

                0xE000000000000000;
                v41;
                v14 = 0xE000000000000000;
                if (*&v42 & 0x8080808080808080 | v74 & 0x80808080808080)
                {
                  v14 = 0xA000000000000000;
                }

                v229 = v42;
                v230 = v14 & 0xFF00000000000000 | (v123 << 56) | v74 & 0xFFFFFFFFFFFFFFLL;
                v4 = v221;
                goto LABEL_16;
              }
            }

            v74 = v41;
            goto LABEL_128;
          }

LABEL_142:
          v117 = String.UTF8View._foreignCount()();
          v67 = v117 + v65;
          if (__OFADD__(v117, v65))
          {
            goto LABEL_274;
          }

          goto LABEL_79;
        }

        v225 = v12;
        v49 = HIBYTE(v44) & 0xF;
        v50 = v45 & 0xFFFFFFFFFFFFLL;
        v47 = 1;
      }

      else
      {
        v225 = v12;
        v49 = HIBYTE(v44) & 0xF;
        v50 = v45 & 0xFFFFFFFFFFFFLL;
        v51 = v49;
        if ((v44 & 0x2000000000000000) != 0)
        {
LABEL_73:
          v220 = v50;
          if ((v44 & 0x1000000000000000) == 0)
          {
            goto LABEL_74;
          }

          goto LABEL_139;
        }
      }

      v51 = v50;
      goto LABEL_73;
    }

    v21 = v20.value._countAndFlagsBits;
    v22 = v20.value._object;
    v24 = v231.value._countAndFlagsBits;
    v23 = v231.value._object;
    v25 = (v231.value._object >> 56) & 0xF;
    v26 = v231.value._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    if ((v231.value._object & 0x2000000000000000) != 0)
    {
      v27 = (v231.value._object >> 56) & 0xF;
    }

    else
    {
      v27 = v231.value._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (!v27 && (v231.value._countAndFlagsBits & ~v231.value._object & 0x2000000000000000) == 0)
    {
      v231.value._object;
      v231 = v20;
      v13 = 1;
      goto LABEL_17;
    }

    v224 = v12;
    v28 = v20.value._object & 0x2000000000000000;
    v29 = (v20.value._object >> 56) & 0xF;
    if ((v20.value._object & 0x2000000000000000 & v231.value._object) != 0)
    {
      v30 = v25 + v29;
      if (v25 + v29 <= 0xF)
      {
        if (v29)
        {
          v57 = 0;
          v58 = 0;
          v59 = 8 * v25;
          v60 = 8 * v29;
          v61 = v231.value._object;
          v12 = v224;
          do
          {
            v62 = v20.value._object >> (v57 & 0x38);
            if (v58 < 8)
            {
              v62 = v20.value._countAndFlagsBits >> v57;
            }

            v63 = (v62 << (v59 & 0x38)) | ((-255 << (v59 & 0x38)) - 1) & v61;
            v64 = (v62 << v59) | ((-255 << v59) - 1) & *&v24;
            if (v25 <= 7)
            {
              v24 = v64;
            }

            else
            {
              v61 = v63;
            }

            ++v25;
            v59 += 8;
            v57 += 8;
            ++v58;
          }

          while (v60 != v57);
        }

        else
        {
          v61 = v231.value._object;
          v12 = v224;
        }

        v231.value._object;
        v20.value._object;
        v119 = 0xE000000000000000;
        if (*&v24 & 0x8080808080808080 | v61 & 0x80808080808080)
        {
          v119 = 0xA000000000000000;
        }

        v231.value._countAndFlagsBits = v24;
        v231.value._object = (v119 & 0xFF00000000000000 | (v30 << 56) | v61 & 0xFFFFFFFFFFFFFFLL);
        v13 = 1;
        goto LABEL_17;
      }
    }

    v31 = (v20.value._countAndFlagsBits & 0xFFFFFFFFFFFFLL);
    v32 = v28 ? (v20.value._object >> 56) & 0xF : v20.value._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    v219 = v32;
    if ((v20.value._object & 0x1000000000000000) != 0)
    {
      break;
    }

    v20.value._object;
    if ((v23 & 0x1000000000000000) != 0)
    {
      goto LABEL_204;
    }

LABEL_38:
    v34 = __OFADD__(v27, v32);
    v35 = v27 + v32;
    if (v34)
    {
      goto LABEL_271;
    }

LABEL_39:
    if ((*&v24 & ~v23 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v23 & 0xFFFFFFFFFFFFFFFLL))
    {
      v36 = _StringGuts.nativeUnusedCapacity.getter(*&v24, v23);
      if (v37)
      {
        goto LABEL_278;
      }

      if (v35 <= 15)
      {
        if ((v23 & 0x2000000000000000) != 0)
        {
          goto LABEL_106;
        }

        if (v36 < v32)
        {
          goto LABEL_45;
        }
      }

      goto LABEL_56;
    }

    if (v35 <= 15)
    {
      if ((v23 & 0x2000000000000000) != 0)
      {
LABEL_106:
        v40 = v23;
        goto LABEL_107;
      }

LABEL_45:
      if ((v23 & 0x1000000000000000) != 0)
      {
        v24 = _StringGuts._foreignConvertedToSmall()(*&v24, v23);
        v40 = v155;
LABEL_107:
        v12 = v224;
        v38 = v219;
      }

      else
      {
        v12 = v224;
        v38 = v219;
        if ((*&v24 & 0x1000000000000000) != 0)
        {
          v39 = ((v23 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v39 = _StringObject.sharedUTF8.getter(*&v24, v23);
          v26 = v166;
        }

        closure #1 in _StringGuts._convertedToSmall()(v39, v26, &v229, v33);
        v24 = v229;
        v40 = v230;
      }

      v20.value._object;
      v86._rawBits = 1;
      v87._rawBits = (v38 << 16) | 1;
      v88._rawBits = _StringGuts.validateScalarRange(_:)(v86, v87, v20.value._countAndFlagsBits, v20.value._object)._rawBits;
      if (v88._rawBits < 0x10000)
      {
        v88._rawBits |= 3;
      }

      if (v88._rawBits >> 16 || v89._rawBits >> 16 != v38)
      {
        v21 = specialized static String._copying(_:)(v88._rawBits, v89._rawBits, v20.value._countAndFlagsBits, v20.value._object);
        v91 = v98;
        v20.value._object;
        if ((v91 & 0x2000000000000000) == 0)
        {
          goto LABEL_113;
        }
      }

      else
      {
        v91 = v20.value._object;
        if ((v20.value._object & 0x2000000000000000) == 0)
        {
LABEL_113:
          if ((v91 & 0x1000000000000000) != 0)
          {
            v21 = _StringGuts._foreignConvertedToSmall()(*&v21, v91);
            v168 = v167;
            v91;
            v91 = v168;
          }

          else
          {
            if ((*&v21 & 0x1000000000000000) != 0)
            {
              v92 = ((v91 & 0xFFFFFFFFFFFFFFFLL) + 32);
              v93 = *&v21 & 0xFFFFFFFFFFFFLL;
            }

            else
            {
              v92 = _StringObject.sharedUTF8.getter(*&v21, v91);
            }

            closure #1 in _StringGuts._convertedToSmall()(v92, v93, &v229, v90);
            v91;
            v21 = v229;
            v91 = v230;
          }

          goto LABEL_123;
        }
      }

      v91;
LABEL_123:
      v99 = specialized _SmallString.init(_:appending:)(*&v24, v40, *&v21, v91);
      if (v101)
      {
        goto LABEL_278;
      }

      v102 = v99;
      v103 = v100;
      v23;
      swift_bridgeObjectRelease_n(v20.value._object, 2);
      v231.value._countAndFlagsBits = v102;
      goto LABEL_125;
    }

LABEL_56:
    _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v35, v32);
    if ((v20.value._object & 0x1000000000000000) != 0)
    {
      _StringGuts._foreignAppendInPlace(_:)(v20.value._countAndFlagsBits, v20.value._object, 0, v219);
      swift_bridgeObjectRelease_n(v20.value._object, 2);
    }

    else
    {
      if (!v28)
      {
        if ((v20.value._countAndFlagsBits & 0x1000000000000000) != 0)
        {
          v52 = (v20.value._object & 0xFFFFFFFFFFFFFFFLL) + 32;
          v53 = v20.value._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v162 = _StringObject.sharedUTF8.getter(v20.value._countAndFlagsBits, v20.value._object);
          if (v163 < *&v31)
          {
            goto LABEL_275;
          }

          v52 = v162;
          v53 = v163;
        }

        v12 = v224;
        v20.value._object;
        v54 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v20.value._countAndFlagsBits & 0xFFFFFFFFFFFFLL, v52, v53);
        v55 = v231.value._object & 0xFFFFFFFFFFFFFFFLL;
        __StringStorage.appendInPlace(_:isASCII:)(v54, v56, v20.value._countAndFlagsBits < 0);
        v231.value._countAndFlagsBits = *(v55 + 24);
        v20.value._object;
        goto LABEL_191;
      }

      v229 = v20.value._countAndFlagsBits;
      v230 = v20.value._object & 0xFFFFFFFFFFFFFFLL;
      v20.value._object;
      v130 = v231.value._object & 0xFFFFFFFFFFFFFFFLL;
      __StringStorage.appendInPlace(_:isASCII:)(&v229, (v20.value._object >> 56) & 0xF, (v20.value._object & 0x4000000000000000) != 0);
      v20.value._object;
      v231.value._countAndFlagsBits = *(v130 + 24);
    }

    v4 = v221;
    v12 = v224;
    v13 = 1;
LABEL_17:
    if (v12 >= v222)
    {
      v4;
      goto LABEL_218;
    }
  }

  swift_bridgeObjectRetain_n(v20.value._object, 2);
  v157._rawBits = 1;
  v158._rawBits = (v32 << 16) | 1;
  v159._rawBits = _StringGuts.validateScalarRange(_:)(v157, v158, v20.value._countAndFlagsBits, v20.value._object)._rawBits;
  if (v159._rawBits < 0x10000)
  {
    v159._rawBits |= 3;
  }

  v32 = String.UTF8View.distance(from:to:)(v159, v160);
  v20.value._object;
  if ((v23 & 0x1000000000000000) == 0)
  {
    goto LABEL_38;
  }

LABEL_204:
  v161 = String.UTF8View._foreignCount()();
  v35 = v161 + v32;
  if (!__OFADD__(v161, v32))
  {
    goto LABEL_39;
  }

LABEL_271:
  __break(1u);
LABEL_272:
  v221;
  v28;
  v212._rawBits = specialized Collection.dropFirst(_:)(1, *&v31, v28)._rawBits;
  v214 = v213;
  v227 = v23;
  v228 = v22;
  v231.value._countAndFlagsBits = 0;
  v231.value._object = 0xE000000000000000;
  specialized String.UnicodeScalarView.append<A>(contentsOf:)(v212, v232, v215, v213);
  0xE000000000000000;
  v214;
  countAndFlagsBits = v227;
LABEL_273:
  v230;
  return countAndFlagsBits;
}

uint64_t protocol witness for LosslessStringConvertible.init(_:) in conformance Substring@<X0>(uint64_t *a1@<X8>)
{
  result = Substring.init(unicodeScalarLiteral:)();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return result;
}

uint64_t Substring.UTF8View.subscript.getter(Swift::UInt64 rawBits, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  v6 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v6) = 1;
  }

  if ((rawBits & 0xC) == 4 << v6)
  {
    v9 = a2;
    v10 = a3;
    v11 = a4;
    rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(rawBits)._rawBits;
    a2 = v9;
    a3 = v10;
    a4 = v11;
  }

  if (rawBits >> 14 < a2 >> 14 || rawBits >> 14 >= a3 >> 14)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if ((a5 & 0x1000000000000000) != 0)
  {

    return String.UTF8View._foreignSubscript(position:)(rawBits);
  }

  else if ((a5 & 0x2000000000000000) != 0)
  {
    v13[0] = a4;
    v13[1] = a5 & 0xFFFFFFFFFFFFFFLL;
    return *(v13 + (rawBits >> 16));
  }

  else
  {
    if ((a4 & 0x1000000000000000) != 0)
    {
      v7 = ((a5 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v12 = rawBits;
      v7 = _StringObject.sharedUTF8.getter(a4, a5);
      rawBits = v12;
    }

    return v7[rawBits >> 16];
  }
}

Swift::String::Index __swiftcall Substring.UTF8View.index(after:)(Swift::String::Index after)
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

Swift::Void __swiftcall Substring.UTF8View.formIndex(after:)(Swift::String::Index *after)
{
  v3 = v1;
  v4 = after;
  rawBits = after->_rawBits;
  v6 = (v1 >> 59) & 1;
  if ((v2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v6) = 1;
  }

  if ((rawBits & 0xC) == 4 << v6)
  {
    v8 = v4;
    v9 = v2;
    rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(rawBits)._rawBits;
    v2 = v9;
    v4 = v8;
    if ((v9 & 0x1000000000000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else if ((v2 & 0x1000000000000000) == 0)
  {
LABEL_5:
    v7 = (rawBits & 0xFFFFFFFFFFFF0000) + 65540;
    goto LABEL_6;
  }

  v10 = v4;
  v11 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v11 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v11 <= rawBits >> 16)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v7 = String.UTF8View._foreignIndex(after:)(rawBits)._rawBits;
  v4 = v10;
LABEL_6:
  v4->_rawBits = v7;
}

Swift::String::Index __swiftcall Substring.UTF8View.index(_:offsetBy:)(Swift::String::Index _, Swift::Int offsetBy)
{
  v4 = (v2 >> 59) & 1;
  if ((v3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v4) = 1;
  }

  if ((_._rawBits & 0xC) == 4 << v4)
  {
    v7 = offsetBy;
    v8 = v3;
    v9 = v2;
    _._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(_)._rawBits;
    offsetBy = v7;
    v2 = v9;
    v3 = v8;
    if ((v8 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v5 = offsetBy + (_._rawBits >> 16);
      if (__OFADD__(offsetBy, _._rawBits >> 16))
      {
        __break(1u);
      }

      else
      {
        if ((v5 & 0x8000000000000000) != 0)
        {
          goto LABEL_11;
        }

        v6 = HIBYTE(v3) & 0xF;
        if ((v3 & 0x2000000000000000) == 0)
        {
          v6 = v2 & 0xFFFFFFFFFFFFLL;
        }

        if (v6 < v5)
        {
LABEL_11:
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        return ((v5 << 16) | 4);
      }

      return _;
    }
  }

  else if ((v3 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  return String.UTF8View._foreignIndex(_:offsetBy:)(_, offsetBy);
}

Swift::String::Index_optional __swiftcall Substring.UTF8View.index(_:offsetBy:limitedBy:)(Swift::String::Index _, Swift::Int offsetBy, Swift::String::Index limitedBy)
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

Swift::Int __swiftcall Substring.UTF8View.distance(from:to:)(Swift::String::Index from, Swift::String::Index to)
{
  v4 = v2;
  v5 = (v2 >> 59) & 1;
  if ((v3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  v6 = 4 << v5;
  if ((from._rawBits & 0xC) == 4 << v5)
  {
    rawBits = to._rawBits;
    v9 = v3;
    from._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(from)._rawBits;
    to._rawBits = rawBits;
    v3 = v9;
  }

  if ((to._rawBits & 0xC) == v6)
  {
    v10 = from._rawBits;
    v11 = v3;
    v12._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(to)._rawBits;
    v3 = v11;
    to._rawBits = v12._rawBits;
    from._rawBits = v10;
    if ((v11 & 0x1000000000000000) == 0)
    {
      return (to._rawBits >> 16) - (from._rawBits >> 16);
    }
  }

  else if ((v3 & 0x1000000000000000) == 0)
  {
    return (to._rawBits >> 16) - (from._rawBits >> 16);
  }

  v13 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v13 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v13 < from._rawBits >> 16 || v13 < to._rawBits >> 16)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return String.UTF8View._foreignDistance(from:to:)(from, to);
}

Swift::String::Index __swiftcall Substring.UTF8View.index(before:)(Swift::String::Index before)
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

Swift::Void __swiftcall Substring.UTF8View.formIndex(before:)(Swift::String::Index *before)
{
  v3 = v2;
  v4 = before;
  rawBits = before->_rawBits;
  v6 = (v1 >> 59) & 1;
  if ((v2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v6) = 1;
  }

  if ((rawBits & 0xC) == 4 << v6)
  {
    v8 = v4;
    v9 = v1;
    rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(rawBits)._rawBits;
    v1 = v9;
    v4 = v8;
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
    v10 = v4;
    v11 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v11 = v1 & 0xFFFFFFFFFFFFLL;
    }

    if (v11 >= rawBits >> 16)
    {
      v7 = String.UTF8View._foreignIndex(before:)(rawBits)._rawBits;
      v4 = v10;
      goto LABEL_7;
    }

LABEL_9:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v7 = (rawBits & 0xFFFFFFFFFFFF0000) - 65532;
LABEL_7:
  v4->_rawBits = v7;
}

Swift::UInt64 Substring.UTF16View.subscript.getter(Swift::UInt64 a1, Swift::String::Index a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v6 = specialized Substring.UTF8View.subscript.getter(a1, a2, a3, a4, a5, a6);
  v7;
  return v6;
}

Swift::String::Index protocol witness for BidirectionalCollection.index(before:) in conformance Substring.UTF8View@<X0>(Swift::String::Index *a1@<X0>, Swift::String::Index *a2@<X8>)
{
  result._rawBits = Substring.UTF8View.index(before:)(a1->_rawBits)._rawBits;
  a2->_rawBits = result._rawBits;
  return result;
}

Swift::String::Index protocol witness for BidirectionalCollection.index(_:offsetBy:) in conformance Substring.UTF8View@<X0>(Swift::UInt64 *a1@<X0>, Swift::Int a2@<X1>, Swift::UInt64 *a3@<X8>)
{
  result._rawBits = *a1;
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
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

Swift::String::Index protocol witness for BidirectionalCollection.index(_:offsetBy:limitedBy:) in conformance Substring.UTF8View@<X0>(Swift::UInt64 *a1@<X0>, Swift::Int a2@<X1>, Swift::UInt64 *a3@<X2>, uint64_t a4@<X8>)
{
  rawBits = *a1;
  v6._rawBits = *a3;
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
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

Swift::Int protocol witness for BidirectionalCollection.distance(from:to:) in conformance Substring.UTF8View(Swift::String::Index *a1, Swift::UInt64 *a2)
{
  rawBits = a1->_rawBits;
  v4 = *a2;
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
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

unint64_t protocol witness for Collection.subscript.getter in conformance Substring.UTF16View@<X0>(Swift::UInt64 *a1@<X0>, Swift::UInt64 *a2@<X8>)
{
  v4._rawBits = a1[1];
  *a2 = specialized Substring.UTF8View.subscript.getter(*a1, v4, *v2, *(v2 + 8), *(v2 + 16), *(v2 + 24));
  a2[1] = v5;
  a2[2] = v7;
  a2[3] = v6;

  return v6;
}

Swift::String::Index protocol witness for Collection.index(_:offsetBy:) in conformance Substring.UTF8View@<X0>(Swift::String::Index *a1@<X0>, Swift::Int a2@<X1>, Swift::String::Index *a3@<X8>)
{
  result._rawBits = Substring.UTF8View.index(_:offsetBy:)(a1->_rawBits, a2)._rawBits;
  a3->_rawBits = result._rawBits;
  return result;
}

Swift::String::Index protocol witness for Collection.index(after:) in conformance Substring.UTF8View@<X0>(Swift::String::Index *a1@<X0>, Swift::String::Index *a2@<X8>)
{
  result._rawBits = Substring.UTF8View.index(after:)(a1->_rawBits)._rawBits;
  a2->_rawBits = result._rawBits;
  return result;
}

__n128 _sSsSTsST12makeIterator0B0QzyFTW_0@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u64[0];
  v3 = v1[1].n128_u64[1];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u64[0] = v2;
  a1[1].n128_u64[1] = v3;
  a1[2].n128_u64[0] = result.n128_u64[0];
  return result;
}

uint64_t Substring.UTF8View.span.getter()
{
  rawBits = v0[3]._rawBits;
  if ((rawBits & 0x1000000000000000) != 0)
  {
    if ((rawBits & 0x8000000000000000) == 0 || (rawBits & 0xF000000000000000) == 0xC000000000000000)
    {
      v8._rawBits = v0->_rawBits;
      v9 = String.UTF8View._foreignDistance(from:to:)(15, v0->_rawBits);
      v10 = String.UTF8View._foreignDistance(from:to:)(v8, v0[1]);
      v11 = String.UTF8View._underlyingSpan()();
      v6 = v12;
      v3 = v10 + v9;
      if (v10 + v9 >= v9)
      {
        v5 = v11;
        v2 = v9;
        return _ss4SpanVsRi_zrlE10extractingyAByxGSnySiGFs5UInt8V_Tg5(v2, v3, v5, v6);
      }

LABEL_17:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if ((rawBits & 0x2000000000000000) == 0)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v2 = v0->_rawBits >> 16;
    v3 = v0[1]._rawBits >> 16;
  }

  else
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
        v13 = v0->_rawBits >> 16;
        v14 = v3;
        v5 = _StringObject.sharedUTF8.getter(v4, rawBits);
        v2 = v13;
        v6 = v15;
        v3 = v14;
        if (v14 >= v13)
        {
          return _ss4SpanVsRi_zrlE10extractingyAByxGSnySiGFs5UInt8V_Tg5(v2, v3, v5, v6);
        }
      }

      goto LABEL_17;
    }
  }

  if ((v3 - v2) < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return &v0[2] + v2;
}

uint64_t (*Substring.utf8.modify(void *a1))()
{
  if (swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc(0x30, 0xE0B8uLL);
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
  return Substring.utf8.modify;
}

uint64_t Substring.UTF16View.subscript.getter(Swift::String::Index a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  rawBits = a1._rawBits;
  v7 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v7) = 1;
  }

  if ((a1._rawBits & 0xC) == 4 << v7)
  {
    v10 = a2;
    v11 = a3;
    v12 = a4;
    v13._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(a1)._rawBits;
    a2 = v10;
    a3 = v11;
    a4 = v12;
    rawBits = v13._rawBits;
  }

  if (rawBits >> 14 < a2 >> 14 || rawBits >> 14 >= a3 >> 14)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if ((a5 & 0x1000000000000000) == 0)
  {
    if (rawBits)
    {
      v8 = rawBits >> 16;
      if ((a5 & 0x2000000000000000) == 0)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v15 = a4;
      v16._rawBits = _StringGuts.scalarAlignSlow(_:)(rawBits)._rawBits;
      a4 = v15;
      v8 = v16._rawBits >> 16;
      if ((a5 & 0x2000000000000000) == 0)
      {
LABEL_10:
        if ((a4 & 0x1000000000000000) != 0)
        {
          v9 = ((a5 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v18 = a5;
          v19 = v8;
          v9 = _StringObject.sharedUTF8.getter(a4, v18);
          v8 = v19;
        }

        goto LABEL_18;
      }
    }

    v20[0] = a4;
    v20[1] = a5 & 0xFFFFFFFFFFFFFFLL;
    v9 = v20;
LABEL_18:
    v17 = _decodeScalar(_:startingAt:)(v9, a2, v8);
    return Unicode.Scalar.UTF16View.subscript.getter(rawBits >> 14, v17);
  }

  return String.UTF16View._foreignSubscript(position:)(rawBits);
}

Swift::String::Index __swiftcall Substring.UTF16View.index(after:)(Swift::String::Index after)
{
  v3 = (v1 >> 59) & 1;
  if ((v2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((after._rawBits & 0xC) == 4 << v3)
  {
    v9 = v2;
    v10 = v1;
    after._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(after)._rawBits;
    v1 = v10;
    v2 = v9;
  }

  v4 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v4 = v1 & 0xFFFFFFFFFFFFLL;
  }

  v5 = after._rawBits >> 16;
  if (after._rawBits >> 16 >= v4)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if ((v2 & 0x1000000000000000) == 0)
  {
    v6 = (v2 >> 62) & 1;
    if ((v2 & 0x2000000000000000) == 0)
    {
      LOBYTE(v6) = v1 < 0;
    }

    if (v6)
    {
      return ((after._rawBits & 0xFFFFFFFFFFFF0000) + 65549);
    }

    if ((after._rawBits & 0xC001) != 0)
    {
      if ((v2 & 0x2000000000000000) == 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v11 = v2;
      v12 = v1;
      after._rawBits = _StringGuts.scalarAlignSlow(_:)(after)._rawBits;
      v1 = v12;
      v2 = v11;
      v5 = after._rawBits >> 16;
      if ((v11 & 0x2000000000000000) == 0)
      {
LABEL_15:
        if ((v1 & 0x1000000000000000) != 0)
        {
          LODWORD(v8) = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v5);
          if ((v8 & 0x80) != 0)
          {
LABEL_26:
            LODWORD(v8) = __clz(v8 ^ 0xFF) - 24;
            if (v8 == 4)
            {
              if ((after._rawBits & 0xC000) == 0)
              {
                v14 = 16388;
                return (after._rawBits & 0xFFFFFFFFFFFF0000 | v14);
              }

              v8 = 4;
            }

            else
            {
              v8 = v8;
            }

LABEL_30:
            after._rawBits += v8 << 16;
            v14 = 5;
            return (after._rawBits & 0xFFFFFFFFFFFF0000 | v14);
          }
        }

        else
        {
          rawBits = after._rawBits;
          v13 = v5;
          v8 = _StringObject.sharedUTF8.getter(v1, v2);
          after._rawBits = rawBits;
          LODWORD(v8) = *(v8 + v13);
          if ((v8 & 0x80) != 0)
          {
            goto LABEL_26;
          }
        }

LABEL_24:
        v8 = 1;
        goto LABEL_30;
      }
    }

    v16[0] = v1;
    v16[1] = v2 & 0xFFFFFFFFFFFFFFLL;
    LODWORD(v8) = *(v16 + v5);
    if ((v8 & 0x80) != 0)
    {
      goto LABEL_26;
    }

    goto LABEL_24;
  }

  return specialized String.UTF16View._foreignIndex(after:)(after._rawBits);
}

Swift::Void __swiftcall Substring.UTF16View.formIndex(after:)(Swift::String::Index *after)
{
  rawBits = after->_rawBits;
  v5 = (v1 >> 59) & 1;
  if ((v2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((rawBits & 0xC) == 4 << v5)
  {
    v12 = v2;
    v13 = v1;
    rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(rawBits)._rawBits;
    v1 = v13;
    v2 = v12;
  }

  v6 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v6 = v1 & 0xFFFFFFFFFFFFLL;
  }

  v7 = rawBits >> 16;
  if (rawBits >> 16 >= v6)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if ((v2 & 0x1000000000000000) != 0)
  {
    v9 = specialized String.UTF16View._foreignIndex(after:)(rawBits);
    goto LABEL_29;
  }

  v8 = (v2 >> 62) & 1;
  if ((v2 & 0x2000000000000000) == 0)
  {
    LOBYTE(v8) = v1 < 0;
  }

  if ((v8 & 1) == 0)
  {
    if ((rawBits & 0xC001) != 0)
    {
      if ((v2 & 0x2000000000000000) == 0)
      {
LABEL_15:
        if ((v1 & 0x1000000000000000) != 0)
        {
          LODWORD(v10) = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v7);
          if ((v10 & 0x80) != 0)
          {
            goto LABEL_17;
          }

LABEL_26:
          v10 = 1;
          goto LABEL_27;
        }

        v17 = rawBits;
        v16 = v7;
        v10 = _StringObject.sharedUTF8.getter(v1, v2);
        rawBits = v17;
        LODWORD(v10) = *(v10 + v16);
        if ((v10 & 0x80) == 0)
        {
          goto LABEL_26;
        }

LABEL_17:
        LODWORD(v10) = __clz(v10 ^ 0xFF) - 24;
        if (v10 == 4)
        {
          if ((rawBits & 0xC000) == 0)
          {
            v11 = 16388;
LABEL_28:
            v9 = rawBits & 0xFFFFFFFFFFFF0000 | v11;
            goto LABEL_29;
          }

          v10 = 4;
        }

        else
        {
          v10 = v10;
        }

LABEL_27:
        rawBits += v10 << 16;
        v11 = 5;
        goto LABEL_28;
      }
    }

    else
    {
      v14 = v2;
      v15 = v1;
      rawBits = _StringGuts.scalarAlignSlow(_:)(rawBits)._rawBits;
      v1 = v15;
      v2 = v14;
      v7 = rawBits >> 16;
      if ((v14 & 0x2000000000000000) == 0)
      {
        goto LABEL_15;
      }
    }

    v18[0] = v1;
    v18[1] = v2 & 0xFFFFFFFFFFFFFFLL;
    LODWORD(v10) = *(v18 + v7);
    if ((v10 & 0x80) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_17;
  }

  v9 = (rawBits & 0xFFFFFFFFFFFF0000) + 65549;
LABEL_29:
  after->_rawBits = v9;
}