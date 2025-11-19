uint64_t specialized Sequence<>.starts<A>(with:)()
{

  v0 = String.Iterator.next()();
  if (v0.value._object)
  {
    countAndFlagsBits = v0.value._countAndFlagsBits;
    object = v0.value._object;
    do
    {
      v5 = String.Iterator.next()();
      if (!v5.value._object)
      {

        return 1;
      }

      if (countAndFlagsBits == v5.value._countAndFlagsBits && object == v5.value._object)
      {
      }

      else
      {
        v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v3 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v4 = String.Iterator.next()();
      countAndFlagsBits = v4.value._countAndFlagsBits;
      object = v4.value._object;
    }

    while (v4.value._object);
  }

  v6 = String.Iterator.next()().value._object;

  if (!v6)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

uint64_t specialized Sequence<>.starts<A>(with:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  v7 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v33 = a3;
  v8 = a4 >> 14;
  v9 = a3 >> 14;
  if (a3 >> 14 == a4 >> 14)
  {
    if (v7)
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
LABEL_59:
        _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
      }

      else if (!(a2 & 0x2000000000000000 | a1 & 0x1000000000000000))
      {
        goto LABEL_7;
      }

      return 0;
    }

    return 1;
  }

  v30 = v7;
  v13 = (a5 >> 59) & 1;
  if ((a6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v13) = 1;
  }

  v14 = 4 << v13;
  v26 = a6 & 0xFFFFFFFFFFFFFFLL;
  v27 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v28 = a2 & 0xFFFFFFFFFFFFFFLL;

  v15 = 0;
  v16 = a3;
  do
  {
    if ((v16 & 0xC) == v14 || (v16 & 1) == 0)
    {
      if ((v16 & 0xC) == v14)
      {
        v16 = _StringGuts._slowEnsureMatchingEncoding(_:)(v16, a5, a6);
      }

      if (v16 >> 14 < v9 || v16 >> 14 >= v8)
      {
        goto LABEL_57;
      }

      if ((v16 & 1) == 0)
      {
        _StringGuts.scalarAlignSlow(_:)(v16, a5, a6);
      }
    }

    else if (v16 >> 14 < v9 || v16 >> 14 >= v8)
    {
      __break(1u);
LABEL_57:
      __break(1u);
      return 1;
    }

    if ((a6 & 0x1000000000000000) != 0)
    {
      v18 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
    }

    else
    {
      if ((a6 & 0x2000000000000000) != 0)
      {
        v31 = a5;
        v32 = v26;
      }

      else if ((a5 & 0x1000000000000000) == 0)
      {
        _StringObject.sharedUTF8.getter();
      }

      v18 = _decodeScalar(_:startingAt:)();
    }

    v19 = v18;
    Substring.UnicodeScalarView.formIndex(after:)();
    if (v15 >= v30)
    {

      return 1;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      v22 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v31 = a1;
        v32 = v28;
        v21 = &v31 + v15;
      }

      else
      {
        v20 = v27;
        if ((a1 & 0x1000000000000000) == 0)
        {
          v20 = _StringObject.sharedUTF8.getter();
        }

        v21 = (v20 + v15);
      }

      v22 = *v21;
      if ((*v21 & 0x80000000) == 0)
      {
LABEL_39:
        v23 = 1;
        goto LABEL_40;
      }

      v24 = (__clz(v22 ^ 0xFF) - 24);
      if (v24 > 2)
      {
        if (v24 == 3)
        {
          v22 = ((v22 & 0xF) << 12) | ((v21[1] & 0x3F) << 6) | v21[2] & 0x3F;
          v23 = 3;
        }

        else
        {
          v22 = ((v22 & 0xF) << 18) | ((v21[1] & 0x3F) << 12) | ((v21[2] & 0x3F) << 6) | v21[3] & 0x3F;
          v23 = 4;
        }
      }

      else
      {
        if (v24 == 1)
        {
          goto LABEL_39;
        }

        v22 = v21[1] & 0x3F | ((v22 & 0x1F) << 6);
        v23 = 2;
      }
    }

LABEL_40:
    if (v19 != v22)
    {

      return 0;
    }

    v15 += v23;
    v16 = v33;
  }

  while (v8 != v33 >> 14);

  if (v15 >= v30)
  {
    return 1;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_59;
  }

  if (!(a2 & 0x2000000000000000 | a1 & 0x1000000000000000))
  {
LABEL_7:
    _StringObject.sharedUTF8.getter();
  }

  return 0;
}

uint64_t PType.Parser.parseTupleTypeName(types:)()
{
  v1 = type metadata accessor for CharacterSet();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = v0[1];
  v7 = v0[2];
  v9 = (v8 + 8);
  v40 = v0;
  v41 = v7;
  do
  {
    static CharacterSet.alphanumerics.getter();
    v15 = _StringGuts.validateScalarIndex(_:)(v7, v5, v6);
    if ((v6 & 0x1000000000000000) != 0)
    {
      _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
    }

    else
    {
      v16 = v15 >> 16;
      if ((v6 & 0x2000000000000000) != 0)
      {
        v42 = v5;
        v43 = v6 & 0xFFFFFFFFFFFFFFLL;
        v18 = &v42 + v16;
      }

      else
      {
        v17 = (v6 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if ((v5 & 0x1000000000000000) == 0)
        {
          v17 = _StringObject.sharedUTF8.getter();
        }

        v18 = (v17 + v16);
      }

      v19 = *v18;
      if (*v18 < 0)
      {
        v26 = (__clz(v19 ^ 0xFF) - 24);
        if (v26 > 2)
        {
          if (v26 == 3)
          {
            v34 = ((v19 & 0xF) << 12) | ((v18[1] & 0x3F) << 6) | v18[2] & 0x3Fu;
          }

          else
          {
            v36 = ((v19 & 0xF) << 18) | ((v18[1] & 0x3F) << 12) | ((v18[2] & 0x3F) << 6) | v18[3] & 0x3Fu;
          }
        }

        else if (v26 != 1)
        {
          v27 = v18[1] & 0x3F | ((v19 & 0x1F) << 6);
        }
      }
    }

    v20 = CharacterSet.contains(_:)();
    (*v9)(v4, v1);
    if ((v20 & 1) == 0)
    {
      v21 = _StringGuts.validateScalarIndex(_:)(v7, v5, v6);
      if ((v6 & 0x1000000000000000) != 0)
      {
        v25 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
      }

      else
      {
        v22 = v21 >> 16;
        if ((v6 & 0x2000000000000000) != 0)
        {
          v42 = v5;
          v43 = v6 & 0xFFFFFFFFFFFFFFLL;
          v24 = &v42 + v22;
        }

        else
        {
          v23 = (v6 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((v5 & 0x1000000000000000) == 0)
          {
            v23 = _StringObject.sharedUTF8.getter();
          }

          v24 = (v23 + v22);
        }

        v25 = *v24;
        if (*v24 < 0)
        {
          v35 = (__clz(v25 ^ 0xFF) - 24);
          if (v35 > 2)
          {
            if (v35 == 3)
            {
              v25 = ((v25 & 0xF) << 12) | ((v24[1] & 0x3F) << 6) | v24[2] & 0x3F;
            }

            else
            {
              v25 = ((v25 & 0xF) << 18) | ((v24[1] & 0x3F) << 12) | ((v24[2] & 0x3F) << 6) | v24[3] & 0x3F;
            }
          }

          else if (v35 != 1)
          {
            v25 = v24[1] & 0x3F | ((v25 & 0x1F) << 6);
          }
        }
      }

      if (v25 != 95)
      {
        return 0;
      }
    }

    v28 = _StringGuts.validateScalarIndex(_:)(v7, v5, v6);
    if ((v6 & 0x1000000000000000) != 0)
    {
      v7 = String.UnicodeScalarView._foreignIndex(after:)();
      _StringGuts.validateScalarIndex(_:)(v7, v5, v6);
      v14 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
    }

    else
    {
      v7 = ((_StringGuts.fastUTF8ScalarLength(startingAt:)(v28 >> 16) + (v28 >> 16)) << 16) | 5;
      v29 = _StringGuts.validateScalarIndex(_:)(v7, v5, v6) >> 16;
      if ((v6 & 0x2000000000000000) != 0)
      {
        v42 = v5;
        v43 = v6 & 0xFFFFFFFFFFFFFFLL;
        v31 = &v42 + v29;
      }

      else
      {
        v30 = (v6 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if ((v5 & 0x1000000000000000) == 0)
        {
          v30 = _StringObject.sharedUTF8.getter();
        }

        v31 = (v30 + v29);
      }

      v14 = *v31;
      if (*v31 < 0)
      {
        v32 = (__clz(v14 ^ 0xFF) - 24);
        if (v32 > 2)
        {
          if (v32 == 3)
          {
            v33 = v31[1];
            v12 = v31[2];
            v13 = ((v14 & 0xF) << 12) | ((v33 & 0x3F) << 6);
          }

          else
          {
            v10 = v31[1];
            v11 = v31[2];
            v12 = v31[3];
            v13 = ((v14 & 0xF) << 18) | ((v10 & 0x3F) << 12) | ((v11 & 0x3F) << 6);
          }

          v14 = v13 & 0xFFFFFFC0 | v12 & 0x3F;
        }

        else if (v32 != 1)
        {
          v14 = v31[1] & 0x3F | ((v14 & 0x1F) << 6);
        }
      }
    }
  }

  while (v14 != 58);
  v37 = String.UnicodeScalarView.index(_:offsetBy:)(v7, 2, v5, v6);
  v38 = String.UnicodeScalarView.index(_:offsetBy:)(v37, -2, v5, v6) >> 14;
  result = v41;
  if (v38 < v41 >> 14)
  {
    __break(1u);
  }

  else
  {
    String.UnicodeScalarView.subscript.getter();
    result = String.init(_:)();
    v40[2] = v37;
  }

  return result;
}

unint64_t String.UnicodeScalarView.index(_:offsetBy:)(unint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  result = _StringGuts.validateInclusiveScalarIndex(_:)(a1, a3, a4);
  if (a2 < 0)
  {
    v14 = 0;
    while (1)
    {
      if (result < 0x10000)
      {
        goto LABEL_38;
      }

      if ((a4 & 0x1000000000000000) == 0)
      {
        break;
      }

      result = String.UnicodeScalarView._foreignIndex(before:)();
LABEL_20:
      if (--v14 <= a2)
      {
        return result;
      }
    }

    v15 = result >> 16;
    if ((a4 & 0x2000000000000000) != 0)
    {
      v22 = a3;
      v23 = a4 & 0xFFFFFFFFFFFFFFLL;
      if ((*(&v22 + v15 - 1) & 0xC0) == 0x80)
      {
        v20 = -2;
        do
        {
          v21 = *(&v22 + v15 + v20--) & 0xC0;
        }

        while (v21 == 128);
        v19 = v20 + 1;
        goto LABEL_35;
      }
    }

    else
    {
      v16 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
      if ((a3 & 0x1000000000000000) == 0)
      {
        v16 = _StringObject.sharedUTF8.getter();
      }

      if ((*(v16 + v15 - 1) & 0xC0) == 0x80)
      {
        v17 = -2;
        do
        {
          v18 = *(v16 + v15 + v17--) & 0xC0;
        }

        while (v18 == 128);
        v19 = v17 + 1;
        goto LABEL_35;
      }
    }

    v19 = -1;
LABEL_35:
    result = ((v19 + v15) << 16) | 5;
    goto LABEL_20;
  }

  if (a2)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v8 = HIBYTE(a4) & 0xF;
    }

    else
    {
      v8 = a3 & 0xFFFFFFFFFFFFLL;
    }

    while (1)
    {
      v9 = result >> 16;
      if (result >> 16 >= v8)
      {
        break;
      }

      if ((a4 & 0x1000000000000000) != 0)
      {
        result = String.UnicodeScalarView._foreignIndex(after:)();
        if (!--a2)
        {
          return result;
        }
      }

      else
      {
        if ((a4 & 0x2000000000000000) != 0)
        {
          v22 = a3;
          v23 = a4 & 0xFFFFFFFFFFFFFFLL;
          v11 = *(&v22 + v9);
        }

        else
        {
          v10 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a3 & 0x1000000000000000) == 0)
          {
            v10 = _StringObject.sharedUTF8.getter();
          }

          v11 = *(v10 + v9);
        }

        v12 = v11;
        v13 = __clz(v11 ^ 0xFF) - 24;
        if (v12 >= 0)
        {
          LOBYTE(v13) = 1;
        }

        result = ((v9 + v13) << 16) | 5;
        if (!--a2)
        {
          return result;
        }
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
  }

  return result;
}

unint64_t PType.Parser.parseProto(within:)(unint64_t a1)
{
  result = PType.Parser.parseNamedType(within:)(a1);
  if (!v2)
  {
    v5 = v1[1];
    v6 = v1[2];
    v7 = *v1;
    v8 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v8 = *v1 & 0xFFFFFFFFFFFFLL;
    }

    v9 = 4 * v8;
    if (4 * v8 != v6 >> 14)
    {
      v10 = result;
      v11 = _StringGuts.validateScalarIndex(_:)(v6, v7, v5);
      if ((v5 & 0x1000000000000000) != 0)
      {
        if (v9 == String.UnicodeScalarView._foreignIndex(after:)() >> 14)
        {
          return v10;
        }

        _StringGuts.validateScalarIndex(_:)(v6, v7, v5);
        v57 = String.UnicodeScalarView._foreignIndex(after:)();
        _StringGuts.validateScalarIndex(_:)(v57, v7, v5);
        v18 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
      }

      else
      {
        if (4 * ((_StringGuts.fastUTF8ScalarLength(startingAt:)(v11 >> 16) + (v11 >> 16)) & 0xFFFFFFFFFFFFLL) == v9)
        {
          return v10;
        }

        v12 = _StringGuts.validateScalarIndex(_:)(v6, v7, v5) >> 16;
        v13 = _StringGuts.fastUTF8ScalarLength(startingAt:)(v12);
        v14 = _StringGuts.validateScalarIndex(_:)(((v12 + v13) << 16) | 5, v7, v5) >> 16;
        if ((v5 & 0x2000000000000000) == 0)
        {
          if ((v7 & 0x1000000000000000) != 0)
          {
            v15 = (v5 & 0xFFFFFFFFFFFFFFFLL) + 32;
          }

          else
          {
            v15 = _StringObject.sharedUTF8.getter();
          }

          v16 = (v15 + v14);
          v17 = *(v15 + v14);
          v18 = *(v15 + v14);
          if ((v17 & 0x80000000) == 0)
          {
LABEL_27:
            if (v18 != 38)
            {
              return v10;
            }

            goto LABEL_28;
          }

          v19 = (__clz(v18 ^ 0xFF) - 24);
          if (v19 <= 2)
          {
            if (v19 != 1)
            {
              if ((v16[1] & 0x3F | ((v18 & 0x1F) << 6)) == 0x26)
              {
                goto LABEL_28;
              }

              return v10;
            }

            goto LABEL_27;
          }

          if (v19 == 3)
          {
LABEL_23:
            if ((((v18 & 0xF) << 12) | ((v16[1] & 0x3F) << 6) | v16[2] & 0x3F) != 0x26)
            {
              return v10;
            }

            goto LABEL_28;
          }

LABEL_26:
          v18 = ((v18 & 0xF) << 18) | ((v16[1] & 0x3F) << 12) | ((v16[2] & 0x3F) << 6) | v16[3] & 0x3F;
          goto LABEL_27;
        }

        v59 = v7;
        v60 = v5 & 0xFFFFFFFFFFFFFFLL;
        v16 = &v59 + v14;
        v18 = *(&v59 + v14);
        if (*(&v59 + v14) < 0)
        {
          v20 = (__clz(v18 ^ 0xFF) - 24);
          if (v20 > 2)
          {
            if (v20 == 3)
            {
              goto LABEL_23;
            }

            goto LABEL_26;
          }

          if (v20 != 1)
          {
            v18 = v16[1] & 0x3F | ((v18 & 0x1F) << 6);
          }
        }
      }

      if (v18 != 38)
      {
        return v10;
      }

LABEL_28:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt32VGMd, &_ss23_ContiguousArrayStorageCys6UInt32VGMR);
      result = swift_allocObject();
      v21 = result;
      *(result + 16) = xmmword_26C328DC0;
      *(result + 32) = v10;
      while (1)
      {
        v23 = v1[1];
        v22 = v1[2];
        v24 = *v1;
        v25 = HIBYTE(v23) & 0xF;
        if ((v23 & 0x2000000000000000) == 0)
        {
          v25 = v24 & 0xFFFFFFFFFFFFLL;
        }

        if (v22 >> 14 == 4 * v25)
        {
          break;
        }

        result = _StringGuts.validateScalarIndex(_:)(v1[2], *v1, v1[1]);
        if ((v23 & 0x1000000000000000) != 0)
        {
          result = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
          if (result != 32)
          {
            break;
          }

          _StringGuts.validateScalarIndex(_:)(v22, v24, v23);
          v44 = String.UnicodeScalarView._foreignIndex(after:)();
          _StringGuts.validateScalarIndex(_:)(v44, v24, v23);
          result = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
        }

        else
        {
          v26 = result >> 16;
          if ((v23 & 0x2000000000000000) != 0)
          {
            v59 = v24;
            v60 = v23 & 0xFFFFFFFFFFFFFFLL;
            v27 = &v59 + v26;
          }

          else
          {
            if ((v24 & 0x1000000000000000) != 0)
            {
              result = (v23 & 0xFFFFFFFFFFFFFFFLL) + 32;
            }

            else
            {
              result = _StringObject.sharedUTF8.getter();
            }

            v27 = (result + v26);
          }

          v28 = *v27;
          if (*v27 < 0)
          {
            v39 = (__clz(v28 ^ 0xFF) - 24);
            if (v39 > 2)
            {
              if (v39 == 3)
              {
                v28 = ((v28 & 0xF) << 12) | ((v27[1] & 0x3F) << 6) | v27[2] & 0x3F;
              }

              else
              {
                v28 = ((v28 & 0xF) << 18) | ((v27[1] & 0x3F) << 12) | ((v27[2] & 0x3F) << 6) | v27[3] & 0x3F;
              }
            }

            else if (v39 != 1)
            {
              v28 = v27[1] & 0x3F | ((v28 & 0x1F) << 6);
            }
          }

          if (v28 != 32)
          {
            break;
          }

          v29 = _StringGuts.validateScalarIndex(_:)(v22, v24, v23) >> 16;
          v30 = _StringGuts.fastUTF8ScalarLength(startingAt:)(v29);
          v31 = _StringGuts.validateScalarIndex(_:)(((v30 + v29) << 16) | 5, v24, v23) >> 16;
          if ((v23 & 0x2000000000000000) != 0)
          {
            v59 = v24;
            v60 = v23 & 0xFFFFFFFFFFFFFFLL;
            v33 = &v59 + v31;
          }

          else
          {
            if ((v24 & 0x1000000000000000) != 0)
            {
              v32 = (v23 & 0xFFFFFFFFFFFFFFFLL) + 32;
            }

            else
            {
              v32 = _StringObject.sharedUTF8.getter();
            }

            v33 = (v32 + v31);
          }

          result = *v33;
          if (*v33 < 0)
          {
            v40 = (__clz(result ^ 0xFF) - 24);
            if (v40 > 2)
            {
              if (v40 == 3)
              {
                result = ((result & 0xF) << 12) | ((v33[1] & 0x3F) << 6) | v33[2] & 0x3F;
              }

              else
              {
                result = ((result & 0xF) << 18) | ((v33[1] & 0x3F) << 12) | ((v33[2] & 0x3F) << 6) | v33[3] & 0x3F;
              }
            }

            else if (v40 != 1)
            {
              result = v33[1] & 0x3F | ((result & 0x1F) << 6);
            }
          }
        }

        if (result != 38)
        {
          break;
        }

        v34 = String.UnicodeScalarView.index(_:offsetBy:)(v22, 2, v24, v23);
        v35 = _StringGuts.validateScalarIndex(_:)(v34, v24, v23);
        if ((v23 & 0x1000000000000000) != 0)
        {
          result = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
        }

        else
        {
          v36 = v35 >> 16;
          if ((v23 & 0x2000000000000000) != 0)
          {
            v59 = v24;
            v60 = v23 & 0xFFFFFFFFFFFFFFLL;
            v38 = &v59 + v36;
          }

          else
          {
            if ((v24 & 0x1000000000000000) != 0)
            {
              v37 = (v23 & 0xFFFFFFFFFFFFFFFLL) + 32;
            }

            else
            {
              v37 = _StringObject.sharedUTF8.getter();
            }

            v38 = (v37 + v36);
          }

          result = *v38;
          if (*v38 < 0)
          {
            v43 = (__clz(result ^ 0xFF) - 24);
            if (v43 > 2)
            {
              if (v43 == 3)
              {
                result = ((result & 0xF) << 12) | ((v38[1] & 0x3F) << 6) | v38[2] & 0x3F;
              }

              else
              {
                result = ((result & 0xF) << 18) | ((v38[1] & 0x3F) << 12) | ((v38[2] & 0x3F) << 6) | v38[3] & 0x3F;
              }
            }

            else if (v43 != 1)
            {
              result = v38[1] & 0x3F | ((result & 0x1F) << 6);
            }
          }
        }

        if (result != 32)
        {
          break;
        }

        v1[2] = String.UnicodeScalarView.index(_:offsetBy:)(v22, 3, v24, v23);
        result = PType.Parser.parseTuple(within:)(a1);
        v42 = *(v21 + 2);
        v41 = *(v21 + 3);
        if (v42 >= v41 >> 1)
        {
          v45 = result;
          v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42 + 1, 1, v21);
          result = v45;
        }

        *(v21 + 2) = v42 + 1;
        *&v21[4 * v42 + 32] = result;
      }

      LOBYTE(v59) = 1;
      v62 = 1;
      v61 = 1;
      if (one-time initialization token for none != -1)
      {
        result = swift_once();
      }

      v46 = static PType.Metadata.none;
      v47 = qword_280481CC8;
      v48 = qword_280481CD0;
      v49 = dword_280481CD8;
      v50 = byte_280481CDC;
      v51 = v59;
      v52 = v62;
      v53 = v61;
      v54 = *(a1 + 12);
      if (v54 == *(a1 + 8))
      {
        v58 = static PType.Metadata.none;
        result = specialized UnsafeArray.growToCapacity(_:)(2 * v54);
        v46 = v58;
      }

      if (*a1)
      {
        v55 = *(a1 + 12);
        v56 = *a1 + 120 * v55;
        *v56 = v21;
        *(v56 + 8) = 0;
        *(v56 + 16) = 0;
        *(v56 + 24) = 0;
        *(v56 + 32) = 3;
        *(v56 + 40) = 0;
        *(v56 + 48) = 0;
        *(v56 + 56) = v51;
        *(v56 + 60) = -1;
        *(v56 + 64) = v46;
        *(v56 + 80) = v47;
        *(v56 + 88) = v48;
        *(v56 + 96) = v49;
        *(v56 + 100) = v50;
        *(v56 + 104) = 0;
        *(v56 + 108) = v52;
        *(v56 + 112) = 0;
        *(v56 + 116) = v53;
        *(v56 + 117) = 6;
        if (v55 != -1)
        {
          *(a1 + 12) = v55 + 1;
          return v55;
        }

        __break(1u);
      }

      __break(1u);
    }
  }

  return result;
}

