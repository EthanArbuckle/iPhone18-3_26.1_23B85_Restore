uint64_t _stringCompare(_:_:expecting:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, int a5)
{
  if (a1 == a3 && a2 == a4)
  {
    return (a5 ^ 1) & 1;
  }

  if ((~a2 & 0x6000000000000000) != 0 || (a4 & 0x6000000000000000) != 0x6000000000000000)
  {
    return _stringCompareInternal(_:_:expecting:)(a1, a2, a3, a4, a5 & 1);
  }

  v6 = (bswap64(a1) < bswap64(a3)) & a5;
  v7 = a2 == a4;
  v8 = bswap64(a2) < bswap64(a4);
  if (a5)
  {
    v7 = v8;
  }

  if (a1 == a3)
  {
    v6 = v7;
  }

  return v6 & 1;
}

uint64_t protocol witness for static Comparable.< infix(_:_:) in conformance Character(unint64_t *a1, unint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  if (v4 == *a2 && v5 == v7)
  {
    return 0;
  }

  if ((~v5 & 0x6000000000000000) != 0 || (v7 & 0x6000000000000000) != 0x6000000000000000)
  {
    return _stringCompareInternal(_:_:expecting:)(v4, v5, v6, v7, 1);
  }

  v11 = bswap64(v4) < bswap64(v6);
  v12 = bswap64(v5) < bswap64(v7);
  if (v4 == v6)
  {
    return v12;
  }

  else
  {
    return v11;
  }
}

BOOL protocol witness for static Comparable.<= infix(_:_:) in conformance Character(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if (v4 == v2 && v5 == v3)
  {
    v8 = 0;
  }

  else if ((~v5 & 0x6000000000000000) == 0 && (v3 & 0x6000000000000000) == 0x6000000000000000)
  {
    v9 = bswap64(v4) < bswap64(v2);
    v10 = bswap64(v5) < bswap64(v3);
    if (v4 == v2)
    {
      v8 = v10;
    }

    else
    {
      v8 = v9;
    }
  }

  else
  {
    v8 = _stringCompareInternal(_:_:expecting:)(v4, v5, v2, v3, 1);
  }

  return (v8 & 1) == 0;
}

BOOL protocol witness for static Comparable.>= infix(_:_:) in conformance Character(unint64_t *a1, unint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  if (v4 == *a2 && v5 == v7)
  {
    v10 = 0;
  }

  else if ((~v5 & 0x6000000000000000) == 0 && (v7 & 0x6000000000000000) == 0x6000000000000000)
  {
    v11 = bswap64(v4) < bswap64(v6);
    v12 = bswap64(v5) < bswap64(v7);
    if (v4 == v6)
    {
      v10 = v12;
    }

    else
    {
      v10 = v11;
    }
  }

  else
  {
    v10 = _stringCompareInternal(_:_:expecting:)(v4, v5, v6, v7, 1);
  }

  return (v10 & 1) == 0;
}

uint64_t protocol witness for static Comparable.> infix(_:_:) in conformance Character(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if (v4 == v2 && v5 == v3)
  {
    return 0;
  }

  if ((~v5 & 0x6000000000000000) != 0 || (v3 & 0x6000000000000000) != 0x6000000000000000)
  {
    return _stringCompareInternal(_:_:expecting:)(v4, v5, v2, v3, 1);
  }

  v9 = bswap64(v4) < bswap64(v2);
  v10 = bswap64(v5) < bswap64(v3);
  if (v4 == v2)
  {
    return v10;
  }

  else
  {
    return v9;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Substring(unint64_t *a1, void *a2)
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
    return 1;
  }

  else
  {
    return _stringCompareInternal(_:_:_:_:expecting:)(v6, v7, v10, v11, v8, v9, v12, v13, 0) & 1;
  }
}

uint64_t static _StringComparisonResult.== infix(_:_:)(char a1, char a2)
{
  if (a1)
  {
    if ((a2 & 1) == 0)
    {
      return 0;
    }
  }

  else if (a2)
  {
    return 0;
  }

  return 1;
}

uint64_t _stringCompareWithSmolCheck(_:_:expecting:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unsigned __int8 a5)
{
  if ((~a2 & 0x6000000000000000) != 0 || (~a4 & 0x6000000000000000) != 0)
  {
    return _stringCompareInternal(_:_:expecting:)(a1, a2, a3, a4, a5 & 1);
  }

  v7 = bswap64(a2) < bswap64(a4);
  if ((a5 & 1) == 0)
  {
    v7 = a2 == a4;
  }

  v8 = a5 & (bswap64(a1) < bswap64(a3));
  if (a1 == a3)
  {
    return v7;
  }

  else
  {
    return v8;
  }
}

uint64_t _stringCompareInternal(_:_:expecting:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, char a5)
{
  if ((a2 & 0x1000000000000000) == 0 && (a4 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = a1;
    }

    if ((v6 & 0x4000000000000000) != 0)
    {
      v8 = a4 & 0x2000000000000000;
      if ((a4 & 0x2000000000000000) != 0)
      {
        v9 = a4;
      }

      else
      {
        v9 = a3;
      }

      v7 = (v9 >> 62) & 1;
      if ((a2 & 0x2000000000000000) != 0)
      {
LABEL_20:
        v16 = HIBYTE(a2) & 0xF;
        __s1 = a1;
        v53 = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v8)
        {
          v17 = HIBYTE(a4) & 0xF;
          __s2[0] = a3;
          __s2[1] = a4 & 0xFFFFFFFFFFFFFFLL;
          if ((v7 & 1) == 0)
          {
            v37 = _stringCompareFastUTF8Abnormal(_:_:expecting:)(&__s1, HIBYTE(a2) & 0xF, __s2, HIBYTE(a4) & 0xF, a5 & 1);
            return v37 & 1;
          }

          v18 = v16 - v17;
          if (v16 == v17 || (a5 & 1) != 0)
          {
            if (v17 >= v16)
            {
              v19 = HIBYTE(a2) & 0xF;
            }

            else
            {
              v19 = HIBYTE(a4) & 0xF;
            }

            v20 = a5;
            v21 = _swift_stdlib_memcmp(&__s1, __s2, v19);
            v22 = v21;
            if (!v21)
            {
              v22 = v18;
            }

            v25 = v22 == 0;
            v23 = v22 < 0;
            v24 = v25;
            v25 = (v20 & 1) == 0;
LABEL_63:
            if (v25)
            {
              v37 = v24;
            }

            else
            {
              v37 = v23;
            }

            return v37 & 1;
          }

          goto LABEL_53;
        }

        if ((a3 & 0x1000000000000000) != 0)
        {
          v26 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v27 = a3 & 0xFFFFFFFFFFFFLL;
          if (v7)
          {
LABEL_35:
            if ((a5 & 1) != 0 || v16 == v27)
            {
              if (v27 >= v16)
              {
                v28 = v16;
              }

              else
              {
                v28 = v27;
              }

              v29 = a5;
              v30 = _swift_stdlib_memcmp(&__s1, v26, v28);
              v31 = v30;
              if (!v30)
              {
                v31 = v16 - v27;
              }

              v25 = v31 == 0;
              v23 = v31 < 0;
              v24 = v25;
              v25 = (v29 & 1) == 0;
              goto LABEL_63;
            }

            goto LABEL_53;
          }
        }

        else
        {
          v47 = a5;
          v48 = _StringObject.sharedUTF8.getter(a3, a4);
          a5 = v47;
          v27 = v49;
          v26 = v48;
          if (v7)
          {
            goto LABEL_35;
          }
        }

        v37 = _stringCompareFastUTF8Abnormal(_:_:expecting:)(&__s1, v16, v26, v27, a5 & 1);
        return v37 & 1;
      }
    }

    else
    {
      LODWORD(v7) = 0;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v8 = a4 & 0x2000000000000000;
        goto LABEL_20;
      }
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v10 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v11 = a1 & 0xFFFFFFFFFFFFLL;
      if ((a4 & 0x2000000000000000) == 0)
      {
LABEL_15:
        if ((a3 & 0x1000000000000000) != 0)
        {
          v12 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v13 = a3 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v43 = v10;
          v50 = v11;
          v44 = a5;
          v45 = _StringObject.sharedUTF8.getter(a3, a4);
          a5 = v44;
          v12 = v45;
          v10 = v43;
          v13 = v46;
          v11 = v50;
        }

        v14 = a5 & 1;

        return _stringCompareFastUTF8(_:_:expecting:bothNFC:)(v10, v11, v12, v13, v14, v7);
      }
    }

    else
    {
      v33 = a5;
      v34 = a3;
      v35 = a4;
      v10 = _StringObject.sharedUTF8.getter(a1, a2);
      a4 = v35;
      a3 = v34;
      a5 = v33;
      if ((v35 & 0x2000000000000000) == 0)
      {
        goto LABEL_15;
      }
    }

    v36 = HIBYTE(a4) & 0xF;
    __s1 = a3;
    v53 = a4 & 0xFFFFFFFFFFFFFFLL;
    if ((v7 & 1) == 0)
    {
      v37 = _stringCompareFastUTF8Abnormal(_:_:expecting:)(v10, v11, &__s1, HIBYTE(a4) & 0xF, a5 & 1);
      return v37 & 1;
    }

    if ((a5 & 1) != 0 || v11 == v36)
    {
      if (v36 >= v11)
      {
        v38 = v11;
      }

      else
      {
        v38 = HIBYTE(a4) & 0xF;
      }

      v39 = v11;
      v40 = a5;
      v41 = _swift_stdlib_memcmp(v10, &__s1, v38);
      v42 = v41;
      if (!v41)
      {
        v42 = v39 - v36;
      }

      v25 = v42 == 0;
      v23 = v42 < 0;
      v24 = v25;
      v25 = (v40 & 1) == 0;
      goto LABEL_63;
    }

LABEL_53:
    v37 = 0;
    return v37 & 1;
  }

  v32 = a5 & 1;

  return _stringCompareSlow(_:_:expecting:)(a1, a2, a3, a4, v32);
}

uint64_t _stringCompareSlow(_:_:expecting:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, char a5)
{
  if ((a4 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a4) & 0xF;
  }

  else
  {
    v6 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v7 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(a2) & 0xF;
  }

  return _StringGutsSlice.compare(with:expecting:)(a3, a4, 0, v6, a5 & 1, a1, a2, 0, v7) & 1;
}

uint64_t _stringCompareFastUTF8(_:_:expecting:bothNFC:)(void *a1, uint64_t a2, void *__s2, uint64_t a4, char a5, char a6)
{
  if (a6)
  {
    if ((a5 & 1) != 0 || a2 == a4)
    {
      if (a4 >= a2)
      {
        v8 = a2;
      }

      else
      {
        v8 = a4;
      }

      v11 = _swift_stdlib_memcmp(a1, __s2, v8);
      v12 = v11;
      if (!v11)
      {
        v12 = a2 - a4;
      }

      v13 = v12 == 0;
      v14 = v12 < 0;
      v15 = v13;
      if (a5)
      {
        return v14;
      }

      else
      {
        return v15;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v16 = a5 & 1;

    return _stringCompareFastUTF8Abnormal(_:_:expecting:)(a1, a2, __s2, a4, v16);
  }
}

uint64_t _stringCompareInternal(_:_:_:_:expecting:)(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if ((a2 & 0x1000000000000000) != 0 || (a6 & 0x1000000000000000) != 0)
  {
    v42 = _StringGutsSlice.compare(with:expecting:)(a5, a6, a7, a8, a9 & 1, a1, a2, a3, a4);
    return v42 & 1;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v13 = a2;
  }

  else
  {
    v13 = a1;
  }

  if ((v13 & 0x4000000000000000) == 0)
  {
    LODWORD(v14) = 0;
    if ((a2 & 0x2000000000000000) == 0)
    {
      goto LABEL_8;
    }

LABEL_22:
    v58 = a1;
    v59 = a2 & 0xFFFFFFFFFFFFFFLL;
    if (a3 < 0)
    {
      goto LABEL_77;
    }

    if ((HIBYTE(a2) & 0xF) < a4)
    {
      goto LABEL_77;
    }

    v27 = a4 - a3;
    if (a4 - a3 < 0)
    {
      goto LABEL_77;
    }

    if ((a6 & 0x2000000000000000) != 0)
    {
      v57[0] = a5;
      v57[1] = a6 & 0xFFFFFFFFFFFFFFLL;
      if (a7 < 0)
      {
        goto LABEL_77;
      }

      if ((HIBYTE(a6) & 0xF) < a8)
      {
        goto LABEL_77;
      }

      v40 = a8 - a7;
      if (a8 - a7 < 0)
      {
        goto LABEL_77;
      }

      if (!v14)
      {
        v42 = _stringCompareFastUTF8Abnormal(_:_:expecting:)(&v58 + a3, v27, v57 + a7, v40, a9 & 1);
        return v42 & 1;
      }

      v41 = v27 - v40;
      if (v27 == v40 || (a9 & 1) != 0)
      {
        if (v40 >= v27)
        {
          v43 = v27;
        }

        else
        {
          v43 = a8 - a7;
        }

        v44 = _swift_stdlib_memcmp(&v58 + a3, v57 + a7, v43);
        v36 = v44;
        if (!v44)
        {
          v36 = v41;
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((a5 & 0x1000000000000000) != 0)
      {
        v28 = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
        v29 = a5 & 0xFFFFFFFFFFFFLL;
        if (a7 < 0)
        {
          goto LABEL_77;
        }
      }

      else
      {
        v54 = a3;
        v55 = _StringObject.sharedUTF8.getter(a5, a6);
        a3 = v54;
        v28 = v55;
        v29 = v56;
        if (a7 < 0)
        {
          goto LABEL_77;
        }
      }

      if (v29 < a8)
      {
        goto LABEL_77;
      }

      v30 = a3;
      v32 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(a7, a8, v28, v29);
      if (!v14)
      {
        v42 = _stringCompareFastUTF8Abnormal(_:_:expecting:)(&v58 + v30, v27, v32, v31, a9 & 1);
        return v42 & 1;
      }

      if ((a9 & 1) != 0 || v27 == v31)
      {
        if (v31 >= v27)
        {
          v33 = v27;
        }

        else
        {
          v33 = v31;
        }

        v34 = v31;
        v35 = _swift_stdlib_memcmp(&v58 + v30, v32, v33);
        v36 = v35;
        v37 = v27 - v34;
LABEL_46:
        if (!v35)
        {
          v36 = v37;
        }

LABEL_61:
        v45 = v36 == 0;
        v46 = v36 < 0;
        v47 = v45;
        if (a9)
        {
          v42 = v46;
        }

        else
        {
          v42 = v47;
        }

        return v42 & 1;
      }
    }

LABEL_55:
    v42 = 0;
    return v42 & 1;
  }

  if ((a6 & 0x2000000000000000) != 0)
  {
    v26 = a6;
  }

  else
  {
    v26 = a5;
  }

  v14 = (v26 >> 62) & 1;
  if ((a2 & 0x2000000000000000) != 0)
  {
    goto LABEL_22;
  }

LABEL_8:
  if ((a1 & 0x1000000000000000) != 0)
  {
    v15 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v16 = a1 & 0xFFFFFFFFFFFFLL;
    if (a3 < 0)
    {
      goto LABEL_77;
    }
  }

  else
  {
    v48 = a3;
    v49 = a4;
    v50 = _StringObject.sharedUTF8.getter(a1, a2);
    a4 = v49;
    a3 = v48;
    v15 = v50;
    v16 = v51;
    if (v48 < 0)
    {
      goto LABEL_77;
    }
  }

  if (v16 < a4)
  {
    goto LABEL_77;
  }

  v17 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(a3, a4, v15, v16);
  v19 = v18;
  if ((a6 & 0x2000000000000000) != 0)
  {
    v58 = a5;
    v59 = a6 & 0xFFFFFFFFFFFFFFLL;
    if (a7 < 0)
    {
      goto LABEL_77;
    }

    if ((HIBYTE(a6) & 0xF) < a8)
    {
      goto LABEL_77;
    }

    v38 = a8 - a7;
    if (v38 < 0)
    {
      goto LABEL_77;
    }

    if (!v14)
    {
      v42 = _stringCompareFastUTF8Abnormal(_:_:expecting:)(v17, v18, &v58 + a7, v38, a9 & 1);
      return v42 & 1;
    }

    if ((a9 & 1) != 0 || v18 == v38)
    {
      if (v38 >= v18)
      {
        v39 = v18;
      }

      else
      {
        v39 = v38;
      }

      v35 = _swift_stdlib_memcmp(v17, &v58 + a7, v39);
      v36 = v35;
      v37 = v19 - v38;
      goto LABEL_46;
    }

    goto LABEL_55;
  }

  if ((a5 & 0x1000000000000000) == 0)
  {
    v52 = v17;
    v20 = _StringObject.sharedUTF8.getter(a5, a6);
    v17 = v52;
    v21 = v53;
    if ((a7 & 0x8000000000000000) == 0)
    {
      goto LABEL_14;
    }

LABEL_77:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v20 = ((a6 & 0xFFFFFFFFFFFFFFFLL) + 32);
  v21 = a5 & 0xFFFFFFFFFFFFLL;
  if (a7 < 0)
  {
    goto LABEL_77;
  }

LABEL_14:
  if (v21 < a8)
  {
    goto LABEL_77;
  }

  v22 = v17;
  v24 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(a7, a8, v20, v21);

  return _stringCompareFastUTF8(_:_:expecting:bothNFC:)(v22, v19, v24, v23, a9 & 1, v14);
}

uint64_t _StringGuts.withFastUTF8<A>(range:_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *), uint64_t a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    v14[0] = a5;
    v14[1] = a6 & 0xFFFFFFFFFFFFFFLL;
    if ((a1 & 0x8000000000000000) == 0 && (HIBYTE(a6) & 0xF) >= a2 && a2 - a1 >= 0)
    {
      v9 = v14 + a1;
      return a3(v9);
    }

    goto LABEL_13;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    v7 = ((a6 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v8 = a5 & 0xFFFFFFFFFFFFLL;
    if (a1 < 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v12 = a1;
    v13 = a2;
    v7 = _StringObject.sharedUTF8.getter(a5, a6);
    v8 = v11;
    a1 = v12;
    a2 = v13;
    if (v12 < 0)
    {
      goto LABEL_13;
    }
  }

  if (v8 < a2)
  {
LABEL_13:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v9 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(a1, a2, v7, v8);
  return a3(v9);
}

uint64_t _stringCompareFastUTF8Abnormal(_:_:expecting:)(unsigned __int8 *a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, unsigned __int8 a5)
{
  if (a4 >= a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = a4;
  }

  if (v7 < 1)
  {
LABEL_22:
    if (a5)
    {
      return a2 < a4;
    }

    else
    {
      return a2 == a4;
    }
  }

  else
  {
    if (*a1 == *a3)
    {
      v10 = 1;
      while (1)
      {
        v11 = v10;
        if (v7 == v10)
        {
          break;
        }

        v12 = a1[v10];
        v13 = a3[v10++];
        if (v12 != v13)
        {
          v14 = v11;
          if (v11 < v7)
          {
            goto LABEL_13;
          }

          goto LABEL_22;
        }
      }

      v14 = 0;
      if (v10 >= v7)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v14 = 0;
    }

LABEL_13:
    v15 = a2;
    if (v14 != a2)
    {
      v16 = v14;
      do
      {
        v17 = a1[v16--] & 0xC0;
      }

      while (v17 == 128);
      v15 = v16 + 1;
    }

    v18 = _decodeScalar(_:startingAt:)(a1, a2, v15);
    v20 = v19;
    v21 = _decodeScalar(_:startingAt:)(a3, v19, v15);
    v23 = v22;
    if (v18 >= 0x300 && (_swift_stdlib_getNormData(v18) & 0x7FE) != 0 || v21 >= 0x300 && (_swift_stdlib_getNormData(v21) & 0x7FE) != 0 || !UnsafeBufferPointer<A>.hasNormalizationBoundary(before:)(v20 + v15, a1, a2) || !UnsafeBufferPointer<A>.hasNormalizationBoundary(before:)(v23 + v15, a3, a4))
    {
      v25 = _findBoundary(_:before:)(a1, a2, v14);
      v26 = _findBoundary(_:before:)(a3, a4, v14);
      if (v26 < v25)
      {
        v25 = v26;
      }

      v27 = specialized Collection.subscript.getter(v25, a1, a2);
      v31 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v27, v28, v29, v30);
      v33 = v32;
      v34 = specialized Collection.subscript.getter(v25, a3, a4);
      v38 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v34, v35, v36, v37);
      v40 = ((v31 + 0x7FFFFFFFFFFFFFE0) >> 56) & 0xF;
      if (((v31 + 0x7FFFFFFFFFFFFFE0) & 0x2000000000000000) == 0)
      {
        v40 = v33 & 0xFFFFFFFFFFFFLL;
      }

      v41 = v38 + 0x7FFFFFFFFFFFFFE0;
      if (((v38 + 0x7FFFFFFFFFFFFFE0) & 0x2000000000000000) != 0)
      {
        v42 = HIBYTE(v41) & 0xF;
      }

      else
      {
        v42 = v39 & 0xFFFFFFFFFFFFLL;
      }

      return _StringGutsSlice.compare(with:expecting:)(v39 | 0x1000000000000000, v41 | 0x8000000000000000, 0, v42, a5 & 1, v33 | 0x1000000000000000, (v31 + 0x7FFFFFFFFFFFFFE0) | 0x8000000000000000, 0, v40) & 1;
    }

    else
    {
      return a5 & (v18 < v21);
    }
  }
}

uint64_t _scalarAlign(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != a2)
  {
    do
    {
      v3 = *(a1 + a3--) & 0xC0;
    }

    while (v3 == 128);
    ++a3;
  }

  return a3;
}

BOOL UnsafeBufferPointer<A>.hasNormalizationBoundary(before:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 1;
  if (a1 && a1 != a3)
  {
    if (*(a2 + a1) < 0xCCu)
    {
      return 1;
    }

    v5 = _decodeScalar(_:startingAt:)(a2, a2, a1);
    if (v5 >= 0x300)
    {
      NormData = _swift_stdlib_getNormData(v5);
      if ((NormData & 0x7F8) != 0)
      {
        return 0;
      }
    }

    else
    {
      LOBYTE(NormData) = 0;
    }

    return (NormData & 6) == 0;
  }

  return result;
}

uint64_t _findBoundary(_:before:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 < a2)
  {
    v3 = ~a3;
    v4 = (a1 + a3);
    do
    {
      v5 = *v4--;
      ++v3;
    }

    while ((v5 & 0xC0) == 0x80);
    if (v3)
    {
      v6 = -v3;
      v7 = a1 - 2;
      while (1)
      {
        v8 = (a1 + v6);
        v9 = *(a1 + v6);
        if ((v9 & 0x80000000) == 0)
        {
          break;
        }

        v10 = (__clz(~v9) - 24);
        if (v10 <= 2)
        {
          if (v10 != 2)
          {
            return v6;
          }

          v12 = v8 + 1;
          v13 = (v9 & 0x1F) << 6;
          if (v13 < 0x300)
          {
            return v6;
          }
        }

        else if (v10 == 3)
        {
          v11 = v8[1];
          v12 = v8 + 2;
          v13 = ((v9 & 0xF) << 12) | ((v11 & 0x3F) << 6);
          if (v13 < 0x300)
          {
            return v6;
          }
        }

        else
        {
          v14 = v8[1];
          v15 = v8[2];
          v12 = v8 + 3;
          v13 = ((v9 & 0xF) << 18) | ((v14 & 0x3F) << 12) | ((v15 & 0x3F) << 6);
          if (v13 < 0x300)
          {
            return v6;
          }
        }

        v16 = a1;
        if ((_swift_stdlib_getNormData(v13 | *v12 & 0x3F) & 0x7FE) == 0)
        {
          return v6;
        }

        v17 = v6 - 1;
        a1 = v16;
        if ((*(v16 + v6 - 1) & 0xC0) == 0x80)
        {
          do
          {
            v18 = *(v7 + v6--) & 0xC0;
          }

          while (v18 == 128);
          v17 = v6 - 1;
        }

        a2 = 0;
        v6 = v17;
        if (!v17)
        {
          return a2;
        }
      }

      return v6;
    }

    else
    {
      return 0;
    }
  }

  return a2;
}

uint64_t _StringGutsSlice.compare(with:expecting:)(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5, unint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = a5;
  if ((a7 & 0x1000000000000000) != 0 || (a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_49;
  }

  v62 = a4;
  if ((a7 & 0x2000000000000000) != 0)
  {
    v64 = a6;
    v65 = a7 & 0xFFFFFFFFFFFFFFLL;
    if (a8 < 0)
    {
      goto LABEL_59;
    }

    if ((HIBYTE(a7) & 0xF) < a9)
    {
      goto LABEL_59;
    }

    v34 = a9 - a8;
    if (a9 - a8 < 0)
    {
      goto LABEL_59;
    }

    if ((a2 & 0x2000000000000000) != 0)
    {
      v63[0] = a1;
      v63[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (a3 < 0)
      {
        goto LABEL_59;
      }

      if ((HIBYTE(a2) & 0xF) < a4)
      {
        goto LABEL_59;
      }

      v39 = a5;
      v42 = a4 - a3;
      if (a4 - a3 < 0)
      {
        goto LABEL_59;
      }

      v38 = a6;
      if (v42 >= v34)
      {
        v43 = a9 - a8;
      }

      else
      {
        v43 = a4 - a3;
      }

      v44 = &v64 + a8;
      v45 = v63 + a3;
    }

    else
    {
      if ((a1 & 0x1000000000000000) != 0)
      {
        v35 = a4;
        v36 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        v37 = a1 & 0xFFFFFFFFFFFFLL;
        if (a3 < 0)
        {
          goto LABEL_59;
        }
      }

      else
      {
        v58 = a6;
        v59 = _StringObject.sharedUTF8.getter(a1, a2);
        v35 = v62;
        a6 = v58;
        v36 = v59;
        v37 = v60;
        if (a3 < 0)
        {
          goto LABEL_59;
        }
      }

      if (v37 < v35)
      {
        goto LABEL_59;
      }

      v38 = a6;
      v39 = v11;
      v41 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(a3, v35, v36, v37);
      v42 = v40;
      if (v40 >= v34)
      {
        v43 = a9 - a8;
      }

      else
      {
        v43 = v40;
      }

      v44 = &v64 + a8;
      v45 = v41;
    }

    v52 = _swift_stdlib_memcmp(v44, v45, v43);
    v53 = v52;
    if (!v52)
    {
      v53 = v34 - v42;
    }

    v11 = v39;
    a6 = v38;
    a4 = v62;
    if (!v53)
    {
      return (v11 & 1) == 0;
    }

    goto LABEL_49;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    v15 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v16 = a6 & 0xFFFFFFFFFFFFLL;
    if (a8 < 0)
    {
      goto LABEL_59;
    }
  }

  else
  {
    v54 = a6;
    v55 = _StringObject.sharedUTF8.getter(a6, a7);
    a6 = v54;
    v15 = v55;
    v16 = v56;
    if (a8 < 0)
    {
      goto LABEL_59;
    }
  }

  if (v16 < a9)
  {
    goto LABEL_59;
  }

  v17 = a6;
  v18 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(a8, a9, v15, v16);
  v20 = v19;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v64 = a1;
    v65 = a2 & 0xFFFFFFFFFFFFFFLL;
    if ((a3 & 0x8000000000000000) == 0 && (HIBYTE(a2) & 0xF) >= v62)
    {
      v46 = v17;
      v47 = v11;
      v48 = v62 - a3;
      if (v62 - a3 >= 0)
      {
        if (v48 >= v19)
        {
          v49 = v19;
        }

        else
        {
          v49 = v62 - a3;
        }

        v50 = _swift_stdlib_memcmp(v18, &v64 + a3, v49);
        v51 = v50;
        if (!v50)
        {
          v51 = v20 - v48;
        }

        a4 = v62;
        v11 = v47;
        a6 = v46;
        if (!v51)
        {
          return (v11 & 1) == 0;
        }

        goto LABEL_49;
      }
    }

    goto LABEL_59;
  }

  __s1 = v18;
  if ((a1 & 0x1000000000000000) == 0)
  {
    v21 = _StringObject.sharedUTF8.getter(a1, a2);
    v22 = v57;
    v23 = v62;
    if ((a3 & 0x8000000000000000) == 0)
    {
      goto LABEL_10;
    }

LABEL_59:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v21 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
  v22 = a1 & 0xFFFFFFFFFFFFLL;
  v23 = v62;
  if (a3 < 0)
  {
    goto LABEL_59;
  }

LABEL_10:
  if (v22 < v23)
  {
    goto LABEL_59;
  }

  v25 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(a3, v23, v21, v22);
  v26 = v17;
  v27 = v11;
  v28 = v24;
  if (v24 >= v20)
  {
    v29 = v20;
  }

  else
  {
    v29 = v24;
  }

  v30 = _swift_stdlib_memcmp(__s1, v25, v29);
  v31 = v30;
  v32 = v20 - v28;
  v11 = v27;
  a6 = v26;
  if (!v30)
  {
    v31 = v32;
  }

  a4 = v62;
  if (!v31)
  {
    return (v11 & 1) == 0;
  }

LABEL_49:

  return _StringGutsSlice._slowCompare(with:expecting:)(a1, a2, a3, a4, v11 & 1, a6, a7, a8, a9);
}

uint64_t _utf8ScalarLength(_:endingAt:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = *(a3 + a1 - 1 + v3--) & 0xC0;
  }

  while (v4 == 128);
  return -v3;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance _StringComparisonResult(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    if (*a2)
    {
      return 1;
    }
  }

  else if ((*a2 & 1) == 0)
  {
    return 1;
  }

  return 0;
}

uint64_t _StringGutsSlice._slowCompare(with:expecting:)(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5, unint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v9 = a6 & 0xFFFFFFFFFFFFLL;
  }

  if (v9 < (a9 & 0xFFFFFFFFFFFFuLL))
  {
    goto LABEL_94;
  }

  LOBYTE(v77) = 1;
  v11 = 3;
  if ((a8 & 0xFFFFFFFFFFFFLL) != 0)
  {
    v11 = 1;
  }

  v12 = v11 | (a8 << 16);
  *&v84 = v12;
  *(&v84 + 1) = (a9 << 16) | 1;
  *&v85 = a6;
  *(&v85 + 1) = a7;
  if ((a7 & 0x2000000000000000) != 0)
  {
    v13 = a7;
  }

  else
  {
    v13 = a6;
  }

  *&v86 = v12;
  WORD4(v86) = 1;
  BYTE10(v86) = (v13 & 0x4000000000000000) != 0;
  LOBYTE(v87) = 1;
  *(&v87 + 1) = &_swiftEmptyArrayStorage;
  LOBYTE(v88) = 0;
  *(&v88 + 4) = 0x1000000000000;
  *&v89 = &_swiftEmptyArrayStorage;
  v14 = HIBYTE(a2) & 0xF;
  BYTE8(v89) = 0;
  HIDWORD(v89) = 0;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v14 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v90 = 1;
  if (v14 < (a4 & 0xFFFFFFFFFFFFuLL))
  {
LABEL_94:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  LOBYTE(v70) = 1;
  v15 = 3;
  if ((a3 & 0xFFFFFFFFFFFFLL) != 0)
  {
    v15 = 1;
  }

  v16 = v15 | (a3 << 16);
  *&v77 = v16;
  *(&v77 + 1) = (a4 << 16) | 1;
  *&v78 = a1;
  *(&v78 + 1) = a2;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v17 = a2;
  }

  else
  {
    v17 = a1;
  }

  *&v79 = v16;
  WORD4(v79) = 1;
  BYTE10(v79) = (v17 & 0x4000000000000000) != 0;
  LOBYTE(v80) = 1;
  *(&v80 + 1) = &_swiftEmptyArrayStorage;
  LOBYTE(v81) = 0;
  *(&v81 + 4) = 0x1000000000000;
  *&v82 = &_swiftEmptyArrayStorage;
  BYTE8(v82) = 0;
  HIDWORD(v82) = 0;
  v83 = 1;
  a7;
  v18 = a2;
  while (1)
  {
    v19 = MEMORY[0x1EEE9AC00](v18);
    if (BYTE9(v86) != 1)
    {
      if (BYTE10(v86))
      {
        v19 = specialized closure #1 in Unicode._InternalNFC.Iterator.next()(&v84, v20);
        if ((v19 & 0x100000000) == 0)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v19 = specialized Unicode._NFCNormalizer._resume(consumingNFD:)(&v86 + 8, closure #1 in Unicode._InternalNFC.Iterator.next()specialized partial apply);
        if ((v19 & 0x100000000) == 0)
        {
LABEL_27:
          v21 = 0;
          LODWORD(v22) = v19;
          goto LABEL_38;
        }
      }
    }

    v21 = 1;
    BYTE9(v86) = 1;
    if (BYTE10(v86))
    {
      LODWORD(v22) = 0;
    }

    else
    {
      v19 = specialized Unicode._NFCNormalizer._resume(consumingNFD:)(&v86 + 8);
      LODWORD(v22) = v19;
      if ((v19 & 0x100000000) != 0)
      {
        v23 = HIDWORD(v89);
        v24 = v90;
        HIDWORD(v89) = v19;
        v90 = 1;
        if (v24 == 1)
        {
          v25 = v89;
          v22 = *(v89 + 16);
          if (v22)
          {
            if ((BYTE8(v89) & 1) == 0)
            {
              v26 = v22 - 1;
              if (v22 != 1)
              {
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v89);
                *&v89 = v25;
                if (!isUniquelyReferenced_nonNull_native)
                {
                  v25 = specialized _ArrayBuffer._consumeAndCreateNew()(v25);
                }

                *&v89 = v25;
                v40 = &v25[v22 + 3] + 2;
                v41 = v25 + 18;
                v42 = 1;
                do
                {
                  if (v42 - 1 != v26)
                  {
                    v44 = v25[2];
                    if (v42 - 1 >= v44 || v26 >= v44)
                    {
                      goto LABEL_94;
                    }

                    v45 = *v41;
                    v46 = *(v41 - 1);
                    v47 = *v40;
                    *(v41 - 1) = *(v40 - 1);
                    *v41 = v47;
                    *(v40 - 1) = v46;
                    *v40 = v45;
                  }

                  --v26;
                  v40 -= 4;
                  v41 += 4;
                  v43 = v42++ < v26;
                }

                while (v43);
                *&v89 = v25;
              }

              BYTE8(v89) = 1;
              if (!v25[2])
              {
LABEL_96:
                _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
              }
            }

            v19 = swift_isUniquelyReferenced_nonNull_native(v25);
            *&v89 = v25;
            if (v19)
            {
              v27 = v25[2];
              if (!v27)
              {
                goto LABEL_97;
              }
            }

            else
            {
              v19 = specialized _ArrayBuffer._consumeAndCreateNew()(v25);
              v25 = v19;
              *&v89 = v19;
              v27 = *(v19 + 16);
              if (!v27)
              {
                goto LABEL_97;
              }
            }

            v21 = 0;
            v28 = (v27 - 1);
            LODWORD(v22) = v25[v28 + 4];
            v25[2] = v28;
            *&v89 = v25;
          }

          else
          {
            BYTE8(v89) = 0;
          }
        }

        else
        {
          v21 = 0;
          LODWORD(v22) = v23;
        }
      }

      else
      {
        v21 = 0;
      }
    }

LABEL_38:
    MEMORY[0x1EEE9AC00](v19);
    if ((BYTE9(v79) & 1) == 0)
    {
      if (BYTE10(v79))
      {
        v18 = specialized closure #1 in Unicode._InternalNFC.Iterator.next()(&v77, v29);
        if ((v18 & 0x100000000) == 0)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v18 = specialized Unicode._NFCNormalizer._resume(consumingNFD:)(&v79 + 8, closure #1 in Unicode._InternalNFC.Iterator.next()specialized partial apply);
        if ((v18 & 0x100000000) == 0)
        {
LABEL_49:
          v30 = 0;
          if (v21)
          {
            goto LABEL_88;
          }

          goto LABEL_63;
        }
      }
    }

    v30 = 1;
    BYTE9(v79) = 1;
    if (BYTE10(v79))
    {
      v18 = 0;
      if (v21)
      {
        goto LABEL_88;
      }

      goto LABEL_63;
    }

    v18 = specialized Unicode._NFCNormalizer._resume(consumingNFD:)(&v79 + 8);
    if ((v18 & 0x100000000) == 0)
    {
      v30 = 0;
      if (v21)
      {
        goto LABEL_88;
      }

      goto LABEL_63;
    }

    v31 = HIDWORD(v82);
    v32 = v83;
    HIDWORD(v82) = v18;
    v83 = 1;
    if (v32 != 1)
    {
      v30 = 0;
      v18 = v31;
      if (v21)
      {
        goto LABEL_88;
      }

      goto LABEL_63;
    }

    v33 = v82;
    v34 = *(v82 + 16);
    if (!v34)
    {
      break;
    }

    if ((BYTE8(v82) & 1) == 0)
    {
      v35 = v34 - 1;
      if (v34 != 1)
      {
        v48 = swift_isUniquelyReferenced_nonNull_native(v82);
        *&v82 = v33;
        if (!v48)
        {
          v33 = specialized _ArrayBuffer._consumeAndCreateNew()(v33);
        }

        *&v82 = v33;
        v49 = &v33[v34 + 3] + 2;
        v50 = v33 + 18;
        v51 = 1;
        do
        {
          if (v51 - 1 != v35)
          {
            v52 = v33[2];
            if (v51 - 1 >= v52 || v35 >= v52)
            {
              goto LABEL_94;
            }

            v53 = *v50;
            v54 = *(v50 - 1);
            v55 = *v49;
            *(v50 - 1) = *(v49 - 1);
            *v50 = v55;
            *(v49 - 1) = v54;
            *v49 = v53;
          }

          --v35;
          v49 -= 4;
          v50 += 4;
          v43 = v51++ < v35;
        }

        while (v43);
        *&v82 = v33;
      }

      BYTE8(v82) = 1;
      if (!v33[2])
      {
        goto LABEL_96;
      }
    }

    v36 = swift_isUniquelyReferenced_nonNull_native(v33);
    *&v82 = v33;
    if (v36)
    {
      v37 = v33[2];
      if (!v37)
      {
        goto LABEL_97;
      }
    }

    else
    {
      v33 = specialized _ArrayBuffer._consumeAndCreateNew()(v33);
      *&v82 = v33;
      v37 = v33[2];
      if (!v37)
      {
LABEL_97:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }
    }

    v30 = 0;
    v38 = (v37 - 1);
    v18 = LODWORD(v33[v38 + 4]);
    v33[2] = v38;
    *&v82 = v33;
    if (v21)
    {
      goto LABEL_88;
    }

LABEL_63:
    if (v30)
    {
      v67 = v81;
      v68 = v82;
      v69 = v83;
      v63 = v77;
      v64 = v78;
      v65 = v79;
      v66 = v80;
      outlined destroy of _HasContiguousBytes?(&v63, &_ss7UnicodeO12_InternalNFCV8IteratorVy_Ss0A10ScalarViewV_GMd, _ss7UnicodeO12_InternalNFCV8IteratorVy_Ss0A10ScalarViewV_GMR);
      v74 = v88;
      v75 = v89;
      v76 = v90;
      v70 = v84;
      v71 = v85;
      v72 = v86;
      v73 = v87;
      outlined destroy of _HasContiguousBytes?(&v70, &_ss7UnicodeO12_InternalNFCV8IteratorVy_Ss0A10ScalarViewV_GMd, _ss7UnicodeO12_InternalNFCV8IteratorVy_Ss0A10ScalarViewV_GMR);
      goto LABEL_91;
    }

    if (v22 != v18)
    {
      v67 = v81;
      v68 = v82;
      v69 = v83;
      v63 = v77;
      v64 = v78;
      v65 = v79;
      v66 = v80;
      v57 = v18;
      outlined destroy of _HasContiguousBytes?(&v63, &_ss7UnicodeO12_InternalNFCV8IteratorVy_Ss0A10ScalarViewV_GMd, _ss7UnicodeO12_InternalNFCV8IteratorVy_Ss0A10ScalarViewV_GMR);
      v74 = v88;
      v75 = v89;
      v76 = v90;
      v70 = v84;
      v71 = v85;
      v72 = v86;
      v73 = v87;
      outlined destroy of _HasContiguousBytes?(&v70, &_ss7UnicodeO12_InternalNFCV8IteratorVy_Ss0A10ScalarViewV_GMd, _ss7UnicodeO12_InternalNFCV8IteratorVy_Ss0A10ScalarViewV_GMR);
      v58 = v22 < v57;
      v59 = a5;
      goto LABEL_92;
    }
  }

  v18 = 0;
  BYTE8(v82) = 0;
  if ((v21 & 1) == 0)
  {
    goto LABEL_63;
  }

LABEL_88:
  v67 = v81;
  v68 = v82;
  v69 = v83;
  v63 = v77;
  v64 = v78;
  v65 = v79;
  v66 = v80;
  outlined destroy of _HasContiguousBytes?(&v63, &_ss7UnicodeO12_InternalNFCV8IteratorVy_Ss0A10ScalarViewV_GMd, _ss7UnicodeO12_InternalNFCV8IteratorVy_Ss0A10ScalarViewV_GMR);
  v74 = v88;
  v75 = v89;
  v76 = v90;
  v70 = v84;
  v71 = v85;
  v72 = v86;
  v73 = v87;
  outlined destroy of _HasContiguousBytes?(&v70, &_ss7UnicodeO12_InternalNFCV8IteratorVy_Ss0A10ScalarViewV_GMd, _ss7UnicodeO12_InternalNFCV8IteratorVy_Ss0A10ScalarViewV_GMR);
  if (v30)
  {
    v56 = a5 ^ 1;
    return v56 & 1;
  }

LABEL_91:
  v59 = a5;
  v58 = a9 < a4;
LABEL_92:
  v56 = v58 & v59;
  return v56 & 1;
}

uint64_t Substring.init(_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < (a4 & 0xFFFFFFFFFFFFuLL))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v5 = 3;
  if ((a3 & 0xFFFFFFFFFFFFLL) != 0)
  {
    v5 = 1;
  }

  return v5 | (a3 << 16);
}

BOOL _allASCII(_:)(void *a1, uint64_t a2)
{
  if (!a2)
  {
    return 1;
  }

  if ((a2 & 0xFFFFFFFFFFFFFFF0) >= 1)
  {
    v2 = a1;
    while (((v2[1] | *v2) & 0x8080808080808080) == 0)
    {
      v2 += 2;
      if (v2 >= (a1 + (a2 & 0xFFFFFFFFFFFFFFF0)))
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  v2 = a1;
LABEL_8:
  if (v2 < (a1 + (a2 & 0xFFFFFFFFFFFFFFF8)))
  {
    if ((*v2 & 0x8080808080808080) != 0)
    {
      return 0;
    }

    ++v2;
  }

  if (v2 < (a1 + (a2 & 0xFFFFFFFFFFFFFFFCLL)))
  {
    if ((*v2 & 0x80808080) != 0)
    {
      return 0;
    }

    v2 = (v2 + 4);
  }

  if (v2 < (a1 + (a2 & 0xFFFFFFFFFFFFFFFELL)))
  {
    if ((*v2 & 0x8080) != 0)
    {
      return 0;
    }

    v2 = (v2 + 2);
  }

  return v2 >= (a1 + a2) || (*v2 & 0x80000000) == 0;
}

uint64_t repairUTF8(_:firstKnownBrokenRange:)(char *a1, int64_t a2, int64_t a3, int64_t a4)
{
  v54 = 0;
  v55 = 0xE000000000000000;
  if (__OFADD__(a2, 15))
  {
    __break(1u);
    goto LABEL_128;
  }

  v7 = a2;
  _StringGuts.reserveCapacity(_:)(a2 + 15);
  v8 = 0;
  while (1)
  {
    if (a3 < 0)
    {
LABEL_110:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (v7 < a3)
    {
      goto LABEL_126;
    }

    v9 = v54 & 0xFFFFFFFFFFFFLL;
    if ((v55 & 0x2000000000000000) != 0)
    {
      v9 = HIBYTE(v55) & 0xF;
    }

    v10 = __OFADD__(v9, v7);
    v11 = v9 + v7;
    if (v10)
    {
      __break(1u);
LABEL_113:
      __break(1u);
LABEL_114:
      __break(1u);
      goto LABEL_126;
    }

    if (__OFADD__(v11, 3))
    {
      goto LABEL_113;
    }

    _StringGuts.reserveCapacity(_:)(v11 + 3);
    if (a3 && !a1)
    {
      goto LABEL_126;
    }

    v12 = v55 & 0xFFFFFFFFFFFFFFFLL;
    v13 = (v55 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v14 = ((v55 & 0xFFFFFFFFFFFFFFFLL) + 24);
    specialized UnsafeMutablePointer.initialize(from:count:)(a1, a3, (v13 + (*((v55 & 0xFFFFFFFFFFFFFFFLL) + 0x18) & 0xFFFFFFFFFFFFLL)));
    v15 = *v14 & 0xFFFFFFFFFFFFLL;
    v16 = v15 + a3;
    if (__OFADD__(v15, a3))
    {
      goto LABEL_114;
    }

    v17 = v16 | 0x3000000000000000;
    *(v12 + 24) = v16 | 0x3000000000000000;
    *(v13 + (v16 & 0xFFFFFFFFFFFFLL)) = 0;
    if ((*(v12 + 16) & 0x8000000000000000) != 0)
    {
      v18 = __StringStorage._breadcrumbsAddress.getter();
      v19 = *v18;
      *v18 = 0;
      v19;
      v17 = *(v12 + 24);
    }

    v54 = v17;
    specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(0xFFFDu, &v54);
    if (v7 < a4)
    {
      goto LABEL_110;
    }

    if (a4 < 0)
    {
      goto LABEL_126;
    }

    v20 = v7 - a4;
    if (v7 - a4 < 0)
    {
      goto LABEL_126;
    }

    v52 = v8;
    if (v20)
    {
      if (!a1)
      {
        goto LABEL_126;
      }
    }

    v21 = &a1[a4];
    if (_allASCII(_:)(&a1[a4], v7 - a4) || v7 == a4)
    {
      break;
    }

    v22 = 0;
    v23 = &a1[v7];
    v24 = v21;
    v25 = v21;
    while (1)
    {
      v27 = *v25++;
      v26 = v27;
      if ((v27 & 0x80000000) == 0)
      {
        v28 = 1;
        goto LABEL_24;
      }

      if ((v26 + 11) <= 0xCCu)
      {
        v53[0] = _diagnoseInvalidUTF8MultiByteLeading(_:)(v26);
        goto LABEL_64;
      }

      if (v26 > 0xDFu)
      {
        break;
      }

      if (v25 == v23 || (*v25 & 0xC0) != 0x80)
      {
LABEL_102:
        v53[0] = 4;
        goto LABEL_64;
      }

      v25 = v24 + 2;
      v28 = 2;
LABEL_24:
      v22 += v28;
      v24 = v25;
      if (v25 == v23)
      {
        goto LABEL_106;
      }
    }

    if (v26 == 224)
    {
      if (v25 == v23)
      {
        goto LABEL_102;
      }

      if (v24[1] - 192 < 0xFFFFFFE0)
      {
        goto LABEL_103;
      }

      goto LABEL_48;
    }

    if (v26 <= 0xECu)
    {
      goto LABEL_46;
    }

    if (v26 == 237)
    {
      if (v25 == v23)
      {
        goto LABEL_102;
      }

      v29 = v24[1];
      if (v29 > 0x9F || (v29 & 0xC0) != 0x80)
      {
        v53[0] = 1;
        goto LABEL_64;
      }

      goto LABEL_48;
    }

    if (v26 <= 0xEFu)
    {
LABEL_46:
      if (v25 == v23 || (v24[1] & 0xC0) != 0x80)
      {
        goto LABEL_102;
      }

LABEL_48:
      if (v24 + 2 == v23 || (v24[2] & 0xC0) != 0x80)
      {
        goto LABEL_102;
      }

      v25 = v24 + 3;
      v28 = 3;
      goto LABEL_24;
    }

    if (v26 == 240)
    {
      if (v25 == v23)
      {
        goto LABEL_102;
      }

      if (v24[1] - 192 < 0xFFFFFFD0)
      {
LABEL_103:
        v53[0] = 3;
        goto LABEL_64;
      }

      goto LABEL_58;
    }

    if (v26 <= 0xF3u)
    {
      if (v25 == v23 || (v24[1] & 0xC0) != 0x80)
      {
        goto LABEL_102;
      }

LABEL_58:
      if (v24 + 2 == v23 || (v24[2] & 0xC0) != 0x80 || v24 + 3 == v23 || (v24[3] & 0xC0) != 0x80)
      {
        goto LABEL_102;
      }

      v25 = v24 + 4;
      v28 = 4;
      goto LABEL_24;
    }

    if (v25 == v23)
    {
      goto LABEL_102;
    }

    v30 = v24[1];
    if (v30 <= 0x8F && (v30 & 0xC0) == 0x80)
    {
      goto LABEL_58;
    }

    v53[0] = 2;
LABEL_64:
    swift_willThrowTypedImpl(v53, &type metadata for _UTF8EncodingErrorKind, &protocol witness table for _UTF8EncodingErrorKind);
    v31 = specialized Collection.subscript.getter(v22, v21, v20);
    v35 = v32;
    v36 = v33;
    v37 = v34;
    v38 = v31;
    if (v31 != v32)
    {
      v39 = v31;
      specialized Slice.subscript.getter(v31, v31, v32, v33, v34);
      v38 = v39 + 1;
      if (!__OFADD__(v39, 1))
      {
        v31 = v39;
        goto LABEL_67;
      }

LABEL_126:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

LABEL_67:
    v40 = v31;
    if (v38 != v35)
    {
      if (v35 <= v38)
      {
        v41 = v38;
      }

      else
      {
        v41 = v35;
      }

      if (v37 <= v38)
      {
        v42 = v38;
      }

      else
      {
        v42 = v37;
      }

      if (v38 < v31 || v38 >= v35 || v38 < 0 || v38 >= v37)
      {
        goto LABEL_126;
      }

      v40 = v31;
      if ((*(v36 + v38) & 0xC0) == 0x80)
      {
        v40 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          goto LABEL_125;
        }

        if (v31 + 1 <= v31)
        {
          goto LABEL_126;
        }

        v43 = v38 + 1;
        if (v38 + 1 != v35)
        {
          if (v38 < v31 || v43 == v41 || v38 < 0 || v43 == v42)
          {
            goto LABEL_126;
          }

          if ((*(v36 + v43) & 0xC0) == 0x80)
          {
            v10 = __OFADD__(v40, 1);
            v40 = v31 + 2;
            if (v10)
            {
              goto LABEL_125;
            }

            if (v31 + 2 <= v31)
            {
              goto LABEL_126;
            }

            v44 = v38 + 2;
            if (v38 + 2 != v35)
            {
              if (v38 < v31 || v44 == v41 || v38 < 0 || v44 == v42)
              {
                goto LABEL_126;
              }

              if ((*(v36 + v44) & 0xC0) == 0x80)
              {
                v10 = __OFADD__(v40, 1);
                v40 = v31 + 3;
                if (!v10)
                {
                  if (v31 + 3 <= v31)
                  {
                    goto LABEL_126;
                  }

                  goto LABEL_97;
                }

LABEL_125:
                __break(1u);
                goto LABEL_126;
              }
            }
          }
        }
      }

LABEL_97:
      if (v40 < v31)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }
    }

    v45 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      __break(1u);
      goto LABEL_126;
    }

    if (v35 < v45)
    {
      goto LABEL_126;
    }

    a3 = _legacyNarrowIllegalRange #1 (buf:) in validateUTF8(_:)(v31, v45, v36, v37);
    a4 = v46;
    a1 = v21;
    v7 = v20;
    v8 = v52;
    if (!v20)
    {
      v14 = &v54;
      return *v14;
    }
  }

LABEL_106:
  specialized UnsafeMutablePointer.initialize(from:count:)(v21, v20, (v13 + (*(v12 + 24) & 0xFFFFFFFFFFFFLL)));
  v47 = *(v12 + 24) & 0xFFFFFFFFFFFFLL;
  v10 = __OFADD__(v47, v20);
  v48 = v47 + v20;
  if (v10)
  {
LABEL_128:
    __break(1u);
    goto LABEL_126;
  }

  *(v12 + 24) = v48 | 0x3000000000000000;
  *(v13 + (v48 & 0xFFFFFFFFFFFFLL)) = 0;
  if ((*(v12 + 16) & 0x8000000000000000) != 0)
  {
    v49 = __StringStorage._breadcrumbsAddress.getter();
    v50 = *v49;
    *v49 = 0;
    v50;
  }

  return *v14;
}

Swift::Void __swiftcall __StringStorage._updateCountAndFlags(newCount:newIsASCII:)(Swift::Int newCount, Swift::Bool newIsASCII)
{
  v3 = newCount | 0xC000000000000000;
  if (!newIsASCII)
  {
    v3 = newCount;
  }

  *(v2 + 24) = v3 | 0x3000000000000000;
  *(v2 + (v3 & 0xFFFFFFFFFFFFLL) + 32) = 0;
  if ((*(v2 + 16) & 0x8000000000000000) != 0)
  {
    v4 = __StringStorage._breadcrumbsAddress.getter();
    v5 = *v4;
    *v4 = 0;

    v5;
  }
}

uint64_t static String._uncheckedFromUTF16(_:)(unsigned __int16 *a1, uint64_t a2)
{
  v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a2 & ~(a2 >> 63), 0, &_swiftEmptyArrayStorage);
  v7 = 0;
  if (a1)
  {
    v8 = &a1[a2];
  }

  else
  {
    v8 = 0;
  }

  v47 = 0;
  v48 = 0;
  v9 = &type metadata for Unicode.UTF16.ForwardParser;
  while (v7)
  {
    v10 = v47;
    if ((v47 & 0xF800) != 0xD800)
    {
      v45 = v4;
      v23 = v9;
      lazy protocol witness table accessor for type Unicode.UTF16.ForwardParser and conformance Unicode.UTF16.ForwardParser(v4, v5, v6);
      v44 = protocol witness for _UTFParser._buffer.modify in conformance Unicode.UTF8.ReverseParser();
      specialized RangeReplaceableCollection.remove(at:)(0);
      (v44)(v46, 0);
      v9 = v23;
      v4 = v45;
      v10 = v10;
      v16 = 1;
      goto LABEL_25;
    }

    if (!a1)
    {
      goto LABEL_16;
    }

    v11 = a1;
    if (a1 == v8)
    {
      goto LABEL_16;
    }

LABEL_12:
    v12 = v7;
    if (v7 > 0x1Fu)
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    a1 = v11 + 1;
    v10 = (*v11 << v7) | ((-65535 << v7) - 1) & v10;
    v7 += 16;
    if (v12 <= 0xF && a1 != v8)
    {
      a1 = v11 + 2;
      v10 = (v11[1] << v7) | ((0x10000 << v12) - 1) & v10;
      v7 = v12 | 0x20;
    }

LABEL_16:
    v13 = v10 & 0xFC00FC00;
    if ((v10 & 0xFC00FC00) == 0xDC00D800)
    {
      v14 = 32;
    }

    else
    {
      v14 = 16;
    }

    v48 = v7 - v14;
    if (v13 == -603924480)
    {
      v15 = 32;
    }

    else
    {
      v15 = 16;
    }

    v47 = v10 >> v15;
    if (v13 == -603924480)
    {
      v16 = 0;
      goto LABEL_25;
    }

    v25 = v4[2];
    v24 = v4[3];
    v26 = v24 >> 1;
    v27 = (&v25->isa + 1);
    if (v24 >> 1 <= v25)
    {
      v34 = v9;
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), &v25->isa + 1, 1, v4);
      v9 = v34;
      v24 = v4[3];
      v26 = v24 >> 1;
    }

    v4[2] = v27;
    *(&v25->info + v4) = -17;
    v28 = (&v25->isa + 2);
    if (v26 <= v27)
    {
      v35 = v9;
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), &v25->isa + 2, 1, v4);
      v9 = v35;
      v28 = (&v25->isa + 2);
      v27 = (&v25->isa + 1);
      v24 = v4[3];
      v26 = v24 >> 1;
    }

    v4[2] = v28;
    *(&v27->info + v4) = -65;
    v29 = &v25->isa + 3;
    if (v26 <= v28)
    {
      v30 = v28;
      v31 = v9;
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v29, 1, v4);
      v9 = v31;
      v28 = v30;
    }

    v4[2] = v29;
    *(&v28->info + v4) = -67;
LABEL_6:
    v7 = v48;
  }

  if (a1 && a1 != v8)
  {
    v10 = *a1;
    v11 = a1 + 1;
    if ((v10 & 0xF800) == 0xD800)
    {
      v10 |= HIWORD(v47) << 16;
      v7 = 16;
      ++a1;
      if (v11 == v8)
      {
        goto LABEL_16;
      }

      goto LABEL_12;
    }

    v16 = 1;
    ++a1;
LABEL_25:
    if (v10 < 0x80u)
    {
      v17 = (v10 + 1);
      if (!v17)
      {
        goto LABEL_6;
      }

      goto LABEL_27;
    }

    v22 = (v10 & 0x3F) << 8;
    if (v10 < 0x800u)
    {
      v17 = v22 + (v10 >> 6) + 33217;
      goto LABEL_27;
    }

    if ((v10 & 0xF800) == 0xD800)
    {
      if (v16)
      {
        if (v10 >= 0x80u)
        {
          v37 = (v10 & 0x3F) << 8;
          if (v10 >= 0x800u)
          {
            v17 = ((v10 >> 12) | ((v37 | (v10 >> 6) & 0x3F) << 8)) + 8487393;
          }

          else
          {
            v17 = (v10 >> 6) + v37 + 33217;
          }
        }

        else
        {
          v17 = v10 + 1;
        }

LABEL_27:
        v18 = v4[2];
        do
        {
          v19 = v4[3];
          if (v18 >= v19 >> 1)
          {
            v21 = v9;
            v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), &v18->isa + 1, 1, v4);
            v9 = v21;
          }

          v4[2] = (&v18->isa + 1);
          *(&v18->info + v4) = v17 - 1;
          v18 = (v18 + 1);
          v20 = v17 >= 0x100;
          v17 >>= 8;
        }

        while (v20);
        goto LABEL_6;
      }

      v36 = ((v10 & 0x3FF) << 10) | HIWORD(v10) & 0x3FF;
      v32 = ((v36 + 0x10000) >> 4) & 0x3F00 | ((v36 + 0x10000) >> 18) | (((v36 >> 6) & 0x3F | (((v36 + 0x10000) & 0x3F) << 8)) << 16);
      v33 = -2122219023;
    }

    else
    {
      v32 = ((v22 | (v10 >> 6) & 0x3F) << 8) | (v10 >> 12);
      v33 = 8487393;
    }

    v17 = v32 + v33;
    goto LABEL_27;
  }

  v38 = v4[2];
  v39 = v4;
  v40 = _allASCII(_:)(v4 + 4, v38);
  v42 = specialized static String._uncheckedFromUTF8(_:isASCII:)(v39 + 32, v38, v40, v41);
  v39;
  return v42;
}

uint64_t _sSS18_slowFromCodeUnits33_7FF00B9A6F2F6297245D04D183248ECBLL_8encoding6repairSS_Sb11repairsMadetSgx_q_mSbtSlRzs16_UnicodeEncodingR_0C4UnitQy_7ElementRtzr0_lFZSays6UInt32VG_s0Q0O5UTF32OTt0t2g5(uint64_t a1, char a2)
{
  v4 = *(a1 + 16);
  v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0, &_swiftEmptyArrayStorage);
  if (!v4)
  {
    goto LABEL_32;
  }

  v32 = a2;
  v6 = 0;
  v7 = 0;
  v8 = a1 + 32;
  do
  {
    v9 = *(v8 + 4 * v7);
    if (HIWORD(v9) > 0x10u || (v9 & 0xFFFFF800) == 55296)
    {
      v12 = v5[2];
      v11 = v5[3];
      v13 = v11 >> 1;
      v14 = (&v12->isa + 1);
      if (v11 >> 1 <= v12)
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), &v12->isa + 1, 1, v5);
        v11 = v5[3];
        v13 = v11 >> 1;
      }

      v5[2] = v14;
      *(&v12->info + v5) = -17;
      v15 = (&v12->isa + 2);
      if (v13 <= v14)
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), &v12->isa + 2, 1, v5);
        v11 = v5[3];
        v13 = v11 >> 1;
      }

      v5[2] = v15;
      *(&v14->info + v5) = -65;
      if (v13 <= v15)
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), &v12->isa + 3, 1, v5);
      }

      v5[2] = (&v12->isa + 3);
      *(&v15->info + v5) = -67;
      v6 = 1;
    }

    else
    {
      if (v9 >= 0x80)
      {
        v20 = (*(v8 + 4 * v7) & 0x3F) << 8;
        v21 = (v9 >> 6) + v20 + 33217;
        v22 = (v20 | (v9 >> 6) & 0x3F) << 8;
        v23 = (v9 >> 18) + ((v22 | (v9 >> 12) & 0x3F) << 8) - 2122219023;
        v24 = (v9 >> 12) + v22 + 8487393;
        if (HIWORD(v9))
        {
          v25 = v23;
        }

        else
        {
          v25 = v24;
        }

        if (v9 >= 0x800)
        {
          v16 = v25;
        }

        else
        {
          v16 = v21;
        }
      }

      else
      {
        v16 = v9 + 1;
      }

      v17 = v5[2];
      do
      {
        v18 = v5[3];
        if (v17 >= v18 >> 1)
        {
          v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), &v17->isa + 1, 1, v5);
        }

        v5[2] = (&v17->isa + 1);
        *(&v17->info + v5) = v16 - 1;
        v17 = (v17 + 1);
        v19 = v16 >= 0x100;
        v16 >>= 8;
      }

      while (v19);
    }

    ++v7;
  }

  while (v7 != v4);
  if (v32 & 1) != 0 || ((v6 ^ 1))
  {
LABEL_32:
    v27 = v5[2];
    v28 = v5;
    v29 = _allASCII(_:)(v5 + 4, v27);
    v26 = specialized static String._uncheckedFromUTF8(_:isASCII:)(v28 + 32, v27, v29, v30);
    v28;
  }

  else
  {
    v5;
    return 0;
  }

  return v26;
}

uint64_t _sSS18_slowFromCodeUnits33_7FF00B9A6F2F6297245D04D183248ECBLL_8encoding6repairSS_Sb11repairsMadetSgx_q_mSbtSlRzs16_UnicodeEncodingR_0C4UnitQy_7ElementRtzr0_lFZSRys5UInt8VG_s0Q0O5ASCIIOTt0t2g5(char *a1, uint64_t a2, char a3)
{
  v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a2 & ~(a2 >> 63), 0, &_swiftEmptyArrayStorage);
  v7 = 0;
  if (!a1 || !a2)
  {
    goto LABEL_20;
  }

  v8 = &a1[a2];
  do
  {
    v9 = a1;
    while (1)
    {
      v11 = *v9++;
      v10 = v11;
      v13 = v6[2];
      v12 = v6[3];
      v14 = v12 >> 1;
      v15 = (&v13->isa + 1);
      if (v11 < 0)
      {
        break;
      }

      if (v14 <= v13)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), &v13->isa + 1, 1, v6);
      }

      v6[2] = v15;
      *(&v13->info + v6) = v10;
      a1 = v9;
      if (v9 == v8)
      {
        goto LABEL_17;
      }
    }

    if (v14 <= v13)
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), &v13->isa + 1, 1, v6);
      v12 = v6[3];
      v14 = v12 >> 1;
    }

    v6[2] = v15;
    *(&v13->info + v6) = -17;
    v16 = (&v13->isa + 2);
    if (v14 <= v15)
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), &v13->isa + 2, 1, v6);
      v16 = (&v13->isa + 2);
      v12 = v6[3];
      v14 = v12 >> 1;
    }

    v6[2] = v16;
    *(&v15->info + v6) = -65;
    if (v14 <= v16)
    {
      v17 = v16;
      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), &v13->isa + 3, 1, v6);
      v16 = v17;
    }

    ++a1;
    v6[2] = (&v13->isa + 3);
    *(&v16->info + v6) = -67;
    v7 = 1;
  }

  while (a1 != v8);
LABEL_17:
  if ((v7 & 1) != 0 && (a3 & 1) == 0)
  {
    v6;
    return 0;
  }

  else
  {
LABEL_20:
    v19 = v6[2];
    v20 = v6;
    v21 = _allASCII(_:)(v6 + 4, v19);
    v18 = specialized static String._uncheckedFromUTF8(_:isASCII:)(v20 + 32, v19, v21, v22);
    v20;
  }

  return v18;
}