unint64_t PType.Parser.parseNamedType(within:)(unint64_t result)
{
  v127 = result;
  v3 = v1[3];
  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
LABEL_158:
    __break(1u);
    goto LABEL_159;
  }

  v117 = v2;
  v1[3] = v5;
  v7 = *v1;
  v6 = v1[1];
  v126 = v1;
  v8 = v1[2];
  v9 = (v6 & 0x2000000000000000) == 0;
  v10 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v10 = v7 & 0xFFFFFFFFFFFFLL;
  }

  v11 = 4 * v10;
  if (4 * v10 < v8 >> 14)
  {
    goto LABEL_152;
  }

  v125 = 0;
  v12 = ("ge: " >> 40) & 0xF0000;
  if (("ge: " & 0x2000000000000000) == 0)
  {
    v12 = 1310720;
  }

  v120 = v12;
  v13 = 11;
  if (("ge: " & 0x1000000000000000) == 0)
  {
    v13 = 7;
  }

  v119 = v13;
  v14 = MEMORY[0x277D84F90];
  while (2)
  {
    v132 = v11;
    v131 = v9;

    v15 = String.UnicodeScalarView.subscript.getter();
    v17 = v16;
    v19 = v18;
    v21 = v20;

    LOBYTE(v15) = specialized Sequence<>.starts<A>(with:)(0xD000000000000014, 0x800000026C33B950, v15, v17, v19, v21);

    if (v15)
    {
      LOBYTE(v137) = 1;
      v22 = specialized static PType.Parser.parseInvalidType(within:reason:)(v127, &v137);
      v23 = String.UnicodeScalarView.distance(from:to:)(0xFuLL, v120 | v119, 0xD000000000000014, 0x800000026C33B950);
      v24 = String.UnicodeScalarView.index(_:offsetBy:)(v8, v23, v7, v6);
      v25 = v126;
      v126[2] = v24;
      goto LABEL_111;
    }

    v26 = specialized Collection.subscript.getter(v8, v7, v6);
    v28 = v27;
    v30 = v29;
    v32 = v31;

    v33 = v28 >> 14;
    v34 = v26 >> 14;
    v40 = v26 >> 14 == v28 >> 14;
    v159 = v14;
    v35 = v7;
    if (v40)
    {
      goto LABEL_75;
    }

    v36 = (v30 >> 59) & 1;
    if ((v32 & 0x1000000000000000) == 0)
    {
      LOBYTE(v36) = 1;
    }

    v37 = 4 << v36;
    v38 = HIBYTE(v32) & 0xF;
    v118 = v26;
    if ((v32 & 0x2000000000000000) == 0)
    {
      v38 = v30 & 0xFFFFFFFFFFFFLL;
    }

    v129 = v33;
    v130 = v38;
    v134 = v37;
    while (1)
    {
      v39 = v26 & 0xC;
      v40 = (v26 & 1) == 0 || v39 == v37;
      v41 = v40;
      if (v40)
      {
        result = v26;
        if (v39 == v37)
        {
          result = _StringGuts._slowEnsureMatchingEncoding(_:)(v26, v30, v32);
          v37 = v134;
          v33 = v129;
        }

        if (result >> 14 < v34 || result >> 14 >= v33)
        {
          goto LABEL_154;
        }

        if ((result & 1) == 0)
        {
          result = _StringGuts.scalarAlignSlow(_:)(result, v30, v32);
          v37 = v134;
        }
      }

      else
      {
        if (v26 >> 14 < v34)
        {
          goto LABEL_153;
        }

        result = v26;
        if (v26 >> 14 >= v33)
        {
          goto LABEL_153;
        }
      }

      if ((v32 & 0x1000000000000000) != 0)
      {
        result = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
        v37 = v134;
        if (result > 0x3E)
        {
          goto LABEL_48;
        }

        goto LABEL_47;
      }

      v128 = v41;
      v42 = v34;
      v43 = result >> 16;
      if ((v32 & 0x2000000000000000) != 0)
      {
        v137 = v30;
        v138 = v32 & 0xFFFFFFFFFFFFFFLL;
        v44 = &v137 + v43;
        result = *(&v137 + v43);
        if ((*(&v137 + v43) & 0x80000000) == 0)
        {
          goto LABEL_45;
        }

        v49 = (__clz(result ^ 0xFF) - 24);
        if (v49 <= 2)
        {
          if (v49 != 1)
          {
            result = v44[1] & 0x3F | ((result & 0x1F) << 6);
          }

LABEL_45:
          v34 = v42;
          goto LABEL_46;
        }

        v34 = v42;
        if (v49 == 3)
        {
          v50 = v44[1];
          v51 = v44[2];
          v52 = ((result & 0xF) << 12) | ((v50 & 0x3F) << 6);
        }

        else
        {
          v53 = v44[1];
          v54 = v44[2];
          v51 = v44[3];
          v52 = ((result & 0xF) << 18) | ((v53 & 0x3F) << 12) | ((v54 & 0x3F) << 6);
        }

        result = v52 & 0xFFFFFFC0 | v51 & 0x3F;
      }

      else
      {
        if ((v30 & 0x1000000000000000) == 0)
        {
          _StringObject.sharedUTF8.getter();
        }

        result = _decodeScalar(_:startingAt:)();
        v34 = v42;
        v37 = v134;
      }

LABEL_46:
      v41 = v128;
      if (result > 0x3E)
      {
        goto LABEL_48;
      }

LABEL_47:
      if (((1 << result) & 0x5000520100000000) != 0)
      {
        break;
      }

LABEL_48:
      if (result == 125)
      {
        break;
      }

      if (v41)
      {
        if (v39 == v37)
        {
          result = _StringGuts._slowEnsureMatchingEncoding(_:)(v26, v30, v32);
          v37 = v134;
          v26 = result;
        }

        v14 = v159;
        if (v130 <= v26 >> 16)
        {
          goto LABEL_156;
        }

        if ((v26 & 1) == 0)
        {
          result = _StringGuts.scalarAlignSlow(_:)(v26, v30, v32);
          v37 = v134;
          v26 = v26 & 0xC | result & 0xFFFFFFFFFFFFFFF3 | 1;
        }
      }

      else
      {
        v14 = v159;
        if (v130 <= v26 >> 16)
        {
          goto LABEL_157;
        }
      }

      if ((v32 & 0x1000000000000000) != 0)
      {
        result = String.UnicodeScalarView._foreignIndex(after:)();
        v37 = v134;
        v26 = result;
        v33 = v129;
        if (v129 == result >> 14)
        {
          goto LABEL_74;
        }
      }

      else
      {
        v45 = v26 >> 16;
        v33 = v129;
        if ((v32 & 0x2000000000000000) != 0)
        {
          v137 = v30;
          v138 = v32 & 0xFFFFFFFFFFFFFFLL;
          v46 = *(&v137 + v45);
        }

        else
        {
          result = (v32 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((v30 & 0x1000000000000000) == 0)
          {
            result = _StringObject.sharedUTF8.getter();
            v37 = v134;
            v33 = v129;
          }

          v46 = *(result + v45);
        }

        v47 = v46;
        v48 = __clz(v46 ^ 0xFF) - 24;
        if (v47 >= 0)
        {
          LOBYTE(v48) = 1;
        }

        v26 = ((v45 + v48) << 16) | 5;
        if (v33 == v26 >> 14)
        {
          goto LABEL_74;
        }
      }
    }

    v14 = v159;
LABEL_74:
    result = v118;
    if (v34 > v26 >> 14)
    {
LABEL_155:
      __break(1u);
LABEL_156:
      __break(1u);
LABEL_157:
      __break(1u);
      goto LABEL_158;
    }

LABEL_75:
    v55 = Substring.UnicodeScalarView.subscript.getter();
    v22 = v56;
    v58 = v57;
    v60 = v59;

    v61 = Substring.UnicodeScalarView.distance(from:to:)();
    v62 = String.UnicodeScalarView.index(_:offsetBy:)(v8, v61, v35, v6);
    v25 = v126;
    v126[2] = v62;
    if (v132 == v62 >> 14)
    {
      goto LABEL_105;
    }

    v63 = v62;
    v64 = _StringGuts.validateScalarIndex(_:)(v62, v35, v6);
    if ((v6 & 0x1000000000000000) != 0)
    {
      if (_StringGuts.foreignErrorCorrectedScalar(startingAt:)() != 60)
      {
        goto LABEL_105;
      }

      _StringGuts.validateScalarIndex(_:)(v63, v35, v6);
      v87 = String.UnicodeScalarView._foreignIndex(after:)();
      goto LABEL_97;
    }

    v135 = v35;
    v65 = v55;
    v66 = v22;
    v67 = v58;
    v68 = v64 >> 16;
    if (!v131)
    {
      v137 = v135;
      v138 = v6 & 0xFFFFFFFFFFFFFFLL;
      v70 = &v137 + v68;
      v78 = *(&v137 + v68);
      v72 = *(&v137 + v68);
      v58 = v67;
      v22 = v66;
      v55 = v65;
      if ((v78 & 0x80000000) == 0)
      {
        goto LABEL_95;
      }

      v73 = (__clz(v72 ^ 0xFF) - 24);
      if (v73 > 2)
      {
        if (v73 == 3)
        {
          v79 = v70[1];
          v80 = v70[2];
          v81 = ((v72 & 0xF) << 12) | ((v79 & 0x3F) << 6);
        }

        else
        {
          v84 = v70[1];
          v85 = v70[2];
          v80 = v70[3];
          v81 = ((v72 & 0xF) << 18) | ((v84 & 0x3F) << 12) | ((v85 & 0x3F) << 6);
        }

        v72 = v81 & 0xFFFFFFC0 | v80 & 0x3F;
        goto LABEL_95;
      }

LABEL_86:
      if (v73 != 1)
      {
        v72 = v70[1] & 0x3F | ((v72 & 0x1F) << 6);
      }

LABEL_95:
      v74 = v135;
      if (v72 != 60)
      {
        goto LABEL_105;
      }

      goto LABEL_96;
    }

    if ((v135 & 0x1000000000000000) != 0)
    {
      v69 = (v6 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      v69 = _StringObject.sharedUTF8.getter();
    }

    v70 = (v69 + v68);
    v71 = *(v69 + v68);
    v72 = *(v69 + v68);
    v58 = v67;
    v22 = v66;
    v55 = v65;
    if ((v71 & 0x80000000) == 0)
    {
      goto LABEL_95;
    }

    v73 = (__clz(v72 ^ 0xFF) - 24);
    if (v73 <= 2)
    {
      goto LABEL_86;
    }

    v74 = v135;
    if (v73 == 3)
    {
      v75 = v70[1];
      v76 = v70[2];
      v77 = ((v72 & 0xF) << 12) | ((v75 & 0x3F) << 6);
    }

    else
    {
      v82 = v70[1];
      v83 = v70[2];
      v76 = v70[3];
      v77 = ((v72 & 0xF) << 18) | ((v82 & 0x3F) << 12) | ((v83 & 0x3F) << 6);
    }

    if ((v77 & 0xFFFFFFC0 | v76 & 0x3F) != 0x3C)
    {
LABEL_105:
      v91 = MEMORY[0x277D84F90];
      goto LABEL_106;
    }

LABEL_96:
    v86 = _StringGuts.validateScalarIndex(_:)(v63, v74, v6);
    v87 = ((_StringGuts.fastUTF8ScalarLength(startingAt:)(v86 >> 16) + (v86 >> 16)) << 16) | 5;
LABEL_97:
    v126[2] = v87;
    v88 = PType.Parser.parseTypeList(delimeter:within:)(62, v127);
    if (!v117)
    {
      v117 = 0;
      v89 = *(v88 + 2);
      if (!v89)
      {

        goto LABEL_105;
      }

      v133 = v60;
      v137 = MEMORY[0x277D84F90];
      v136 = v88;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v89, 0);
      v90 = v136;
      v91 = v137;
      v92 = *(v137 + 16);
      v93 = 52;
      do
      {
        v94 = *&v90[v93];
        v137 = v91;
        v95 = *(v91 + 24);
        if (v92 >= v95 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v95 > 1), v92 + 1, 1);
          v90 = v136;
          v91 = v137;
        }

        *(v91 + 16) = v92 + 1;
        *(v91 + 4 * v92 + 32) = v94;
        v93 += 24;
        ++v92;
        --v89;
      }

      while (v89);

      v25 = v126;
      v14 = v159;
      v60 = v133;
LABEL_106:
      v141 = 0;
      v142 = 0xE000000000000000;
      v137 = v55;
      v138 = v22;
      v139 = v58;
      v140 = v60;
      lazy protocol witness table accessor for type Substring.UnicodeScalarView and conformance Substring.UnicodeScalarView();
      String.UnicodeScalarView.append<A>(contentsOf:)();
      v97 = v141;
      v96 = v142;

      if (v125)
      {
        outlined consume of PType.IsA(v121, v122, v123, v124, 1u);
      }

      LOBYTE(v137) = 1;
      LOBYTE(v141) = 1;
      v98 = one-time initialization token for none;

      if (v98 != -1)
      {
        swift_once();
      }

      v143[0] = v97;
      v143[1] = v96;
      v143[2] = v91;
      v143[3] = v14;
      v125 = 1;
      v144 = 1;
      v145 = 0;
      v146 = 0;
      v147 = v137;
      v148 = -1;
      v149 = static PType.Metadata.none;
      v150 = qword_280481CC8;
      v151 = qword_280481CD0;
      v152 = dword_280481CD8;
      v153 = byte_280481CDC;
      v154 = 0;
      v155 = v141;
      v156 = 0;
      v157 = 1;
      v158 = 6;
      v22 = closure #1 in findOrAdd #1 (proposed:) in PType.Parser.parseNamedType(within:)(v127, v143);

      outlined destroy of PType(v143);
      v24 = v25[2];
      v121 = v97;
      v122 = v96;
      v123 = v91;
      v124 = v14;
LABEL_111:
      v100 = *v25;
      v99 = v25[1];
      v101 = HIBYTE(v99) & 0xF;
      if ((v99 & 0x2000000000000000) == 0)
      {
        v101 = *v25 & 0xFFFFFFFFFFFFLL;
      }

      if (v24 >> 14 == 4 * v101)
      {
        goto LABEL_143;
      }

      v102 = _StringGuts.validateScalarIndex(_:)(v24, *v25, v25[1]);
      if ((v99 & 0x1000000000000000) == 0)
      {
        v103 = v102 >> 16;
        if ((v99 & 0x2000000000000000) != 0)
        {
          v137 = v100;
          v138 = v99 & 0xFFFFFFFFFFFFFFLL;
          v105 = &v137 + v103;
        }

        else
        {
          if ((v100 & 0x1000000000000000) != 0)
          {
            v104 = (v99 & 0xFFFFFFFFFFFFFFFLL) + 32;
          }

          else
          {
            v104 = _StringObject.sharedUTF8.getter();
          }

          v105 = (v104 + v103);
        }

        v106 = *v105;
        if (*v105 < 0)
        {
          v112 = (__clz(v106 ^ 0xFF) - 24);
          if (v112 > 2)
          {
            if (v112 == 3)
            {
              v106 = ((v106 & 0xF) << 12) | ((v105[1] & 0x3F) << 6) | v105[2] & 0x3F;
            }

            else
            {
              v106 = ((v106 & 0xF) << 18) | ((v105[1] & 0x3F) << 12) | ((v105[2] & 0x3F) << 6) | v105[3] & 0x3F;
            }
          }

          else if (v112 != 1)
          {
            v106 = v105[1] & 0x3F | ((v106 & 0x1F) << 6);
          }
        }

        if (v106 == 46)
        {
          v107 = _StringGuts.validateScalarIndex(_:)(v24, v100, v99) >> 16;
          v108 = ((_StringGuts.fastUTF8ScalarLength(startingAt:)(v107) + v107) << 16) | 5;
          goto LABEL_123;
        }

LABEL_143:

        if (v125)
        {
          result = outlined consume of PType.IsA(v121, v122, v123, v124, 1u);
        }

        v113 = v25[3];
        v4 = __OFSUB__(v113, 1);
        v114 = v113 - 1;
        if (!v4)
        {
          v25[3] = v114;
          return v22;
        }

LABEL_159:
        __break(1u);
LABEL_160:
        __break(1u);
        return result;
      }

      if (_StringGuts.foreignErrorCorrectedScalar(startingAt:)() != 46)
      {
        goto LABEL_143;
      }

      _StringGuts.validateScalarIndex(_:)(v24, v100, v99);
      v108 = String.UnicodeScalarView._foreignIndex(after:)();
LABEL_123:
      v25[2] = v108;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 16) + 1, 1, v14);
        v14 = result;
      }

      v110 = *(v14 + 16);
      v109 = *(v14 + 24);
      if (v110 >= v109 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v109 > 1), v110 + 1, 1, v14);
        v14 = result;
      }

      *(v14 + 16) = v110 + 1;
      *(v14 + 4 * v110 + 32) = v22;
      v7 = *v25;
      v6 = v25[1];
      v8 = v25[2];
      v9 = (v6 & 0x2000000000000000) == 0;
      v111 = HIBYTE(v6) & 0xF;
      if ((v6 & 0x2000000000000000) == 0)
      {
        v111 = v7 & 0xFFFFFFFFFFFFLL;
      }

      v11 = 4 * v111;
      if (4 * v111 < v8 >> 14)
      {
LABEL_152:
        __break(1u);
LABEL_153:
        __break(1u);
LABEL_154:
        __break(1u);
        goto LABEL_155;
      }

      continue;
    }

    break;
  }

  if (v125)
  {
    result = outlined consume of PType.IsA(v121, v122, v123, v124, 1u);
  }

  v115 = v126[3];
  v4 = __OFSUB__(v115, 1);
  v116 = v115 - 1;
  if (v4)
  {
    goto LABEL_160;
  }

  v126[3] = v116;
  return v22;
}

char *PType.Parser.parseTuple(within:)(unint64_t a1)
{
  v4 = *v1;
  v5 = v1[1];
  v6 = v1[2];
  v7 = specialized Collection.subscript.getter(v6, *v1, v5);
  v11 = specialized Sequence<>.starts<A>(with:)(0x7B6B636150uLL, 0xE500000000000000, v7, v8, v9, v10);

  v12 = _StringGuts.validateScalarIndex(_:)(v6, v4, v5);
  if ((v5 & 0x1000000000000000) == 0)
  {
    v13 = v12 >> 16;
    if ((v5 & 0x2000000000000000) != 0)
    {
      v36[0] = v4;
      v36[1] = v5 & 0xFFFFFFFFFFFFFFLL;
      v15 = v36 + v13;
    }

    else
    {
      if ((v4 & 0x1000000000000000) != 0)
      {
        v14 = (v5 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        v14 = _StringObject.sharedUTF8.getter();
      }

      v15 = (v14 + v13);
    }

    v16 = *v15;
    if (*v15 < 0)
    {
      v32 = (__clz(v16 ^ 0xFF) - 24);
      if (v32 > 2)
      {
        if (v32 == 3)
        {
          v16 = ((v16 & 0xF) << 12) | ((v15[1] & 0x3F) << 6) | v15[2] & 0x3F;
        }

        else
        {
          v16 = ((v16 & 0xF) << 18) | ((v15[1] & 0x3F) << 12) | ((v15[2] & 0x3F) << 6) | v15[3] & 0x3F;
        }
      }

      else if (v32 != 1)
      {
        v16 = v15[1] & 0x3F | ((v16 & 0x1F) << 6);
      }
    }

    if ((v16 == 40) | v11 & 1)
    {
      v17 = _StringGuts.validateScalarIndex(_:)(v6, v4, v5) >> 16;
      v18 = ((_StringGuts.fastUTF8ScalarLength(startingAt:)(v17) + v17) << 16) | 5;
      goto LABEL_10;
    }

    return PType.Parser.parseProto(within:)(a1);
  }

  if (!((_StringGuts.foreignErrorCorrectedScalar(startingAt:)() == 40) | v11 & 1))
  {
    return PType.Parser.parseProto(within:)(a1);
  }

  _StringGuts.validateScalarIndex(_:)(v6, v4, v5);
  v18 = String.UnicodeScalarView._foreignIndex(after:)();
LABEL_10:
  v1[2] = v18;
  if (v11)
  {
    v19 = 125;
  }

  else
  {
    v19 = 41;
  }

  result = PType.Parser.parseTypeList(delimeter:within:)(v19, a1);
  if (!v2)
  {
    LOBYTE(v36[0]) = 1;
    v38 = 1;
    v37 = 1;
    if (one-time initialization token for none != -1)
    {
      v33 = result;
      swift_once();
      result = v33;
    }

    v21 = static PType.Metadata.none;
    v22 = qword_280481CC8;
    v23 = qword_280481CD0;
    v24 = dword_280481CD8;
    v25 = byte_280481CDC;
    v26 = v36[0];
    v27 = v38;
    v28 = v37;
    v29 = *(a1 + 12);
    if (v29 == *(a1 + 8))
    {
      v34 = result;
      v35 = static PType.Metadata.none;
      specialized UnsafeArray.growToCapacity(_:)(2 * v29);
      v21 = v35;
      result = v34;
    }

    if (*a1)
    {
      v30 = *(a1 + 12);
      v31 = *a1 + 120 * v30;
      *v31 = result;
      *(v31 + 8) = 0;
      *(v31 + 16) = 0;
      *(v31 + 24) = 0;
      *(v31 + 32) = 2;
      *(v31 + 40) = 0;
      *(v31 + 48) = 0;
      *(v31 + 56) = v26;
      *(v31 + 60) = -1;
      *(v31 + 64) = v21;
      *(v31 + 80) = v22;
      *(v31 + 88) = v23;
      *(v31 + 96) = v24;
      *(v31 + 100) = v25;
      *(v31 + 104) = 0;
      *(v31 + 108) = v27;
      *(v31 + 112) = 0;
      *(v31 + 116) = v28;
      *(v31 + 117) = 6;
      if (v30 != -1)
      {
        *(a1 + 12) = v30 + 1;
        return v30;
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

char *PType.Parser.parseTypeList(delimeter:within:)(int a1, _OWORD *a2)
{
  v4 = v3;
  v6 = MEMORY[0x277D84F90];
  while (1)
  {
    v8 = *v2;
    v7 = v2[1];
    v9 = v2[2];
    v10 = _StringGuts.validateScalarIndex(_:)(v9, *v2, v7);
    if ((v7 & 0x1000000000000000) != 0)
    {
      if (_StringGuts.foreignErrorCorrectedScalar(startingAt:)() == a1)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v11 = v10 >> 16;
      if ((v7 & 0x2000000000000000) != 0)
      {
        *&v62[0] = v8;
        *(&v62[0] + 1) = v7 & 0xFFFFFFFFFFFFFFLL;
        v13 = v62 + v11;
      }

      else
      {
        if ((v8 & 0x1000000000000000) != 0)
        {
          v12 = (v7 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          v12 = _StringObject.sharedUTF8.getter();
        }

        v13 = (v12 + v11);
      }

      v14 = *v13;
      if (*v13 < 0)
      {
        v19 = (__clz(v14 ^ 0xFF) - 24);
        if (v19 > 2)
        {
          if (v19 == 3)
          {
            v14 = ((v14 & 0xF) << 12) | ((v13[1] & 0x3F) << 6) | v13[2] & 0x3F;
          }

          else
          {
            v14 = ((v14 & 0xF) << 18) | ((v13[1] & 0x3F) << 12) | ((v13[2] & 0x3F) << 6) | v13[3] & 0x3F;
          }
        }

        else if (v19 != 1)
        {
          v14 = v13[1] & 0x3F | ((v14 & 0x1F) << 6);
        }
      }

      if (v14 == a1)
      {
        v42 = _StringGuts.validateScalarIndex(_:)(v9, v8, v7) >> 16;
        v2[2] = ((_StringGuts.fastUTF8ScalarLength(startingAt:)(v42) + v42) << 16) | 5;
        return v6;
      }
    }

    if (*(v6 + 2))
    {
      break;
    }

LABEL_26:
    v47 = v6;
    v63 = v4;
    v21 = a2[3];
    v22 = a2[5];
    v59 = a2[4];
    v60 = v22;
    v23 = a2[5];
    v61 = a2[6];
    v24 = a2[1];
    v56[0] = *a2;
    v56[1] = v24;
    v25 = a2[3];
    v27 = *a2;
    v26 = a2[1];
    v57 = a2[2];
    v58 = v25;
    v53 = v59;
    v54 = v23;
    v55 = a2[6];
    v49 = v27;
    v50 = v26;
    v51 = v57;
    v52 = v21;
    outlined init with copy of Interpreter.Storage.Types(v56, v48);
    v45 = PType.Parser.parseTupleTypeName(types:)();
    v46 = v28;
    v62[4] = v53;
    v62[5] = v54;
    v62[6] = v55;
    v62[0] = v49;
    v62[1] = v50;
    v62[2] = v51;
    v62[3] = v52;
    outlined destroy of Interpreter.Storage.Types(v62);
    v29 = v2[2];

    specialized Collection.subscript.getter(v29, v8, v7);

    String.init(_:)();
    v30._countAndFlagsBits = 0x2074756F6E69;
    v30._object = 0xE600000000000000;
    v31 = String.hasPrefix(_:)(v30);

    if (v31)
    {
      v32 = String.count.getter();
      v2[2] = String.UnicodeScalarView.index(_:offsetBy:)(v29, v32, v8, v7);
      v33 = 1;
    }

    else
    {
      v33 = 0;
    }

    v34 = v63;
    v35 = PType.Parser.parseFunctional(within:)(a2);
    v4 = v34;
    v6 = v47;
    if (v34)
    {

      return v6;
    }

    v36 = v35;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v47 + 2) + 1, 1, v47);
    }

    v38 = *(v6 + 2);
    v37 = *(v6 + 3);
    v39 = v6;
    if (v38 >= v37 >> 1)
    {
      v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1, v6);
    }

    *(v39 + 2) = v38 + 1;
    v6 = v39;
    v40 = &v39[24 * v38];
    *(v40 + 4) = v45;
    *(v40 + 5) = v46;
    v40[48] = v33;
    *(v40 + 13) = v36;
  }

  v15 = _StringGuts.validateScalarIndex(_:)(v9, v8, v7);
  if ((v7 & 0x1000000000000000) != 0)
  {
    v20 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
  }

  else
  {
    v16 = v15 >> 16;
    if ((v7 & 0x2000000000000000) != 0)
    {
      *&v62[0] = v8;
      *(&v62[0] + 1) = v7 & 0xFFFFFFFFFFFFFFLL;
      v18 = v62 + v16;
    }

    else
    {
      if ((v8 & 0x1000000000000000) != 0)
      {
        v17 = (v7 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        v17 = _StringObject.sharedUTF8.getter();
      }

      v18 = (v17 + v16);
    }

    v20 = *v18;
    if (*v18 < 0)
    {
      v41 = (__clz(v20 ^ 0xFF) - 24);
      if (v41 > 2)
      {
        if (v41 == 3)
        {
          v20 = ((v20 & 0xF) << 12) | ((v18[1] & 0x3F) << 6) | v18[2] & 0x3F;
        }

        else
        {
          v20 = ((v20 & 0xF) << 18) | ((v18[1] & 0x3F) << 12) | ((v18[2] & 0x3F) << 6) | v18[3] & 0x3F;
        }
      }

      else if (v41 != 1)
      {
        v20 = v18[1] & 0x3F | ((v20 & 0x1F) << 6);
      }
    }
  }

  if (v20 == 44)
  {
    v2[2] = String.UnicodeScalarView.index(_:offsetBy:)(v9, 2, v8, v7);
    goto LABEL_26;
  }

  __break(1u);
LABEL_50:
  _StringGuts.validateScalarIndex(_:)(v9, v8, v7);
  v2[2] = String.UnicodeScalarView._foreignIndex(after:)();
  return v6;
}

unint64_t closure #1 in findOrAdd #1 (proposed:) in PType.Parser.parseNamedType(within:)(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 12);
  if (v4 == *(result + 8))
  {
    result = specialized UnsafeArray.growToCapacity(_:)(2 * v4);
  }

  if (*v3)
  {
    v5 = *(v3 + 12);
    v6 = *v3 + 120 * v5;
    v7 = *a2;
    v8 = *(a2 + 16);
    v9 = *(a2 + 48);
    *(v6 + 32) = *(a2 + 32);
    *(v6 + 48) = v9;
    *v6 = v7;
    *(v6 + 16) = v8;
    v10 = *(a2 + 64);
    v11 = *(a2 + 80);
    v12 = *(a2 + 96);
    *(v6 + 110) = *(a2 + 110);
    *(v6 + 80) = v11;
    *(v6 + 96) = v12;
    *(v6 + 64) = v10;
    if (v5 != -1)
    {
      *(v3 + 12) = v5 + 1;
      v13 = v5;
      outlined init with copy of PType(a2, v14);
      return v13;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t one-time initialization function for external()
{
  if (one-time initialization token for currentIdx != -1)
  {
    swift_once();
  }

  static PType.Pattern.external = atomic_fetch_add_explicit(static PType.Pattern.currentIdx, 1u, memory_order_relaxed) + 1;
  dword_280481CF0 = 0;
  result = PType.Pattern.IsA.init(_:genericParams:)(&outlined read-only object #0 of one-time initialization function for external, 0, &v1);
  qword_280481CE8 = v1;
  return result;
}

uint64_t PType.Pattern.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (one-time initialization token for currentIdx != -1)
  {
    swift_once();
  }

  *a3 = atomic_fetch_add_explicit(static PType.Pattern.currentIdx, 1u, memory_order_relaxed) + 1;
  *(a3 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C328DC0;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  result = PType.Pattern.IsA.init(_:genericParams:)(inited, 0, &v8);
  *(a3 + 8) = v8;
  return result;
}

uint64_t static PType.Pattern.external.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for external != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v2 = qword_280481CE8;
  v3 = dword_280481CF0;
  *a1 = static PType.Pattern.external;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

uint64_t *PType.Pattern.init(_:flags:)@<X0>(uint64_t *result@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *result;
  v4 = *a2;
  if (one-time initialization token for currentIdx != -1)
  {
    v5 = a3;
    result = swift_once();
    a3 = v5;
  }

  *a3 = atomic_fetch_add_explicit(static PType.Pattern.currentIdx, 1u, memory_order_relaxed) + 1;
  *(a3 + 8) = v3;
  *(a3 + 16) = v4;
  return result;
}

uint64_t static PType.Pattern.viewValue.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for viewValue != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v2 = qword_280481D00;
  v3 = dword_280481D08;
  *a1 = static PType.Pattern.viewValue;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

uint64_t one-time initialization function for viewValue(uint64_t a1, _DWORD *a2, void *a3, int a4, _DWORD *a5)
{
  if (one-time initialization token for currentIdx != -1)
  {
    v5 = a2;
    v6 = a5;
    v7 = a4;
    v8 = a3;
    result = swift_once();
    a2 = v5;
    a3 = v8;
    a4 = v7;
    a5 = v6;
  }

  *a2 = atomic_fetch_add_explicit(static PType.Pattern.currentIdx, 1u, memory_order_relaxed) + 1;
  *a3 = 0x8000000000000000;
  *a5 = a4;
  return result;
}

uint64_t static PType.Pattern.any.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for any != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v2 = qword_280481D18;
  v3 = dword_280481D20;
  *a1 = static PType.Pattern.any;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

uint64_t PType.Pattern.IsA.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C328DC0;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  result = PType.Pattern.IsA.init(_:genericParams:)(inited, 0, &v8);
  *a3 = v8;
  return result;
}

uint64_t PType.Pattern.IsA.init(_:genericParams:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = swift_allocObject();
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = v6;
    v9 = v7 - 1;
    v10 = a1 + 16 * (v7 - 1);
    v11 = *(v10 + 32);
    v12 = *(v10 + 40);
    objc_allocWithZone(MEMORY[0x277CCAC68]);

    v8[2] = @nonobjc NSRegularExpression.init(pattern:options:)(v11, v12, 0);
    v8[3] = a2;
    v13 = *(a1 + 16);
    if (v13 <= 1)
    {

      v14 = 0;
LABEL_12:
      v8[4] = v14;
      *a3 = v8;
      return result;
    }

    if (v13 >= v9)
    {
      if (v9)
      {
        v23 = v8;
        v24 = a3;
        v26 = MEMORY[0x277D84F90];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9, 0);
        v14 = v26;
        v15 = (a1 + 40);
        do
        {
          v16 = *(v15 - 1);
          v17 = *v15;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_26C328DC0;
          *(inited + 32) = v16;
          *(inited + 40) = v17;

          PType.Pattern.IsA.init(_:genericParams:)(&v25, inited, 0);
          v19 = v25;
          v26 = v14;
          v21 = *(v14 + 16);
          v20 = *(v14 + 24);
          if (v21 >= v20 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1);
            v14 = v26;
          }

          *(v14 + 16) = v21 + 1;
          *(v14 + 8 * v21 + 32) = v19;
          v15 += 2;
          --v9;
        }

        while (v9);

        v8 = v23;
        a3 = v24;
      }

      else
      {

        v14 = MEMORY[0x277D84F90];
      }

      goto LABEL_12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  swift_deallocUninitializedObject();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t PType.Pattern.IsA.init(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = PType.Pattern.IsA.init(_:genericParams:)(a1, 0, &v4);
  *a2 = v4;
  return result;
}

void PType.Pattern.IsA.match(index:within:id:)(unsigned int a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  v5 = *(a2 + 2);
  v6 = *(a2 + 3);
  v7 = *(a2 + 4);
  v140 = *(a2 + 3);
  v141 = v7;
  v8 = *(a2 + 6);
  v142 = *(a2 + 5);
  v143 = v8;
  v9 = *(a2 + 2);
  v138 = *(a2 + 1);
  v139 = v9;
  if (v6 <= a1)
  {
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
  }

  else if (v4)
  {
    v11 = *v3;
    v12 = (v4 + 120 * a1);
    v14 = v12[2];
    v13 = v12[3];
    v15 = v12[1];
    v131 = *v12;
    v132 = v15;
    v133 = v14;
    v134 = v13;
    v16 = v12[4];
    v17 = v12[5];
    v18 = v12[6];
    *(v137 + 14) = *(v12 + 110);
    v136 = v17;
    v137[0] = v18;
    v135 = v16;
    v20 = *(&v131 + 1);
    v19 = v131;
    v22 = *(&v132 + 1);
    v21 = v132;
    v23 = v133;
    v24 = v11 >> 61;
    if ((v11 >> 61) > 1)
    {
      if (v24 == 2)
      {
        if (v133 == 3)
        {
          v48 = *((v11 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          v49 = *(v48 + 16);
          if (v49 == *(v131 + 16))
          {
            v96 = *(&v131 + 1);
            v106 = v5;
            v110 = a3;
            v50 = v132;
            v51 = 0;
            v103 = v131;
            v52 = v131 + 32;
            do
            {
              if (v49 == v51)
              {
                break;
              }

              if (v51 >= *(v48 + 16))
              {
                goto LABEL_75;
              }

              v53 = *(v103 + 16);
              if (v51 == v53)
              {
                break;
              }

              if (v51 >= v53)
              {
                goto LABEL_77;
              }

              v54 = *(v52 + 4 * v51);
              v112 = *(v48 + 32 + 8 * v51);
              v122 = v4;
              v123 = v106;
              v124 = v6;
              v55 = *(a2 + 4);
              v127 = *(a2 + 3);
              v128 = v55;
              v56 = *(a2 + 6);
              v129 = *(a2 + 5);
              v130 = v56;
              v57 = *(a2 + 2);
              v125 = *(a2 + 1);
              v126 = v57;
              ++v51;
            }

            while ((PType.Pattern.IsA.match(index:within:id:)(v54, &v122, v110) & 1) != 0);

            outlined init with copy of PType(&v131, &v122);

            v58 = v103;
            v59 = v96;
            v61 = *(&v50 + 1);
            v60 = v50;
            v62 = 3;
          }

          else
          {

            outlined init with copy of PType(&v131, &v122);

            v58 = v19;
            v59 = v20;
            v60 = v21;
            v61 = v22;
            v62 = 3;
          }

          goto LABEL_31;
        }
      }

      else
      {
        if (v24 != 3)
        {
          outlined init with copy of PType(&v131, &v122);

          v58 = v19;
          v59 = v20;
          v60 = v21;
          v61 = v22;
          v62 = v23;
LABEL_31:
          outlined consume of PType.IsA(v58, v59, v60, v61, v62);
          return;
        }

        if (v133 == 4)
        {
          v108 = *((v11 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
          v112 = *((v11 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          v122 = v4;
          v123 = v5;
          v124 = v6;
          v25 = *(a2 + 4);
          v127 = *(a2 + 3);
          v128 = v25;
          v26 = *(a2 + 6);
          v129 = *(a2 + 5);
          v130 = v26;
          v27 = *(a2 + 2);
          v125 = *(a2 + 1);
          v126 = v27;
          v101 = v131;
          v28 = v6;
          v30 = v5;
          if (PType.Pattern.IsA.match(index:within:id:)(v131, &v122, a3))
          {
            v121 = v108;
            v112 = v4;
            v113 = v30;
            v114 = v28;
            v31 = *(a2 + 4);
            v117 = *(a2 + 3);
            v118 = v31;
            v32 = *(a2 + 6);
            v119 = *(a2 + 5);
            v120 = v32;
            v33 = *(a2 + 2);
            v115 = *(a2 + 1);
            v116 = v33;
            PType.Pattern.IsA.match(index:within:id:)(HIDWORD(v101), &v112, a3);

            outlined init with copy of PType(&v131, &v122);

            outlined consume of PType.IsA(v101, v20, v21, v22, 4u);
            return;
          }

          outlined init with copy of PType(&v131, &v122);

          v58 = v101;
          v59 = v20;
          v60 = v21;
          v61 = v22;
          v62 = 4;
          goto LABEL_31;
        }
      }

      goto LABEL_39;
    }

    if (v24)
    {
      v63 = v11 & 0x1FFFFFFFFFFFFFFFLL;
      if (v133 == 2)
      {
        v107 = v5;
        v111 = a3;
        v64 = *((v11 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v65 = *(v131 + 16);
        v100 = *(v63 + 16);
        v104 = v131;
        if (v65)
        {
          v97 = *(&v131 + 1);
          v66 = v132;

          outlined init with copy of PType(&v131, &v122);
          v122 = MEMORY[0x277D84F90];
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v65, 0);
          v67 = v122;
          v68 = *(v122 + 16);
          v69 = (v19 + 52);
          do
          {
            v71 = *v69;
            v69 += 6;
            v70 = v71;
            v122 = v67;
            v72 = *(v67 + 24);
            v73 = v68 + 1;
            if (v68 >= v72 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v72 > 1), v68 + 1, 1);
              v67 = v122;
            }

            *(v67 + 16) = v73;
            *(v67 + 4 * v68++ + 32) = v70;
            --v65;
          }

          while (v65);
          v22 = *(&v66 + 1);
          v20 = v97;
          v21 = v66;
          v64 = v100;
          v19 = v104;
        }

        else
        {

          outlined init with copy of PType(&v131, &v122);
          v67 = MEMORY[0x277D84F90];
          v73 = *(MEMORY[0x277D84F90] + 16);
        }

        if (*(v64 + 16) == v73)
        {
          v93 = v22;
          v85 = 0;
          v86 = v64 + 32;
          do
          {
            if (v73 == v85)
            {
              break;
            }

            if (v85 >= *(v64 + 16))
            {
              goto LABEL_76;
            }

            v87 = *(v67 + 16);
            if (v85 == v87)
            {
              break;
            }

            if (v85 >= v87)
            {
              goto LABEL_78;
            }

            v88 = *(v67 + 4 * v85 + 32);
            v112 = *(v86 + 8 * v85);
            v122 = v4;
            v123 = v107;
            v124 = v6;
            v127 = v140;
            v128 = v141;
            v129 = v142;
            v130 = v143;
            v125 = v138;
            v126 = v139;
            v64 = v100;
            ++v85;
          }

          while ((PType.Pattern.IsA.match(index:within:id:)(v88, &v122, v111) & 1) != 0);

          v58 = v104;
          v59 = v20;
          v60 = v21;
          v61 = v93;
          v62 = 2;
        }

        else
        {

          v58 = v19;
          v59 = v20;
          v60 = v21;
          v61 = v22;
          v62 = 2;
        }

        goto LABEL_31;
      }

      goto LABEL_39;
    }

    if (v133 != 1)
    {
LABEL_39:

      outlined init with copy of PType(&v131, &v122);

      v58 = v19;
      v59 = v20;
      v60 = v21;
      v61 = v22;
      v62 = v23;
      goto LABEL_31;
    }

    v105 = v5;
    v109 = a3;
    v99 = v6;
    v34 = *(v11 + 24);
    v94 = *(v11 + 32);
    v35 = *(v11 + 16);

    outlined init with copy of PType(&v131, &v122);
    v36 = MEMORY[0x26D69CC20](v19, v20);
    v95 = v20;
    v37 = [v35 numberOfMatchesInString:v36 options:0 range:{0, String.count.getter()}];

    v38 = v37 > 0;
    v102 = v19;
    if (v34)
    {
      if (v37 >= 1)
      {
        v39 = *(v34 + 16);
        if (v39 == *(v21 + 16))
        {
          v92 = v22;
          v40 = v21;
          v41 = 0;
          v98 = v40;
          v42 = v40 + 32;
          while (v39 != v41)
          {
            if (v41 >= *(v34 + 16))
            {
              goto LABEL_79;
            }

            v43 = *(v98 + 16);
            if (v41 == v43)
            {
              break;
            }

            if (v41 >= v43)
            {
              goto LABEL_80;
            }

            v44 = *(v42 + 4 * v41);
            v112 = *(v34 + 32 + 8 * v41);
            v122 = v4;
            v123 = v105;
            v124 = v99;
            v45 = *(a2 + 4);
            v127 = *(a2 + 3);
            v128 = v45;
            v46 = *(a2 + 6);
            v129 = *(a2 + 5);
            v130 = v46;
            v47 = *(a2 + 2);
            v125 = *(a2 + 1);
            v126 = v47;
            ++v41;
            if ((PType.Pattern.IsA.match(index:within:id:)(v44, &v122, v109) & 1) == 0)
            {
              v38 = 0;
              goto LABEL_70;
            }
          }

          v38 = 1;
LABEL_70:
          v22 = v92;
          v21 = v98;
          v74 = v94;
          v75 = v95;
          if (!v94)
          {
            goto LABEL_71;
          }

          goto LABEL_44;
        }
      }

      v38 = 0;
    }

    v74 = v94;
    v75 = v95;
    if (!v94)
    {
LABEL_71:

      v89 = v102;
      v90 = v75;
      v91 = v21;
LABEL_73:
      outlined consume of PType.IsA(v89, v90, v91, v22, 1u);
      return;
    }

LABEL_44:
    if (v38)
    {
      v76 = *(v74 + 16);
      if (v76 == *(v22 + 16))
      {
        v77 = 0;
        v78 = v74 + 32;
        while (v76 != v77)
        {
          if (v77 >= *(v74 + 16))
          {
            goto LABEL_81;
          }

          v79 = *(v22 + 16);
          if (v77 == v79)
          {
            break;
          }

          if (v77 >= v79)
          {
            goto LABEL_82;
          }

          v80 = *(v22 + 32 + 4 * v77);
          v112 = *(v78 + 8 * v77);
          v122 = v4;
          v123 = v105;
          v124 = v99;
          v81 = *(a2 + 4);
          v127 = *(a2 + 3);
          v128 = v81;
          v82 = *(a2 + 6);
          v129 = *(a2 + 5);
          v130 = v82;
          v83 = *(a2 + 2);
          v125 = *(a2 + 1);
          v126 = v83;
          v84 = PType.Pattern.IsA.match(index:within:id:)(v80, &v122, v109);
          ++v77;
          v74 = v94;
          if ((v84 & 1) == 0)
          {

            v58 = v102;
            v59 = v95;
            v60 = v21;
            goto LABEL_68;
          }
        }

        v89 = v102;
        v90 = v95;
        v91 = v21;
        goto LABEL_73;
      }

      v58 = v102;
      v59 = v95;
    }

    else
    {

      v58 = v102;
      v59 = v75;
    }

    v60 = v21;
LABEL_68:
    v61 = v22;
    v62 = 1;
    goto LABEL_31;
  }

  __break(1u);
}

uint64_t static PType.Pattern.IsA.== infix(_:_:)(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1 >> 61;
  if (v4 <= 1)
  {
    if (v4)
    {
      if (v3 >> 61 != 1)
      {
        goto LABEL_29;
      }

LABEL_20:
      v18 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v19 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

      LOBYTE(v18) = _sSasSQRzlE2eeoiySbSayxG_ABtFZ21SwiftUITracingSupport5PTypeV7PatternV3IsAO_Tt1g5(v18, v19);

      return v18 & 1;
    }

    if (v3 >> 61)
    {
      goto LABEL_29;
    }

    v11 = *(v2 + 24);
    v10 = *(v2 + 32);
    v12 = *(v2 + 16);
    v14 = *(v3 + 16);
    v13 = *(v3 + 24);
    v15 = *(v3 + 32);
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSObject, 0x277D82BB8);

    if (static NSObject.== infix(_:_:)())
    {
      if (v11)
      {
        if (!v13)
        {
          goto LABEL_27;
        }

        IsAO_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ21SwiftUITracingSupport5PTypeV7PatternV3IsAO_Tt1g5(v16, v13);

        if ((IsAO_Tt1g5 & 1) == 0)
        {
          goto LABEL_27;
        }
      }

      else if (v13)
      {
        goto LABEL_27;
      }

      if (!v10)
      {

        if (v15)
        {
          goto LABEL_29;
        }

        goto LABEL_18;
      }

      if (v15)
      {

        v22 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ21SwiftUITracingSupport5PTypeV7PatternV3IsAO_Tt1g5(v21, v15);

        if ((v22 & 1) == 0)
        {
          goto LABEL_29;
        }

        goto LABEL_18;
      }
    }

LABEL_27:

    goto LABEL_28;
  }

  if (v4 == 2)
  {
    if (v3 >> 61 != 2)
    {
      goto LABEL_29;
    }

    goto LABEL_20;
  }

  if (v4 != 3)
  {
    if (v3 != 0x8000000000000000)
    {
      goto LABEL_29;
    }

LABEL_18:
    v9 = 1;
    return v9 & 1;
  }

  if (v3 >> 61 != 3)
  {
LABEL_29:
    v9 = 0;
    return v9 & 1;
  }

  v5 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v6 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
  v7 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v8 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
  v23 = v7;
  v24 = v5;

  if ((static PType.Pattern.IsA.== infix(_:_:)(&v24, &v23) & 1) == 0)
  {

LABEL_28:

    goto LABEL_29;
  }

  v23 = v8;
  v24 = v6;
  v9 = static PType.Pattern.IsA.== infix(_:_:)(&v24, &v23);

  return v9 & 1;
}

void PType.Pattern.IsA.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1 >> 61;
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v17 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      MEMORY[0x26D69DBC0](2);
      MEMORY[0x26D69DBC0](*(v17 + 16));
      v18 = *(v17 + 16);
      if (v18)
      {
        v19 = (v17 + 32);
        do
        {
          v20 = *v19++;

          PType.Pattern.IsA.hash(into:)(a1);

          --v18;
        }

        while (v18);
      }
    }

    else if (v4 == 3)
    {
      v5 = v3 & 0x1FFFFFFFFFFFFFFFLL;
      v6 = *(v5 + 16);
      v7 = *(v5 + 24);
      MEMORY[0x26D69DBC0](3);
      PType.Pattern.IsA.hash(into:)(a1);
      PType.Pattern.IsA.hash(into:)(a1);
    }

    else
    {
      MEMORY[0x26D69DBC0](4);
    }

    return;
  }

  if (!v4)
  {
    v8 = *(v3 + 16);
    v9 = *(v3 + 24);
    v10 = *(v3 + 32);
    MEMORY[0x26D69DBC0](0);
    NSObject.hash(into:)();
    if (v9)
    {
      Hasher._combine(_:)(1u);
      MEMORY[0x26D69DBC0](*(v9 + 16));
      v11 = *(v9 + 16);
      if (v11)
      {
        v12 = (v9 + 32);
        do
        {
          v13 = *v12++;

          PType.Pattern.IsA.hash(into:)(a1);

          --v11;
        }

        while (v11);
      }

      if (v10)
      {
        goto LABEL_11;
      }
    }

    else
    {
      Hasher._combine(_:)(0);
      if (v10)
      {
LABEL_11:
        Hasher._combine(_:)(1u);
        MEMORY[0x26D69DBC0](*(v10 + 16));
        v14 = *(v10 + 16);
        if (v14)
        {
          v15 = (v10 + 32);
          do
          {
            v16 = *v15++;

            PType.Pattern.IsA.hash(into:)(a1);

            --v14;
          }

          while (v14);
        }

        return;
      }
    }

    Hasher._combine(_:)(0);
    return;
  }

  v21 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  MEMORY[0x26D69DBC0](1);
  MEMORY[0x26D69DBC0](*(v21 + 16));
  v22 = *(v21 + 16);
  if (v22)
  {
    v23 = (v21 + 32);
    do
    {
      v24 = *v23++;

      PType.Pattern.IsA.hash(into:)(a1);

      --v22;
    }

    while (v22);
  }
}

Swift::Int PType.Pattern.IsA.hashValue.getter()
{
  v2[9] = *v0;
  Hasher.init(_seed:)();
  PType.Pattern.IsA.hash(into:)(v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PType.Pattern.IsA()
{
  v2[9] = *v0;
  Hasher.init(_seed:)();
  PType.Pattern.IsA.hash(into:)(v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PType.Pattern.IsA()
{
  v2[9] = *v0;
  Hasher.init(_seed:)();
  PType.Pattern.IsA.hash(into:)(v2);
  return Hasher._finalize()();
}

_DWORD *one-time initialization function for currentIdx()
{
  result = swift_slowAlloc();
  *result = 1;
  static PType.Pattern.currentIdx = result;
  return result;
}

uint64_t PType.Pattern.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (one-time initialization token for currentIdx != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  *a2 = atomic_fetch_add_explicit(static PType.Pattern.currentIdx, 1u, memory_order_relaxed) + 1;
  *(a2 + 16) = 0;
  result = PType.Pattern.IsA.init(_:genericParams:)(a1, 0, &v5);
  *(a2 + 8) = v5;
  return result;
}

void PType.Pattern.match(type:within:)(uint64_t a1, uint64_t a2)
{
  v5 = *a2;
  v27 = *(a2 + 8);
  v28 = *(a2 + 12);
  v6 = *(a2 + 32);
  v7 = *(a2 + 104);
  v8 = *v2;
  v9 = *(v2 + 1);
  v26 = v2[4];
  os_unfair_lock_lock_with_options();
  v10 = specialized Atomic.subscript.read(&v29, 0, v7);
  v12 = *v11;
  if (*(*v11 + 16))
  {
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(v8 | (a1 << 32));
    if (v14)
    {
      v15 = *(*(v12 + 56) + v13);
      (v10)(&v29, 0);
LABEL_20:
      os_unfair_lock_unlock(v7);
      return;
    }
  }

  (v10)(&v29, 0);
  if (!a1 || a1 == -1)
  {
    v29 = v9;
    v39 = 0x8000000000000000;

    static PType.Pattern.IsA.== infix(_:_:)(&v29, &v39);

    goto LABEL_20;
  }

  v39 = v9;
  if (*(v6 + 16) <= a1)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v16 = *(v6 + 32 + 4 * a1);
  v29 = v5;
  v30 = v27;
  v31 = v28;
  v32 = *(a2 + 16);
  v33 = v6;
  v17 = *(a2 + 56);
  v34 = *(a2 + 40);
  v35 = v17;
  v18 = *(a2 + 88);
  v36 = *(a2 + 72);
  v37 = v18;
  v38 = v7;
  PType.Pattern.IsA.match(index:within:id:)(v16, &v29, v8);
  if ((v19 & 1) == 0)
  {
    v22 = 0;
LABEL_19:
    os_unfair_lock_assert_owner(v7);
    v23 = *(v7 + 8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = *(v7 + 8);
    *(v7 + 8) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v22, v8 | (a1 << 32), isUniquelyReferenced_nonNull_native);
    v25 = *(v7 + 8);
    *(v7 + 8) = v29;

    goto LABEL_20;
  }

  if (*(v6 + 16) <= a1)
  {
    goto LABEL_22;
  }

  v20 = *(v6 + 32 + 4 * a1);
  if (v20 >= v28)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v5)
  {
    v22 = (v26 & ~*(v5 + 120 * v20 + 96)) == 0 || v26 == 0;
    goto LABEL_19;
  }

LABEL_24:
  __break(1u);
}

uint64_t PType.localType(within:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for String.Encoding();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v124 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v1[1];
  v167 = *v1;
  v168 = v8;
  v169 = v1[2];
  v10 = *(v1 + 12);
  v9 = *(v1 + 13);
  v11 = *(v1 + 56);
  v12 = v1 + 57;
  v165 = *(v1 + 57);
  v166 = *(v1 + 59);
  v13 = *(v1 + 15);
  if (!v10 && v13 == -1)
  {
    goto LABEL_56;
  }

  v126 = v1 + 57;
  v129 = v11;
  v130 = v9;
  v14 = (a1 + 40);
  v15 = *(a1 + 56);
  v163[0] = *(a1 + 40);
  v163[1] = v15;
  *v164 = *(a1 + 72);
  v16 = (a1 + 72);
  v17 = (a1 + 84);
  v18 = a1;
  v19 = (a1 + 88);
  v20 = 8 * v10;
  v127 = v7;
  v128 = v18;
  *&v164[9] = *(v18 + 81);
  v21 = v14;
  v22 = v16;
  v23 = v17;
  v24 = v19;
  v131 = v13;
  while (1)
  {
    v25 = *v24;
    if (v10 < *v23)
    {
      v26 = (*v22 + v20);
      if ((v26[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v25)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v10, 0, v163);
    }

    v22 = (v25 + 32);
    v23 = (v25 + 44);
    v24 = (v25 + 48);
    v21 = v25;
  }

  v27 = *v21;
  if (!v27)
  {
    goto LABEL_73;
  }

  v28 = (v27 + 24 * *v26);
  v29 = *v28;
  v30 = *(*v28 + 196);
  v31 = 0uLL;
  if (!v30)
  {
    v37 = 0;
    v38 = 0;
    a1 = v128;
    v39 = v130;
    v40 = v129;
    goto LABEL_42;
  }

  v32 = *(v29 + 184);
  if (!v32)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v33 = v30 - 1;
  if (*(v32 + 32 * (v30 - 1)) >= v13)
  {
    v41 = v30 >> 1;
    v42 = *(v32 + 32 * (v30 >> 1));
    if (v30 != 1 && v42 != v13)
    {
      v44 = *(v29 + 192) | (v30 << 32);
      v125 = *(v29 + 184);
      if (v13 >= v42)
      {
        v46 = v41 + 1;
        v45 = v13;
        v41 = v30;
      }

      else
      {
        v45 = v13;
        v46 = 0;
      }

      v50 = specialized Collection<>.binarySearch(for:)(v45, v46, v41, v32, v44);
      if (v51)
      {
        v41 = v30 - 1;
      }

      else
      {
        v41 = v50;
      }

      v13 = v131;
      v31 = 0uLL;
      v32 = v125;
    }

    v52 = (v32 + 32 * v41);
    v33 = v41;
    while (v41 < v30)
    {
      if (v13 >= *v52)
      {
        goto LABEL_13;
      }

      if (!v33)
      {
        goto LABEL_41;
      }

      --v33;
      v52 -= 8;
      if (v33 > v30)
      {
        __break(1u);
LABEL_41:
        v37 = 0;
        v38 = 0;
        a1 = v128;
        v39 = v130;
        v40 = v129;
        goto LABEL_42;
      }
    }

    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

LABEL_13:
  v34 = v14[1];
  v161[0] = *v14;
  v161[1] = v34;
  v162[0] = v14[2];
  *(v162 + 9) = *(v14 + 41);
  while (1)
  {
    v35 = *v19;
    if (v10 < *v17)
    {
      v36 = (*v16 + v20);
      if ((v36[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v35)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v10, 0, v161);
    }

    v16 = (v35 + 32);
    v17 = (v35 + 44);
    v19 = (v35 + 48);
    v14 = v35;
  }

  if (!*v14)
  {
    goto LABEL_75;
  }

  v47 = *v14 + 24 * *v36;
  a1 = v128;
  v39 = v130;
  v40 = v129;
  if (v33 >= *(*v47 + 196))
  {
    goto LABEL_67;
  }

  v48 = *(*v47 + 184);
  if (!v48)
  {
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  v49 = (v48 + 32 * v33);
  v37 = *v49;
  v38 = *(v49 + 1);
  v31 = *(v49 + 1);
LABEL_42:
  LOBYTE(v142[0]) = v40 & 1;
  *&v143 = v10 | (v39 << 32);
  *(&v143 + 1) = v40 & 1 | (v13 << 32);
  *&v144 = v37;
  *(&v144 + 1) = v38;
  v145 = v31;
  LOBYTE(v146) = 1;
  Interpreter.Iterator.init(_:kind:onEvent:)(a1, &v143, 0, 0, &v150);
  if (Interpreter.Iterator.read()())
  {
    v159[0] = *v155;
    v159[1] = *&v155[2];
    v160[0] = *&v155[4];
    *(v160 + 9) = *(&v155[5] + 1);
    v53 = v155[0];
    v54 = v155[4];
    v55 = v155[6];
    if (HIDWORD(v155[7]) >= HIDWORD(v155[5]))
    {
      goto LABEL_45;
    }

    while (1)
    {
      v56 = (v54 + 8 * HIDWORD(v155[7]));
      if ((v56[1] & 1) == 0)
      {
        break;
      }

      do
      {
LABEL_45:
        if (!v55)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(HIDWORD(v155[7]), 0, v159);
        }

        v53 = *v55;
        v54 = v55[4];
        v57 = *(v55 + 11);
        v55 = v55[6];
      }

      while (HIDWORD(v155[7]) >= v57);
    }

    if (!v53)
    {
      goto LABEL_74;
    }

    v58 = (v53 + 24 * *v56);
    v59 = *v58;
    v60 = *(*v58 + 96);
    if (v60 != 2)
    {
      v61 = *(v59 + 104);
      v62 = *(v59 + 88);
      *&v155[19] = *(v59 + 72);
      v155[21] = v62;
      v156 = v60 & 0x101;
      v157 = HIDWORD(v60);
      v158 = v61 & 1;
      v63 = Interpreter.Iterator.AttachmentBuffer.buffer.getter();
      if ((v65 & 1) == 0)
      {
        v66 = v64 - v63;
        if (!v63)
        {
          v66 = 0;
        }

        *&v143 = v63;
        *(&v143 + 1) = v66;
        static String.Encoding.utf8.getter();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSRys5UInt8VGMd, &_sSRys5UInt8VGMR);
        lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type UnsafeBufferPointer<UInt8> and conformance UnsafeBufferPointer<A>, &_sSRys5UInt8VGMd, &_sSRys5UInt8VGMR);
        String.init<A>(bytes:encoding:)();
        if (v67)
        {
          specialized EvolutionTable.deallocate()();
          v68 = _typeByName(_:)();

          LODWORD(v9) = v130;
          LODWORD(v13) = v131;
          LOBYTE(v11) = v129;
          v12 = v126;
          if (v68)
          {
            return v68;
          }

LABEL_56:
          v69 = v2[1];
          v150 = *v2;
          v151 = v69;
          v152 = v2[2];
          v153 = v10;
          v154 = v9;
          LOBYTE(v155[0]) = v11;
          *(v155 + 1) = *v12;
          BYTE3(v155[0]) = *(v12 + 2);
          HIDWORD(v155[0]) = v13;
          v70 = v2[4];
          v71 = v2[5];
          v72 = v2[6];
          *(&v155[6] + 6) = *(v2 + 110);
          *&v155[3] = v71;
          *&v155[5] = v72;
          *&v155[1] = v70;
          v73 = *(a1 + 136);
          v75 = v73[1];
          v74 = v73[2];
          v140[0] = *v73;
          v140[1] = v75;
          v140[2] = v74;
          v76 = v73[6];
          v78 = v73[3];
          v77 = v73[4];
          v140[5] = v73[5];
          v140[6] = v76;
          v140[3] = v78;
          v140[4] = v77;
          v79 = v73[5];
          v137 = v73[4];
          v138 = v79;
          v139 = v73[6];
          v80 = v73[1];
          v133 = *v73;
          v134 = v80;
          v81 = v73[3];
          v135 = v73[2];
          v136 = v81;
          v82 = v13;
          outlined init with copy of Interpreter.Storage.Types(v140, v132);
          v83 = PType.limitedName(within:limit:module:)(&v133, 1, 1);
          v131 = v84;
          v141[4] = v137;
          v141[5] = v138;
          v141[6] = v139;
          v141[0] = v133;
          v141[1] = v134;
          v141[2] = v135;
          v141[3] = v136;
          outlined destroy of Interpreter.Storage.Types(v141);
          v150 = v167;
          v151 = v168;
          v152 = v169;
          v153 = v10;
          v154 = v9;
          LOBYTE(v155[0]) = v11;
          *(v155 + 1) = v165;
          BYTE3(v155[0]) = v166;
          HIDWORD(v155[0]) = v82;
          v85 = v2[4];
          v86 = v2[5];
          v87 = v2[6];
          *(&v155[6] + 6) = *(v2 + 110);
          *&v155[3] = v86;
          *&v155[5] = v87;
          *&v155[1] = v85;
          v88 = *(a1 + 136);
          v90 = v88[1];
          v89 = v88[2];
          v142[0] = *v88;
          v142[1] = v90;
          v142[2] = v89;
          v91 = v88[6];
          v93 = v88[3];
          v92 = v88[4];
          v142[5] = v88[5];
          v142[6] = v91;
          v142[3] = v93;
          v142[4] = v92;
          v94 = v88[5];
          v137 = v88[4];
          v138 = v94;
          v139 = v88[6];
          v95 = v88[1];
          v133 = *v88;
          v134 = v95;
          v96 = v88[3];
          v135 = v88[2];
          v136 = v96;
          outlined init with copy of Interpreter.Storage.Types(v142, v132);
          v97 = PType.limitedName(within:limit:module:)(&v133, 1, 0);
          v99 = v98;
          v147 = v137;
          v148 = v138;
          v149 = v139;
          v143 = v133;
          v144 = v134;
          v145 = v135;
          v146 = v136;
          outlined destroy of Interpreter.Storage.Types(&v143);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
          v100 = swift_allocObject();
          v100[4] = v83;
          v100[5] = v131;
          v100[6] = v97;
          v100[7] = v99;
          *&v150 = 0x2E7466697753;
          *(&v150 + 1) = 0xE600000000000000;

          MEMORY[0x26D69CDB0](v97, v99);
          v101 = *(&v150 + 1);
          v100[8] = v150;
          v100[9] = v101;
          strcpy(&v150, "SwiftUI.");
          BYTE9(v150) = 0;
          WORD5(v150) = 0;
          HIDWORD(v150) = -402653184;
          MEMORY[0x26D69CDB0](v97, v99);
          v102 = *(&v150 + 1);
          v100[10] = v150;
          v100[11] = v102;
          strcpy(&v150, "SwiftUICore.");
          BYTE13(v150) = 0;
          HIWORD(v150) = -5120;
          MEMORY[0x26D69CDB0](v97, v99);
          v103 = *(&v150 + 1);
          v100[12] = v150;
          v100[13] = v103;
          strcpy(&v150, "CoreGraphics.");
          HIWORD(v150) = -4864;
          MEMORY[0x26D69CDB0](v97, v99);
          v104 = *(&v150 + 1);
          v100[14] = v150;
          v100[15] = v104;
          *&v150 = 776167263;
          *(&v150 + 1) = 0xE400000000000000;
          MEMORY[0x26D69CDB0](v97, v99);
          v105 = *(&v150 + 1);
          v100[16] = v150;
          v100[17] = v105;
          strcpy(&v150, "Builtin.");
          BYTE9(v150) = 0;
          WORD5(v150) = 0;
          HIDWORD(v150) = -402653184;
          MEMORY[0x26D69CDB0](v97, v99);

          v106 = *(&v150 + 1);
          v100[18] = v150;
          v100[19] = v106;
          v107 = v100[5];
          v108 = v100[4];

          v68 = _typeByName(_:)();

          if (!v68)
          {
            v109 = v100[6];
            v110 = v100[7];

            v68 = _typeByName(_:)();

            if (!v68)
            {
              v111 = v100[8];
              v112 = v100[9];

              v68 = _typeByName(_:)();

              if (!v68)
              {
                v113 = v100[10];
                v114 = v100[11];

                v68 = _typeByName(_:)();

                if (!v68)
                {
                  v115 = v100[12];
                  v116 = v100[13];

                  v68 = _typeByName(_:)();

                  if (!v68)
                  {
                    v117 = v100[14];
                    v118 = v100[15];

                    v68 = _typeByName(_:)();

                    if (!v68)
                    {
                      v119 = v100[16];
                      v120 = v100[17];

                      v68 = _typeByName(_:)();

                      if (!v68)
                      {
                        v121 = v100[18];
                        v122 = v100[19];

                        v68 = _typeByName(_:)();
                      }
                    }
                  }
                }
              }
            }
          }

          swift_setDeallocating();
          swift_arrayDestroy();
          swift_deallocClassInstance();
          return v68;
        }

        goto LABEL_70;
      }

LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

LABEL_76:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

Swift::Int PType.hashValue.getter()
{
  v1 = *(v0 + 32);
  Hasher.init(_seed:)();
  v3 = *v0;
  v4 = v0[1];
  PType.IsA.hash(into:)(v5);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PType(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a1 + 32);
  v10 = *(a2 + 32);
  v17 = *a1;
  v18 = v2;
  v19 = v3;
  v20 = v4;
  v21 = v9;
  v12 = v5;
  v13 = v6;
  v14 = v7;
  v15 = v8;
  v16 = v10;
  outlined copy of PType.IsA(v17, v2, v3, v4, v9);
  outlined copy of PType.IsA(v5, v6, v7, v8, v10);
  LOBYTE(v5) = specialized static PType.IsA.== infix(_:_:)(&v17, &v12);
  outlined consume of PType.IsA(v12, v13, v14, v15, v16);
  outlined consume of PType.IsA(v17, v18, v19, v20, v21);
  return v5 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PType()
{
  v1 = *(v0 + 32);
  Hasher.init(_seed:)();
  v3 = *v0;
  v4 = v0[1];
  PType.IsA.hash(into:)(v5);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance PType(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 32);
  PType.IsA.hash(into:)(a1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PType()
{
  Hasher.init(_seed:)();
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 32);
  PType.IsA.hash(into:)(v5);
  return Hasher._finalize()();
}

uint64_t protocol witness for Deallocatable.deallocate() in conformance PType()
{
  result = *(v0 + 72);
  if (result)
  {
    result = MEMORY[0x26D69EAB0](result, -1, -1);
    *(v0 + 72) = 0;
  }

  return result;
}

uint64_t Snapshot.describe(state:)(uint64_t *a1, __int128 **a2)
{
  v4 = *a1;
  v3 = a1[1];
  v6 = a1[3];
  v5 = a1[4];
  v7 = *(a1 + 40);
  v8 = *(a1 + 41);
  *&v49 = 0;
  *(&v49 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(47);

  v64 = 0x6F687370616E5328;
  v65 = 0xEA00000000002074;
  v109 = v4;
  v110 = v3;
  v47 = v6;
  v48 = v4;
  v9 = v3;
  v45 = v5;
  v46 = v3;
  v111 = 0;
  v112 = v6;
  v113 = v5;
  v114 = v7;
  v115 = v8;
  v10 = a2[1];
  v11 = *(v10 + 32);
  v12 = v10[1];
  v107[0] = *v10;
  v107[1] = v12;
  v108 = v11;
  outlined init with copy of Snapshot.Kind(v107, &v49);
  v13 = specialized InspectionState.describe<A>(_:_:)(1684957547, 0xE400000000000000, v107);
  v15 = v14;
  outlined destroy of Snapshot.Kind(v107);
  MEMORY[0x26D69CDB0](v13, v15);

  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  v99 = v4;
  v100 = v9;
  v101 = 0;
  *v102 = *v66;
  *&v102[3] = *&v66[3];
  v103 = v6;
  v104 = v5;
  v105 = v7;
  v106 = v8;
  v16 = a2[1];
  v17 = *v16;
  v18 = *(v16 + 1);
  v19 = *(v16 + 2);
  v20 = *(v16 + 3);
  if (*(v16 + 32))
  {
    v21 = *v16;
  }

  else
  {
    v21 = *(v16 + 1);
  }

  v22 = *v16;
  v23 = *(v16 + 1);
  v24 = *(v16 + 2);
  v25 = *(v16 + 3);
  v26 = *(v16 + 32);
  outlined copy of Snapshot.Kind();
  v27 = specialized InspectionState.describe<A>(_:_:)(0x6C61767265746E69, 0xE800000000000000, v21);
  v29 = v28;
  outlined consume of Snapshot.Kind();
  MEMORY[0x26D69CDB0](v27, v29);

  MEMORY[0x26D69CDB0](2105354, 0xE300000000000000);
  v91 = v48;
  v92 = v46;
  v93 = 0;
  *v94 = *v66;
  *&v94[3] = *&v66[3];
  v95 = v47;
  v96 = v45;
  v97 = v7;
  v98 = v8;
  v30 = specialized InspectionState.describe<A>(_:_:)(0x7365646F6ELL, 0xE500000000000000, a2[9], a2[10]);
  MEMORY[0x26D69CDB0](v30);

  MEMORY[0x26D69CDB0](2105354, 0xE300000000000000);
  v83 = v48;
  v84 = v46;
  v85 = 0;
  *v86 = *v66;
  *&v86[3] = *&v66[3];
  v87 = v47;
  v88 = v45;
  v89 = v7;
  v90 = v8;
  v31 = specialized InspectionState.describe<A>(_:_:)(0x7365676465, 0xE500000000000000, a2[12], a2[13]);
  MEMORY[0x26D69CDB0](v31);

  MEMORY[0x26D69CDB0](2105354, 0xE300000000000000);
  v75 = v48;
  v76 = v46;
  v77 = 0;
  *v78 = *v66;
  *&v78[3] = *&v66[3];
  v79 = v47;
  v80 = v45;
  v81 = v7;
  v82 = v8;
  v32 = specialized InspectionState.describe<A>(_:_:)(0x6870617267627573, 0xE900000000000073, a2[14], a2[15]);
  MEMORY[0x26D69CDB0](v32);

  MEMORY[0x26D69CDB0](2105354, 0xE300000000000000);
  v67 = v48;
  v68 = v46;
  v69 = 0;
  *v70 = *v66;
  *&v70[3] = *&v66[3];
  v71 = v47;
  v72 = v45;
  v73 = v7;
  v74 = v8;
  v33 = specialized InspectionState.describe<A>(_:_:)(0x736870617267, 0xE600000000000000, a2[17], a2[18]);
  MEMORY[0x26D69CDB0](v33);

  MEMORY[0x26D69CDB0](2105354, 0xE300000000000000);
  v34 = a2[27];
  if (v34)
  {
    outlined init with copy of Aggregate_AccessorProtocol(v34, &v61);
    outlined init with take of Inspectable(&v61, &v49);
    v35 = *(&v50 + 1);
    v36 = v51;
    v37 = __swift_project_boxed_opaque_existential_1(&v49, *(&v50 + 1));
    v62 = v35;
    v63 = *(v36 + 8);
    v38 = v63;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v61);
    (*(*(v35 - 8) + 16))(boxed_opaque_existential_1Tm, v37, v35);
    __swift_destroy_boxed_opaque_existential_1(&v49);
    *&v49 = v48;
    *(&v49 + 1) = v46;
    LOBYTE(v50) = 0;
    *(&v50 + 1) = v47;
    *&v51 = v45;
    BYTE8(v51) = v7;
    BYTE9(v51) = v8;
    v40 = InspectionState.describe<A>(_:_:)(0x7461676572676761, 0xE900000000000065, boxed_opaque_existential_1Tm, v35, *(v38 + 24));
    MEMORY[0x26D69CDB0](v40);

    __swift_destroy_boxed_opaque_existential_1(&v61);
    MEMORY[0x26D69CDB0](2105354, 0xE300000000000000);
    *&v49 = v48;
    *(&v49 + 1) = v46;
    LOBYTE(v50) = 0;
    *(&v50 + 1) = *v66;
    DWORD1(v50) = *&v66[3];
    *(&v50 + 1) = v47;
    *&v51 = v45;
    BYTE8(v51) = v7;
    BYTE9(v51) = v8;
    v41 = specialized InspectionState.describe<A>(_:_:)(0x73657461647075, 0xE700000000000000, a2[4], a2[5]);
    MEMORY[0x26D69CDB0](v41);

    MEMORY[0x26D69CDB0](10506, 0xE200000000000000);
    return v64;
  }

  else
  {
    *&v49 = 0;
    *(&v49 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(42);

    strcpy(&v61, "Interpreter:(");
    HIWORD(v61) = -4864;
    v43 = *a2;
    v57 = (*a2)[8];
    v58 = v43[9];
    v59 = v43[10];
    v60 = v43[11];
    v53 = v43[4];
    v54 = v43[5];
    v55 = v43[6];
    v56 = v43[7];
    v49 = *v43;
    v50 = v43[1];
    v51 = v43[2];
    v52 = v43[3];
    v44 = Interpreter.Storage.debugName.getter();
    MEMORY[0x26D69CDB0](v44);

    MEMORY[0x26D69CDB0](0xD00000000000001BLL, 0x800000026C33B990);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t (*Snapshot.kind.read(uint64_t *a1, uint64_t a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v5 = *(a2 + 8);
  *(v4 + 32) = specialized Strong.subscript.read();
  return UnsafeTree.subjectsMap.readspecialized ;
}

uint64_t (*Snapshot.nodes.read(uint64_t a1, uint64_t a2))()
{
  v3 = *(a2 + 72);
  v2 = *(a2 + 80);
  return EventTreeStats.count.modify;
}

uint64_t (*Snapshot.edges.read(uint64_t a1, uint64_t a2))()
{
  v3 = *(a2 + 96);
  v2 = *(a2 + 104);
  return EventTreeStats.count.modify;
}

uint64_t (*Snapshot.graphs.read(uint64_t a1, uint64_t a2))()
{
  v3 = *(a2 + 136);
  v2 = *(a2 + 144);
  return EventTreeStats.count.modify;
}

uint64_t Snapshot.aggregate.getter@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  if (a1[27])
  {
    outlined init with copy of Aggregate_AccessorProtocol(a1[27], v23);
    outlined init with take of Inspectable(v23, &v11);
    v3 = *(&v12 + 1);
    v4 = v13;
    v5 = __swift_project_boxed_opaque_existential_1(&v11, *(&v12 + 1));
    a2[3] = v3;
    a2[4] = *(v4 + 8);
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a2);
    (*(*(v3 - 8) + 16))(boxed_opaque_existential_1Tm, v5, v3);
    return __swift_destroy_boxed_opaque_existential_1(&v11);
  }

  else
  {
    *&v11 = 0;
    *(&v11 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(42);

    strcpy(v23, "Interpreter:(");
    HIWORD(v23[0]) = -4864;
    v9 = *a1;
    v19 = *(*a1 + 128);
    v20 = v9[9];
    v21 = v9[10];
    v22 = v9[11];
    v15 = v9[4];
    v16 = v9[5];
    v17 = v9[6];
    v18 = v9[7];
    v11 = *v9;
    v12 = v9[1];
    v13 = v9[2];
    v14 = v9[3];
    v10 = Interpreter.Storage.debugName.getter();
    MEMORY[0x26D69CDB0](v10);

    MEMORY[0x26D69CDB0](0xD00000000000001BLL, 0x800000026C33B990);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t Snapshot.Kind.describe(state:)(__int128 *a1)
{
  v7 = *a1;
  *v8 = a1[1];
  *&v8[10] = *(a1 + 26);
  if (*(v1 + 32) == 1)
  {
    return specialized InspectionState.describe<A>(_:_:)(0x6C61767265746E69, 0xE800000000000000, *v1);
  }

  v3 = *(v1 + 8);
  v6 = *v1;
  v4 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](v4);

  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  v5 = specialized InspectionState.describe<A>(_:_:)(0x49656C69666F7270, 0xEF6C61767265746ELL, v3);
  MEMORY[0x26D69CDB0](v5);

  MEMORY[0x26D69CDB0](41, 0xE100000000000000);
  return 0x20656D697428;
}

void Snapshot.Kind.config.getter(uint64_t a1@<X8>)
{
  if (*(v1 + 32) == 1)
  {
    v2 = *(v1 + 24);
    v3 = *(v1 + 8);
  }

  else
  {
    v2 = 0;
    v3 = 0uLL;
  }

  *a1 = v3;
  *(a1 + 16) = v2;
}

uint64_t Snapshot.ReferenceMap.init()(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  v3 = *(a2 + 8);
  v7 = Dictionary.init()();
  v4 = type metadata accessor for Dictionary();
  v5 = specialized Strong.init(_:)(&v7, v4);

  return v5;
}

void Snapshot.ReferenceMap.subscript.getter(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a2;
  swift_getAssociatedTypeWitness();
  v6 = *(a4 + 8);

  JUMPOUT(0x26D69CA60);
}

void key path getter for Snapshot.ReferenceMap.subscript(_:) : <A>Snapshot.ReferenceMap<A>A(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + a3 - 16);
  v4 = *(a2 + a3 - 8);
  v5 = **a1;
  swift_getAssociatedTypeWitness();
  v6 = *(v4 + 8);

  JUMPOUT(0x26D69CA60);
}

uint64_t key path setter for Snapshot.ReferenceMap.subscript(_:) : <A>Snapshot.ReferenceMap<A>A(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + a4 - 16);
  v5 = *(a3 + a4 - 8);
  v7 = *a2;
  swift_getAssociatedTypeWitness();
  v8 = *(v5 + 8);
  type metadata accessor for Dictionary();
  v9 = Dictionary.subscript.modify();
  v11 = v10;
  v12 = type metadata accessor for Optional();
  (*(*(v12 - 8) + 24))(v11, a1, v12);
  return v9(&v14, 0);
}

void (*Snapshot.ReferenceMap.subscript.modify(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  v6 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x68uLL);
  }

  v8 = v7;
  *a1 = v7;
  v9 = *(a3 + 16);
  *(v7 + 64) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v7 + 72) = v10;
  if (v6)
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(*(v10 + 64));
  }

  v8[10] = v12;
  v13 = *v3;
  (*(v11 + 16))();
  v14 = *(a3 + 24);
  swift_getAssociatedTypeWitness();
  v15 = *(v14 + 8);
  type metadata accessor for Dictionary();
  v8[11] = Strong.subscript.modify();
  v8[12] = Dictionary.subscript.modify();
  return Snapshot.ReferenceMap.subscript.modify;
}

void Snapshot.ReferenceMap.subscript.modify(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 88);
  v4 = *(*a1 + 72);
  v3 = *(*a1 + 80);
  v5 = *(*a1 + 64);
  (*(*a1 + 96))();
  (*(v4 + 8))(v3, v5);
  v2(v1, 0);
  free(v3);

  free(v1);
}

uint64_t Snapshot.ReferenceMap.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v7 = *(a3 + 16);
  v8 = *(a3 + 24);
  swift_getAssociatedTypeWitness();
  v9 = *(v8 + 8);
  type metadata accessor for Dictionary._Variant();
  v10 = Dictionary._Variant.subscript.modify();
  v12 = v11;
  v13 = type metadata accessor for Optional();
  v14 = *(v13 - 8);
  (*(v14 + 24))(v12, a1, v13);
  v10(&v16, 0);
  (*(*(v7 - 8) + 8))(a2, v7);
  return (*(v14 + 8))(a1, v13);
}

uint64_t Snapshot.ReferenceMap.deallocate()(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  v4 = *(v3 + 8);
  type metadata accessor for Dictionary();
  v5 = type metadata accessor for Strong();

  return a2(v5);
}

__n128 Snapshot.interpreter.getter@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = *(*a1 + 144);
  *(a2 + 128) = *(*a1 + 128);
  *(a2 + 144) = v3;
  v4 = *(v2 + 176);
  *(a2 + 160) = *(v2 + 160);
  *(a2 + 176) = v4;
  v5 = *(v2 + 80);
  *(a2 + 64) = *(v2 + 64);
  *(a2 + 80) = v5;
  v6 = *(v2 + 112);
  *(a2 + 96) = *(v2 + 96);
  *(a2 + 112) = v6;
  v7 = *(v2 + 16);
  *a2 = *v2;
  *(a2 + 16) = v7;
  result = *(v2 + 32);
  v9 = *(v2 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v9;
  return result;
}

__n128 Snapshot.interpreter.setter(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 144);
  *(v2 + 128) = *(a1 + 128);
  *(v2 + 144) = v3;
  v4 = *(a1 + 176);
  *(v2 + 160) = *(a1 + 160);
  *(v2 + 176) = v4;
  v5 = *(a1 + 80);
  *(v2 + 64) = *(a1 + 64);
  *(v2 + 80) = v5;
  v6 = *(a1 + 112);
  *(v2 + 96) = *(a1 + 96);
  *(v2 + 112) = v6;
  v7 = *(a1 + 16);
  *v2 = *a1;
  *(v2 + 16) = v7;
  result = *(a1 + 32);
  v9 = *(a1 + 48);
  *(v2 + 32) = result;
  *(v2 + 48) = v9;
  return result;
}

uint64_t (*Snapshot.relativeRet.read(uint64_t *a1, uint64_t a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v5 = *(*a2 + 184);
  *(v4 + 32) = specialized Strong.subscript.read();
  v7 = *v6;
  return UnsafeTree.subjectsMap.readspecialized ;
}

uint64_t (*Snapshot.relativeRet.modify(uint64_t *a1, uint64_t a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v5 = *(*a2 + 184);
  *(v4 + 32) = specialized Strong.subscript.modify();
  return UnsafeTree.storage.modify;
}

uint64_t Snapshot.relativeRet.setter(uint64_t a1, uint64_t a2)
{
  v2 = *(*a2 + 184);
  v3 = *v2;
  *v2 = a1;
}

uint64_t Snapshot.Storage.interval.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t Snapshot.Storage.interval.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Snapshot.Storage.events.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t Snapshot.Storage.events.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2;
  return result;
}

uint64_t Snapshot.Storage.eventIndex.getter()
{
  result = *(v0 + 48);
  v2 = *(v0 + 56);
  return result;
}

uint64_t Snapshot.Storage.eventIndex.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2;
  return result;
}

uint64_t Snapshot.Storage.nodes.getter()
{
  result = *(v0 + 72);
  v2 = *(v0 + 80);
  return result;
}

uint64_t Snapshot.Storage.nodes.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 72) = result;
  *(v2 + 80) = a2;
  return result;
}

uint64_t Snapshot.Storage.edges.getter()
{
  result = *(v0 + 96);
  v2 = *(v0 + 104);
  return result;
}

uint64_t Snapshot.Storage.edges.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 96) = result;
  *(v2 + 104) = a2;
  return result;
}

uint64_t Snapshot.Storage.subgraphs.getter()
{
  result = *(v0 + 112);
  v2 = *(v0 + 120);
  return result;
}

uint64_t Snapshot.Storage.subgraphs.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 112) = result;
  *(v2 + 120) = a2;
  return result;
}

uint64_t Snapshot.Storage.graphs.getter()
{
  result = *(v0 + 136);
  v2 = *(v0 + 144);
  return result;
}

uint64_t Snapshot.Storage.graphs.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 136) = result;
  *(v2 + 144) = a2;
  return result;
}

uint64_t Snapshot.Storage.reuseEvents.getter()
{
  result = *(v0 + 160);
  v2 = *(v0 + 168);
  return result;
}

uint64_t Snapshot.Storage.reuseEvents.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 160) = result;
  *(v2 + 168) = a2;
  return result;
}

uint64_t Snapshot.Storage.reuseUpdates.getter()
{
  result = *(v0 + 176);
  v2 = *(v0 + 184);
  return result;
}

uint64_t Snapshot.Storage.reuseUpdates.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 176) = result;
  *(v2 + 184) = a2;
  return result;
}