uint64_t _sSS18_slowFromCodeUnits33_7FF00B9A6F2F6297245D04D183248ECBLL_8encoding6repairSS_Sb11repairsMadetSgx_q_mSbtSlRzs16_UnicodeEncodingR_0C4UnitQy_7ElementRtzr0_lFZSays5UInt8VG_s0Q0O5ASCIIOTt0t2g5(uint64_t a1, char a2)
{
  v4 = *(a1 + 16);
  v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0, &_swiftEmptyArrayStorage);
  v6 = 0;
  if (!v4)
  {
    goto LABEL_18;
  }

  v7 = (a1 + 32);
  do
  {
    v9 = *v7++;
    v8 = v9;
    v11 = v5[2];
    v10 = v5[3];
    v12 = v10 >> 1;
    v13 = &v11->isa + 1;
    if (v9 < 0)
    {
      if (v12 <= v11)
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), &v11->isa + 1, 1, v5);
        v10 = v5[3];
        v12 = v10 >> 1;
      }

      v5[2] = v13;
      *(&v11->info + v5) = -17;
      v14 = (&v11->isa + 2);
      if (v12 <= v13)
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), &v11->isa + 2, 1, v5);
        v14 = (&v11->isa + 2);
        v10 = v5[3];
        v12 = v10 >> 1;
      }

      v5[2] = v14;
      *(v5 + v13 + 32) = -65;
      v13 = &v11->isa + 3;
      v6 = 1;
      if (v12 <= v14)
      {
        v11 = v14;
        v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v13, 1, v5);
        v8 = -67;
      }

      else
      {
        v8 = -67;
        v11 = v14;
      }
    }

    else if (v12 <= v11)
    {
      v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), &v11->isa + 1, 1, v5);
    }

    v5[2] = v13;
    *(&v11->info + v5) = v8;
    --v4;
  }

  while (v4);
  if (a2 & 1) != 0 || ((v6 ^ 1))
  {
LABEL_18:
    v16 = v5[2];
    v17 = v5;
    v18 = _allASCII(_:)(v5 + 4, v16);
    v15 = specialized static String._uncheckedFromUTF8(_:isASCII:)(v17 + 32, v16, v18, v19);
    v17;
  }

  else
  {
    v5;
    return 0;
  }

  return v15;
}

uint64_t _sSS18_slowFromCodeUnits33_7FF00B9A6F2F6297245D04D183248ECBLL_8encoding6repairSS_Sb11repairsMadetSgx_q_mSbtSlRzs16_UnicodeEncodingR_0C4UnitQy_7ElementRtzr0_lFZSRys6UInt16VG_s0Q0O5UTF16OTt0t2g5(unsigned __int16 *a1, uint64_t a2, char a3)
{
  v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a2 & ~(a2 >> 63), 0, &_swiftEmptyArrayStorage);
  v7 = 0;
  v8 = 0;
  if (a1)
  {
    v9 = &a1[a2];
  }

  else
  {
    v9 = 0;
  }

  v50 = 0;
  v51 = 0;
  v10 = &type metadata for Unicode.UTF16.ForwardParser;
  while (v7)
  {
    v11 = v50;
    if ((v50 & 0xF800) != 0xD800)
    {
      v47 = v5;
      v24 = v10;
      v46 = v8;
      lazy protocol witness table accessor for type Unicode.UTF16.ForwardParser and conformance Unicode.UTF16.ForwardParser(v5, v8, v6);
      v45 = protocol witness for _UTFParser._buffer.modify in conformance Unicode.UTF8.ReverseParser();
      specialized RangeReplaceableCollection.remove(at:)(0);
      (v45)(v49, 0);
      v8 = v46;
      v10 = v24;
      v5 = v47;
      v11 = v11;
      v17 = 1;
      goto LABEL_25;
    }

    if (!a1)
    {
      goto LABEL_16;
    }

    v12 = a1;
    if (a1 == v9)
    {
      goto LABEL_16;
    }

LABEL_12:
    v13 = v7;
    if (v7 > 0x1Fu)
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    a1 = v12 + 1;
    v11 = (*v12 << v7) | ((-65535 << v7) - 1) & v11;
    v7 += 16;
    if (v13 <= 0xF && a1 != v9)
    {
      a1 = v12 + 2;
      v11 = (v12[1] << v7) | ((0x10000 << v13) - 1) & v11;
      v7 = v13 | 0x20;
    }

LABEL_16:
    v14 = v11 & 0xFC00FC00;
    if ((v11 & 0xFC00FC00) == 0xDC00D800)
    {
      v15 = 32;
    }

    else
    {
      v15 = 16;
    }

    v51 = v7 - v15;
    if (v14 == -603924480)
    {
      v16 = 32;
    }

    else
    {
      v16 = 16;
    }

    v50 = v11 >> v16;
    if (v14 == -603924480)
    {
      v17 = 0;
      goto LABEL_25;
    }

    v26 = v5[2];
    v25 = v5[3];
    v27 = v25 >> 1;
    v28 = (&v26->isa + 1);
    if (v25 >> 1 <= v26)
    {
      v35 = v10;
      v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), &v26->isa + 1, 1, v5);
      v10 = v35;
      v25 = v5[3];
      v27 = v25 >> 1;
    }

    v5[2] = v28;
    *(&v26->info + v5) = -17;
    v29 = (&v26->isa + 2);
    if (v27 <= v28)
    {
      v36 = v10;
      v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), &v26->isa + 2, 1, v5);
      v10 = v36;
      v29 = (&v26->isa + 2);
      v28 = (&v26->isa + 1);
      v25 = v5[3];
      v27 = v25 >> 1;
    }

    v5[2] = v29;
    *(&v28->info + v5) = -65;
    v30 = &v26->isa + 3;
    if (v27 <= v29)
    {
      v31 = v29;
      v32 = v10;
      v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v30, 1, v5);
      v10 = v32;
      v29 = v31;
    }

    v5[2] = v30;
    *(&v29->info + v5) = -67;
    v8 = 1;
LABEL_6:
    v7 = v51;
  }

  if (a1 && a1 != v9)
  {
    v11 = *a1;
    v12 = a1 + 1;
    if ((v11 & 0xF800) == 0xD800)
    {
      v11 |= HIWORD(v50) << 16;
      v7 = 16;
      ++a1;
      if (v12 == v9)
      {
        goto LABEL_16;
      }

      goto LABEL_12;
    }

    v17 = 1;
    ++a1;
LABEL_25:
    if (v11 < 0x80u)
    {
      v18 = (v11 + 1);
      if (!v18)
      {
        goto LABEL_6;
      }

      goto LABEL_27;
    }

    v23 = (v11 & 0x3F) << 8;
    if (v11 < 0x800u)
    {
      v18 = v23 + (v11 >> 6) + 33217;
      goto LABEL_27;
    }

    if ((v11 & 0xF800) == 0xD800)
    {
      if (v17)
      {
        if (v11 >= 0x80u)
        {
          v38 = (v11 & 0x3F) << 8;
          if (v11 >= 0x800u)
          {
            v18 = ((v11 >> 12) | ((v38 | (v11 >> 6) & 0x3F) << 8)) + 8487393;
          }

          else
          {
            v18 = (v11 >> 6) + v38 + 33217;
          }
        }

        else
        {
          v18 = v11 + 1;
        }

LABEL_27:
        v19 = v5[2];
        do
        {
          v20 = v5[3];
          if (v19 >= v20 >> 1)
          {
            v22 = v8;
            v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), &v19->isa + 1, 1, v5);
            v8 = v22;
            v10 = &type metadata for Unicode.UTF16.ForwardParser;
          }

          v5[2] = (&v19->isa + 1);
          *(&v19->info + v5) = v18 - 1;
          v19 = (v19 + 1);
          v21 = v18 >= 0x100;
          v18 >>= 8;
        }

        while (v21);
        goto LABEL_6;
      }

      v37 = ((v11 & 0x3FF) << 10) | HIWORD(v11) & 0x3FF;
      v33 = ((v37 + 0x10000) >> 4) & 0x3F00 | ((v37 + 0x10000) >> 18) | (((v37 >> 6) & 0x3F | (((v37 + 0x10000) & 0x3F) << 8)) << 16);
      v34 = -2122219023;
    }

    else
    {
      v33 = ((v23 | (v11 >> 6) & 0x3F) << 8) | (v11 >> 12);
      v34 = 8487393;
    }

    v18 = v33 + v34;
    goto LABEL_27;
  }

  if (a3 & 1) != 0 || ((v8 ^ 1))
  {
    v40 = v5[2];
    v41 = v5;
    v42 = _allASCII(_:)(v5 + 4, v40);
    v44 = specialized static String._uncheckedFromUTF8(_:isASCII:)(v41 + 32, v40, v42, v43);
    v41;
    return v44;
  }

  else
  {
    v5;
    return 0;
  }
}

uint64_t static String._slowFromCodeUnits<A, B>(_:encoding:repair:)(uint64_t a1, int a2, const char *a3, const char *a4, uint64_t a5, swift *a6)
{
  v71 = a2;
  v75 = a6;
  v78 = a4;
  swift_getAssociatedTypeWitness(0, a6, a4, &protocol requirements base descriptor for _UnicodeEncoding, associated type descriptor for _UnicodeEncoding.EncodedScalar);
  v12 = v11;
  Description = v11[-1].Description;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v70[-v13];
  v82 = type metadata accessor for Unicode.ParseResult(0, v12, v15, v16);
  MEMORY[0x1EEE9AC00](v82);
  v18 = &v70[-v17];
  swift_getAssociatedTypeWitness(0, a6, a4, &protocol requirements base descriptor for _UnicodeEncoding, associated type descriptor for _UnicodeEncoding.ForwardParser);
  v86 = v19;
  v73 = *(v19 - 8);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v85 = &v70[-v21];
  v83 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v70[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = *(a5 + 8);
  swift_getAssociatedTypeWitness(0, v24, a3, &protocol requirements base descriptor for Sequence, associated type descriptor for Sequence.Iterator);
  v84 = v25;
  v77 = *(v25 - 8);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = &v70[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v70[-v29];
  v31 = (*(v24 + 40))(a3, v24);
  v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v31 & ~(v31 >> 63), 0, &_swiftEmptyArrayStorage);
  (*(v83 + 2))(v23, a1, a3);
  (*(v24 + 32))(a3, v24);
  v33 = *(v77 + 16);
  v83 = v28;
  v72 = v30;
  v34 = v30;
  v35 = v84;
  v33(v28, v34, v84);
  v36 = v75;
  v37 = v86;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v75, v78, v86, &protocol requirements base descriptor for _UnicodeEncoding, associated conformance descriptor for _UnicodeEncoding._UnicodeEncoding.ForwardParser: _UnicodeParser);
  (*(AssociatedConformanceWitness + 24))(v37, AssociatedConformanceWitness);
  v80 = *(AssociatedConformanceWitness + 32);
  v81 = AssociatedConformanceWitness + 32;
  v79 = swift_getAssociatedConformanceWitness(v24, a3, v35, &protocol requirements base descriptor for Sequence, associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v76 = 0;
  v39 = (Description + 32);
  v40 = (Description + 8);
  Description = v36 + 88;
LABEL_2:
  while (1)
  {
    v41 = v78;
    while (1)
    {
      v80(v83, v84, v79, v86, AssociatedConformanceWitness);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v18, v82);
      if (EnumCaseMultiPayload)
      {
        break;
      }

      (*v39)(v14, v18, v12);
      if (v41 == &type metadata for Unicode.UTF16)
      {
        if (v12 != __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_UIntBufferVys6UInt16VGMd, _ss11_UIntBufferVys6UInt16VGMR))
        {
          goto LABEL_42;
        }

        v43 = *v14;
        v44 = *v14;
        if (v44 > 0x7F)
        {
          v51 = (*v14 & 0x3F) << 8;
          if (v44 < 0x800)
          {
            v52 = v44 >> 6;
            (*v40)(v14, v12);
            v53 = v51 + v52;
            goto LABEL_23;
          }

          if ((*v14 & 0xF800) == 0xD800)
          {
LABEL_31:
            v58 = (*(v75 + 11))(v14);
            (*v40)(v14, v12);
            if (v58 >= 0x80)
            {
              v59 = (v58 & 0x3F) << 8;
              if (v58 >= 0x800)
              {
                v60 = (v59 | (v58 >> 6) & 0x3F) << 8;
                v61 = (((v60 | (v58 >> 12) & 0x3F) << 8) | (v58 >> 18)) - 2122219023;
                v62 = (v58 >> 12) + v60 + 8487393;
                if (HIWORD(v58))
                {
                  v45 = v61;
                }

                else
                {
                  v45 = v62;
                }
              }

              else
              {
                v53 = (v58 >> 6) + v59;
LABEL_23:
                v45 = v53 + 33217;
              }
            }

            else
            {
              v45 = v58 + 1;
            }
          }

          else
          {
            v57 = (v51 | (v44 >> 6) & 0x3F) << 8;
            (*v40)(v14, v12);
            v45 = (v57 & 0xFFFFFFF0 | (v43 >> 12)) + 8487393;
          }

LABEL_24:
          v54 = v32[2];
          do
          {
            v55 = v32[3];
            if (v54 >= v55 >> 1)
            {
              v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v55 > 1), &v54->isa + 1, 1, v32);
            }

            v32[2] = (&v54->isa + 1);
            *(&v54->info + v32) = v45 - 1;
            v54 = (v54 + 1);
            v56 = v45 >= 0x100;
            v45 >>= 8;
          }

          while (v56);
          goto LABEL_2;
        }

        (*v40)(v14, v12);
        v45 = (v43 + 1);
        if (v43 != 0xFF)
        {
          goto LABEL_24;
        }
      }

      else
      {
        if (v41 != &type metadata for Unicode.UTF8)
        {
          goto LABEL_31;
        }

        if (v12 != &type metadata for _ValidUTF8Buffer)
        {
LABEL_42:
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v45 = *v14;
        (*v40)(v14);
        v41 = v78;
        if (v45)
        {
          goto LABEL_24;
        }
      }
    }

    if (EnumCaseMultiPayload == 2)
    {
      break;
    }

    v47 = v32[2];
    v46 = v32[3];
    v48 = v46 >> 1;
    v49 = (&v47->isa + 1);
    if (v46 >> 1 <= v47)
    {
      v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), &v47->isa + 1, 1, v32);
      v46 = v32[3];
      v48 = v46 >> 1;
    }

    v32[2] = v49;
    *(&v47->info + v32) = -17;
    v50 = (&v47->isa + 2);
    if (v48 <= v49)
    {
      v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), &v47->isa + 2, 1, v32);
      v46 = v32[3];
      v48 = v46 >> 1;
    }

    v32[2] = v50;
    *(&v49->info + v32) = -65;
    if (v48 <= v50)
    {
      v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), &v47->isa + 3, 1, v32);
    }

    v32[2] = (&v47->isa + 3);
    *(&v50->info + v32) = -67;
    v76 = 1;
  }

  (*(v73 + 8))(v85, v86);
  v63 = *(v77 + 8);
  v64 = v84;
  v63(v83, v84);
  v63(v72, v64);
  if (v76 & 1) == 0 || (v71)
  {
    v66 = v32[2];
    v67 = _allASCII(_:)(v32 + 4, v66);
    v69 = specialized static String._uncheckedFromUTF8(_:isASCII:)((v32 + 4), v66, v67, v68);
    v32;
    return v69;
  }

  else
  {
    v32;
    return 0;
  }
}

uint64_t closure #1 in static String._fromCodeUnits<A, B>(_:encoding:repair:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (a1)
  {
    v5 = a2 - a1;
  }

  else
  {
    v5 = 0;
  }

  if (_allASCII(_:)(a1, v5))
  {
    result = specialized static String._uncheckedFromASCII(_:)(a1, v5, v6);
  }

  else
  {
    result = 0;
    v8 = 0;
  }

  *a3 = result;
  a3[1] = v8;
  return result;
}

uint64_t UnsafeRawBufferPointer.bindMemory<A>(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return UnsafeRawBufferPointer.bindMemory<A>(to:)(a1, a2, a3, a4);
}

{
  if (a2)
  {
    v4 = *(*(a4 - 8) + 72);
    if (!v4 || a3 - a2 == 0x8000000000000000 && v4 == -1)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if ((a3 - a2) / v4 < 0)
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }
  }

  return a2;
}