uint64_t Snapshot.Storage.abstractions.getter()
{
  result = *(v0 + 200);
  v2 = *(v0 + 208);
  return result;
}

uint64_t Snapshot.Storage.abstractions.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 200) = result;
  *(v2 + 208) = a2;
  return result;
}

void (*Snapshot.storage.read(void *a1, _OWORD *a2))(void **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0xE0uLL);
  }

  *a1 = v4;
  v5 = a2[1];
  *v4 = *a2;
  v4[1] = v5;
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[5];
  v4[4] = a2[4];
  v4[5] = v8;
  v4[2] = v6;
  v4[3] = v7;
  v9 = a2[6];
  v10 = a2[7];
  v11 = a2[9];
  v4[8] = a2[8];
  v4[9] = v11;
  v4[6] = v9;
  v4[7] = v10;
  v12 = a2[10];
  v13 = a2[11];
  v14 = a2[13];
  v4[12] = a2[12];
  v4[13] = v14;
  v4[10] = v12;
  v4[11] = v13;
  return Snapshot.subscript.read;
}

uint64_t (*Snapshot._kind.modify(uint64_t **a1))()
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
  v2[4] = Snapshot.storage.modify(v2);
  return UnsafeTree.storage.modify;
}

uint64_t (*Snapshot.storage.modify(uint64_t *a1))()
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
  v4 = *v1;
  *(v3 + 32) = specialized Strong.subscript.modify();
  return UnsafeTree.storage.modify;
}

uint64_t (*Snapshot.interval.read(uint64_t a1, uint64_t a2))()
{
  v3 = *(a2 + 16);
  v2 = *(a2 + 24);
  return EventTreeStats.count.modify;
}

uint64_t Snapshot.interval.setter(uint64_t result, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 16) = result;
  *(v3 + 24) = a2;
  return result;
}

uint64_t (*Snapshot.events.modify(uint64_t **a1))()
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
  v2[4] = Snapshot.storage.modify(v2);
  return UnsafeTree.storage.modify;
}

uint64_t Snapshot.events.setter(uint64_t result, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 32) = result;
  *(v3 + 40) = a2;
  return result;
}

uint64_t (*Snapshot.eventIndex.read(uint64_t a1, uint64_t a2))()
{
  v3 = *(a2 + 48);
  v2 = *(a2 + 56);
  return EventTreeStats.count.modify;
}

uint64_t (*Snapshot.eventIndex.modify(uint64_t **a1))()
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
  v2[4] = Snapshot.storage.modify(v2);
  return UnsafeTree.storage.modify;
}

uint64_t Snapshot.eventIndex.setter(uint64_t result, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 48) = result;
  *(v3 + 56) = a2;
  return result;
}