uint64_t static String._fromInvalidUTF16(_:)(char *a1, uint64_t a2)
{
  result = _sSS14_fromCodeUnits_8encoding6repairSS_Sb11repairsMadetSgx_q_mSbtSlRzs16_UnicodeEncodingR_0B4UnitQy_7ElementRtzr0_lFZSRys6UInt16VG_s0H0O5UTF16OTt0t2g5(a1, a2, 1);
  if (!v3)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

void *static UnsafeMutableBufferPointer.allocate(capacity:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  v4 = *(v3 + 72);
  v5 = v4 * a1;
  if ((v4 * a1) >> 64 != v5 >> 63)
  {
    __break(1u);
    goto LABEL_8;
  }

  v6 = *(v3 + 80);
  if (v6 > 0xF)
  {
    v7 = v6 + 1;
  }

  else
  {
    v7 = 0;
  }

  result = swift_slowAlloc(v5, v7 - 1);
  if (a1 < 0)
  {
LABEL_8:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

uint64_t specialized Slice.deinitialize<A>()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = a3 + a1;
  if (a3)
  {
    v5 = result;
  }

  else
  {
    v5 = 0;
  }

  v6 = a2 - a1;
  if (v6 < 0)
  {
    goto LABEL_10;
  }

  if (v6)
  {
    if (v5)
    {
      return result;
    }

LABEL_10:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (!v5)
  {
    return 0;
  }

  return result;
}

Swift::_StringObject::CountAndFlags __swiftcall _StringObject.CountAndFlags.init(count:isASCII:isNFC:isNativelyStored:isTailAllocated:)(Swift::Int count, Swift::Bool isASCII, Swift::Bool isNFC, Swift::Bool isNativelyStored, Swift::Bool isTailAllocated)
{
  v5._storage = count | 0x8000000000000000;
  if (!isASCII)
  {
    v5._storage = count;
  }

  if (isNFC)
  {
    v5._storage |= 0x4000000000000000;
  }

  if (isNativelyStored)
  {
    v5._storage |= 0x2000000000000000;
  }

  if (isTailAllocated)
  {
    return (v5._storage | 0x1000000000000000);
  }

  else
  {
    return v5;
  }
}

uint64_t _StringGuts.withFastCChar<A>(_:)@<X0>(id a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = a1;
  if ((a4 & 0x2000000000000000) != 0)
  {
    v13[0] = a3;
    v13[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    return (a1)(v13, HIBYTE(a4) & 0xF);
  }

  else
  {
    if ((a3 & 0x1000000000000000) == 0)
    {
      v12[6] = a6;
      v12[7] = a5;
      a1 = _StringObject.sharedUTF8.getter(a3, a4);
    }

    MEMORY[0x1EEE9AC00](a1);
    v12[2] = v8;
    v12[3] = v7;
    v12[4] = a2;
    return _sSRsRi_zrlE17withMemoryRebound2to_qd_1_qd__m_qd_1_SRyqd__Gqd_0_YKXEtqd_0_YKs5ErrorRd_0_Ri_d__Ri_d_1_r1_lFSRyxGq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lys4Int8VsAD_pqd_1_Isgyrzr_SRys5UInt8VGqd_1_sAD_pAIRszAGRsd__sAD_pRsd_0_Ri_d_1_r_1_lIetMgyrzo_Tpq5(thunk for @callee_guaranteed (@unowned UnsafeBufferPointer<Int8>) -> (@out A, @error @owned Error)partial apply, v12, v9, v10);
  }
}

BOOL specialized _StringGuts._slowWithCString<A>(_:)(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t (*a4)(__objc2_class **, uint64_t))
{
  v6 = String.utf8CString.getter(a1, a2);
  v7 = *(v6 + 32);
  v9 = (v7 > 0x20 || ((0x100003E01uLL >> v7) & 1) == 0) && (v8 = a4(v6 + 4, a3)) != 0 && *v8 == 0;
  v6;
  return v9;
}

uint64_t _StringGuts._slowWithCString<A>(_:)(void (*a1)(__objc2_class **), uint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = String.utf8CString.getter(a3, a4);
  a1(v5 + 4);
  return v5;
}

uint64_t _StringGuts.copyUTF8(into:)(char *__dst, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    return _StringGuts._foreignCopyUTF8(into:)(__dst, a2, a3, a4);
  }

  if ((a4 & 0x2000000000000000) == 0)
  {
    if ((a3 & 0x1000000000000000) != 0)
    {
      v5 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v6 = a3 & 0xFFFFFFFFFFFFLL;
      if ((a3 & 0xFFFFFFFFFFFFLL) > a2)
      {
        return 0;
      }
    }

    else
    {
      v5 = _StringObject.sharedUTF8.getter(a3, a4);
      v6 = v8;
      if (v8 > a2)
      {
        return 0;
      }
    }

    specialized UnsafeMutablePointer.initialize(from:count:)(v5, v6, __dst);
    return v6;
  }

  v6 = HIBYTE(a4) & 0xF;
  v10[0] = a3;
  v10[1] = a4 & 0xFFFFFFFFFFFFFFLL;
  if (v6 > a2)
  {
    return 0;
  }

  specialized UnsafeMutablePointer.initialize(from:count:)(v10, HIBYTE(a4) & 0xF, __dst);
  return v6;
}

uint64_t _StringGuts._foreignCopyUTF8(into:)(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = (a4 & 0xFFFFFFFFFFFFFFFLL);
  v9 = _sSwySwSryxGclufCs5UInt8V_Tt0g5(a1, a2);
  v11 = _NSStringCopyBytes(_:encoding:into:)(v8, 4, v9, v10);
  if ((v12 & 1) == 0)
  {
    return v11;
  }

  v13 = 0;
  if ((a4 & 0x2000000000000000) != 0)
  {
    v14 = HIBYTE(a4) & 0xF;
  }

  else
  {
    v14 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v14)
  {
    v15 = (a3 >> 59) & 1;
    if ((a4 & 0x1000000000000000) == 0)
    {
      LOBYTE(v15) = 1;
    }

    v16 = 4 << v15;
    v28 = v8 + 32;
    v17 = 15;
    v18 = a2 & ~(a2 >> 63);
    do
    {
      v19 = v17 & 0xC;
      rawBits = v17;
      if (v19 == v16)
      {
        v24 = v17;
        rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(v17)._rawBits;
        v17 = v24;
      }

      v21 = rawBits >> 16;
      if (rawBits >> 16 >= v14)
      {
LABEL_30:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      if ((a4 & 0x1000000000000000) != 0)
      {
        v27._rawBits = v17;
        v23 = String.UTF8View._foreignSubscript(position:)(rawBits);
        v17 = v27._rawBits;
        if (v19 != v16)
        {
          goto LABEL_18;
        }
      }

      else
      {
        if ((a4 & 0x2000000000000000) != 0)
        {
          v29[0] = a3;
          v29[1] = a4 & 0xFFFFFFFFFFFFFFLL;
          v22 = v29;
        }

        else
        {
          v22 = v28;
          if ((a3 & 0x1000000000000000) == 0)
          {
            v26._rawBits = v17;
            v22 = _StringObject.sharedUTF8.getter(a3, a4);
            v17 = v26._rawBits;
          }
        }

        v23 = *(v22 + v21);
        if (v19 != v16)
        {
LABEL_18:
          if ((a4 & 0x1000000000000000) == 0)
          {
            goto LABEL_19;
          }

          goto LABEL_22;
        }
      }

      v17 = _StringGuts._slowEnsureMatchingEncoding(_:)(v17)._rawBits;
      if ((a4 & 0x1000000000000000) == 0)
      {
LABEL_19:
        v17 = (v17 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_24;
      }

LABEL_22:
      if (v14 <= v17 >> 16)
      {
        goto LABEL_30;
      }

      v17 = String.UTF8View._foreignIndex(after:)(v17)._rawBits;
LABEL_24:
      if (v18 == v13)
      {
        return 0;
      }

      *(a1 + v13++) = v23;
    }

    while (4 * v14 != v17 >> 14);
  }

  return v13;
}

Swift::String::Index __swiftcall _StringGuts._slowEnsureMatchingEncoding(_:)(Swift::String::Index a1)
{
  v3 = v2;
  v4 = v1;
  rawBits = a1._rawBits;
  v6 = a1._rawBits >> 16;
  v7 = LOWORD(a1._rawBits) >> 14;
  if ((v3 & 0x1000000000000000) == 0 || (v4 & 0x800000000000000) != 0)
  {
    v13._rawBits = String.UTF16View.index(_:offsetBy:)(15, v6)._rawBits;
    v14 = v13._rawBits + (v7 << 16);
    v15 = v13._rawBits & 0xFFFFFFFFFFFFFFFCLL | rawBits & 3;
    v16 = v14 & 0xFFFFFFFFFFFF0000;
    if (!v7)
    {
      v16 = v15;
    }

    return (v16 | 4);
  }

  else
  {
    v8._rawBits = String.UTF8View._foreignIndex(_:offsetBy:)(15, v6)._rawBits;
    v9 = v8._rawBits + (v7 << 16);
    v10 = v8._rawBits & 0xFFFFFFFFFFFFFFFCLL | rawBits & 3;
    v11 = v9 & 0xFFFFFFFFFFFF0000;
    if (!v7)
    {
      v11 = v10;
    }

    return (v11 | 8);
  }
}

Swift::String::Index __swiftcall String.UTF16View.index(_:offsetBy:)(Swift::String::Index _, Swift::Int offsetBy)
{
  v4 = (v2 >> 59) & 1;
  if ((v3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v4) = 1;
  }

  if ((_._rawBits & 0xC) == 4 << v4)
  {
    v9 = offsetBy;
    v10 = v2;
    v11 = v3;
    _._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(_)._rawBits;
    offsetBy = v9;
    v2 = v10;
    v3 = v11;
  }

  v5 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v5 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v5 < _._rawBits >> 14)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if ((v3 & 0x1000000000000000) == 0)
  {
    v6 = (v3 >> 62) & 1;
    if ((v3 & 0x2000000000000000) == 0)
    {
      LODWORD(v6) = v2 < 0;
    }

    if (v6 == 1)
    {
      if (!__OFADD__(offsetBy, _._rawBits >> 16))
      {
        return (((offsetBy + (_._rawBits >> 16)) << 16) | 0xD);
      }

      __break(1u);
    }

    else if ((_._rawBits & 0xC001) != 0)
    {
      if (_._rawBits >= 0x4000)
      {
LABEL_26:
        if ((offsetBy & 0x8000000000000000) == 0)
        {
          if (offsetBy >= 0x40)
          {
            goto LABEL_28;
          }

          return (specialized BidirectionalCollection._index(_:offsetBy:)(_._rawBits, offsetBy, v2, v3) | 4);
        }

        v8 = 64;
LABEL_33:
        if (v8 <= -offsetBy)
        {
LABEL_28:
          v16 = offsetBy;
          v17 = String.UTF16View._nativeGetOffset(for:)(_);
          v18 = __OFADD__(v17, v16);
          result._rawBits = v17 + v16;
          if (v18)
          {
            __break(1u);
          }

          else
          {

            return String.UTF16View._nativeGetIndex(for:)(result._rawBits);
          }

          return result;
        }

        return (specialized BidirectionalCollection._index(_:offsetBy:)(_._rawBits, offsetBy, v2, v3) | 4);
      }

LABEL_16:
      if ((offsetBy & 0x8000000000000000) == 0)
      {
        if (offsetBy >= 0x20)
        {
          goto LABEL_28;
        }

        return (specialized BidirectionalCollection._index(_:offsetBy:)(_._rawBits, offsetBy, v2, v3) | 4);
      }

      v8 = 32;
      goto LABEL_33;
    }

    rawBits = _._rawBits;
    v19 = offsetBy;
    v13 = v2;
    v14 = v3;
    v15._rawBits = _StringGuts.scalarAlignSlow(_:)(_)._rawBits;
    offsetBy = v19;
    v2 = v13;
    v3 = v14;
    _._rawBits = rawBits & 0xC | v15._rawBits & 0xFFFFFFFFFFFFFFF3 | 1;
    if (_._rawBits >= 0x4000)
    {
      goto LABEL_26;
    }

    goto LABEL_16;
  }

  return String.UTF16View._foreignIndex(_:offsetBy:)(_, offsetBy);
}

Swift::String::Index __swiftcall String.UTF8View.index(_:offsetBy:)(Swift::String::Index _, Swift::Int offsetBy)
{
  v4 = (v2 >> 59) & 1;
  if ((v3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v4) = 1;
  }

  if ((_._rawBits & 0xC) == 4 << v4)
  {
    v7 = offsetBy;
    v8 = v2;
    v9 = v3;
    _._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(_)._rawBits;
    offsetBy = v7;
    v2 = v8;
    v3 = v9;
    if ((v9 & 0x1000000000000000) == 0)
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

atomic_ullong *_StringGuts._getOrAllocateAssociatedStorage()(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = (a2 & 0xFFFFFFFFFFFFFFFLL);
  v5 = swift_unknownObjectRetain((a2 & 0xFFFFFFFFFFFFFFFLL));
  AssociatedObject = objc_getAssociatedObject(v5, &unk_1EEEBEB30);
  swift_unknownObjectRelease(v4);
  if (!AssociatedObject)
  {
    v7 = swift_unknownObjectRetain(v4);
    objc_sync_enter(v7);
    v8 = swift_unknownObjectRetain(v4);
    AssociatedObject = objc_getAssociatedObject(v8, &unk_1EEEBEB30);
    swift_unknownObjectRelease(v4);
    if (AssociatedObject)
    {
      AssociatedObject;
LABEL_32:
      AssociatedObject;
      objc_sync_exit(v4);
      AssociatedObject;
      swift_unknownObjectRelease(v4);
      return AssociatedObject;
    }

    v42 = v4;
    v46 = 0;
    v47 = 0xE000000000000000;
    if ((v2 & 0x2000000000000000) != 0)
    {
      v9 = HIBYTE(v2) & 0xF;
    }

    else
    {
      v9 = a1 & 0xFFFFFFFFFFFFLL;
    }

    if (v9 + (v9 >> 1) <= 0x10)
    {
      v10 = 16;
    }

    else
    {
      v10 = v9 + (v9 >> 1);
    }

    String.reserveCapacity(_:)(v10);
    if (!v9)
    {
LABEL_30:
      v39 = v47;
      if ((v46 & ~v47 & 0x2000000000000000) == 0)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      AssociatedObject = (v47 & 0xFFFFFFFFFFFFFFFLL);
      (v47 & 0xFFFFFFFFFFFFFFFLL);
      v39;
      v4 = v42;
      v40 = swift_unknownObjectRetain(v42);
      objc_setAssociatedObject(v40, &unk_1EEEBEB30, (v39 & 0xFFFFFFFFFFFFFFFLL), 1);
      swift_unknownObjectRelease(v42);
      goto LABEL_32;
    }

    v12 = 0;
    v43 = v2 & 0xFFFFFFFFFFFFFFLL;
    v44 = v2;
    while (1)
    {
      if ((v2 & 0x1000000000000000) != 0)
      {
        v17 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)((v12 << 16));
        scalarLength = v17.scalarLength;
        value = v17._0._value;
      }

      else
      {
        if ((v2 & 0x2000000000000000) != 0)
        {
          v45[0] = a1;
          v45[1] = v43;
          v14 = v45;
        }

        else
        {
          v14 = v42 + 4;
          if ((a1 & 0x1000000000000000) == 0)
          {
            v14 = _StringObject.sharedUTF8.getter(a1, v2);
          }
        }

        value = _decodeScalar(_:startingAt:)(v14, v11, v12);
      }

      v18 = scalarLength;
      v19 = specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(value);
      v29 = v20;
      v30 = v47;
      if ((v47 & 0x2000000000000000) == 0)
      {
        break;
      }

      if ((v20 & 0x2000000000000000) == 0)
      {
        goto LABEL_13;
      }

      v31 = v9;
      v32 = a1;
      v33 = v19;
      v34 = specialized _SmallString.init(_:appending:)(v46, v47, v19, v20);
      if ((v36 & 1) == 0)
      {
        v37 = v34;
        v38 = v35;
        v30;
        v29;
        v46 = v37;
        v47 = v38;
        a1 = v32;
        v9 = v31;
        v2 = v44;
        goto LABEL_15;
      }

      v13 = HIBYTE(v29) & 0xF;
      v19 = v33;
      a1 = v32;
      v9 = v31;
      v2 = v44;
LABEL_14:
      _StringGuts.append(_:)(v19, v29, 0, v13, v21, v22, v23, v24, v25, v26, v27, v28);
      v29;
LABEL_15:
      v12 += v18;
      if (v12 >= v9)
      {
        goto LABEL_30;
      }
    }

    if ((v20 & 0x2000000000000000) != 0)
    {
      v13 = HIBYTE(v20) & 0xF;
      goto LABEL_14;
    }

LABEL_13:
    v13 = v19 & 0xFFFFFFFFFFFFLL;
    goto LABEL_14;
  }

  AssociatedObject;
  return AssociatedObject;
}

id _StringGuts.startASCII.getter(uint64_t a1, unint64_t a2)
{
  if ((a1 & 0x1000000000000000) != 0)
  {
    return ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  result = _StringObject.sharedUTF8.getter(a1, a2);
  if (!result)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  return result;
}

uint64_t _StringGuts._isLargeZeroTerminatedContiguousUTF8.getter(unint64_t a1, uint64_t a2)
{
  if ((a2 & 0x3000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return (a1 >> 60) & 1;
  }
}

id _StringGuts._largeContiguousUTF8CodeUnits.getter(uint64_t a1, unint64_t a2)
{
  if ((a1 & 0x1000000000000000) != 0)
  {
    return ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    return _StringObject.sharedUTF8.getter(a1, a2);
  }
}

__objc2_class **_persistCString(_:)(__objc2_class **result)
{
  if (result)
  {
    v1 = result;
    v2 = _swift_stdlib_strlen(result);
    v3 = __OFADD__(v2, 1);
    result = (v2 + 1);
    if (v3)
    {
      __break(1u);
    }

    else
    {
      return _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCs4Int8V_Tt1g5026_ss15_persistCStringySays4F31VGSgSPyACGSgFySryACGz_SiztXEfU_SPyAFGSiTf1nc_n(result, v1, result);
    }
  }

  return result;
}

Swift::tuple_Unicode_Scalar_scalarLength_Int __swiftcall _StringGuts.foreignErrorCorrectedScalar(startingAt:)(Swift::String::Index startingAt)
{
  v3 = v2;
  v4 = v1;
  v5 = startingAt._rawBits >> 16;
  v6 = [v2 & 0xFFFFFFFFFFFFFFFLL characterAtIndex_];
  if ((v6 & 0xF800 | 0x400) == 0xDC00)
  {
    if ((v6 & 0xFC00) != 0xDC00)
    {
      v8 = HIBYTE(v3) & 0xF;
      if ((v3 & 0x2000000000000000) == 0)
      {
        v8 = v4 & 0xFFFFFFFFFFFFLL;
      }

      if (v5 + 1 != v8)
      {
        v9 = v6;
        v10 = [v3 & 0xFFFFFFFFFFFFFFFLL characterAtIndex_];
        if ((v10 & 0xFC00) == 0xDC00)
        {
          v6 = (v10 & 0x3FF | ((v9 & 0x3FF) << 10)) + 0x10000;
          v7 = 2;
          goto LABEL_10;
        }
      }
    }

    v6 = 65533;
  }

  v7 = 1;
LABEL_10:
  result.scalarLength = v7;
  result._0._value = v6;
  return result;
}

uint64_t _StringGuts.nativeCapacity.getter(uint64_t a1, uint64_t a2)
{
  if ((a1 & ~a2 & 0x2000000000000000) != 0)
  {
    return (*((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10) & 0xFFFFFFFFFFFFLL) - 1;
  }

  else
  {
    return 0;
  }
}

unint64_t _StringGuts.nativeUnusedCapacity.getter(uint64_t a1, uint64_t a2)
{
  if ((a1 & ~a2 & 0x2000000000000000) != 0)
  {
    return (*((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10) & 0xFFFFFFFFFFFFLL) + (~*((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18) | 0xFFFF000000000000);
  }

  else
  {
    return 0;
  }
}

uint64_t _StringGuts.uniqueNativeCapacity.getter()
{
  v1 = v0[1];
  if ((*v0 & ~v1 & 0x2000000000000000) != 0 && (v2 = v1 & 0xFFFFFFFFFFFFFFFLL, swift_isUniquelyReferenced_nonNull_native(v1 & 0xFFFFFFFFFFFFFFFLL)))
  {
    return (*(v2 + 16) & 0xFFFFFFFFFFFFLL) - 1;
  }

  else
  {
    return 0;
  }
}

Swift::Void __swiftcall _StringGuts.reserveCapacity(_:)(Swift::Int a1)
{
  if (a1 >= 16)
  {
    v2 = v1;
    v4 = _StringGuts.uniqueNativeCapacity.getter();
    if ((v5 & 1) != 0 || v4 < a1)
    {
      v6 = _StringGuts.uniqueNativeCapacity.getter();
      if (v7)
      {
        v8 = v1[1];
        if ((v8 & 0x1000000000000000) != 0)
        {
          v9 = String.UTF8View._foreignCount()();
        }

        else if ((v8 & 0x2000000000000000) != 0)
        {
          v9 = HIBYTE(v8) & 0xF;
        }

        else
        {
          v9 = *v1 & 0xFFFFFFFFFFFFLL;
        }
      }

      else
      {
        v9 = 2 * v6;
      }

      if (v9 <= a1)
      {
        v10 = a1;
      }

      else
      {
        v10 = v9;
      }

      v11 = v1[1];
      if ((v11 & 0x1000000000000000) != 0)
      {

        _StringGuts._foreignGrow(_:)(v10);
      }

      else
      {
        v12 = *v1;
        if ((v11 & 0x2000000000000000) != 0)
        {
          v21[0] = *v2;
          v21[1] = v11 & 0xFFFFFFFFFFFFFFLL;
          v16 = HIBYTE(v11) & 0xF | 0xC000000000000000;
          if ((v11 & 0x4000000000000000) == 0)
          {
            v16 = HIBYTE(v11) & 0xF;
          }

          v17 = v16 | 0x3000000000000000;
          v15 = _allocateStringStorage(codeUnitCapacity:)(v10);
          *(v15 + 16) = v18;
          *(v15 + 24) = v17;
          if (v18 < 0)
          {
            *__StringStorage._breadcrumbsAddress.getter() = 0;
            v17 = *(v15 + 24);
          }

          *(v15 + 32 + (v17 & 0xFFFFFFFFFFFFLL)) = 0;
          specialized UnsafeMutablePointer.initialize(from:count:)(v21, HIBYTE(v11) & 0xF, (v15 + 32));
        }

        else
        {
          if ((v12 & 0x1000000000000000) != 0)
          {
            v13 = ((v11 & 0xFFFFFFFFFFFFFFFLL) + 32);
            v14 = v12 & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            v20 = v10;
            v13 = _StringObject.sharedUTF8.getter(*v2, v2[1]);
            v10 = v20;
          }

          v15 = specialized static __StringStorage.create(initializingFrom:codeUnitCapacity:isASCII:)(v13, v14, v10, v12 < 0);
        }

        v19 = *(v15 + 24);
        v11;
        *v2 = v19;
        v2[1] = v15;
      }
    }
  }
}

void _StringGuts._foreignGrow(_:)(int64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1 > 15)
  {
    v8 = specialized static String._fromLargeUTF8Repairing(uninitializedCapacity:initializingWith:)(a1, v1);
    v12 = v13;
  }

  else
  {
    v15 = xmmword_18071DD30;
    if (a1 < 0)
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v2 = _StringGuts._foreignCopyUTF8(into:)(&v15, a1, *v1, v1[1]);
    if (v3)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000029, 0x8000000180671E50, "Swift/StringGutsRangeReplaceable.swift", 0x26uLL, 2, 0x91uLL);
    }

    if (v2 <= 0)
    {
      if (v2)
      {
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v8 = 0;
      v12 = 0xE000000000000000;
    }

    else
    {
      v4 = 8;
      if (v2 <= 8)
      {
        v5 = 8;
      }

      else
      {
        v5 = v2;
      }

      v6 = 56 * v5;
      if (v2 < 8)
      {
        v4 = v2;
      }

      v7 = 0xFFFFFFFFFFFFFFFFLL >> (v6 & 0x38);
      if (v2 <= 8)
      {
        v7 = 0;
      }

      v8 = v15 & (0xFFFFFFFFFFFFFFFFLL >> ((56 * v4) & 0x38));
      v9 = *(&v15 + 1) & v7;
      v10 = ((*(&v15 + 1) & v7 | v8) & 0x8080808080808080) == 0;
      v11 = 0xA000000000000000;
      if (v10)
      {
        v11 = 0xE000000000000000;
      }

      v12 = v11 | (v2 << 56) | v9;
      if ((v12 & 0x4000000000000000) == 0)
      {
        *&v15 = v8;
        *(&v15 + 1) = v9 & 0xFFFFFFFFFFFFFFLL;
        closure #2 in String.init(_uninitializedCapacity:initializingUTF8With:)(&v15, HIBYTE(v12) & 0xF, v14);
        v8 = v14[0];
        v12 = v14[1];
      }
    }
  }

  v1[1];
  *v1 = v8;
  v1[1] = v12;
}

void _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(int64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *v2;
  v6 = v3[1];
  v7 = _StringGuts.nativeUnusedCapacity.getter(v5, v6) < a2;
  v9 = v8 | v7;
  if ((v5 & ~v6 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v6 & 0xFFFFFFFFFFFFFFFLL))
  {
    if ((v9 & 1) == 0)
    {
      return;
    }

    goto LABEL_6;
  }

  if (v9)
  {
LABEL_6:
    v10 = 2 * _StringGuts.nativeCapacity.getter(v5, v6);
    if (v11)
    {
      v10 = 0;
    }

    if (v10 > a1)
    {
      a1 = v10;
    }
  }

  v12 = _StringGuts.uniqueNativeCapacity.getter();
  if (v13)
  {
    v14 = v3[1];
    if ((v14 & 0x1000000000000000) != 0)
    {
      v15 = String.UTF8View._foreignCount()();
    }

    else if ((v14 & 0x2000000000000000) != 0)
    {
      v15 = HIBYTE(v14) & 0xF;
    }

    else
    {
      v15 = *v3 & 0xFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v15 = 2 * v12;
  }

  if (v15 <= a1)
  {
    v16 = a1;
  }

  else
  {
    v16 = v15;
  }

  v17 = v3[1];
  if ((v17 & 0x1000000000000000) != 0)
  {

    _StringGuts._foreignGrow(_:)(v16);
  }

  else
  {
    v18 = *v3;
    if ((v17 & 0x2000000000000000) != 0)
    {
      v26[0] = *v3;
      v26[1] = v17 & 0xFFFFFFFFFFFFFFLL;
      v22 = HIBYTE(v17) & 0xF | 0xC000000000000000;
      if ((v17 & 0x4000000000000000) == 0)
      {
        v22 = HIBYTE(v17) & 0xF;
      }

      v23 = v22 | 0x3000000000000000;
      v21 = _allocateStringStorage(codeUnitCapacity:)(v16);
      *(v21 + 16) = v24;
      *(v21 + 24) = v23;
      if (v24 < 0)
      {
        *__StringStorage._breadcrumbsAddress.getter() = 0;
        v23 = *(v21 + 24);
      }

      *(v21 + 32 + (v23 & 0xFFFFFFFFFFFFLL)) = 0;
      specialized UnsafeMutablePointer.initialize(from:count:)(v26, HIBYTE(v17) & 0xF, (v21 + 32));
    }

    else
    {
      if ((v18 & 0x1000000000000000) != 0)
      {
        v19 = ((v17 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v20 = v18 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v19 = _StringObject.sharedUTF8.getter(*v3, v3[1]);
      }

      v21 = specialized static __StringStorage.create(initializingFrom:codeUnitCapacity:isASCII:)(v19, v20, v16, v18 < 0);
    }

    v25 = *(v21 + 24);
    v17;
    *v3 = v25;
    v3[1] = v21;
  }
}

void _StringGuts.append(_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, int8x16_t a12)
{
  v13 = v12;
  if ((a2 & 0x1000000000000000) != 0)
  {
    v69 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v69 = a1 & 0xFFFFFFFFFFFFLL;
    }

    if (v69 < (a4 & 0xFFFFFFFFFFFFuLL))
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v70 = 3;
    if ((a3 & 0xFFFFFFFFFFFFLL) != 0)
    {
      v70 = 1;
    }

    v18 = String.UTF8View.distance(from:to:)((v70 | (a3 << 16)), ((a4 << 16) | 1));
    v20 = *v12;
    v19 = v12[1];
    if ((v19 & 0x1000000000000000) == 0)
    {
      goto LABEL_4;
    }

LABEL_49:
    v71 = String.UTF8View._foreignCount()();
    v22 = v71 + v18;
    if (!__OFADD__(v71, v18))
    {
      goto LABEL_8;
    }

    goto LABEL_51;
  }

  v18 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_52:
    __break(1u);
    goto LABEL_55;
  }

  v20 = *v12;
  v19 = v12[1];
  if ((v19 & 0x1000000000000000) != 0)
  {
    goto LABEL_49;
  }

LABEL_4:
  if ((v19 & 0x2000000000000000) != 0)
  {
    v21 = HIBYTE(v19) & 0xF;
  }

  else
  {
    v21 = v20 & 0xFFFFFFFFFFFFLL;
  }

  v22 = v21 + v18;
  if (__OFADD__(v21, v18))
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

LABEL_8:
  if ((v20 & ~v19 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v19 & 0xFFFFFFFFFFFFFFFLL))
  {
    v23 = _StringGuts.nativeUnusedCapacity.getter(v20, v19);
    if (v24)
    {
      goto LABEL_59;
    }

    if (v22 > 15 || (v19 & 0x2000000000000000) == 0 && v23 >= v18)
    {
      goto LABEL_14;
    }

LABEL_22:
    v34 = _StringGuts._convertedToSmall()(v20, v19, a5, a6, a7, a8, a9, a10, a11, a12);
    v36 = v35;
    a2;
    v37 = Substring.init(_:)(a1, a2, a3, a4);
    v39 = v38;
    v42 = Substring.description.getter(v37, v40, v41, v38);
    v44 = v43;
    v39;
    v53 = _StringGuts._convertedToSmall()(v42, v44, v45, v46, v47, v48, v49, v50, v51, v52);
    v55 = v54;
    v44;
    v56 = HIBYTE(v36) & 0xF;
    v57 = HIBYTE(v55) & 0xF;
    v58 = v57 + v56;
    if (v57 + v56 > 0xF)
    {
      goto LABEL_59;
    }

    if (v57)
    {
      v59 = 0;
      v60 = 0;
      v61 = 8 * v56;
      v62 = 8 * v57;
      do
      {
        v63 = v55 >> (v59 & 0x38);
        if (v60 < 8)
        {
          v63 = v53 >> v59;
        }

        v64 = (v63 << (v61 & 0x38)) | ((-255 << (v61 & 0x38)) - 1) & v36;
        v65 = (v63 << v61) | ((-255 << v61) - 1) & v34;
        if (v56 <= 7)
        {
          v34 = v65;
        }

        else
        {
          v36 = v64;
        }

        ++v56;
        v61 += 8;
        v59 += 8;
        ++v60;
      }

      while (v62 != v59);
    }

    v19;
    v66 = 0xA000000000000000;
    if (!(v34 & 0x8080808080808080 | v36 & 0x80808080808080))
    {
      v66 = 0xE000000000000000;
    }

    *v13 = v34;
    v13[1] = v66 & 0xFF00000000000000 | (v58 << 56) | v36 & 0xFFFFFFFFFFFFFFLL;
    return;
  }

  if (v22 <= 15)
  {
    goto LABEL_22;
  }

LABEL_14:
  _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v22, v18);
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) == 0)
    {
      if ((a1 & 0x1000000000000000) != 0)
      {
        v25 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v26 = a1 & 0xFFFFFFFFFFFFLL;
        if (a3 < 0)
        {
          goto LABEL_55;
        }
      }

      else
      {
        v25 = _StringObject.sharedUTF8.getter(a1, a2);
        v26 = v72;
        if (a3 < 0)
        {
          goto LABEL_55;
        }
      }

      if (v26 >= a4)
      {
        v27 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(a3, a4, v25, v26);
        v29 = v28;
        v30 = v13[1] & 0xFFFFFFFFFFFFFFFLL;
        specialized UnsafeMutablePointer.initialize(from:count:)(v27, v28, (v30 + (*(v30 + 0x18) & 0xFFFFFFFFFFFFLL) + 32));
        v31 = *(v30 + 24);
        v32 = (v31 & 0xFFFFFFFFFFFFLL) + v29;
        if (!__OFADD__(v31 & 0xFFFFFFFFFFFFLL, v29))
        {
          v33 = (v31 & a1) >> 63;
LABEL_42:
          __StringStorage._updateCountAndFlags(newCount:newIsASCII:)(v32, v33);
          *v13 = *(v30 + 24);
          return;
        }

        __break(1u);
      }

LABEL_55:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v73[0] = a1;
    v73[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    if (a3 < 0)
    {
      goto LABEL_55;
    }

    if ((HIBYTE(a2) & 0xF) < a4)
    {
      goto LABEL_55;
    }

    v67 = a4 - a3;
    if (a4 - a3 < 0)
    {
      goto LABEL_55;
    }

    v30 = v13[1] & 0xFFFFFFFFFFFFFFFLL;
    specialized UnsafeMutablePointer.initialize(from:count:)(v73 + a3, a4 - a3, (v30 + (*(v30 + 0x18) & 0xFFFFFFFFFFFFLL) + 32));
    v68 = *(v30 + 24);
    v32 = (v68 & 0xFFFFFFFFFFFFLL) + v67;
    if (!__OFADD__(v68 & 0xFFFFFFFFFFFFLL, v67))
    {
      LOBYTE(v33) = (a2 >> 62) & (v68 < 0);
      goto LABEL_42;
    }

    __break(1u);
LABEL_59:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  _StringGuts._foreignAppendInPlace(_:)(a1, a2, a3, a4);
}

unint64_t _StringGuts._foreignConvertedToSmall()(unint64_t a1, unint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v15 = xmmword_18071DD30;
  v2 = _StringGuts._foreignCopyUTF8(into:)(&v15, 15, a1, a2);
  if (v3)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000029, 0x8000000180671E50, "Swift/StringGutsRangeReplaceable.swift", 0x26uLL, 2, 0xD1uLL);
  }

  if (v2 <= 0)
  {
    if (v2)
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v8 = 0;
    v12 = 0xE000000000000000;
  }

  else
  {
    v4 = 8;
    if (v2 <= 8)
    {
      v5 = 8;
    }

    else
    {
      v5 = v2;
    }

    v6 = 56 * v5;
    if (v2 < 8)
    {
      v4 = v2;
    }

    v7 = 0xFFFFFFFFFFFFFFFFLL >> (v6 & 0x38);
    if (v2 <= 8)
    {
      v7 = 0;
    }

    v8 = v15 & (0xFFFFFFFFFFFFFFFFLL >> ((56 * v4) & 0x38));
    v9 = *(&v15 + 1) & v7;
    v10 = ((*(&v15 + 1) & v7 | v8) & 0x8080808080808080) == 0;
    v11 = 0xA000000000000000;
    if (v10)
    {
      v11 = 0xE000000000000000;
    }

    v12 = v11 | (v2 << 56) | v9;
    if ((v12 & 0x4000000000000000) == 0)
    {
      *&v15 = v8;
      *(&v15 + 1) = v9 & 0xFFFFFFFFFFFFFFLL;
      closure #2 in String.init(_uninitializedCapacity:initializingUTF8With:)(&v15, HIBYTE(v12) & 0xF, v14);
      v8 = v14[0];
      v12 = v14[1];
    }
  }

  v12;
  return v8;
}

unint64_t _StringGuts._convertedToSmall()(unint64_t result, unint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, int8x16_t a10)
{
  if ((a2 & 0x2000000000000000) == 0)
  {
    v14[2] = v10;
    v14[3] = v11;
    if ((a2 & 0x1000000000000000) != 0)
    {
      return _StringGuts._foreignConvertedToSmall()(result, a2);
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        v12 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v13 = result & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v12 = _StringObject.sharedUTF8.getter(result, a2);
      }

      closure #1 in _StringGuts._convertedToSmall()(v12, v13, v14, a10);
      return v14[0];
    }
  }

  return result;
}

uint8x16_t *closure #1 in _StringGuts._convertedToSmall()@<X0>(uint8x16_t *result@<X0>, uint64_t a2@<X1>, int8x8_t *a3@<X8>, int8x16_t a4@<Q7>)
{
  if (!a2)
  {
    v5 = 0;
    v6 = 0xE000000000000000;
    goto LABEL_29;
  }

  if (a2 > 15)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v4 = 8;
  if (a2 < 8)
  {
    v4 = a2;
  }

  if ((v4 & ~(v4 >> 63)) <= v4 - 1)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  if (v4 < 4)
  {
    v5 = 0;
    v7 = 0;
    v8 = 0;
    goto LABEL_21;
  }

  if (v4 < 0x10)
  {
    v5 = 0;
    v9 = 0;
    v8 = 0;
    goto LABEL_16;
  }

  v8 = v4 & 0xFFFFFFFFFFFFFFF0;
  v10 = xmmword_18071DBF0;
  v11 = xmmword_18071DC00;
  v12 = xmmword_18071DC10;
  v13 = xmmword_18071DC20;
  v9 = 8 * (v4 & 0xFFFFFFFFFFFFFFF0);
  v14 = 0uLL;
  v15 = xmmword_18071DBD0;
  v16 = xmmword_18071DBC0;
  a4 = vdupq_n_s64(0x38uLL);
  v17 = v4 & 0xFFFFFFFFFFFFFFF0;
  v18 = vdupq_n_s64(0x80uLL);
  v19 = result;
  v20 = 0uLL;
  v21 = 0uLL;
  v22 = xmmword_18071DBA0;
  v23 = 0uLL;
  v24 = 0uLL;
  v25 = xmmword_18071DBB0;
  v26 = 0uLL;
  v27 = 0uLL;
  v28 = 0uLL;
  do
  {
    v29 = *v19++;
    v30 = vmovl_u8(*v29.i8);
    v31 = vmovl_high_u16(v30);
    v32.i64[0] = v31.u32[2];
    v32.i64[1] = v31.u32[3];
    v33 = v32;
    v34 = vmovl_high_u8(v29);
    v35 = vmovl_u16(*v34.i8);
    v32.i64[0] = v35.u32[2];
    v32.i64[1] = v35.u32[3];
    v36 = v32;
    v32.i64[0] = v35.u32[0];
    v32.i64[1] = v35.u32[1];
    v37 = v32;
    v32.i64[0] = v31.u32[0];
    v32.i64[1] = v31.u32[1];
    v38 = v32;
    v39 = vmovl_u16(*v30.i8);
    v32.i64[0] = v39.u32[2];
    v32.i64[1] = v39.u32[3];
    v40 = v32;
    v41 = vmovl_high_u16(v34);
    v32.i64[0] = v41.u32[0];
    v32.i64[1] = v41.u32[1];
    v42 = v32;
    v32.i64[0] = v39.u32[0];
    v32.i64[1] = v39.u32[1];
    v43 = v32;
    v32.i64[0] = v41.u32[2];
    v32.i64[1] = v41.u32[3];
    v23 = vorrq_s8(vshlq_u64(v33, vandq_s8(v15, a4)), v23);
    v26 = vorrq_s8(vshlq_u64(v36, vandq_s8(v12, a4)), v26);
    v24 = vorrq_s8(vshlq_u64(v37, vandq_s8(v13, a4)), v24);
    v21 = vorrq_s8(vshlq_u64(v38, vandq_s8(v16, a4)), v21);
    v20 = vorrq_s8(vshlq_u64(v40, vandq_s8(v22, a4)), v20);
    v27 = vorrq_s8(vshlq_u64(v42, vandq_s8(v11, a4)), v27);
    v14 = vorrq_s8(vshlq_u64(v43, vandq_s8(v25, a4)), v14);
    v28 = vorrq_s8(vshlq_u64(v32, vandq_s8(v10, a4)), v28);
    v16 = vaddq_s64(v16, v18);
    v22 = vaddq_s64(v22, v18);
    v25 = vaddq_s64(v25, v18);
    v15 = vaddq_s64(v15, v18);
    v13 = vaddq_s64(v13, v18);
    v12 = vaddq_s64(v12, v18);
    v11 = vaddq_s64(v11, v18);
    v10 = vaddq_s64(v10, v18);
    v17 -= 16;
  }

  while (v17);
  v44 = vorrq_s8(vorrq_s8(vorrq_s8(v14, v24), vorrq_s8(v21, v27)), vorrq_s8(vorrq_s8(v20, v26), vorrq_s8(v23, v28)));
  v5 = vorr_s8(*v44.i8, *&vextq_s8(v44, v44, 8uLL));
  if (v4 == v8)
  {
    goto LABEL_23;
  }

  if ((v4 & 0xC) != 0)
  {
LABEL_16:
    v45 = v8;
    v8 = v4 & 0xFFFFFFFFFFFFFFFCLL;
    v7 = 8 * (v4 & 0xFFFFFFFFFFFFFFFCLL);
    v46 = 0uLL;
    v47 = v5;
    v48 = vdupq_n_s64(v9);
    v49 = vaddq_s64(v48, xmmword_18071DBA0);
    v50 = vaddq_s64(v48, xmmword_18071DBB0);
    v51 = (result->u32 + v45);
    v52 = v45 - (v4 & 0xFFFFFFFFFFFFFFFCLL);
    v53.i64[0] = 255;
    v53.i64[1] = 255;
    v54 = vdupq_n_s64(0x38uLL);
    v55 = vdupq_n_s64(0x20uLL);
    do
    {
      v56 = *v51++;
      a4.i32[0] = v56;
      v57 = vmovl_u16(*&vmovl_u8(*a4.i8));
      v58.i64[0] = v57.u32[2];
      v58.i64[1] = v57.u32[3];
      v59 = vandq_s8(v58, v53);
      v58.i64[0] = v57.u32[0];
      v58.i64[1] = v57.u32[1];
      a4 = vshlq_u64(vandq_s8(v58, v53), vandq_s8(v50, v54));
      v46 = vorrq_s8(vshlq_u64(v59, vandq_s8(v49, v54)), v46);
      v47 = vorrq_s8(a4, v47);
      v49 = vaddq_s64(v49, v55);
      v50 = vaddq_s64(v50, v55);
      v52 += 4;
    }

    while (v52);
    v60 = vorrq_s8(v47, v46);
    v5 = vorr_s8(*v60.i8, *&vextq_s8(v60, v60, 8uLL));
    if (v4 == v8)
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  v7 = 8 * (v4 & 0xFFFFFFFFFFFFFFF0);
LABEL_21:
  v61 = v4 - v8;
  v62 = &result->u8[v8];
  do
  {
    v63 = *v62++;
    *&v5 |= v63 << (v7 & 0x38);
    v7 += 8;
    --v61;
  }

  while (v61);
LABEL_23:
  v64 = 0;
  v65 = a2 - 8;
  if (a2 > 8)
  {
    v66 = 0;
    v67 = &result->u8[8];
    do
    {
      v68 = *v67++;
      v64 |= v68 << v66;
      v66 += 8;
      --v65;
    }

    while (v65);
  }

  v69 = 0xA000000000000000;
  if (((v64 | *&v5) & 0x8080808080808080) == 0)
  {
    v69 = 0xE000000000000000;
  }

  v6 = v69 | (a2 << 56) | v64;
LABEL_29:
  *a3 = v5;
  a3[1] = v6;
  return result;
}

uint64_t String.init(_:)(Swift::UInt64 a1, Swift::UInt64 a2, unint64_t a3, unint64_t a4)
{
  return Substring.description.getter(a1, a2, a3, a4);
}

{
  v5 = Substring.description.getter(a1, a2, a3, a4);
  a4;
  return v5;
}

void closure #1 in _StringGuts.append(_:)(char *a1, size_t a2, void *a3, char a4)
{
  v7 = a3[1] & 0xFFFFFFFFFFFFFFFLL;
  specialized UnsafeMutablePointer.initialize(from:count:)(a1, a2, (v7 + (*(v7 + 0x18) & 0xFFFFFFFFFFFFLL) + 32));
  v8 = *(v7 + 24);
  if (__OFADD__(v8 & 0xFFFFFFFFFFFFLL, a2))
  {
    __break(1u);
  }

  else
  {
    __StringStorage._updateCountAndFlags(newCount:newIsASCII:)((v8 & 0xFFFFFFFFFFFFLL) + a2, (v8 < 0) & a4);
    *a3 = *(v7 + 24);
  }
}

void _StringGuts.appendInPlace(_:isASCII:)(char *a1, size_t a2, char a3)
{
  v4 = v3;
  v7 = v3[1] & 0xFFFFFFFFFFFFFFFLL;
  specialized UnsafeMutablePointer.initialize(from:count:)(a1, a2, (v7 + (*(v7 + 24) & 0xFFFFFFFFFFFFLL) + 32));
  v8 = *(v7 + 24);
  if (__OFADD__(v8 & 0xFFFFFFFFFFFFLL, a2))
  {
    __break(1u);
  }

  else
  {
    __StringStorage._updateCountAndFlags(newCount:newIsASCII:)((v8 & 0xFFFFFFFFFFFFLL) + a2, (v8 < 0) & a3);
    *v4 = *(v7 + 24);
  }
}

void _StringGuts._foreignAppendInPlace(_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v5 < (a4 & 0xFFFFFFFFFFFFuLL))
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v6 = v4;
  v8 = 3;
  if ((a3 & 0xFFFFFFFFFFFFLL) != 0)
  {
    v8 = 1;
  }

  v12[0] = v8 | (a3 << 16);
  v12[1] = (a4 << 16) | 1;
  v12[2] = a1;
  v13 = a2;
  v14 = v12[0];
  v9 = v4[1] & 0xFFFFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v10 = (a2 >> 62) & 1;
  }

  else
  {
    v10 = a1 < 0;
  }

  specialized __StringStorage.appendInPlace<A>(_:isASCII:)(v12, v10);
  v11 = v13;
  a2;
  v11;
  *v6 = *(v9 + 24);
}

void __StringStorage.appendInPlace(_:isASCII:)(char *a1, size_t a2, char a3)
{
  specialized UnsafeMutablePointer.initialize(from:count:)(a1, a2, (v3 + (*(v3 + 24) & 0xFFFFFFFFFFFFLL) + 32));
  v6 = *(v3 + 24);
  if (__OFADD__(v6 & 0xFFFFFFFFFFFFLL, a2))
  {
    __break(1u);
  }

  else
  {

    __StringStorage._updateCountAndFlags(newCount:newIsASCII:)((v6 & 0xFFFFFFFFFFFFLL) + a2, (v6 < 0) & a3);
  }
}

void specialized __StringStorage.appendInPlace<A>(_:isASCII:)(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1[1];
  v5 = a1[4];
  v6 = v4 >> 14;
  if (v4 >> 14 != v5 >> 14)
  {
    v7 = 0;
    v11 = v3[2];
    v12 = v3[3];
    v13 = (v11 >> 59) & 1;
    if ((v12 & 0x1000000000000000) == 0)
    {
      LOBYTE(v13) = 1;
    }

    v14 = 4 << v13;
    v15 = *v3 >> 14;
    v16 = (v12 & 0xFFFFFFFFFFFFFFFLL) + 32;
    if ((v12 & 0x2000000000000000) != 0)
    {
      v17 = HIBYTE(v12) & 0xF;
    }

    else
    {
      v17 = v11 & 0xFFFFFFFFFFFFLL;
    }

    v18 = v2 + 32;
    while (1)
    {
      v19 = v5 & 0xC;
      rawBits = v5;
      if (v19 == v14)
      {
        v50 = v3;
        v55 = v17;
        v24 = v5;
        v46 = a2;
        v60 = v16;
        v64 = v11;
        v25 = v14;
        v26 = v18;
        v27._rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(v5)._rawBits;
        v18 = v26;
        v17 = v55;
        v16 = v60;
        v11 = v64;
        v14 = v25;
        a2 = v46;
        rawBits = v27._rawBits;
        v5 = v24;
        v3 = v50;
      }

      if (rawBits >> 14 < v15 || rawBits >> 14 >= v6)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      if ((v12 & 0x1000000000000000) != 0)
      {
        v51 = v3;
        v56 = v17;
        v44._rawBits = v5;
        v47 = a2;
        v28 = v14;
        v65 = v11;
        v29 = v18;
        v30 = String.UTF8View._foreignSubscript(position:)(rawBits);
        v18 = v29;
        v3 = v51;
        v17 = v56;
        v11 = v65;
        v14 = v28;
        a2 = v47;
        v23 = v30;
        v5 = v44._rawBits;
        if (v19 != v28)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v21 = rawBits >> 16;
        if ((v12 & 0x2000000000000000) != 0)
        {
          v68[0] = v11;
          v68[1] = v12 & 0xFFFFFFFFFFFFFFLL;
          v23 = *(v68 + v21);
          if (v19 != v14)
          {
            goto LABEL_23;
          }
        }

        else
        {
          v22 = v16;
          if ((v11 & 0x1000000000000000) == 0)
          {
            v54 = v3;
            v59 = v18;
            v45._rawBits = v5;
            v49 = a2;
            v63 = v16;
            v67 = v11;
            v41 = v14;
            v42 = v17;
            v43 = _StringObject.sharedUTF8.getter(v11, v12);
            v17 = v42;
            v11 = v67;
            v14 = v41;
            v18 = v59;
            v16 = v63;
            a2 = v49;
            v22 = v43;
            v5 = v45._rawBits;
            v3 = v54;
          }

          v23 = v22[v21];
          if (v19 != v14)
          {
LABEL_23:
            if ((v12 & 0x1000000000000000) != 0)
            {
              goto LABEL_27;
            }

            goto LABEL_24;
          }
        }
      }

      v52 = v3;
      v57 = v17;
      v48 = a2;
      v31 = v15;
      v32 = v14;
      v33 = v11;
      v34 = v18;
      v61 = v23;
      v5 = _StringGuts._slowEnsureMatchingEncoding(_:)(v5)._rawBits;
      v23 = v61;
      v18 = v34;
      v3 = v52;
      v17 = v57;
      v11 = v33;
      v14 = v32;
      v15 = v31;
      a2 = v48;
      if ((v12 & 0x1000000000000000) != 0)
      {
LABEL_27:
        v62 = v23;
        v53 = v6;
        v58 = v18;
        if (v17 <= v5 >> 16)
        {
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }

        v35 = v14;
        v36 = v15;
        v37 = v3;
        v38 = a2;
        v39 = v17;
        v66 = v11;
        v5 = String.UTF8View._foreignIndex(after:)(v5)._rawBits;
        v11 = v66;
        a2 = v38;
        v3 = v37;
        v15 = v36;
        v14 = v35;
        v6 = v53;
        v18 = v58;
        v17 = v39;
        v23 = v62;
        goto LABEL_29;
      }

LABEL_24:
      v5 = (v5 & 0xFFFFFFFFFFFF0000) + 65540;
LABEL_29:
      v3[4] = v5;
      v8 = *(v2 + 24);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
      v40 = (*(v2 + 16) & 0xFFFFFFFFFFFFLL) + ~(v8 & 0xFFFFFFFFFFFFLL);
      if (v40 < 0 || v7 >= v40)
      {
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      *(v18 + v9 + v7++) = v23;
      if (v6 == v5 >> 14)
      {
        goto LABEL_3;
      }
    }
  }

  v7 = 0;
  v8 = *(v2 + 24);
  v9 = v8 & 0xFFFFFFFFFFFFLL;
LABEL_3:
  v10 = (v8 < 0) & a2;

  __StringStorage._updateCountAndFlags(newCount:newIsASCII:)(v9 + v7, v10);
}

Swift::Void __swiftcall _StringGuts.remove(from:to:)(Swift::String::Index from, Swift::String::Index to)
{
  v3 = v2;
  v6 = from._rawBits >> 16;
  v7 = to._rawBits >> 16;
  v8 = *v3;
  v9 = v3[1];
  if ((*v3 & ~v9 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v9 & 0xFFFFFFFFFFFFFFFLL))
  {
    __StringStorage.remove(from:to:)(v6, v7);
    *v3 = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
    return;
  }

  v157 = 0;
  v158 = 0xE000000000000000;
  v10 = _StringGuts.nativeCapacity.getter(v8, v9);
  v12 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v12 = v8 & 0xFFFFFFFFFFFFLL;
  }

  v13 = v6 - v7 + v12;
  if (v11)
  {
    v14 = v13;
  }

  else
  {
    v14 = v10;
  }

  rawBits = to._rawBits;
  if (v14 >= 16 && ((v15 = _StringGuts.uniqueNativeCapacity.getter(), (v16 & 1) != 0) || v15 < v14))
  {
    v20 = 2 * _StringGuts.uniqueNativeCapacity.getter();
    if (v20 <= v14)
    {
      v20 = v14;
    }

    if (v19)
    {
      v21 = v14;
    }

    else
    {
      v21 = v20;
    }

    v155 = 0;
    v156 = 0;
    v18 = specialized static __StringStorage.create(initializingFrom:codeUnitCapacity:isASCII:)(&v155, 0, v21, 1);
    v17 = *(v18 + 24);
    0xE000000000000000;
    v157 = v17;
    v158 = v18;
  }

  else
  {
    v17 = 0;
    v18 = 0xE000000000000000;
  }

  v22._rawBits = from._rawBits;
  v154 = v9;
  v24 = specialized Collection.subscript.getter(v22, v8, v9);
  v26 = v25;
  v153 = v27;
  v28 = v23;
  v29 = v24 >> 16;
  v30 = v25 >> 16;
  if ((v23 & 0x1000000000000000) == 0)
  {
    v31 = v30 - v29;
    swift_bridgeObjectRetain_n(v23, 2);
    v151 = v3;
    if ((v18 & 0x1000000000000000) == 0)
    {
      goto LABEL_21;
    }

LABEL_118:
    v143 = String.UTF8View._foreignCount()();
    v33 = v143 + v31;
    if (!__OFADD__(v143, v31))
    {
      goto LABEL_25;
    }

LABEL_120:
    __break(1u);
    goto LABEL_121;
  }

  swift_bridgeObjectRetain_n(v23, 3);
  v139._rawBits = v24 & 0xFFFFFFFFFFFF0000 | 1;
  v140._rawBits = v26 & 0xFFFFFFFFFFFF0000 | 1;
  v141._rawBits = _StringGuts.validateScalarRange(_:)(v139, v140, v153, v28)._rawBits;
  if (v141._rawBits < 0x10000)
  {
    v141._rawBits |= 3;
  }

  v31 = String.UTF8View.distance(from:to:)(v141, v142);
  v28;
  v17 = v157;
  v18 = v158;
  v151 = v3;
  if ((v158 & 0x1000000000000000) != 0)
  {
    goto LABEL_118;
  }

LABEL_21:
  if ((v18 & 0x2000000000000000) != 0)
  {
    v32 = HIBYTE(v18) & 0xF;
  }

  else
  {
    v32 = v17 & 0xFFFFFFFFFFFFLL;
  }

  v33 = v32 + v31;
  if (__OFADD__(v32, v31))
  {
    goto LABEL_120;
  }

LABEL_25:
  if ((v17 & ~v18 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v18 & 0xFFFFFFFFFFFFFFFLL))
  {
    v34 = _StringGuts.nativeUnusedCapacity.getter(v17, v18);
    if (v35)
    {
      goto LABEL_133;
    }

    if (v33 > 15 || (v18 & 0x2000000000000000) == 0 && v34 >= v31)
    {
LABEL_31:
      _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v33, v31);
      if ((v28 & 0x1000000000000000) != 0)
      {
        v28;
        _StringGuts._foreignAppendInPlace(_:)(v153, v28, v29, v30);
      }

      else
      {
        if ((v28 & 0x2000000000000000) != 0)
        {
          v28;
          v155 = v153;
          v156 = v28 & 0xFFFFFFFFFFFFFFLL;
          if ((HIBYTE(v28) & 0xF) < v30 || (v30 - v29) < 0)
          {
            goto LABEL_132;
          }

          v28;
          v83 = v158 & 0xFFFFFFFFFFFFFFFLL;
          specialized UnsafeMutablePointer.initialize(from:count:)(&v155 + v29, v30 - v29, ((v158 & 0xFFFFFFFFFFFFFFFLL) + (*((v158 & 0xFFFFFFFFFFFFFFFLL) + 0x18) & 0xFFFFFFFFFFFFLL) + 32));
          __StringStorage._updateCountAndFlags(newCount:newIsASCII:)((*(v83 + 24) & 0xFFFFFFFFFFFFLL) + v30 - v29, (v28 >> 62) & (*(v83 + 24) < 0));
          v157 = *(v83 + 24);
          goto LABEL_66;
        }

        if ((v153 & 0x1000000000000000) != 0)
        {
          v36 = ((v28 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v37 = v153 & 0xFFFFFFFFFFFFLL;
          if ((v153 & 0xFFFFFFFFFFFFLL) < v30)
          {
            goto LABEL_132;
          }
        }

        else
        {
          v36 = _StringObject.sharedUTF8.getter(v153, v28);
          v37 = v149;
          if (v149 < v30)
          {
            goto LABEL_132;
          }
        }

        v28;
        v38 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v29, v30, v36, v37);
        v39 = v158 & 0xFFFFFFFFFFFFFFFLL;
        __StringStorage.appendInPlace(_:isASCII:)(v38, v40, v153 < 0);
        v157 = *(v39 + 24);
      }

      v28;
LABEL_66:
      v78 = v154;
      goto LABEL_67;
    }
  }

  else if (v33 > 15)
  {
    goto LABEL_31;
  }

  v28;
  v49 = _StringGuts._convertedToSmall()(v17, v18, v41, v42, v43, v44, v45, v46, v47, v48);
  v51 = HIBYTE(v28) & 0xF;
  if ((v28 & 0x2000000000000000) == 0)
  {
    v51 = v153 & 0xFFFFFFFFFFFFLL;
  }

  if (v51 < v30)
  {
    goto LABEL_127;
  }

  v52 = v49;
  v53 = v50;
  if (v29 || v30 != v51)
  {
    v64 = v24 & 0xFFFFFFFFFFFF0000;
    v65 = v26 & 0xFFFFFFFFFFFF0000;
    if (v24 >= 0x10000)
    {
      v66 = 1;
    }

    else
    {
      v66 = 3;
    }

    v28;
    v67 = specialized static String._copying(_:)(v66 | v64, v65 | 1, v153, v28);
    v62 = v68;
    v28;
    v63 = v67;
  }

  else
  {
    v28;
    v62 = v28;
    v63 = v153;
  }

  v69 = _StringGuts._convertedToSmall()(v63, v62, v54, v55, v56, v57, v58, v59, v60, v61);
  v71 = v70;
  v62;
  v72 = HIBYTE(v53) & 0xF;
  v73 = HIBYTE(v71) & 0xF;
  v74 = v73 + v72;
  if (v73 + v72 > 0xF)
  {
    goto LABEL_133;
  }

  v28;
  if (v73)
  {
    v75 = 0;
    v76 = 0;
    v77 = 8 * v72;
    v78 = v154;
    do
    {
      v79 = v71 >> (v75 & 0x38);
      if (v76 < 8)
      {
        v79 = v69 >> v75;
      }

      v80 = (v79 << (v77 & 0x38)) | ((-255 << (v77 & 0x38)) - 1) & v53;
      v81 = (v79 << v77) | ((-255 << v77) - 1) & v52;
      if (v72 <= 7)
      {
        v52 = v81;
      }

      else
      {
        v53 = v80;
      }

      ++v72;
      v77 += 8;
      v75 += 8;
      ++v76;
    }

    while (8 * v73 != v75);
  }

  else
  {
    v78 = v154;
  }

  v18;
  v82 = 0xA000000000000000;
  if (!(v52 & 0x8080808080808080 | v53 & 0x80808080808080))
  {
    v82 = 0xE000000000000000;
  }

  v157 = v52;
  v158 = v82 & 0xFF00000000000000 | (v74 << 56) | v53 & 0xFFFFFFFFFFFFFFLL;
LABEL_67:
  v30 = specialized Collection.subscript.getter(rawBits, v8, v78);
  v31 = v85;
  v8 = v86;
  v24 = v84;
  v28 = v30 >> 16;
  v33 = v85 >> 16;
  if ((v84 & 0x1000000000000000) == 0)
  {
    v87 = v33 - v28;
    swift_bridgeObjectRetain_n(v84, 2);
    v89 = v157;
    v88 = v158;
    if ((v158 & 0x1000000000000000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_124;
  }

LABEL_121:
  swift_bridgeObjectRetain_n(v24, 3);
  v144._rawBits = v30 & 0xFFFFFFFFFFFF0000 | 1;
  v145._rawBits = v31 & 0xFFFFFFFFFFFF0000 | 1;
  v146._rawBits = _StringGuts.validateScalarRange(_:)(v144, v145, v8, v24)._rawBits;
  if (v146._rawBits < 0x10000)
  {
    v146._rawBits |= 3;
  }

  v87 = String.UTF8View.distance(from:to:)(v146, v147);
  v24;
  v89 = v157;
  v88 = v158;
  if ((v158 & 0x1000000000000000) == 0)
  {
LABEL_69:
    if ((v88 & 0x2000000000000000) != 0)
    {
      goto LABEL_73;
    }

    v90 = (v89 & 0xFFFFFFFFFFFFLL) + v87;
    if (!__OFADD__(v89 & 0xFFFFFFFFFFFFLL, v87))
    {
      goto LABEL_74;
    }

    goto LABEL_72;
  }

LABEL_124:
  v148 = String.UTF8View._foreignCount()();
  v90 = v148 + v87;
  if (!__OFADD__(v148, v87))
  {
    goto LABEL_74;
  }

  do
  {
LABEL_72:
    __break(1u);
LABEL_73:
    v91 = HIBYTE(v88) & 0xF;
    v90 = v91 + v87;
  }

  while (__OFADD__(v91, v87));
LABEL_74:
  if ((v89 & ~v88 & 0x2000000000000000) == 0 || !swift_isUniquelyReferenced_nonNull_native(v88 & 0xFFFFFFFFFFFFFFFLL))
  {
    if (v90 > 15)
    {
      goto LABEL_80;
    }

    goto LABEL_86;
  }

  v92 = _StringGuts.nativeUnusedCapacity.getter(v89, v88);
  if (v93)
  {
    goto LABEL_133;
  }

  if (v90 <= 15 && ((v88 & 0x2000000000000000) != 0 || v92 < v87))
  {
LABEL_86:
    v24;
    v107 = _StringGuts._convertedToSmall()(v89, v88, v99, v100, v101, v102, v103, v104, v105, v106);
    if ((v24 & 0x2000000000000000) != 0)
    {
      v109 = HIBYTE(v24) & 0xF;
    }

    else
    {
      v109 = v8 & 0xFFFFFFFFFFFFLL;
    }

    if (v109 >= v33)
    {
      v110 = v107;
      v111 = v108;
      v24;
      if (v28 || v33 != v109)
      {
        v122 = 3;
        if (v30 >= 0x10000)
        {
          v122 = 1;
        }

        v8 = specialized static String._copying(_:)(v122 | v30 & 0xFFFFFFFFFFFF0000, v31 & 0xFFFFFFFFFFFF0000 | 1, v8, v24);
        v120 = v123;
        v24;
      }

      else
      {
        v120 = v24;
      }

      v124 = _StringGuts._convertedToSmall()(v8, v120, v112, v113, v114, v115, v116, v117, v118, v119);
      v126 = v125;
      v120;
      v127 = HIBYTE(v111) & 0xF;
      v128 = HIBYTE(v126) & 0xF;
      v129 = v128 + v127;
      if (v128 + v127 <= 0xF)
      {
        v24;
        if (v128)
        {
          v130 = 0;
          v131 = 0;
          v132 = 8 * v127;
          do
          {
            v133 = v126 >> (v130 & 0x38);
            if (v131 < 8)
            {
              v133 = v124 >> v130;
            }

            v134 = (v133 << (v132 & 0x38)) | ((-255 << (v132 & 0x38)) - 1) & v111;
            v135 = (v133 << v132) | ((-255 << v132) - 1) & v110;
            if (v127 <= 7)
            {
              v110 = v135;
            }

            else
            {
              v111 = v134;
            }

            ++v127;
            v132 += 8;
            v130 += 8;
            ++v131;
          }

          while (8 * v128 != v130);
        }

        v154;
        v88;
        v136 = 0xA000000000000000;
        if (!(v110 & 0x8080808080808080 | v111 & 0x80808080808080))
        {
          v136 = 0xE000000000000000;
        }

        v157 = v110;
        v158 = v136 & 0xFF00000000000000 | (v129 << 56) | v111 & 0xFFFFFFFFFFFFFFLL;
        goto LABEL_114;
      }

LABEL_133:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

LABEL_127:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

LABEL_80:
  _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v90, v87);
  if ((v24 & 0x1000000000000000) != 0)
  {
    v24;
    _StringGuts._foreignAppendInPlace(_:)(v8, v24, v28, v33);
    goto LABEL_94;
  }

  if ((v24 & 0x2000000000000000) != 0)
  {
    v24;
    v155 = v8;
    v156 = v24 & 0xFFFFFFFFFFFFFFLL;
    if ((HIBYTE(v24) & 0xF) >= v33 && (v33 - v28) >= 0)
    {
      v24;
      v137 = v158 & 0xFFFFFFFFFFFFFFFLL;
      specialized UnsafeMutablePointer.initialize(from:count:)(&v155 + v28, v33 - v28, ((v158 & 0xFFFFFFFFFFFFFFFLL) + (*((v158 & 0xFFFFFFFFFFFFFFFLL) + 0x18) & 0xFFFFFFFFFFFFLL) + 32));
      __StringStorage._updateCountAndFlags(newCount:newIsASCII:)((*(v137 + 24) & 0xFFFFFFFFFFFFLL) + v33 - v28, (v24 >> 62) & (*(v137 + 24) < 0));
      v157 = *(v137 + 24);
      v121 = v154;
      goto LABEL_113;
    }

    goto LABEL_132;
  }

  if ((v8 & 0x1000000000000000) == 0)
  {
    v94 = _StringObject.sharedUTF8.getter(v8, v24);
    v95 = v150;
    if (v150 >= v33)
    {
      goto LABEL_84;
    }

LABEL_132:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v94 = ((v24 & 0xFFFFFFFFFFFFFFFLL) + 32);
  v95 = v8 & 0xFFFFFFFFFFFFLL;
  if ((v8 & 0xFFFFFFFFFFFFLL) < v33)
  {
    goto LABEL_132;
  }

LABEL_84:
  v24;
  v96 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v28, v33, v94, v95);
  v97 = v158 & 0xFFFFFFFFFFFFFFFLL;
  __StringStorage.appendInPlace(_:isASCII:)(v96, v98, v8 < 0);
  v157 = *(v97 + 24);
LABEL_94:
  v154;
  v121 = v24;
LABEL_113:
  v121;
LABEL_114:
  v138 = v158;
  *v151 = v157;
  v151[1] = v138;
}

Swift::Void __swiftcall __StringStorage.remove(from:to:)(Swift::Int from, Swift::Int to)
{
  specialized UnsafeMutablePointer.moveInitialize(from:count:)((v2 + 32 + to), (*(v2 + 24) & 0xFFFFFFFFFFFFLL) - to, (v2 + 32 + from));
  v5 = *(v2 + 24);

  __StringStorage._updateCountAndFlags(newCount:newIsASCII:)(from - to + (v5 & 0xFFFFFFFFFFFFLL), v5 < 0);
}

void (*specialized _StringGuts.replaceSubrange<A>(_:with:)(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4))(uint64_t *__return_ptr, void *)
{
  v5 = v4;
  v10 = **&v5;
  v9 = *(*&v5 + 8);
  if ((**&v5 & ~v9 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v9 & 0xFFFFFFFFFFFFFFFLL))
  {
    if ((a4 & 0x1000000000000000) != 0)
    {
      return specialized _StringGuts.uniqueNativeReplaceSubrange<A>(_:with:)(a1, a2, a3, a4, closure #3 in _StringGuts.replaceSubrange<A>(_:with:), 0);
    }

    if ((a4 & 0x2000000000000000) != 0)
    {
      v70 = HIBYTE(a4) & 0xF;
      v225 = a3;
      v226 = a4 & 0xFFFFFFFFFFFFFFLL;
      v13 = (a1 >> 16);
      v71 = v70 + (a1 >> 16);
      v72 = a2 >> 16;
      v73 = v10 & 0xFFFFFFFFFFFFLL;
      if ((v9 & 0x2000000000000000) != 0)
      {
        v73 = HIBYTE(v9) & 0xF;
      }

      v74 = v73 - v72 + v71;
      if (v74 > 15)
      {
        v75 = _StringGuts.uniqueNativeCapacity.getter();
        if ((v76 & 1) != 0 || v75 < v74)
        {
          _StringGuts.grow(_:)(v74);
        }
      }

      v20 = *(*&v5 + 8) & 0xFFFFFFFFFFFFFFFLL;
      v23 = &v225;
      v21 = v13;
      v22 = v72;
      v24 = v70;
    }

    else
    {
      if ((a3 & 0x1000000000000000) != 0)
      {
        v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v12 = a3 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = _StringObject.sharedUTF8.getter(a3, a4);
        v12 = v203;
      }

      v13 = (a1 >> 16);
      v14 = v12 + (a1 >> 16);
      v15 = a2 >> 16;
      v16 = v10 & 0xFFFFFFFFFFFFLL;
      if ((v9 & 0x2000000000000000) != 0)
      {
        v16 = HIBYTE(v9) & 0xF;
      }

      v17 = v14 + v16 - v15;
      if (v17 >= 16)
      {
        v18 = _StringGuts.uniqueNativeCapacity.getter();
        if ((v19 & 1) != 0 || v18 < v17)
        {
          _StringGuts.grow(_:)(v17);
        }
      }

      v20 = *(*&v5 + 8) & 0xFFFFFFFFFFFFFFFLL;
      v21 = v13;
      v22 = v15;
      v23 = v11;
      v24 = v12;
    }

    __StringStorage.replace(from:to:with:)(v21, v22, v23, v24);
    **&v5 = *(v20 + 24);
    return v13;
  }

  v218 = a2;
  v25 = 0xE000000000000000;
  v225 = 0;
  v226 = 0xE000000000000000;
  v26 = _StringGuts.nativeCapacity.getter(v10, v9);
  v27 = 0;
  if ((v28 & 1) == 0)
  {
    v29 = v26;
    if (v26 >= 16)
    {
      v30 = _StringGuts.uniqueNativeCapacity.getter();
      if ((v31 & 1) != 0 || v30 < v29)
      {
        v33 = 2 * _StringGuts.uniqueNativeCapacity.getter();
        if (v33 <= v29)
        {
          v33 = v29;
        }

        if (v32)
        {
          v34 = v29;
        }

        else
        {
          v34 = v33;
        }

        v223 = 0;
        v224 = 0;
        v25 = specialized static __StringStorage.create(initializingFrom:codeUnitCapacity:isASCII:)(&v223, 0, v34, 1);
        v27 = *(v25 + 24);
        0xE000000000000000;
        v225 = v27;
        v226 = v25;
      }

      else
      {
        v27 = 0;
        v25 = 0xE000000000000000;
      }
    }
  }

  v35._rawBits = a1;
  v217 = v10;
  v222 = v9;
  v37 = specialized Collection.subscript.getter(v35, v10, v9);
  v39 = v38;
  v41 = v40;
  v42 = v36;
  v43 = v38 >> 16;
  v219 = v37 >> 16;
  if ((v36 & 0x1000000000000000) == 0)
  {
    v44 = v43 - (v37 >> 16);
    swift_bridgeObjectRetain_n(v36, 2);
    v220 = a4;
    if ((v25 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

LABEL_248:
    v188 = String.UTF8View._foreignCount()();
    v46 = v188 + v44;
    if (!__OFADD__(v188, v44))
    {
      goto LABEL_31;
    }

LABEL_250:
    __break(1u);
    goto LABEL_251;
  }

  swift_bridgeObjectRetain_n(v36, 3);
  v184._rawBits = v37 & 0xFFFFFFFFFFFF0000 | 1;
  v185._rawBits = v39 & 0xFFFFFFFFFFFF0000 | 1;
  v186._rawBits = _StringGuts.validateScalarRange(_:)(v184, v185, v41, v42)._rawBits;
  if (v186._rawBits < 0x10000)
  {
    v186._rawBits |= 3;
  }

  v44 = String.UTF8View.distance(from:to:)(v186, v187);
  v42;
  v27 = v225;
  v25 = v226;
  v220 = a4;
  if ((v226 & 0x1000000000000000) != 0)
  {
    goto LABEL_248;
  }

LABEL_27:
  if ((v25 & 0x2000000000000000) != 0)
  {
    v45 = HIBYTE(v25) & 0xF;
  }

  else
  {
    v45 = *&v27 & 0xFFFFFFFFFFFFLL;
  }

  v46 = v45 + v44;
  if (__OFADD__(v45, v44))
  {
    goto LABEL_250;
  }

LABEL_31:
  v216 = v5;
  v47 = *&v27 & ~v25;
  if ((v47 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v25 & 0xFFFFFFFFFFFFFFFLL))
  {
    v48 = _StringGuts.nativeUnusedCapacity.getter(*&v27, v25);
    if (v49)
    {
      goto LABEL_285;
    }

    if (v46 > 15)
    {
      goto LABEL_39;
    }

    if ((v25 & 0x2000000000000000) == 0)
    {
      if (v48 < v44)
      {
        v42;
        goto LABEL_266;
      }

LABEL_39:
      v51 = v47 & 0x2000000000000000;
      v52 = _StringGuts.nativeUnusedCapacity.getter(*&v27, v25);
      if (v53)
      {
        v5 = a3;
        if (v51)
        {
LABEL_41:
          swift_isUniquelyReferenced_nonNull_native(v25 & 0xFFFFFFFFFFFFFFFLL);
        }
      }

      else
      {
        v5 = a3;
        if (v52 >= v44)
        {
          if (v51 && swift_isUniquelyReferenced_nonNull_native(v25 & 0xFFFFFFFFFFFFFFFLL))
          {
LABEL_47:
            if ((v42 & 0x1000000000000000) != 0)
            {
              v42;
              _StringGuts._foreignAppendInPlace(_:)(v41, v42, v219, v43);
              v42;
              v56 = v220;
            }

            else
            {
              v56 = v220;
              if ((v42 & 0x2000000000000000) != 0)
              {
                v42;
                v223 = v41;
                v224 = v42 & 0xFFFFFFFFFFFFFFLL;
                if ((HIBYTE(v42) & 0xF) < v43 || v43 - v219 < 0)
                {
                  goto LABEL_282;
                }

                closure #1 in _StringGuts.append(_:)(&v223 + v219, v43 - v219, &v225, (v42 & 0x4000000000000000) != 0);
              }

              else
              {
                if ((v41 & 0x1000000000000000) != 0)
                {
                  v57 = ((v42 & 0xFFFFFFFFFFFFFFFLL) + 32);
                  v58 = v41 & 0xFFFFFFFFFFFFLL;
                  if ((v41 & 0xFFFFFFFFFFFFLL) < v43)
                  {
                    goto LABEL_282;
                  }
                }

                else
                {
                  v57 = _StringObject.sharedUTF8.getter(v41, v42);
                  v58 = v205;
                  if (v205 < v43)
                  {
                    goto LABEL_282;
                  }
                }

                v42;
                v59 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v219, v43, v57, v58);
                _StringGuts.appendInPlace(_:isASCII:)(v59, v60, v41 < 0);
              }

              v42;
            }

            goto LABEL_94;
          }

LABEL_46:
          _StringGuts.grow(_:)(v46);
          goto LABEL_47;
        }

        if (v51)
        {
          goto LABEL_41;
        }
      }

      v54 = 2 * _StringGuts.nativeCapacity.getter(*&v27, v25);
      if (v55)
      {
        v54 = 0;
      }

      if (v54 > v46)
      {
        v46 = v54;
      }

      goto LABEL_46;
    }

    v42;
  }

  else
  {
    if (v46 > 15)
    {
      goto LABEL_39;
    }

    v42;
    if ((v25 & 0x2000000000000000) == 0)
    {
LABEL_266:
      if ((v25 & 0x1000000000000000) != 0)
      {
        v27 = _StringGuts._foreignConvertedToSmall()(*&v27, v25);
        v61 = v204;
      }

      else
      {
        if ((*&v27 & 0x1000000000000000) != 0)
        {
          v198 = ((v25 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v199 = *&v27 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v198 = _StringObject.sharedUTF8.getter(*&v27, v25);
        }

        closure #1 in _StringGuts._convertedToSmall()(v198, v199, &v223, v50);
        v27 = v223;
        v61 = v224;
      }

      goto LABEL_54;
    }
  }

  v61 = v25;
LABEL_54:
  v5 = a3;
  v42;
  v62._rawBits = v37 & 0xFFFFFFFFFFFF0000 | 1;
  v63._rawBits = v39 & 0xFFFFFFFFFFFF0000 | 1;
  v64._rawBits = _StringGuts.validateScalarRange(_:)(v62, v63, v41, v42)._rawBits;
  if (v64._rawBits < 0x10000)
  {
    v64._rawBits |= 3;
  }

  v67 = HIBYTE(v42) & 0xF;
  if ((v42 & 0x2000000000000000) == 0)
  {
    v67 = v41 & 0xFFFFFFFFFFFFLL;
  }

  if (v64._rawBits >> 16 || v65._rawBits >> 16 != v67)
  {
    v41 = specialized static String._copying(_:)(v64._rawBits, v65._rawBits, v41, v42);
    v68 = v77;
    v42;
  }

  else
  {
    v68 = v42;
  }

  if ((v68 & 0x2000000000000000) != 0)
  {
    v68;
  }

  else if ((v68 & 0x1000000000000000) != 0)
  {
    v41 = _StringGuts._foreignConvertedToSmall()(v41, v68);
    v214 = v213;
    v68;
    v68 = v214;
  }

  else
  {
    if ((v41 & 0x1000000000000000) != 0)
    {
      v196 = ((v68 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v197 = v41 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v196 = _StringObject.sharedUTF8.getter(v41, v68);
    }

    closure #1 in _StringGuts._convertedToSmall()(v196, v197, &v223, v66);
    v68;
    v41 = v223;
    v68 = v224;
  }

  v78 = HIBYTE(v61) & 0xF;
  v79 = HIBYTE(v68) & 0xF;
  v80 = v79 + v78;
  if (v79 + v78 > 0xF)
  {
    goto LABEL_285;
  }

  v42;
  if (v79)
  {
    v81 = 0;
    v82 = 0;
    v83 = 8 * v78;
    v84 = 8 * v79;
    v56 = v220;
    do
    {
      v85 = v68 >> (v81 & 0x38);
      if (v82 < 8)
      {
        v85 = v41 >> v81;
      }

      v86 = (v85 << (v83 & 0x38)) | ((-255 << (v83 & 0x38)) - 1) & v61;
      v87 = (v85 << v83) | ((-255 << v83) - 1) & *&v27;
      if (v78 <= 7)
      {
        v27 = v87;
      }

      else
      {
        v61 = v86;
      }

      ++v78;
      v83 += 8;
      v81 += 8;
      ++v82;
    }

    while (v84 != v81);
  }

  else
  {
    v56 = v220;
  }

  v25;
  v88 = 0xA000000000000000;
  if (!(*&v27 & 0x8080808080808080 | v61 & 0x80808080808080))
  {
    v88 = 0xE000000000000000;
  }

  v225 = v27;
  v226 = v88 & 0xFF00000000000000 | (v80 << 56) | v61 & 0xFFFFFFFFFFFFFFLL;
LABEL_94:
  v13 = v225;
  v25 = v226;
  v89 = HIBYTE(v226) & 0xF;
  v90 = *&v225 & 0xFFFFFFFFFFFFLL;
  if ((v226 & 0x2000000000000000) != 0)
  {
    v91 = HIBYTE(v226) & 0xF;
  }

  else
  {
    v91 = *&v225 & 0xFFFFFFFFFFFFLL;
  }

  v219 = v91;
  if (!v91 && (*&v225 & ~v226 & 0x2000000000000000) == 0)
  {
    v56;
    v25;
    v225 = v5;
    v226 = v56;
    goto LABEL_167;
  }

  v92 = (v56 & 0x2000000000000000) == 0;
  v93 = HIBYTE(v56) & 0xF;
  if ((v226 & 0x2000000000000000) != 0)
  {
    if ((v56 & 0x2000000000000000) != 0)
    {
      v129 = v89 + v93;
      if (v89 + v93 < 0x10)
      {
        if (v93)
        {
          v130 = 0;
          v131 = 0;
          v132 = 8 * v89;
          v133 = v226;
          do
          {
            v134 = v56 >> (v130 & 0x38);
            if (v131 < 8)
            {
              v134 = *&v5 >> v130;
            }

            v135 = (v134 << (v132 & 0x38)) | ((-255 << (v132 & 0x38)) - 1) & v133;
            v136 = (v134 << v132) | ((-255 << v132) - 1) & *&v13;
            if (v89 <= 7)
            {
              v13 = v136;
            }

            else
            {
              v133 = v135;
            }

            ++v89;
            v132 += 8;
            v130 += 8;
            ++v131;
          }

          while (8 * v93 != v130);
        }

        else
        {
          v133 = v226;
        }

        v226;
        v138 = 0xA000000000000000;
        if (!(*&v13 & 0x8080808080808080 | v133 & 0x80808080808080))
        {
          v138 = 0xE000000000000000;
        }

        v225 = v13;
        v226 = v138 & 0xFF00000000000000 | (v129 << 56) | v133 & 0xFFFFFFFFFFFFFFLL;
        goto LABEL_167;
      }

      v92 = 0;
      v94 = *&v5 & 0xFFFFFFFFFFFFLL;
      v95 = HIBYTE(v56) & 0xF;
      v96 = v95;
      if ((v56 & 0x1000000000000000) != 0)
      {
        goto LABEL_123;
      }

LABEL_102:
      v97 = v91;
      if ((v226 & 0x1000000000000000) == 0)
      {
        goto LABEL_103;
      }

      goto LABEL_127;
    }

    v94 = *&v5 & 0xFFFFFFFFFFFFLL;
    v92 = 1;
LABEL_122:
    v95 = v94;
    v96 = v94;
    if ((v56 & 0x1000000000000000) != 0)
    {
      goto LABEL_123;
    }

    goto LABEL_102;
  }

  v94 = *&v5 & 0xFFFFFFFFFFFFLL;
  v95 = HIBYTE(v56) & 0xF;
  if ((v56 & 0x2000000000000000) == 0)
  {
    goto LABEL_122;
  }

  v96 = HIBYTE(v56) & 0xF;
  if ((v56 & 0x1000000000000000) == 0)
  {
    goto LABEL_102;
  }

LABEL_123:
  v109._rawBits = (v95 << 16) | 1;
  v110._rawBits = 1;
  v111._rawBits = _StringGuts.validateScalarRange(_:)(v110, v109, *&v5, v56)._rawBits;
  v113._rawBits = v112;
  if (v111._rawBits >= 0x10000)
  {
    rawBits = v111._rawBits;
  }

  else
  {
    rawBits = v111._rawBits | 3;
  }

  v220;
  v96 = String.UTF8View.distance(from:to:)(rawBits, v113);
  v220;
  v97 = v219;
  if ((v25 & 0x1000000000000000) == 0)
  {
LABEL_103:
    v98 = v97 + v96;
    if (!__OFADD__(v97, v96))
    {
      goto LABEL_104;
    }

LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

LABEL_127:
  v115 = String.UTF8View._foreignCount()();
  v98 = v115 + v96;
  if (__OFADD__(v115, v96))
  {
    goto LABEL_129;
  }

LABEL_104:
  if ((*&v13 & ~v25 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v25 & 0xFFFFFFFFFFFFFFFLL))
  {
    v99 = _StringGuts.nativeUnusedCapacity.getter(*&v13, v25);
    if (v100)
    {
      goto LABEL_285;
    }

    if (v98 > 15)
    {
      goto LABEL_115;
    }

    if ((v25 & 0x2000000000000000) == 0)
    {
      if (v99 < v96)
      {
        goto LABEL_110;
      }

LABEL_115:
      _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v98, v96);
      if ((v220 & 0x1000000000000000) != 0)
      {
        _StringGuts._foreignAppendInPlace(_:)(*&v5, v220, 0, v95);
        goto LABEL_167;
      }

      v103 = v222;
      if (v92)
      {
        if ((*&v5 & 0x1000000000000000) != 0)
        {
          v104 = (v220 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v105 = v94;
        }

        else
        {
          v207 = _StringObject.sharedUTF8.getter(*&v5, v220);
          if (v208 < v94)
          {
            goto LABEL_282;
          }

          v104 = v207;
          v105 = v208;
          v5 = a3;
          v103 = v222;
        }

        v106 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v94, v104, v105);
        v108 = *&v5 >> 63;
      }

      else
      {
        v108 = (v220 >> 62) & 1;
        v223 = v5;
        v224 = v220 & 0xFFFFFFFFFFFFFFLL;
        v106 = &v223;
        v107 = v93;
      }

      closure #1 in _StringGuts.append(_:)(v106, v107, &v225, v108);
      v137 = v103;
      goto LABEL_168;
    }

LABEL_131:
    v102 = v25;
LABEL_132:
    v39 = v220;
    goto LABEL_133;
  }

  if (v98 > 15)
  {
    goto LABEL_115;
  }

LABEL_130:
  if ((v25 & 0x2000000000000000) != 0)
  {
    goto LABEL_131;
  }

LABEL_110:
  if ((v25 & 0x1000000000000000) != 0)
  {
    v13 = _StringGuts._foreignConvertedToSmall()(*&v13, v25);
    v102 = v183;
    goto LABEL_132;
  }

  v39 = v220;
  if ((*&v13 & 0x1000000000000000) != 0)
  {
    v101 = ((v25 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v101 = _StringObject.sharedUTF8.getter(*&v13, v25);
    v90 = v210;
  }

  closure #1 in _StringGuts._convertedToSmall()(v101, v90, &v223, v69);
  v13 = v223;
  v102 = v224;
LABEL_133:
  v39;
  v116._rawBits = 1;
  v117._rawBits = (v95 << 16) | 1;
  v118._rawBits = _StringGuts.validateScalarRange(_:)(v116, v117, *&v5, v39)._rawBits;
  if (v118._rawBits < 0x10000)
  {
    v118._rawBits |= 3;
  }

  if (v118._rawBits >> 16 || v119._rawBits >> 16 != v95)
  {
    v5 = specialized static String._copying(_:)(v118._rawBits, v119._rawBits, *&v5, v39);
    v122 = v121;
    v39;
    v39 = v122;
  }

  if ((v39 & 0x2000000000000000) == 0)
  {
    goto LABEL_271;
  }

  v123 = v39;
LABEL_140:
  v123;
  while (1)
  {
    v124 = specialized _SmallString.init(_:appending:)(*&v13, v102, *&v5, v39);
    if (v126)
    {
      goto LABEL_285;
    }

    v127 = v124;
    v128 = v125;
    v25;
    v225 = v127;
    v226 = v128;
LABEL_167:
    v137 = v222;
LABEL_168:
    v5 = v225;
    v25 = v226;
    v42 = *&v225 & 0xFFFFFFFFFFFFLL;
    if ((v226 & 0x2000000000000000) != 0)
    {
      v46 = HIBYTE(v226) & 0xF;
    }

    else
    {
      v46 = *&v225 & 0xFFFFFFFFFFFFLL;
    }

    v37 = specialized Collection.subscript.getter(v218, v217, v137);
    v27 = v139;
    v39 = v141;
    v44 = v140;
    v218 = v37 >> 16;
    v220 = *&v139 >> 16;
    if ((v140 & 0x1000000000000000) != 0)
    {
LABEL_251:
      swift_bridgeObjectRetain_n(v44, 3);
      v189._rawBits = v37 & 0xFFFFFFFFFFFF0000 | 1;
      v190._rawBits = *&v27 & 0xFFFFFFFFFFFF0000 | 1;
      v191._rawBits = _StringGuts.validateScalarRange(_:)(v189, v190, v39, v44)._rawBits;
      if (v191._rawBits < 0x10000)
      {
        v191._rawBits |= 3;
      }

      v142 = String.UTF8View.distance(from:to:)(v191, v192);
      v44;
    }

    else
    {
      v142 = (*&v139 >> 16) - (v37 >> 16);
      swift_bridgeObjectRetain_n(v140, 2);
    }

    v144 = v46;
    if ((v25 & 0x1000000000000000) != 0)
    {
      v193 = String.UTF8View._foreignCount()();
      v145 = v193 + v142;
      if (__OFADD__(v193, v142))
      {
LABEL_256:
        __break(1u);
        goto LABEL_257;
      }
    }

    else
    {
      v145 = v46 + v142;
      if (__OFADD__(v144, v142))
      {
        goto LABEL_256;
      }
    }

    v146 = *&v5 & ~v25;
    if ((v146 & 0x2000000000000000) == 0 || !swift_isUniquelyReferenced_nonNull_native(v25 & 0xFFFFFFFFFFFFFFFLL))
    {
      if (v145 > 15)
      {
        goto LABEL_187;
      }

      v44;
      if ((v25 & 0x2000000000000000) == 0)
      {
LABEL_182:
        if ((v25 & 0x1000000000000000) != 0)
        {
          v5 = _StringGuts._foreignConvertedToSmall()(*&v5, v25);
          v142 = v182;
        }

        else
        {
          if ((*&v5 & 0x1000000000000000) != 0)
          {
            v150 = ((v25 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v150 = _StringObject.sharedUTF8.getter(*&v5, v25);
            v42 = v209;
          }

          closure #1 in _StringGuts._convertedToSmall()(v150, v42, &v223, v149);
          v5 = v223;
          v142 = v224;
        }

LABEL_206:
        v44;
        v163._rawBits = v37 & 0xFFFFFFFFFFFF0000 | 1;
        v164._rawBits = *&v27 & 0xFFFFFFFFFFFF0000 | 1;
        v165._rawBits = _StringGuts.validateScalarRange(_:)(v163, v164, v39, v44)._rawBits;
        if (v165._rawBits < 0x10000)
        {
          v165._rawBits |= 3;
        }

        v167 = HIBYTE(v44) & 0xF;
        if ((v44 & 0x2000000000000000) == 0)
        {
          v167 = v39 & 0xFFFFFFFFFFFFLL;
        }

        if (v165._rawBits >> 16 || v166._rawBits >> 16 != v167)
        {
          v39 = specialized static String._copying(_:)(v165._rawBits, v166._rawBits, v39, v44);
          v37 = v168;
          v44;
        }

        else
        {
          v37 = v44;
        }

        if ((v37 & 0x2000000000000000) != 0)
        {
          v37;
        }

        else
        {
LABEL_257:
          if ((v37 & 0x1000000000000000) != 0)
          {
            v39 = _StringGuts._foreignConvertedToSmall()(v39, v37);
            v212 = v211;
            v37;
            v37 = v212;
          }

          else
          {
            if ((v39 & 0x1000000000000000) != 0)
            {
              v194 = ((v37 & 0xFFFFFFFFFFFFFFFLL) + 32);
              v195 = v39 & 0xFFFFFFFFFFFFLL;
            }

            else
            {
              v194 = _StringObject.sharedUTF8.getter(v39, v37);
            }

            closure #1 in _StringGuts._convertedToSmall()(v194, v195, &v223, v143);
            v37;
            v39 = v223;
            v37 = v224;
          }
        }

        v169 = HIBYTE(v142) & 0xF;
        v170 = HIBYTE(v37) & 0xF;
        v171 = v170 + v169;
        if (v170 + v169 <= 0xF)
        {
          v44;
          if (v170)
          {
            v172 = 0;
            v173 = 0;
            v174 = 8 * v169;
            v175 = 8 * v170;
            v13 = v219;
            do
            {
              v176 = v37 >> (v172 & 0x38);
              if (v173 < 8)
              {
                v176 = v39 >> v172;
              }

              v177 = (v176 << (v174 & 0x38)) | ((-255 << (v174 & 0x38)) - 1) & v142;
              v178 = (v176 << v174) | ((-255 << v174) - 1) & *&v5;
              if (v169 <= 7)
              {
                v5 = v178;
              }

              else
              {
                v142 = v177;
              }

              ++v169;
              v174 += 8;
              v172 += 8;
              ++v173;
            }

            while (v175 != v172);
          }

          else
          {
            v13 = v219;
          }

          v222;
          v25;
          v179 = 0xA000000000000000;
          if (!(*&v5 & 0x8080808080808080 | v142 & 0x80808080808080))
          {
            v179 = 0xE000000000000000;
          }

          v225 = v5;
          v226 = v179 & 0xFF00000000000000 | (v171 << 56) | v142 & 0xFFFFFFFFFFFFFFLL;
          v158 = v216;
          goto LABEL_240;
        }

LABEL_285:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

LABEL_205:
      v142 = v25;
      goto LABEL_206;
    }

    v147 = _StringGuts.nativeUnusedCapacity.getter(*&v5, v25);
    if (v148)
    {
      goto LABEL_285;
    }

    if (v145 > 15)
    {
      goto LABEL_187;
    }

    if ((v25 & 0x2000000000000000) != 0)
    {
      v44;
      goto LABEL_205;
    }

    if (v147 < v142)
    {
      v44;
      goto LABEL_182;
    }

LABEL_187:
    v102 = v146 & 0x2000000000000000;
    v151 = _StringGuts.nativeUnusedCapacity.getter(*&v5, v25);
    if (v152)
    {
      v153 = v222;
      v13 = v219;
      if (!v102)
      {
        goto LABEL_190;
      }

LABEL_189:
      swift_isUniquelyReferenced_nonNull_native(v25 & 0xFFFFFFFFFFFFFFFLL);
      goto LABEL_190;
    }

    v153 = v222;
    v13 = v219;
    if (v151 >= v142)
    {
      break;
    }

    if (v102)
    {
      goto LABEL_189;
    }

LABEL_190:
    v154 = _StringGuts.nativeCapacity.getter(*&v5, v25);
    if (v155)
    {
      v156 = 0;
    }

    else
    {
      v156 = v154;
    }

    if (v156 + 0x4000000000000000 >= 0)
    {
      v157 = 2 * v156;
      if (v157 > v145)
      {
        v145 = v157;
      }

LABEL_196:
      v158 = v216;
      goto LABEL_197;
    }

    __break(1u);
LABEL_271:
    v200 = v39;
    if ((v39 & 0x1000000000000000) != 0)
    {
      v5 = _StringGuts._foreignConvertedToSmall()(*&v5, v39);
      v39 = v215;
      v123 = v200;
      goto LABEL_140;
    }

    if ((*&v5 & 0x1000000000000000) != 0)
    {
      v201 = ((v39 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v202 = *&v5 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v201 = _StringObject.sharedUTF8.getter(*&v5, v39);
    }

    closure #1 in _StringGuts._convertedToSmall()(v201, v202, &v223, v120);
    v39;
    v5 = v223;
    v39 = v224;
  }

  if (!v102)
  {
    goto LABEL_196;
  }

  v158 = v216;
  if (!swift_isUniquelyReferenced_nonNull_native(v25 & 0xFFFFFFFFFFFFFFFLL))
  {
LABEL_197:
    _StringGuts.grow(_:)(v145);
  }

  if ((v44 & 0x1000000000000000) != 0)
  {
    v44;
    _StringGuts._foreignAppendInPlace(_:)(v39, v44, v218, v220);
    v153;
    v44;
  }

  else
  {
    if ((v44 & 0x2000000000000000) == 0)
    {
      if ((v39 & 0x1000000000000000) != 0)
      {
        v159 = ((v44 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v160 = v39 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v159 = _StringObject.sharedUTF8.getter(v39, v44);
        v160 = v206;
      }

      if (v160 >= v220)
      {
        v161 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v218, v220, v159, v160);
        closure #1 in _StringGuts.append(_:)(v161, v162, &v225, v39 < 0);
        v153;
        swift_bridgeObjectRelease_n(v44, 2);
        goto LABEL_240;
      }

LABEL_282:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    v44;
    v223 = v39;
    v224 = v44 & 0xFFFFFFFFFFFFFFLL;
    if ((HIBYTE(v44) & 0xF) < v220 || (v220 - v218) < 0)
    {
      goto LABEL_282;
    }

    closure #1 in _StringGuts.append(_:)(&v223 + v218, v220 - v218, &v225, (v44 & 0x4000000000000000) != 0);
    v153;
    v44;
  }

LABEL_240:
  v180 = v226;
  *v158 = v225;
  v158[1] = v180;
  return v13;
}

uint64_t specialized _StringGuts.replaceSubrange<A>(_:with:)(Swift::UInt64 a1, Swift::UInt64 a2, unint64_t a3, Swift::UInt64 a4, uint64_t a5, unint64_t a6)
{
  v8 = v6;
  v14 = *v8;
  v15 = *(v8 + 8);
  if ((*v8 & ~v15 & 0x2000000000000000) == 0 || !swift_isUniquelyReferenced_nonNull_native(v15 & 0xFFFFFFFFFFFFFFFLL))
  {
    v234 = a3;
    v236 = a5;
    v238 = a4;
    v231 = v8;
    v247 = 0;
    v248 = 0xE000000000000000;
    v36 = _StringGuts.nativeCapacity.getter(v14, v15);
    if ((v37 & 1) == 0)
    {
      String.reserveCapacity(_:)(v36);
    }

    v232 = v14;
    v233 = a6;
    v38._rawBits = a1;
    v241 = v15;
    v40 = specialized Collection.subscript.getter(v38, v14, v15);
    v42 = v41;
    v8 = v43;
    a1 = v39;
    v16 = v40 >> 16;
    v15 = v41 >> 16;
    if ((v39 & 0x1000000000000000) != 0)
    {
      swift_bridgeObjectRetain_n(v39, 3);
      v194._rawBits = v40 & 0xFFFFFFFFFFFF0000 | 1;
      v195._rawBits = v42 & 0xFFFFFFFFFFFF0000 | 1;
      v196._rawBits = _StringGuts.validateScalarRange(_:)(v194, v195, v8, a1)._rawBits;
      if (v196._rawBits < 0x10000)
      {
        v196._rawBits |= 3;
      }

      v44 = String.UTF8View.distance(from:to:)(v196, v197);
      a1;
      v46 = v247;
      v45 = v248;
    }

    else
    {
      v44 = v15 - v16;
      swift_bridgeObjectRetain_n(v39, 2);
      v46 = v247;
      v45 = v248;
    }

    v47 = HIBYTE(v45) & 0xF;
    v48 = v47 + v44;
    if (__OFADD__(v47, v44))
    {
      __break(1u);
      goto LABEL_147;
    }

    if ((v46 & ~v45 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v45 & 0xFFFFFFFFFFFFFFFLL))
    {
      _StringGuts.nativeUnusedCapacity.getter(v46, v45);
      if (v49)
      {
        goto LABEL_194;
      }

      if (v48 > 15)
      {
LABEL_28:
        _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v48, v44);
        if ((a1 & 0x1000000000000000) != 0)
        {
          a1;
          _StringGuts._foreignAppendInPlace(_:)(v8, a1, v16, v15);
          a1;
          v55 = v247;
          v53 = v248;
          v104 = v236;
          v103 = v238;
LABEL_71:
          v99 = a2;
          goto LABEL_72;
        }

        a4 = v238;
        if ((a1 & 0x2000000000000000) != 0)
        {
          a1;
          *&v242 = v8;
          *(&v242 + 1) = a1 & 0xFFFFFFFFFFFFFFLL;
          if ((HIBYTE(a1) & 0xF) < v15 || (v15 - v16) < 0)
          {
            goto LABEL_174;
          }

          a1;
          v53 = v248;
          v116 = v248 & 0xFFFFFFFFFFFFFFFLL;
          specialized UnsafeMutablePointer.initialize(from:count:)(&v242 + v16, v15 - v16, ((v248 & 0xFFFFFFFFFFFFFFFLL) + (*((v248 & 0xFFFFFFFFFFFFFFFLL) + 0x18) & 0xFFFFFFFFFFFFLL) + 32));
          __StringStorage._updateCountAndFlags(newCount:newIsASCII:)((*(v116 + 24) & 0xFFFFFFFFFFFFLL) + v15 - v16, (a1 >> 62) & (*(v116 + 24) < 0));
          v55 = *(v116 + 24);
          v247 = v55;
          goto LABEL_70;
        }

        if ((v8 & 0x1000000000000000) != 0)
        {
          v50 = ((a1 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v51 = v8 & 0xFFFFFFFFFFFFLL;
          if ((v8 & 0xFFFFFFFFFFFFLL) < v15)
          {
            goto LABEL_174;
          }

LABEL_32:
          a1;
          v52 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v16, v15, v50, v51);
          v53 = v248;
          __StringStorage.appendInPlace(_:isASCII:)(v52, v54, v8 < 0);
          v55 = *((v248 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
          v247 = v55;
          a1;
LABEL_70:
          v104 = v236;
          v103 = a4;
          goto LABEL_71;
        }

LABEL_171:
        v50 = _StringObject.sharedUTF8.getter(v8, a1);
        v51 = v219;
        if (v219 < v15)
        {
          goto LABEL_174;
        }

        goto LABEL_32;
      }
    }

    else if (v48 >= 16)
    {
      goto LABEL_28;
    }

    a1;
    v72 = _StringGuts._convertedToSmall()(v46, v45, v64, v65, v66, v67, v68, v69, v70, v71);
    v74 = HIBYTE(a1) & 0xF;
    if ((a1 & 0x2000000000000000) == 0)
    {
      v74 = v8 & 0xFFFFFFFFFFFFLL;
    }

    if (v74 < v15)
    {
      goto LABEL_153;
    }

    v55 = v72;
    v75 = v73;
    v76 = v42 & 0xFFFFFFFFFFFF0000;
    v77 = v40 & 0xFFFFFFFFFFFF0000;
    if (v40 >= 0x10000)
    {
      v78 = 1;
    }

    else
    {
      v78 = 3;
    }

    a1;
    v79 = Substring.description.getter(v78 | v77, v76 | 1, v8, a1);
    v81 = v80;
    a1;
    v90 = _StringGuts._convertedToSmall()(v79, v81, v82, v83, v84, v85, v86, v87, v88, v89);
    v92 = v91;
    v81;
    v93 = HIBYTE(v75) & 0xF;
    v94 = HIBYTE(v92) & 0xF;
    v95 = v94 + v93;
    if (v94 + v93 >= 0x10)
    {
      goto LABEL_194;
    }

    a1;
    if (v94)
    {
      v96 = 0;
      v97 = 0;
      v98 = 8 * v93;
      v99 = a2;
      do
      {
        v100 = v92 >> (v96 & 0x38);
        if (v97 < 8)
        {
          v100 = v90 >> v96;
        }

        v101 = (v100 << (v98 & 0x38)) | ((-255 << (v98 & 0x38)) - 1) & v75;
        v102 = (v100 << v98) | ((-255 << v98) - 1) & v55;
        if (v93 <= 7)
        {
          v55 = v102;
        }

        else
        {
          v75 = v101;
        }

        ++v93;
        v98 += 8;
        v96 += 8;
        ++v97;
      }

      while (8 * v94 != v96);
    }

    else
    {
      v99 = a2;
    }

    v45;
    v115 = 0xA000000000000000;
    if (!(v55 & 0x8080808080808080 | v75 & 0x80808080808080))
    {
      v115 = 0xE000000000000000;
    }

    v53 = v115 & 0xFF00000000000000 | (v95 << 56) | v75 & 0xFFFFFFFFFFFFFFLL;
    v247 = v55;
    v248 = v53;
    v104 = v236;
    v103 = v238;
LABEL_72:
    v117 = HIBYTE(v53) & 0xF;
    if ((v53 & 0x2000000000000000) == 0)
    {
      v117 = v55 & 0xFFFFFFFFFFFFLL;
    }

    v238 = v117;
    String.append(contentsOf:)(v234, v103, v104, v233, v56, v57, v58, v59, v60, v61, v62, v63);
    v15 = v247;
    v45 = v248;
    if ((v248 & 0x2000000000000000) != 0)
    {
      v118 = HIBYTE(v248) & 0xF;
    }

    else
    {
      v118 = v247 & 0xFFFFFFFFFFFFLL;
    }

    v42 = specialized Collection.subscript.getter(v99, v232, v241);
    v48 = v120;
    v44 = v121;
    v40 = v119;
    v8 = v42 >> 16;
    v16 = v120 >> 16;
    a2 = v118;
    if ((v119 & 0x1000000000000000) == 0)
    {
      v122 = v16 - v8;
      swift_bridgeObjectRetain_n(v119, 2);
      v123 = v118;
      if ((v45 & 0x1000000000000000) == 0)
      {
        goto LABEL_79;
      }

      goto LABEL_150;
    }

LABEL_147:
    swift_bridgeObjectRetain_n(v40, 3);
    v198._rawBits = v42 & 0xFFFFFFFFFFFF0000 | 1;
    v199._rawBits = v48 & 0xFFFFFFFFFFFF0000 | 1;
    v200._rawBits = _StringGuts.validateScalarRange(_:)(v198, v199, v44, v40)._rawBits;
    if (v200._rawBits < 0x10000)
    {
      v200._rawBits |= 3;
    }

    v122 = String.UTF8View.distance(from:to:)(v200, v201);
    v40;
    v123 = a2;
    if ((v45 & 0x1000000000000000) == 0)
    {
LABEL_79:
      v124 = v123 + v122;
      if (!__OFADD__(v123, v122))
      {
        goto LABEL_80;
      }

      goto LABEL_152;
    }

LABEL_150:
    v202 = String.UTF8View._foreignCount()();
    v124 = v202 + v122;
    if (!__OFADD__(v202, v122))
    {
LABEL_80:
      if ((v15 & ~v45 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v45 & 0xFFFFFFFFFFFFFFFLL))
      {
        v125 = _StringGuts.nativeUnusedCapacity.getter(v15, v45);
        if (v126)
        {
          goto LABEL_194;
        }

        v127 = (v45 >> 61) & 1;
        if (v125 < v122)
        {
          LOBYTE(v127) = 1;
        }

        if (v124 <= 15 && (v127 & 1) != 0)
        {
LABEL_87:
          v40;
          v136 = _StringGuts._convertedToSmall()(v15, v45, v128, v129, v130, v131, v132, v133, v134, v135);
          v138 = HIBYTE(v40) & 0xF;
          if ((v40 & 0x2000000000000000) == 0)
          {
            v138 = v44 & 0xFFFFFFFFFFFFLL;
          }

          if (v138 >= v16)
          {
            v139 = v136;
            v140 = v137;
            v141 = v42 & 0xFFFFFFFFFFFF0000;
            if (v42 >= 0x10000)
            {
              v142 = 1;
            }

            else
            {
              v142 = 3;
            }

            v40;
            v143 = Substring.description.getter(v142 | v141, v48 & 0xFFFFFFFFFFFF0000 | 1, v44, v40);
            v145 = v144;
            v40;
            v154 = _StringGuts._convertedToSmall()(v143, v145, v146, v147, v148, v149, v150, v151, v152, v153);
            v156 = v155;
            v145;
            v157 = HIBYTE(v140) & 0xF;
            v158 = HIBYTE(v156) & 0xF;
            v159 = v158 + v157;
            if (v158 + v157 < 0x10)
            {
              v40;
              v22 = v238;
              if (v158)
              {
                v160 = 0;
                v161 = 0;
                v162 = 8 * v157;
                do
                {
                  v163 = v156 >> (v160 & 0x38);
                  if (v161 < 8)
                  {
                    v163 = v154 >> v160;
                  }

                  v164 = (v163 << (v162 & 0x38)) | ((-255 << (v162 & 0x38)) - 1) & v140;
                  v165 = (v163 << v162) | ((-255 << v162) - 1) & v139;
                  if (v157 <= 7)
                  {
                    v139 = v165;
                  }

                  else
                  {
                    v140 = v164;
                  }

                  ++v157;
                  v162 += 8;
                  v160 += 8;
                  ++v161;
                }

                while (8 * v158 != v160);
              }

              v241;
              v45;
              v166 = 0xA000000000000000;
              if (!(v139 & 0x8080808080808080 | v140 & 0x80808080808080))
              {
                v166 = 0xE000000000000000;
              }

              v247 = v139;
              v248 = v166 & 0xFF00000000000000 | (v159 << 56) | v140 & 0xFFFFFFFFFFFFFFLL;
              goto LABEL_116;
            }

LABEL_194:
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
          }

LABEL_153:
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
        }
      }

      else if (v124 < 16)
      {
        goto LABEL_87;
      }

      _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v124, v122);
      if ((v40 & 0x1000000000000000) != 0)
      {
        v40;
        _StringGuts._foreignAppendInPlace(_:)(v44, v40, v8, v16);
        v241;
        v40;
        v22 = v238;
LABEL_116:
        v174 = v248;
        *v231 = v247;
        v231[1] = v174;
        return v22;
      }

      v22 = v238;
      if ((v40 & 0x2000000000000000) == 0)
      {
        if ((v44 & 0x1000000000000000) != 0)
        {
          v167 = ((v40 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v168 = v44 & 0xFFFFFFFFFFFFLL;
          if ((v44 & 0xFFFFFFFFFFFFLL) < v16)
          {
            goto LABEL_174;
          }
        }

        else
        {
          v167 = _StringObject.sharedUTF8.getter(v44, v40);
          v168 = v220;
          if (v220 < v16)
          {
            goto LABEL_174;
          }
        }

        v40;
        v169 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v8, v16, v167, v168);
        v170 = v248 & 0xFFFFFFFFFFFFFFFLL;
        __StringStorage.appendInPlace(_:isASCII:)(v169, v171, v44 < 0);
        v247 = *(v170 + 24);
        v241;
        v172 = v40;
        goto LABEL_115;
      }

      v40;
      *&v242 = v44;
      *(&v242 + 1) = v40 & 0xFFFFFFFFFFFFFFLL;
      if ((HIBYTE(v40) & 0xF) >= v16 && (v16 - v8) >= 0)
      {
        v40;
        v173 = v248 & 0xFFFFFFFFFFFFFFFLL;
        specialized UnsafeMutablePointer.initialize(from:count:)(&v242 + v8, v16 - v8, ((v248 & 0xFFFFFFFFFFFFFFFLL) + (*((v248 & 0xFFFFFFFFFFFFFFFLL) + 0x18) & 0xFFFFFFFFFFFFLL) + 32));
        __StringStorage._updateCountAndFlags(newCount:newIsASCII:)((*(v173 + 24) & 0xFFFFFFFFFFFFLL) + v16 - v8, (v40 >> 62) & (*(v173 + 24) < 0));
        v247 = *(v173 + 24);
        v172 = v241;
LABEL_115:
        v172;
        goto LABEL_116;
      }

LABEL_174:
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

LABEL_152:
    __break(1u);
    goto LABEL_153;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    v235 = a3;
    v237 = a5;
    v247 = a3;
    v248 = a4;
    v249 = a5;
    v250 = a6;
    v251 = closure #3 in _StringGuts.replaceSubrange<A>(_:with:);
    v252 = 0;
    a6;
    v203 = specialized FlattenSequence<>.startIndex.getter();
    v205 = &v247;
    v239 = a4;
    v207 = specialized FlattenSequence<>.distance(from:to:)(v203, v206, v204 & 1, a4, 0, 1);
    v22 = a1 >> 16;
    v208 = (a1 >> 16) + v207;
    if (__OFADD__(a1 >> 16, v207))
    {
      __break(1u);
    }

    else
    {
      a4 = a2 >> 16;
      v209 = v14 & 0xFFFFFFFFFFFFLL;
      if ((v15 & 0x2000000000000000) != 0)
      {
        v209 = HIBYTE(v15) & 0xF;
      }

      v210 = v209 - a4;
      v211 = v208 + v210;
      if (!__OFADD__(v208, v210))
      {
        v7 = v207;
        if (v211 < 16)
        {
          goto LABEL_188;
        }

        v212 = _StringGuts.uniqueNativeCapacity.getter();
        if ((v213 & 1) == 0 && v212 >= v211)
        {
          goto LABEL_188;
        }

        v15 = a6;
        a1 = v8;
        v214 = _StringGuts.uniqueNativeCapacity.getter();
        if (v215)
        {
          v216 = *(v8 + 8);
          if ((v216 & 0x1000000000000000) != 0)
          {
            v217 = String.UTF8View._foreignCount()();
          }

          else if ((v216 & 0x2000000000000000) != 0)
          {
            v217 = HIBYTE(v216) & 0xF;
          }

          else
          {
            v217 = *v8 & 0xFFFFFFFFFFFFLL;
          }
        }

        else
        {
          v217 = 2 * v214;
        }

        if (v217 <= v211)
        {
          v205 = v211;
        }

        else
        {
          v205 = v217;
        }

        v221 = *(v8 + 8);
        if ((v221 & 0x1000000000000000) == 0)
        {
          v222 = *v8;
          if ((v221 & 0x2000000000000000) != 0)
          {
            v225 = (v221 >> 62) & 1;
            v224 = HIBYTE(v221) & 0xF;
            *&v242 = *v8;
            *(&v242 + 1) = v221 & 0xFFFFFFFFFFFFFFLL;
            v223 = &v242;
          }

          else
          {
            if ((v222 & 0x1000000000000000) != 0)
            {
              v223 = ((v221 & 0xFFFFFFFFFFFFFFFLL) + 32);
              v224 = v222 & 0xFFFFFFFFFFFFLL;
            }

            else
            {
              v223 = _StringObject.sharedUTF8.getter(*v8, *(v8 + 8));
            }

            v225 = v222 >> 63;
          }

          v226 = specialized static __StringStorage.create(initializingFrom:codeUnitCapacity:isASCII:)(v223, v224, v205, v225);
          v227 = *(v226 + 24);
          v221;
          *v8 = v227;
          *(v8 + 8) = v226;
          goto LABEL_187;
        }

LABEL_197:
        v8 = a1;
        _StringGuts._foreignGrow(_:)(v205);
LABEL_187:
        a6 = v15;
LABEL_188:
        v228 = *(v8 + 8) & 0xFFFFFFFFFFFFFFFLL;
        *&v242 = v235;
        *(&v242 + 1) = v239;
        v243 = v237;
        v244 = a6;
        v245 = closure #3 in _StringGuts.replaceSubrange<A>(_:with:);
        v246 = 0;
        specialized __StringStorage.replace<A>(from:to:with:replacementCount:)(v22, a4, &v242, v7);
        a6;
        *v8 = *(v228 + 24);
        return v22;
      }
    }

    __break(1u);
    goto LABEL_197;
  }

  v16 = a3 >> 16;
  v17 = a4 >> 16;
  if ((a6 & 0x2000000000000000) == 0)
  {
    if ((a5 & 0x1000000000000000) != 0)
    {
      v18 = ((a6 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v19 = a5 & 0xFFFFFFFFFFFFLL;
      if ((a5 & 0xFFFFFFFFFFFFLL) < v17)
      {
        goto LABEL_174;
      }
    }

    else
    {
      v18 = _StringObject.sharedUTF8.getter(a5, a6);
      v19 = v218;
      v17 = a4 >> 16;
      if (v19 < (a4 >> 16))
      {
        goto LABEL_174;
      }
    }

    v20 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(a3 >> 16, v17, v18, v19);
    v22 = a1 >> 16;
    v23 = (a1 >> 16) + v21;
    if (__OFADD__(a1 >> 16, v21))
    {
      __break(1u);
    }

    else
    {
      a4 = a2 >> 16;
      v24 = v14 & 0xFFFFFFFFFFFFLL;
      if ((v15 & 0x2000000000000000) != 0)
      {
        v24 = HIBYTE(v15) & 0xF;
      }

      v25 = v24 - a4;
      v26 = v23 + v25;
      if (!__OFADD__(v23, v25))
      {
        v27 = v20;
        v28 = v21;
        if (v26 >= 16)
        {
          v29 = v20;
          v30 = _StringGuts.uniqueNativeCapacity.getter();
          if ((v31 & 1) != 0 || (v27 = v29, v30 < v26))
          {
            v32 = _StringGuts.uniqueNativeCapacity.getter();
            if (v33)
            {
              v34 = *(v8 + 8);
              if ((v34 & 0x1000000000000000) != 0)
              {
                v35 = String.UTF8View._foreignCount()();
              }

              else if ((v34 & 0x2000000000000000) != 0)
              {
                v35 = HIBYTE(v34) & 0xF;
              }

              else
              {
                v35 = *v8 & 0xFFFFFFFFFFFFLL;
              }
            }

            else
            {
              v35 = 2 * v32;
            }

            if (v35 <= v26)
            {
              v182 = v26;
            }

            else
            {
              v182 = v35;
            }

            v183 = *(v8 + 8);
            if ((v183 & 0x1000000000000000) != 0)
            {
              _StringGuts._foreignGrow(_:)(v182);
            }

            else
            {
              v184 = *v8;
              if ((v183 & 0x2000000000000000) != 0)
              {
                v187 = (v183 >> 62) & 1;
                v186 = HIBYTE(v183) & 0xF;
                v247 = *v8;
                v248 = v183 & 0xFFFFFFFFFFFFFFLL;
                v185 = &v247;
              }

              else
              {
                if ((v184 & 0x1000000000000000) != 0)
                {
                  v185 = ((v183 & 0xFFFFFFFFFFFFFFFLL) + 32);
                  v186 = v184 & 0xFFFFFFFFFFFFLL;
                }

                else
                {
                  v230 = v182;
                  v185 = _StringObject.sharedUTF8.getter(*v8, *(v8 + 8));
                  v182 = v230;
                }

                v187 = v184 >> 63;
              }

              v191 = specialized static __StringStorage.create(initializingFrom:codeUnitCapacity:isASCII:)(v185, v186, v182, v187);
              v192 = *(v191 + 24);
              v183;
              *v8 = v192;
              *(v8 + 8) = v191;
            }

            v27 = v29;
          }
        }

        v193 = *(v8 + 8) & 0xFFFFFFFFFFFFFFFLL;
        __StringStorage.replace(from:to:with:)(v22, a4, v27, v28);
        *v8 = *(v193 + 24);
        return v22;
      }
    }

    __break(1u);
    goto LABEL_171;
  }

  v247 = a5;
  v248 = a6 & 0xFFFFFFFFFFFFFFLL;
  if ((HIBYTE(a6) & 0xF) < v17)
  {
    goto LABEL_174;
  }

  v105 = v17 - v16;
  if ((v17 - v16) < 0)
  {
    goto LABEL_174;
  }

  v22 = a1 >> 16;
  v106 = a2 >> 16;
  v107 = v14 & 0xFFFFFFFFFFFFLL;
  if ((v15 & 0x2000000000000000) != 0)
  {
    v107 = HIBYTE(v15) & 0xF;
  }

  v108 = v107 - v106 + v105 + (a1 >> 16);
  if (v108 >= 16)
  {
    v109 = _StringGuts.uniqueNativeCapacity.getter();
    if ((v110 & 1) != 0 || v109 < v108)
    {
      v111 = _StringGuts.uniqueNativeCapacity.getter();
      if (v112)
      {
        v113 = *(v8 + 8);
        if ((v113 & 0x1000000000000000) != 0)
        {
          v114 = String.UTF8View._foreignCount()();
        }

        else if ((v113 & 0x2000000000000000) != 0)
        {
          v114 = HIBYTE(v113) & 0xF;
        }

        else
        {
          v114 = *v8 & 0xFFFFFFFFFFFFLL;
        }
      }

      else
      {
        v114 = 2 * v111;
      }

      if (v114 <= v108)
      {
        v176 = v108;
      }

      else
      {
        v176 = v114;
      }

      v177 = *(v8 + 8);
      if ((v177 & 0x1000000000000000) != 0)
      {
        _StringGuts._foreignGrow(_:)(v176);
      }

      else
      {
        v178 = *v8;
        if ((v177 & 0x2000000000000000) != 0)
        {
          v181 = (v177 >> 62) & 1;
          v180 = HIBYTE(v177) & 0xF;
          *&v242 = *v8;
          *(&v242 + 1) = v177 & 0xFFFFFFFFFFFFFFLL;
          v179 = &v242;
        }

        else
        {
          if ((v178 & 0x1000000000000000) != 0)
          {
            v179 = ((v177 & 0xFFFFFFFFFFFFFFFLL) + 32);
            v180 = v178 & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            v229 = v176;
            v179 = _StringObject.sharedUTF8.getter(*v8, *(v8 + 8));
            v176 = v229;
          }

          v181 = v178 >> 63;
        }

        v188 = specialized static __StringStorage.create(initializingFrom:codeUnitCapacity:isASCII:)(v179, v180, v176, v181);
        v189 = *(v188 + 24);
        v177;
        *v8 = v189;
        *(v8 + 8) = v188;
      }
    }
  }

  v190 = *(v8 + 8) & 0xFFFFFFFFFFFFFFFLL;
  __StringStorage.replace(from:to:with:)(v22, v106, &v247 + v16, v105);
  *v8 = *(v190 + 24);
  return v22;
}

unint64_t specialized _StringGuts.replaceSubrange<A>(_:with:)(Swift::UInt64 a1, Swift::UInt64 a2, unint64_t a3)
{
  v4 = v3;
  v9 = *v3;
  v8 = v3[1];
  if ((*v3 & ~v8 & 0x2000000000000000) == 0 || !swift_isUniquelyReferenced_nonNull_native(v8 & 0xFFFFFFFFFFFFFFFLL))
  {
    v180 = v3;
    v181 = a3;
    v186 = 0;
    v187 = 0xE000000000000000;
    v28 = _StringGuts.nativeCapacity.getter(v9, v8);
    if ((v29 & 1) == 0)
    {
      String.reserveCapacity(_:)(v28);
    }

    v182 = v9;
    v184 = a2;
    v30._rawBits = a1;
    v185 = v8;
    v32 = specialized Collection.subscript.getter(v30, v9, v8);
    v34 = v33;
    v36 = v35;
    v37 = v31;
    v38 = v32 >> 16;
    v39 = v33 >> 16;
    if ((v31 & 0x1000000000000000) != 0)
    {
      swift_bridgeObjectRetain_n(v31, 3);
      v168._rawBits = v32 & 0xFFFFFFFFFFFF0000 | 1;
      v169._rawBits = v34 & 0xFFFFFFFFFFFF0000 | 1;
      v170._rawBits = _StringGuts.validateScalarRange(_:)(v168, v169, v36, v37)._rawBits;
      if (v170._rawBits < 0x10000)
      {
        v170._rawBits |= 3;
      }

      v40 = String.UTF8View.distance(from:to:)(v170, v171);
      v37;
      v42 = v186;
      v41 = v187;
    }

    else
    {
      v40 = v39 - v38;
      swift_bridgeObjectRetain_n(v31, 2);
      v42 = v186;
      v41 = v187;
    }

    v43 = HIBYTE(v41) & 0xF;
    v44 = v43 + v40;
    if (__OFADD__(v43, v40))
    {
      __break(1u);
      goto LABEL_122;
    }

    if ((v42 & ~v41 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v41 & 0xFFFFFFFFFFFFFFFLL))
    {
      _StringGuts.nativeUnusedCapacity.getter(v42, v41);
      if (v45)
      {
        goto LABEL_140;
      }

      if (v44 > 15)
      {
        goto LABEL_24;
      }
    }

    else if (v44 >= 16)
    {
LABEL_24:
      _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v44, v40);
      if ((v37 & 0x1000000000000000) != 0)
      {
        v37;
        _StringGuts._foreignAppendInPlace(_:)(v36, v37, v38, v39);
        v37;
        v52 = v186;
        v50 = v187;
        v46 = v184;
        v53 = v185;
LABEL_47:
        v85 = v182;
        goto LABEL_55;
      }

      v46 = v184;
      if ((v37 & 0x2000000000000000) == 0)
      {
        if ((v36 & 0x1000000000000000) != 0)
        {
          v47 = ((v37 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v48 = v36 & 0xFFFFFFFFFFFFLL;
          if ((v36 & 0xFFFFFFFFFFFFLL) < v39)
          {
            goto LABEL_136;
          }
        }

        else
        {
          v47 = _StringObject.sharedUTF8.getter(v36, v37);
          v48 = v177;
          if (v177 < v39)
          {
            goto LABEL_136;
          }
        }

        v37;
        v49 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v38, v39, v47, v48);
        v50 = v187;
        __StringStorage.appendInPlace(_:isASCII:)(v49, v51, v36 < 0);
        v52 = *((v187 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v186 = v52;
        v37;
        v53 = v185;
        goto LABEL_47;
      }

      v37;
      v191 = v36;
      v192 = v37 & 0xFFFFFFFFFFFFFFLL;
      if ((HIBYTE(v37) & 0xF) < v39)
      {
        goto LABEL_136;
      }

      v85 = v182;
      if ((v39 - v38) < 0)
      {
        goto LABEL_136;
      }

      v37;
      v50 = v187;
      specialized UnsafeMutablePointer.initialize(from:count:)(&v191 + v38, v39 - v38, ((v187 & 0xFFFFFFFFFFFFFFFLL) + (*((v187 & 0xFFFFFFFFFFFFFFFLL) + 0x18) & 0xFFFFFFFFFFFFLL) + 32));
      __StringStorage._updateCountAndFlags(newCount:newIsASCII:)((*((v187 & 0xFFFFFFFFFFFFFFFLL) + 0x18) & 0xFFFFFFFFFFFFLL) + v39 - v38, (v37 >> 62) & (*((v187 & 0xFFFFFFFFFFFFFFFLL) + 0x18) < 0));
      v52 = *((v187 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v186 = v52;
      v53 = v185;
LABEL_55:
      v93 = HIBYTE(v50) & 0xF;
      if ((v50 & 0x2000000000000000) == 0)
      {
        v93 = v52 & 0xFFFFFFFFFFFFLL;
      }

      v182 = v93;
      specialized String.append<A>(contentsOf:)(v181);
      v38 = v186;
      v41 = v187;
      if ((v187 & 0x2000000000000000) != 0)
      {
        v94 = HIBYTE(v187) & 0xF;
      }

      else
      {
        v94 = v186 & 0xFFFFFFFFFFFFLL;
      }

      v34 = specialized Collection.subscript.getter(v46, v85, v53);
      v37 = v96;
      v36 = v97;
      v40 = v95;
      v39 = v34 >> 16;
      v32 = v96 >> 16;
      v184 = v94;
      if ((v95 & 0x1000000000000000) == 0)
      {
        v98 = v32 - v39;
        swift_bridgeObjectRetain_n(v95, 2);
        v99 = v94;
        if ((v187 & 0x1000000000000000) == 0)
        {
          goto LABEL_62;
        }

        goto LABEL_125;
      }

LABEL_122:
      swift_bridgeObjectRetain_n(v40, 3);
      v172._rawBits = v34 & 0xFFFFFFFFFFFF0000 | 1;
      v173._rawBits = v37 & 0xFFFFFFFFFFFF0000 | 1;
      v174._rawBits = _StringGuts.validateScalarRange(_:)(v172, v173, v36, v40)._rawBits;
      if (v174._rawBits < 0x10000)
      {
        v174._rawBits |= 3;
      }

      v98 = String.UTF8View.distance(from:to:)(v174, v175);
      v40;
      v99 = v184;
      if ((v41 & 0x1000000000000000) == 0)
      {
LABEL_62:
        v100 = v99 + v98;
        if (!__OFADD__(v99, v98))
        {
          goto LABEL_63;
        }

        goto LABEL_127;
      }

LABEL_125:
      v176 = String.UTF8View._foreignCount()();
      v100 = v176 + v98;
      if (!__OFADD__(v176, v98))
      {
LABEL_63:
        if ((v38 & ~v41 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v41 & 0xFFFFFFFFFFFFFFFLL))
        {
          v101 = _StringGuts.nativeUnusedCapacity.getter(v38, v41);
          if (v102)
          {
            goto LABEL_140;
          }

          v103 = (v41 >> 61) & 1;
          if (v101 < v98)
          {
            LOBYTE(v103) = 1;
          }

          if (v100 <= 15 && (v103 & 1) != 0)
          {
LABEL_70:
            v40;
            v112 = _StringGuts._convertedToSmall()(v38, v41, v104, v105, v106, v107, v108, v109, v110, v111);
            v114 = HIBYTE(v40) & 0xF;
            if ((v40 & 0x2000000000000000) == 0)
            {
              v114 = v36 & 0xFFFFFFFFFFFFLL;
            }

            if (v114 >= v32)
            {
              v115 = v112;
              v116 = v113;
              v117 = v37 & 0xFFFFFFFFFFFF0000;
              v118 = v34 & 0xFFFFFFFFFFFF0000;
              if (v34 >= 0x10000)
              {
                v119 = 1;
              }

              else
              {
                v119 = 3;
              }

              v40;
              v120 = Substring.description.getter(v119 | v118, v117 | 1, v36, v40);
              v122 = v121;
              v40;
              v131 = _StringGuts._convertedToSmall()(v120, v122, v123, v124, v125, v126, v127, v128, v129, v130);
              v133 = v132;
              v122;
              v134 = HIBYTE(v116) & 0xF;
              v135 = HIBYTE(v133) & 0xF;
              v136 = v135 + v134;
              if (v135 + v134 < 0x10)
              {
                v40;
                v137 = v180;
                if (v135)
                {
                  v138 = 0;
                  v139 = 0;
                  v140 = 8 * v134;
                  do
                  {
                    v141 = v133 >> (v138 & 0x38);
                    if (v139 < 8)
                    {
                      v141 = v131 >> v138;
                    }

                    v142 = (v141 << (v140 & 0x38)) | ((-255 << (v140 & 0x38)) - 1) & v116;
                    v143 = (v141 << v140) | ((-255 << v140) - 1) & v115;
                    if (v134 <= 7)
                    {
                      v115 = v143;
                    }

                    else
                    {
                      v116 = v142;
                    }

                    ++v134;
                    v140 += 8;
                    v138 += 8;
                    ++v139;
                  }

                  while (8 * v135 != v138);
                }

                v185;
                v41;
                v144 = 0xA000000000000000;
                if (!(v115 & 0x8080808080808080 | v116 & 0x80808080808080))
                {
                  v144 = 0xE000000000000000;
                }

                v186 = v115;
                v187 = v144 & 0xFF00000000000000 | (v136 << 56) | v116 & 0xFFFFFFFFFFFFFFLL;
                result = v182;
                goto LABEL_99;
              }

LABEL_140:
              _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
            }

LABEL_128:
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
          }
        }

        else if (v100 < 16)
        {
          goto LABEL_70;
        }

        _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v100, v98);
        if ((v40 & 0x1000000000000000) != 0)
        {
          v40;
          _StringGuts._foreignAppendInPlace(_:)(v36, v40, v39, v32);
          v185;
          v40;
          v137 = v180;
          result = v182;
LABEL_99:
          v151 = v187;
          *v137 = v186;
          v137[1] = v151;
          return result;
        }

        if ((v40 & 0x2000000000000000) == 0)
        {
          if ((v36 & 0x1000000000000000) != 0)
          {
            v146 = ((v40 & 0xFFFFFFFFFFFFFFFLL) + 32);
            v147 = v36 & 0xFFFFFFFFFFFFLL;
            if ((v36 & 0xFFFFFFFFFFFFLL) < v32)
            {
              goto LABEL_136;
            }
          }

          else
          {
            v146 = _StringObject.sharedUTF8.getter(v36, v40);
            v147 = v178;
            if (v178 < v32)
            {
              goto LABEL_136;
            }
          }

          v40;
          v148 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v39, v32, v146, v147);
          __StringStorage.appendInPlace(_:isASCII:)(v148, v149, v36 < 0);
          v186 = *((v187 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
          v185;
          v150 = v40;
          goto LABEL_98;
        }

        v40;
        v191 = v36;
        v192 = v40 & 0xFFFFFFFFFFFFFFLL;
        if ((HIBYTE(v40) & 0xF) >= v32 && (v32 - v39) >= 0)
        {
          v40;
          specialized UnsafeMutablePointer.initialize(from:count:)(&v191 + v39, v32 - v39, ((v187 & 0xFFFFFFFFFFFFFFFLL) + (*((v187 & 0xFFFFFFFFFFFFFFFLL) + 0x18) & 0xFFFFFFFFFFFFLL) + 32));
          __StringStorage._updateCountAndFlags(newCount:newIsASCII:)((*((v187 & 0xFFFFFFFFFFFFFFFLL) + 0x18) & 0xFFFFFFFFFFFFLL) + v32 - v39, (v40 >> 62) & (*((v187 & 0xFFFFFFFFFFFFFFFLL) + 0x18) < 0));
          v186 = *((v187 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
          v150 = v185;
LABEL_98:
          v150;
          v137 = v180;
          result = v182;
          goto LABEL_99;
        }

LABEL_136:
        _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

LABEL_127:
      __break(1u);
      goto LABEL_128;
    }

    v37;
    v62 = _StringGuts._convertedToSmall()(v42, v41, v54, v55, v56, v57, v58, v59, v60, v61);
    v64 = HIBYTE(v37) & 0xF;
    if ((v37 & 0x2000000000000000) == 0)
    {
      v64 = v36 & 0xFFFFFFFFFFFFLL;
    }

    if (v64 < v39)
    {
      goto LABEL_128;
    }

    v52 = v62;
    v65 = v63;
    v66 = v34 & 0xFFFFFFFFFFFF0000;
    if (v32 >= 0x10000)
    {
      v67 = 1;
    }

    else
    {
      v67 = 3;
    }

    v37;
    v68 = Substring.description.getter(v67 | v32 & 0xFFFFFFFFFFFF0000, v66 | 1, v36, v37);
    v70 = v69;
    v37;
    v79 = _StringGuts._convertedToSmall()(v68, v70, v71, v72, v73, v74, v75, v76, v77, v78);
    v81 = v80;
    v70;
    v82 = HIBYTE(v65) & 0xF;
    v83 = HIBYTE(v81) & 0xF;
    v84 = v83 + v82;
    if (v83 + v82 >= 0x10)
    {
      goto LABEL_140;
    }

    v37;
    v85 = v182;
    if (v83)
    {
      v86 = 0;
      v87 = 0;
      v88 = 8 * v82;
      v53 = v185;
      do
      {
        v89 = v81 >> (v86 & 0x38);
        if (v87 < 8)
        {
          v89 = v79 >> v86;
        }

        v90 = (v89 << (v88 & 0x38)) | ((-255 << (v88 & 0x38)) - 1) & v65;
        v91 = (v89 << v88) | ((-255 << v88) - 1) & v52;
        if (v82 <= 7)
        {
          v52 = v91;
        }

        else
        {
          v65 = v90;
        }

        ++v82;
        v88 += 8;
        v86 += 8;
        ++v87;
      }

      while (8 * v83 != v86);
    }

    else
    {
      v53 = v185;
    }

    v41;
    v92 = 0xA000000000000000;
    if (!(v52 & 0x8080808080808080 | v65 & 0x80808080808080))
    {
      v92 = 0xE000000000000000;
    }

    v50 = v92 & 0xFF00000000000000 | (v84 << 56) | v65 & 0xFFFFFFFFFFFFFFLL;
    v186 = v52;
    v187 = v50;
    v46 = v184;
    goto LABEL_55;
  }

  v10 = a3;
  v11 = specialized FlattenSequence<>.startIndex.getter(v10, closure #3 in _StringGuts.replaceSubrange<A>(_:with:));
  v14 = specialized FlattenSequence<>.distance(from:to:)(v11, v13, v12 & 1, *(a3 + 16), 0, 1uLL, a3, closure #3 in _StringGuts.replaceSubrange<A>(_:with:));
  v15 = a1 >> 16;
  v16 = (a1 >> 16) + v14;
  if (__OFADD__(a1 >> 16, v14))
  {
    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_136;
  }

  v17 = a2 >> 16;
  v18 = v9 & 0xFFFFFFFFFFFFLL;
  if ((v8 & 0x2000000000000000) != 0)
  {
    v18 = HIBYTE(v8) & 0xF;
  }

  v19 = v18 - v17;
  v20 = v16 + v19;
  if (__OFADD__(v16, v19))
  {
    goto LABEL_130;
  }

  v21 = v14;
  v183 = v16;
  if (v20 >= 16)
  {
    v22 = _StringGuts.uniqueNativeCapacity.getter();
    if ((v23 & 1) != 0 || v22 < v20)
    {
      v24 = _StringGuts.uniqueNativeCapacity.getter();
      if (v25)
      {
        v26 = v3[1];
        if ((v26 & 0x1000000000000000) != 0)
        {
          v27 = String.UTF8View._foreignCount()();
        }

        else if ((v26 & 0x2000000000000000) != 0)
        {
          v27 = HIBYTE(v26) & 0xF;
        }

        else
        {
          v27 = *v3 & 0xFFFFFFFFFFFFLL;
        }
      }

      else
      {
        v27 = 2 * v24;
      }

      if (v27 <= v20)
      {
        v152 = v20;
      }

      else
      {
        v152 = v27;
      }

      v153 = v3[1];
      if ((v153 & 0x1000000000000000) != 0)
      {
        _StringGuts._foreignGrow(_:)(v152);
      }

      else
      {
        v154 = *v3;
        if ((v153 & 0x2000000000000000) != 0)
        {
          v157 = (v153 >> 62) & 1;
          v156 = HIBYTE(v153) & 0xF;
          v186 = *v4;
          v187 = v153 & 0xFFFFFFFFFFFFFFLL;
          v155 = &v186;
        }

        else
        {
          if ((v154 & 0x1000000000000000) != 0)
          {
            v155 = ((v153 & 0xFFFFFFFFFFFFFFFLL) + 32);
            v156 = v154 & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            v179 = v152;
            v155 = _StringObject.sharedUTF8.getter(*v4, v4[1]);
            v152 = v179;
          }

          v157 = v154 >> 63;
        }

        v158 = specialized static __StringStorage.create(initializingFrom:codeUnitCapacity:isASCII:)(v155, v156, v152, v157);
        v159 = *(v158 + 24);
        v153;
        *v4 = v159;
        v4[1] = v158;
      }
    }
  }

  v160 = v4[1] & 0xFFFFFFFFFFFFFFFLL;
  v161 = v15;
  v162 = v160 + 32 + v15;
  v163 = (*(v160 + 0x18) & 0xFFFFFFFFFFFFLL) - v17;
  specialized UnsafeMutablePointer.moveInitialize(from:count:)((v160 + 32 + v17), v163, (v162 + v21));
  v164 = *(v160 + 24) >> 63;
  v186 = a3;
  v187 = 0;
  v188 = closure #3 in _StringGuts.replaceSubrange<A>(_:with:);
  v189 = 0u;
  v190 = 0u;
  a3;
  v165 = 0;
  while (1)
  {
    v166 = specialized FlattenSequence.Iterator.next()();
    if ((v166 & 0x100) != 0)
    {
      break;
    }

    LOBYTE(v164) = ((v166 & 0x80u) == 0) & v164;
    *(v162 + v165) = v166;
    if (__OFADD__(v165++, 1))
    {
      __break(1u);
      break;
    }
  }

  v186;
  v189;
  v190;
  if (__OFADD__(v183, v163))
  {
    goto LABEL_131;
  }

  __StringStorage._updateCountAndFlags(newCount:newIsASCII:)(v183 + v163, v164 & 1);
  a3;
  *v4 = *(v160 + 24);
  return v161;
}

uint64_t specialized _StringGuts.replaceSubrange<A>(_:with:)(Swift::UInt64 a1, Swift::UInt64 a2, uint64_t a3, unint64_t a4)
{
  v7 = *v4;
  v6 = v4[1];
  v218 = a3;
  if ((*v4 & ~v6 & 0x2000000000000000) != 0)
  {
    v8 = v4;
    v9 = a4;
    if (swift_isUniquelyReferenced_nonNull_native(v6 & 0xFFFFFFFFFFFFFFFLL))
    {
      v11 = HIBYTE(v9) & 0xF;
      if ((v9 & 0x2000000000000000) == 0)
      {
        v11 = a3 & 0xFFFFFFFFFFFFLL;
      }

      v12 = v11 == 0;
      if (v11)
      {
        v13 = 15;
      }

      else
      {
        v13 = 0;
      }

      v9;
      v14 = specialized FlattenSequence<>.distance(from:to:)(v12, v13, v12, 1, 0, 1, a3, v9, closure #3 in _StringGuts.replaceSubrange<A>(_:with:));
      v15 = a1 >> 16;
      v16 = (a1 >> 16) + v14;
      if (!__OFADD__(a1 >> 16, v14))
      {
        v17 = v7;
        v18 = a2 >> 16;
        v19 = v17 & 0xFFFFFFFFFFFFLL;
        if ((v6 & 0x2000000000000000) != 0)
        {
          v19 = HIBYTE(v6) & 0xF;
        }

        v20 = v19 - v18;
        v21 = v16 + v20;
        if (!__OFADD__(v16, v20))
        {
          v22 = v14;
          v213 = v15;
          v214 = v16;
          if (v21 >= 16)
          {
            v23 = _StringGuts.uniqueNativeCapacity.getter();
            if ((v24 & 1) != 0 || v23 < v21)
            {
              v25 = _StringGuts.uniqueNativeCapacity.getter();
              if (v26)
              {
                v27 = v8[1];
                if ((v27 & 0x1000000000000000) != 0)
                {
                  v28 = String.UTF8View._foreignCount()();
                }

                else if ((v27 & 0x2000000000000000) != 0)
                {
                  v28 = HIBYTE(v27) & 0xF;
                }

                else
                {
                  v28 = *v8 & 0xFFFFFFFFFFFFLL;
                }
              }

              else
              {
                v28 = 2 * v25;
              }

              v164 = v9;
              if (v28 <= v21)
              {
                v165 = v21;
              }

              else
              {
                v165 = v28;
              }

              v166 = v8[1];
              if ((v166 & 0x1000000000000000) != 0)
              {
                _StringGuts._foreignGrow(_:)(v165);
              }

              else
              {
                v167 = *v8;
                if ((v166 & 0x2000000000000000) != 0)
                {
                  __src = *v8;
                  v222 = v166 & 0xFFFFFFFFFFFFFFLL;
                  v171 = HIBYTE(v166) & 0xF | 0xC000000000000000;
                  if ((v166 & 0x4000000000000000) == 0)
                  {
                    v171 = HIBYTE(v166) & 0xF;
                  }

                  v172 = v171 | 0x3000000000000000;
                  v170 = _allocateStringStorage(codeUnitCapacity:)(v165);
                  *(v170 + 16) = v173;
                  *(v170 + 24) = v172;
                  if (v173 < 0)
                  {
                    *__StringStorage._breadcrumbsAddress.getter() = 0;
                    v172 = *(v170 + 24);
                  }

                  *(v170 + 32 + (v172 & 0xFFFFFFFFFFFFLL)) = 0;
                  specialized UnsafeMutablePointer.initialize(from:count:)(&__src, HIBYTE(v166) & 0xF, (v170 + 32));
                }

                else
                {
                  if ((v167 & 0x1000000000000000) != 0)
                  {
                    v168 = ((v166 & 0xFFFFFFFFFFFFFFFLL) + 32);
                    v169 = v167 & 0xFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v168 = _StringObject.sharedUTF8.getter(*v8, v8[1]);
                  }

                  v170 = specialized static __StringStorage.create(initializingFrom:codeUnitCapacity:isASCII:)(v168, v169, v165, v167 < 0);
                }

                v9 = v164;
                v174 = *(v170 + 24);
                v166;
                *v8 = v174;
                v8[1] = v170;
              }

              v15 = v213;
            }
          }

          v175 = v8[1] & 0xFFFFFFFFFFFFFFFLL;
          v217 = v175 + 32 + v15;
          v211 = (*(v175 + 0x18) & 0xFFFFFFFFFFFFLL) - v18;
          specialized UnsafeMutablePointer.moveInitialize(from:count:)((v175 + 32 + v18), v211, (v217 + v22));
          v207 = v175;
          v176 = *(v175 + 24) >> 63;
          v9;
          v177 = 0;
          v178 = 0;
          v179 = 0;
          v180 = 0;
          v181 = v9;
          while (1)
          {
            if (!v179 || ((v183 = (v179 & 0x2000000000000000) == 0, (v179 & 0x2000000000000000) != 0) ? (v184 = HIBYTE(v179) & 0xF) : (v184 = v178 & 0xFFFFFFFFFFFFLL), v180 >> 14 == 4 * v184))
            {
              if (!v181 || ((v179, v183 = (v181 & 0x2000000000000000) == 0, v178 = v218, v179 = v181, (v181 & 0x2000000000000000) != 0) ? (v184 = HIBYTE(v181) & 0xF) : (v184 = v218 & 0xFFFFFFFFFFFFLL), !v184))
              {
                v179;
                v151 = v213;
                if (!__OFADD__(v214, v211))
                {
                  __StringStorage._updateCountAndFlags(newCount:newIsASCII:)(v214 + v211, v176 & 1);
                  a4;
                  *v208 = *(v207 + 24);
                  return v151;
                }

LABEL_166:
                __break(1u);
LABEL_171:
                _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
              }

              v180 = 15;
              v218 = 0;
              v181 = 0;
            }

            v185 = (v178 >> 59) & 1;
            if ((v179 & 0x1000000000000000) == 0)
            {
              LOBYTE(v185) = 1;
            }

            v186 = v180 & 0xC;
            v187 = 4 << v185;
            rawBits = v180;
            if (v186 == v187)
            {
              v206 = v180;
              rawBits = _StringGuts._slowEnsureMatchingEncoding(_:)(v180)._rawBits;
              v180 = v206;
            }

            v189 = rawBits >> 16;
            if (rawBits >> 16 >= v184)
            {
              goto LABEL_153;
            }

            if ((v179 & 0x1000000000000000) != 0)
            {
              v192 = v180;
              v191 = String.UTF8View._foreignSubscript(position:)(rawBits);
              v180 = v192;
              if (v186 != v187)
              {
                goto LABEL_141;
              }
            }

            else
            {
              if (v183)
              {
                if ((v178 & 0x1000000000000000) != 0)
                {
                  p_src = ((v179 & 0xFFFFFFFFFFFFFFFLL) + 32);
                }

                else
                {
                  v193 = v180;
                  p_src = _StringObject.sharedUTF8.getter(v178, v179);
                  v180 = v193;
                }
              }

              else
              {
                __src = v178;
                v222 = v179 & 0xFFFFFFFFFFFFFFLL;
                p_src = &__src;
              }

              v191 = *(p_src + v189);
              if (v186 != v187)
              {
LABEL_141:
                if ((v179 & 0x1000000000000000) != 0)
                {
                  goto LABEL_142;
                }

                goto LABEL_117;
              }
            }

            v180 = _StringGuts._slowEnsureMatchingEncoding(_:)(v180)._rawBits;
            if ((v179 & 0x1000000000000000) != 0)
            {
LABEL_142:
              if (v184 <= v180 >> 16)
              {
                goto LABEL_153;
              }

              v180 = String.UTF8View._foreignIndex(after:)(v180)._rawBits;
              goto LABEL_118;
            }

LABEL_117:
            v180 = (v180 & 0xFFFFFFFFFFFF0000) + 65540;
LABEL_118:
            LOBYTE(v176) = (v191 >= 0) & v176;
            *(v217 + v177) = v191;
            if (__OFADD__(v177++, 1))
            {
              __break(1u);
LABEL_153:
              _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
            }
          }
        }

LABEL_165:
        __break(1u);
        goto LABEL_166;
      }

LABEL_164:
      __break(1u);
      goto LABEL_165;
    }
  }

  __src = 0;
  v222 = 0xE000000000000000;
  v29 = _StringGuts.nativeCapacity.getter(v7, v6);
  if ((v30 & 1) == 0)
  {
    String.reserveCapacity(_:)(v29);
  }

  v31._rawBits = a1;
  v215 = v7;
  v216 = v6;
  v33 = specialized Collection.subscript.getter(v31, v7, v6);
  v35 = v34;
  v37 = v36;
  v38 = v32;
  v39 = v33 >> 16;
  v40 = v34 >> 16;
  if ((v32 & 0x1000000000000000) != 0)
  {
    swift_bridgeObjectRetain_n(v32, 3);
    v195._rawBits = v33 & 0xFFFFFFFFFFFF0000 | 1;
    v196._rawBits = v35 & 0xFFFFFFFFFFFF0000 | 1;
    v197._rawBits = _StringGuts.validateScalarRange(_:)(v195, v196, v37, v38)._rawBits;
    if (v197._rawBits < 0x10000)
    {
      v197._rawBits |= 3;
    }

    v41 = String.UTF8View.distance(from:to:)(v197, v198);
    v38;
    v43 = __src;
    v42 = v222;
  }

  else
  {
    v41 = v40 - v39;
    swift_bridgeObjectRetain_n(v32, 2);
    v43 = __src;
    v42 = v222;
  }

  v44 = HIBYTE(v42) & 0xF;
  v45 = v44 + v41;
  if (__OFADD__(v44, v41))
  {
    __break(1u);
    goto LABEL_158;
  }

  if ((v43 & ~v42 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v42 & 0xFFFFFFFFFFFFFFFLL))
  {
    _StringGuts.nativeUnusedCapacity.getter(v43, v42);
    if (v46)
    {
      goto LABEL_175;
    }

    if (v45 > 15)
    {
      goto LABEL_29;
    }
  }

  else if (v45 >= 16)
  {
LABEL_29:
    _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v45, v41);
    if ((v38 & 0x1000000000000000) != 0)
    {
      v38;
      _StringGuts._foreignAppendInPlace(_:)(v37, v38, v39, v40);
      v38;
      v53 = __src;
      v51 = v222;
      v102 = a4;
      v47 = v216;
    }

    else
    {
      v47 = v216;
      if ((v38 & 0x2000000000000000) != 0)
      {
        v38;
        v219 = v37;
        v220 = v38 & 0xFFFFFFFFFFFFFFLL;
        if ((HIBYTE(v38) & 0xF) < v40 || (v40 - v39) < 0)
        {
          goto LABEL_171;
        }

        v38;
        v51 = v222;
        specialized UnsafeMutablePointer.initialize(from:count:)(&v219 + v39, v40 - v39, ((v222 & 0xFFFFFFFFFFFFFFFLL) + (*((v222 & 0xFFFFFFFFFFFFFFFLL) + 0x18) & 0xFFFFFFFFFFFFLL) + 32));
        __StringStorage._updateCountAndFlags(newCount:newIsASCII:)((*((v51 & 0xFFFFFFFFFFFFFFFLL) + 0x18) & 0xFFFFFFFFFFFFLL) + v40 - v39, (v38 >> 62) & (*((v51 & 0xFFFFFFFFFFFFFFFLL) + 0x18) < 0));
        v53 = *((v51 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        __src = v53;
      }

      else
      {
        if ((v37 & 0x1000000000000000) != 0)
        {
          v48 = ((v38 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v49 = v37 & 0xFFFFFFFFFFFFLL;
          if ((v37 & 0xFFFFFFFFFFFFLL) < v40)
          {
            goto LABEL_171;
          }
        }

        else
        {
          v48 = _StringObject.sharedUTF8.getter(v37, v38);
          v49 = v204;
          if (v204 < v40)
          {
            goto LABEL_171;
          }
        }

        v38;
        v50 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v39, v40, v48, v49);
        v51 = v222;
        __StringStorage.appendInPlace(_:isASCII:)(v50, v52, v37 < 0);
        v53 = *((v222 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        __src = v53;
        v38;
      }

      v102 = a4;
    }

    v97 = v215;
    v98 = a2;
    goto LABEL_57;
  }

  v38;
  v53 = _StringGuts._convertedToSmall()(v43, v42, v62, v63, v64, v65, v66, v67, v68, v69);
  v71 = v70;
  v38;
  v72._rawBits = v33 & 0xFFFFFFFFFFFF0000 | 1;
  v73._rawBits = v35 & 0xFFFFFFFFFFFF0000 | 1;
  v74._rawBits = _StringGuts.validateScalarRange(_:)(v72, v73, v37, v38)._rawBits;
  if (v74._rawBits < 0x10000)
  {
    v74._rawBits |= 3;
  }

  v76 = Substring.description.getter(v74._rawBits, v75._rawBits, v37, v38);
  v78 = v77;
  v38;
  v87 = _StringGuts._convertedToSmall()(v76, v78, v79, v80, v81, v82, v83, v84, v85, v86);
  v89 = v88;
  v78;
  v90 = HIBYTE(v71) & 0xF;
  v91 = HIBYTE(v89) & 0xF;
  v92 = v91 + v90;
  if (v91 + v90 >= 0x10)
  {
    goto LABEL_175;
  }

  v38;
  if (v91)
  {
    v93 = 0;
    v94 = 0;
    v95 = 8 * v90;
    v96 = 8 * v91;
    v97 = v215;
    v98 = a2;
    do
    {
      v99 = v89 >> (v93 & 0x38);
      if (v94 < 8)
      {
        v99 = v87 >> v93;
      }

      v100 = (v99 << (v95 & 0x38)) | ((-255 << (v95 & 0x38)) - 1) & v71;
      v101 = (v99 << v95) | ((-255 << v95) - 1) & v53;
      if (v90 <= 7)
      {
        v53 = v101;
      }

      else
      {
        v71 = v100;
      }

      ++v90;
      v95 += 8;
      v93 += 8;
      ++v94;
    }

    while (v96 != v93);
  }

  else
  {
    v97 = v215;
    v98 = a2;
  }

  v42;
  v103 = 0xA000000000000000;
  if (!(v53 & 0x8080808080808080 | v71 & 0x80808080808080))
  {
    v103 = 0xE000000000000000;
  }

  v51 = v103 & 0xFF00000000000000 | (v92 << 56) | v71 & 0xFFFFFFFFFFFFFFLL;
  __src = v53;
  v222 = v51;
  v102 = a4;
  v47 = v216;
LABEL_57:
  v104 = HIBYTE(v51) & 0xF;
  if ((v51 & 0x2000000000000000) == 0)
  {
    v104 = v53 & 0xFFFFFFFFFFFFLL;
  }

  v212 = v104;
  specialized String.append<A>(contentsOf:)(v218, v102, v54, v55, v56, v57, v58, v59, v60, v61);
  v35 = __src;
  v42 = v222;
  if ((v222 & 0x2000000000000000) != 0)
  {
    v105 = HIBYTE(v222) & 0xF;
  }

  else
  {
    v105 = __src & 0xFFFFFFFFFFFFLL;
  }

  v39 = specialized Collection.subscript.getter(v98, v97, v47);
  v38 = v107;
  v37 = v108;
  v33 = v106;
  v45 = v39 >> 16;
  v40 = v107 >> 16;
  v215 = v105;
  if ((v106 & 0x1000000000000000) == 0)
  {
    v109 = v40 - v45;
    swift_bridgeObjectRetain_n(v106, 2);
    v110 = v105;
    if ((v42 & 0x1000000000000000) == 0)
    {
      goto LABEL_64;
    }

LABEL_161:
    v203 = String.UTF8View._foreignCount()();
    v111 = v203 + v109;
    if (!__OFADD__(v203, v109))
    {
      goto LABEL_65;
    }

LABEL_163:
    __break(1u);
    goto LABEL_164;
  }

LABEL_158:
  swift_bridgeObjectRetain_n(v33, 3);
  v199._rawBits = v39 & 0xFFFFFFFFFFFF0000 | 1;
  v200._rawBits = v38 & 0xFFFFFFFFFFFF0000 | 1;
  v201._rawBits = _StringGuts.validateScalarRange(_:)(v199, v200, v37, v33)._rawBits;
  if (v201._rawBits < 0x10000)
  {
    v201._rawBits |= 3;
  }

  v109 = String.UTF8View.distance(from:to:)(v201, v202);
  v33;
  v110 = v215;
  if ((v42 & 0x1000000000000000) != 0)
  {
    goto LABEL_161;
  }

LABEL_64:
  v111 = v110 + v109;
  if (__OFADD__(v110, v109))
  {
    goto LABEL_163;
  }

LABEL_65:
  if ((v35 & ~v42 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v42 & 0xFFFFFFFFFFFFFFFLL))
  {
    v112 = _StringGuts.nativeUnusedCapacity.getter(v35, v42);
    if (v113)
    {
      goto LABEL_175;
    }

    v114 = (v42 >> 61) & 1;
    if (v112 < v109)
    {
      LOBYTE(v114) = 1;
    }

    if (v111 <= 15 && (v114 & 1) != 0)
    {
      goto LABEL_72;
    }
  }

  else if (v111 < 16)
  {
LABEL_72:
    v33;
    v123 = _StringGuts._convertedToSmall()(v35, v42, v115, v116, v117, v118, v119, v120, v121, v122);
    v125 = v124;
    v33;
    v126._rawBits = v39 & 0xFFFFFFFFFFFF0000 | 1;
    v127._rawBits = v38 & 0xFFFFFFFFFFFF0000 | 1;
    v128._rawBits = _StringGuts.validateScalarRange(_:)(v126, v127, v37, v33)._rawBits;
    if (v128._rawBits < 0x10000)
    {
      v128._rawBits |= 3;
    }

    v130 = Substring.description.getter(v128._rawBits, v129._rawBits, v37, v33);
    v132 = v131;
    v33;
    v141 = _StringGuts._convertedToSmall()(v130, v132, v133, v134, v135, v136, v137, v138, v139, v140);
    v143 = v142;
    v132;
    v144 = HIBYTE(v125) & 0xF;
    v145 = HIBYTE(v143) & 0xF;
    v146 = v145 + v144;
    if (v145 + v144 < 0x10)
    {
      v33;
      if (v145)
      {
        v147 = 0;
        v148 = 0;
        v149 = 8 * v144;
        v150 = 8 * v145;
        v151 = v212;
        do
        {
          v152 = v143 >> (v147 & 0x38);
          if (v148 < 8)
          {
            v152 = v141 >> v147;
          }

          v153 = (v152 << (v149 & 0x38)) | ((-255 << (v149 & 0x38)) - 1) & v125;
          v154 = (v152 << v149) | ((-255 << v149) - 1) & v123;
          if (v144 <= 7)
          {
            v123 = v154;
          }

          else
          {
            v125 = v153;
          }

          ++v144;
          v149 += 8;
          v147 += 8;
          ++v148;
        }

        while (v150 != v147);
      }

      else
      {
        v151 = v212;
      }

      v216;
      v42;
      v161 = 0xA000000000000000;
      if (!(v123 & 0x8080808080808080 | v125 & 0x80808080808080))
      {
        v161 = 0xE000000000000000;
      }

      __src = v123;
      v222 = v161 & 0xFF00000000000000 | (v146 << 56) | v125 & 0xFFFFFFFFFFFFFFLL;
      goto LABEL_99;
    }

LABEL_175:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v111, v109);
  if ((v33 & 0x1000000000000000) != 0)
  {
    v33;
    _StringGuts._foreignAppendInPlace(_:)(v37, v33, v45, v40);
    v216;
    v33;
    v151 = v212;
  }

  else
  {
    v151 = v212;
    if ((v33 & 0x2000000000000000) != 0)
    {
      v33;
      v219 = v37;
      v220 = v33 & 0xFFFFFFFFFFFFFFLL;
      if ((HIBYTE(v33) & 0xF) < v40 || v40 - v45 < 0)
      {
        goto LABEL_171;
      }

      v33;
      v162 = v222 & 0xFFFFFFFFFFFFFFFLL;
      specialized UnsafeMutablePointer.initialize(from:count:)(&v219 + v45, v40 - v45, ((v222 & 0xFFFFFFFFFFFFFFFLL) + (*((v222 & 0xFFFFFFFFFFFFFFFLL) + 0x18) & 0xFFFFFFFFFFFFLL) + 32));
      __StringStorage._updateCountAndFlags(newCount:newIsASCII:)((*(v162 + 24) & 0xFFFFFFFFFFFFLL) + v40 - v45, (v33 >> 62) & (*(v162 + 24) < 0));
      __src = *(v162 + 24);
      v160 = v216;
    }

    else
    {
      if ((v37 & 0x1000000000000000) != 0)
      {
        v155 = ((v33 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v156 = v37 & 0xFFFFFFFFFFFFLL;
        if ((v37 & 0xFFFFFFFFFFFFLL) < v40)
        {
          goto LABEL_171;
        }
      }

      else
      {
        v155 = _StringObject.sharedUTF8.getter(v37, v33);
        v156 = v205;
        if (v205 < v40)
        {
          goto LABEL_171;
        }
      }

      v33;
      v157 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v45, v40, v155, v156);
      v158 = v222 & 0xFFFFFFFFFFFFFFFLL;
      __StringStorage.appendInPlace(_:isASCII:)(v157, v159, v37 < 0);
      __src = *(v158 + 24);
      v216;
      v160 = v33;
    }

    v160;
  }

LABEL_99:
  v163 = v222;
  *v208 = __src;
  v208[1] = v163;
  return v151;
}

Swift::UInt64 specialized _StringGuts.replaceSubrange<A>(_:with:)(Swift::UInt64 a1, Swift::UInt64 a2)
{
  v3 = v2;
  v7 = *v2;
  v6 = v2[1];
  if ((*v2 & ~v6 & 0x2000000000000000) == 0 || !swift_isUniquelyReferenced_nonNull_native(v6 & 0xFFFFFFFFFFFFFFFLL))
  {
    __src = 0;
    v168 = 0xE000000000000000;
    v18 = _StringGuts.nativeCapacity.getter(v7, v6);
    if ((v19 & 1) == 0)
    {
      String.reserveCapacity(_:)(v18);
    }

    v20._rawBits = a1;
    v164 = v6;
    v22 = specialized Collection.subscript.getter(v20, v7, v6);
    v24 = v23;
    v162 = a2;
    v163 = v25;
    v26 = v21;
    v27 = v22 >> 16;
    v28 = v23 >> 16;
    if ((v21 & 0x1000000000000000) != 0)
    {
      swift_bridgeObjectRetain_n(v21, 3);
      v150._rawBits = v22 & 0xFFFFFFFFFFFF0000 | 1;
      v151._rawBits = v24 & 0xFFFFFFFFFFFF0000 | 1;
      v152._rawBits = _StringGuts.validateScalarRange(_:)(v150, v151, v163, v26)._rawBits;
      if (v152._rawBits < 0x10000)
      {
        v152._rawBits |= 3;
      }

      v29 = String.UTF8View.distance(from:to:)(v152, v153);
      v26;
    }

    else
    {
      v29 = v28 - v27;
      swift_bridgeObjectRetain_n(v21, 2);
    }

    v30 = __src;
    v31 = v168;
    v161 = v3;
    v32 = HIBYTE(v168) & 0xF;
    v33 = v32 + v29;
    if (__OFADD__(v32, v29))
    {
      __break(1u);
      goto LABEL_110;
    }

    if ((__src & ~v168 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v168 & 0xFFFFFFFFFFFFFFFLL))
    {
      _StringGuts.nativeUnusedCapacity.getter(__src, v168);
      if (v34)
      {
        goto LABEL_127;
      }

      if (v33 > 15)
      {
LABEL_22:
        _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v33, v29);
        if ((v26 & 0x1000000000000000) != 0)
        {
          v26;
          _StringGuts._foreignAppendInPlace(_:)(v163, v26, v27, v28);
          v26;
          v30 = __src;
          v31 = v168;
        }

        else if ((v26 & 0x2000000000000000) != 0)
        {
          v26;
          v165 = v163;
          v166 = v26 & 0xFFFFFFFFFFFFFFLL;
          if ((HIBYTE(v26) & 0xF) < v28 || v28 - v27 < 0)
          {
            goto LABEL_120;
          }

          v26;
          v31 = v168;
          v77 = v168 & 0xFFFFFFFFFFFFFFFLL;
          specialized UnsafeMutablePointer.initialize(from:count:)(&v165 + v27, v28 - v27, ((v168 & 0xFFFFFFFFFFFFFFFLL) + (*((v168 & 0xFFFFFFFFFFFFFFFLL) + 0x18) & 0xFFFFFFFFFFFFLL) + 32));
          __StringStorage._updateCountAndFlags(newCount:newIsASCII:)((*(v77 + 24) & 0xFFFFFFFFFFFFLL) + v28 - v27, (v26 >> 62) & (*(v77 + 24) < 0));
          v30 = *(v77 + 24);
          __src = v30;
        }

        else
        {
          if ((v163 & 0x1000000000000000) != 0)
          {
            v35 = ((v26 & 0xFFFFFFFFFFFFFFFLL) + 32);
            v36 = v163 & 0xFFFFFFFFFFFFLL;
            if ((v163 & 0xFFFFFFFFFFFFLL) < v28)
            {
              goto LABEL_120;
            }
          }

          else
          {
            v35 = _StringObject.sharedUTF8.getter(v163, v26);
            v36 = v159;
            if (v159 < v28)
            {
              goto LABEL_120;
            }
          }

          v26;
          v37 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v27, v28, v35, v36);
          v31 = v168;
          __StringStorage.appendInPlace(_:isASCII:)(v37, v38, v163 < 0);
          v30 = *((v168 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
          __src = v30;
          v26;
        }

LABEL_46:
        if ((v31 & 0x2000000000000000) != 0)
        {
          v78 = HIBYTE(v31) & 0xF;
        }

        else
        {
          v78 = v30 & 0xFFFFFFFFFFFFLL;
        }

        if (&full type metadata for EmptyCollection<Character> == &full type metadata for String)
        {
          __break(1u);
        }

        else if (&full type metadata for EmptyCollection<Character> != &full type metadata for Substring)
        {
          if (&full type metadata for EmptyCollection<Character> != &full type metadata for [Character])
          {
            v24 = specialized Collection.subscript.getter(v162, v7, v164);
            v28 = v80;
            v22 = v81;
            v7 = v79;
            v33 = v24 >> 16;
            v27 = v80 >> 16;
            v163 = v78;
            if ((v79 & 0x1000000000000000) == 0)
            {
              v82 = v27 - v33;
              swift_bridgeObjectRetain_n(v79, 2);
              v83 = v78;
              if ((v31 & 0x1000000000000000) == 0)
              {
                goto LABEL_54;
              }

              goto LABEL_113;
            }

LABEL_110:
            swift_bridgeObjectRetain_n(v7, 3);
            v154._rawBits = v24 & 0xFFFFFFFFFFFF0000 | 1;
            v155._rawBits = v28 & 0xFFFFFFFFFFFF0000 | 1;
            v156._rawBits = _StringGuts.validateScalarRange(_:)(v154, v155, v22, v7)._rawBits;
            if (v156._rawBits < 0x10000)
            {
              v156._rawBits |= 3;
            }

            v82 = String.UTF8View.distance(from:to:)(v156, v157);
            v7;
            v83 = v163;
            if ((v31 & 0x1000000000000000) == 0)
            {
LABEL_54:
              v84 = v83 + v82;
              if (!__OFADD__(v83, v82))
              {
LABEL_55:
                if ((v30 & ~v31 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v31 & 0xFFFFFFFFFFFFFFFLL))
                {
                  v85 = _StringGuts.nativeUnusedCapacity.getter(v30, v31);
                  if (v86)
                  {
                    goto LABEL_127;
                  }

                  v87 = (v31 >> 61) & 1;
                  if (v85 < v82)
                  {
                    LOBYTE(v87) = 1;
                  }

                  if (v84 <= 15 && (v87 & 1) != 0)
                  {
                    goto LABEL_62;
                  }
                }

                else if (v84 < 16)
                {
LABEL_62:
                  v7;
                  v96 = _StringGuts._convertedToSmall()(v30, v31, v88, v89, v90, v91, v92, v93, v94, v95);
                  v98 = v97;
                  v7;
                  v99._rawBits = v24 & 0xFFFFFFFFFFFF0000 | 1;
                  v100._rawBits = v28 & 0xFFFFFFFFFFFF0000 | 1;
                  v101._rawBits = _StringGuts.validateScalarRange(_:)(v99, v100, v22, v7)._rawBits;
                  if (v101._rawBits < 0x10000)
                  {
                    v101._rawBits |= 3;
                  }

                  v103 = Substring.description.getter(v101._rawBits, v102._rawBits, v22, v7);
                  v105 = v104;
                  v7;
                  v114 = _StringGuts._convertedToSmall()(v103, v105, v106, v107, v108, v109, v110, v111, v112, v113);
                  v116 = v115;
                  v105;
                  v117 = HIBYTE(v98) & 0xF;
                  v118 = HIBYTE(v116) & 0xF;
                  v119 = v118 + v117;
                  if (v118 + v117 < 0x10)
                  {
                    v7;
                    if (v118)
                    {
                      v120 = 0;
                      v121 = 0;
                      v122 = 8 * v117;
                      do
                      {
                        v123 = v116 >> (v120 & 0x38);
                        if (v121 < 8)
                        {
                          v123 = v114 >> v120;
                        }

                        v124 = (v123 << (v122 & 0x38)) | ((-255 << (v122 & 0x38)) - 1) & v98;
                        v125 = (v123 << v122) | ((-255 << v122) - 1) & v96;
                        if (v117 <= 7)
                        {
                          v96 = v125;
                        }

                        else
                        {
                          v98 = v124;
                        }

                        ++v117;
                        v122 += 8;
                        v120 += 8;
                        ++v121;
                      }

                      while (8 * v118 != v120);
                    }

                    v164;
                    v31;
                    v126 = 0xA000000000000000;
                    if (!(v96 & 0x8080808080808080 | v98 & 0x80808080808080))
                    {
                      v126 = 0xE000000000000000;
                    }

                    __src = v96;
                    v168 = v126 & 0xFF00000000000000 | (v119 << 56) | v98 & 0xFFFFFFFFFFFFFFLL;
                    v8 = v163;
                    goto LABEL_87;
                  }

LABEL_127:
                  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
                }

                _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v84, v82);
                if ((v7 & 0x1000000000000000) != 0)
                {
                  v7;
                  _StringGuts._foreignAppendInPlace(_:)(v22, v7, v33, v27);
                  v164;
                  v7;
                  v8 = v163;
LABEL_87:
                  v134 = v168;
                  *v161 = __src;
                  v161[1] = v134;
                  return v8;
                }

                v8 = v163;
                if ((v7 & 0x2000000000000000) != 0)
                {
                  v7;
                  v165 = v22;
                  v166 = v7 & 0xFFFFFFFFFFFFFFLL;
                  if ((HIBYTE(v7) & 0xF) >= v27 && v27 - v33 >= 0)
                  {
                    v7;
                    v133 = v168 & 0xFFFFFFFFFFFFFFFLL;
                    specialized UnsafeMutablePointer.initialize(from:count:)(&v165 + v33, v27 - v33, ((v168 & 0xFFFFFFFFFFFFFFFLL) + (*((v168 & 0xFFFFFFFFFFFFFFFLL) + 0x18) & 0xFFFFFFFFFFFFLL) + 32));
                    __StringStorage._updateCountAndFlags(newCount:newIsASCII:)((*(v133 + 24) & 0xFFFFFFFFFFFFLL) + v27 - v33, (v7 >> 62) & (*(v133 + 24) < 0));
                    __src = *(v133 + 24);
                    v132 = v164;
                    goto LABEL_86;
                  }
                }

                else if ((v22 & 0x1000000000000000) != 0)
                {
                  v127 = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
                  v128 = v22 & 0xFFFFFFFFFFFFLL;
                  if ((v22 & 0xFFFFFFFFFFFFLL) >= v27)
                  {
LABEL_81:
                    v7;
                    v129 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v33, v27, v127, v128);
                    v130 = v168 & 0xFFFFFFFFFFFFFFFLL;
                    __StringStorage.appendInPlace(_:isASCII:)(v129, v131, v22 < 0);
                    __src = *(v130 + 24);
                    v164;
                    v132 = v7;
LABEL_86:
                    v132;
                    goto LABEL_87;
                  }
                }

                else
                {
                  v127 = _StringObject.sharedUTF8.getter(v22, v7);
                  v128 = v160;
                  if (v160 >= v27)
                  {
                    goto LABEL_81;
                  }
                }

LABEL_120:
                _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
              }

LABEL_115:
              __break(1u);
              goto LABEL_120;
            }

LABEL_113:
            v158 = String.UTF8View._foreignCount()();
            v84 = v158 + v82;
            if (!__OFADD__(v158, v82))
            {
              goto LABEL_55;
            }

            goto LABEL_115;
          }

LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        __break(1u);
        goto LABEL_126;
      }
    }

    else if (v33 >= 16)
    {
      goto LABEL_22;
    }

    v26;
    v30 = _StringGuts._convertedToSmall()(__src, v168, v39, v40, v41, v42, v43, v44, v45, v46);
    v48 = v47;
    v26;
    v49._rawBits = v22 & 0xFFFFFFFFFFFF0000 | 1;
    v50._rawBits = v24 & 0xFFFFFFFFFFFF0000 | 1;
    v51._rawBits = _StringGuts.validateScalarRange(_:)(v49, v50, v163, v26)._rawBits;
    if (v51._rawBits < 0x10000)
    {
      v51._rawBits |= 3;
    }

    v53 = Substring.description.getter(v51._rawBits, v52._rawBits, v163, v26);
    v55 = v54;
    v26;
    v64 = _StringGuts._convertedToSmall()(v53, v55, v56, v57, v58, v59, v60, v61, v62, v63);
    v66 = v65;
    v55;
    v67 = HIBYTE(v48) & 0xF;
    v68 = HIBYTE(v66) & 0xF;
    v69 = v68 + v67;
    if (v68 + v67 >= 0x10)
    {
      goto LABEL_127;
    }

    v26;
    if (v68)
    {
      v70 = 0;
      v71 = 0;
      v72 = 8 * v67;
      do
      {
        v73 = v66 >> (v70 & 0x38);
        if (v71 < 8)
        {
          v73 = v64 >> v70;
        }

        v74 = (v73 << (v72 & 0x38)) | ((-255 << (v72 & 0x38)) - 1) & v48;
        v75 = (v73 << v72) | ((-255 << v72) - 1) & v30;
        if (v67 <= 7)
        {
          v30 = v75;
        }

        else
        {
          v48 = v74;
        }

        ++v67;
        v72 += 8;
        v70 += 8;
        ++v71;
      }

      while (8 * v68 != v70);
    }

    v168;
    v76 = 0xA000000000000000;
    if (!(v30 & 0x8080808080808080 | v48 & 0x80808080808080))
    {
      v76 = 0xE000000000000000;
    }

    v31 = v76 & 0xFF00000000000000 | (v69 << 56) | v48 & 0xFFFFFFFFFFFFFFLL;
    __src = v30;
    v168 = v31;
    goto LABEL_46;
  }

  v8 = a1 >> 16;
  v9 = a2 >> 16;
  v10 = v7 & 0xFFFFFFFFFFFFLL;
  if ((v6 & 0x2000000000000000) != 0)
  {
    v10 = HIBYTE(v6) & 0xF;
  }

  v11 = v10 - v9 + v8;
  if (v11 >= 16)
  {
    v12 = _StringGuts.uniqueNativeCapacity.getter();
    if ((v13 & 1) != 0 || v12 < v11)
    {
      v14 = _StringGuts.uniqueNativeCapacity.getter();
      if (v15)
      {
        v16 = v2[1];
        if ((v16 & 0x1000000000000000) != 0)
        {
          v17 = String.UTF8View._foreignCount()();
        }

        else if ((v16 & 0x2000000000000000) != 0)
        {
          v17 = HIBYTE(v16) & 0xF;
        }

        else
        {
          v17 = *v2 & 0xFFFFFFFFFFFFLL;
        }
      }

      else
      {
        v17 = 2 * v14;
      }

      v135 = v8;
      if (v17 <= v11)
      {
        v136 = v11;
      }

      else
      {
        v136 = v17;
      }

      v137 = v3[1];
      if ((v137 & 0x1000000000000000) != 0)
      {
        _StringGuts._foreignGrow(_:)(v136);
      }

      else
      {
        v138 = *v3;
        if ((v137 & 0x2000000000000000) != 0)
        {
          __src = *v3;
          v168 = v137 & 0xFFFFFFFFFFFFFFLL;
          v142 = HIBYTE(v137) & 0xF | 0xC000000000000000;
          if ((v137 & 0x4000000000000000) == 0)
          {
            v142 = HIBYTE(v137) & 0xF;
          }

          v143 = v142 | 0x3000000000000000;
          v141 = _allocateStringStorage(codeUnitCapacity:)(v136);
          *(v141 + 16) = v144;
          *(v141 + 24) = v143;
          if (v144 < 0)
          {
            *__StringStorage._breadcrumbsAddress.getter() = 0;
            v143 = *(v141 + 24);
          }

          *(v141 + 32 + (v143 & 0xFFFFFFFFFFFFLL)) = 0;
          specialized UnsafeMutablePointer.initialize(from:count:)(&__src, HIBYTE(v137) & 0xF, (v141 + 32));
        }

        else
        {
          if ((v138 & 0x1000000000000000) != 0)
          {
            v139 = ((v137 & 0xFFFFFFFFFFFFFFFLL) + 32);
            v140 = v138 & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            v139 = _StringObject.sharedUTF8.getter(*v3, v3[1]);
          }

          v141 = specialized static __StringStorage.create(initializingFrom:codeUnitCapacity:isASCII:)(v139, v140, v136, v138 < 0);
        }

        v145 = *(v141 + 24);
        v137;
        *v3 = v145;
        v3[1] = v141;
      }

      v8 = v135;
    }
  }

  v146 = v3[1] & 0xFFFFFFFFFFFFFFFLL;
  v147 = (*(v146 + 0x18) & 0xFFFFFFFFFFFFLL) - v9;
  specialized UnsafeMutablePointer.moveInitialize(from:count:)((v146 + 32 + v9), v147, (v146 + 32 + v8));
  v148 = *(v146 + 24);
  0;
  __StringStorage._updateCountAndFlags(newCount:newIsASCII:)(v147 + v8, v148 < 0);
  *v3 = *(v146 + 24);
  return v8;
}