uint64_t (*Snapshot.sorted.modify(uint64_t **a1))()
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
  v2[4] = Snapshot.storage.modify(v2);
  return UnsafeTree.storage.modify;
}

uint64_t (*Snapshot.nodes.modify(uint64_t **a1))()
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
  v2[4] = Snapshot.storage.modify(v2);
  return UnsafeTree.storage.modify;
}

uint64_t Snapshot.nodes.setter(uint64_t result, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 72) = result;
  *(v3 + 80) = a2;
  return result;
}

uint64_t (*Snapshot.edges.modify(uint64_t **a1))()
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
  v2[4] = Snapshot.storage.modify(v2);
  return UnsafeTree.storage.modify;
}

uint64_t Snapshot.edges.setter(uint64_t result, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 96) = result;
  *(v3 + 104) = a2;
  return result;
}

uint64_t Snapshot.subgraphs.setter(uint64_t result, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 112) = result;
  *(v3 + 120) = a2;
  return result;
}

uint64_t Snapshot.graphs.setter(uint64_t result, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 136) = result;
  *(v3 + 144) = a2;
  return result;
}

uint64_t (*Snapshot.reuseEvents.read(uint64_t a1, uint64_t a2))()
{
  v3 = *(a2 + 160);
  v2 = *(a2 + 168);
  return EventTreeStats.count.modify;
}

uint64_t (*Snapshot.reuseEvents.modify(uint64_t **a1))()
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
  v2[4] = Snapshot.storage.modify(v2);
  return UnsafeTree.storage.modify;
}

uint64_t Snapshot.reuseEvents.setter(uint64_t result, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 160) = result;
  *(v3 + 168) = a2;
  return result;
}

uint64_t (*Snapshot.reuseUpdates.read(uint64_t a1, uint64_t a2))()
{
  v3 = *(a2 + 176);
  v2 = *(a2 + 184);
  return EventTreeStats.count.modify;
}

uint64_t (*Snapshot.reuseUpdates.modify(uint64_t **a1))()
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
  v2[4] = Snapshot.storage.modify(v2);
  return UnsafeTree.storage.modify;
}

uint64_t Snapshot.reuseUpdates.setter(uint64_t result, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 176) = result;
  *(v3 + 184) = a2;
  return result;
}

uint64_t Snapshot.totalProfile.getter(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (!v1[32])
  {
    v1 += 8;
  }

  v2 = *v1;
  v3 = *(*v1 + 16);
  if (!v3)
  {
    return 0;
  }

  result = 0;
  for (i = (v2 + 40); ; i += 2)
  {
    v6 = *(i - 1);
    v7 = *i >= v6;
    v8 = *i - v6;
    if (!v7)
    {
      break;
    }

    v7 = __CFADD__(result, v8);
    result += v8;
    if (v7)
    {
      goto LABEL_11;
    }

    if (!--v3)
    {
      return result;
    }
  }

  __break(1u);
LABEL_11:
  __break(1u);
  return result;
}

uint64_t (*Snapshot.abstractMap.modify(uint64_t **a1))()
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
  v2[4] = Snapshot.storage.modify(v2);
  return UnsafeTree.storage.modify;
}

uint64_t (*Snapshot.abstractions.read(uint64_t a1, uint64_t a2))()
{
  v3 = *(a2 + 200);
  v2 = *(a2 + 208);
  return EventTreeStats.count.modify;
}

uint64_t (*Snapshot.abstractions.modify(uint64_t **a1))()
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
  v2[4] = Snapshot.storage.modify(v2);
  return UnsafeTree.storage.modify;
}

uint64_t Snapshot.abstractions.setter(uint64_t result, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 200) = result;
  *(v3 + 208) = a2;
  return result;
}

uint64_t (*Snapshot.__aggregate.modify(uint64_t **a1))()
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
  v2[4] = Snapshot.storage.modify(v2);
  return UnsafeTree.storage.modify;
}

__n128 Snapshot.storage.getter@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = *(a1 + 176);
  a2[10] = *(a1 + 160);
  a2[11] = v2;
  v3 = *(a1 + 208);
  a2[12] = *(a1 + 192);
  a2[13] = v3;
  v4 = *(a1 + 112);
  a2[6] = *(a1 + 96);
  a2[7] = v4;
  v5 = *(a1 + 144);
  a2[8] = *(a1 + 128);
  a2[9] = v5;
  v6 = *(a1 + 48);
  a2[2] = *(a1 + 32);
  a2[3] = v6;
  v7 = *(a1 + 80);
  a2[4] = *(a1 + 64);
  a2[5] = v7;
  result = *a1;
  v9 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v9;
  return result;
}

__n128 Snapshot.storage.setter(uint64_t a1)
{
  v2 = *v1;
  v3 = *(a1 + 176);
  v2[10] = *(a1 + 160);
  v2[11] = v3;
  v4 = *(a1 + 208);
  v2[12] = *(a1 + 192);
  v2[13] = v4;
  v5 = *(a1 + 112);
  v2[6] = *(a1 + 96);
  v2[7] = v5;
  v6 = *(a1 + 144);
  v2[8] = *(a1 + 128);
  v2[9] = v6;
  v7 = *(a1 + 48);
  v2[2] = *(a1 + 32);
  v2[3] = v7;
  v8 = *(a1 + 80);
  v2[4] = *(a1 + 64);
  v2[5] = v8;
  result = *a1;
  v10 = *(a1 + 16);
  *v2 = *a1;
  v2[1] = v10;
  return result;
}

void Snapshot.AbstractionKey.hash(into:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 25);
  v4 = *(v0 + 32);
  v5 = *(v0 + 48);
  v6 = *(v0 + 64);
  MEMORY[0x26D69DBC0](*v0);
  if (v3 > 1)
  {
    if (v3 != 2)
    {
      v7 = 3;
      goto LABEL_8;
    }

    MEMORY[0x26D69DBC0](2);
    Hasher._combine(_:)(v1);
  }

  else
  {
    if (!v3)
    {
      v7 = 0;
LABEL_8:
      MEMORY[0x26D69DBC0](v7);
      MEMORY[0x26D69DBC0](v1);
      goto LABEL_9;
    }

    MEMORY[0x26D69DBC0](1);
    Hasher._combine(_:)(v1);
    Hasher._combine(_:)(HIDWORD(v1));
    Hasher._combine(_:)(v2);
  }

LABEL_9:
  Hasher.init()();
  MEMORY[0x26D69DBC0](v4);
  MEMORY[0x26D69DBC0](v5);
  v8 = Hasher.finalize()();
  MEMORY[0x26D69DBC0](v8);
  Hasher._combine(_:)(v6);
}

Swift::Int Snapshot.AbstractionKey.stableIdentity(within:)()
{
  v1 = *v0;
  Hasher.init()();
  MEMORY[0x26D69DBC0](v1);
  return Hasher.finalize()();
}

Swift::Int Snapshot.AbstractionKey.hashValue.getter()
{
  Hasher.init(_seed:)();
  Snapshot.AbstractionKey.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Snapshot.AbstractionKey()
{
  Hasher.init(_seed:)();
  Snapshot.AbstractionKey.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Snapshot.AbstractionKey()
{
  Hasher.init(_seed:)();
  Snapshot.AbstractionKey.hash(into:)();
  return Hasher._finalize()();
}

uint64_t Snapshot.Abstraction.displayName(within:)(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 12);
  v6 = v1[2];
  v7 = v4;
  return (*(v3 + 8))(&v6, a1);
}

void *(*Snapshot._aggregate.modify(void *a1))(void *result)
{
  v2 = *v1;
  a1[1] = *v1;
  *a1 = *(v2 + 216);
  return Snapshot._aggregate.modify;
}

uint64_t Snapshot.kind.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(v2 + 8);
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  *a2 = *v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  return outlined copy of Snapshot.Kind();
}

uint64_t key path setter for Snapshot.kind : Snapshot(uint64_t *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = *(a1 + 32);
  v6 = *(*a2 + 8);
  v7 = *v6;
  v8 = v6[1];
  v9 = v6[2];
  v10 = v6[3];
  v11 = *(v6 + 32);
  *v6 = *a1;
  v6[1] = v2;
  v6[2] = v3;
  v6[3] = v4;
  *(v6 + 32) = v5;
  outlined copy of Snapshot.Kind();

  return outlined consume of Snapshot.Kind();
}

__n128 Snapshot.kind.setter(uint64_t a1)
{
  v3 = *(*v1 + 8);
  v4 = *(a1 + 32);
  v5 = *v3;
  v6 = v3[1];
  v7 = v3[2];
  v8 = v3[3];
  v9 = *(v3 + 32);
  outlined consume of Snapshot.Kind();
  result = *a1;
  v11 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 1) = v11;
  *(v3 + 32) = v4;
  return result;
}

Swift::Void __swiftcall Attribute.deallocate()()
{
  if (*v0)
  {
    MEMORY[0x26D69EAB0](*v0, -1, -1);
    *v0 = 0;
  }

  v1 = v0[2];
  if (v1)
  {
    MEMORY[0x26D69EAB0](v1, -1, -1);
    v0[2] = 0;
  }

  v2 = v0[25];
  if (v2)
  {
    MEMORY[0x26D69EAB0](v2, -1, -1);
    v0[25] = 0;
  }
}

Swift::Void __swiftcall Subgraph.deallocate()()
{
  v1 = v0[3];
  if (v1)
  {
    MEMORY[0x26D69EAB0](v1, -1, -1);
    v0[3] = 0;
  }

  v2 = v0[5];
  if (v2)
  {
    MEMORY[0x26D69EAB0](v2, -1, -1);
    v0[5] = 0;
  }

  v3 = *v0;
  v4 = *(*v0 + 16);
  if (v4)
  {
    v5 = *v0;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_21:
      v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    }

    v6 = 0;
    v7 = v3 + 128;
    do
    {
      if (v6 >= *(v3 + 16))
      {
        __break(1u);
        goto LABEL_21;
      }

      v9 = *(v7 + 24);
      if (v9)
      {
        v10 = *(v7 + 36);
        v11 = *(v7 + 24);
        swift_arrayDestroy();
        MEMORY[0x26D69EAB0](v9, -1, -1);
        *(v7 + 24) = 0;
      }

      v12 = *(v7 + 88);
      if (v12)
      {
        MEMORY[0x26D69EAB0](v12, -1, -1);
        *(v7 + 88) = 0;
      }

      v13 = *(v7 - 32);
      if (v13)
      {
        MEMORY[0x26D69EAB0](v13, -1, -1);
        *(v7 - 32) = 0;
      }

      v14 = *(v7 + 104);
      if (v14)
      {
        MEMORY[0x26D69EAB0](v14, -1, -1);
      }

      ++v6;
      v8 = *v7;
      v7 += 208;
      MEMORY[0x26D69EAB0](v8, -1, -1);
    }

    while (v4 != v6);
    *v0 = v3;
  }
}

Swift::Void __swiftcall Event.deallocate()()
{
  HeterogeneousBuffer.deallocate()();
  v1 = *(v0 + 112);
  if (v1)
  {
    MEMORY[0x26D69EAB0](v1, -1, -1);
    *(v0 + 112) = 0;
  }
}

Swift::Void __swiftcall Snapshot.copy()()
{
  v1 = *v0;
  v2 = *(*v0 + 160);
  v3 = *(*v0 + 192);
  v4 = *(*v0 + 208);
  v64[11] = *(*v0 + 176);
  v64[12] = v3;
  v64[13] = v4;
  v5 = v1[6];
  v6 = v1[8];
  v7 = v1[9];
  v64[7] = v1[7];
  v64[8] = v6;
  v64[9] = v7;
  v64[10] = v2;
  v8 = v1[2];
  v9 = v1[4];
  v10 = v1[5];
  v64[3] = v1[3];
  v64[4] = v9;
  v64[5] = v10;
  v64[6] = v5;
  v11 = v1[1];
  v64[0] = *v1;
  v64[1] = v11;
  v64[2] = v8;
  _s21SwiftUITracingSupport6StrongVyACyxGxcfCAA8SnapshotV7StorageV_Tt0g5(v64);
  *v0 = v12;
  v13 = *(v12 + 8);
  if (v13)
  {
    v14 = v12;
    v15 = *v13;
    v16 = v13[1];
    v63 = *(v13 + 32);
    v62[0] = v15;
    v62[1] = v16;
    outlined init with copy of Snapshot.Kind(v62, v59);
    _s21SwiftUITracingSupport6StrongVyACyxGxcfCAA8SnapshotV4KindO_Tt0B5(v62);
    *(v14 + 8) = v17;
    specialized UnsafeArray<A>.copy()();
    v18 = **(v14 + 88);

    *(v14 + 88) = _s21SwiftUITracingSupport6StrongVyACyxGxcfCSDySiAA17UnsafeTreeNodeRefV5TypedVy_AA09AggregateF7ElementOyAA5EventV2IdVGAA9MergeOnceVyAA0lF5StatsVGGG_Tt0g5(v19);
    v20 = *(v14 + 96);
    if (v20)
    {
      v21 = *(v14 + 108);
      v22 = 3 * *(v14 + 104);
      v23 = swift_slowAlloc();
      *(v14 + 96) = v23;
      memcpy(v23, v20, 24 * v21);
    }

    specialized UnsafeArray<A>.copy()();
    v24 = **(v14 + 128);

    *(v14 + 128) = _s21SwiftUITracingSupport6StrongVyACyxGxcfCSDySiAA17UnsafeTreeNodeRefV5TypedVy_AA09AggregateF7ElementOyAA5EventV2IdVGAA9MergeOnceVyAA0lF5StatsVGGG_Tt0g5(v25);
    if (*(v14 + 136))
    {
      v26 = *(v14 + 148);
      v27 = 5 * *(v14 + 144);
      *(v14 + 136) = swift_slowAlloc();
      swift_arrayInitWithCopy();
    }

    v28 = **(v14 + 152);

    *(v14 + 152) = _s21SwiftUITracingSupport6StrongVyACyxGxcfCSDySiAA17UnsafeTreeNodeRefV5TypedVy_AA09AggregateF7ElementOyAA5EventV2IdVGAA9MergeOnceVyAA0lF5StatsVGGG_Tt0g5(v29);
    v30 = *(v14 + 160);
    if (v30)
    {
      v31 = *(v14 + 172);
      v32 = 3 * *(v14 + 168);
      v33 = swift_slowAlloc();
      *(v14 + 160) = v33;
      memcpy(v33, v30, 24 * v31);
    }

    if (*(v14 + 176))
    {
      v34 = *(v14 + 184);
      v35 = *(v14 + 188);
      *(v14 + 176) = swift_slowAlloc();
      swift_arrayInitWithCopy();
    }

    v36 = *(v14 + 216);
    if (v36)
    {
      v38 = *(v36 + 24);
      v37 = *(v36 + 32);
      __swift_mutable_project_boxed_opaque_existential_1(v36, v38);
      (*(*(*(v37 + 8) + 8) + 8))(v38);
      v39 = *(v14 + 216);
      if (v39)
      {
        outlined init with copy of Aggregate_AccessorProtocol(v39, v59);
        v40 = v60;
        v41 = v61;
        v42 = __swift_mutable_project_boxed_opaque_existential_1(v59, v60);
        v43 = *(*(v40 - 8) + 64);
        MEMORY[0x28223BE20](v42);
        v45 = &v59[-1] - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v46 + 16))(v45);
        v47 = _s21SwiftUITracingSupport6StrongVyACyxGxcfCAA14EventAggregate_p_Tt0g5Tf4e_n(v45, v40, v41);
        __swift_destroy_boxed_opaque_existential_1(v59);
        *(v14 + 216) = v47;
      }
    }

    specialized UnsafeArray<A>.copy()();
    v48 = *(v14 + 48);
    if (v48)
    {
      v49 = *(v14 + 56);
      v50 = *(v14 + 60);
      v51 = swift_slowAlloc();
      *(v14 + 48) = v51;
      memcpy(v51, v48, 8 * v50);
    }

    v52 = **(v14 + 192);

    *(v14 + 192) = _s21SwiftUITracingSupport6StrongVyACyxGxcfCSDySiAA17UnsafeTreeNodeRefV5TypedVy_AA09AggregateF7ElementOyAA5EventV2IdVGAA9MergeOnceVyAA0lF5StatsVGGG_Tt0g5(v53);
    v54 = *(v14 + 200);
    if (v54)
    {
      v55 = *(v14 + 208);
      v56 = *(v14 + 212);
      v57 = swift_slowAlloc();
      *(v14 + 200) = v57;
      memcpy(v57, v54, 120 * v56);
    }
  }

  else
  {
    __break(1u);
  }
}

void specialized UnsafeArray<A>.copy()()
{
  if (*v0)
  {
    v1 = *(v0 + 8);
    v2 = *(v0 + 12);
    v3 = swift_slowAlloc();
    *v0 = v3;
    swift_arrayInitWithCopy();
    if (v2)
    {
      do
      {
        v4 = *v3;
        if (*v3)
        {
          v5 = *(v3 + 8);
          v6 = *(v3 + 12);
          v7 = swift_slowAlloc();
          *v3 = v7;
          memcpy(v7, v4, 8 * v6);
        }

        v8 = *(v3 + 16);
        if (v8)
        {
          v9 = *(v3 + 24);
          v10 = *(v3 + 28);
          v11 = swift_slowAlloc();
          *(v3 + 16) = v11;
          memcpy(v11, v8, 8 * v10);
        }

        v12 = *(v3 + 200);
        if (v12)
        {
          v13 = *(v3 + 212);
          v14 = 5 * *(v3 + 208);
          v15 = swift_slowAlloc();
          *(v3 + 200) = v15;
          memcpy(v15, v12, 40 * v13);
        }

        v3 += 312;
        --v2;
      }

      while (v2);
    }
  }
}

{
  if (*v0)
  {
    v1 = *(v0 + 8);
    v2 = *(v0 + 12);
    v3 = swift_slowAlloc();
    v4 = v0;
    v5 = v3;
    *v4 = v3;
    swift_arrayInitWithCopy();
    if (v2)
    {
      do
      {
        Subgraph.copy()();
        v5 += 168;
        --v2;
      }

      while (v2);
    }
  }
}

{
  v1 = *v0;
  if (*v0)
  {
    v2 = *(v0 + 8);
    v3 = *(v0 + 12);
    v4 = swift_slowAlloc();
    *v0 = v4;
    memcpy(v4, v1, v3 << 7);
    if (v3)
    {
      v5 = v4 + 112;
      do
      {
        HeterogeneousBuffer.copy()();
        v6 = *v5;
        if (*v5)
        {
          v7 = *(v5 + 2);
          v8 = *(v5 + 3);
          v9 = swift_slowAlloc();
          *v5 = v9;
          memcpy(v9, v6, 8 * v8);
        }

        v5 += 128;
        --v3;
      }

      while (v3);
    }
  }
}

void (*Snapshot.subscript.modify(uint64_t *a1, int a2, unsigned int a3))(void *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x58uLL);
  }

  v9 = v7;
  *a1 = v7;
  v10 = a2;
  *(v7 + 68) = a2;
  *(v7 + 72) = a3;
  v11 = *v3;
  *(v7 + 32) = *v3;
  if (*(v11 + 84) <= a3)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v12 = *(v11 + 72);
  if (!v12)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v55 = a3;
  v8 = a3;
  v13 = v12 + 312 * a3;
  v14 = *(v13 + 12);
  if (!v14)
  {
LABEL_31:
    LODWORD(v17) = 312;
    v4 = v8;
    v36 = v10;
    _StringGuts.grow(_:)(42);
    *v9 = 0;
    *(v9 + 8) = 0xE000000000000000;
    v3 = v9;
    MEMORY[0x26D69CDB0](0xD000000000000018, 0x800000026C33B9B0);
    *(v9 + 64) = v36;
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x26D69CDB0](0x742065766168202ELL, 0xEE00203A65736568);
    if (*(v11 + 84) <= v55)
    {
      goto LABEL_48;
    }

    v20 = *(v11 + 72);
    if (!v20)
    {
      __break(1u);
LABEL_34:
      __break(1u);
    }

    v37 = v20 + v4 * v17;
    v23 = *(v37 + 12);
    v3 = MEMORY[0x277D84F90];
    if (!v23)
    {
      goto LABEL_50;
    }

    v17 = *v37;
    v58 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23, 0);
    if (!v17)
    {
      __break(1u);
LABEL_38:
      __break(1u);
    }

    v3 = v58;
    while (1)
    {
      v40 = *v17++;
      v39 = v40;
      if (v40 >= *(v11 + 108))
      {
        break;
      }

      v41 = *(v11 + 96);
      if (!v41)
      {
        goto LABEL_49;
      }

      v42 = (v41 + 24 * v39);
      v43 = *v42;
      v44 = v42[1];
      v45 = *(v42 + 4);
      v47 = v58[2];
      v46 = v58[3];
      if (v47 >= v46 >> 1)
      {
        v57 = v43;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v47 + 1, 1);
        v43 = v57;
      }

      v58[2] = v47 + 1;
      v38 = &v58[3 * v47];
      v38[4] = v43;
      v38[5] = v44;
      *(v38 + 12) = v45;
      if (!--v23)
      {
        goto LABEL_50;
      }
    }

    __break(1u);
    goto LABEL_46;
  }

  v15 = *v13;
  if (*v13)
  {
    v16 = 0x280480000uLL;
    v17 = &static Edge.invalid;
    while (1)
    {
      v19 = *v15++;
      v18 = v19;
      *(v9 + 40) = v19;
      if (v19 >= *(v11 + 108))
      {
        break;
      }

      v20 = *(v11 + 96);
      if (!v20)
      {
        goto LABEL_34;
      }

      v21 = 24 * v18;
      v22 = (v20 + 24 * v18);
      v4 = *v22;
      v23 = v22[1];
      v24 = *(v22 + 1);
      v25 = v22[4];
      if (*(v16 + 1008) != -1)
      {
        v53 = v8;
        v54 = v18;
        swift_once();
        v16 = 0x280480000;
        v8 = v53;
        v18 = v54;
        v10 = a2;
      }

      v26 = static Edge.invalid;
      v27 = HIDWORD(static Edge.invalid);
      *(v9 + 76) = static Edge.invalid;
      *(v9 + 80) = v27;
      v28 = qword_280481D78;
      *(v9 + 48) = qword_280481D78;
      v29 = dword_280481D80;
      *(v9 + 84) = dword_280481D80;
      if (v4 != v26 || v23 != v27 || v24 != v28 || v25 != v29)
      {
        v33 = *(v11 + 108);
        if (v18 >= v33)
        {
          goto LABEL_29;
        }

        v34 = *(v11 + 96);
        if (!v34)
        {
          goto LABEL_38;
        }

        if (*(v34 + v21) == v10)
        {
          *(v9 + 56) = specialized UnsafeArray.subscript.modify(v9, v18, v34, *(v11 + 104) | (v33 << 32));
          return Snapshot.subscript.modify;
        }
      }

      if (!--v14)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  v48 = MEMORY[0x26D69CFC0](v3, &type metadata for Edge);
  v50 = v49;

  MEMORY[0x26D69CDB0](v48, v50);

  v51 = *v9;
  v52 = *(v9 + 8);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void Snapshot.subscript.modify(void *a1, char a2)
{
  v3 = *a1;
  (*(*a1 + 56))(*a1, 0);
  if ((a2 & 1) == 0)
  {
    v4 = *(v3 + 32);
    v5 = *(v3 + 40);
    if (v5 >= *(v4 + 108))
    {
LABEL_63:
      __break(1u);
    }

    else
    {
      v6 = *(v4 + 96);
      if (!v6)
      {
LABEL_72:
        __break(1u);
        goto LABEL_73;
      }

      v7 = (v6 + 24 * v5);
      v8 = *v7;
      v9 = v7[1];
      v10 = *(v7 + 1);
      v11 = v7[4];
      if (v8 != *(v3 + 76) || v9 != *(v3 + 80) || v10 != *(v3 + 48) || v11 != *(v3 + 84))
      {
        goto LABEL_58;
      }

      v15 = *(v3 + 72);
      if (*(v4 + 84) > v15)
      {
        v16 = *(v4 + 72);
        if (!v16)
        {
LABEL_73:
          __break(1u);
          goto LABEL_74;
        }

        v17 = (v16 + 312 * v15);
        v18 = *(v17 + 3);
        if (v18)
        {
          v19 = 0;
          v20 = 0;
          v21 = 8;
          while (1)
          {
            v23 = *v17;
            if (!*v17)
            {
              goto LABEL_70;
            }

            v24 = *(v23 + 8 * v19);
            if (v24 != *(v3 + 40))
            {
              v25 = (v23 + 8 * v20);
              if (v20 < v19 || v25 >= v23 + v21)
              {
                *v25 = v24;
              }

              v22 = __OFADD__(v20++, 1);
              if (v22)
              {
                __break(1u);
LABEL_62:
                __break(1u);
                goto LABEL_63;
              }
            }

            ++v19;
            v21 += 8;
            if (v18 == v19)
            {
              if (v20 <= v18)
              {
                goto LABEL_30;
              }

              __break(1u);
              break;
            }
          }
        }

        v20 = 0;
LABEL_30:
        v26 = v18 - v20 + 1;
        while (--v26)
        {
          if (!*v17)
          {
            __break(1u);
            break;
          }
        }

        if ((v20 & 0x8000000000000000) == 0)
        {
          if (!HIDWORD(v20))
          {
            v27 = *(v3 + 32);
            v28 = *(v3 + 68);
            *(v17 + 3) = v20;
            if (*(v27 + 84) > v28)
            {
              v29 = *(v27 + 72);
              if (!v29)
              {
LABEL_74:
                __break(1u);
                return;
              }

              v30 = v29 + 312 * v28;
              v31 = *(v30 + 28);
              if (v31)
              {
                v32 = 0;
                v33 = 0;
                v34 = 8;
                while (1)
                {
                  v35 = *(v30 + 16);
                  if (!v35)
                  {
                    goto LABEL_71;
                  }

                  v36 = *(v35 + 8 * v32);
                  if (v36 != *(v3 + 40))
                  {
                    v37 = (v35 + 8 * v33);
                    if (v33 < v32 || v37 >= v35 + v34)
                    {
                      *v37 = v36;
                    }

                    v22 = __OFADD__(v33++, 1);
                    if (v22)
                    {
                      goto LABEL_62;
                    }
                  }

                  ++v32;
                  v34 += 8;
                  if (v31 == v32)
                  {
                    if (v33 <= v31)
                    {
                      goto LABEL_51;
                    }

                    __break(1u);
                    break;
                  }
                }
              }

              v33 = 0;
LABEL_51:
              v38 = v31 - v33 + 1;
              while (--v38)
              {
                if (!*(v30 + 16))
                {
                  __break(1u);
                  break;
                }
              }

              if ((v33 & 0x8000000000000000) == 0)
              {
                if (!HIDWORD(v33))
                {
                  *(v30 + 28) = v33;
                  goto LABEL_58;
                }

LABEL_69:
                __break(1u);
LABEL_70:
                __break(1u);
LABEL_71:
                __break(1u);
                goto LABEL_72;
              }

LABEL_68:
              __break(1u);
              goto LABEL_69;
            }

LABEL_67:
            __break(1u);
            goto LABEL_68;
          }

LABEL_66:
          __break(1u);
          goto LABEL_67;
        }

LABEL_65:
        __break(1u);
        goto LABEL_66;
      }
    }

    __break(1u);
    goto LABEL_65;
  }

LABEL_58:

  free(v3);
}

BOOL Edge.valid.getter(unint64_t a1, uint64_t a2, int a3)
{
  v3 = HIDWORD(a1);
  if (one-time initialization token for invalid != -1)
  {
    v7 = a1;
    v8 = a2;
    v9 = a3;
    swift_once();
    LODWORD(a1) = v7;
    a2 = v8;
    a3 = v9;
  }

  return static Edge.invalid != a1 || HIDWORD(static Edge.invalid) != v3 || qword_280481D78 != a2 || dword_280481D80 != a3;
}

uint64_t static Edge.invalid.getter()
{
  if (one-time initialization token for invalid != -1)
  {
    swift_once();
  }

  return static Edge.invalid;
}

uint64_t (*Snapshot.subscript.read(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, uint64_t a5))(void)
{
  if (*(a5 + 84) <= a3)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v5 = *(a5 + 72);
  if (!v5)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v6 = v5 + 312 * a3;
  v7 = *(v6 + 12);
  if (v7)
  {
    v8 = *v6;
    if (!*v6)
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    while (1)
    {
      v10 = *v8++;
      v9 = v10;
      if (v10 >= *(a5 + 108))
      {
        break;
      }

      v11 = *(a5 + 96);
      if (!v11)
      {
        goto LABEL_28;
      }

      v12 = (v11 + 24 * v9);
      v13 = *v12;
      v14 = v12[1];
      v15 = *(v12 + 1);
      v16 = v12[4];
      if (one-time initialization token for invalid != -1)
      {
        v28 = a1;
        v27 = a2;
        v26 = a5;
        swift_once();
        a5 = v26;
        a2 = v27;
        a1 = v28;
      }

      if (v13 != static Edge.invalid || v14 != HIDWORD(static Edge.invalid) || v15 != qword_280481D78 || v16 != dword_280481D80)
      {
        if (v9 >= *(a5 + 108))
        {
          goto LABEL_26;
        }

        v20 = *(a5 + 96);
        if (!v20)
        {
          goto LABEL_29;
        }

        if (*(v20 + 24 * v9) == a2)
        {
          v21 = v20 + 24 * v9;
          v22 = *(v21 + 8);
          v23 = *(v21 + 16);
          v24 = a2 | (*(v21 + 4) << 32);
          return EventTreeStats.count.modify;
        }
      }

      if (!--v7)
      {
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

LABEL_32:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

unint64_t Snapshot.subscript.setter(unint64_t result, uint64_t a2, int a3, unsigned int a4, unsigned int a5)
{
  v9 = *v7;
  if (*(*v7 + 84) <= a5)
  {
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v10 = *(v9 + 72);
  if (!v10)
  {
LABEL_102:
    __break(1u);
    goto LABEL_103;
  }

  v6 = 312 * a5;
  v11 = v10 + v6;
  v12 = *(v11 + 12);
  if (!v12)
  {
    goto LABEL_85;
  }

  v13 = HIDWORD(result);
  v14 = *v11;
  v15 = 0x280480000uLL;
  v16 = *v11;
  while (1)
  {
    if (!v14)
    {
      goto LABEL_88;
    }

    v17 = *v16;
    if (*v16 >= *(v9 + 108))
    {
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
      goto LABEL_77;
    }

    v11 = *(v9 + 96);
    if (!v11)
    {
      goto LABEL_89;
    }

    v18 = (v11 + 24 * v17);
    v19 = *v18;
    v8 = v18[1];
    v20 = *(v18 + 1);
    v21 = v18[4];
    if (*(v15 + 1008) != -1)
    {
      v70 = v6;
      v71 = v9;
      v75 = a2;
      v76 = result;
      v73 = a3;
      v74 = a4;
      v72 = a5;
      v69 = v13;
      swift_once();
      v15 = 0x280480000;
      v13 = v69;
      v6 = v70;
      v9 = v71;
      a2 = v75;
      result = v76;
      a5 = v72;
      a3 = v73;
      a4 = v74;
    }

    v23 = static Edge.invalid;
    v22 = HIDWORD(static Edge.invalid);
    v5 = qword_280481D78;
    v11 = dword_280481D80;
    v24 = v19 == static Edge.invalid && v8 == HIDWORD(static Edge.invalid);
    v25 = v24 && v20 == qword_280481D78;
    if (!v25 || v21 != dword_280481D80)
    {
      if (v17 >= *(v9 + 108))
      {
        goto LABEL_74;
      }

      v27 = *(v9 + 96);
      if (!v27)
      {
        __break(1u);
LABEL_99:
        __break(1u);
        goto LABEL_100;
      }

      if (*(v27 + 24 * v17) == a4)
      {
        break;
      }
    }

    ++v16;
    if (!--v12)
    {
      goto LABEL_85;
    }
  }

  v28 = v27 + 24 * v17;
  *v28 = result;
  *(v28 + 4) = v13;
  *(v28 + 8) = a2;
  *(v28 + 16) = a3;
  if (v17 >= *(v9 + 108))
  {
    goto LABEL_78;
  }

  if (v23 != result || v22 != v13 || v5 != a2 || v11 != a3)
  {
    return result;
  }

  if (*(v9 + 84) <= a5)
  {
    goto LABEL_79;
  }

  v29 = *(v9 + 72);
  if (!v29)
  {
LABEL_103:
    __break(1u);
LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  v30 = v29 + v6;
  v31 = *(v30 + 12);
  if (v31)
  {
    v32 = 0;
    v5 = 0;
    v33 = 8;
    while (1)
    {
      v6 = *v30;
      if (!*v30)
      {
        break;
      }

      v35 = v6 + v33;
      v36 = *(v6 + v33 - 8);
      if (v36 != v17)
      {
        v6 += 8 * v5;
        if (v5 < v32 || v6 >= v35)
        {
          *v6 = v36;
        }

        v34 = __OFADD__(v5++, 1);
        if (v34)
        {
          goto LABEL_75;
        }
      }

      ++v32;
      v33 += 8;
      if (v31 == v32)
      {
        if (v5 <= v31)
        {
          goto LABEL_44;
        }

        __break(1u);
        goto LABEL_43;
      }
    }

LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

LABEL_43:
  v5 = 0;
LABEL_44:
  v37 = v31 - v5 + 1;
  while (--v37)
  {
    if (!*v30)
    {
      __break(1u);
      break;
    }
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    if (HIDWORD(v5))
    {
      goto LABEL_81;
    }

    *(v30 + 12) = v5;
    if (*(v9 + 84) <= a4)
    {
      goto LABEL_82;
    }

    v38 = *(v9 + 72);
    if (!v38)
    {
      goto LABEL_104;
    }

    v39 = v38 + 312 * a4;
    v40 = *(v39 + 28);
    if (v40)
    {
      v41 = 0;
      v5 = 0;
      v42 = 8;
      while (1)
      {
        v6 = *(v39 + 16);
        if (!v6)
        {
          goto LABEL_101;
        }

        v43 = v6 + v42;
        v44 = *(v6 + v42 - 8);
        if (v44 != v17)
        {
          v6 += 8 * v5;
          if (v5 < v41 || v6 >= v43)
          {
            *v6 = v44;
          }

          v34 = __OFADD__(v5++, 1);
          if (v34)
          {
            goto LABEL_76;
          }
        }

        ++v41;
        v42 += 8;
        if (v40 == v41)
        {
          if (v5 <= v40)
          {
            goto LABEL_65;
          }

          __break(1u);
          break;
        }
      }
    }

    v5 = 0;
LABEL_65:
    v45 = v40 - v5 + 1;
    while (--v45)
    {
      if (!*(v39 + 16))
      {
        __break(1u);
        break;
      }
    }

    if ((v5 & 0x8000000000000000) == 0)
    {
      if (HIDWORD(v5))
      {
        goto LABEL_84;
      }

      *(v39 + 28) = v5;
      return result;
    }

    goto LABEL_83;
  }

LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  v8 = v6;
  v46 = a5;
  v47 = v9;
  _StringGuts.grow(_:)(42);
  MEMORY[0x26D69CDB0](0xD000000000000018, 0x800000026C33B9B0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x26D69CDB0](0x742065766168202ELL, 0xEE00203A65736568);
  if (*(v47 + 84) > v46)
  {
    v16 = v47;
    v11 = *(v47 + 72);
    if (!v11)
    {
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
    }

    v48 = (v11 + v8);
    v49 = *(v11 + v8 + 12);
    v50 = MEMORY[0x277D84F90];
    if (!v49)
    {
      goto LABEL_109;
    }

    v51 = *(v11 + v8 + 12);
    v52 = *v48;
    v78 = MEMORY[0x277D84F90];
    v53 = v49;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v49, 0);
    v54 = v53;
    v5 = v78;
    v55 = v52;
    v56 = v16;
    while (v52)
    {
      if (*v55 >= *(v56 + 27))
      {
        goto LABEL_99;
      }

      v58 = v56[12];
      if (!v58)
      {
        goto LABEL_106;
      }

      v59 = (v58 + 24 * *v55);
      v60 = *v59;
      v61 = v59[1];
      v62 = *(v59 + 4);
      v79 = v5;
      v64 = *(v5 + 16);
      v63 = *(v5 + 24);
      if (v64 >= v63 >> 1)
      {
        v65 = v54;
        v77 = v60;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v63 > 1), v64 + 1, 1);
        v56 = v16;
        v60 = v77;
        v54 = v65;
        v5 = v79;
      }

      *(v5 + 16) = v64 + 1;
      v57 = v5 + 24 * v64;
      *(v57 + 32) = v60;
      *(v57 + 40) = v61;
      *(v57 + 48) = v62;
      ++v55;
      if (!--v54)
      {
        goto LABEL_108;
      }
    }

    goto LABEL_105;
  }

LABEL_107:
  __break(1u);
LABEL_108:
  v50 = v5;
LABEL_109:
  v66 = MEMORY[0x26D69CFC0](v50, &type metadata for Edge);
  v68 = v67;

  MEMORY[0x26D69CDB0](v66, v68);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t Snapshot.subscript.setter(uint64_t result, unsigned int a2)
{
  if (*(*v2 + 84) <= a2)
  {
    __break(1u);
  }

  else
  {
    v3 = *(*v2 + 72);
    if (v3)
    {
      return outlined assign with take of Attribute(result, v3 + 312 * a2);
    }
  }

  __break(1u);
  return result;
}

{
  if (*(*v2 + 148) <= a2)
  {
    __break(1u);
  }

  else
  {
    v3 = *(*v2 + 136);
    if (v3)
    {
      v4 = result;
      v5 = (v3 + 80 * a2);
      v11[0] = *v5;
      v6 = v5[1];
      v7 = v5[2];
      v8 = v5[4];
      v11[3] = v5[3];
      v11[4] = v8;
      v11[1] = v6;
      v11[2] = v7;
      result = outlined destroy of GraphContext(v11);
      v9 = v4[3];
      v5[2] = v4[2];
      v5[3] = v9;
      v5[4] = v4[4];
      v10 = v4[1];
      *v5 = *v4;
      v5[1] = v10;
      return result;
    }
  }

  __break(1u);
  return result;
}

unint64_t Snapshot.subscript.modify(unint64_t *a1, Swift::UInt32 a2, uint64_t a3)
{
  if (MEMORY[0x277D84FD8])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x28uLL);
  }

  v8 = result;
  *a1 = result;
  v9 = *v3;
  v10 = **(*v3 + 88);
  if (*(v10 + 16))
  {
    v11 = *(v9 + 72);
    v12 = *(v9 + 80);
    result = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if (v13)
    {
      *(v8 + 32) = specialized UnsafeArray.subscript.modify(v8, *(*(v10 + 56) + 4 * result), v11, v12);
      return UnsafeTree.storage.modify;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t Snapshot.subscript.read(unint64_t *a1, Swift::UInt32 a2, uint64_t a3, uint64_t a4)
{
  if (MEMORY[0x277D84FD8])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x131uLL);
  }

  v9 = result;
  *a1 = result;
  v10 = **(a4 + 88);
  if (!*(v10 + 16))
  {
    __break(1u);
    goto LABEL_10;
  }

  v11 = *(a4 + 72);
  v12 = *(a4 + 84);
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  if ((v13 & 1) == 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v14 = *(*(v10 + 56) + 4 * result);
  if (v14 >= v12)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v11)
  {
    memcpy(v9, (v11 + 312 * v14), 0x131uLL);
    return Snapshot.subscript.read;
  }

LABEL_12:
  __break(1u);
  return result;
}

unint64_t Snapshot.subscript.setter(unint64_t result, Swift::UInt32 a2, uint64_t a3)
{
  v4 = *v3;
  v5 = **(*v3 + 88);
  if (!*(v5 + 16))
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = result;
  v7 = *(v4 + 72);
  v8 = *(v4 + 84);
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  if ((v9 & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v10 = *(*(v5 + 56) + 4 * result);
  if (v10 >= v8)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (!v7)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  return outlined assign with take of Attribute(v6, v7 + 312 * v10);
}

void (*Snapshot.subscript.read(void (**a1)(uint64_t a1), unsigned int a2, uint64_t a3))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0xF0uLL);
  }

  v7 = result;
  *a1 = result;
  if (*(a3 + 148) <= a2)
  {
    __break(1u);
  }

  else
  {
    v8 = *(a3 + 136);
    if (v8)
    {
      v9 = (v8 + 80 * a2);
      *(result + 5) = *v9;
      v10 = v9[1];
      v11 = v9[2];
      v12 = v9[4];
      *(result + 8) = v9[3];
      *(result + 9) = v12;
      *(result + 6) = v10;
      *(result + 7) = v11;
      memmove(result, v9, 0x50uLL);
      outlined init with copy of GraphContext(v7 + 80, v7 + 160);
      return Snapshot.subscript.read;
    }
  }

  __break(1u);
  return result;
}

{
  if (MEMORY[0x277D84FD8])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0xA8uLL);
  }

  v7 = result;
  *a1 = result;
  if (*(a3 + 44) <= a2)
  {
    __break(1u);
    goto LABEL_9;
  }

  v8 = *(a3 + 32);
  if (!v8)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v9 = (v8 + (a2 << 7));
  v10 = *v9;
  v11 = v9[1];
  v12 = v9[3];
  *(result + 2) = v9[2];
  *(result + 3) = v12;
  *result = v10;
  *(result + 1) = v11;
  v13 = v9[4];
  v14 = v9[5];
  v15 = v9[7];
  *(result + 6) = v9[6];
  *(result + 7) = v15;
  *(result + 4) = v13;
  *(result + 5) = v14;
  result = Event.hasTree(within:)(a3);
  if ((v16 & 1) == 0)
  {
    *(v7 + 20) = Snapshot.subscript.read(v7 + 16, result, a3);
    return Snapshot.subscript.read;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t (*Snapshot.subscript.modify(uint64_t *a1, unsigned int a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  *(v6 + 32) = specialized UnsafeArray.subscript.modify(v6, a2, *(a3 + 112), *(a3 + 120));
  return UnsafeTree.storage.modify;
}

{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  *(v6 + 32) = specialized UnsafeArray.subscript.modify(v6, a2, *(a3 + 32), *(a3 + 40));
  return UnsafeTree.storage.modify;
}

uint64_t Snapshot.subscript.setter(uint64_t result, unsigned int a2, uint64_t a3)
{
  if (*(a3 + 124) <= a2)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a3 + 112);
    if (v3)
    {
      return outlined assign with take of Subgraph(result, v3 + 168 * a2);
    }
  }

  __break(1u);
  return result;
}

uint64_t Snapshot.subscript.setter(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (HIDWORD(a2) >= *(a3 + 124))
  {
    __break(1u);
    goto LABEL_8;
  }

  v7 = *(a3 + 112);
  if (v7)
  {
    v4 = a2;
    v3 = result;
    v6 = (v7 + 168 * HIDWORD(a2));
    v5 = *v6;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v6 = v5;
    if (result)
    {
      if ((v4 & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }

LABEL_8:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
    *v6 = result;
    if ((v4 & 0x80000000) == 0)
    {
LABEL_5:
      if (v4 < *(v5 + 16))
      {
        v8 = v3[11];
        v9 = (v5 + 208 * v4);
        v9[12] = v3[10];
        v9[13] = v8;
        v9[14] = v3[12];
        v10 = v3[7];
        v9[8] = v3[6];
        v9[9] = v10;
        v11 = v3[9];
        v9[10] = v3[8];
        v9[11] = v11;
        v12 = v3[3];
        v9[4] = v3[2];
        v9[5] = v12;
        v13 = v3[5];
        v9[6] = v3[4];
        v9[7] = v13;
        v14 = v3[1];
        v9[2] = *v3;
        v9[3] = v14;
        return result;
      }

      goto LABEL_10;
    }

LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
  }

  __break(1u);
  return result;
}

_OWORD *Snapshot.subscript.setter(_OWORD *result, unsigned int a2, uint64_t a3)
{
  if (*(a3 + 44) <= a2)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v4 = result[5];
      v5 = (v3 + (a2 << 7));
      v5[4] = result[4];
      v5[5] = v4;
      v6 = result[7];
      v5[6] = result[6];
      v5[7] = v6;
      v7 = result[1];
      *v5 = *result;
      v5[1] = v7;
      v8 = result[3];
      v5[2] = result[2];
      v5[3] = v8;
      return result;
    }
  }

  __break(1u);
  return result;
}

__n128 Snapshot.subscript.getter@<Q0>(unsigned int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a2 + 200) + 120 * a1;
  v4 = *(v3 + 80);
  *(a3 + 64) = *(v3 + 64);
  *(a3 + 80) = v4;
  *(a3 + 96) = *(v3 + 96);
  *(a3 + 112) = *(v3 + 112);
  v5 = *(v3 + 16);
  *a3 = *v3;
  *(a3 + 16) = v5;
  result = *(v3 + 32);
  v7 = *(v3 + 48);
  *(a3 + 32) = result;
  *(a3 + 48) = v7;
  return result;
}

void (*Snapshot.subscript.read(void *a1, unsigned int a2, uint64_t a3))(void **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x78uLL);
  }

  *a1 = v6;
  memmove(v6, (*(a3 + 200) + 120 * a2), 0x78uLL);
  return Snapshot.subscript.read;
}

uint64_t (*Snapshot.subscript.modify(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x28uLL);
  }

  *a1 = v5;
  v6 = *(a3 + 200);
  v7 = *(a3 + 208);
  *(v5 + 32) = specialized UnsafeArray.subscript.modify();
  return UnsafeTree.storage.modify;
}

__n128 Snapshot.subscript.setter(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v3 = *(a3 + 200) + 120 * a2;
  v4 = *(a1 + 80);
  *(v3 + 64) = *(a1 + 64);
  *(v3 + 80) = v4;
  *(v3 + 96) = *(a1 + 96);
  *(v3 + 112) = *(a1 + 112);
  v5 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v5;
  result = *(a1 + 32);
  v7 = *(a1 + 48);
  *(v3 + 32) = result;
  *(v3 + 48) = v7;
  return result;
}

ValueMetadata *Event.hasValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 28);
  *(v1 + 25);
  result = specialized HeterogeneousBuffer.valuePointerAs<A>(for:)(0, *(v1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32));
  if (result)
  {
    v5 = *result;
    v6 = result[1];
    v7 = result[2];
    v8 = LODWORD(result[3].Kind) | (BYTE4(result[3].Kind) << 32);
  }

  else
  {
    v8 = 0;
    v5 = xmmword_26C32F290;
    v6 = 0;
    v7 = 0;
  }

  *a1 = v5;
  *(a1 + 16) = v6;
  *(a1 + 32) = v7;
  *(a1 + 48) = v8;
  *(a1 + 52) = BYTE4(v8);
  return result;
}

unsigned int *Snapshot.subscript.read(unsigned int **a1, unsigned int a2, uint64_t a3)
{
  if (MEMORY[0x277D84FD8])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x160uLL);
  }

  v7 = result;
  *a1 = result;
  if (*(a3 + 44) <= a2)
  {
    __break(1u);
    goto LABEL_13;
  }

  v8 = *(a3 + 32);
  if (!v8)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = v8 + (a2 << 7);
  v10 = *(v9 + 8);
  v11 = *(v9 + 16);
  v12 = *(v9 + 24);
  v13 = *(v9 + 25);
  v16 = v9 + 28;
  v14 = *(v9 + 28);
  v15 = *(v16 + 4);
  v17 = v13 == 0;
  v18 = 256;
  if (v17)
  {
    v18 = 0;
  }

  v19 = v18 | (v14 << 32);
  result = specialized HeterogeneousBuffer.valuePointerAs<A>(for:)(0, v10, v11, v18 | v12, v15);
  if (result || (result = _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v10, v11, v19 | v12, v15, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV14AttributeStackV_Ttgq5Tm)) != 0)
  {
    *(v7 + 43) = Snapshot.subscript.read(v7 + 39, *result, a3);
    memmove(v7, v20, 0x131uLL);
    return Snapshot.subscript.read;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t Attribute.Pattern.match(_:within:)(uint64_t result, uint64_t a2)
{
  if (*(a2 + 84) <= result)
  {
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v4 = *(a2 + 72);
  if (!v4)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v5 = result;
  v6 = result;
  v7 = (v4 + 312 * result);
  if (((v7[89] | *(v2 + 68)) & 1) == 0)
  {
    goto LABEL_16;
  }

  v8 = *v2;
  v9 = *(v2 + 1);
  v10 = v2[4];
  v11 = v2[6];
  v12 = *(v2 + 4);
  v53 = v2[10];
  v52 = *(v2 + 7);
  v50 = v2[16];
  v51 = v2[12];
  memcpy(__dst, v7, sizeof(__dst));
  result = Attribute.indirectSource(within:)(a2);
  v13 = *(a2 + 84);
  if (result >= v13)
  {
    goto LABEL_19;
  }

  v14 = *(a2 + 72);
  if (!v14)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v15 = v14 + 312 * result;
  if (*(v15 + 101))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v13 <= v5)
  {
    goto LABEL_20;
  }

  v16 = v14 + 312 * v6;
  if (*(v16 + 136))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v17 = *(v16 + 128);
  if (HIDWORD(v17) >= *(a2 + 124))
  {
    goto LABEL_21;
  }

  v18 = *(a2 + 112);
  if (v18)
  {
    if ((v17 & 0x80000000) == 0)
    {
      v19 = *(v18 + 168 * HIDWORD(v17));
      if (v17 < *(v19 + 16))
      {
        v21 = *(v15 + 92);
        v20 = *(v15 + 96);
        v22 = *(v19 + 208 * v17 + 120);
        LODWORD(v72) = v8;
        *(&v72 + 1) = v9;
        LODWORD(v73) = v10;
        v23 = *(*a2 + 136);
        v25 = v23[1];
        v24 = v23[2];
        v86[0] = *v23;
        v86[1] = v25;
        v86[2] = v24;
        v26 = v23[6];
        v28 = v23[3];
        v27 = v23[4];
        v86[5] = v23[5];
        v86[6] = v26;
        v86[3] = v28;
        v86[4] = v27;
        v82 = v23[3];
        v83 = v23[4];
        v84 = v23[5];
        v85 = v23[6];
        v79 = *v23;
        v80 = v23[1];
        v81 = v23[2];

        outlined init with copy of Interpreter.Storage.Types(v86, v87);
        PType.Pattern.match(type:within:)(v21, &v79);
        v30 = v29;
        v87[4] = v83;
        v87[5] = v84;
        v87[6] = v85;
        v87[0] = v79;
        v87[1] = v80;
        v87[2] = v81;
        v87[3] = v82;
        outlined destroy of Interpreter.Storage.Types(v87);

        if (v30)
        {
          LODWORD(v54) = v11;
          *(&v54 + 1) = v12;
          LODWORD(v55) = v53;
          v31 = *(*a2 + 136);
          v33 = v31[1];
          v32 = v31[2];
          v72 = *v31;
          v73 = v33;
          v74 = v32;
          v34 = v31[6];
          v36 = v31[3];
          v35 = v31[4];
          v77 = v31[5];
          v78 = v34;
          v75 = v36;
          v76 = v35;
          v68 = v31[3];
          v69 = v31[4];
          v70 = v31[5];
          v71 = v31[6];
          v65 = *v31;
          v66 = v31[1];
          v67 = v31[2];

          outlined init with copy of Interpreter.Storage.Types(&v72, v64);
          PType.Pattern.match(type:within:)(v20, &v65);
          v38 = v37;
          v83 = v69;
          v84 = v70;
          v85 = v71;
          v79 = v65;
          v80 = v66;
          v81 = v67;
          v82 = v68;
          outlined destroy of Interpreter.Storage.Types(&v79);

          if (v38)
          {
            v61 = v51;
            v62 = v52;
            v63 = v50;
            v39 = *(*a2 + 136);
            v41 = v39[1];
            v40 = v39[2];
            v64[0] = *v39;
            v64[1] = v41;
            v64[2] = v40;
            v42 = v39[6];
            v44 = v39[3];
            v43 = v39[4];
            v64[5] = v39[5];
            v64[6] = v42;
            v64[3] = v44;
            v64[4] = v43;
            v45 = v39[5];
            v58 = v39[4];
            v59 = v45;
            v60 = v39[6];
            v46 = v39[1];
            v54 = *v39;
            v55 = v46;
            v47 = v39[3];
            v56 = v39[2];
            v57 = v47;

            outlined init with copy of Interpreter.Storage.Types(v64, &v65);
            PType.Pattern.match(type:within:)(v22, &v54);
            v49 = v48;
            v69 = v58;
            v70 = v59;
            v71 = v60;
            v65 = v54;
            v66 = v55;
            v67 = v56;
            v68 = v57;
            outlined destroy of Interpreter.Storage.Types(&v65);

            return v49 & 1;
          }
        }

LABEL_16:
        v49 = 0;
        return v49 & 1;
      }

      goto LABEL_23;
    }

LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_28:
  __break(1u);
  return result;
}

unsigned int *Snapshot.subscript.modify(unsigned int **a1, unsigned int a2)
{
  if (MEMORY[0x277D84FD8])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x28uLL);
  }

  v6 = result;
  *a1 = result;
  if (*(*v2 + 44) <= a2)
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = *(*v2 + 32);
  if (!v7)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v8 = v7 + (a2 << 7);
  v9 = *(v8 + 8);
  v10 = *(v8 + 16);
  v11 = *(v8 + 24);
  v12 = *(v8 + 25);
  v15 = v8 + 28;
  v13 = *(v8 + 28);
  v14 = *(v15 + 4);
  v16 = v12 == 0;
  v17 = 256;
  if (v16)
  {
    v17 = 0;
  }

  v18 = v17 | (v13 << 32);
  result = specialized HeterogeneousBuffer.valuePointerAs<A>(for:)(0, v9, v10, v17 | v11, v14);
  if (result || (result = _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v9, v10, v18 | v11, v14, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV14AttributeStackV_Ttgq5Tm)) != 0)
  {
    v6[4] = Snapshot.subscript.modify(v6, *result);
    return UnsafeTree.storage.modify;
  }

LABEL_14:
  __break(1u);
  return result;
}

unint64_t Event.hasAttributeRef.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  v10 = *(v0 + 24);
  v4 = 256;
  if (!*(v0 + 25))
  {
    v4 = 0;
  }

  v5 = v4 | (*(v0 + 28) << 32);
  v6 = specialized HeterogeneousBuffer.valuePointerAs<A>(for:)(0, v1, v2, v4 | v10, v3);
  if (v6 || (v6 = _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v1, v2, v5 | v10, v3, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV14AttributeStackV_Ttgq5Tm)) != 0)
  {
    v7 = 0;
    v8 = *v6;
  }

  else
  {
    v8 = 0;
    v7 = 1;
  }

  return v8 | (v7 << 32);
}

unsigned int *Snapshot.subscript.setter(unsigned int *result, unsigned int a2)
{
  v3 = *v2;
  if (*(*v2 + 44) <= a2)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *(v3 + 32);
  if (!v4)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v5 = result;
  v6 = v4 + (a2 << 7);
  v7 = *(v6 + 8);
  v8 = *(v6 + 16);
  v9 = *(v6 + 24);
  v10 = *(v6 + 25);
  v13 = v6 + 28;
  v11 = *(v6 + 28);
  v12 = *(v13 + 4);
  v14 = v10 == 0;
  v15 = 256;
  if (v14)
  {
    v15 = 0;
  }

  v16 = v15 | (v11 << 32);
  result = specialized HeterogeneousBuffer.valuePointerAs<A>(for:)(0, v7, v8, v15 | v9, v12);
  if (!result)
  {
    result = _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV14AttributeStackV_Ttgq5Tm(v7, v8, v16 | v9, v12, _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV14AttributeStackV_Ttgq5Tm);
    if (!result)
    {
      goto LABEL_17;
    }
  }

  v17 = *result;
  if (*result >= *(v3 + 84))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v18 = *(v3 + 72);
  if (!v18)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  return outlined assign with take of Attribute(v5, v18 + 312 * v17);
}

void (*Snapshot.subscript.modify(void (**a1)(uint64_t a1), unsigned int a2))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0xA8uLL);
  }

  v6 = result;
  *a1 = result;
  v7 = *v2;
  if (*(*v2 + 44) <= a2)
  {
    __break(1u);
    goto LABEL_9;
  }

  v8 = *(v7 + 32);
  if (!v8)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v9 = (v8 + (a2 << 7));
  v10 = *v9;
  v11 = v9[1];
  v12 = v9[3];
  *(result + 2) = v9[2];
  *(result + 3) = v12;
  *result = v10;
  *(result + 1) = v11;
  v13 = v9[4];
  v14 = v9[5];
  v15 = v9[7];
  *(result + 6) = v9[6];
  *(result + 7) = v15;
  *(result + 4) = v13;
  *(result + 5) = v14;
  result = Event.hasTree(within:)(v7);
  if ((v16 & 1) == 0)
  {
    *(v6 + 20) = Snapshot.subscript.modify(v6 + 16, result, v7);
    return Snapshot.subscript.modify;
  }

LABEL_10:
  __break(1u);
  return result;
}

void Snapshot.subscript.modify(uint64_t a1)
{
  v1 = *a1;
  (*(*a1 + 160))();

  free(v1);
}

unint64_t Snapshot.subscript.setter(unint64_t result, unsigned int a2)
{
  v5 = *v3;
  if (*(*v3 + 44) <= a2)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = *(v5 + 32);
  if (!v6)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v2 = result;
  v7 = (v6 + (a2 << 7));
  v21 = v7[4];
  v22 = v7[5];
  v23 = v7[6];
  v24 = v7[7];
  v17 = *v7;
  v18 = v7[1];
  v19 = v7[2];
  v20 = v7[3];
  result = Event.hasTree(within:)(v5);
  if (v8)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  LODWORD(v3) = result;
  if (HIDWORD(result) >= *(v5 + 124))
  {
    goto LABEL_11;
  }

  v9 = *(v5 + 112);
  if (v9)
  {
    v4 = (v9 + 168 * HIDWORD(result));
    v5 = *v4;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v4 = v5;
    if (result)
    {
      if ((v3 & 0x80000000) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_12:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
    *v4 = result;
    if ((v3 & 0x80000000) == 0)
    {
LABEL_8:
      if (v3 < *(v5 + 16))
      {
        v10 = v2[11];
        v11 = (v5 + 208 * v3);
        v11[12] = v2[10];
        v11[13] = v10;
        v11[14] = v2[12];
        v12 = v2[7];
        v11[8] = v2[6];
        v11[9] = v12;
        v13 = v2[9];
        v11[10] = v2[8];
        v11[11] = v13;
        v14 = v2[3];
        v11[4] = v2[2];
        v11[5] = v14;
        v15 = v2[5];
        v11[6] = v2[4];
        v11[7] = v15;
        v16 = v2[1];
        v11[2] = *v2;
        v11[3] = v16;
        return result;
      }

      goto LABEL_14;
    }

LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

LABEL_17:
  __break(1u);
  return result;
}

Swift::Void __swiftcall Snapshot.reset()()
{
  v1 = *v0;
  v2 = *(*v0 + 84);
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    v5 = 312 * v2;
    while (v4 < *(v1 + 84))
    {
      v6 = *(v1 + 72);
      if (!v6)
      {
        goto LABEL_76;
      }

      v7 = v6 + v3;
      *(v7 + 36) = 0;
      *(v7 + 240) = 0;
      *(v7 + 248) = 0;
      *(v7 + 232) = 0;
      *(v7 + 40) = 1;
      *(v7 + 288) = 0;
      *(v7 + 296) = 0;
      *(v7 + 304) = 1;
      if (*(v6 + v3 + 12) && !*v7)
      {
        goto LABEL_79;
      }

      *(v7 + 12) = 0;
      if (*(v7 + 28) && !*(v6 + v3 + 16))
      {
        goto LABEL_78;
      }

      *(v7 + 28) = 0;
      v8 = v6 + v3;
      v9 = v6 + v3 + 200;
      if (*v9)
      {
        MEMORY[0x26D69EAB0](*v9, -1, -1);
      }

      *(v8 + 184) = -1;
      *(v8 + 192) = 0;
      *(v8 + 196) = 1;
      ++v4;
      *v9 = 0;
      *(v9 + 8) = 0;
      v3 += 312;
      *(v9 + 16) = 0;
      if (v5 == v3)
      {
        goto LABEL_12;
      }
    }

LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

LABEL_12:
  v45 = *(v1 + 124);
  if (v45)
  {
    v10 = 0;
    while (v10 < *(v1 + 124))
    {
      v11 = *(v1 + 112);
      if (!v11)
      {
        goto LABEL_77;
      }

      v12 = v11 + 168 * v10;
      *(v12 + 124) = 0;
      *(v12 + 128) = 1;
      *(v12 + 132) = 0;
      *(v12 + 136) = 1;
      v13 = *v12;
      v14 = *(*v12 + 16);
      if (v14)
      {
        v15 = *v12;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v12 = v13;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v13 = specialized _ArrayBuffer._consumeAndCreateNew()(v13);
        }

        *v12 = v13;
        if (!*(v13 + 16))
        {
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
          goto LABEL_71;
        }

        v17 = 0;
        v18 = v14 - 1;
        v19 = 232;
        while (1)
        {
          v20 = *(v13 + v19);
          if (!v20)
          {
            v47 = 0;
            v48 = 1;
            v49 = 0;
            v50 = 0;
            v51 = 1;
            v52 = 0;
            v53 = 513;
            _s21SwiftUITracingSupport6StrongVyACyxGxcfCAA4TreeV5CacheV_Tt0B5(&v47);
            *(v13 + v19) = v20;
          }

          *v20 = 0;
          *(v20 + 4) = 1;
          *(v20 + 8) = 0;
          *(v20 + 16) = 0;
          *(v20 + 18) = 1;
          *(v20 + 33) = 2;
          if (v18 == v17)
          {
            break;
          }

          v13 = *v12;
          v19 += 208;
          if (++v17 >= *(*v12 + 16))
          {
            goto LABEL_66;
          }
        }
      }

      if (++v10 == v45)
      {
        goto LABEL_27;
      }
    }

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
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

LABEL_27:
  v21 = *(v1 + 44);
  if (v21)
  {
    v22 = 0;
    v46 = *(v1 + 44);
    while (v22 < *(v1 + 44))
    {
      v23 = *(v1 + 32);
      if (!v23)
      {
        goto LABEL_80;
      }

      v24 = v23 + (v22 << 7);
      if ((*(v24 + 24) & 1) == 0)
      {
        v25 = *(v24 + 8);
        if ((*(v24 + 25) & 1) == 0)
        {
          v27 = 0;
          v28 = 0;
          v29 = *(v24 + 32);
          v30 = *(v24 + 16) - v25;
          while (1)
          {
            v31 = v28;
            if (v28 >= v29)
            {
              break;
            }

            if (!v25)
            {
              goto LABEL_75;
            }

            if (v30 < v27)
            {
              goto LABEL_68;
            }

            projectDeinit #1 <A>(_:) in HeterogeneousBuffer.deallocate()(*(v25 + v27), v24 + 8, *(v25 + v27));
            v32 = specialized HeterogeneousBuffer.stride<A>(of:)(*(v25 + v27));
            v33 = __OFADD__(v32, v27);
            v27 += v32;
            if (v33)
            {
              goto LABEL_69;
            }

            if (v27 > 0xFFFFFFFFLL)
            {
              goto LABEL_70;
            }

            v28 = v31 + 1;
            if (v27 < 0)
            {
              __break(1u);
              goto LABEL_46;
            }
          }
        }

        v21 = v46;
        if (v25)
        {
          MEMORY[0x26D69EAB0](v25, -1, -1);
        }
      }

      v26 = *(v24 + 112);
      if (v26)
      {
        MEMORY[0x26D69EAB0](v26, -1, -1);
        *(v24 + 112) = 0;
      }

      if (++v22 == v21)
      {
LABEL_46:
        if (*(v1 + 44) && !*(v1 + 32))
        {
          goto LABEL_84;
        }

        goto LABEL_48;
      }
    }

    goto LABEL_73;
  }

LABEL_48:
  *(v1 + 44) = 0;
  if (*(v1 + 188))
  {
    if (!*(v1 + 176))
    {
LABEL_82:
      __break(1u);
      goto LABEL_83;
    }

    swift_arrayDestroy();
  }

  *(v1 + 188) = 0;
  if (!*(v1 + 108) || *(v1 + 96))
  {
    *(v1 + 108) = 0;
    v34 = *(v1 + 124);
    if (!v34)
    {
      return;
    }

    v35 = 0;
    while (v35 < *(v1 + 124))
    {
      v36 = *(v1 + 112);
      if (!v36)
      {
        goto LABEL_81;
      }

      v37 = (v36 + 168 * v35);
      v38 = *v37;
      v39 = *(*v37 + 16);
      if (v39)
      {
        v40 = *v37;
        v41 = swift_isUniquelyReferenced_nonNull_native();
        *v37 = v38;
        if ((v41 & 1) == 0)
        {
          v38 = specialized _ArrayBuffer._consumeAndCreateNew()(v38);
        }

        v42 = 0;
        v43 = 0;
        *v37 = v38;
        do
        {
          *v37 = v38;
          if (v43 >= *(v38 + 16))
          {
            goto LABEL_67;
          }

          ++v43;
          v44 = (v38 + v42);
          v44[8] = 0;
          v44[5] = 0;
          v44[6] = 0;
          v44[4] = 0;
          v38 = *v37;
          v42 += 208;
        }

        while (v39 != v43);
      }

      if (++v35 == v34)
      {
        return;
      }
    }

    goto LABEL_74;
  }

LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
}

Swift::Void __swiftcall Attribute.Value.deallocate()()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    MEMORY[0x26D69EAB0](v1, -1, -1);
    *(v0 + 16) = 0;
  }
}

void *Attribute.Value.init(setAt:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA9AttributeV5ValueV5FieldV_SayALGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *a2 = a1;
  *(a2 + 8) = 0;
  *(a2 + 12) = 1;
  *(a2 + 16) = result;
  *(a2 + 24) = v5;
  *(a2 + 28) = v6;
  return result;
}

void Tree.Cache.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 4) = 1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 18) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 513;
}

uint64_t Snapshot.subscript.getter(uint64_t result, uint64_t a2)
{
  if (*(a2 + 84) <= result)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 72);
    if (v3)
    {
      memcpy(__dst, (v3 + 312 * result), 0x131uLL);
      outlined init with copy of Attribute(__dst, &v5);
      v4 = Attribute.displayName(within:context:)(a2);
      outlined destroy of Attribute(__dst);
      return v4;
    }
  }

  __break(1u);
  return result;
}

uint64_t Attribute.displayName(within:context:)(uint64_t a1)
{
  result = Attribute.indirectSource(within:)(a1);
  if (result >= *(a1 + 84))
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = *(a1 + 72);
  if (!v3)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v4 = v3 + 312 * result;
  if ((*(v4 + 101) & 1) == 0)
  {
    v5 = *(v4 + 92);
    v6 = *(v4 + 96);
    v7 = *(*a1 + 136);
    v18 = v7[4];
    v20 = v7[5];
    v22 = v7[6];
    v10 = *v7;
    v12 = v7[1];
    v14 = v7[2];
    v16 = v7[3];
    v24 = Interpreter.Storage.Types.subscript.getter(v5);
    MEMORY[0x26D69CDB0](2109216, 0xE300000000000000);
    v8 = *(*a1 + 136);
    v19 = v8[4];
    v21 = v8[5];
    v23 = v8[6];
    v11 = *v8;
    v13 = v8[1];
    v15 = v8[2];
    v17 = v8[3];
    v9 = Interpreter.Storage.Types.subscript.getter(v6);
    MEMORY[0x26D69CDB0](v9);

    return v24;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t Tree.describe(state:)(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v71 = *(a1 + 16);
  v5 = a1[3];
  v4 = a1[4];
  v6 = *(a1 + 40);
  v7 = *(a1 + 41);
  v8 = *v1;
  v9 = v1[2];
  v156 = v1[1];
  v157 = v9;
  v155 = v8;
  v10 = *(v1 + 6);
  v154 = *(v1 + 56);
  v11 = *(v1 + 57);
  *(v153 + 15) = *(v1 + 72);
  v153[0] = v11;
  v77 = *(v1 + 22);
  v74 = v7;
  v75 = *(v1 + 92);
  v12 = *(v1 + 93);
  *(v152 + 7) = *(v1 + 25);
  v152[0] = v12;
  v13 = *(v1 + 13);
  v80 = v10;
  v81 = *(v1 + 28);
  v14 = *(v1 + 116);
  v15 = *(v1 + 117);
  *(v151 + 15) = *(v1 + 33);
  v151[0] = v15;
  v82 = *(v1 + 17);
  v150 = *(v1 + 144);
  LODWORD(v12) = *(v1 + 145);
  *(v149 + 3) = *(v1 + 37);
  v149[0] = v12;
  v78 = *(v1 + 19);
  v79 = *(v1 + 20);
  v76 = *(v1 + 21);
  v148 = *(v1 + 176);
  v16 = *(v1 + 177);
  *(v147 + 15) = v1[12];
  v147[0] = v16;
  v17 = v13;
  v18 = v13 == 0;
  *&v86 = 0;
  *(&v86 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(42);

  v96 = 0x206565725428;
  v97 = 0xE600000000000000;
  if (__OFSUB__(v3, 1))
  {
    __break(1u);
    goto LABEL_31;
  }

  v70 = v14 | v18;
  v66 = v3 - 1;
  v140 = v3 - 1;
  v141 = v2;
  v142 = 2;
  v143 = v5;
  v144 = v4;
  v145 = v6;
  v146 = v74;
  v20 = specialized InspectionState.wrapDescription<A>(_:)(v17);
  MEMORY[0x26D69CDB0](v20);

  MEMORY[0x26D69CDB0](8224, 0xE200000000000000);
  v133 = v3;
  v134 = v2;
  v135 = 2;
  v136 = v5;
  v137 = v4;
  v138 = v6;
  v139 = v74;
  v21 = specialized InspectionState.describe<A>(_:_:)(0x746E65726170, 0xE600000000000000, v80, v154);
  MEMORY[0x26D69CDB0](v21);

  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  v126 = v3;
  v127 = v2;
  v128 = 2;
  v73 = v3;
  v129 = v5;
  v130 = v4;
  v131 = v6;
  v132 = v74;
  v83 = Inspectable_Context.snapshot.getter();
  v86 = v155;
  v87 = v156;
  v88 = v157;
  *v89 = v80;
  v89[8] = v154;
  *&v89[9] = v153[0];
  *&v89[24] = *(v153 + 15);
  *&v89[40] = v77;
  v89[44] = v75;
  *&v89[45] = v152[0];
  *&v89[52] = *(v152 + 7);
  *&v89[56] = v17;
  *v90 = v81;
  v72 = v14;
  v90[4] = v14;
  *&v90[20] = *(v151 + 15);
  *&v90[5] = v151[0];
  *&v90[24] = v82;
  LOBYTE(v91) = v150;
  DWORD1(v91) = *(v149 + 3);
  *(&v91 + 1) = v149[0];
  *(&v91 + 1) = v78;
  v92 = v79;
  v93 = v76;
  v94 = v148;
  *&v95[15] = *(v147 + 15);
  *v95 = v147[0];
  v28 = specialized Tree.parent(_:within:unabstracting:)(16, &v83, v22, v23, v24, v25, v26, v27);
  v30 = specialized InspectionState.describe<A>(_:_:)(0x746E65726170, 0xE600000000000000, v28, v29 & 1);
  MEMORY[0x26D69CDB0](v30);

  MEMORY[0x26D69CDB0](8233, 0xE200000000000000);
  v31 = v78;
  if (v78)
  {
    *&v86 = v78;
    swift_getMetatypeMetadata();
    v31 = String.init<A>(describing:)();
    v33 = v32;
  }

  else
  {
    v33 = 0xE000000000000000;
  }

  MEMORY[0x26D69CDB0](v31, v33);

  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  v119 = v73;
  v120 = v2;
  v121 = 2;
  v122 = v5;
  v123 = v4;
  v124 = v6;
  v125 = v74;
  v34 = specialized InspectionState.describe<A>(_:_:)(0x7463617274736261, 0xE800000000000000, v82, v150);
  MEMORY[0x26D69CDB0](v34);

  v112 = v73;
  v113 = v2;
  v114 = 2;
  v115 = v5;
  v116 = v4;
  v117 = v6;
  v118 = v74;
  v35 = specialized InspectionState.describe<A>(_:_:)(0x656372756F73, 0xE600000000000000, v76, v148);
  MEMORY[0x26D69CDB0](v35);

  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  v86 = v155;
  v87 = v156;
  v88 = v157;
  *v89 = v80;
  v69 = v154;
  v89[8] = v154;
  *&v89[9] = v153[0];
  *&v89[24] = *(v153 + 15);
  *&v89[40] = v77;
  v89[44] = v75;
  *&v89[45] = v152[0];
  *&v89[52] = *(v152 + 7);
  *&v89[56] = v17;
  *v90 = v81;
  v90[4] = v14;
  *&v90[5] = v151[0];
  *&v90[20] = *(v151 + 15);
  *&v90[24] = v82;
  v68 = v150;
  LOBYTE(v91) = v150;
  *(&v91 + 1) = v149[0];
  DWORD1(v91) = *(v149 + 3);
  *(&v91 + 1) = v78;
  v92 = v79;
  v93 = v76;
  v67 = v148;
  v94 = v148;
  *&v95[15] = *(v147 + 15);
  *v95 = v147[0];
  v83 = v4;
  v84 = v6;
  v85 = v74;
  v36 = Inspectable_Context.snapshot.getter();
  v37 = Tree.hasOwnAttributes(within:)(v36);
  v38 = (v37 & 1) == 0;
  if (v37)
  {
    v39 = 0;
  }

  else
  {
    v39 = 0x7974706D65;
  }

  if (v38)
  {
    v40 = 0xE500000000000000;
  }

  else
  {
    v40 = 0xE000000000000000;
  }

  MEMORY[0x26D69CDB0](v39, v40);

  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  if (v70)
  {
    v41 = 0;
  }

  else
  {
    v41 = 1717658988;
  }

  if (v70)
  {
    v42 = 0xE000000000000000;
  }

  else
  {
    v42 = 0xE400000000000000;
  }

  MEMORY[0x26D69CDB0](v41, v42);

  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  if (v75)
  {
    v43 = 0x6465686361747461;
  }

  else
  {
    v43 = 0;
  }

  if (v75)
  {
    v44 = 0xE800000000000000;
  }

  else
  {
    v44 = 0xE000000000000000;
  }

  MEMORY[0x26D69CDB0](v43, v44);

  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  v105 = v73;
  v106 = 0x7FFFFFFFFFFFFFFFLL;
  v107 = v71;
  v108 = v5;
  v109 = v4;
  v110 = v6;
  v111 = v74;
  *&v86 = v4;
  BYTE8(v86) = v6;
  BYTE9(v86) = v74;
  v83 = Inspectable_Context.snapshot.getter();
  v86 = v155;
  v87 = v156;
  v88 = v157;
  *v89 = v80;
  v89[8] = v69;
  *&v89[9] = v153[0];
  *&v89[24] = *(v153 + 15);
  *&v89[40] = v77;
  v89[44] = v75;
  *&v89[45] = v152[0];
  *&v89[52] = *(v152 + 7);
  *&v89[56] = v17;
  *v90 = v81;
  v90[4] = v14;
  *&v90[20] = *(v151 + 15);
  *&v90[5] = v151[0];
  *&v90[24] = v82;
  LOBYTE(v91) = v68;
  DWORD1(v91) = *(v149 + 3);
  *(&v91 + 1) = v149[0];
  *(&v91 + 1) = v78;
  v92 = v79;
  v93 = v76;
  v94 = v67;
  *&v95[15] = *(v147 + 15);
  *v95 = v147[0];
  v47 = Tree._childNodes(_:within:during:unabstracting:)(4u, &v83, v45, v46, MEMORY[0x277D84FA0]);
  v48 = specialized InspectionState.describe<A>(_:_:)(0x6E6572646C696863, 0xE800000000000000, v47);
  v50 = v49;

  MEMORY[0x26D69CDB0](v48, v50);

  MEMORY[0x26D69CDB0](10, 0xE100000000000000);
  if (v77 != -1)
  {
    *&v86 = v66;
    *(&v86 + 1) = v2;
    LOBYTE(v87) = v71;
    *(&v87 + 1) = v5;
    *&v88 = v4;
    BYTE8(v88) = v6;
    BYTE9(v88) = v74;
    v51 = specialized InspectionState.wrapDescription<A>(_:)(v77);
    v53 = v52;
LABEL_29:
    MEMORY[0x26D69CDB0](v51, v53);

    MEMORY[0x26D69CDB0](2695209, 0xE300000000000000);
    return v96;
  }

  *&v86 = v4;
  BYTE8(v86) = v6;
  BYTE9(v86) = v74;
  result = Inspectable_Context.snapshot.getter();
  if (v72)
  {
    goto LABEL_32;
  }

  if (v81 >= *(result + 124))
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v54 = *(result + 112);
  if (v54)
  {
    v55 = (v54 + 168 * v81);
    v56 = *v55;
    v57 = v55[2];
    v87 = v55[1];
    v88 = v57;
    v86 = v56;
    v58 = v55[3];
    v59 = v55[4];
    v60 = v55[6];
    *&v89[32] = v55[5];
    *&v89[48] = v60;
    *v89 = v58;
    *&v89[16] = v59;
    v61 = v55[7];
    v62 = v55[8];
    v63 = v55[9];
    v92 = *(v55 + 20);
    *&v90[16] = v62;
    v91 = v63;
    *v90 = v61;
    v98 = v66;
    v99 = v2;
    v100 = v71;
    v101 = v5;
    v102 = v4;
    v103 = v6;
    v104 = v74;
    outlined init with copy of Subgraph(&v86, &v83);
    v64 = specialized InspectionState.wrapDescription<A>(_:)();
    v53 = v65;
    outlined destroy of Subgraph(&v86);
    v51 = v64;
    goto LABEL_29;
  }

LABEL_33:
  __break(1u);
  return result;
}

uint64_t Tree.parent.getter()
{
  result = *(v0 + 48);
  v2 = *(v0 + 56);
  return result;
}

uint64_t Tree.parent.setter(uint64_t result, char a2)
{
  if ((*(v2 + 56) & 1) != 0 || (a2 & 1) != 0 || *(v2 + 48) == result)
  {
    *(v2 + 48) = result;
    *(v2 + 56) = a2 & 1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_26C328DC0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport7TreeRefVSgMd, &_s21SwiftUITracingSupport7TreeRefVSgMR);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x26D69CDB0](540877088, 0xE400000000000000);
    _print_unlocked<A, B>(_:_:)();
    *(v3 + 56) = MEMORY[0x277D837D0];
    *(v3 + 32) = 0;
    *(v3 + 40) = 0xE000000000000000;

    print(_:separator:terminator:)();

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t Tree.parent.willset(uint64_t result, char a2)
{
  if ((*(v2 + 56) & 1) == 0 && (a2 & 1) == 0 && *(v2 + 48) != result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_26C328DC0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport7TreeRefVSgMd, &_s21SwiftUITracingSupport7TreeRefVSgMR);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x26D69CDB0](540877088, 0xE400000000000000);
    _print_unlocked<A, B>(_:_:)();
    *(v3 + 56) = MEMORY[0x277D837D0];
    *(v3 + 32) = 0;
    *(v3 + 40) = 0xE000000000000000;

    print(_:separator:terminator:)();

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void (*Tree.parent.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  *a1 = v3;
  *(v3 + 48) = v1;
  v4 = *(v1 + 48);
  *(v3 + 56) = v4;
  v5 = *(v1 + 56);
  *(v3 + 16) = v4;
  *(v3 + 25) = v5;
  *(v3 + 24) = v5;
  return Tree.parent.modify;
}

void Tree.parent.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 16);
  v4 = *(*a1 + 24);
  if (a2)
  {
    v5 = v2[6];
    Tree.parent.willset(*(*a1 + 16), v4);
  }

  else
  {
    if (((*(v2 + 25) | v4) & 1) == 0)
    {
      v6 = v2[7];
      if (v6 != v3)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
        v7 = swift_allocObject();
        *(v7 + 16) = xmmword_26C328DC0;
        *v2 = 0;
        v2[1] = 0xE000000000000000;
        v2[4] = v6;
        *(v2 + 40) = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport7TreeRefVSgMd, &_s21SwiftUITracingSupport7TreeRefVSgMR);
        _print_unlocked<A, B>(_:_:)();
        MEMORY[0x26D69CDB0](540877088, 0xE400000000000000);
        v2[4] = v3;
        *(v2 + 40) = 0;
        _print_unlocked<A, B>(_:_:)();
        v9 = *v2;
        v8 = v2[1];
        *(v7 + 56) = MEMORY[0x277D837D0];
        *(v7 + 32) = v9;
        *(v7 + 40) = v8;

        print(_:separator:terminator:)();

        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return;
      }
    }

    v5 = v2[6];
  }

  *(v5 + 48) = v3;
  *(v5 + 56) = v4;

  free(v2);
}

uint64_t Tree.children.getter()
{
  result = *(v0 + 64);
  v2 = *(v0 + 72);
  return result;
}

uint64_t Tree.children.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 64) = result;
  *(v2 + 72) = a2;
  return result;
}

uint64_t Tree.bodyAttribute.setter(uint64_t result)
{
  *(v1 + 80) = result;
  *(v1 + 84) = BYTE4(result) & 1;
  return result;
}

uint64_t Tree.subgraph.setter(uint64_t result)
{
  *(v1 + 112) = result;
  *(v1 + 116) = BYTE4(result) & 1;
  return result;
}

uint64_t Tree.values.getter()
{
  result = *(v0 + 120);
  v2 = *(v0 + 128);
  return result;
}

uint64_t Tree.values.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 120) = result;
  *(v2 + 128) = a2;
  return result;
}

void Tree.viewValue.getter(void *a1@<X8>)
{
  v2 = *(v1 + 120);
  v3 = *(v1 + 132) + 1;
  v4 = v2 - 40;
  do
  {
    if (!--v3)
    {
      *a1 = 0;
      a1[1] = 0;
      a1[3] = 0;
      a1[4] = 0;
      a1[2] = 1;
      return;
    }

    if (!v2)
    {
      __break(1u);
      return;
    }

    v5 = (v4 + 40);
    v6 = *(v4 + 76);
    v4 += 40;
  }

  while ((v6 & 0x20) == 0);
  v7 = *v5;
  v9 = *(v5 + 1);
  v8 = *(v5 + 2);
  v10 = v5[6];
  v11 = *(v5 + 28);
  v12 = v5[8];
  v13 = v11 == 0;
  v14 = 0x100000000;
  if (v13)
  {
    v14 = 0;
  }

  *a1 = v7;
  a1[1] = v9;
  a1[2] = v8;
  a1[3] = v14 | v10;
  a1[4] = v12 | (v6 << 32);
}

uint64_t Tree.abstract.getter()
{
  result = *(v0 + 136);
  v2 = *(v0 + 144);
  return result;
}

uint64_t Tree.abstract.setter(uint64_t result, char a2)
{
  *(v2 + 136) = result;
  *(v2 + 144) = a2 & 1;
  return result;
}

uint64_t Tree.abstraction.getter()
{
  result = *(v0 + 152);
  v2 = *(v0 + 160);
  return result;
}

uint64_t Tree.abstraction.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 152) = result;
  *(v2 + 160) = a2;
  return result;
}

uint64_t Tree.source.getter()
{
  result = *(v0 + 168);
  v2 = *(v0 + 176);
  return result;
}

uint64_t Tree.source.setter(uint64_t result, char a2)
{
  *(v2 + 168) = result;
  *(v2 + 176) = a2 & 1;
  return result;
}

uint64_t Tree.hidden.getter()
{
  result = *(v0 + 184);
  v2 = *(v0 + 192);
  return result;
}

uint64_t Tree.hidden.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 184) = result;
  *(v2 + 192) = a2;
  return result;
}

uint64_t key path getter for Tree.cache : Tree@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 200);
  if (v2)
  {
    v3 = *v2;
    v4 = *(v2 + 4);
    v13 = *(v2 + 5);
    v14 = *(v2 + 7);
    v5 = *(v2 + 1);
    v6 = *(v2 + 8);
    v7 = *(v2 + 18);
    v11 = *(v2 + 19);
    v12 = *(v2 + 23);
    v8 = *(v2 + 3);
    v9 = *(v2 + 32);
    v10 = *(v2 + 33);
  }

  else
  {
    v3 = 0;
    v5 = 0;
    v6 = 0;
    v8 = 0;
    v4 = 1;
    v10 = 2;
    v7 = 1;
    v9 = 1;
  }

  *a2 = v3;
  *(a2 + 4) = v4;
  *(a2 + 5) = v13;
  *(a2 + 7) = v14;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 18) = v7;
  *(a2 + 19) = v11;
  *(a2 + 23) = v12;
  *(a2 + 24) = v8;
  *(a2 + 32) = v9;
  *(a2 + 33) = v10;
  return result;
}

void (*Tree.cache.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 200);
  *(v3 + 40) = v4;
  if (v4)
  {
    v5 = *v4;
    v6 = v4[1];
    *(v3 + 32) = *(v4 + 16);
    *v3 = v5;
    *(v3 + 16) = v6;
    return Tree.cache.modify;
  }

  else
  {
    *v3 = 0;
    *(v3 + 4) = 1;
    *(v3 + 8) = 0;
    *(v3 + 16) = 0;
    *(v3 + 18) = 1;
    *(v3 + 24) = 0;
    *(v3 + 32) = 513;
    return Snapshot.subscript.read;
  }
}

__n128 Tree.cache.modify(void **a1)
{
  v1 = *a1;
  v2 = v1[5];
  v3 = *(v1 + 16);
  v4 = *(v1 + 1);
  *v2 = *v1;
  *(v2 + 16) = v4;
  *(v2 + 32) = v3;
  free(v1);
  return result;
}

uint64_t static Tree.Pattern.type(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (one-time initialization token for currentIdx != -1)
  {
    swift_once();
  }

  v6 = atomic_fetch_add_explicit(static PType.Pattern.currentIdx, 1u, memory_order_relaxed) + 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C328DC0;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  result = PType.Pattern.IsA.init(_:genericParams:)(inited, 0, &v10);
  v9 = v10;
  *a3 = v6;
  *(a3 + 8) = v9;
  *(a3 + 16) = 0;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Tree.CacheKey()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  Hasher.init(_seed:)();
  if (v2)
  {
    MEMORY[0x26D69DBC0](1);
  }

  else
  {
    MEMORY[0x26D69DBC0](0);
    Hasher._combine(_:)(v1);
  }

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance Tree.CacheKey()
{
  if (*(v0 + 4))
  {
    MEMORY[0x26D69DBC0](1);
  }

  else
  {
    v1 = *v0;
    MEMORY[0x26D69DBC0](0);
    Hasher._combine(_:)(v1);
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Tree.CacheKey()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  Hasher.init(_seed:)();
  if (v2)
  {
    MEMORY[0x26D69DBC0](1);
  }

  else
  {
    MEMORY[0x26D69DBC0](0);
    Hasher._combine(_:)(v1);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Tree.CacheKey(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 4);
  result = *(a2 + 4);
  if ((v3 & 1) == 0)
  {
    return (*a1 == *a2) & ~result;
  }

  return result;
}

uint64_t one-time initialization function for swiftUIPatterns()
{
  result = closure #1 in variable initialization expression of static Tree.Position.swiftUIPatterns();
  static Tree.Position.swiftUIPatterns = result;
  return result;
}

uint64_t closure #1 in variable initialization expression of static Tree.Position.swiftUIPatterns()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo19NSRegularExpressionC_21SwiftUITracingSupport4TreeV8PositionOtGMd, &_ss23_ContiguousArrayStorageCySo19NSRegularExpressionC_21SwiftUITracingSupport4TreeV8PositionOtGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_26C32E0A0;
  v1 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  *(v0 + 32) = @nonobjc NSRegularExpression.init(pattern:options:)(0x6C616E6F6974704FLL, 0xE800000000000000, 0);
  *(v0 + 40) = 2;
  v2 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  *(v0 + 48) = @nonobjc NSRegularExpression.init(pattern:options:)(0x7265696669646F4DLL, 0xE800000000000000, 0);
  *(v0 + 56) = 0;
  v3 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  *(v0 + 64) = @nonobjc NSRegularExpression.init(pattern:options:)(0xD000000000000013, 0x800000026C33C390, 0);
  *(v0 + 72) = 2;
  v4 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  *(v0 + 80) = @nonobjc NSRegularExpression.init(pattern:options:)(0x696461697261565FLL, 0xED00007765695663, 0);
  *(v0 + 88) = 4;
  v5 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  *(v0 + 96) = @nonobjc NSRegularExpression.init(pattern:options:)(0x656956656C707554, 0xE900000000000077, 0);
  *(v0 + 104) = 4;
  v6 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  *(v0 + 112) = @nonobjc NSRegularExpression.init(pattern:options:)(0x73694C776569565FLL, 0xEE00776569565F74, 0);
  *(v0 + 120) = 4;
  v7 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  *(v0 + 128) = @nonobjc NSRegularExpression.init(pattern:options:)(0xD000000000000012, 0x800000026C33C3B0, 0);
  *(v0 + 136) = 4;
  v8 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  *(v0 + 144) = @nonobjc NSRegularExpression.init(pattern:options:)(0xD000000000000013, 0x800000026C33C390, 0);
  *(v0 + 152) = 2;
  v9 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  *(v0 + 160) = @nonobjc NSRegularExpression.init(pattern:options:)(0x72657265646E6552, 0xEE00746365666645, 0);
  *(v0 + 168) = 0;
  v10 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  *(v0 + 176) = @nonobjc NSRegularExpression.init(pattern:options:)(0xD000000000000010, 0x800000026C33C3D0, 0);
  *(v0 + 184) = 0;
  v11 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  *(v0 + 192) = @nonobjc NSRegularExpression.init(pattern:options:)(0x74756F79614CLL, 0xE600000000000000, 0);
  *(v0 + 200) = 0;
  v12 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  *(v0 + 208) = @nonobjc NSRegularExpression.init(pattern:options:)(0x776569564449, 0xE600000000000000, 0);
  *(v0 + 216) = 0;
  v13 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  *(v0 + 224) = @nonobjc NSRegularExpression.init(pattern:options:)(0x5A2D417A2D615B5FLL, 0xE90000000000005DLL, 0);
  *(v0 + 232) = 1;
  return v0;
}

void Tree.Position.init(matching:within:)(uint64_t a1@<X0>, uint64_t *a2@<X1>, char *a3@<X8>)
{
  v5 = *(a1 + 88);
  if (*(a1 + 116) == 1)
  {
    v6 = *(a1 + 104) == 0;
    *(a1 + 104);
  }

  else
  {
    v6 = 1;
  }

  if (!v6 && v5 != -1)
  {
    v9 = a2[4];
    if (*(v9 + 16) <= v5)
    {
LABEL_54:
      __break(1u);
    }

    else
    {
      v10 = *(a2 + 3);
      v11 = v9 + 32;
      v12 = *(v9 + 32 + 4 * v5);
      if (v12 < v10)
      {
        v13 = *a2;
        if (*a2)
        {
          v14 = (v13 + 120 * v12);
          if (*(v14 + 32) != 1)
          {
            i = 5;
            goto LABEL_45;
          }

          v43 = *a2;
          v44 = a2[4];
          v40 = a3;
          v41 = v9 + 32;
          v42 = *(a2 + 3);
          v4 = *v14;
          v3 = v14[1];
          v15 = v14[8];
          v16 = *(a2 + 10);
          v17 = a2[7];
          v18 = a2[8];
          v19 = a2[9];
          v20 = a2[11];

          v21 = v18(v16, v15);
          v23 = v22;

          v24 = v21 == 0x49557466697753 && v23 == 0xE700000000000000;
          if (v24 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v21 == 0xD000000000000012 ? (v25 = 0x800000026C33B970 == v23) : (v25 = 0), v25 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v21 == 0x7475626972747441 ? (v26 = v23 == 0xEE00687061724765) : (v26 = 0), v26 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v21 == 0x4349557466697753 ? (v27 = v23 == 0xEB0000000065726FLL) : (v27 = 0), v27))))
          {
          }

          else
          {
            v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v28 & 1) == 0)
            {
              for (i = 5; ; i = 1)
              {

                a3 = v40;
                v11 = v41;
                v13 = v43;
                v9 = v44;
                v10 = v42;
LABEL_45:
                if (*(v9 + 16) <= v5)
                {
LABEL_56:
                  __break(1u);
                }

                else
                {
                  v36 = *(v11 + 4 * v5);
                  if (v36 < v10)
                  {
                    v37 = v13 + 120 * v36;
                    if (*(v37 + 117) == 6)
                    {
                      *(v37 + 117) = 7;
                    }

                    goto LABEL_52;
                  }
                }

                __break(1u);
LABEL_58:
                swift_once();
LABEL_38:
                v29 = static Tree.Position.swiftUIPatterns;
                v30 = *(static Tree.Position.swiftUIPatterns + 16);
                if (v30)
                {
                  break;
                }

LABEL_43:
                v5 = v39;
              }

              v31 = 0;
              v32 = (static Tree.Position.swiftUIPatterns + 40);
              while (1)
              {
                if (v31 >= *(v29 + 16))
                {
                  __break(1u);
                  goto LABEL_54;
                }

                i = *v32;
                v33 = *(v32 - 1);
                v34 = MEMORY[0x26D69CC20](v4, v3);
                v35 = [v33 firstMatchInString:v34 options:0 range:{0, String.count.getter()}];

                if (v35)
                {
                  break;
                }

                ++v31;
                v32 += 16;
                if (v30 == v31)
                {
                  goto LABEL_43;
                }
              }

              if (*(v44 + 16) <= v39)
              {
                __break(1u);
              }

              else
              {
                v38 = *(v41 + 4 * v39);
                if (v38 < v42)
                {
                  *(v43 + 120 * v38 + 117) = i;

                  a3 = v40;
                  goto LABEL_52;
                }
              }

              __break(1u);
              goto LABEL_61;
            }
          }

          v39 = v5;
          if (one-time initialization token for swiftUIPatterns != -1)
          {
            goto LABEL_58;
          }

          goto LABEL_38;
        }

LABEL_61:
        __break(1u);
        return;
      }
    }

    __break(1u);
    goto LABEL_56;
  }

  i = 3;
LABEL_52:
  *a3 = i;
}

unint64_t Tree.bodyAttribute(within:)(unint64_t result)
{
  v2 = *(v1 + 104);
  v3 = *(v1 + 184);
  if (!*(v1 + 196))
  {
LABEL_4:
    if (HIDWORD(v2) < *(result + 124))
    {
      v4 = *(result + 112);
      if (!v4)
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      if ((v2 & 0x80000000) != 0)
      {
        goto LABEL_29;
      }

      v5 = *(v4 + 168 * HIDWORD(v2));
      if (v2 >= *(v5 + 16))
      {
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      v6 = v5 + 208 * v2;
      v7 = *(v6 + 152);
      v8 = *(v6 + 164);
      if (!v8)
      {
LABEL_23:
        v9 = 0;
        v15 = 1;
        return v9 | (v15 << 32);
      }

      if (!v7)
      {
        goto LABEL_32;
      }

      if ((v7[9] & 1) == 0)
      {
LABEL_14:
        v11 = v7 + 19;
        for (i = 1; v8 != i; ++i)
        {
          if (i >= v8)
          {
            __break(1u);
            goto LABEL_27;
          }

          if (*v11)
          {
            v13 = *(v11 - 9);
            if (v13 >= *(result + 84))
            {
              goto LABEL_27;
            }

            v14 = *(result + 72);
            if (!v14)
            {
              goto LABEL_31;
            }

            if ((*(v14 + 312 * v13 + 220) & 2) != 0)
            {
              v15 = 0;
              v9 = *(v11 - 9);
              return v9 | (v15 << 32);
            }
          }

          v11 += 40;
        }

        goto LABEL_23;
      }

      v9 = *v7;
      if (*v7 < *(result + 84))
      {
        v10 = *(result + 72);
        if (v10)
        {
          if ((*(v10 + 312 * v9 + 220) & 2) != 0)
          {
            v15 = 0;
            return v9 | (v15 << 32);
          }

          goto LABEL_14;
        }

        goto LABEL_31;
      }

LABEL_27:
      __break(1u);
    }

    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v3)
  {
    v2 = *v3;
    goto LABEL_4;
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t Tree.summarizedSelfWeight(within:)(uint64_t a1)
{
  v3 = 0;
  result = 0;
  v5 = *v1;
  v6 = v1[8];
  v7 = *(v1 + 19);
  while (v7 != v3)
  {
    if (v3 >= v7)
    {
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

    if (!v6)
    {
      goto LABEL_20;
    }

    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_15;
    }

    v9 = *(v6 + 8 * v3);
    if (HIDWORD(v9) >= *(a1 + 124))
    {
      goto LABEL_16;
    }

    v10 = *(a1 + 112);
    if (!v10)
    {
      goto LABEL_21;
    }

    if ((v9 & 0x80000000) != 0)
    {
      goto LABEL_17;
    }

    v11 = *(v10 + 168 * HIDWORD(v9));
    if (v9 >= *(v11 + 16))
    {
      goto LABEL_18;
    }

    v12 = v11 + 32;
    ++v3;
    if (*(v12 + 208 * v9 + 117) != 5)
    {
      v13 = (v12 + 208 * v9);
      v25 = v13[10];
      v26 = v13[11];
      v27 = v13[12];
      v21 = v13[6];
      v22 = v13[7];
      v23 = v13[8];
      v24 = v13[9];
      v17 = v13[2];
      v18 = v13[3];
      v19 = v13[4];
      v20 = v13[5];
      v15 = *v13;
      v16 = v13[1];
      result = Tree.summarizedSelfWeight(within:)(a1);
      v3 = v8;
    }
  }

  v14 = __OFADD__(result, v5);
  result += v5;
  if (!v14)
  {
    return result;
  }

LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t Tree.viewBody(within:)()
{
  if (!*(v0 + 76))
  {
    return 0;
  }

  v1 = *(v0 + 64);
  if (v1)
  {
    return *v1;
  }

  __break(1u);
  return result;
}

void *Tree.ValueIterator.next()@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v4 = v2 + *(result + 10);
  if (*(v4 + 24))
  {
    v5 = result[2];
    v6 = result[3];
    v7 = dispatch thunk of IteratorProtocol.next()();
    MEMORY[0x28223BE20](v7);
    v19[2] = v5;
    v19[3] = v6;
    v19[4] = v2;
    result = _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF21SwiftUITracingSupport7TreeRefV_s5NeverOs16IndexingIteratorVyAD11UnsafeArrayVyAD0F5ValueVGGTg5(partial apply for closure #1 in Tree.ValueIterator.next(), v19, v8, v9);
    *v4 = result;
    *(v4 + 8) = v10;
    *(v4 + 16) = v11;
    *(v4 + 24) = v12 & 1;
    if (v12)
    {
LABEL_6:
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 24) = 0;
      *(a2 + 32) = 0;
      *(a2 + 16) = 1;
      return result;
    }

    v13 = HIDWORD(v10);
  }

  else
  {
    LODWORD(v13) = *(v4 + 12);
    v11 = *(v4 + 16);
  }

  if (v11 == v13)
  {
    goto LABEL_6;
  }

  if (v11 >= v13)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (!*v4)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v14 = *v4 + 40 * v11;
  v16 = *(v14 + 8);
  v15 = *(v14 + 16);
  v17 = *(v14 + 24);
  v18 = *(v14 + 28);
  *a2 = *v14;
  *(a2 + 8) = v16;
  *(a2 + 16) = v15;
  *(a2 + 24) = v17;
  *(a2 + 28) = v18;
  *(a2 + 32) = *(v14 + 32);
  *(v4 + 16) = v11 + 1;
}

uint64_t closure #1 in Tree.ValueIterator.next()@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  result = type metadata accessor for Tree.ValueIterator();
  v7 = *(a2 + *(result + 36));
  if (HIDWORD(v5) >= *(v7 + 124))
  {
    __break(1u);
    goto LABEL_7;
  }

  v8 = *(v7 + 112);
  if (v8)
  {
    if ((v5 & 0x80000000) == 0)
    {
      v9 = *(v8 + 168 * HIDWORD(v5));
      if (v5 < *(v9 + 16))
      {
        v10 = v9 + 208 * v5;
        *a3 = *(v10 + 152);
        a3[1] = *(v10 + 160);
        a3[2] = 0;
        return result;
      }

      goto LABEL_8;
    }

LABEL_7:
    __break(1u);
LABEL_8:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t Tree.AttributeIterator.next()@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  while (1)
  {
    dispatch thunk of IteratorProtocol.next()();
    result = v8;
    v6 = v10;
    v7 = v11;
    if (v10 == 1)
    {
      v6 = 1;
      goto LABEL_7;
    }

    if ((v12 & 0x100000000) != 0)
    {
      break;
    }

    outlined consume of TreeValue?(v8, v9, v10);
  }

  result = v8;
  v7 = v11 & 0x1FFFFFFFFLL;
LABEL_7:
  *a2 = result;
  a2[1] = v9;
  a2[2] = v6;
  a2[3] = v7;
  a2[4] = v12;
  return result;
}

uint64_t Tree.attributes(within:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 104);
  v4 = *(v2 + 184);
  v5 = *(v2 + 192);
  v6 = *(v2 + 196);
  if (v6)
  {
    v3 = 0;
  }

  *a2 = v3;
  *(a2 + 8) = v6 != 0;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 28) = v6;
  *(a2 + 32) = 0;
  *(a2 + 40) = result;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 48) = 0;
  *(a2 + 72) = 1;
  return result;
}

BOOL _s21SwiftUITracingSupport5PTypeV6ParserV5FlagsVs10SetAlgebraAAsAHP6insertySb8inserted_7ElementQz17memberAfterInserttAMnFTW_0(_BYTE *a1, unsigned __int8 *a2)
{
  v3 = *a2;
  v4 = *v2;
  if ((v4 & v3) != v3)
  {
    *v2 = v4 | v3;
  }

  *a1 = v3;
  return (v4 & v3) != v3;
}

unsigned __int8 *_s21SwiftUITracingSupport5PTypeV6ParserV5FlagsVs10SetAlgebraAAsAHP6removey7ElementQzSgALFTW_0@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  v5 = v4 & v3;
  if ((v4 & v3) != 0)
  {
    *v2 = v4 & ~v3;
  }

  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
}

unsigned __int8 *_s21SwiftUITracingSupport5PTypeV6ParserV5FlagsVs10SetAlgebraAAsAHP6update4with7ElementQzSgAMn_tFTW_0@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 = v4 | v3;
  v5 = v4 & v3;
  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
}

uint64_t Tree._childNodes(_:within:during:unabstracting:)(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = 0;
  v8 = *(v5 + 64);
  v9 = *(v5 + 76);
  v10 = MEMORY[0x277D84F90];
  v11 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v9 == v7)
    {
      if ((a1 & 4) != 0)
      {
        return v11;
      }

      v92 = v10;
      v19 = v11[2];
      if (v19)
      {
        v20 = 0;
        v8 = v11 + 4;
        while (v20 < v11[2])
        {
          v22 = v8[v20];
          v23 = *a2;
          if (HIDWORD(v22) >= *(*a2 + 124))
          {
            goto LABEL_64;
          }

          v24 = *(v23 + 112);
          if (!v24)
          {
            goto LABEL_77;
          }

          if ((v22 & 0x80000000) != 0)
          {
            goto LABEL_65;
          }

          v25 = *(v24 + 168 * HIDWORD(v22));
          if (v22 >= *(v25 + 16))
          {
            goto LABEL_66;
          }

          v26 = (v25 + 208 * v22);
          v27 = v26[13];
          v89 = v26[12];
          v90 = v27;
          v91 = v26[14];
          v28 = v26[9];
          v85 = v26[8];
          v86 = v28;
          v29 = v26[11];
          v87 = v26[10];
          v88 = v29;
          v30 = v26[5];
          v81 = v26[4];
          v82 = v30;
          v31 = v26[7];
          v83 = v26[6];
          v84 = v31;
          v32 = v26[3];
          v79 = v26[2];
          v80 = v32;
          if (Tree.hasOwnAttributes(within:)(v23))
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport7TreeRefVGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport7TreeRefVGMR);
            v21 = swift_allocObject();
            *(v21 + 16) = xmmword_26C328DC0;
            *(v21 + 32) = v22;
          }

          else
          {
            if (HIDWORD(v22) >= *(v23 + 124))
            {
              goto LABEL_67;
            }

            v33 = *(v23 + 112);
            if (!v33)
            {
              goto LABEL_78;
            }

            v34 = *(v33 + 168 * HIDWORD(v22));
            if (v22 >= *(v34 + 16))
            {
              goto LABEL_68;
            }

            v35 = (v34 + 208 * v22);
            v36 = v35[13];
            v89 = v35[12];
            v90 = v36;
            v91 = v35[14];
            v37 = v35[9];
            v85 = v35[8];
            v86 = v37;
            v38 = v35[11];
            v87 = v35[10];
            v88 = v38;
            v39 = v35[5];
            v81 = v35[4];
            v82 = v39;
            v40 = v35[7];
            v83 = v35[6];
            v84 = v40;
            v41 = v35[3];
            v79 = v35[2];
            v80 = v41;
            v78 = v23;
            v21 = Tree._childNodes(_:within:during:unabstracting:)(a1, &v78);
          }

          ++v20;
          specialized Array.append<A>(contentsOf:)(v21);
          if (v19 == v20)
          {
            v10 = v92;
            goto LABEL_32;
          }
        }

        goto LABEL_63;
      }

LABEL_32:

      if ((a1 & 0x10) != 0)
      {
        v49 = *(v10 + 2);
        if (v49)
        {
          v50 = 0;
          v51 = a5 + 56;
          while (v50 < *(v10 + 2))
          {
            v52 = v10 + 32;
            v8 = a5;
            if (*(a5 + 16) && (v53 = *&v52[8 * v50], v54 = *(a5 + 40), Hasher.init(_seed:)(), MEMORY[0x26D69DC00](v53), v55 = Hasher._finalize()(), v56 = -1 << *(a5 + 32), v57 = v55 & ~v56, ((*(v51 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57) & 1) != 0))
            {
              v58 = ~v56;
              while (*(*(a5 + 48) + 8 * v57) != v53)
              {
                v57 = (v57 + 1) & v58;
                if (((*(v51 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57) & 1) == 0)
                {
                  goto LABEL_43;
                }
              }
            }

            else
            {
LABEL_43:
              if (v50 >= *(v10 + 2))
              {
                goto LABEL_70;
              }

              v59 = *&v52[8 * v50];
              if (HIDWORD(v59) >= *(*a2 + 124))
              {
                goto LABEL_71;
              }

              v60 = *(*a2 + 112);
              if (!v60)
              {
                goto LABEL_79;
              }

              if ((v59 & 0x80000000) != 0)
              {
                goto LABEL_72;
              }

              v61 = *(v60 + 168 * HIDWORD(v59));
              if (v59 >= *(v61 + 16))
              {
                goto LABEL_73;
              }

              v62 = (v61 + 208 * v59);
              v63 = v62[13];
              v89 = v62[12];
              v90 = v63;
              v91 = v62[14];
              v64 = v62[9];
              v85 = v62[8];
              v86 = v64;
              v65 = v62[11];
              v87 = v62[10];
              v88 = v65;
              v66 = v62[5];
              v81 = v62[4];
              v82 = v66;
              v67 = v62[7];
              v83 = v62[6];
              v84 = v67;
              v68 = v62[3];
              v79 = v62[2];
              v80 = v68;
              v69 = Tree.resolvedSelf(within:)(a2, v42, v43, v44, v45, v46, v47, v48);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
              }

              if (v50 >= *(v10 + 2))
              {
                goto LABEL_74;
              }

              *&v10[8 * v50 + 32] = v69;
            }

            if (++v50 == v49)
            {
              goto LABEL_52;
            }
          }

          goto LABEL_69;
        }
      }

LABEL_52:

      v71 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC21SwiftUITracingSupport7TreeRefV_SayAFGTt0g5Tf4g_n(v70);

      v72 = *(v71 + 16);
      if (v72)
      {
        v73 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC21SwiftUITracingSupport7TreeRefV_Tt1g5(*(v71 + 16), 0);
        v74 = specialized Sequence._copySequenceContents(initializing:)(&v79, v73 + 4, v72, v71);
        outlined consume of Set<AGSubgraphRef>.Iterator._Variant();
        if (v74 == v72)
        {
LABEL_56:
          *&v79 = v73;

          specialized MutableCollection<>.sort(by:)(&v79);

          return v79;
        }

        __break(1u);
      }

      v73 = MEMORY[0x277D84F90];
      goto LABEL_56;
    }

    if (v7 >= v9)
    {
      break;
    }

    if (!v8)
    {
      goto LABEL_75;
    }

    v12 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      goto LABEL_59;
    }

    v13 = v8[v7];
    if (HIDWORD(v13) >= *(*a2 + 124))
    {
      goto LABEL_60;
    }

    v14 = *(*a2 + 112);
    if (!v14)
    {
      goto LABEL_76;
    }

    if ((v13 & 0x80000000) != 0)
    {
      goto LABEL_61;
    }

    v15 = *(v14 + 168 * HIDWORD(v13));
    if (v13 >= *(v15 + 16))
    {
      goto LABEL_62;
    }

    ++v7;
    if (*(v15 + 208 * v13 + 208) == 1)
    {
      *&v79 = v11;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11[2] + 1, 1);
        v11 = v79;
      }

      v17 = v11[2];
      v16 = v11[3];
      v18 = v17 + 1;
      if (v17 >= v16 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1);
        v18 = v17 + 1;
        v11 = v79;
      }

      v11[2] = v18;
      v11[v17 + 4] = v13;
      v7 = v12;
    }
  }

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
LABEL_65:
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

  __break(1u);
  return result;
}