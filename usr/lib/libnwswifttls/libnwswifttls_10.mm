Swift::Int specialized MutableCollection<>.sort(by:)(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[2 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= v14)
          {
            break;
          }

          *(v13 + 1) = v14;
          *v13 = v11;
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
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
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
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v83;
    if (!*v83)
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

    v75 = (v8 + 16);
    v76 = *(v8 + 16);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = (v8 + 16 * v76);
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 2 * *v77), (*a3 + 2 * *v79), (*a3 + 2 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 2 * v7);
      v11 = *(*a3 + 2 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 2 * v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
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
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 2 * v17);
            *(v20 + 2 * v17) = *(v20 + 2 * v16);
            *(v20 + 2 * v16) = v18;
          }
        }

        while (++v17 < v16--);
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
    v29 = *(v8 + 24);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v30;
    v31 = v8 + 32;
    v32 = (v8 + 32 + 16 * v5);
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v8 + 32);
          v34 = *(v8 + 40);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = (v8 + 16 * v30);
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = (v31 + 16 * v5);
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = (v8 + 16 * v30);
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = (v31 + 16 * v5);
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
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

        v70 = (v31 + 16 * (v5 - 1));
        v71 = *v70;
        v72 = (v31 + 16 * v5);
        v73 = v72[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 2 * *v70), (*a3 + 2 * *v72), (*a3 + 2 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = *(v8 + 16);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove((v31 + 16 * v5), v72 + 2, 16 * (v74 - 1 - v5));
        *(v8 + 16) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = v31 + 16 * v30;
      v38 = *(v37 - 64);
      v39 = *(v37 - 56);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 48);
      v41 = *(v37 - 40);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = (v8 + 16 * v30);
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = (v31 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 2 * v7 - 2;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 2 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= v27)
    {
LABEL_29:
      ++v7;
      v22 += 2;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    v26[1] = v27;
    *v26-- = v24;
    if (__CFADD__(v25++, 1))
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

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(unsigned __int16 *__dst, unsigned __int16 *__src, unsigned __int16 *a3, unsigned __int16 *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst;
  v10 = a3 - __src;
  v11 = a3 - __src;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[v9] <= a4)
    {
      memmove(a4, __dst, 2 * v9);
    }

    v12 = &v4[v9];
    if (v8 < 2)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      v13 = *v6;
      if (v13 < *v4)
      {
        break;
      }

      LOWORD(v13) = *v4;
      v14 = v7 == v4++;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      ++v7;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v14 = v7 == v6++;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    *v7 = v13;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[v11] <= a4)
  {
    memmove(a4, __src, 2 * v11);
  }

  v12 = &v4[v11];
  if (v10 >= 2 && v6 > v7)
  {
LABEL_20:
    v15 = v6 - 1;
    --v5;
    v16 = v12;
    do
    {
      v17 = v5 + 1;
      v19 = *(v16 - 2);
      v16 -= 2;
      v18 = v19;
      v20 = *v15;
      if (v19 < v20)
      {
        if (v17 != v6)
        {
          *v5 = v20;
        }

        if (v12 <= v4 || (--v6, v15 <= v7))
        {
          v6 = v15;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      if (v17 != v12)
      {
        *v5 = v18;
      }

      --v5;
      v12 = v16;
    }

    while (v16 > v4);
    v12 = v16;
  }

LABEL_31:
  v21 = v12 - v4 + ((v12 - v4) >> 63);
  if (v6 != v4 || v6 >= (v4 + (v21 & 0xFFFFFFFFFFFFFFFELL)))
  {
    memmove(v6, v4, 2 * (v21 >> 1));
  }

  return 1;
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, _WORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 7) | (2 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t specialized static PAKEServerRecord.__derived_struct_equals(_:_:)(unsigned __int16 *a1, unsigned __int16 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if ((specialized static Data.== infix(_:_:)(*(a1 + 1), *(a1 + 2), *(a2 + 1), *(a2 + 2)) & 1) == 0)
  {
    goto LABEL_10;
  }

  if ((specialized static Data.== infix(_:_:)(*(a1 + 3), *(a1 + 4), *(a2 + 3), *(a2 + 4)) & 1) == 0)
  {
    goto LABEL_10;
  }

  if ((specialized static Data.== infix(_:_:)(*(a1 + 5), *(a1 + 6), *(a2 + 5), *(a2 + 6)) & 1) == 0)
  {
    goto LABEL_10;
  }

  if ((specialized static Data.== infix(_:_:)(*(a1 + 7), *(a1 + 8), *(a2 + 7), *(a2 + 8)) & 1) == 0)
  {
    goto LABEL_10;
  }

  v4 = *(a1 + 11);
  v5 = *(a1 + 12);
  v6 = *(a1 + 13);
  v7 = *(a1 + 14);
  v8 = *(a2 + 11);
  v9 = *(a2 + 12);
  v10 = *(a2 + 13);
  v11 = *(a2 + 14);
  v14 = *(a2 + 120);
  v15 = *(a1 + 120);
  if ((specialized static Data.== infix(_:_:)(*(a1 + 9), *(a1 + 10), *(a2 + 9), *(a2 + 10)) & 1) == 0)
  {
    goto LABEL_10;
  }

  if ((specialized static Data.== infix(_:_:)(v4, v5, v8, v9) & 1) != 0 && (specialized static Data.== infix(_:_:)(v6, v7, v10, v11) & 1) != 0 && ((v15 ^ v14) & 1) == 0)
  {
    v12 = *(a1 + 121) ^ *(a2 + 121) ^ 1;
  }

  else
  {
LABEL_10:
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t specialized static PAKEClientConfiguration.__derived_struct_equals(_:_:)(unsigned __int16 *a1, unsigned __int16 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (specialized static Data.== infix(_:_:)(*(a1 + 1), *(a1 + 2), *(a2 + 1), *(a2 + 2)) & 1) != 0 && (specialized static Data.== infix(_:_:)(*(a1 + 3), *(a1 + 4), *(a2 + 3), *(a2 + 4)) & 1) != 0 && (specialized static Data.== infix(_:_:)(*(a1 + 5), *(a1 + 6), *(a2 + 5), *(a2 + 6)) & 1) != 0 && (specialized static Data.== infix(_:_:)(*(a1 + 7), *(a1 + 8), *(a2 + 7), *(a2 + 8)))
  {
    v4 = *(a1 + 9);
    v5 = *(a1 + 10);
    v6 = *(a1 + 11);
    v7 = *(a1 + 12);
    v8 = *(a1 + 13);
    v9 = *(a1 + 14);
    v10 = *(a1 + 120);
    v11 = *(a2 + 9);
    v12 = *(a2 + 10);
    v13 = *(a2 + 11);
    v14 = *(a2 + 12);
    v15 = *(a2 + 13);
    v16 = *(a2 + 14);
    v17 = *(a2 + 120);
    if ((specialized static Data.== infix(_:_:)(v4, v5, v11, v12) & 1) != 0 && (specialized static Data.== infix(_:_:)(v6, v7, v13, v14) & 1) != 0 && (specialized static Data.== infix(_:_:)(v8, v9, v15, v16) & 1) != 0 && ((v10 ^ v17) & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15SwiftTLSLibrary10PAKESchemeV_SayAFGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = lazy protocol witness table accessor for type PAKEScheme and conformance PAKEScheme();
  result = MEMORY[0x1B274D700](v2, &type metadata for PAKEScheme, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      specialized Set._Variant.insert(_:)(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t specialized PAKEServerRecords.init(_:)(void *a1)
{
  v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15SwiftTLSLibrary17PAKEServerRecordsV9RecordKeyV_AC0eG0VTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v3 = a1[2];
  if (!v3)
  {
LABEL_22:

    v49 = MEMORY[0x1E69E7CC0];
    goto LABEL_23;
  }

  v4 = 0;
  v5 = v3 - 1;
  v6 = 4;
  do
  {
    v7 = *&a1[v6 + 2];
    v62 = *&a1[v6];
    v63 = v7;
    v8 = *&a1[v6 + 6];
    v64 = *&a1[v6 + 4];
    v65 = v8;
    v9 = *&a1[v6 + 10];
    v66 = *&a1[v6 + 8];
    v67 = v9;
    v68[0] = *&a1[v6 + 12];
    *(v68 + 10) = *(&a1[v6 + 13] + 2);
    v10 = *(&v63 + 1);
    v12 = v64;
    v11 = v65;
    LOWORD(v69) = v62;
    *(&v69 + 1) = *(&v64 + 1);
    *&v70 = v65;
    *(&v70 + 1) = *(&v63 + 1);
    v71 = v64;
    outlined init with copy of PAKEServerRecord(&v62, v60);
    outlined init with copy of PAKEServerRecord(&v62, v60);
    outlined copy of Data._Representation(*(&v12 + 1), v11);
    outlined copy of Data._Representation(v10, v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v59 = v2;
    v14 = specialized __RawDictionaryStorage.find<A>(_:)(&v69);
    v16 = *(v2 + 16);
    v17 = (v15 & 1) == 0;
    v18 = __OFADD__(v16, v17);
    v19 = v16 + v17;
    if (v18)
    {
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);

      __break(1u);
      return result;
    }

    v20 = v15;
    if (*(v2 + 24) < v19)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v19, isUniquelyReferenced_nonNull_native);
      v14 = specialized __RawDictionaryStorage.find<A>(_:)(&v69);
      if ((v20 & 1) != (v21 & 1))
      {
        goto LABEL_30;
      }

LABEL_8:
      if (v20)
      {
        goto LABEL_9;
      }

      goto LABEL_12;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_8;
    }

    v35 = v14;
    specialized _NativeDictionary.copy()();
    v14 = v35;
    if (v20)
    {
LABEL_9:
      v2 = v59;
      v22 = (v59[7] + (v14 << 7));
      v23 = v22[3];
      v25 = *v22;
      v24 = v22[1];
      v60[2] = v22[2];
      v60[3] = v23;
      v60[0] = v25;
      v60[1] = v24;
      v27 = v22[5];
      v26 = v22[6];
      v28 = v22[4];
      *&v61[10] = *(v22 + 106);
      v60[5] = v27;
      *v61 = v26;
      v60[4] = v28;
      v29 = v62;
      v30 = v63;
      v31 = v65;
      v22[2] = v64;
      v22[3] = v31;
      *v22 = v29;
      v22[1] = v30;
      v32 = v66;
      v33 = v67;
      v34 = v68[0];
      *(v22 + 106) = *(v68 + 10);
      v22[5] = v33;
      v22[6] = v34;
      v22[4] = v32;
      outlined destroy of PAKEServerRecord(v60);
      outlined destroy of PAKEServerRecords.RecordKey(&v69);
      outlined destroy of PAKEServerRecord(&v62);
      if (v5 == v4)
      {
        goto LABEL_16;
      }

      goto LABEL_14;
    }

LABEL_12:
    v2 = v59;
    v59[(v14 >> 6) + 8] |= 1 << v14;
    v36 = v59[6] + 40 * v14;
    v37 = v71;
    v38 = v70;
    *v36 = v69;
    *(v36 + 16) = v38;
    *(v36 + 32) = v37;
    v39 = (v59[7] + (v14 << 7));
    v40 = v66;
    v41 = v67;
    v42 = v68[0];
    *(v39 + 106) = *(v68 + 10);
    v39[5] = v41;
    v39[6] = v42;
    v39[4] = v40;
    v44 = v64;
    v43 = v65;
    v45 = v63;
    *v39 = v62;
    v39[1] = v45;
    v39[2] = v44;
    v39[3] = v43;
    outlined destroy of PAKEServerRecord(&v62);
    v46 = v59[2];
    v18 = __OFADD__(v46, 1);
    v47 = v46 + 1;
    if (v18)
    {
      goto LABEL_29;
    }

    v59[2] = v47;
    if (v5 == v4)
    {
      goto LABEL_16;
    }

LABEL_14:
    ++v4;
    v6 += 16;
  }

  while (v4 < a1[2]);
  __break(1u);
LABEL_16:
  v48 = a1[2];
  if (!v48)
  {
    goto LABEL_22;
  }

  *&v62 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v48, 0);
  v49 = v62;
  v50 = *(v62 + 16);
  v51 = 4;
  do
  {
    v52 = a1[v51];
    *&v62 = v49;
    v53 = *(v49 + 24);
    if (v50 >= v53 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v53 > 1), v50 + 1, 1);
      v49 = v62;
    }

    *(v49 + 16) = v50 + 1;
    *(v49 + 2 * v50 + 32) = v52;
    v51 += 16;
    ++v50;
    --v48;
  }

  while (v48);

LABEL_23:
  v54 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15SwiftTLSLibrary10PAKESchemeV_SayAFGTt0g5Tf4g_n(v49);

  v55 = *(v54 + 16);
  if (v55)
  {
    v56 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC15SwiftTLSLibrary10PAKESchemeV_Tt1g5(*(v54 + 16), 0);
    v57 = specialized Sequence._copySequenceContents(initializing:)(&v62, v56 + 16, v55, v54);

    outlined consume of Set<PAKEScheme>.Iterator._Variant();
    if (v57 != v55)
    {
      __break(1u);
      goto LABEL_26;
    }
  }

  else
  {
LABEL_26:
    v56 = MEMORY[0x1E69E7CC0];
  }

  *&v62 = v56;
  specialized MutableCollection<>.sort(by:)(&v62);

  return v2;
}

__n128 _s15SwiftTLSLibrary17PAKEServerRecordsV22findMatchingPAKERecordyAA0C6RecordV_AA9ExtensionO4PAKEO9PAKEShareVtSgAJ15PAKEClientHelloVAA8TLSErrorOYKFTf4nx_n@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X8>)
{
  v4 = a1[6];
  v5 = *(v4 + 16);
  if (!v5)
  {
LABEL_26:
    _s15SwiftTLSLibrary16PAKEServerRecordV_AA9ExtensionO4PAKEO9PAKEShareVtSgWOi0_(&v80);
LABEL_27:
    v37 = v87;
    a4[6] = v86;
    a4[7] = v37;
    v38 = v89;
    a4[8] = v88;
    a4[9] = v38;
    v39 = v83;
    a4[2] = v82;
    a4[3] = v39;
    v40 = v85;
    a4[4] = v84;
    a4[5] = v40;
    result.n128_u64[0] = v80;
    v41 = v81;
    *a4 = v80;
    a4[1] = v41;
    return result;
  }

  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[2];
  v10 = v7 >> 62;
  v54 = a1[3];
  v51 = BYTE6(v7);
  v11 = a1[1];
  v12 = v11 >> 62;
  v53 = *a1;
  v49 = *a1 >> 32;
  v50 = BYTE6(v11);
  v13 = (v4 + 56);
  while (1)
  {
    if (v10 > 1)
    {
      if (v10 == 2)
      {
        v14 = *(v54 + 24);
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = v51;
      if (v10)
      {
        v14 = v54 >> 32;
      }
    }

    if (v14 < v8)
    {
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v56 = *(v13 - 12);
    v52 = *v13;
    v55 = *(v13 - 2);
    v90 = *(v13 - 1);
    outlined copy of Data._Representation(v55, v90);
    v14 = Data._Representation.subscript.getter();
    v16 = v15;
    if (v12 > 1)
    {
      if (v12 == 2)
      {
        v17 = *(v53 + 24);
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = v50;
      if (v12)
      {
        v17 = v49;
      }
    }

    if (v17 < v9)
    {
      goto LABEL_41;
    }

    v18 = Data._Representation.subscript.getter();
    v75 = v56;
    v76 = v14;
    v77 = v16;
    v78 = v18;
    v79 = v19;
    if (*(a2 + 16))
    {
      v20 = specialized __RawDictionaryStorage.find<A>(_:)(&v75);
      if (v21)
      {
        break;
      }
    }

    v13 += 4;
    outlined destroy of PAKEServerRecords.RecordKey(&v75);
    outlined consume of Data._Representation(v55, v90);
    if (!--v5)
    {
      goto LABEL_26;
    }
  }

  v22 = (*(a2 + 56) + (v20 << 7));
  v23 = v22[3];
  v25 = *v22;
  v24 = v22[1];
  v68 = v22[2];
  v69 = v23;
  v66 = v25;
  v67 = v24;
  v27 = v22[5];
  v26 = v22[6];
  v28 = v22[4];
  v14 = &v66;
  *&v72[10] = *(v22 + 106);
  v71 = v27;
  *v72 = v26;
  v70 = v28;
  outlined init with copy of PAKEServerRecord(&v66, &v57);
  if (one-time initialization token for SwiftTLSPAKELimiter == -1)
  {
    goto LABEL_21;
  }

LABEL_42:
  swift_once();
LABEL_21:
  v29 = SwiftTLSPAKELimiter;
  v30 = *(v14 + 88);
  v73[0] = *(v14 + 72);
  v73[1] = v30;
  v73[2] = *(v14 + 104);
  v74 = v72[24];
  if ((*(*SwiftTLSPAKELimiter + 88))(v73, 32))
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, logger);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      v35 = "new server credential added to PAKE Limiter";
LABEL_32:
      _os_log_impl(&dword_1B25F5000, v32, v33, v35, v34, 2u);
      MEMORY[0x1B274ECF0](v34, -1, -1);
    }
  }

  else
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    __swift_project_value_buffer(v42, logger);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      v35 = "server credential already tracked by PAKE Limiter";
      goto LABEL_32;
    }
  }

  if ((*(*v29 + 104))(v73))
  {
    outlined destroy of PAKEServerRecords.RecordKey(&v75);
    v61 = v70;
    v62 = v71;
    *v63 = *v72;
    *&v63[10] = *(v14 + 106);
    v57 = v66;
    v58 = v67;
    v59 = v68;
    v60 = v69;
    LOWORD(v64) = v56;
    *(&v64 + 1) = v55;
    *&v65 = v90;
    *(&v65 + 1) = v52;
    _s15SwiftTLSLibrary23PAKEClientConfigurationVSgWOi_(&v57);
    v86 = *v63;
    v87 = *&v63[16];
    v88 = v64;
    v89 = v65;
    v82 = v59;
    v83 = v60;
    v84 = v61;
    v85 = v62;
    v80 = v57;
    v81 = v58;
    goto LABEL_27;
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v43 = type metadata accessor for Logger();
  __swift_project_value_buffer(v43, logger);
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&dword_1B25F5000, v44, v45, "PAKE credential exhausted", v46, 2u);
    MEMORY[0x1B274ECF0](v46, -1, -1);
  }

  v57 = xmmword_1B26CAC80;
  LOBYTE(v58) = 2;
  lazy protocol witness table accessor for type TLSError and conformance TLSError();
  swift_willThrowTypedImpl();
  outlined destroy of PAKEServerRecord(&v66);
  outlined consume of Data._Representation(v55, v90);
  outlined destroy of PAKEServerRecords.RecordKey(&v75);
  result = xmmword_1B26CAC80;
  *a3 = xmmword_1B26CAC80;
  *(a3 + 16) = 2;
  return result;
}

uint64_t _s15SwiftTLSLibrary17PAKEServerRecordsV23generateDummyPAKERecord10pakeScheme14clientIdentity06serverK0AA0C6RecordVAA10PAKESchemeV_10Foundation4DataVANtAA8TLSErrorOYKFZTf4nnnd_n@<X0>(int a1@<W0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, _WORD *a7@<X8>)
{
  v77 = a4;
  v75 = a3;
  v74 = a2;
  v73 = a7;
  v82 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v81 = *(v82 - 8);
  v10 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v82);
  v12 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for P256.KeyAgreement.PrivateKey();
  v79 = *(v80 - 8);
  v13 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v80);
  v15 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for SymmetricKeySize();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = type metadata accessor for SymmetricKey();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = a1;
  if (a1 != 0xFFFF && a1 != 32150)
  {
    v87 = 0;
    v88 = 0xE000000000000000;
    _StringGuts.grow(_:)(26);

    v87 = 0xD000000000000018;
    v88 = 0x80000001B26CE210;
    v52 = PAKEScheme.description.getter(v83);
    MEMORY[0x1B274D610](v52);

    v53 = v87;
    v54 = v88;
    LOBYTE(v89) = 1;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    result = swift_willThrowTypedImpl();
LABEL_27:
    *a6 = v53;
    *(a6 + 8) = v54;
    *(a6 + 16) = 1;
    return result;
  }

  v71 = a5;
  v72 = a6;
  SymmetricKeySize.init(bitCount:)();
  SymmetricKey.init(size:)();
  v23 = v78;
  SymmetricKey.withUnsafeBytes<A>(_:)();
  v24 = *(v19 + 8);
  v24(v22, v18);
  v76 = v87;
  v78 = v88;
  SymmetricKeySize.init(bitCount:)();
  SymmetricKey.init(size:)();
  SymmetricKey.withUnsafeBytes<A>(_:)();
  v24(v22, v18);
  v26 = v87;
  v25 = v88;
  P256.KeyAgreement.PrivateKey.init()();
  P256.KeyAgreement.PrivateKey.publicKey.getter();
  v27 = (*(v79 + 8))(v15, v80);
  v28 = MEMORY[0x1B274D380](v27);
  v30 = v29;
  (*(v81 + 8))(v12, v82);
  v84 = v26;
  v85 = v25;
  v90 = MEMORY[0x1E6969080];
  v91 = MEMORY[0x1E6969078];
  v87 = v28;
  v88 = v30;
  v31 = __swift_project_boxed_opaque_existential_0(&v87, MEMORY[0x1E6969080]);
  v32 = *v31;
  v33 = v31[1];
  outlined copy of Data._Representation(v26, v25);
  outlined copy of Data._Representation(v28, v30);
  specialized Data._Representation.withUnsafeBytes<A>(_:)(v32, v33);
  v81 = v23;
  result = __swift_destroy_boxed_opaque_existential_0(&v87);
  v36 = v84;
  v35 = BYTE6(v85);
  v37 = v85 >> 62;
  v82 = v85;
  if ((v85 >> 62) > 1)
  {
    if (v37 != 2)
    {
      goto LABEL_16;
    }

    v39 = *(v84 + 16);
    v38 = *(v84 + 24);
    v40 = __OFSUB__(v38, v39);
    v41 = v38 - v39;
    if (!v40)
    {
      if (v41 == 97)
      {
        goto LABEL_10;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (!v37)
  {
    if (BYTE6(v85) != 97)
    {
      goto LABEL_16;
    }

LABEL_10:
    v42 = v84;
    v79 = v26;
    v80 = v25;
    if (v83 == 32150 || v83 == 0xFFFF)
    {
      v43 = v77;
      v44 = v71;
      outlined copy of Data._Representation(v77, v71);
      v45 = v74;
      v46 = v75;
      outlined copy of Data._Representation(v74, v75);
      outlined copy of Data._Representation(v45, v46);
      outlined copy of Data._Representation(v43, v44);
      v47 = v76;
      v48 = v78;
      outlined copy of Data._Representation(v76, v78);
      outlined consume of Data._Representation(v28, v30);
      result = outlined consume of Data._Representation(v79, v80);
      v49 = v73;
      *v73 = v83;
      *(v49 + 1) = v47;
      *(v49 + 2) = v48;
      *(v49 + 3) = v45;
      *(v49 + 4) = v46;
      *&v50 = v42;
      *(&v50 + 1) = v82;
      *(v49 + 5) = v43;
      *(v49 + 6) = v44;
      *&v51 = v47;
      *(&v51 + 1) = v48;
      *(v49 + 36) = v51;
      *(v49 + 28) = v50;
      *(v49 + 11) = v45;
      *(v49 + 12) = v46;
      *(v49 + 13) = v43;
      *(v49 + 14) = v44;
      v49[60] = 257;
      return result;
    }

    v87 = 0;
    v88 = 0xE000000000000000;
    v61 = v77;
    v62 = v71;
    outlined copy of Data._Representation(v77, v71);
    v63 = v74;
    v64 = v75;
    outlined copy of Data._Representation(v74, v75);
    outlined copy of Data._Representation(v63, v64);
    outlined copy of Data._Representation(v61, v62);
    v65 = v76;
    outlined copy of Data._Representation(v76, v78);
    _StringGuts.grow(_:)(26);

    v87 = 0xD000000000000018;
    v88 = 0x80000001B26CE210;
    v66 = v83;
    v67 = PAKEScheme.description.getter(v83);
    MEMORY[0x1B274D610](v67);

    v53 = v87;
    v54 = v88;
    v84 = v87;
    v85 = v88;
    v86 = 1;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    outlined consume of Data._Representation(v28, v30);
    outlined consume of Data._Representation(v79, v80);
    LOWORD(v87) = v66;
    *(&v87 + 2) = v101;
    HIWORD(v87) = v102;
    v88 = v65;
    v89 = v78;
    v90 = v63;
    v91 = v64;
    *&v68 = v42;
    *(&v68 + 1) = v82;
    v92 = v77;
    v93 = v71;
    *&v69 = v65;
    *(&v69 + 1) = v78;
    v94 = v68;
    v95 = v69;
    v96 = v63;
    v97 = v64;
    v98 = v77;
    v99 = v71;
    v100 = 257;
    result = outlined destroy of PAKEServerRecord(&v87);
    goto LABEL_26;
  }

  if (__OFSUB__(HIDWORD(v84), v84))
  {
    goto LABEL_30;
  }

  if (HIDWORD(v84) - v84 == 97)
  {
    goto LABEL_10;
  }

LABEL_16:
  v87 = 0;
  v88 = 0xE000000000000000;
  _StringGuts.grow(_:)(60);
  result = MEMORY[0x1B274D610](0xD000000000000034, 0x80000001B26CE320);
  if (v37 > 1)
  {
    v55 = v36;
    v56 = 0;
    if (v37 != 2)
    {
      goto LABEL_25;
    }

    v58 = *(v36 + 16);
    v57 = *(v36 + 24);
    v40 = __OFSUB__(v57, v58);
    v56 = v57 - v58;
    if (!v40)
    {
      goto LABEL_25;
    }

    __break(1u);
  }

  else if (!v37)
  {
    v55 = v36;
    v56 = v35;
LABEL_25:
    v84 = v56;
    v59 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1B274D610](v59);

    MEMORY[0x1B274D610](540877088, 0xE400000000000000);
    v84 = 97;
    v60 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1B274D610](v60);

    v53 = v87;
    v54 = v88;
    LOBYTE(v89) = 1;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    outlined consume of Data._Representation(v55, v82);
    outlined consume of Data._Representation(v76, v78);
    outlined consume of Data._Representation(v28, v30);
    result = outlined consume of Data._Representation(v26, v25);
LABEL_26:
    a6 = v72;
    goto LABEL_27;
  }

  LODWORD(v56) = HIDWORD(v36) - v36;
  if (!__OFSUB__(HIDWORD(v36), v36))
  {
    v55 = v36;
    v56 = v56;
    goto LABEL_25;
  }

LABEL_31:
  __break(1u);
  return result;
}

double _s15SwiftTLSLibrary17PAKEServerRecordsV29findMatchingPAKERecordOrDummyyAA0C6RecordV_AA9ExtensionO4PAKEO9PAKEShareVtSgAJ15PAKEClientHelloVAA8TLSErrorOYKFTf4nx_n@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X8>)
{
  *&result = _s15SwiftTLSLibrary17PAKEServerRecordsV22findMatchingPAKERecordyAA0C6RecordV_AA9ExtensionO4PAKEO9PAKEShareVtSgAJ15PAKEClientHelloVAA8TLSErrorOYKFTf4nx_n(a1, a2, v69, &v71).n128_u64[0];
  if (v4)
  {
    v12 = v69[1];
    v13 = v70;
    *a3 = v69[0];
    *(a3 + 8) = v12;
    *(a3 + 16) = v13;
    return result;
  }

  v65 = v75;
  v66 = v76;
  v67 = v77;
  v68 = v78;
  v61 = v71;
  v62 = v72;
  v63 = v73;
  v64 = v74;
  v14 = v79;
  v86 = WORD3(v79);
  v85 = *(&v79 + 2);
  v15 = a1[6];
  if (!*(v15 + 16))
  {
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v16 = *a1;
  v17 = a1[1];
  v18 = v17 >> 62;
  if ((v17 >> 62) > 1)
  {
    if (v18 == 2)
    {
      v19 = *(v16 + 24);
    }

    else
    {
      v19 = 0;
    }
  }

  else if (v18)
  {
    v19 = v16 >> 32;
  }

  else
  {
    v19 = BYTE6(v17);
  }

  if (v19 < a1[2])
  {
    goto LABEL_30;
  }

  v39 = v80;
  v40 = *(&v79 + 1);
  v41 = *(&v80 + 1);
  v7 = *(v15 + 32);
  v6 = Data._Representation.subscript.getter();
  v5 = v20;
  v21 = a1[3];
  v22 = a1[4];
  v23 = v22 >> 62;
  if ((v22 >> 62) > 1)
  {
    if (v23 == 2)
    {
      v24 = *(v21 + 24);
    }

    else
    {
      v24 = 0;
    }
  }

  else if (v23)
  {
    v24 = v21 >> 32;
  }

  else
  {
    v24 = BYTE6(v22);
  }

  if (v24 < a1[5])
  {
    goto LABEL_31;
  }

  v38 = v14;
  v25 = Data._Representation.subscript.getter();
  v27 = v26;
  _s15SwiftTLSLibrary17PAKEServerRecordsV23generateDummyPAKERecord10pakeScheme14clientIdentity06serverK0AA0C6RecordVAA10PAKESchemeV_10Foundation4DataVANtAA8TLSErrorOYKFZTf4nnnd_n(v7, v6, v5, v25, v26, v69, v81);
  outlined consume of Data._Representation(v25, v27);
  outlined consume of Data._Representation(v6, v5);
  v14 = *(v15 + 32);
  v6 = *(v15 + 40);
  v5 = *(v15 + 48);
  v7 = *(v15 + 56);
  v84[6] = v77;
  v84[7] = v78;
  v84[8] = v79;
  v84[9] = v80;
  v84[2] = v73;
  v84[3] = v74;
  v84[4] = v75;
  v84[5] = v76;
  v84[0] = v71;
  v84[1] = v72;
  v28 = _s15SwiftTLSLibrary23PAKEClientConfigurationVSgWOg(v84);
  outlined copy of Data._Representation(v6, v5);
  if (v28 == 1)
  {
    if (one-time initialization token for logger == -1)
    {
LABEL_22:
      v29 = type metadata accessor for Logger();
      __swift_project_value_buffer(v29, logger);
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_1B25F5000, v30, v31, "Yielding dummy PAKE record", v32, 2u);
        MEMORY[0x1B274ECF0](v32, -1, -1);
      }

      goto LABEL_25;
    }

LABEL_32:
    swift_once();
    goto LABEL_22;
  }

LABEL_25:
  v83[6] = v77;
  v83[7] = v78;
  v83[8] = v79;
  v83[9] = v80;
  v83[2] = v73;
  v83[3] = v74;
  v83[4] = v75;
  v83[5] = v76;
  v83[0] = v71;
  v83[1] = v72;
  if (_s15SwiftTLSLibrary23PAKEClientConfigurationVSgWOg(v83) == 1)
  {
    v58 = v81[4];
    v59 = v81[5];
    *v60 = v82[0];
    *&v60[10] = *(v82 + 10);
    v54 = v81[0];
    v55 = v81[1];
    v56 = v81[2];
    v57 = v81[3];
  }

  else
  {
    outlined consume of Data._Representation(v6, v5);
    outlined destroy of PAKEServerRecord(v81);
    v58 = v65;
    v59 = v66;
    *v60 = v67;
    *&v60[16] = v68;
    v54 = v61;
    v55 = v62;
    v56 = v63;
    v57 = v64;
    v53 = v86;
    v5 = v39;
    v6 = v40;
    v52 = v85;
    v14 = v38;
    v7 = v41;
  }

  v46 = v58;
  v47 = v59;
  v48 = *v60;
  v49 = *&v60[16];
  v42 = v54;
  v43 = v55;
  v44 = v56;
  v45 = v57;
  LOWORD(v50) = v14;
  WORD3(v50) = v53;
  *(&v50 + 2) = v52;
  *(&v50 + 1) = v6;
  *&v51 = v5;
  *(&v51 + 1) = v7;
  _s15SwiftTLSLibrary23PAKEClientConfigurationVSgWOi_(&v42);
  v33 = v49;
  a4[6] = v48;
  a4[7] = v33;
  v34 = v51;
  a4[8] = v50;
  a4[9] = v34;
  v35 = v45;
  a4[2] = v44;
  a4[3] = v35;
  v36 = v47;
  a4[4] = v46;
  a4[5] = v36;
  result = *&v42;
  v37 = v43;
  *a4 = v42;
  a4[1] = v37;
  return result;
}

unint64_t lazy protocol witness table accessor for type PAKEClientConfiguration and conformance PAKEClientConfiguration()
{
  result = lazy protocol witness table cache variable for type PAKEClientConfiguration and conformance PAKEClientConfiguration;
  if (!lazy protocol witness table cache variable for type PAKEClientConfiguration and conformance PAKEClientConfiguration)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PAKEClientConfiguration and conformance PAKEClientConfiguration);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PAKEServerRecord and conformance PAKEServerRecord()
{
  result = lazy protocol witness table cache variable for type PAKEServerRecord and conformance PAKEServerRecord;
  if (!lazy protocol witness table cache variable for type PAKEServerRecord and conformance PAKEServerRecord)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PAKEServerRecord and conformance PAKEServerRecord);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PAKEServerRecords.RecordKey and conformance PAKEServerRecords.RecordKey()
{
  result = lazy protocol witness table cache variable for type PAKEServerRecords.RecordKey and conformance PAKEServerRecords.RecordKey;
  if (!lazy protocol witness table cache variable for type PAKEServerRecords.RecordKey and conformance PAKEServerRecords.RecordKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PAKEServerRecords.RecordKey and conformance PAKEServerRecords.RecordKey);
  }

  return result;
}

__n128 __swift_memcpy121_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 105) = *(a2 + 105);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t storeEnumTagSinglePayload for PAKEClientConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 121) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 121) = 0;
    }

    if (a2)
    {
      *(result + 120) = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy122_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 106) = *(a2 + 106);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PAKEServerRecord(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 122))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 120);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for PAKEServerRecord(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 122) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 122) = 0;
    }

    if (a2)
    {
      *(result + 120) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PAKEServerRecords.RecordKey(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 40))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 16) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 16) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for PAKEServerRecords.RecordKey(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

void type metadata completion function for PAKEServerState()
{
  type metadata accessor for PAKEServerRecords?(319, &lazy cache variable for type metadata for Data?);
  if (v0 <= 0x3F)
  {
    type metadata accessor for SymmetricKey?();
    if (v1 <= 0x3F)
    {
      type metadata accessor for PAKEServerRecords?(319, &lazy cache variable for type metadata for Extension.PAKE.PAKEServerHello?);
      if (v2 <= 0x3F)
      {
        type metadata accessor for SPAKE2.Verifier();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

BOOL static Extension.TicketRequest.__derived_enum_equals(_:_:)(int a1, int a2)
{
  v2 = a1 == a2;
  if ((a2 & 0x10000) == 0)
  {
    v2 = 0;
  }

  v3 = a1 == a2;
  if ((a2 & 0x10000) != 0)
  {
    v3 = 0;
  }

  if ((a1 & 0x10000) != 0)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t ByteBuffer.writeTicketRequestExtension(_:)(unsigned int a1)
{
  v20 = *MEMORY[0x1E69E9840];
  if ((a1 & 0x10000) != 0)
  {
    v15 = a1;
    v18 = MEMORY[0x1E69E6290];
    v19 = MEMORY[0x1E6969DF8];
    v16 = &v15;
    v17 = &v16;
    v11 = __swift_project_boxed_opaque_existential_0(&v16, MEMORY[0x1E69E6290]);
    v13 = *v11;
    v12 = v11[1];
    Data._Representation.append(contentsOf:)();
    __swift_destroy_boxed_opaque_existential_0(&v16);
    result = 1;
  }

  else
  {
    v1 = a1 >> 8;
    v15 = a1;
    v2 = MEMORY[0x1E69E6290];
    v3 = MEMORY[0x1E6969DF8];
    v18 = MEMORY[0x1E69E6290];
    v19 = MEMORY[0x1E6969DF8];
    v16 = &v15;
    v17 = &v16;
    v4 = __swift_project_boxed_opaque_existential_0(&v16, MEMORY[0x1E69E6290]);
    v6 = *v4;
    v5 = v4[1];
    Data._Representation.append(contentsOf:)();
    __swift_destroy_boxed_opaque_existential_0(&v16);
    v15 = v1;
    v18 = v2;
    v19 = v3;
    v16 = &v15;
    v17 = &v16;
    v7 = __swift_project_boxed_opaque_existential_0(&v16, v2);
    v9 = *v7;
    v8 = v7[1];
    Data._Representation.append(contentsOf:)();
    __swift_destroy_boxed_opaque_existential_0(&v16);
    result = 2;
  }

  v14 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t _s15SwiftTLSLibrary10ByteBufferV26readTicketRequestExtension11messageTypeAA0H0O0fG0OAA09HandshakeJ0V_tAA8TLSErrorOYKF(unsigned __int8 a1)
{
  if (a1 == 8)
  {
    v6 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs5UInt8V_Tt0g5();
    if ((v6 & 0x100) == 0)
    {
      v5 = v6;
      v4 = 1;
      return v5 | (v4 << 16);
    }

    goto LABEL_9;
  }

  if (a1 == 1)
  {
    v1 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs5UInt8V_Tt0g5();
    if ((v1 & 0x100) == 0)
    {
      v2 = v1;
      v3 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs5UInt8V_Tt0g5();
      if ((v3 & 0x100) == 0)
      {
        v4 = 0;
        v5 = v2 | (v3 << 8);
        return v5 | (v4 << 16);
      }
    }

LABEL_9:
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    return 0;
  }

  v8 = a1 | 0x3A0000;
  lazy protocol witness table accessor for type TLSError and conformance TLSError();
  swift_willThrowTypedImpl();
  return v8;
}

void Extension.TicketRequest.hash(into:)(uint64_t a1, unsigned int a2)
{
  v2 = a2;
  if ((a2 & 0x10000) != 0)
  {
    MEMORY[0x1B274DB20](1);
    LOBYTE(v3) = v2;
  }

  else
  {
    v3 = a2 >> 8;
    MEMORY[0x1B274DB20](0);
    Hasher._combine(_:)(v2);
  }

  Hasher._combine(_:)(v3);
}

Swift::Int Extension.TicketRequest.hashValue.getter(unsigned int a1)
{
  Hasher.init(_seed:)();
  if ((a1 & 0x10000) != 0)
  {
    MEMORY[0x1B274DB20](1);
    LOBYTE(v2) = a1;
  }

  else
  {
    v2 = a1 >> 8;
    MEMORY[0x1B274DB20](0);
    Hasher._combine(_:)(a1);
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Extension.TicketRequest()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  Hasher.init(_seed:)();
  if (v2)
  {
    MEMORY[0x1B274DB20](1);
    LOBYTE(v3) = v1;
  }

  else
  {
    v3 = v1 >> 8;
    MEMORY[0x1B274DB20](0);
    Hasher._combine(_:)(v1);
  }

  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance Extension.TicketRequest()
{
  v1 = *v0;
  if (v0[1])
  {
    MEMORY[0x1B274DB20](1);
    LOBYTE(v2) = v1;
  }

  else
  {
    v2 = v1 >> 8;
    MEMORY[0x1B274DB20](0);
    Hasher._combine(_:)(v1);
  }

  Hasher._combine(_:)(v2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Extension.TicketRequest()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  Hasher.init(_seed:)();
  if (v2)
  {
    MEMORY[0x1B274DB20](1);
    LOBYTE(v3) = v1;
  }

  else
  {
    v3 = v1 >> 8;
    MEMORY[0x1B274DB20](0);
    Hasher._combine(_:)(v1);
  }

  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance Extension.TicketRequest(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v2 = *a1 == *a2;
  if (!*(a2 + 2))
  {
    v2 = 0;
  }

  if (a1[1])
  {
    return v2;
  }

  else
  {
    return (*a1 == *a2) & ~*(a2 + 2);
  }
}

uint64_t ClientTicketRequest.description.getter()
{
  _StringGuts.grow(_:)(55);
  MEMORY[0x1B274D610](0xD00000000000001FLL, 0x80000001B26CE360);
  v0 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B274D610](v0);

  MEMORY[0x1B274D610](0xD000000000000013, 0x80000001B26CE380);
  v1 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B274D610](v1);

  MEMORY[0x1B274D610](41, 0xE100000000000000);
  return 0;
}

Swift::Int Extension.TicketRequest.ServerTicketRequestHint.hashValue.getter(Swift::UInt8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

unint64_t Extension.TicketRequest.ServerTicketRequestHint.description.getter()
{
  _StringGuts.grow(_:)(34);

  v0 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1B274D610](v0);

  MEMORY[0x1B274D610](41, 0xE100000000000000);
  return 0xD00000000000001FLL;
}

unint64_t lazy protocol witness table accessor for type Extension.TicketRequest and conformance Extension.TicketRequest()
{
  result = lazy protocol witness table cache variable for type Extension.TicketRequest and conformance Extension.TicketRequest;
  if (!lazy protocol witness table cache variable for type Extension.TicketRequest and conformance Extension.TicketRequest)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Extension.TicketRequest and conformance Extension.TicketRequest);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ClientTicketRequest and conformance ClientTicketRequest()
{
  result = lazy protocol witness table cache variable for type ClientTicketRequest and conformance ClientTicketRequest;
  if (!lazy protocol witness table cache variable for type ClientTicketRequest and conformance ClientTicketRequest)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClientTicketRequest and conformance ClientTicketRequest);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Extension.TicketRequest.ServerTicketRequestHint and conformance Extension.TicketRequest.ServerTicketRequestHint()
{
  result = lazy protocol witness table cache variable for type Extension.TicketRequest.ServerTicketRequestHint and conformance Extension.TicketRequest.ServerTicketRequestHint;
  if (!lazy protocol witness table cache variable for type Extension.TicketRequest.ServerTicketRequestHint and conformance Extension.TicketRequest.ServerTicketRequestHint)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Extension.TicketRequest.ServerTicketRequestHint and conformance Extension.TicketRequest.ServerTicketRequestHint);
  }

  return result;
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for Extension.TicketRequest(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = *(a1 + 2);
  if (v4 <= 1)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4 ^ 0xFF;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for Extension.TicketRequest(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *(result + 2) = -a2;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

unint64_t specialized ByteBuffer.writeRecord<A>(_:)(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  LOBYTE(v27) = 23;
  v2 = MEMORY[0x1E69E6290];
  v3 = MEMORY[0x1E6969DF8];
  v30 = MEMORY[0x1E69E6290];
  v31 = MEMORY[0x1E6969DF8];
  v28 = &v27;
  v29 = (&v27 + 1);
  v4 = __swift_project_boxed_opaque_existential_0(&v28, MEMORY[0x1E69E6290]);
  v6 = *v4;
  v5 = v4[1];
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v28);
  v27 = 771;
  v30 = v2;
  v31 = v3;
  v28 = &v27;
  v29 = &v28;
  v7 = __swift_project_boxed_opaque_existential_0(&v28, v2);
  v9 = *v7;
  v8 = v7[1];
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v28);
  v10 = *(a1 + 16);
  if (v10 >> 16)
  {
    __break(1u);
LABEL_12:
    swift_once();
    goto LABEL_5;
  }

  v27 = bswap32(v10) >> 16;
  v30 = v2;
  v31 = v3;
  v28 = &v27;
  v29 = &v28;
  v11 = __swift_project_boxed_opaque_existential_0(&v28, v2);
  v13 = *v11;
  v12 = v11[1];
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v28);
  if (v10)
  {
    Data._Representation.append(contentsOf:)();
  }

  if (one-time initialization token for logger != -1)
  {
    goto LABEL_12;
  }

LABEL_5:
  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, logger);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 134217984;
    *(v17 + 4) = v10;
    _os_log_impl(&dword_1B25F5000, v15, v16, "wrote contentlength: %ld", v17, 0xCu);
    MEMORY[0x1B274ECF0](v17, -1, -1);
  }

  swift_bridgeObjectRetain_n();
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v28 = v21;
    *v20 = 136315906;
    *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x80000001B26CDA10, &v28);
    *(v20 + 12) = 2080;
    v22 = ProtocolVersion.description.getter(771);
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v28);

    *(v20 + 14) = v24;
    *(v20 + 22) = 2048;

    *(v20 + 24) = v10;

    *(v20 + 32) = 2048;
    *(v20 + 34) = v10 + 5;
    _os_log_impl(&dword_1B25F5000, v18, v19, "wrote record with contentType: %s, protocolVersion: %s, contentLength: %ld, total: %ld", v20, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1B274ECF0](v21, -1, -1);
    MEMORY[0x1B274ECF0](v20, -1, -1);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v25 = *MEMORY[0x1E69E9840];
  return v10 + 5;
}

uint64_t TLSRecordHandler.pendingApplicationDataBytes.getter()
{
  v1 = (v0 + *(type metadata accessor for TLSRecordHandler() + 40));
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    v6 = 0;
    if (v5 == 2)
    {
      v6 = *(v2 + 24);
    }
  }

  else
  {
    v6 = BYTE6(v3);
    v7 = v2 >> 32;
    if (v5)
    {
      v6 = v7;
    }
  }

  result = v6 - v4;
  if (__OFSUB__(v6, v4))
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for TLSRecordHandler()
{
  result = type metadata singleton initialization cache for TLSRecordHandler;
  if (!type metadata singleton initialization cache for TLSRecordHandler)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TLSRecordHandler.receivedApplicationData.getter()
{
  v1 = (v0 + *(type metadata accessor for TLSRecordHandler() + 44));
  v2 = *v1;
  v3 = v1[2];
  outlined copy of Data._Representation(*v1, v1[1]);
  return v2;
}

uint64_t TLSRecordHandler.receivedApplicationData.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = (v3 + *(type metadata accessor for TLSRecordHandler() + 44));
  result = outlined consume of Data._Representation(*v7, v7[1]);
  *v7 = a1;
  v7[1] = a2;
  v7[2] = a3;
  return result;
}

uint64_t TLSRecordHandler.outgoingBytes.getter()
{
  v1 = (v0 + *(type metadata accessor for TLSRecordHandler() + 48));
  v2 = *v1;
  v3 = v1[2];
  outlined copy of Data._Representation(*v1, v1[1]);
  return v2;
}

uint64_t TLSRecordHandler.outgoingBytes.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = (v3 + *(type metadata accessor for TLSRecordHandler() + 48));
  result = outlined consume of Data._Representation(*v7, v7[1]);
  *v7 = a1;
  v7[1] = a2;
  v7[2] = a3;
  return result;
}

uint64_t TLSRecordHandler.outgoingBytesCount.getter()
{
  v1 = (v0 + *(type metadata accessor for TLSRecordHandler() + 48));
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    v6 = 0;
    if (v5 == 2)
    {
      v6 = *(v2 + 24);
    }
  }

  else
  {
    v6 = BYTE6(v3);
    v7 = v2 >> 32;
    if (v5)
    {
      v6 = v7;
    }
  }

  result = v6 - v4;
  if (__OFSUB__(v6, v4))
  {
    __break(1u);
  }

  return result;
}

unint64_t TLSRecordHandler.bytesToReadCount.getter()
{
  result = *(v0 + *(type metadata accessor for TLSRecordHandler() + 20) + 24);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (HIDWORD(result))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t TLSRecordHandler.writeEncryptionLevelIsEarlyData.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for TLSRecordHandler();
  outlined init with copy of EncryptionLevel?(v0 + *(v5 + 28), v4);
  v6 = type metadata accessor for EncryptionLevel(0);
  if ((*(*(v6 - 8) + 48))(v4, 1, v6) == 1)
  {
    outlined destroy of P256.Signing.PrivateKey?(v4, &_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);
    return 0;
  }

  else if (swift_getEnumCaseMultiPayload())
  {
    outlined destroy of EncryptionLevel(v4, type metadata accessor for EncryptionLevel);
    return 0;
  }

  else
  {
    v8 = type metadata accessor for SymmetricKey();
    (*(*(v8 - 8) + 8))(v4, v8);
    return 1;
  }
}

uint64_t outlined init with copy of EncryptionLevel?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t TLSRecordHandler.getNegotiatedCiphersuite.getter()
{
  v1 = v0;
  v2 = type metadata accessor for ServerHandshakeStateMachine(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for HandshakeStateMachine(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TLSHandshakeStateMachine(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of TLSHandshakeStateMachine(v1, v13, type metadata accessor for TLSHandshakeStateMachine);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineVWObTm_0(v13, v5, type metadata accessor for ServerHandshakeStateMachine);
    v14 = ServerHandshakeStateMachine.negotiatedCiphersuite.getter();
    v15 = type metadata accessor for ServerHandshakeStateMachine;
    v16 = v5;
  }

  else
  {
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineVWObTm_0(v13, v9, type metadata accessor for HandshakeStateMachine);
    v14 = HandshakeStateMachine.negotiatedCiphersuite.getter();
    v15 = type metadata accessor for HandshakeStateMachine;
    v16 = v9;
  }

  outlined destroy of EncryptionLevel(v16, v15);
  if ((v14 & 0x10000) != 0)
  {
    return 0;
  }

  else
  {
    return v14;
  }
}

uint64_t TLSRecordHandler.getNegotiatedPAKE.getter()
{
  v1 = v0;
  v2 = type metadata accessor for ServerHandshakeStateMachine(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for HandshakeStateMachine(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for TLSHandshakeStateMachine(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  outlined init with copy of TLSHandshakeStateMachine(v1, v13, type metadata accessor for TLSHandshakeStateMachine);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineVWObTm_0(v13, v5, type metadata accessor for ServerHandshakeStateMachine);
    v14 = ServerHandshakeStateMachine.negotiatedPAKE.getter();
    v15 = type metadata accessor for ServerHandshakeStateMachine;
    v16 = v5;
  }

  else
  {
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineVWObTm_0(v13, v9, type metadata accessor for HandshakeStateMachine);
    v14 = HandshakeStateMachine.negotiatedPAKE.getter();
    v15 = type metadata accessor for HandshakeStateMachine;
    v16 = v9;
  }

  outlined destroy of EncryptionLevel(v16, v15);
  return v14 & 0x1FFFF;
}

uint64_t TLSRecordHandler.getNegotiatedEPSK.getter()
{
  v1 = v0;
  v2 = type metadata accessor for ServerHandshakeStateMachine(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  ready = type metadata accessor for HandshakeState.ReadyState(0);
  v6 = *(*(ready - 8) + 64);
  MEMORY[0x1EEE9AC00](ready);
  v35 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for HandshakeState.EncryptedExtensionsState(0);
  v8 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34);
  v33 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for HandshakeState.ServerHelloState(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for HandshakeState(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for HandshakeStateMachine(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for TLSHandshakeStateMachine(0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v33 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of TLSHandshakeStateMachine(v1, v25, type metadata accessor for TLSHandshakeStateMachine);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineVWObTm_0(v25, v5, type metadata accessor for ServerHandshakeStateMachine);
    v26 = ServerHandshakeStateMachine.negotiatedEPSK.getter();
    v27 = type metadata accessor for ServerHandshakeStateMachine;
    v28 = v5;
LABEL_13:
    outlined destroy of EncryptionLevel(v28, v27);
    return v26 & 1;
  }

  _s15SwiftTLSLibrary27ServerHandshakeStateMachineVWObTm_0(v25, v21, type metadata accessor for HandshakeStateMachine);
  outlined init with copy of TLSHandshakeStateMachine(&v21[*(v18 + 24)], v17, type metadata accessor for HandshakeState);
  outlined destroy of EncryptionLevel(v21, type metadata accessor for HandshakeStateMachine);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload >= 2)
    {
      _s15SwiftTLSLibrary27ServerHandshakeStateMachineVWObTm_0(v17, v13, type metadata accessor for HandshakeState.ServerHelloState);
      v26 = v13[*(v10 + 36)];
      v27 = type metadata accessor for HandshakeState.ServerHelloState;
      v28 = v13;
      goto LABEL_13;
    }
  }

  else if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload != 5)
    {
      v30 = v35;
      _s15SwiftTLSLibrary27ServerHandshakeStateMachineVWObTm_0(v17, v35, type metadata accessor for HandshakeState.ReadyState);
      v26 = *(v30 + *(ready + 52));
      v31 = type metadata accessor for HandshakeState.ReadyState;
      goto LABEL_12;
    }
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v30 = v33;
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineVWObTm_0(v17, v33, type metadata accessor for HandshakeState.EncryptedExtensionsState);
    v26 = *(v30 + *(v34 + 40));
    v31 = type metadata accessor for HandshakeState.EncryptedExtensionsState;
LABEL_12:
    v27 = v31;
    v28 = v30;
    goto LABEL_13;
  }

  outlined destroy of EncryptionLevel(v17, type metadata accessor for HandshakeState);
  v26 = 0;
  return v26 & 1;
}

uint64_t TLSRecordHandler.getEPSKOffered.getter(uint64_t (*a1)(uint64_t), uint64_t (*a2)(uint64_t))
{
  v5 = v2;
  v6 = type metadata accessor for ServerHandshakeStateMachine(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for HandshakeStateMachine(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TLSHandshakeStateMachine(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of TLSHandshakeStateMachine(v5, v17, type metadata accessor for TLSHandshakeStateMachine);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = _s15SwiftTLSLibrary27ServerHandshakeStateMachineVWObTm_0(v17, v9, type metadata accessor for ServerHandshakeStateMachine);
    v19 = a2(v18);
    v20 = type metadata accessor for ServerHandshakeStateMachine;
    v21 = v9;
  }

  else
  {
    v22 = _s15SwiftTLSLibrary27ServerHandshakeStateMachineVWObTm_0(v17, v13, type metadata accessor for HandshakeStateMachine);
    v19 = a1(v22);
    v20 = type metadata accessor for HandshakeStateMachine;
    v21 = v13;
  }

  outlined destroy of EncryptionLevel(v21, v20);
  return v19 & 1;
}

uint64_t TLSRecordHandler.getNegotiatedGroup.getter()
{
  v1 = v0;
  v2 = type metadata accessor for ServerHandshakeStateMachine(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for HandshakeStateMachine(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TLSHandshakeStateMachine(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of TLSHandshakeStateMachine(v1, v13, type metadata accessor for TLSHandshakeStateMachine);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineVWObTm_0(v13, v5, type metadata accessor for ServerHandshakeStateMachine);
    v14 = ServerHandshakeStateMachine.negotiatedGroup.getter();
    v16 = v15;
    v17 = type metadata accessor for ServerHandshakeStateMachine;
    v18 = v5;
  }

  else
  {
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineVWObTm_0(v13, v9, type metadata accessor for HandshakeStateMachine);
    v14 = HandshakeStateMachine.negotiatedGroup.getter();
    v16 = v19;
    v17 = type metadata accessor for HandshakeStateMachine;
    v18 = v9;
  }

  outlined destroy of EncryptionLevel(v18, v17);
  if (v16)
  {
    return v14;
  }

  else
  {
    return 0;
  }
}

uint64_t TLSRecordHandler.writeOutput()()
{
  v1 = (v0 + *(type metadata accessor for TLSRecordHandler() + 48));
  v2 = *v1;
  v3 = v1[1];
  result = v1[2];
  v5 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    v6 = 0;
    if (v5 == 2)
    {
      v6 = *(v2 + 24);
    }
  }

  else
  {
    v6 = BYTE6(v3);
    if (v5)
    {
      v6 = v2 >> 32;
    }
  }

  if (__OFSUB__(v6, result))
  {
    __break(1u);
  }

  else
  {
    if (v6 == result)
    {
      return 0;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        v7 = *(v2 + 24);
      }

      else
      {
        v7 = 0;
      }
    }

    else if (v5)
    {
      v7 = v2 >> 32;
    }

    else
    {
      v7 = BYTE6(v3);
    }

    if (v7 >= result)
    {
      v8 = Data._Representation.subscript.getter();
      outlined consume of Data._Representation(*v1, v1[1]);
      result = v8;
      *v1 = xmmword_1B26C6130;
      v1[2] = 0;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t TLSRecordHandler.getOutputData(_:)(Swift::Int a1)
{
  v3 = (v1 + *(type metadata accessor for TLSRecordHandler() + 48));
  v4 = *v3;
  v5 = v3[1];
  result = v3[2];
  v7 = v5 >> 62;
  if ((v5 >> 62) > 1)
  {
    v8 = 0;
    if (v7 == 2)
    {
      v8 = *(v4 + 24);
    }
  }

  else
  {
    v8 = BYTE6(v5);
    if (v7)
    {
      v8 = v4 >> 32;
    }
  }

  v9 = __OFSUB__(v8, result);
  v10 = v8 - result;
  if (v9)
  {
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    return result;
  }

  if (v10 < 1)
  {
    return 0;
  }

  if (v7 > 1)
  {
    if (v7 == 2)
    {
      v11 = *(v4 + 24);
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = BYTE6(v5);
    if (v7)
    {
      v11 = v4 >> 32;
    }
  }

  v9 = __OFSUB__(v11, result);
  v12 = v11 - result;
  if (v9)
  {
    goto LABEL_32;
  }

  if (v12 <= a1)
  {
    if (v7 > 1)
    {
      if (v7 == 2)
      {
        v14 = *(v4 + 24);
      }

      else
      {
        v14 = 0;
      }
    }

    else if (v7)
    {
      v14 = v4 >> 32;
    }

    else
    {
      v14 = BYTE6(v5);
    }

    if (v14 >= result)
    {
      v15 = Data._Representation.subscript.getter();
      outlined consume of Data._Representation(*v3, v3[1]);
      result = v15;
      *v3 = xmmword_1B26C6130;
      v3[2] = 0;
      return result;
    }

    goto LABEL_33;
  }

  result = ByteBuffer.readBytes(length:)(a1);
  if (result)
  {
    v13 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSayAEG_Tt0g5Tf4g_n(result);

    return v13;
  }

  return result;
}

uint64_t TLSRecordHandler.getApplicationData(_:)(Swift::Int a1)
{
  v3 = (v1 + *(type metadata accessor for TLSRecordHandler() + 44));
  v4 = *v3;
  v5 = v3[1];
  result = v3[2];
  v7 = v5 >> 62;
  if ((v5 >> 62) > 1)
  {
    v8 = 0;
    if (v7 == 2)
    {
      v8 = *(v4 + 24);
    }
  }

  else
  {
    v8 = BYTE6(v5);
    if (v7)
    {
      v8 = v4 >> 32;
    }
  }

  v9 = __OFSUB__(v8, result);
  v10 = v8 - result;
  if (v9)
  {
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    return result;
  }

  if (v10 < 1)
  {
    return 0;
  }

  if (v7 > 1)
  {
    if (v7 == 2)
    {
      v11 = *(v4 + 24);
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = BYTE6(v5);
    if (v7)
    {
      v11 = v4 >> 32;
    }
  }

  v9 = __OFSUB__(v11, result);
  v12 = v11 - result;
  if (v9)
  {
    goto LABEL_32;
  }

  if (v12 <= a1)
  {
    if (v7 > 1)
    {
      if (v7 == 2)
      {
        v14 = *(v4 + 24);
      }

      else
      {
        v14 = 0;
      }
    }

    else if (v7)
    {
      v14 = v4 >> 32;
    }

    else
    {
      v14 = BYTE6(v5);
    }

    if (v14 >= result)
    {
      v15 = Data._Representation.subscript.getter();
      outlined consume of Data._Representation(*v3, v3[1]);
      result = v15;
      *v3 = xmmword_1B26C6130;
      v3[2] = 0;
      return result;
    }

    goto LABEL_33;
  }

  result = ByteBuffer.readBytes(length:)(a1);
  if (result)
  {
    v13 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSayAEG_Tt0g5Tf4g_n(result);

    return v13;
  }

  return result;
}

Swift::Int __swiftcall TLSRecordHandler.getApplicationDataLength()()
{
  v1 = (v0 + *(type metadata accessor for TLSRecordHandler() + 44));
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    v6 = 0;
    if (v5 == 2)
    {
      v6 = *(v2 + 24);
    }
  }

  else
  {
    v6 = BYTE6(v3);
    v7 = v2 >> 32;
    if (v5)
    {
      v6 = v7;
    }
  }

  result = v6 - v4;
  if (__OFSUB__(v6, v4))
  {
    __break(1u);
  }

  return result;
}

BOOL TLSRecordHandler.handshakeComplete.getter()
{
  v1 = v0;
  v26 = type metadata accessor for ServerHandshakeState(0);
  v2 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ServerHandshakeStateMachine(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for HandshakeState(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for HandshakeStateMachine(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for TLSHandshakeStateMachine(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of TLSHandshakeStateMachine(v1, v20, type metadata accessor for TLSHandshakeStateMachine);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineVWObTm_0(v20, v8, type metadata accessor for ServerHandshakeStateMachine);
    outlined init with copy of TLSHandshakeStateMachine(&v8[*(v5 + 24)], v4, type metadata accessor for ServerHandshakeState);
    outlined destroy of EncryptionLevel(v8, type metadata accessor for ServerHandshakeStateMachine);
    v21 = swift_getEnumCaseMultiPayload() > 6;
    v22 = type metadata accessor for ServerHandshakeState;
    v23 = v4;
  }

  else
  {
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineVWObTm_0(v20, v16, type metadata accessor for HandshakeStateMachine);
    outlined init with copy of TLSHandshakeStateMachine(&v16[*(v13 + 24)], v12, type metadata accessor for HandshakeState);
    outlined destroy of EncryptionLevel(v16, type metadata accessor for HandshakeStateMachine);
    v21 = swift_getEnumCaseMultiPayload() > 5;
    v22 = type metadata accessor for HandshakeState;
    v23 = v12;
  }

  outlined destroy of EncryptionLevel(v23, v22);
  return v21;
}

uint64_t TLSRecordHandler.handshakeStarted.getter()
{
  v25 = type metadata accessor for ServerHandshakeState(0);
  v1 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ServerHandshakeStateMachine(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for HandshakeState(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for HandshakeStateMachine(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for TLSHandshakeStateMachine(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of TLSHandshakeStateMachine(v0, v19, type metadata accessor for TLSHandshakeStateMachine);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineVWObTm_0(v19, v7, type metadata accessor for ServerHandshakeStateMachine);
    outlined init with copy of TLSHandshakeStateMachine(&v7[*(v4 + 24)], v3, type metadata accessor for ServerHandshakeState);
    if (swift_getEnumCaseMultiPayload())
    {
      v20 = 1;
    }

    else
    {
      v20 = v7[24];
    }

    outlined destroy of EncryptionLevel(v7, type metadata accessor for ServerHandshakeStateMachine);
    v21 = type metadata accessor for ServerHandshakeState;
    v22 = v3;
  }

  else
  {
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineVWObTm_0(v19, v15, type metadata accessor for HandshakeStateMachine);
    outlined init with copy of TLSHandshakeStateMachine(&v15[*(v12 + 24)], v11, type metadata accessor for HandshakeState);
    outlined destroy of EncryptionLevel(v15, type metadata accessor for HandshakeStateMachine);
    v20 = swift_getEnumCaseMultiPayload() != 0;
    v21 = type metadata accessor for HandshakeState;
    v22 = v11;
  }

  outlined destroy of EncryptionLevel(v22, v21);
  return v20;
}

uint64_t TLSRecordHandler.bufferedNetworkData.getter()
{
  v1 = type metadata accessor for TLSRecordHandler();
  result = 0;
  v3 = (v0 + *(v1 + 20));
  v4 = v3[1];
  if (v4 >> 60 != 15)
  {
    v5 = *v3;
    v6 = v3[2];
    v7 = v4 >> 62;
    if ((v4 >> 62) > 1)
    {
      if (v7 == 2)
      {
        v8 = *(v5 + 24);
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = BYTE6(v4);
      v9 = v5 >> 32;
      if (v7)
      {
        v8 = v9;
      }
    }

    result = v8 - v6;
    if (__OFSUB__(v8, v6))
    {
      __break(1u);
    }
  }

  return result;
}

double TLSRecordHandler.init(stateMachine:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TLSRecordHandler();
  v5 = v4[7];
  v6 = type metadata accessor for EncryptionLevel(0);
  v7 = *(*(v6 - 8) + 56);
  v7(a2 + v5, 1, 1, v6);
  v7(a2 + v4[8], 1, 1, v6);
  *(a2 + v4[9]) = 0;
  v8 = a2 + v4[13];
  *v8 = 0;
  *(v8 + 2) = 1;
  v9 = a2 + v4[14];
  *v9 = 0;
  *(v9 + 2) = 1;
  *(a2 + v4[15]) = 0;
  v10 = a2 + v4[16];
  *v10 = 0;
  *(v10 + 8) = 0;
  *(v10 + 16) = -1;
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineVWObTm_0(a1, a2, type metadata accessor for TLSHandshakeStateMachine);
  v11 = (a2 + v4[5]);
  *v11 = xmmword_1B26C5EF0;
  v11[1] = xmmword_1B26CBEB0;
  v12 = a2 + v4[6];
  v13 = type metadata accessor for SymmetricKey();
  v14 = *(*(v13 - 8) + 56);
  v14(v12, 1, 1, v13);
  v15 = type metadata accessor for TLSRecordProtector();
  v16 = v15[6];
  v22 = v15[5];
  v14(v12 + v16, 1, 1, v13);
  v23 = v15[7];
  *(v12 + v15[8]) = 0;
  *(v12 + v15[9]) = 0;
  v17 = v12 + v15[10];
  outlined destroy of P256.Signing.PrivateKey?(v12, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  v14(v12, 1, 1, v13);
  *(v12 + v22) = 0;
  outlined destroy of P256.Signing.PrivateKey?(v12 + v16, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  v14(v12 + v16, 1, 1, v13);
  *(v12 + v23) = 0;
  *v17 = 0;
  *(v17 + 2) = 1;
  v18 = a2 + v4[11];
  result = 0.0;
  *v18 = xmmword_1B26C6130;
  *(v18 + 16) = 0;
  v20 = a2 + v4[10];
  *v20 = xmmword_1B26C6130;
  *(v20 + 16) = 0;
  v21 = a2 + v4[12];
  *v21 = xmmword_1B26C6130;
  *(v21 + 16) = 0;
  return result;
}

uint64_t _s15SwiftTLSLibrary16TLSRecordHandlerV14startHandshakeyyAA8TLSErrorOYKF()
{
  v3 = v0;
  v4 = type metadata accessor for PartialHandshakeResult(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = (&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for TLSHandshakeStateMachine(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for HandshakeStateMachine(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of TLSHandshakeStateMachine(v3, v11, type metadata accessor for TLSHandshakeStateMachine);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined destroy of EncryptionLevel(v11, type metadata accessor for TLSHandshakeStateMachine);
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, logger);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1B25F5000, v17, v18, "startHandshake called on server", v19, 2u);
      MEMORY[0x1B274ECF0](v19, -1, -1);
    }

    v23 = xmmword_1B26CBEC0;
    v24 = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    return 30;
  }

  else
  {
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineVWObTm_0(v11, v15, type metadata accessor for HandshakeStateMachine);
    _s15SwiftTLSLibrary21HandshakeStateMachineV05startC0AA07PartialC6ResultVyAA8TLSErrorOYKF(&v22, v7);
    if (v1)
    {
      v2 = v22;
      outlined destroy of EncryptionLevel(v15, type metadata accessor for HandshakeStateMachine);
    }

    else
    {
      _s15SwiftTLSLibrary16TLSRecordHandlerV29processPartialHandshakeResult33_3A7BCC859838BE1761A4636F58F247A007partialgH0yAA0fgH0V_tAA8TLSErrorOYKF(v7);
      outlined destroy of EncryptionLevel(v7, type metadata accessor for PartialHandshakeResult);
      outlined destroy of EncryptionLevel(v3, type metadata accessor for TLSHandshakeStateMachine);
      _s15SwiftTLSLibrary27ServerHandshakeStateMachineVWObTm_0(v15, v3, type metadata accessor for HandshakeStateMachine);
      swift_storeEnumTagMultiPayload();
    }
  }

  return v2;
}

uint64_t _s15SwiftTLSLibrary16TLSRecordHandlerV29processPartialHandshakeResult33_3A7BCC859838BE1761A4636F58F247A0LL07partialgH0yAA0fgH0V_tAA8TLSErrorOYKF(uint64_t *a1)
{
  v2 = v1;
  v62 = type metadata accessor for Data.Iterator();
  v4 = *(v62 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v61 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v69 = &v58 - v11;
  v12 = a1[1];
  if (v12 >> 60 == 15)
  {
LABEL_62:
    v50 = v2;
    v54 = v68;
    v55 = _s15SwiftTLSLibrary16TLSRecordHandlerV23updateEncryptionSecrets33_3A7BCC859838BE1761A4636F58F247A0LLyyAA22PartialHandshakeResultVAA8TLSErrorOYKF(a1);
    if (v54)
    {
      return v55;
    }

    return v50;
  }

  v63 = v10;
  v13 = *a1;
  v59 = a1;
  v14 = a1[2];
  outlined copy of Data._Representation(v13, v12);
  result = v14;
  v16 = (v12 >> 62);
  v71 = v13;
  v64 = v13 >> 32;
  v60 = (v4 + 8);
  v70 = BYTE6(v12);
  v66 = v12;
  v67 = v2;
  v65 = v12 >> 62;
  while (1)
  {
    if (v16 > 1)
    {
      v21 = v16 == 2 ? *(v71 + 24) : 0;
    }

    else
    {
      v21 = v70;
      if (v16)
      {
        v21 = v64;
      }
    }

    v22 = __OFSUB__(v21, result);
    v23 = v21 - result;
    if (v22)
    {
      break;
    }

    if (v23 < 1)
    {
      outlined consume of Data._Representation(v71, v12);
      a1 = v59;
      goto LABEL_62;
    }

    if (v16 > 1)
    {
      if (v16 == 2)
      {
        v24 = *(v71 + 24);
      }

      else
      {
        v24 = 0;
      }
    }

    else
    {
      v24 = v70;
      if (v16)
      {
        v24 = v64;
      }
    }

    v22 = __OFSUB__(v24, result);
    v25 = v24 - result;
    if (v22)
    {
      goto LABEL_70;
    }

    if (v25 >= 0x4000)
    {
      v25 = 0x4000;
    }

    v26 = result + v25;
    if (__OFADD__(result, v25))
    {
      goto LABEL_71;
    }

    if (v16 > 1)
    {
      if (v16 == 2)
      {
        if (*(v71 + 24) < v26)
        {
          goto LABEL_65;
        }
      }

      else if (v26 > 0)
      {
        goto LABEL_65;
      }
    }

    else
    {
      v27 = v70;
      if (v16)
      {
        v27 = v64;
      }

      if (v27 < v26)
      {
LABEL_65:
        v50 = 0xD000000000000046;
        v76 = 0xD000000000000046;
        v77 = 0x80000001B26CE460;
        v78 = 1;
        lazy protocol witness table accessor for type TLSError and conformance TLSError();
        swift_willThrowTypedImpl();
        v56 = v71;
        v57 = v12;
LABEL_67:
        outlined consume of Data._Representation(v56, v57);
        return v50;
      }
    }

    if (v26 < result)
    {
      goto LABEL_72;
    }

    result = Data._Representation.subscript.getter();
    v28 = result;
    v30 = v29;
    v31 = v29 >> 62;
    if ((v29 >> 62) > 1)
    {
      if (v31 != 2)
      {
        goto LABEL_41;
      }

      result = *(result + 16);
      v32 = *(v28 + 24);
    }

    else
    {
      if (!v31)
      {
        goto LABEL_41;
      }

      result = result;
      v32 = v28 >> 32;
    }

    if (v32 < result)
    {
      goto LABEL_73;
    }

LABEL_41:
    v72 = Data._Representation.subscript.getter();
    v34 = v33;
    outlined consume of Data._Representation(v28, v30);
    v81 = type metadata accessor for TLSRecordHandler();
    v35 = v81[7];
    v36 = v69;
    outlined init with copy of EncryptionLevel?(v2 + v35, v69);
    v37 = type metadata accessor for EncryptionLevel(0);
    v38 = *(*(v37 - 8) + 48);
    v39 = v38(v36, 1, v37);
    result = outlined destroy of P256.Signing.PrivateKey?(v36, &_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);
    if (v39 == 1)
    {
      goto LABEL_42;
    }

    v43 = v63;
    outlined init with copy of EncryptionLevel?(v2 + v35, v63);
    if (v38(v43, 1, v37) == 1)
    {
      outlined destroy of P256.Signing.PrivateKey?(v43, &_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);
      v41 = v72;
    }

    else
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v41 = v72;
      if (!EnumCaseMultiPayload)
      {
        v53 = type metadata accessor for SymmetricKey();
        result = (*(*(v53 - 8) + 8))(v43, v53);
LABEL_42:
        v40 = v34 >> 62;
        if ((v34 >> 62) > 1)
        {
          v2 = v67;
          v41 = v72;
          if (v40 == 2)
          {
            v45 = *(v72 + 16);
            v44 = *(v72 + 24);
            v42 = v44 - v45;
            if (__OFSUB__(v44, v45))
            {
              goto LABEL_76;
            }

            outlined copy of Data._Representation(v72, v34);
            if (v42)
            {
              goto LABEL_58;
            }
          }
        }

        else
        {
          v41 = v72;
          if (!v40)
          {
            v42 = BYTE6(v34);
            v2 = v67;
            if (!BYTE6(v34))
            {
              goto LABEL_3;
            }

LABEL_58:
            v17 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v42, 0);
            v51 = v61;
            v52 = Data._copyContents(initializing:)();
            outlined consume of Data._Representation(v41, v34);
            result = (*v60)(v51, v62);
            if (v52 != v42)
            {
              goto LABEL_74;
            }

LABEL_4:
            v18 = &protocol witness table for TLSPlaintext;
            v80 = &protocol witness table for TLSPlaintext;
            LOWORD(v76) = 790;
            BYTE2(v76) = 3;
            v16 = &type metadata for TLSPlaintext;
            v79 = &type metadata for TLSPlaintext;
            v77 = v17;
            goto LABEL_5;
          }

          if (__OFSUB__(HIDWORD(v72), v72))
          {
            goto LABEL_75;
          }

          v42 = HIDWORD(v72) - v72;
          outlined copy of Data._Representation(v72, v34);
          v2 = v67;
          if (v42)
          {
            goto LABEL_58;
          }
        }

LABEL_3:
        outlined consume of Data._Representation(v41, v34);
        v17 = MEMORY[0x1E69E7CC0];
        goto LABEL_4;
      }

      outlined destroy of EncryptionLevel(v43, type metadata accessor for EncryptionLevel);
    }

    outlined copy of Data._Representation(v41, v34);
    v47 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCs5UInt8V_10Foundation4DataVTt0g5(v41, v34);
    v2 = v67;
    v48 = v68;
    v49 = v67 + v81[6];
    v50 = _s15SwiftTLSLibrary18TLSRecordProtectorV7protect9plaintext17actualContentType13paddingLengthAA13TLSCiphertextVSays5UInt8VG_AA0hI0VSitAA8TLSErrorOYKF(v47, 22, 0);

    v68 = v48;
    if (v48)
    {
      outlined consume of Data._Representation(v41, v34);
      v56 = v71;
      v57 = v66;
      goto LABEL_67;
    }

    v75 = &protocol witness table for TLSCiphertext;
    v74 = &type metadata for TLSCiphertext;
    *&v73 = v50;
    outlined init with take of ContiguousBytes(&v73, &v76);
    v16 = v79;
    v18 = v80;
LABEL_5:
    v19 = __swift_project_boxed_opaque_existential_0(&v76, v16);
    v20 = v2 + v81[12];
    ByteBuffer.writeRecord<A>(_:)(v19, v16, v18);
    outlined consume of Data._Representation(v41, v34);
    __swift_destroy_boxed_opaque_existential_0(&v76);
    result = v26;
    LODWORD(v16) = v65;
    v12 = v66;
  }

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
  return result;
}

uint64_t TLSRecordHandler.addIncomingHandshakeBytes(_:)(uint64_t *a1)
{
  v2 = v1;
  v4 = type metadata accessor for ServerHandshakeStateMachine(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for HandshakeStateMachine(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TLSHandshakeStateMachine(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of TLSHandshakeStateMachine(v2, v15, type metadata accessor for TLSHandshakeStateMachine);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineVWObTm_0(v15, v7, type metadata accessor for ServerHandshakeStateMachine);
    ServerHandshakeStateMachine.receivedNetworkData(_:)(a1);
    outlined destroy of EncryptionLevel(v2, type metadata accessor for TLSHandshakeStateMachine);
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineVWObTm_0(v7, v2, type metadata accessor for ServerHandshakeStateMachine);
  }

  else
  {
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineVWObTm_0(v15, v11, type metadata accessor for HandshakeStateMachine);
    HandshakeStateMachine.receivedNetworkData(_:)(a1);
    outlined destroy of EncryptionLevel(v2, type metadata accessor for TLSHandshakeStateMachine);
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineVWObTm_0(v11, v2, type metadata accessor for HandshakeStateMachine);
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t _s15SwiftTLSLibrary16TLSRecordHandlerV23updateEncryptionSecrets33_3A7BCC859838BE1761A4636F58F247A0LLyyAA22PartialHandshakeResultVAA8TLSErrorOYKF(uint64_t a1)
{
  v2 = v1;
  v82 = a1;
  v3 = type metadata accessor for SymmetricKey();
  v78 = *(v3 - 8);
  v79 = v3;
  v4 = *(v78 + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v75 = &v70 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v76 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v70 - v13;
  v15 = type metadata accessor for EncryptionLevel(0);
  v80 = *(v15 - 8);
  v16 = *(v80 + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v73 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v74 = &v70 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v70 - v21;
  v23 = type metadata accessor for ServerHandshakeStateMachine(0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v26 = &v70 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for HandshakeStateMachine(0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v30 = &v70 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for TLSHandshakeStateMachine(0);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v70 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of TLSHandshakeStateMachine(v2, v34, type metadata accessor for TLSHandshakeStateMachine);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineVWObTm_0(v34, v26, type metadata accessor for ServerHandshakeStateMachine);
    v35 = ServerHandshakeStateMachine.negotiatedCiphersuite.getter();
    v36 = type metadata accessor for ServerHandshakeStateMachine;
    v37 = v26;
  }

  else
  {
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineVWObTm_0(v34, v30, type metadata accessor for HandshakeStateMachine);
    v35 = HandshakeStateMachine.negotiatedCiphersuite.getter();
    v36 = type metadata accessor for HandshakeStateMachine;
    v37 = v30;
  }

  outlined destroy of EncryptionLevel(v37, v36);
  v38 = v15;
  v39 = v80;
  if ((v35 & 0x10000) == 0)
  {
    v40 = v2 + *(type metadata accessor for TLSRecordHandler() + 24);
    v41 = v40 + *(type metadata accessor for TLSRecordProtector() + 40);
    *v41 = v35;
    *(v41 + 2) = 0;
  }

  v77 = v2;
  v72 = v7;
  v42 = type metadata accessor for PartialHandshakeResult(0);
  outlined init with copy of EncryptionLevel?(v82 + *(v42 + 24), v14);
  v43 = *(v39 + 48);
  if (v43(v14, 1, v38) == 1)
  {
    outlined destroy of P256.Signing.PrivateKey?(v14, &_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);
  }

  else
  {
    v71 = v43;
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineVWObTm_0(v14, v22, type metadata accessor for EncryptionLevel);
    v44 = type metadata accessor for TLSRecordHandler();
    v45 = *(v44 + 32);
    v46 = v77;
    outlined destroy of P256.Signing.PrivateKey?(v77 + v45, &_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);
    outlined init with copy of TLSHandshakeStateMachine(v22, v46 + v45, type metadata accessor for EncryptionLevel);
    (*(v39 + 56))(v46 + v45, 0, 1, v38);
    v47 = v75;
    v48 = TLSRecordHandler.calcNewKeyAndIV(newEncryptionLevel:)(v75, v22);
    v49 = v46 + *(v44 + 24);
    v50 = v81;
    v51 = _s15SwiftTLSLibrary18TLSRecordProtectorV20checkKeyAndIVLengths3key2ivy9CryptoKit09SymmetricF0V_Says5UInt8VGtAA8TLSErrorOYKF(v47, v48);
    if (v50)
    {
LABEL_14:
      v35 = v51;

      (*(v78 + 8))(v47, v79);
      outlined destroy of EncryptionLevel(v22, type metadata accessor for EncryptionLevel);
      return v35;
    }

    v81 = 0;
    v70 = v38;
    outlined destroy of EncryptionLevel(v22, type metadata accessor for EncryptionLevel);
    v52 = type metadata accessor for TLSRecordProtector();
    v53 = v52[6];
    outlined destroy of P256.Signing.PrivateKey?(v49 + v53, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
    v55 = v78;
    v54 = v79;
    (*(v78 + 32))(v49 + v53, v47, v79);
    (*(v55 + 56))(v49 + v53, 0, 1, v54);
    v35 = v52[7];
    v56 = *(v49 + v35);

    *(v49 + v35) = v48;
    *(v49 + v52[9]) = 0;
    v38 = v70;
    v43 = v71;
  }

  v57 = v76;
  outlined init with copy of EncryptionLevel?(v82 + *(v42 + 20), v76);
  if (v43(v57, 1, v38) != 1)
  {
    v22 = v74;
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineVWObTm_0(v57, v74, type metadata accessor for EncryptionLevel);
    v58 = type metadata accessor for TLSRecordHandler();
    v59 = *(v58 + 28);
    v60 = v77;
    outlined destroy of P256.Signing.PrivateKey?(v77 + v59, &_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);
    outlined init with copy of TLSHandshakeStateMachine(v22, v60 + v59, type metadata accessor for EncryptionLevel);
    (*(v80 + 56))(v60 + v59, 0, 1, v38);
    v35 = v73;
    outlined init with copy of TLSHandshakeStateMachine(v22, v73, type metadata accessor for EncryptionLevel);
    if (!swift_getEnumCaseMultiPayload())
    {
      outlined destroy of EncryptionLevel(v22, type metadata accessor for EncryptionLevel);
      (*(v78 + 8))(v35, v79);
      return v35;
    }

    outlined destroy of EncryptionLevel(v35, type metadata accessor for EncryptionLevel);
    v47 = v72;
    v61 = TLSRecordHandler.calcNewKeyAndIV(newEncryptionLevel:)(v72, v22);
    v62 = v60 + *(v58 + 24);
    v63 = v81;
    v51 = _s15SwiftTLSLibrary18TLSRecordProtectorV20checkKeyAndIVLengths3key2ivy9CryptoKit09SymmetricF0V_Says5UInt8VGtAA8TLSErrorOYKF(v47, v61);
    if (!v63)
    {
      v35 = 0;
      outlined destroy of EncryptionLevel(v22, type metadata accessor for EncryptionLevel);
      outlined destroy of P256.Signing.PrivateKey?(v62, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
      v66 = v78;
      v65 = v79;
      (*(v78 + 32))(v62, v47, v79);
      (*(v66 + 56))(v62, 0, 1, v65);
      v67 = type metadata accessor for TLSRecordProtector();
      v68 = *(v67 + 20);
      v69 = *(v62 + v68);

      *(v62 + v68) = v61;
      *(v62 + *(v67 + 32)) = 0;
      return v35;
    }

    goto LABEL_14;
  }

  outlined destroy of P256.Signing.PrivateKey?(v57, &_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);
  return v35;
}

uint64_t TLSRecordHandler.calcNewKeyAndIV(newEncryptionLevel:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EncryptionLevel(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SymmetricKey();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = v23 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = v23 - v17;
  outlined init with copy of TLSHandshakeStateMachine(a2, v7, type metadata accessor for EncryptionLevel);
  (*(v9 + 32))(v18, v7, v8);
  v19 = MEMORY[0x1E69E7CC0];
  _s9CryptoKit4HKDFV15SwiftTLSLibraryE11expandLabel6secret5label7context6lengthAA12SymmetricKeyVqd___SSqd_0_Sit10Foundation15ContiguousBytesRd__AlMRd_0_r0_lFZAA6SHA384V_AKSays5UInt8VGTt4g5(7955819, 0xE300000000000000, MEMORY[0x1E69E7CC0], 0x20uLL, v16);
  _s9CryptoKit4HKDFV15SwiftTLSLibraryE11expandLabel6secret5label7context6lengthAA12SymmetricKeyVqd___SSqd_0_Sit10Foundation15ContiguousBytesRd__AlMRd_0_r0_lFZAA6SHA384V_AKSays5UInt8VGTt4g5(30313, 0xE200000000000000, v19, 0xCuLL, v13);
  v20 = *(v9 + 8);
  v20(v18, v8);
  (*(v9 + 16))(a1, v16, v8);
  SymmetricKey.withUnsafeBytes<A>(_:)();
  v21 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCs5UInt8V_10Foundation4DataVTt0g5(v23[2], v23[3]);
  v20(v13, v8);
  v20(v16, v8);
  return v21;
}

uint64_t _s15SwiftTLSLibrary16TLSRecordHandlerV14parseOneRecord33_3A7BCC859838BE1761A4636F58F247A0LLAA0C0OSgyAA8TLSErrorOYKF()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v32 - v4;
  v6 = type metadata accessor for TLSRecordHandler();
  outlined init with copy of EncryptionLevel?(v0 + v6[8], v5);
  v7 = type metadata accessor for EncryptionLevel(0);
  v8 = (*(*(v7 - 8) + 48))(v5, 1, v7);
  outlined destroy of P256.Signing.PrivateKey?(v5, &_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);
  v9 = v6[5];
  if (v8 == 1)
  {
    result = _s15SwiftTLSLibrary15TLSRecordParserV20parsePlaintextRecordAA12TLSPlaintextVSgyAA8TLSErrorOYKF();
    if (!v1)
    {
      if (v11)
      {
        return result & 0xFFFFFF;
      }

      else
      {
        return 0;
      }
    }

    return result;
  }

  result = _s15SwiftTLSLibrary15TLSRecordParserV21parseCiphertextRecordAA13TLSCiphertextVSgyAA8TLSErrorOYKF();
  if (v1)
  {
    v14 = v12;
    v15 = *(v0 + v6[9]);
    v16 = result;
    v34 = v13;
    if (v15)
    {
LABEL_8:
      v32[1] = result;
      v32[2] = v14;
      v33 = v13;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      return v16;
    }

    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    v18 = __swift_project_value_buffer(v17, logger);
    v19 = v34;
    outlined copy of TLSError(v16, v14, v34);
    v32[0] = v18;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();
    outlined consume of TLSError(v16, v14, v19);
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_allocError();
      *v24 = v16;
      *(v24 + 8) = v14;
      v25 = v34;
      *(v24 + 16) = v34;
      outlined copy of TLSError(v16, v14, v25);
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 4) = v26;
      *v23 = v26;
      _os_log_impl(&dword_1B25F5000, v20, v21, "error parsing first potential ciphertext record: %@. checking for plaintext alert.", v22, 0xCu);
      outlined destroy of P256.Signing.PrivateKey?(v23, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1B274ECF0](v23, -1, -1);
      MEMORY[0x1B274ECF0](v22, -1, -1);
    }

    v28 = _s15SwiftTLSLibrary15TLSRecordParserV20parsePlaintextRecordAA12TLSPlaintextVSgyAA8TLSErrorOYKF();
    if (!v27)
    {
      outlined consume of TLSError(v16, v14, v34);
      return 0;
    }

    if (v28 != 21)
    {

      LOBYTE(v13) = v34;
      result = v16;
      goto LABEL_8;
    }

    outlined consume of TLSError(v16, v14, v34);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_1B25F5000, v29, v30, "Received plaintext alert record", v31, 2u);
      MEMORY[0x1B274ECF0](v31, -1, -1);
    }

    return *&v28 & 0xFFFF15;
  }

  else if (result)
  {
    *(v0 + v6[9]) = 1;
  }

  return result;
}

uint64_t _s15SwiftTLSLibrary16TLSRecordHandlerV21processHandshakeInput33_3A7BCC859838BE1761A4636F58F247A0LLyySays5UInt8VGzAA8TLSErrorOYKF(uint64_t *a1)
{
  v3 = v2;
  v4 = v1;
  v6 = type metadata accessor for ServerHandshakeStateMachine(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v58 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for HandshakeStateMachine(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v57 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for TLSHandshakeStateMachine(0);
  v12 = *(*(v74 - 8) + 64);
  MEMORY[0x1EEE9AC00](v74);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary22PartialHandshakeResultVSgMd, &_s15SwiftTLSLibrary22PartialHandshakeResultVSgMR);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v56 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v63 = &v54 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v54 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v54 - v24;
  v26 = type metadata accessor for PartialHandshakeResult(0);
  v62 = *(v26 - 8);
  v27 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v29 = (&v54 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = *a1;

  v64 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSayAEG_Tt0g5Tf4g_n(v31);
  v33 = v32;

  v34 = 0;
  v35 = v33 >> 62;
  if ((v33 >> 62) > 1)
  {
    v36 = v64;
    if (v35 == 2)
    {
      v34 = *(v64 + 16);
    }
  }

  else
  {
    v36 = v64;
    if (v35)
    {
      v34 = v64;
    }
  }

  v71 = v36;
  v72 = v33;
  v73 = v34;
  TLSRecordHandler.addIncomingHandshakeBytes(_:)(&v71);
  v37 = type metadata accessor for TLSRecordHandler();
  v64 = v4 + *(v37 + 56);
  v59 = v4 + 2;
  v60 = v37;
  v38 = (v62 + 56);
  v61 = (v62 + 56);
  v62 += 48;
  v55 = v29;
  while (1)
  {
    if (*(v64 + 2) == 1)
    {
      (*v38)(v23, 1, 1, v26);
      goto LABEL_11;
    }

    v39 = *v38;
    if ((*(v59 + *(v60 + 52)) & 1) == 0)
    {
      break;
    }

    v39(v23, 1, 1, v26);
LABEL_11:
    outlined init with copy of TLSHandshakeStateMachine(v4, v14, type metadata accessor for TLSHandshakeStateMachine);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v40 = v23;
      v41 = v58;
      _s15SwiftTLSLibrary27ServerHandshakeStateMachineVWObTm_0(v14, v58, type metadata accessor for ServerHandshakeStateMachine);
      v42 = v56;
      _s15SwiftTLSLibrary27ServerHandshakeStateMachineV07processD0AA07PartialD6ResultVSgyAA8TLSErrorOYKF(&v68, v56);
      if (v3)
      {
        v52 = v68;
        v51 = v69;
        v53 = v70;
        outlined destroy of EncryptionLevel(v4, type metadata accessor for TLSHandshakeStateMachine);
        outlined init with copy of TLSHandshakeStateMachine(v41, v4, type metadata accessor for ServerHandshakeStateMachine);
        swift_storeEnumTagMultiPayload();
        v45 = v52;
        v65 = v52;
        v66 = v51;
        v67 = v53;
        lazy protocol witness table accessor for type TLSError and conformance TLSError();
        swift_willThrowTypedImpl();
        outlined destroy of EncryptionLevel(v41, type metadata accessor for ServerHandshakeStateMachine);
        v50 = v40;
        goto LABEL_25;
      }

      v3 = 0;
      outlined destroy of P256.Signing.PrivateKey?(v23, &_s15SwiftTLSLibrary22PartialHandshakeResultVSgMd, &_s15SwiftTLSLibrary22PartialHandshakeResultVSgMR);
      outlined init with take of PartialHandshakeResult?(v42, v23);
      outlined destroy of EncryptionLevel(v4, type metadata accessor for TLSHandshakeStateMachine);
      _s15SwiftTLSLibrary27ServerHandshakeStateMachineVWObTm_0(v41, v4, type metadata accessor for ServerHandshakeStateMachine);
      swift_storeEnumTagMultiPayload();
      v29 = v55;
    }

    else
    {
      v43 = v57;
      _s15SwiftTLSLibrary27ServerHandshakeStateMachineVWObTm_0(v14, v57, type metadata accessor for HandshakeStateMachine);
      _s15SwiftTLSLibrary21HandshakeStateMachineV07processC0AA07PartialC6ResultVSgyAA8TLSErrorOYKF(&v68, v63);
      if (v3)
      {
        v48 = v68;
        v47 = v69;
        v49 = v70;
        outlined destroy of EncryptionLevel(v4, type metadata accessor for TLSHandshakeStateMachine);
        outlined init with copy of TLSHandshakeStateMachine(v43, v4, type metadata accessor for HandshakeStateMachine);
        swift_storeEnumTagMultiPayload();
        v45 = v48;
        v65 = v48;
        v66 = v47;
        v67 = v49;
        lazy protocol witness table accessor for type TLSError and conformance TLSError();
        swift_willThrowTypedImpl();
        outlined destroy of EncryptionLevel(v43, type metadata accessor for HandshakeStateMachine);
        v50 = v23;
LABEL_25:
        outlined destroy of P256.Signing.PrivateKey?(v50, &_s15SwiftTLSLibrary22PartialHandshakeResultVSgMd, &_s15SwiftTLSLibrary22PartialHandshakeResultVSgMR);
        goto LABEL_26;
      }

      v3 = 0;
      outlined destroy of P256.Signing.PrivateKey?(v23, &_s15SwiftTLSLibrary22PartialHandshakeResultVSgMd, &_s15SwiftTLSLibrary22PartialHandshakeResultVSgMR);
      outlined init with take of PartialHandshakeResult?(v63, v23);
      outlined destroy of EncryptionLevel(v4, type metadata accessor for TLSHandshakeStateMachine);
      _s15SwiftTLSLibrary27ServerHandshakeStateMachineVWObTm_0(v43, v4, type metadata accessor for HandshakeStateMachine);
      swift_storeEnumTagMultiPayload();
    }

    outlined init with take of PartialHandshakeResult?(v23, v25);
    if ((*v62)(v25, 1, v26) == 1)
    {
      goto LABEL_19;
    }

    _s15SwiftTLSLibrary27ServerHandshakeStateMachineVWObTm_0(v25, v29, type metadata accessor for PartialHandshakeResult);
    _s15SwiftTLSLibrary16TLSRecordHandlerV29processPartialHandshakeResult33_3A7BCC859838BE1761A4636F58F247A007partialgH0yAA0fgH0V_tAA8TLSErrorOYKF(v29);
    v3 = 0;
    outlined destroy of EncryptionLevel(v29, type metadata accessor for PartialHandshakeResult);
    v38 = v61;
  }

  v39(v25, 1, 1, v26);
LABEL_19:
  outlined destroy of P256.Signing.PrivateKey?(v25, &_s15SwiftTLSLibrary22PartialHandshakeResultVSgMd, &_s15SwiftTLSLibrary22PartialHandshakeResultVSgMR);
  if (!TLSRecordHandler.handshakeComplete.getter())
  {
    return outlined consume of Data._Representation(v71, v72);
  }

  v44 = _s15SwiftTLSLibrary16TLSRecordHandlerV19sendApplicationData33_3A7BCC859838BE1761A4636F58F247A0LLyyAA8TLSErrorOYKF();
  if (!v3)
  {
    return outlined consume of Data._Representation(v71, v72);
  }

  v45 = v44;
LABEL_26:
  outlined consume of Data._Representation(v71, v72);
  return v45;
}

uint64_t _s15SwiftTLSLibrary16TLSRecordHandlerV19sendApplicationData33_3A7BCC859838BE1761A4636F58F247A0LLyyAA8TLSErrorOYKF()
{
  v3 = v0;
  v50 = type metadata accessor for Data.Iterator();
  v4 = *(v50 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v49 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for TLSRecordHandler();
  if (*(v0 + *(result + 56) + 2) != 1)
  {
    return v2;
  }

  v8 = result;
  v9 = (v0 + *(result + 40));
  v10 = v9[1];
  v11 = (v10 >> 62);
  v46 = *v9;
  v45 = v46 >> 32;
  v47 = (v4 + 8);
  v48 = BYTE6(v10);
  v51 = v10 >> 62;
  v52 = v1;
  while (1)
  {
    v12 = v9[2];
    if (v11 > 1)
    {
      v13 = v11 == 2 ? *(v46 + 24) : 0;
    }

    else
    {
      v13 = v48;
      if (v11)
      {
        v13 = v45;
      }
    }

    v14 = __OFSUB__(v13, v12);
    v15 = v13 - v12;
    if (v14)
    {
      break;
    }

    result = *v9;
    v16 = v9[1];
    if (v15 < 1)
    {
      outlined consume of Data._Representation(result, v16);
      *v9 = xmmword_1B26C6130;
      v9[2] = 0;
      return v2;
    }

    v17 = v16 >> 62;
    if ((v16 >> 62) > 1)
    {
      if (v17 == 2)
      {
        v18 = *(result + 24);
      }

      else
      {
        v18 = 0;
      }
    }

    else if (v17)
    {
      v18 = result >> 32;
    }

    else
    {
      v18 = BYTE6(v16);
    }

    v14 = __OFSUB__(v18, v12);
    v19 = v18 - v12;
    if (v14)
    {
      goto LABEL_52;
    }

    if (v19 >= 0x4000)
    {
      v20 = 0x4000;
    }

    else
    {
      v20 = v19;
    }

    result = ByteBuffer.readSlice(length:)(v20);
    if (v21 >> 60 == 15)
    {
      v2 = 0xD000000000000046;
      v53 = 0xD000000000000046;
      v54 = 0x80000001B26CE460;
      v55 = 1;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      return v2;
    }

    v23 = result;
    v24 = v21;
    v25 = v21 >> 62;
    if ((v21 >> 62) > 1)
    {
      if (v25 == 2)
      {
        v26 = *(result + 24);
      }

      else
      {
        v26 = 0;
      }
    }

    else if (v25)
    {
      v26 = result >> 32;
    }

    else
    {
      v26 = BYTE6(v21);
    }

    if (v26 < v22)
    {
      goto LABEL_53;
    }

    v56 = Data._Representation.subscript.getter();
    v28 = v27;
    result = outlined consume of ByteBuffer?(v23, v24);
    v29 = v28 >> 62;
    if ((v28 >> 62) > 1)
    {
      v31 = v56;
      if (v29 != 2)
      {
        goto LABEL_44;
      }

      v33 = *(v56 + 16);
      v32 = *(v56 + 24);
      v30 = v32 - v33;
      if (__OFSUB__(v32, v33))
      {
        goto LABEL_56;
      }
    }

    else
    {
      if (!v29)
      {
        v30 = BYTE6(v28);
        v31 = v56;
        if (!BYTE6(v28))
        {
          goto LABEL_44;
        }

        goto LABEL_42;
      }

      v31 = v56;
      if (__OFSUB__(HIDWORD(v56), v56))
      {
        goto LABEL_55;
      }

      v30 = HIDWORD(v56) - v56;
    }

    outlined copy of Data._Representation(v31, v28);
    if (!v30)
    {
LABEL_44:
      outlined consume of Data._Representation(v31, v28);
      v34 = MEMORY[0x1E69E7CC0];
      goto LABEL_45;
    }

LABEL_42:
    v34 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v30, 0);
    v35 = v8;
    v36 = v49;
    v37 = Data._copyContents(initializing:)();
    v38 = v31;
    v39 = v37;
    outlined consume of Data._Representation(v38, v28);
    v40 = v36;
    v8 = v35;
    result = (*v47)(v40, v50);
    if (v39 != v30)
    {
      goto LABEL_54;
    }

LABEL_45:
    v11 = v9;
    v41 = v3 + *(v8 + 24);
    v42 = v52;
    v2 = _s15SwiftTLSLibrary18TLSRecordProtectorV7protect9plaintext17actualContentType13paddingLengthAA13TLSCiphertextVSays5UInt8VG_AA0hI0VSitAA8TLSErrorOYKF(v34, 23, 0);

    v52 = v42;
    if (v42)
    {
      outlined consume of Data._Representation(v56, v28);
      return v2;
    }

    v43 = v3 + *(v8 + 48);
    specialized ByteBuffer.writeRecord<A>(_:)(v2);
    outlined consume of Data._Representation(v56, v28);

    v9 = v11;
    LODWORD(v11) = v51;
  }

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
  return result;
}

uint64_t _s15SwiftTLSLibrary16TLSRecordHandlerV18addApplicationDatayyAA10ByteBufferVzAA8TLSErrorOYKF(uint64_t *a1)
{
  v4 = v1 + *(type metadata accessor for TLSRecordHandler() + 40);
  ByteBuffer.writeBuffer(_:)(a1);
  result = TLSRecordHandler.handshakeComplete.getter();
  if (result)
  {
    result = _s15SwiftTLSLibrary16TLSRecordHandlerV19sendApplicationData33_3A7BCC859838BE1761A4636F58F247A0LLyyAA8TLSErrorOYKF();
    if (!v2)
    {
      return 1;
    }
  }

  return result;
}

uint64_t TLSRecordHandler.alertRead.setter(int a1)
{
  result = type metadata accessor for TLSRecordHandler();
  v4 = v1 + *(result + 52);
  *v4 = a1;
  *(v4 + 2) = BYTE2(a1) & 1;
  return result;
}

uint64_t TLSRecordHandler.alertWrote.setter(int a1)
{
  result = type metadata accessor for TLSRecordHandler();
  v4 = v1 + *(result + 56);
  *v4 = a1;
  *(v4 + 2) = BYTE2(a1) & 1;
  return result;
}

uint64_t TLSRecordHandler.closureAlertRead.setter(char a1)
{
  result = type metadata accessor for TLSRecordHandler();
  *(v1 + *(result + 60)) = a1;
  return result;
}

uint64_t TLSRecordHandler.tlsError.getter()
{
  v1 = v0 + *(type metadata accessor for TLSRecordHandler() + 64);
  v2 = *v1;
  outlined copy of TLSError?(*v1, *(v1 + 8), *(v1 + 16));
  return v2;
}

uint64_t TLSRecordHandler.tlsError.setter(uint64_t a1, uint64_t a2, char a3)
{
  v7 = v3 + *(type metadata accessor for TLSRecordHandler() + 64);
  result = outlined consume of TLSError?(*v7, *(v7 + 8), *(v7 + 16));
  *v7 = a1;
  *(v7 + 8) = a2;
  *(v7 + 16) = a3;
  return result;
}

uint64_t TLSRecordHandler.alertSentOrReceived.getter()
{
  v1 = type metadata accessor for TLSRecordHandler();
  if (*(v0 + *(v1 + 52) + 2) == 1)
  {
    v2 = *(v0 + *(v1 + 56) + 2) ^ 1;
  }

  else
  {
    v2 = 1;
  }

  return v2 & 1;
}

unint64_t _s15SwiftTLSLibrary16TLSRecordHandlerV9sendAlert33_3A7BCC859838BE1761A4636F58F247A0LLyyAA0F0VAA8TLSErrorOYKF(__int16 a1)
{
  v3 = v1;
  v76 = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v63 - v10;
  v12 = type metadata accessor for TLSRecordHandler();
  v13 = v1 + *(v12 + 56);
  if (*(v13 + 2) == 1)
  {
    *v13 = a1;
    *(v13 + 2) = 0;
    v65 = v2;
    v66 = v12;
    if (a1 != 1 || HIBYTE(a1))
    {
      v64 = v1;
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      __swift_project_value_buffer(v20, logger);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v70 = v24;
        *v23 = 136315138;
        v25 = Alert.description.getter(a1);
        v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v70);

        *(v23 + 4) = v27;
        _os_log_impl(&dword_1B25F5000, v21, v22, "write alert %s", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v24);
        MEMORY[0x1B274ECF0](v24, -1, -1);
        MEMORY[0x1B274ECF0](v23, -1, -1);
      }

      v3 = v64;
    }

    else
    {
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      __swift_project_value_buffer(v14, logger);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = v3;
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_1B25F5000, v15, v16, "write alert close notify", v18, 2u);
        v19 = v18;
        v3 = v17;
        MEMORY[0x1B274ECF0](v19, -1, -1);
      }
    }

    v74 = xmmword_1B26C6130;
    v75 = 0;
    LOBYTE(v67) = a1;
    v28 = MEMORY[0x1E69E6290];
    v29 = MEMORY[0x1E6969DF8];
    v72 = MEMORY[0x1E69E6290];
    v73 = MEMORY[0x1E6969DF8];
    v70 = &v67;
    v71 = &v67 + 1;
    v30 = __swift_project_boxed_opaque_existential_0(&v70, MEMORY[0x1E69E6290]);
    v32 = *v30;
    v31 = v30[1];
    Data._Representation.append(contentsOf:)();
    __swift_destroy_boxed_opaque_existential_0(&v70);
    LOBYTE(v67) = HIBYTE(a1);
    v72 = v28;
    v73 = v29;
    v70 = &v67;
    v71 = &v67 + 1;
    v33 = __swift_project_boxed_opaque_existential_0(&v70, v28);
    v35 = *v33;
    v34 = v33[1];
    Data._Representation.append(contentsOf:)();
    __swift_destroy_boxed_opaque_existential_0(&v70);
    v36 = v66;
    v37 = *(v66 + 28);
    outlined init with copy of EncryptionLevel?(v3 + v37, v11);
    v38 = type metadata accessor for EncryptionLevel(0);
    v39 = *(*(v38 - 8) + 48);
    LODWORD(v28) = v39(v11, 1, v38);
    outlined destroy of P256.Signing.PrivateKey?(v11, &_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);
    v40 = v28 == 1;
    v41 = v65;
    if (!v40)
    {
      outlined init with copy of EncryptionLevel?(v3 + v37, v9);
      v45 = v39(v9, 1, v38);
      if (v45 == 1)
      {
        outlined destroy of P256.Signing.PrivateKey?(v9, &_s15SwiftTLSLibrary15EncryptionLevelOSgMd, &_s15SwiftTLSLibrary15EncryptionLevelOSgMR);
        goto LABEL_25;
      }

      if (swift_getEnumCaseMultiPayload())
      {
        outlined destroy of EncryptionLevel(v9, type metadata accessor for EncryptionLevel);
LABEL_25:
        v43 = *(&v74 + 1);
        v42 = v74;
        v47 = *(&v74 + 1) >> 62;
        if ((*(&v74 + 1) >> 62) > 1)
        {
          if (v47 != 2)
          {
            goto LABEL_37;
          }

          v49 = *(v74 + 24);
        }

        else
        {
          if (!v47)
          {
            v48 = v3;
LABEL_38:
            v55 = Data._Representation.subscript.getter();
            v57 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCs5UInt8V_10Foundation4DataVTt0g5(v55, v56);
            v58 = v48 + *(v36 + 24);
            v1 = _s15SwiftTLSLibrary18TLSRecordProtectorV7protect9plaintext17actualContentType13paddingLengthAA13TLSCiphertextVSays5UInt8VG_AA0hI0VSitAA8TLSErrorOYKF(v57, 21, 0);
            if (v41)
            {
              outlined consume of Data._Representation(v42, v43);

              goto LABEL_42;
            }

            v68 = &type metadata for TLSCiphertext;
            v69 = &protocol witness table for TLSCiphertext;
            *&v67 = v1;
            outlined init with take of ContiguousBytes(&v67, &v70);
            v53 = v72;
            v54 = v73;
            v3 = v48;
LABEL_41:
            v59 = __swift_project_boxed_opaque_existential_0(&v70, v53);
            v1 = v3 + *(v66 + 48);
            ByteBuffer.writeRecord<A>(_:)(v59, v53, v54);
            outlined consume of Data._Representation(v42, v43);
            __swift_destroy_boxed_opaque_existential_0(&v70);
            goto LABEL_42;
          }

          v49 = v74 >> 32;
        }

        v48 = v3;
        if ((v49 & 0x8000000000000000) == 0)
        {
          goto LABEL_38;
        }

        __break(1u);
LABEL_37:
        v48 = v3;
        goto LABEL_38;
      }

      v62 = type metadata accessor for SymmetricKey();
      (*(*(v62 - 8) + 8))(v9, v62);
    }

    v43 = *(&v74 + 1);
    v42 = v74;
    v44 = *(&v74 + 1) >> 62;
    if ((*(&v74 + 1) >> 62) > 1)
    {
      if (v44 != 2)
      {
LABEL_33:
        v50 = Data._Representation.subscript.getter();
        v52 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCs5UInt8V_10Foundation4DataVTt0g5(v50, v51);
        v53 = &type metadata for TLSPlaintext;
        v54 = &protocol witness table for TLSPlaintext;
        v72 = &type metadata for TLSPlaintext;
        v73 = &protocol witness table for TLSPlaintext;
        LOWORD(v70) = 789;
        BYTE2(v70) = 3;
        v71 = v52;
        goto LABEL_41;
      }

      v46 = *(v74 + 24);
    }

    else
    {
      if (!v44)
      {
        goto LABEL_33;
      }

      v46 = v74 >> 32;
    }

    if (v46 < 0)
    {
      __break(1u);
    }

    goto LABEL_33;
  }

LABEL_42:
  v60 = *MEMORY[0x1E69E9840];
  return v1;
}

NSObject *_s15SwiftTLSLibrary16TLSRecordHandlerV9readAlert33_3A7BCC859838BE1761A4636F58F247A0LLyySays5UInt8VGAA8TLSErrorOYKF()
{
  v2 = v0;

  v4 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSayAEG_Tt0g5Tf4g_n(v3);
  v6 = v5;

  v7 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    v8 = 0;
    if (v7 == 2)
    {
      v8 = *(v4 + 16);
    }
  }

  else
  {
    v8 = v4;
    if (!v7)
    {
      v8 = 0;
    }
  }

  v30 = v4;
  v31 = v6;
  v32 = v8;
  v9 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs5UInt8V_Tt0g5();
  v10 = &v30;
  v11 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs5UInt8V_Tt0g5();
  if (((v9 | v11) & 0x100) != 0)
  {
    goto LABEL_22;
  }

  if (v9 != 1 || v11)
  {
    v19 = v11;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, logger);
    v10 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v33 = v23;
      *v22 = 136315138;
      v24 = v9 | (v19 << 8);
      v25 = Alert.description.getter(v24);
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v33);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_1B25F5000, v10, v21, "read alert %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x1B274ECF0](v23, -1, -1);
      MEMORY[0x1B274ECF0](v22, -1, -1);
    }

    else
    {

      v24 = v9 | (v19 << 8);
    }

    v28 = v2 + *(type metadata accessor for TLSRecordHandler() + 52);
    *v28 = v24;
    v28[2] = 0;
    goto LABEL_22;
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, logger);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1B25F5000, v13, v14, "read alert close notify", v15, 2u);
    MEMORY[0x1B274ECF0](v15, -1, -1);
  }

  v16 = type metadata accessor for TLSRecordHandler();
  v17 = v2 + *(v16 + 52);
  *v17 = 1;
  v17[2] = 0;
  *(&v2->isa + *(v16 + 60)) = 1;
  v10 = v2;
  v18 = _s15SwiftTLSLibrary16TLSRecordHandlerV9sendAlert33_3A7BCC859838BE1761A4636F58F247A0LLyyAA0F0VAA8TLSErrorOYKF(1);
  if (!v1)
  {
LABEL_22:
    outlined consume of Data._Representation(v30, v31);
    return v10;
  }

  v10 = v18;
  outlined consume of Data._Representation(v30, v31);
  return v10;
}

uint64_t TLSRecordHandler.tlsErrorToAlert(error:)(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    if (a3 == 1)
    {
      v3 = 80;
    }

    else
    {
      v3 = byte_1B26CBF2A[a1];
    }
  }

  else
  {
    v3 = 50;
  }

  return (v3 << 8) | 2u;
}

uint64_t _s15SwiftTLSLibrary16TLSRecordHandlerV18processNetworkData07networkG2InyAA10ByteBufferVz_tAA8TLSErrorOYKF(uint64_t *a1)
{
  v4 = v1;
  v6 = type metadata accessor for TLSHandshakeStateMachine(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TLSRecordHandler();
  if (*(v4 + v10[13] + 2) == 1 && (*(v4 + v10[14] + 2) & 1) != 0)
  {
    v50[2] = v6;
    v51 = v10;
    v11 = *a1;
    v3 = a1[1];
    v54 = a1[2];
    outlined copy of Data._Representation(v11, v3);
    v12 = _s15SwiftTLSLibrary16TLSRecordHandlerV18processNetworkData07networkG2InyAA10ByteBufferVz_tAA8TLSErrorOYKFyAGzAIYKXEfU_(a1, v4);
    if (v2)
    {
      v15 = v12;
      v16 = v13;
      v17 = v14;
      outlined consume of Data._Representation(*a1, a1[1]);
      *a1 = v11;
      a1[1] = v3;
      a1[2] = v54;
      *&v52 = v15;
      *(&v52 + 1) = v16;
      v53 = v17;
      v54 = lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      v18 = v16;
      v3 = v15;
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      v20 = __swift_project_value_buffer(v19, logger);
      outlined copy of TLSError(v15, v16, v17);
      v50[1] = v20;
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();
      outlined consume of TLSError(v15, v16, v17);
      v23 = v17;
      if (os_log_type_enabled(v21, v22))
      {
        v24 = v18;
        v25 = swift_slowAlloc();
        v50[0] = swift_slowAlloc();
        *v25 = 138412290;
        swift_allocError();
        *v26 = v15;
        *(v26 + 8) = v24;
        *(v26 + 16) = v23;
        outlined copy of TLSError(v15, v24, v23);
        v3 = v15;
        v27 = _swift_stdlib_bridgeErrorToNSError();
        *(v25 + 4) = v27;
        v28 = v50[0];
        *v50[0] = v27;
        _os_log_impl(&dword_1B25F5000, v21, v22, "error processing network data: %@", v25, 0xCu);
        outlined destroy of P256.Signing.PrivateKey?(v28, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1B274ECF0](v28, -1, -1);
        v29 = v25;
        v18 = v24;
        MEMORY[0x1B274ECF0](v29, -1, -1);
      }

      if (TLSRecordHandler.handshakeStarted.getter())
      {
        v30 = TLSRecordHandler.tlsErrorToAlert(error:)(v3, v18, v23);
        if (v30 > 0xFFu || v30 != 1)
        {
          v31 = v4 + v51[16];
          v32 = *v31;
          v33 = *(v31 + 8);
          v34 = v3;
          v35 = *(v31 + 16);
          v36 = v30;
          outlined copy of TLSError(v34, v18, v23);
          v37 = v35;
          v3 = v34;
          outlined consume of TLSError?(v32, v33, v37);
          v30 = v36;
          *v31 = v34;
          *(v31 + 8) = v18;
          *(v31 + 16) = v23;
        }

        _s15SwiftTLSLibrary16TLSRecordHandlerV9sendAlert33_3A7BCC859838BE1761A4636F58F247A0LLyyAA0F0VAA8TLSErrorOYKF(v30);
        *&v52 = v3;
        *(&v52 + 1) = v18;
        v53 = v23;
        swift_willThrowTypedImpl();
      }

      else
      {
        outlined consume of TLSError(v3, v18, v23);
        outlined init with copy of TLSHandshakeStateMachine(v4, v9, type metadata accessor for TLSHandshakeStateMachine);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        outlined destroy of EncryptionLevel(v9, type metadata accessor for TLSHandshakeStateMachine);
        if (EnumCaseMultiPayload == 1)
        {
          v42 = ", resumptionCount: ";
        }

        else
        {
          v42 = "alid Client Hello";
        }

        v43 = Logger.logObject.getter();
        v44 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v43, v44))
        {
          if (EnumCaseMultiPayload == 1)
          {
            v45 = 0xD000000000000041;
          }

          else
          {
            v45 = 0xD000000000000065;
          }

          v46 = swift_slowAlloc();
          v47 = swift_slowAlloc();
          *&v52 = v47;
          *v46 = 136315138;
          v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v42 | 0x8000000000000000, &v52);

          *(v46 + 4) = v48;
          _os_log_impl(&dword_1B25F5000, v43, v44, "TLS error occurred from processing network data before handshake started: %s", v46, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v47);
          MEMORY[0x1B274ECF0](v47, -1, -1);
          MEMORY[0x1B274ECF0](v46, -1, -1);
        }

        else
        {
        }

        v49 = v4 + v51[16];
        outlined consume of TLSError?(*v49, *(v49 + 8), *(v49 + 16));
        *v49 = xmmword_1B26CBED0;
        *(v49 + 16) = 2;
        v52 = xmmword_1B26CBED0;
        v53 = 2;
        swift_willThrowTypedImpl();
        return 37;
      }
    }

    else
    {
      outlined consume of Data._Representation(v11, v3);
    }
  }

  else
  {
    v38 = (v4 + v10[5]);
    v39 = v38[2];
    outlined consume of ByteBuffer?(*v38, v38[1]);
    *v38 = xmmword_1B26C5EF0;
    v38[2] = 0;
  }

  return v3;
}

uint64_t _s15SwiftTLSLibrary16TLSRecordHandlerV18processNetworkData07networkG2InyAA10ByteBufferVz_tAA8TLSErrorOYKFyAGzAIYKXEfU_(uint64_t *a1, uint64_t a2)
{
  v5 = v2;
  v95 = type metadata accessor for ServerHandshakeState(0);
  v8 = *(*(v95 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v95);
  v89 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v86 = &v83 - v11;
  v94 = type metadata accessor for ServerHandshakeStateMachine(0);
  v12 = *(*(v94 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v94);
  v15 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v85 = &v83 - v16;
  v93 = type metadata accessor for HandshakeState(0);
  v17 = *(*(v93 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v93);
  v88 = &v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v84 = &v83 - v20;
  v92 = type metadata accessor for HandshakeStateMachine(0);
  v21 = *(*(v92 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v92);
  v87 = &v83 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v83 = &v83 - v24;
  v98 = type metadata accessor for TLSHandshakeStateMachine(0);
  v25 = *(*(v98 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v98);
  v97 = &v83 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v90 = &v83 - v28;
  v29 = type metadata accessor for TLSRecordHandler();
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v96 = &v83 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v35 = &v83 - v34;
  v99 = v33;
  v36 = (a2 + *(v33 + 20));
  HandshakeMessageParser.appendBytes(_:)(a1);
  v37 = v36[1];
  if (v37 >> 60 == 15)
  {
    return v4;
  }

  v100 = v15;
  v91 = v35;
  while (1)
  {
    v38 = *v36;
    v39 = v37 >> 62;
    if ((v37 >> 62) > 1)
    {
      if (v39 == 2)
      {
        v40 = *(v38 + 24);
      }

      else
      {
        v40 = 0;
      }
    }

    else
    {
      v40 = BYTE6(v37);
      v41 = v38 >> 32;
      if (v39)
      {
        v40 = v41;
      }
    }

    v42 = v36[2];
    v43 = __OFSUB__(v40, v42);
    v44 = v40 - v42;
    if (v43)
    {
      __break(1u);
      goto LABEL_67;
    }

    if (v44 < 1)
    {
      return v4;
    }

    v45 = _s15SwiftTLSLibrary16TLSRecordHandlerV14parseOneRecord33_3A7BCC859838BE1761A4636F58F247A0LLAA0C0OSgyAA8TLSErrorOYKF();
    v4 = v45;
    v5 = v46;
    v3 = v47;
    if (v2 || v47 == -1)
    {
      return v4;
    }

    if (v47)
    {
      break;
    }

    if ((v45 - 21) >= 2u)
    {
      if (one-time initialization token for logger == -1)
      {
LABEL_41:
        v67 = type metadata accessor for Logger();
        __swift_project_value_buffer(v67, logger);
        outlined copy of TLSRecord();
        v68 = Logger.logObject.getter();
        v69 = static os_log_type_t.error.getter();
        outlined consume of TLSRecord?(v4, v5, v3);
        if (!os_log_type_enabled(v68, v69))
        {
          goto LABEL_64;
        }

        v70 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        *&v101 = v71;
        *v70 = 136315138;
        v72 = ContentType.description.getter(v4);
        v74 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v73, &v101);

        *(v70 + 4) = v74;
        _os_log_impl(&dword_1B25F5000, v68, v69, "got a plaintext record with type not handshake or alert: %s", v70, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v71);
        MEMORY[0x1B274ECF0](v71, -1, -1);
        goto LABEL_63;
      }

LABEL_67:
      swift_once();
      goto LABEL_41;
    }

    v103 = v46;
    if (v45 == 21)
    {
      v55 = v96;
      outlined init with copy of TLSHandshakeStateMachine(a2, v96, type metadata accessor for TLSRecordHandler);
      v56 = v97;
      outlined init with copy of TLSHandshakeStateMachine(v55, v97, type metadata accessor for TLSHandshakeStateMachine);
      outlined copy of TLSRecord();
      outlined destroy of EncryptionLevel(v55, type metadata accessor for TLSRecordHandler);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        _s15SwiftTLSLibrary27ServerHandshakeStateMachineVWObTm_0(v56, v15, type metadata accessor for ServerHandshakeStateMachine);
        v57 = v89;
        outlined init with copy of TLSHandshakeStateMachine(&v15[*(v94 + 24)], v89, type metadata accessor for ServerHandshakeState);
        if (swift_getEnumCaseMultiPayload())
        {
          outlined destroy of EncryptionLevel(v15, type metadata accessor for ServerHandshakeStateMachine);
          outlined destroy of EncryptionLevel(v57, type metadata accessor for ServerHandshakeState);
          v35 = v91;
        }

        else
        {
          v65 = v57;
          v66 = v100[24];
          outlined destroy of EncryptionLevel(v100, type metadata accessor for ServerHandshakeStateMachine);
          outlined destroy of EncryptionLevel(v65, type metadata accessor for ServerHandshakeState);
          v35 = v91;
          if ((v66 & 1) == 0)
          {
LABEL_43:
            outlined consume of TLSRecord?(v4, v5, v3);
            v101 = xmmword_1B26CBEE0;
            v102 = 2;
            lazy protocol witness table accessor for type TLSError and conformance TLSError();
            swift_willThrowTypedImpl();
            outlined consume of TLSRecord?(v4, v5, v3);
            return 36;
          }
        }
      }

      else
      {
        v58 = v56;
        v59 = v87;
        _s15SwiftTLSLibrary27ServerHandshakeStateMachineVWObTm_0(v58, v87, type metadata accessor for HandshakeStateMachine);
        v60 = v88;
        outlined init with copy of TLSHandshakeStateMachine(v59 + *(v92 + 24), v88, type metadata accessor for HandshakeState);
        outlined destroy of EncryptionLevel(v59, type metadata accessor for HandshakeStateMachine);
        LODWORD(v59) = swift_getEnumCaseMultiPayload();
        outlined destroy of EncryptionLevel(v60, type metadata accessor for HandshakeState);
        v35 = v91;
        if (!v59)
        {
          goto LABEL_43;
        }
      }

      _s15SwiftTLSLibrary16TLSRecordHandlerV9readAlert33_3A7BCC859838BE1761A4636F58F247A0LLyySays5UInt8VGAA8TLSErrorOYKF();
    }

    else
    {
      outlined copy of TLSRecord();
      _s15SwiftTLSLibrary16TLSRecordHandlerV21processHandshakeInput33_3A7BCC859838BE1761A4636F58F247A0LLyySays5UInt8VGzAA8TLSErrorOYKF(&v103);
    }

    outlined consume of TLSRecord?(v4, v5, v3);
    outlined consume of TLSRecord?(v4, v5, v3);
LABEL_6:
    v37 = v36[1];
    v2 = 0;
    v15 = v100;
    if (v37 >> 60 == 15)
    {
      return v4;
    }
  }

  v48 = a2 + *(v99 + 24);
  v50 = _s15SwiftTLSLibrary18TLSRecordProtectorV9deprotect10ciphertextAA17DeprotectedRecordVAA13TLSCiphertextV_tAA8TLSErrorOYKF(v45);
  v103 = v50;
  if (v49 == 21)
  {
    _s15SwiftTLSLibrary16TLSRecordHandlerV9readAlert33_3A7BCC859838BE1761A4636F58F247A0LLyySays5UInt8VGAA8TLSErrorOYKF();
    goto LABEL_37;
  }

  if (v49 == 22)
  {
    _s15SwiftTLSLibrary16TLSRecordHandlerV21processHandshakeInput33_3A7BCC859838BE1761A4636F58F247A0LLyySays5UInt8VGzAA8TLSErrorOYKF(&v103);
    goto LABEL_37;
  }

  if (v49 != 23)
  {
    v75 = v49;

    if (v75)
    {
      if (v75 == 20)
      {
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v76 = type metadata accessor for Logger();
        __swift_project_value_buffer(v76, logger);
        v68 = Logger.logObject.getter();
        v77 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v68, v77))
        {
          v70 = swift_slowAlloc();
          *v70 = 0;
          v78 = "got an encrypted change cipher spec message";
          goto LABEL_62;
        }

        goto LABEL_64;
      }

      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v81 = type metadata accessor for Logger();
      __swift_project_value_buffer(v81, logger);
      v68 = Logger.logObject.getter();
      v77 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v68, v77))
      {
        goto LABEL_64;
      }

      v70 = swift_slowAlloc();
      *v70 = 0;
      v78 = "got an encrypted record with an unrecognized content type";
    }

    else
    {
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v80 = type metadata accessor for Logger();
      __swift_project_value_buffer(v80, logger);
      v68 = Logger.logObject.getter();
      v77 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v68, v77))
      {
        goto LABEL_64;
      }

      v70 = swift_slowAlloc();
      *v70 = 0;
      v78 = "got an encrypted record with an invalid content type";
    }

LABEL_62:
    _os_log_impl(&dword_1B25F5000, v68, v77, v78, v70, 2u);
LABEL_63:
    MEMORY[0x1B274ECF0](v70, -1, -1);
    goto LABEL_64;
  }

  outlined init with copy of TLSHandshakeStateMachine(a2, v35, type metadata accessor for TLSRecordHandler);
  v51 = v90;
  outlined init with copy of TLSHandshakeStateMachine(v35, v90, type metadata accessor for TLSHandshakeStateMachine);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v52 = v51;
    v53 = v85;
    _s15SwiftTLSLibrary27ServerHandshakeStateMachineVWObTm_0(v52, v85, type metadata accessor for ServerHandshakeStateMachine);
    v54 = v86;
    outlined init with copy of TLSHandshakeStateMachine(v53 + *(v94 + 24), v86, type metadata accessor for ServerHandshakeState);
    outlined destroy of EncryptionLevel(v53, type metadata accessor for ServerHandshakeStateMachine);
    LODWORD(v53) = swift_getEnumCaseMultiPayload();
    outlined destroy of EncryptionLevel(v54, type metadata accessor for ServerHandshakeState);
    v35 = v91;
    outlined destroy of EncryptionLevel(v91, type metadata accessor for TLSRecordHandler);
    if (v53 <= 6)
    {
      goto LABEL_50;
    }

LABEL_35:
    if (*(v50 + 16))
    {
      v64 = a2 + *(v99 + 44);
      Data._Representation.append(contentsOf:)();
    }

LABEL_37:
    outlined consume of TLSRecord?(v4, v5, v3);

    goto LABEL_6;
  }

  v61 = v51;
  v62 = v83;
  _s15SwiftTLSLibrary27ServerHandshakeStateMachineVWObTm_0(v61, v83, type metadata accessor for HandshakeStateMachine);
  v63 = v84;
  outlined init with copy of TLSHandshakeStateMachine(v62 + *(v92 + 24), v84, type metadata accessor for HandshakeState);
  outlined destroy of EncryptionLevel(v62, type metadata accessor for HandshakeStateMachine);
  LODWORD(v62) = swift_getEnumCaseMultiPayload();
  outlined destroy of EncryptionLevel(v63, type metadata accessor for HandshakeState);
  v35 = v91;
  outlined destroy of EncryptionLevel(v91, type metadata accessor for TLSRecordHandler);
  if (v62 >= 6)
  {
    goto LABEL_35;
  }

LABEL_50:

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v79 = type metadata accessor for Logger();
  __swift_project_value_buffer(v79, logger);
  v68 = Logger.logObject.getter();
  v77 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v68, v77))
  {
    v70 = swift_slowAlloc();
    *v70 = 0;
    v78 = "got application data before handshake complete";
    goto LABEL_62;
  }

LABEL_64:

  v101 = xmmword_1B26C6430;
  v102 = 2;
  lazy protocol witness table accessor for type TLSError and conformance TLSError();
  swift_willThrowTypedImpl();
  outlined consume of TLSRecord?(v4, v5, v3);
  return 4;
}

uint64_t specialized Collection._copyToContiguousArray()(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Data.Iterator();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x1EEE9AC00](v4);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v10 != 2)
    {
LABEL_12:
      outlined consume of Data._Representation(a1, a2);
      return MEMORY[0x1E69E7CC0];
    }

    v13 = *(a1 + 16);
    v12 = *(a1 + 24);
    v11 = v12 - v13;
    if (!__OFSUB__(v12, v13))
    {
      if (v11)
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
    if (v10)
    {
      goto LABEL_10;
    }

    v11 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      v14 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v11, 0);
      v15 = Data._copyContents(initializing:)();
      outlined consume of Data._Representation(a1, a2);
      v16 = *(v5 + 8);
      v5 += 8;
      v16(v9, v4);
      result = v14;
      if (v15 == v11)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v17 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v11 = v17;
      if (!v17)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

unint64_t specialized Data.InlineData.init(count:)(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result <= 0xFF)
  {
    return 0;
  }

  __break(1u);
  return result;
}

void type metadata completion function for TLSRecordHandler()
{
  type metadata accessor for TLSHandshakeStateMachine(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for TLSRecordProtector();
    if (v1 <= 0x3F)
    {
      type metadata accessor for EncryptionLevel?();
      if (v2 <= 0x3F)
      {
        type metadata accessor for PAKEServerRecords?(319, &lazy cache variable for type metadata for Alert?);
        if (v3 <= 0x3F)
        {
          type metadata accessor for PAKEServerRecords?(319, &lazy cache variable for type metadata for TLSError?);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata accessor for EncryptionLevel?()
{
  if (!lazy cache variable for type metadata for EncryptionLevel?)
  {
    type metadata accessor for EncryptionLevel(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EncryptionLevel?);
    }
  }
}

uint64_t outlined destroy of EncryptionLevel(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of PartialHandshakeResult?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SwiftTLSLibrary22PartialHandshakeResultVSgMd, &_s15SwiftTLSLibrary22PartialHandshakeResultVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _s15SwiftTLSLibrary27ServerHandshakeStateMachineVWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of TLSHandshakeStateMachine(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t static Extension.ApplicationLayerProtocolNegotiation.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a3 & 1) == 0)
  {
    if ((a6 & 1) == 0)
    {
      return _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(a1, a4);
    }

    return 0;
  }

  if ((a6 & 1) == 0)
  {
    return 0;
  }

  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t Extension.ApplicationLayerProtocolNegotiation.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    MEMORY[0x1B274DB20](1);

    return String.hash(into:)();
  }

  else
  {
    MEMORY[0x1B274DB20](0);
    v6 = *(a2 + 16);
    result = MEMORY[0x1B274DB20](v6);
    if (v6)
    {
      v7 = (a2 + 40);
      do
      {
        v8 = *(v7 - 1);
        v9 = *v7;

        String.hash(into:)();

        v7 += 2;
        --v6;
      }

      while (v6);
    }
  }

  return result;
}

Swift::Int Extension.ApplicationLayerProtocolNegotiation.hashValue.getter(uint64_t a1, uint64_t a2, char a3)
{
  Hasher.init(_seed:)();
  if (a3)
  {
    MEMORY[0x1B274DB20](1);
    String.hash(into:)();
  }

  else
  {
    MEMORY[0x1B274DB20](0);
    v5 = *(a1 + 16);
    MEMORY[0x1B274DB20](v5);
    if (v5)
    {
      v6 = (a1 + 40);
      do
      {
        v7 = *(v6 - 1);
        v8 = *v6;

        String.hash(into:)();

        v6 += 2;
        --v5;
      }

      while (v5);
    }
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Extension.ApplicationLayerProtocolNegotiation()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  Extension.ApplicationLayerProtocolNegotiation.hash(into:)(v5, v1, v2, v3);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Extension.ApplicationLayerProtocolNegotiation(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 16);
  if ((*(a1 + 16) & 1) == 0)
  {
    if ((*(a2 + 16) & 1) == 0)
    {
      return _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v3, *a2);
    }

    return 0;
  }

  if ((*(a2 + 16) & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 8);
  if (v3 == *a2 && v5 == *(a2 + 8))
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

unint64_t lazy protocol witness table accessor for type Extension.ApplicationLayerProtocolNegotiation and conformance Extension.ApplicationLayerProtocolNegotiation()
{
  result = lazy protocol witness table cache variable for type Extension.ApplicationLayerProtocolNegotiation and conformance Extension.ApplicationLayerProtocolNegotiation;
  if (!lazy protocol witness table cache variable for type Extension.ApplicationLayerProtocolNegotiation and conformance Extension.ApplicationLayerProtocolNegotiation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Extension.ApplicationLayerProtocolNegotiation and conformance Extension.ApplicationLayerProtocolNegotiation);
  }

  return result;
}

uint64_t specialized closure #3 in Data.append<A>(contentsOf:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result)
  {
    goto LABEL_6;
  }

  if (__OFSUB__(a2 - result, a3))
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = _StringGuts.copyUTF8(into:)();
  if ((v3 & 1) == 0)
  {

    return 0;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t partial apply for specialized closure #3 in Data.append<A>(contentsOf:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(v3 + 32);
  v7 = *v6;
  v8 = v6[1];
  result = specialized closure #3 in Data.append<A>(contentsOf:)(a1, a2, *(v3 + 16));
  if (!v4)
  {
    *a3 = result;
    a3[1] = v10;
    a3[2] = v11;
    a3[3] = v12;
  }

  return result;
}

uint64_t static HashFunction.zeroHash.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of HashFunction.init()();
  dispatch thunk of HashFunction.finalize()();
  return (*(v2 + 8))(v5, a1);
}

uint64_t partial apply for closure #1 in static HMAC.authenticationCode<A>(bytes:using:)()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = v0[6];
  lazy protocol witness table accessor for type UnsafeRawBufferPointer and conformance UnsafeRawBufferPointer();
  return static HMAC.authenticationCode<A>(for:using:)();
}

uint64_t static Extension.ServerName.__derived_enum_equals(_:_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  if (a2 >> 60 == 15)
  {
    return a5 >> 60 == 15;
  }

  if (a5 >> 60 == 15)
  {
    return 0;
  }

  return specialized static ByteBuffer.== infix(_:_:)(a1, a2, a3, a4, a5, a6);
}

uint64_t Extension.ServerName.hash(into:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a3 >> 60 == 15)
  {
    return MEMORY[0x1B274DB20](1);
  }

  result = MEMORY[0x1B274DB20](0);
  v8 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    v9 = 0;
    if (v8 == 2)
    {
      v9 = *(a2 + 24);
    }
  }

  else if (v8)
  {
    v9 = a2 >> 32;
  }

  else
  {
    v9 = BYTE6(a3);
  }

  if (v9 < a4)
  {
    __break(1u);
  }

  else
  {
    v10 = Data._Representation.subscript.getter();
    v12 = v11;
    Data.hash(into:)();

    return outlined consume of Data._Representation(v10, v12);
  }

  return result;
}

uint64_t Extension.ServerName.hashValue.getter(uint64_t a1, unint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  if (a2 >> 60 == 15)
  {
    MEMORY[0x1B274DB20](1);
    return Hasher._finalize()();
  }

  result = MEMORY[0x1B274DB20](0);
  v7 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v8 = 0;
    if (v7 == 2)
    {
      v8 = *(a1 + 24);
    }
  }

  else if (v7)
  {
    v8 = a1 >> 32;
  }

  else
  {
    v8 = BYTE6(a2);
  }

  if (v8 >= a3)
  {
    v9 = Data._Representation.subscript.getter();
    v11 = v10;
    Data.hash(into:)();
    outlined consume of Data._Representation(v9, v11);
    return Hasher._finalize()();
  }

  __break(1u);
  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Extension.ServerName()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  Extension.ServerName.hash(into:)(v5, v1, v2, v3);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Extension.ServerName(uint64_t *a1, uint64_t *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  v5 = v4 >> 60 == 15 && v3 >> 60 == 15;
  if (v3 >> 60 == 15 || v4 >> 60 == 15)
  {
    return v5;
  }

  else
  {
    return specialized static ByteBuffer.== infix(_:_:)(*a1, v3, a1[2], *a2, v4, a2[2]);
  }
}

uint64_t _s15SwiftTLSLibrary10ByteBufferV14readServerName11messageTypeAA9ExtensionO0fG0OAA09HandshakeI0V_tAA8TLSErrorOYKFA2CzAMYKXEfU_@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = 0;
  v5 = 0;
  v49 = *MEMORY[0x1E69E9840];
  v6 = 0xF000000000000000;
  while (1)
  {
    v46 = v6;
    v45 = v4;
    result = *a1;
    v8 = a1[1];
    v9 = a1[2];
    v10 = v8 >> 62;
    if ((v8 >> 62) > 1)
    {
      if (v10 == 2)
      {
        v11 = *(result + 24);
      }

      else
      {
        v11 = 0;
      }
    }

    else if (v10)
    {
      v11 = result >> 32;
    }

    else
    {
      v11 = BYTE6(v8);
    }

    v12 = __OFSUB__(v11, v9);
    v13 = v11 - v9;
    if (v12)
    {
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
      __break(1u);
      __break(1u);
      __break(1u);
      __break(1u);
      __break(1u);
      __break(1u);
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
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
    }

    if (v13 < 1)
    {
      if (v6 >> 60 != 15)
      {
        *a3 = v4;
        a3[1] = v6;
        a3[2] = v5;
        goto LABEL_92;
      }

      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      result = swift_willThrowTypedImpl();
      goto LABEL_86;
    }

    v14 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      goto LABEL_94;
    }

    if (v10 > 1)
    {
      if (v10 == 2)
      {
        if (*(result + 24) < v14)
        {
          goto LABEL_90;
        }
      }

      else if (v14 > 0)
      {
        goto LABEL_90;
      }
    }

    else if (v10)
    {
      if (result >> 32 < v14)
      {
        goto LABEL_90;
      }
    }

    else if (BYTE6(v8) < v14)
    {
      goto LABEL_90;
    }

    v47 = *a1;
    v48 = a1[1];
    if (v14 < v9)
    {
      goto LABEL_95;
    }

    outlined copy of Data._Representation(result, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
    lazy protocol witness table accessor for type Data and conformance Data();
    lazy protocol witness table accessor for type Range<Int> and conformance Range<A>();
    DataProtocol.copyBytes<A>(to:from:)();
    outlined consume of Data._Representation(v47, v48);
    a1[2] = v14;
    v15 = *a1;
    v16 = a1[1];
    v17 = v14 + 2;
    if (__OFADD__(v14, 2))
    {
      goto LABEL_96;
    }

    v19 = v16 >> 62;
    if ((v16 >> 62) > 1)
    {
      break;
    }

    if (v19)
    {
      v20 = v15 >> 32;
    }

    else
    {
      v20 = BYTE6(v16);
    }

LABEL_33:
    if (v20 < v17)
    {
      goto LABEL_88;
    }

LABEL_36:
    if (v17 < v14)
    {
      goto LABEL_97;
    }

    outlined copy of Data._Representation(v15, v16);
    outlined copy of Data._Representation(v15, v16);
    DataProtocol.copyBytes<A>(to:from:)();
    outlined consume of Data._Representation(v15, v16);
    v21 = bswap32(0) >> 16;
    a1[2] = v17;
    v22 = v17 + v21;
    if (__OFADD__(v17, v21))
    {
      goto LABEL_98;
    }

    v23 = *a1;
    v24 = a1[1];
    v25 = v24 >> 62;
    if ((v24 >> 62) <= 1)
    {
      if (v25)
      {
        v26 = v23 >> 32;
      }

      else
      {
        v26 = BYTE6(v24);
      }

LABEL_44:
      if (v26 < v22)
      {
        goto LABEL_89;
      }

      goto LABEL_47;
    }

    if (v25 == 2)
    {
      v26 = *(v23 + 24);
      goto LABEL_44;
    }

    if (v22 > 0)
    {
      goto LABEL_89;
    }

LABEL_47:
    if (v22 < v17)
    {
      goto LABEL_99;
    }

    v27 = Data._Representation.subscript.getter();
    v29 = v27;
    a1[2] = v22;
    v30 = v28 >> 62;
    if ((v28 >> 62) > 1)
    {
      if (v30 == 2)
      {
        v27 = *(v27 + 16);
        v31 = *(v29 + 24);
      }

      else
      {
        v27 = 0;
        v31 = 0;
      }
    }

    else if (v30)
    {
      v27 = v27;
      v31 = v29 >> 32;
    }

    else
    {
      v27 = 0;
      v31 = BYTE6(v28);
    }

    v12 = __OFSUB__(v31, v27);
    v32 = v31 - v27;
    if (v12)
    {
      goto LABEL_100;
    }

    v33 = v27 + v32;
    if (__OFADD__(v27, v32))
    {
      goto LABEL_101;
    }

    if (v30 > 1)
    {
      if (v30 != 2)
      {
        if (v33 > 0)
        {
          goto LABEL_105;
        }

        goto LABEL_66;
      }

      v34 = *(v29 + 24);
    }

    else if (v30)
    {
      v34 = v29 >> 32;
    }

    else
    {
      v34 = BYTE6(v28);
    }

    if (v34 < v33)
    {
      goto LABEL_104;
    }

LABEL_66:
    if (v33 < v27)
    {
      goto LABEL_102;
    }

    v41 = v29;
    v42 = v28;
    v35 = Data._Representation.subscript.getter();
    v4 = v35;
    v6 = v36;
    v5 = 0;
    v37 = v36 >> 62;
    if ((v36 >> 62) > 1)
    {
      if (v37 == 2)
      {
        v5 = *(v35 + 16);
      }
    }

    else if (v37)
    {
      v5 = v35;
    }

    if (v30 > 1)
    {
      if (v30 == 2)
      {
        v38 = *(v41 + 24);
      }

      else
      {
        v38 = 0;
      }
    }

    else if (v30)
    {
      v38 = v41 >> 32;
    }

    else
    {
      v38 = BYTE6(v42);
    }

    if (__OFSUB__(v38, v33))
    {
      goto LABEL_103;
    }

    if (v38 != v33)
    {
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      outlined consume of Data._Representation(v4, v6);
      outlined consume of Data._Representation(v41, v42);
      outlined consume of Data._Representation(*a1, a1[1]);
      *a1 = v15;
      a1[1] = v16;
      a1[2] = v14;
      swift_willThrowTypedImpl();
      result = outlined consume of ByteBuffer?(v45, v46);
      v39 = 1;
      goto LABEL_91;
    }

    outlined consume of Data._Representation(v41, v42);
    outlined consume of Data._Representation(v15, v16);
    if (v46 >> 60 != 15)
    {
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      outlined consume of Data._Representation(v4, v6);
      result = outlined consume of ByteBuffer?(v45, v46);
LABEL_86:
      v39 = 5;
      goto LABEL_91;
    }
  }

  if (v19 == 2)
  {
    v20 = *(v15 + 24);
    goto LABEL_33;
  }

  if (v17 < 1)
  {
    goto LABEL_36;
  }

LABEL_88:
  outlined copy of Data._Representation(v15, v16);
  v23 = *a1;
  v24 = a1[1];
LABEL_89:
  outlined consume of Data._Representation(v23, v24);
  *a1 = v15;
  a1[1] = v16;
  a1[2] = v14;
LABEL_90:
  lazy protocol witness table accessor for type TLSError and conformance TLSError();
  swift_willThrowTypedImpl();
  result = outlined consume of ByteBuffer?(v45, v6);
  v39 = 0;
LABEL_91:
  *a2 = v39;
  *(a2 + 8) = 0;
  *(a2 + 16) = 2;
LABEL_92:
  v40 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t lazy protocol witness table accessor for type Extension.ServerName and conformance Extension.ServerName()
{
  result = lazy protocol witness table cache variable for type Extension.ServerName and conformance Extension.ServerName;
  if (!lazy protocol witness table cache variable for type Extension.ServerName and conformance Extension.ServerName)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Extension.ServerName and conformance Extension.ServerName);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Extension.ServerName.Names and conformance Extension.ServerName.Names()
{
  result = lazy protocol witness table cache variable for type Extension.ServerName.Names and conformance Extension.ServerName.Names;
  if (!lazy protocol witness table cache variable for type Extension.ServerName.Names and conformance Extension.ServerName.Names)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Extension.ServerName.Names and conformance Extension.ServerName.Names);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Extension.ServerName(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xC && *(a1 + 24))
  {
    return (*a1 + 12);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  if (v3 + 1 >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Extension.ServerName(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 12;
    if (a3 >= 0xC)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xC)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((4 * (a2 ^ 0xF)) | ((a2 ^ 0xF) >> 2)) << 60;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for Extension.ServerName(void *result, unsigned int a2)
{
  if (a2 > 0xC)
  {
    result[1] = 0;
    result[2] = 0;
    *result = a2 - 13;
  }

  else if (a2)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  return result;
}

uint64_t ByteBuffer.writeKeyShare(_:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = (a3 >> 60) & 3;
  if (!v5)
  {
    v9 = *v4;
    v10 = v4[1];
    v11 = v10 >> 62;
    if ((v10 >> 62) > 1)
    {
      if (v11 == 2)
      {
        v15 = *(v9 + 24);
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v13 = BYTE6(v10);
      v14 = v9 >> 32;
      if (v11)
      {
        v15 = v14;
      }

      else
      {
        v15 = v13;
      }
    }

    v25 = 0;
    v28 = MEMORY[0x1E69E6290];
    v29 = MEMORY[0x1E6969DF8];
    v26 = &v25;
    v27 = &v26;
    v19 = __swift_project_boxed_opaque_existential_0(&v26, MEMORY[0x1E69E6290]);
    v21 = *v19;
    v20 = v19[1];
    Data._Representation.append(contentsOf:)();
    __swift_destroy_boxed_opaque_existential_0(&v26);
    v22 = specialized Sequence.reduce<A>(into:_:)(0, a1);
    if ((v22 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v23 = v22;
      if (!(v22 >> 16))
      {
        _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs6UInt16V_Tt1g5(v22, v15);
        result = v23 + 2;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  if (v5 != 1)
  {
    v25 = bswap32(a1) >> 16;
    v28 = MEMORY[0x1E69E6290];
    v29 = MEMORY[0x1E6969DF8];
    v26 = &v25;
    v27 = &v26;
    v16 = __swift_project_boxed_opaque_existential_0(&v26, MEMORY[0x1E69E6290]);
    v18 = *v16;
    v17 = v16[1];
    Data._Representation.append(contentsOf:)();
    __swift_destroy_boxed_opaque_existential_0(&v26);
    result = 2;
LABEL_17:
    v24 = *MEMORY[0x1E69E9840];
    return result;
  }

  v6 = *MEMORY[0x1E69E9840];
  v7 = a3 & 0xCFFFFFFFFFFFFFFFLL;

  return ByteBuffer.writeKeyShareEntry(_:)(a1, a2, v7, a4);
}

uint64_t Extension.KeyShare.KeyShareEntry.description.getter(unsigned __int16 a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  _StringGuts.grow(_:)(47);

  v8 = NamedGroup.description.getter(a1);
  MEMORY[0x1B274D610](v8);

  result = MEMORY[0x1B274D610](0x63784579656B202CLL, 0xEF203A65676E6168);
  v10 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    v11 = 0;
    if (v10 == 2)
    {
      v11 = *(a2 + 24);
    }
  }

  else
  {
    v11 = BYTE6(a3);
    if (v10)
    {
      v11 = a2 >> 32;
    }
  }

  if (__OFSUB__(v11, a4))
  {
    __break(1u);
  }

  else
  {
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1B274D610](v12);

    MEMORY[0x1B274D610](0x29736574796220, 0xE700000000000000);
    return 0xD000000000000015;
  }

  return result;
}

void Extension.KeyShare.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v7 = (a4 >> 60) & 3;
  if (v7)
  {
    if (v7 == 1)
    {
      MEMORY[0x1B274DB20](1);
      Hasher._combine(_:)(a2);
      v11 = a4 >> 62;
      if ((a4 >> 62) > 1)
      {
        v13 = a5;
        if (v11 == 2)
        {
          v12 = *(a3 + 24);
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        if (v11)
        {
          v12 = a3 >> 32;
        }

        else
        {
          v12 = BYTE6(a4);
        }

        v13 = a5;
      }

      if (v12 < v13)
      {
        __break(1u);
      }

      else
      {
        v14 = Data._Representation.subscript.getter();
        v16 = v15;
        Data.hash(into:)();

        outlined consume of Data._Representation(v14, v16);
      }
    }

    else
    {
      MEMORY[0x1B274DB20](2);
      Hasher._combine(_:)(a2);
    }
  }

  else
  {
    MEMORY[0x1B274DB20](0);

    specialized Array<A>.hash(into:)(a1, a2);
  }
}

Swift::Int Extension.KeyShare.hashValue.getter(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  Hasher.init(_seed:)();
  Extension.KeyShare.hash(into:)(v9, a1, a2, a3, a4);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Extension.KeyShare()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  Hasher.init(_seed:)();
  Extension.KeyShare.hash(into:)(v6, v1, v2, v4, v3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Extension.KeyShare()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  Hasher.init(_seed:)();
  Extension.KeyShare.hash(into:)(v6, v1, v2, v4, v3);
  return Hasher._finalize()();
}

uint64_t ByteBuffer.readKeyShareEntry()()
{
  v2 = v0;
  v3 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt16V_Tt0g5();
  if ((v3 & 0x10000) != 0)
  {
    return 0;
  }

  v4 = v3;
  v6 = *v0;
  v5 = *(v0 + 1);
  v7 = *(v0 + 2);
  outlined copy of Data._Representation(*v0, v5);
  v8 = _s15SwiftTLSLibrary10ByteBufferV11readInteger2asxSgxm_ts010FixedWidthF0RzlFs6UInt16V_Tt0g5();
  if ((v8 & 0x10000) != 0 || (v9 = ByteBuffer.readSlice(length:)(v8), v10 >> 60 == 15))
  {
    outlined consume of Data._Representation(*v0, *(v0 + 1));
    result = 0;
    *v0 = v6;
    *(v0 + 1) = v5;
    *(v0 + 2) = v7;
    return result;
  }

  *&v21 = v9;
  *(&v21 + 1) = v10;
  v22 = v11;
  v13 = v10 >> 62;
  if ((v10 >> 62) > 1)
  {
    if (v13 == 2)
    {
      v14 = *(v9 + 24);
    }

    else
    {
      v14 = 0;
    }
  }

  else if (v13)
  {
    v14 = v9 >> 32;
  }

  else
  {
    v14 = BYTE6(v10);
  }

  v15 = v14 - v11;
  if (__OFSUB__(v14, v11))
  {
    __break(1u);
    goto LABEL_26;
  }

  v0 = &v21;
  v15 = ByteBuffer.readSlice(length:)(v15);
  if (v10 >> 60 == 15)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v0 = v15;
  v1 = v10;
  v10 = *(&v21 + 1);
  v15 = v21;
  v16 = *(&v21 + 1) >> 62;
  if ((*(&v21 + 1) >> 62) > 1)
  {
    if (v16 == 2)
    {
      v17 = *(v21 + 24);
    }

    else
    {
      v17 = 0;
    }
  }

  else if (v16)
  {
    v17 = v21 >> 32;
  }

  else
  {
    v17 = BYTE14(v21);
  }

  if (__OFSUB__(v17, v22))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v17 == v22)
  {
    outlined consume of Data._Representation(v21, *(&v21 + 1));
    outlined consume of Data._Representation(v6, v5);
    return v4;
  }

LABEL_28:
  v18 = v15;
  v19 = v10;
  lazy protocol witness table accessor for type TLSError and conformance TLSError();
  swift_willThrowTypedImpl();
  outlined consume of ByteBuffer?(v0, v1);
  outlined consume of Data._Representation(v18, v19);
  outlined consume of Data._Representation(*v2, v2[1]);
  *v2 = v6;
  v2[1] = v5;
  v2[2] = v7;
  v21 = xmmword_1B26C66C0;
  LOBYTE(v22) = 2;
  swift_willThrowTypedImpl();
  swift_allocError();
  *v20 = xmmword_1B26C66C0;
  *(v20 + 16) = 2;
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t _s15SwiftTLSLibrary10ByteBufferV12readKeyShare11messageType17helloRetryRequestAA9ExtensionO0fG0OAA09HandshakeI0V_SbtAA8TLSErrorOYKFSayAJ0fG5EntryVGACzXEfU_@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = a1;
  v59 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v9 = *(v4 + 24);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v7 = BYTE6(v3);
    v8 = v4 >> 32;
    if (v6)
    {
      v9 = v8;
    }

    else
    {
      v9 = v7;
    }
  }

  v10 = v9 - v5;
  if (__OFSUB__(v9, v5))
  {
    goto LABEL_100;
  }

  if (v10 >= 0)
  {
    v11 = v9 - v5;
  }

  else
  {
    v11 = v10 + 31;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, (v11 >> 5) & ~(v11 >> 63), 0, MEMORY[0x1E69E7CC0]);
  v13 = v2[1];
  v52 = *v2;
  v14 = v5 + 2;
  if (__OFADD__(v5, 2))
  {
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
  }

  v15 = result;
  v16 = v13 >> 62;
  v53 = BYTE6(v13);
  v54 = v13 >> 62;
  v55 = v2;
  while (1)
  {
    if (v16 > 1)
    {
      if (v16 == 2)
      {
        if (*(v52 + 24) < v14)
        {
          goto LABEL_87;
        }
      }

      else if (v14 >= 1)
      {
        goto LABEL_87;
      }
    }

    else
    {
      v17 = v53;
      if (v16)
      {
        v17 = v52 >> 32;
      }

      if (v17 < v14)
      {
        goto LABEL_87;
      }
    }

    v57 = *v2;
    v58 = v2[1];
    if (v14 < v5)
    {
      goto LABEL_89;
    }

    v56 = v15;
    outlined copy of Data._Representation(*v2, v2[1]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
    lazy protocol witness table accessor for type Data and conformance Data();
    lazy protocol witness table accessor for type Range<Int> and conformance Range<A>();
    DataProtocol.copyBytes<A>(to:from:)();
    outlined consume of Data._Representation(v57, v58);
    v2[2] = v14;
    v18 = *v2;
    v19 = v2[1];
    v20 = v14 + 2;
    if (__OFADD__(v14, 2))
    {
      goto LABEL_90;
    }

    v21 = v19 >> 62;
    if ((v19 >> 62) > 1)
    {
      break;
    }

    if (v21)
    {
      v22 = v18 >> 32;
    }

    else
    {
      v22 = BYTE6(v19);
    }

LABEL_31:
    if (v22 < v20)
    {
      goto LABEL_85;
    }

LABEL_34:
    if (v20 < v14)
    {
      goto LABEL_91;
    }

    outlined copy of Data._Representation(v18, v19);
    outlined copy of Data._Representation(v18, v19);
    DataProtocol.copyBytes<A>(to:from:)();
    outlined consume of Data._Representation(v18, v19);
    v23 = bswap32(0) >> 16;
    v2[2] = v20;
    v5 = v20 + v23;
    if (__OFADD__(v20, v23))
    {
      goto LABEL_92;
    }

    v24 = *v2;
    v25 = v2[1];
    v26 = v25 >> 62;
    if ((v25 >> 62) <= 1)
    {
      if (v26)
      {
        v27 = v24 >> 32;
      }

      else
      {
        v27 = BYTE6(v25);
      }

LABEL_42:
      if (v27 < v5)
      {
        goto LABEL_86;
      }

      goto LABEL_45;
    }

    if (v26 == 2)
    {
      v27 = *(v24 + 24);
      goto LABEL_42;
    }

    if (v5 > 0)
    {
      goto LABEL_86;
    }

LABEL_45:
    if (v5 < v20)
    {
      goto LABEL_93;
    }

    v28 = Data._Representation.subscript.getter();
    v30 = v28;
    v31 = v29;
    v2[2] = v5;
    v32 = v29 >> 62;
    if ((v29 >> 62) > 1)
    {
      if (v32 == 2)
      {
        v28 = *(v28 + 16);
        v33 = *(v30 + 24);
      }

      else
      {
        v28 = 0;
        v33 = 0;
      }
    }

    else if (v32)
    {
      v28 = v28;
      v33 = v30 >> 32;
    }

    else
    {
      v28 = 0;
      v33 = BYTE6(v29);
    }

    v34 = __OFSUB__(v33, v28);
    v35 = v33 - v28;
    if (v34)
    {
      goto LABEL_94;
    }

    v36 = v28 + v35;
    if (__OFADD__(v28, v35))
    {
      goto LABEL_95;
    }

    if (v32 <= 1)
    {
      if (v32)
      {
        v37 = v30 >> 32;
      }

      else
      {
        v37 = BYTE6(v29);
      }

LABEL_61:
      if (v37 < v36)
      {
        goto LABEL_98;
      }

      goto LABEL_64;
    }

    if (v32 == 2)
    {
      v37 = *(v30 + 24);
      goto LABEL_61;
    }

    if (v36 > 0)
    {
      goto LABEL_99;
    }

LABEL_64:
    if (v36 < v28)
    {
      goto LABEL_96;
    }

    v38 = Data._Representation.subscript.getter();
    v40 = v39;
    v41 = 0;
    v42 = v39 >> 62;
    if ((v39 >> 62) > 1)
    {
      if (v42 == 2)
      {
        v41 = *(v38 + 16);
      }
    }

    else if (v42)
    {
      v41 = v38;
    }

    if (v32 > 1)
    {
      if (v32 == 2)
      {
        v43 = *(v30 + 24);
      }

      else
      {
        v43 = 0;
      }
    }

    else if (v32)
    {
      v43 = v30 >> 32;
    }

    else
    {
      v43 = BYTE6(v31);
    }

    if (__OFSUB__(v43, v36))
    {
      goto LABEL_97;
    }

    v44 = v38;
    if (v43 != v36)
    {
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      outlined consume of Data._Representation(v44, v40);
      outlined consume of Data._Representation(v30, v31);
      outlined consume of Data._Representation(*v55, v55[1]);
      *v55 = v18;
      v55[1] = v19;
      v55[2] = v14;
      swift_willThrowTypedImpl();
      swift_allocError();
      *v50 = xmmword_1B26C66C0;
      *(v50 + 16) = 2;
      result = swift_unexpectedError();
      __break(1u);
      return result;
    }

    v45 = v41;
    outlined consume of Data._Representation(v30, v31);
    result = outlined consume of Data._Representation(v18, v19);
    v15 = v56;
    v47 = *(v56 + 16);
    v46 = *(v56 + 24);
    if (v47 >= v46 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v47 + 1, 1, v56);
      v15 = result;
    }

    *(v15 + 16) = v47 + 1;
    v48 = v15 + 32 * v47;
    *(v48 + 32) = bswap32(0) >> 16;
    *(v48 + 40) = v44;
    *(v48 + 48) = v40;
    *(v48 + 56) = v45;
    v14 = v5 + 2;
    LODWORD(v16) = v54;
    v2 = v55;
    if (__OFADD__(v5, 2))
    {
      goto LABEL_88;
    }
  }

  if (v21 == 2)
  {
    v22 = *(v18 + 24);
    goto LABEL_31;
  }

  if (v20 < 1)
  {
    goto LABEL_34;
  }

LABEL_85:
  outlined copy of Data._Representation(v18, v19);
  v24 = *v2;
  v25 = v2[1];
LABEL_86:
  result = outlined consume of Data._Representation(v24, v25);
  *v2 = v18;
  v2[1] = v19;
  v2[2] = v14;
  v15 = v56;
LABEL_87:
  *a2 = v15;
  v49 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t specialized static Extension.KeyShare.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = (a3 >> 60) & 3;
  if (v9)
  {
    if (v9 == 1)
    {
      return (a7 & 0x3000000000000000) == 0x1000000000000000 && a1 == a5 && (specialized static ByteBuffer.== infix(_:_:)(a2, a3 & 0xCFFFFFFFFFFFFFFFLL, a4, a6, a7 & 0xCFFFFFFFFFFFFFFFLL, a8) & 1) != 0;
    }

    return (a7 & 0x3000000000000000) == 0x2000000000000000 && a1 == a5;
  }

  else
  {
    if ((a7 & 0x3000000000000000) != 0)
    {
      return 0;
    }

    return _sSasSQRzlE2eeoiySbSayxG_ABtFZ15SwiftTLSLibrary9ExtensionO8KeyShareO0eF5EntryV_Tt1g5(a1, a5);
  }
}

unint64_t lazy protocol witness table accessor for type Extension.KeyShare and conformance Extension.KeyShare()
{
  result = lazy protocol witness table cache variable for type Extension.KeyShare and conformance Extension.KeyShare;
  if (!lazy protocol witness table cache variable for type Extension.KeyShare and conformance Extension.KeyShare)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Extension.KeyShare and conformance Extension.KeyShare);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Extension.KeyShare.KeyShareEntry and conformance Extension.KeyShare.KeyShareEntry()
{
  result = lazy protocol witness table cache variable for type Extension.KeyShare.KeyShareEntry and conformance Extension.KeyShare.KeyShareEntry;
  if (!lazy protocol witness table cache variable for type Extension.KeyShare.KeyShareEntry and conformance Extension.KeyShare.KeyShareEntry)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Extension.KeyShare.KeyShareEntry and conformance Extension.KeyShare.KeyShareEntry);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Extension.KeyShare(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 32))
  {
    return (*a1 + 2);
  }

  if ((~*(a1 + 16) & 0x3000000000000000) != 0)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for Extension.KeyShare(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 2;
    *(result + 8) = 0;
    if (a3 >= 2)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = xmmword_1B26CC2B0;
    }
  }

  return result;
}

uint64_t _s15SwiftTLSLibrary21ExportedAuthenticatorV13authenticator21handshakeStateMachineAcA10ByteBufferVz_AA09HandshakegH0VtAA8TLSErrorOYKcfC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = xmmword_1B26C5EF0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  HandshakeMessageParser.appendBytes(_:)(a1);
  v5 = type metadata accessor for ExportedAuthenticator();
  return _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_1(a2, a3 + *(v5 + 24), type metadata accessor for HandshakeStateMachine);
}

uint64_t type metadata accessor for ExportedAuthenticator()
{
  result = type metadata singleton initialization cache for ExportedAuthenticator;
  if (!type metadata singleton initialization cache for ExportedAuthenticator)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t _s15SwiftTLSLibrary21ExportedAuthenticatorV8validate9keyParserSay10Foundation4DataVGAHSgAHXE_tAA8TLSErrorOYKF(uint64_t (*a1)(void), int64_t a2)
{
  v229 = a1;
  v230 = a2;
  v4 = type metadata accessor for P256.Signing.ECDSASignature();
  v222 = *(v4 - 8);
  v223 = v4;
  v5 = *(v222 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v225 = &v204 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4P256O7SigningO9PublicKeyVSgMd, &_s9CryptoKit4P256O7SigningO9PublicKeyVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v231 = &v204 - v9;
  v10 = type metadata accessor for P256.Signing.PublicKey();
  v11 = *(v10 - 8);
  v227 = v10;
  v228 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v226 = &v204 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  ready = type metadata accessor for HandshakeState.ReadyState(0);
  v14 = *(*(ready - 8) + 64);
  MEMORY[0x1EEE9AC00](ready);
  v16 = &v204 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v232 = type metadata accessor for HandshakeState(0);
  v17 = *(*(v232 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v232);
  v224 = &v204 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v204 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v204 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v204 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x1EEE9AC00](v28 - 8);
  v32 = &v204 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v34 = &v204 - v33;
  v35 = type metadata accessor for SymmetricKey();
  v36 = *(*(v35 - 8) + 64);
  v37 = MEMORY[0x1EEE9AC00](v35);
  v38 = MEMORY[0x1EEE9AC00](v37);
  if (v2[1] >> 60 == 15)
  {
    goto LABEL_2;
  }

  v218 = v41;
  v219 = &v204 - v39;
  v220 = v40;
  v221 = v38;
  _s15SwiftTLSLibrary10ByteBufferV18rewindOnNilOrErroryxSgAeCzq_YKXEq_YKs0I0R_r0_lFAA22HandshakeMessageParserV11ParseResultV_AA8TLSErrorOTg504_s15a12TLSLibrary22jkl15V05parsecD0AC11mn7VSgyAA8o9OYKFAgA10cD11VzAIYKXEfU_AHTf1ncn_n(v2, v2, &v316, &v317);
  if (v3)
  {
    return v316;
  }

  v217 = 0;
  v304 = v323;
  v305 = v324;
  v300 = v319;
  v301 = v320;
  v303 = v322;
  v302 = v321;
  v299 = v318;
  v298 = v317;
  v313 = v323;
  v314 = v324;
  v309 = v319;
  v310 = v320;
  v312 = v322;
  v311 = v321;
  v306 = v325;
  v315 = v325;
  v308 = v318;
  v307 = v317;
  if (_s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgWOg(&v307) == 1)
  {
LABEL_2:
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    __swift_project_value_buffer(v42, logger);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_1B25F5000, v43, v44, "incomplete message, invalid", v45, 2u);
      MEMORY[0x1B274ECF0](v45, -1, -1);
    }

    v232 = xmmword_1B26CC550;
    v317 = xmmword_1B26CC550;
    LOBYTE(v318) = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    return v232;
  }

  if (v315 != 4)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v54 = type metadata accessor for Logger();
    __swift_project_value_buffer(v54, logger);
    v295 = v304;
    v296 = v305;
    v297 = v306;
    v291 = v300;
    v292 = v301;
    v294 = v303;
    v293 = v302;
    v290 = v299;
    v289 = v298;
    outlined init with copy of HandshakeMessageParser.ParseResult(&v289, &v280);
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.error.getter();
    outlined destroy of P256.Signing.PrivateKey?(&v298, &_s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMd, _s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMR);
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      *&v280 = v58;
      *v57 = 136315138;
      if (v315 > 3u)
      {
        if (v315 > 5u)
        {
          if (v315 == 6)
          {
            v59 = 0xE800000000000000;
            v60 = 0x64656873696E6966;
          }

          else
          {
            v60 = 0xD000000000000010;
            v59 = 0x80000001B26CD8F0;
          }
        }

        else if (v315 == 4)
        {
          v60 = 0x6369666974726563;
          v59 = 0xEB00000000657461;
        }

        else
        {
          v59 = 0x80000001B26CD910;
          v60 = 0xD000000000000011;
        }
      }

      else if (v315 > 1u)
      {
        if (v315 == 2)
        {
          v59 = 0x80000001B26CD950;
          v60 = 0xD000000000000013;
        }

        else
        {
          v59 = 0x80000001B26CD930;
          v60 = 0xD000000000000012;
        }
      }

      else
      {
        v59 = 0xEB000000006F6C6CLL;
        if (v315)
        {
          v60 = 0x6548726576726573;
        }

        else
        {
          v60 = 0x6548746E65696C63;
        }
      }

      v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v59, &v280);

      *(v57 + 4) = v68;
      _os_log_impl(&dword_1B25F5000, v55, v56, "unexpected message %s", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v58);
      MEMORY[0x1B274ECF0](v58, -1, -1);
      MEMORY[0x1B274ECF0](v57, -1, -1);
    }

    v232 = xmmword_1B26CC550;
    v280 = xmmword_1B26CC550;
    LOBYTE(v281) = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    goto LABEL_50;
  }

  v216 = v16;
  v48 = v310;
  v49 = v2[1];
  outlined copy of Data._Representation(*(&v308 + 1), v309);
  v215 = v48;

  if (v49 >> 60 == 15)
  {
    goto LABEL_14;
  }

  v61 = v217;
  _s15SwiftTLSLibrary10ByteBufferV18rewindOnNilOrErroryxSgAeCzq_YKXEq_YKs0I0R_r0_lFAA22HandshakeMessageParserV11ParseResultV_AA8TLSErrorOTg504_s15a12TLSLibrary22jkl15V05parsecD0AC11mn7VSgyAA8o9OYKFAgA10cD11VzAIYKXEfU_AHTf1ncn_n(v2, v2, &v316, &v289);
  if (v61)
  {
    v232 = v316;
LABEL_28:
    outlined destroy of HandshakeMessage(&v308 + 8);
LABEL_50:
    outlined destroy of P256.Signing.PrivateKey?(&v298, &_s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMd, _s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMR);
    return v232;
  }

  v217 = 0;
  v277 = v295;
  v278 = v296;
  v273 = v291;
  v274 = v292;
  v276 = v294;
  v275 = v293;
  v271 = v289;
  v272 = v290;
  v286 = v295;
  v287 = v296;
  v282 = v291;
  v283 = v292;
  v285 = v294;
  v284 = v293;
  v279 = v297;
  v288 = v297;
  v281 = v290;
  v280 = v289;
  if (_s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgWOg(&v280) == 1)
  {
LABEL_14:
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v50 = type metadata accessor for Logger();
    __swift_project_value_buffer(v50, logger);
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_1B25F5000, v51, v52, "incomplete message, invalid", v53, 2u);
      MEMORY[0x1B274ECF0](v53, -1, -1);
    }

    v232 = xmmword_1B26CC550;
    v289 = xmmword_1B26CC550;
    LOBYTE(v290) = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    goto LABEL_28;
  }

  if (v288 != 5)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v69 = type metadata accessor for Logger();
    __swift_project_value_buffer(v69, logger);
    v268 = v277;
    v269 = v278;
    v270 = v279;
    v264 = v273;
    v265 = v274;
    v266 = v275;
    v267 = v276;
    v262 = v271;
    v263 = v272;
    outlined init with copy of HandshakeMessageParser.ParseResult(&v262, &v253);
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.error.getter();
    outlined destroy of P256.Signing.PrivateKey?(&v271, &_s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMd, _s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMR);
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      *&v253 = v73;
      *v72 = 136315138;
      if (v288 > 3u)
      {
        if (v288 > 5u)
        {
          if (v288 == 6)
          {
            v74 = 0xE800000000000000;
            v75 = 0x64656873696E6966;
          }

          else
          {
            v75 = 0xD000000000000010;
            v74 = 0x80000001B26CD8F0;
          }
        }

        else if (v288 == 4)
        {
          v75 = 0x6369666974726563;
          v74 = 0xEB00000000657461;
        }

        else
        {
          v74 = 0x80000001B26CD910;
          v75 = 0xD000000000000011;
        }
      }

      else if (v288 > 1u)
      {
        if (v288 == 2)
        {
          v74 = 0x80000001B26CD950;
          v75 = 0xD000000000000013;
        }

        else
        {
          v74 = 0x80000001B26CD930;
          v75 = 0xD000000000000012;
        }
      }

      else
      {
        v74 = 0xEB000000006F6C6CLL;
        if (v288)
        {
          v75 = 0x6548726576726573;
        }

        else
        {
          v75 = 0x6548746E65696C63;
        }
      }

      v82 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v75, v74, &v253);

      *(v72 + 4) = v82;
      _os_log_impl(&dword_1B25F5000, v70, v71, "unexpected message %s", v72, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v73);
      MEMORY[0x1B274ECF0](v73, -1, -1);
      MEMORY[0x1B274ECF0](v72, -1, -1);
    }

    else
    {
    }

    v232 = xmmword_1B26CC550;
    v253 = xmmword_1B26CC550;
    LOBYTE(v254) = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    goto LABEL_78;
  }

  v62 = v282;
  v213 = v283;
  v214 = *(&v282 + 1);
  v63 = v2[1];
  outlined copy of Data._Representation(v282, *(&v282 + 1));
  if (v63 >> 60 == 15)
  {
    goto LABEL_35;
  }

  v76 = v217;
  _s15SwiftTLSLibrary10ByteBufferV18rewindOnNilOrErroryxSgAeCzq_YKXEq_YKs0I0R_r0_lFAA22HandshakeMessageParserV11ParseResultV_AA8TLSErrorOTg504_s15a12TLSLibrary22jkl15V05parsecD0AC11mn7VSgyAA8o9OYKFAgA10cD11VzAIYKXEfU_AHTf1ncn_n(v2, v2, &v316, &v262);
  if (v76)
  {
    v232 = v316;
    outlined destroy of HandshakeMessage(&v281 + 8);
LABEL_78:
    outlined destroy of HandshakeMessage(&v308 + 8);
LABEL_79:
    outlined destroy of P256.Signing.PrivateKey?(&v271, &_s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMd, _s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMR);
    outlined destroy of P256.Signing.PrivateKey?(&v298, &_s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMd, _s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMR);
    return v232;
  }

  v217 = 0;
  v250 = v268;
  v251 = v269;
  v246 = v264;
  v247 = v265;
  v248 = v266;
  v249 = v267;
  v244 = v262;
  v245 = v263;
  v259 = v268;
  v260 = v269;
  v255 = v264;
  v256 = v265;
  v257 = v266;
  v258 = v267;
  v252 = v270;
  v261 = v270;
  v253 = v262;
  v254 = v263;
  if (_s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgWOg(&v253) == 1)
  {
LABEL_35:
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v64 = type metadata accessor for Logger();
    __swift_project_value_buffer(v64, logger);
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&dword_1B25F5000, v65, v66, "incomplete message, invalid", v67, 2u);
      MEMORY[0x1B274ECF0](v67, -1, -1);
    }

    v232 = xmmword_1B26CC550;
    v262 = xmmword_1B26CC550;
    LOBYTE(v263) = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    outlined destroy of HandshakeMessage(&v281 + 8);
    goto LABEL_78;
  }

  v212 = v62;
  if (v261 != 6)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v83 = type metadata accessor for Logger();
    __swift_project_value_buffer(v83, logger);
    v241 = v250;
    v242 = v251;
    v243 = v252;
    v237 = v246;
    v238 = v247;
    v239 = v248;
    v240 = v249;
    v235 = v244;
    v236 = v245;
    outlined init with copy of HandshakeMessageParser.ParseResult(&v235, &v233);
    v84 = Logger.logObject.getter();
    v85 = static os_log_type_t.error.getter();
    outlined destroy of P256.Signing.PrivateKey?(&v244, &_s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMd, _s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMR);
    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      *&v233 = v87;
      *v86 = 136315138;
      if (v261 > 3u)
      {
        if (v261 > 5u)
        {
          if (v261 == 6)
          {
            v88 = 0xE800000000000000;
            v89 = 0x64656873696E6966;
          }

          else
          {
            v89 = 0xD000000000000010;
            v88 = 0x80000001B26CD8F0;
          }
        }

        else if (v261 == 4)
        {
          v89 = 0x6369666974726563;
          v88 = 0xEB00000000657461;
        }

        else
        {
          v88 = 0x80000001B26CD910;
          v89 = 0xD000000000000011;
        }
      }

      else if (v261 > 1u)
      {
        if (v261 == 2)
        {
          v88 = 0x80000001B26CD950;
          v89 = 0xD000000000000013;
        }

        else
        {
          v88 = 0x80000001B26CD930;
          v89 = 0xD000000000000012;
        }
      }

      else
      {
        v88 = 0xEB000000006F6C6CLL;
        if (v261)
        {
          v89 = 0x6548726576726573;
        }

        else
        {
          v89 = 0x6548746E65696C63;
        }
      }

      v125 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v89, v88, &v233);

      *(v86 + 4) = v125;
      _os_log_impl(&dword_1B25F5000, v84, v85, "unexpected message %s", v86, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v87);
      MEMORY[0x1B274ECF0](v87, -1, -1);
      MEMORY[0x1B274ECF0](v86, -1, -1);
    }

    v232 = xmmword_1B26CC550;
    v233 = xmmword_1B26CC550;
    v234 = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    outlined destroy of HandshakeMessage(&v281 + 8);
    outlined destroy of HandshakeMessage(&v308 + 8);
    outlined destroy of P256.Signing.PrivateKey?(&v244, &_s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMd, _s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMR);
    goto LABEL_79;
  }

  v209 = v255;
  v207 = *(&v254 + 1);
  v208 = *(&v255 + 1);
  v77 = v2 + *(type metadata accessor for ExportedAuthenticator() + 24);
  v210 = *(type metadata accessor for HandshakeStateMachine(0) + 24);
  v211 = v77;
  outlined init with copy of HandshakeState(&v77[v210], v27);
  if (swift_getEnumCaseMultiPayload() == 6)
  {
    v78 = v216;
    _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_1(v27, v216, type metadata accessor for HandshakeState.ReadyState);
    v79 = *(ready + 44);
    outlined copy of Data._Representation(*(&v254 + 1), v255);
    specialized SessionKeyManager.generateTLSExporterKey(_:)(0xD00000000000002FLL, 0x80000001B26CE500, v34);
    v80 = type metadata accessor for HandshakeState.ReadyState;
    v81 = v78;
  }

  else
  {
    (*(v220 + 56))(v34, 1, 1, v221);
    outlined copy of Data._Representation(*(&v254 + 1), v255);
    v80 = type metadata accessor for HandshakeState;
    v81 = v27;
  }

  _s15SwiftTLSLibrary14HandshakeStateOWOhTm_0(v81, v80);
  v90 = v220;
  v91 = *(v220 + 48);
  if (v91(v34, 1, v221) == 1)
  {
    v32 = v34;
LABEL_98:
    outlined destroy of P256.Signing.PrivateKey?(v32, &_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v96 = type metadata accessor for Logger();
    __swift_project_value_buffer(v96, logger);
    v97 = Logger.logObject.getter();
    v98 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      *v99 = 0;
      _os_log_impl(&dword_1B25F5000, v97, v98, "failed to export keys", v99, 2u);
      MEMORY[0x1B274ECF0](v99, -1, -1);
    }

    v232 = xmmword_1B26CC560;
    v235 = xmmword_1B26CC560;
    LOBYTE(v236) = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    outlined destroy of HandshakeMessage(&v281 + 8);
    outlined destroy of HandshakeMessage(&v308 + 8);
    outlined destroy of P256.Signing.PrivateKey?(&v244, &_s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMd, _s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMR);
    outlined destroy of P256.Signing.PrivateKey?(&v271, &_s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMd, _s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMR);
    outlined destroy of P256.Signing.PrivateKey?(&v298, &_s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMd, _s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMR);
    outlined destroy of HandshakeMessage(&v254 + 8);
    return v232;
  }

  v92 = *(v90 + 32);
  v92(v219, v34, v221);
  outlined init with copy of HandshakeState(&v211[v210], v25);
  if (swift_getEnumCaseMultiPayload() == 6)
  {
    v93 = v25;
    v25 = v216;
    _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_1(v93, v216, type metadata accessor for HandshakeState.ReadyState);
    v94 = &v25[*(ready + 44)];
    specialized SessionKeyManager.generateTLSExporterKey(_:)(0xD00000000000002ALL, 0x80000001B26CE530, v32);
    v95 = type metadata accessor for HandshakeState.ReadyState;
  }

  else
  {
    (*(v220 + 56))(v32, 1, 1, v221);
    v95 = type metadata accessor for HandshakeState;
  }

  _s15SwiftTLSLibrary14HandshakeStateOWOhTm_0(v25, v95);
  if (v91(v32, 1, v221) == 1)
  {
    (*(v220 + 8))(v219, v221);
    goto LABEL_98;
  }

  v100 = (v92)(v218, v32, v221);
  v235 = xmmword_1B26C6130;
  *&v236 = 0;
  MEMORY[0x1EEE9AC00](v100);
  *(&v204 - 2) = &v235;
  v101 = v217;
  SymmetricKey.withUnsafeBytes<A>(_:)();
  v102 = *(&v307 + 1) >> 62;
  if ((*(&v307 + 1) >> 62) > 1)
  {
    v103 = 0;
    if (v102 == 2)
    {
      v103 = *(v307 + 24);
    }
  }

  else if (v102)
  {
    v103 = v307 >> 32;
  }

  else
  {
    v103 = BYTE14(v307);
  }

  if (v103 < v308)
  {
    __break(1u);
    goto LABEL_218;
  }

  v104 = Data._Representation.subscript.getter();
  v106 = v105;
  specialized ByteBuffer.writeBytes<A>(_:)(v104, v105);
  outlined consume of Data._Representation(v104, v106);
  v107 = v235;
  v108 = v236;
  outlined init with copy of HandshakeState(&v211[v210], v22);
  if (swift_getEnumCaseMultiPayload() != 6)
  {
    _s15SwiftTLSLibrary14HandshakeStateOWOhTm_0(v22, type metadata accessor for HandshakeState);
    if (one-time initialization token for logger == -1)
    {
LABEL_120:
      v121 = type metadata accessor for Logger();
      __swift_project_value_buffer(v121, logger);
      v122 = Logger.logObject.getter();
      v123 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v122, v123))
      {
        v124 = swift_slowAlloc();
        *v124 = 0;
        _os_log_impl(&dword_1B25F5000, v122, v123, "failed to create authenticator hash", v124, 2u);
        MEMORY[0x1B274ECF0](v124, -1, -1);
      }

      v232 = xmmword_1B26CC560;
      v233 = xmmword_1B26CC560;
      v234 = 2;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      outlined destroy of HandshakeMessage(&v308 + 8);
      goto LABEL_134;
    }

LABEL_218:
    swift_once();
    goto LABEL_120;
  }

  v109 = v22;
  v110 = v216;
  _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_1(v109, v216, type metadata accessor for HandshakeState.ReadyState);
  v111 = v110 + *(ready + 44);
  v112 = specialized SessionKeyManager.generateHashForAuthenticator(_:)(v107, *(&v107 + 1), v108);
  v114 = v113;
  v116 = v115;
  _s15SwiftTLSLibrary14HandshakeStateOWOhTm_0(v110, type metadata accessor for HandshakeState.ReadyState);
  v117 = v112;
  v205 = v114;
  v206 = ExportedAuthenticator.generateDataToSignInAuthenticatorCertificateVerify(authenticatorTranscriptHash:)(v112, v114, v116);
  v217 = v118;
  v120 = v119;
  _s15SwiftTLSLibrary21ExportedAuthenticatorV10extractKey18certificateMessage9keyParser9CryptoKit4P256O7SigningO06PublicF0VSgAA011CertificateH0V_10Foundation4DataVSgASXEtAA8TLSErrorOYKF(v215, v229, v230, &v316, v231);
  if (v101)
  {
    v232 = v316;
LABEL_133:
    outlined consume of Data._Representation(v112, v205);
    outlined destroy of HandshakeMessage(&v308 + 8);
    outlined consume of Data._Representation(v206, v217);
LABEL_134:
    outlined destroy of HandshakeMessage(&v281 + 8);
    outlined destroy of P256.Signing.PrivateKey?(&v244, &_s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMd, _s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMR);
    outlined destroy of P256.Signing.PrivateKey?(&v271, &_s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMd, _s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMR);
    outlined destroy of P256.Signing.PrivateKey?(&v298, &_s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMd, _s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMR);
LABEL_135:
    v130 = v221;
    v131 = *(v220 + 8);
    v131(v218, v221);
    v131(v219, v130);
    outlined destroy of HandshakeMessage(&v254 + 8);
    outlined consume of Data._Representation(v235, *(&v235 + 1));
    return v232;
  }

  if ((*(v228 + 48))(v231, 1, v227) == 1)
  {
    outlined destroy of P256.Signing.PrivateKey?(v231, &_s9CryptoKit4P256O7SigningO9PublicKeyVSgMd, &_s9CryptoKit4P256O7SigningO9PublicKeyVSgMR);
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v126 = type metadata accessor for Logger();
    __swift_project_value_buffer(v126, logger);
    v127 = Logger.logObject.getter();
    v128 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v127, v128))
    {
      v129 = swift_slowAlloc();
      *v129 = 0;
      _os_log_impl(&dword_1B25F5000, v127, v128, "failed to extract key from certificate", v129, 2u);
      MEMORY[0x1B274ECF0](v129, -1, -1);
    }

    v232 = xmmword_1B26CC550;
    v233 = xmmword_1B26CC550;
    v234 = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    goto LABEL_133;
  }

  (*(v228 + 32))(v226, v231, v227);
  v132 = v214 >> 62;
  if ((v214 >> 62) <= 1)
  {
    if (!v132)
    {
      v133 = BYTE6(v214);
      goto LABEL_144;
    }

    v133 = v212 >> 32;
    goto LABEL_142;
  }

  if (v132 == 2)
  {
    v133 = *(v212 + 24);
LABEL_142:
    outlined copy of Data._Representation(v282, *(&v282 + 1));
    goto LABEL_144;
  }

  v133 = 0;
LABEL_144:
  if (v133 < v213)
  {
    __break(1u);
LABEL_220:
    __break(1u);
LABEL_221:
    __break(1u);
    goto LABEL_222;
  }

  *&v233 = Data._Representation.subscript.getter();
  *(&v233 + 1) = v134;
  lazy protocol witness table accessor for type Data and conformance Data();
  P256.Signing.ECDSASignature.init<A>(derRepresentation:)();
  v231 = 0;
  outlined destroy of HandshakeMessage(&v281 + 8);
  v135 = v217 >> 62;
  if ((v217 >> 62) > 1)
  {
    if (v135 == 2)
    {
      v136 = *(v206 + 24);
    }

    else
    {
      v136 = 0;
    }
  }

  else if (v135)
  {
    v136 = v206 >> 32;
  }

  else
  {
    v136 = BYTE6(v217);
  }

  if (v136 < v120)
  {
    goto LABEL_221;
  }

  *&v233 = Data._Representation.subscript.getter();
  *(&v233 + 1) = v137;
  v138 = P256.Signing.PublicKey.isValidSignature<A>(_:for:)();
  outlined consume of Data._Representation(v233, *(&v233 + 1));
  if ((v138 & 1) == 0)
  {
    if (one-time initialization token for logger == -1)
    {
LABEL_158:
      v141 = type metadata accessor for Logger();
      __swift_project_value_buffer(v141, logger);
      v142 = Logger.logObject.getter();
      v143 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v142, v143))
      {
        v144 = swift_slowAlloc();
        *v144 = 0;
        _os_log_impl(&dword_1B25F5000, v142, v143, "signature validation failed", v144, 2u);
        MEMORY[0x1B274ECF0](v144, -1, -1);
      }

      v145 = xmmword_1B26CC550;
LABEL_177:
      v232 = v145;
      v233 = v145;
      v234 = 2;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      v164 = v117;
      v165 = v205;
LABEL_178:
      outlined consume of Data._Representation(v164, v165);
      outlined destroy of HandshakeMessage(&v308 + 8);
LABEL_179:
      outlined consume of Data._Representation(v206, v217);
      outlined destroy of HandshakeMessage(&v281 + 8);
      outlined destroy of P256.Signing.PrivateKey?(&v244, &_s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMd, _s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMR);
      outlined destroy of P256.Signing.PrivateKey?(&v271, &_s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMd, _s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMR);
      outlined destroy of P256.Signing.PrivateKey?(&v298, &_s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMd, _s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMR);
      (*(v222 + 8))(v225, v223);
      (*(v228 + 8))(v226, v227);
      goto LABEL_135;
    }

LABEL_222:
    swift_once();
    goto LABEL_158;
  }

  v139 = *(&v280 + 1) >> 62;
  if ((*(&v280 + 1) >> 62) > 1)
  {
    if (v139 == 2)
    {
      v140 = *(v280 + 24);
    }

    else
    {
      v140 = 0;
    }
  }

  else if (v139)
  {
    v140 = v280 >> 32;
  }

  else
  {
    v140 = BYTE14(v280);
  }

  if (v140 < v281)
  {
    __break(1u);
    goto LABEL_224;
  }

  v146 = Data._Representation.subscript.getter();
  v148 = v147;
  specialized ByteBuffer.writeBytes<A>(_:)(v146, v147);
  outlined consume of Data._Representation(v146, v148);
  v149 = v235;
  v150 = v236;
  outlined init with copy of HandshakeState(&v211[v210], v224);
  if (swift_getEnumCaseMultiPayload() != 6)
  {
    _s15SwiftTLSLibrary14HandshakeStateOWOhTm_0(v224, type metadata accessor for HandshakeState);
    if (one-time initialization token for logger == -1)
    {
LABEL_174:
      v166 = type metadata accessor for Logger();
      __swift_project_value_buffer(v166, logger);
      v167 = Logger.logObject.getter();
      v168 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v167, v168))
      {
        v169 = swift_slowAlloc();
        *v169 = 0;
        _os_log_impl(&dword_1B25F5000, v167, v168, "failed to create finished authenticator hash", v169, 2u);
        MEMORY[0x1B274ECF0](v169, -1, -1);
      }

      v145 = xmmword_1B26CC560;
      goto LABEL_177;
    }

LABEL_224:
    swift_once();
    goto LABEL_174;
  }

  v151 = v216;
  _s15SwiftTLSLibrary21HandshakeStateMachineVWObTm_1(v224, v216, type metadata accessor for HandshakeState.ReadyState);
  v152 = v151 + *(ready + 44);
  v153 = specialized SessionKeyManager.generateHashForAuthenticator(_:)(v149, *(&v149 + 1), v150);
  v155 = v154;
  v157 = v156;
  _s15SwiftTLSLibrary14HandshakeStateOWOhTm_0(v151, type metadata accessor for HandshakeState.ReadyState);
  v216 = v153;
  v224 = v155;
  v229 = HandshakeStateMachine.generateHMACForAuthenticator(transcript:key:)(v153, v155, v157, v218);
  v230 = v158;
  ready = v159;
  if (v159 >> 60 == 15)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v160 = type metadata accessor for Logger();
    __swift_project_value_buffer(v160, logger);
    v161 = Logger.logObject.getter();
    v162 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v161, v162))
    {
      v163 = swift_slowAlloc();
      *v163 = 0;
      _os_log_impl(&dword_1B25F5000, v161, v162, "failed to create finished authenticator HMAC", v163, 2u);
      MEMORY[0x1B274ECF0](v163, -1, -1);
    }

    v232 = xmmword_1B26CC560;
    v233 = xmmword_1B26CC560;
    v234 = 2;
    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    outlined consume of Data._Representation(v117, v205);
    v164 = v216;
    v165 = v224;
    goto LABEL_178;
  }

  v170 = ready >> 62;
  if ((ready >> 62) > 1)
  {
    if (v170 == 2)
    {
      v171 = *(v229 + 24);
    }

    else
    {
      v171 = 0;
    }
  }

  else if (v170)
  {
    v171 = v229 >> 32;
  }

  else
  {
    v171 = BYTE6(ready);
  }

  if (v171 < v230)
  {
    __break(1u);
LABEL_226:
    __break(1u);
    goto LABEL_227;
  }

  v172 = Data._Representation.subscript.getter();
  v174 = v173;
  v175 = v209 >> 62;
  if ((v209 >> 62) > 1)
  {
    if (v175 == 2)
    {
      v176 = *(v207 + 24);
    }

    else
    {
      v176 = 0;
    }
  }

  else if (v175)
  {
    v176 = v207 >> 32;
  }

  else
  {
    v176 = BYTE6(v209);
  }

  if (v176 < v208)
  {
    goto LABEL_226;
  }

  v177 = Data._Representation.subscript.getter();
  v179 = v178;
  v180 = specialized static Data.== infix(_:_:)(v172, v174, v177, v178);
  outlined consume of Data._Representation(v177, v179);
  outlined consume of Data._Representation(v172, v174);
  if ((v180 & 1) == 0)
  {
    if (one-time initialization token for logger == -1)
    {
LABEL_212:
      v196 = type metadata accessor for Logger();
      __swift_project_value_buffer(v196, logger);
      v197 = Logger.logObject.getter();
      v198 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v197, v198))
      {
        v199 = swift_slowAlloc();
        *v199 = 0;
        _os_log_impl(&dword_1B25F5000, v197, v198, "invalid finished payload", v199, 2u);
        MEMORY[0x1B274ECF0](v199, -1, -1);
      }

      v232 = xmmword_1B26CC550;
      v233 = xmmword_1B26CC550;
      v234 = 2;
      lazy protocol witness table accessor for type TLSError and conformance TLSError();
      swift_willThrowTypedImpl();
      outlined consume of Data._Representation(v117, v205);
      outlined consume of Data._Representation(v216, v224);
      outlined destroy of HandshakeMessage(&v308 + 8);
      outlined consume of ByteBuffer?(v229, ready);
      goto LABEL_179;
    }

LABEL_227:
    swift_once();
    goto LABEL_212;
  }

  v181 = v215[2];
  if (v181)
  {
    *&v233 = MEMORY[0x1E69E7CC0];
    v182 = v215;

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v181, 0);
    *&v232 = v233;
    v183 = v182 + 7;
    while (1)
    {
      v184 = *(v183 - 3);
      v185 = *(v183 - 2);
      v186 = v185 >> 62;
      if ((v185 >> 62) > 1)
      {
        v187 = v186 == 2 ? *(v184 + 24) : 0;
      }

      else
      {
        v187 = v186 ? v184 >> 32 : BYTE6(v185);
      }

      if (v187 < *(v183 - 1))
      {
        goto LABEL_220;
      }

      v188 = *v183;
      outlined copy of Data._Representation(*(v183 - 3), *(v183 - 2));

      v189 = Data._Representation.subscript.getter();
      v191 = v190;
      outlined consume of Data._Representation(v184, v185);

      *&v233 = v232;
      v193 = *(v232 + 16);
      v192 = *(v232 + 24);
      if (v193 >= v192 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v192 > 1), v193 + 1, 1);
        *&v232 = v233;
      }

      v194 = v232;
      *(v232 + 16) = v193 + 1;
      v195 = v194 + 16 * v193;
      *(v195 + 32) = v189;
      *(v195 + 40) = v191;
      v183 += 4;
      if (!--v181)
      {
        outlined consume of Data._Representation(v117, v205);
        outlined consume of Data._Representation(v216, v224);
        outlined destroy of HandshakeMessage(&v308 + 8);
        outlined consume of ByteBuffer?(v229, ready);
        outlined consume of Data._Representation(v206, v217);

        outlined destroy of HandshakeMessage(&v281 + 8);
        outlined destroy of P256.Signing.PrivateKey?(&v244, &_s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMd, _s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMR);
        outlined destroy of P256.Signing.PrivateKey?(&v271, &_s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMd, _s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMR);
        outlined destroy of P256.Signing.PrivateKey?(&v298, &_s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMd, _s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMR);
        (*(v222 + 8))(v225, v223);
        (*(v228 + 8))(v226, v227);
        v200 = v221;
        v201 = *(v220 + 8);
        v201(v218, v221);
        v201(v219, v200);
        outlined destroy of HandshakeMessage(&v254 + 8);
        goto LABEL_216;
      }
    }
  }

  outlined consume of Data._Representation(v117, v205);
  outlined consume of Data._Representation(v216, v224);
  outlined destroy of HandshakeMessage(&v308 + 8);
  outlined consume of ByteBuffer?(v229, ready);
  outlined consume of Data._Representation(v206, v217);
  outlined destroy of HandshakeMessage(&v281 + 8);
  outlined destroy of P256.Signing.PrivateKey?(&v244, &_s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMd, _s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMR);
  outlined destroy of P256.Signing.PrivateKey?(&v271, &_s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMd, _s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMR);
  outlined destroy of P256.Signing.PrivateKey?(&v298, &_s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMd, _s15SwiftTLSLibrary22HandshakeMessageParserV11ParseResultVSgMR);
  (*(v222 + 8))(v225, v223);
  (*(v228 + 8))(v226, v227);
  v202 = v221;
  v203 = *(v220 + 8);
  v203(v218, v221);
  v203(v219, v202);
  outlined destroy of HandshakeMessage(&v254 + 8);
  *&v232 = MEMORY[0x1E69E7CC0];
LABEL_216:
  outlined consume of Data._Representation(v235, *(&v235 + 1));
  return v232;
}

uint64_t ExportedAuthenticator.generateDataToSignInAuthenticatorCertificateVerify(authenticatorTranscriptHash:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v18 = xmmword_1B26C6130;
  v19 = 0;
  specialized Data.append<A>(contentsOf:)(64);
  specialized Data.append<A>(contentsOf:)(0xD000000000000016, 0x80000001B26CE560);
  if (("authenticator finished key" & 0x1000000000000000) != 0)
  {
    String.UTF8View._foreignCount()();
  }

  v16 = 0;
  v17[3] = MEMORY[0x1E69E6290];
  v17[4] = MEMORY[0x1E6969DF8];
  v17[0] = &v16;
  v17[1] = v17;
  v6 = __swift_project_boxed_opaque_existential_0(v17, MEMORY[0x1E69E6290]);
  v8 = *v6;
  v7 = v6[1];
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(v17);
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v9 == 2)
    {
      v10 = *(a1 + 24);
    }

    else
    {
      v10 = 0;
    }
  }

  else if (v9)
  {
    v10 = a1 >> 32;
  }

  else
  {
    v10 = BYTE6(a2);
  }

  if (v10 < a3)
  {
    __break(1u);
  }

  v11 = Data._Representation.subscript.getter();
  v13 = v12;
  specialized ByteBuffer.writeBytes<A>(_:)(v11, v12);
  outlined consume of Data._Representation(v11, v13);
  result = v18;
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _s15SwiftTLSLibrary21ExportedAuthenticatorV10extractKey18certificateMessage9keyParser9CryptoKit4P256O7SigningO06PublicF0VSgAA011CertificateH0V_10Foundation4DataVSgASXEtAA8TLSErrorOYKF@<X0>(void *a1@<X3>, uint64_t (*a2)(void)@<X4>, unint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X8>)
{
  if (!a1[2])
  {
    goto LABEL_12;
  }

  v11 = a1[4];
  v10 = a1[5];
  v12 = a1[6];
  v13 = v10 >> 62;
  if ((v10 >> 62) > 1)
  {
    if (v13 != 2)
    {
      if (v12 <= 0)
      {
        goto LABEL_10;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v14 = *(v11 + 24);
LABEL_9:
    outlined copy of Data._Representation(a1[4], a1[5]);
    if (v14 >= v12)
    {
      goto LABEL_10;
    }

    goto LABEL_16;
  }

  if (v13)
  {
    v14 = v11 >> 32;
    goto LABEL_9;
  }

  if (BYTE6(v10) < v12)
  {
    goto LABEL_16;
  }

LABEL_10:
  v15 = Data._Representation.subscript.getter();
  v17 = v16;
  a2 = a2();
  a3 = v18;
  outlined consume of Data._Representation(v15, v17);
  if (a3 >> 60 == 15)
  {
    outlined consume of Data._Representation(v11, v10);
LABEL_12:
    v19 = type metadata accessor for P256.Signing.PublicKey();
    return (*(*(v19 - 8) + 56))(a5, 1, 1, v19);
  }

  outlined copy of Data._Representation(a2, a3);
  P256.Signing.PublicKey.init<A>(x963Representation:)();
  if (v5)
  {

    lazy protocol witness table accessor for type TLSError and conformance TLSError();
    swift_willThrowTypedImpl();
    outlined consume of ByteBuffer?(a2, a3);
    result = outlined consume of Data._Representation(v11, v10);
    *a4 = xmmword_1B26C6420;
    *(a4 + 16) = 2;
    return result;
  }

LABEL_17:
  outlined consume of Data._Representation(v11, v10);
  outlined consume of ByteBuffer?(a2, a3);
  v21 = type metadata accessor for P256.Signing.PublicKey();
  return (*(*(v21 - 8) + 56))(a5, 0, 1, v21);
}

uint64_t outlined init with copy of HandshakeState(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HandshakeState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata completion function for ExportedAuthenticator()
{
  result = type metadata accessor for HandshakeStateMachine(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t static CertificateMessage.__derived_struct_equals(_:_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((specialized static ByteBuffer.== infix(_:_:)(a1, a2, a3, a5, a6, a7) & 1) == 0)
  {
    return 0;
  }

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZ15SwiftTLSLibrary18CertificateMessageV0D5EntryV_Tt1g5(a4, a8);
}

uint64_t CertificateMessage.hash(into:)(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = result;
  v7 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v7 == 2)
    {
      v8 = *(a2 + 24);
    }

    else
    {
      v8 = 0;
    }
  }

  else if (v7)
  {
    v8 = a2 >> 32;
  }

  else
  {
    v8 = BYTE6(a3);
  }

  if (v8 < a4)
  {
    __break(1u);
  }

  else
  {
    v9 = Data._Representation.subscript.getter();
    v11 = v10;
    Data.hash(into:)();
    outlined consume of Data._Representation(v9, v11);

    return specialized Array<A>.hash(into:)(v6, a5);
  }

  return result;
}

Swift::Int CertificateMessage.hashValue.getter(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  result = Hasher.init(_seed:)();
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v10 = 0;
    if (v9 == 2)
    {
      v10 = *(a1 + 24);
    }
  }

  else if (v9)
  {
    v10 = a1 >> 32;
  }

  else
  {
    v10 = BYTE6(a2);
  }

  if (v10 < a3)
  {
    __break(1u);
  }

  else
  {
    v11 = Data._Representation.subscript.getter();
    v13 = v12;
    Data.hash(into:)();
    outlined consume of Data._Representation(v11, v13);
    specialized Array<A>.hash(into:)(v14, a4);
    return Hasher._finalize()();
  }

  return result;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CertificateMessage(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  result = v1[2];
  v6 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v7 = *(v3 + 24);
    }

    else
    {
      v7 = 0;
    }
  }

  else if (v6)
  {
    v7 = v3 >> 32;
  }

  else
  {
    v7 = BYTE6(v4);
  }

  if (v7 < result)
  {
    __break(1u);
  }

  else
  {
    v8 = v1[3];
    v9 = Data._Representation.subscript.getter();
    v11 = v10;
    Data.hash(into:)();
    outlined consume of Data._Representation(v9, v11);

    return specialized Array<A>.hash(into:)(a1, v8);
  }

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CertificateMessage()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  result = Hasher.init(_seed:)();
  v6 = v1 >> 62;
  if ((v1 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v7 = *(v2 + 24);
    }

    else
    {
      v7 = 0;
    }
  }

  else if (v6)
  {
    v7 = v2 >> 32;
  }

  else
  {
    v7 = BYTE6(v1);
  }

  if (v7 < v4)
  {
    __break(1u);
  }

  else
  {
    v8 = Data._Representation.subscript.getter();
    v10 = v9;
    Data.hash(into:)();
    outlined consume of Data._Representation(v8, v10);
    specialized Array<A>.hash(into:)(v11, v3);
    return Hasher._finalize()();
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CertificateMessage(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v5 = a1[3];
  v6 = a2[3];
  if ((specialized static ByteBuffer.== infix(_:_:)(*a1, a1[1], a1[2], *a2, a2[1], a2[2]) & 1) == 0)
  {
    return 0;
  }

  return a5(v5, v6);
}

uint64_t CertificateMessage.write(into:)(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v51 = *MEMORY[0x1E69E9840];
  v10 = *a1;
  v11 = a1[1];
  v12 = v11 >> 62;
  if ((v11 >> 62) > 1)
  {
    v15 = 0;
    if (v12 == 2)
    {
      v15 = *(v10 + 24);
    }
  }

  else
  {
    v13 = BYTE6(v11);
    v14 = v10 >> 32;
    if (v12)
    {
      v15 = v14;
    }

    else
    {
      v15 = v13;
    }
  }

  LOBYTE(v46) = 0;
  v16 = MEMORY[0x1E69E6290];
  v17 = MEMORY[0x1E6969DF8];
  v49 = MEMORY[0x1E69E6290];
  v50 = MEMORY[0x1E6969DF8];
  v47 = &v46;
  v48 = (&v46 + 1);
  v18 = __swift_project_boxed_opaque_existential_0(&v47, MEMORY[0x1E69E6290]);
  v20 = *v18;
  v19 = v18[1];
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v47);
  v21 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v21 == 2)
    {
      v23 = *(a2 + 16);
      v22 = *(a2 + 24);
    }

    else
    {
      v22 = 0;
      v23 = 0;
    }
  }

  else
  {
    if (v21)
    {
      v22 = a2 >> 32;
    }

    else
    {
      v22 = BYTE6(a3);
    }

    if (v21)
    {
      v23 = a2;
    }

    else
    {
      v23 = 0;
    }
  }

  if (v22 < a4 || v22 < v23)
  {
    __break(1u);
    goto LABEL_43;
  }

  v24 = Data._Representation.subscript.getter();
  v26 = v25;
  Data.append(_:)();
  v27 = v26;
  v28 = v26 >> 62;
  if ((v26 >> 62) <= 1)
  {
    if (!v28)
    {
      outlined consume of Data._Representation(v24, v26);
      v24 = BYTE6(v26);
      goto LABEL_32;
    }

    goto LABEL_26;
  }

  if (v28 != 2)
  {
    goto LABEL_31;
  }

  v30 = *(v24 + 16);
  v29 = *(v24 + 24);
  outlined consume of Data._Representation(v24, v27);
  v24 = v29 - v30;
  if (__OFSUB__(v29, v30))
  {
    __break(1u);
LABEL_26:
    outlined consume of Data._Representation(v24, v27);
    if (__OFSUB__(HIDWORD(v24), v24))
    {
      goto LABEL_46;
    }

    v24 = HIDWORD(v24) - v24;
  }

  if ((v24 & 0x8000000000000000) != 0)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (v24 <= 0xFF)
  {
    goto LABEL_32;
  }

  __break(1u);
LABEL_31:
  outlined consume of Data._Representation(v24, v27);
  v24 = 0;
LABEL_32:
  _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs5UInt8V_Tt1g5(v24, v15);
  v31 = *a1;
  v32 = a1[1];
  v33 = v32 >> 62;
  if ((v32 >> 62) > 1)
  {
    if (v33 == 2)
    {
      v34 = *(v31 + 24);
    }

    else
    {
      v34 = 0;
    }
  }

  else if (v33)
  {
    v34 = v31 >> 32;
  }

  else
  {
    v34 = BYTE6(v32);
  }

  LOBYTE(v46) = 0;
  v49 = v16;
  v50 = v17;
  v47 = &v46;
  v48 = (&v46 + 1);
  v35 = __swift_project_boxed_opaque_existential_0(&v47, v16);
  v37 = *v35;
  v36 = v35[1];
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v47);
  v46 = 0;
  v49 = v16;
  v50 = v17;
  v47 = &v46;
  v48 = &v47;
  v38 = __swift_project_boxed_opaque_existential_0(&v47, v16);
  v40 = *v38;
  v39 = v38[1];
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v47);
  v41 = specialized Sequence.reduce<A>(into:_:)(0, a5);
  if (v41 > 0xFFFFFF)
  {
    goto LABEL_44;
  }

  v42 = v41;
  v43 = _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs5UInt8V_Tt1g5(SBYTE2(v41), v34);
  if (__OFADD__(v34, v43))
  {
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
  }

  _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs6UInt16V_Tt1g5(v42, v34 + v43);
  v44 = *MEMORY[0x1E69E9840];
  return v24 + v42 + 4;
}

uint64_t ByteBuffer.writeCertificateEntry(_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = *MEMORY[0x1E69E9840];
  v9 = *v4;
  v10 = v4[1];
  v11 = v10 >> 62;
  if ((v10 >> 62) > 1)
  {
    v14 = 0;
    if (v11 == 2)
    {
      v14 = *(v9 + 24);
    }
  }

  else
  {
    v12 = BYTE6(v10);
    v13 = v9 >> 32;
    if (v11)
    {
      v14 = v13;
    }

    else
    {
      v14 = v12;
    }
  }

  LOBYTE(v45) = 0;
  v15 = MEMORY[0x1E69E6290];
  v16 = MEMORY[0x1E6969DF8];
  v48 = MEMORY[0x1E69E6290];
  v49 = MEMORY[0x1E6969DF8];
  v46 = &v45;
  v47 = (&v45 + 1);
  v17 = __swift_project_boxed_opaque_existential_0(&v46, MEMORY[0x1E69E6290]);
  v19 = *v17;
  v18 = v17[1];
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v46);
  v45 = 0;
  v48 = v15;
  v49 = v16;
  v46 = &v45;
  v47 = &v46;
  v20 = __swift_project_boxed_opaque_existential_0(&v46, v15);
  v22 = *v20;
  v21 = v20[1];
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v46);
  v23 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v23 == 2)
    {
      v24 = *(a1 + 16);
      v25 = *(a1 + 24);
    }

    else
    {
      v25 = 0;
      v24 = 0;
    }
  }

  else if (v23)
  {
    v24 = a1;
    v25 = a1 >> 32;
  }

  else
  {
    v24 = 0;
    v25 = BYTE6(a2);
  }

  if (v25 < a3 || v25 < v24)
  {
    __break(1u);
    goto LABEL_40;
  }

  v26 = Data._Representation.subscript.getter();
  v28 = v27;
  Data.append(_:)();
  v29 = v28;
  v30 = v28 >> 62;
  if ((v28 >> 62) <= 1)
  {
    if (!v30)
    {
      outlined consume of Data._Representation(v26, v28);
      v26 = BYTE6(v28);
      goto LABEL_28;
    }

    goto LABEL_23;
  }

  if (v30 != 2)
  {
    goto LABEL_27;
  }

  v32 = *(v26 + 16);
  v31 = *(v26 + 24);
  outlined consume of Data._Representation(v26, v29);
  v26 = v31 - v32;
  if (__OFSUB__(v31, v32))
  {
    __break(1u);
LABEL_23:
    outlined consume of Data._Representation(v26, v29);
    if (__OFSUB__(HIDWORD(v26), v26))
    {
      goto LABEL_43;
    }

    v26 = HIDWORD(v26) - v26;
  }

  if (v26 <= 0xFFFFFF)
  {
    goto LABEL_28;
  }

  __break(1u);
LABEL_27:
  outlined consume of Data._Representation(v26, v29);
  v26 = 0;
LABEL_28:
  v33 = _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs5UInt8V_Tt1g5(SBYTE2(v26), v14);
  if (__OFADD__(v14, v33))
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs6UInt16V_Tt1g5(v26, v14 + v33);
  v34 = *v4;
  v35 = v4[1];
  v36 = v35 >> 62;
  if ((v35 >> 62) > 1)
  {
    if (v36 == 2)
    {
      v37 = *(v34 + 24);
    }

    else
    {
      v37 = 0;
    }
  }

  else if (v36)
  {
    v37 = v34 >> 32;
  }

  else
  {
    v37 = BYTE6(v35);
  }

  v45 = 0;
  v48 = v15;
  v49 = v16;
  v46 = &v45;
  v47 = &v46;
  v38 = __swift_project_boxed_opaque_existential_0(&v46, v15);
  v40 = *v38;
  v39 = v38[1];
  Data._Representation.append(contentsOf:)();
  __swift_destroy_boxed_opaque_existential_0(&v46);
  v41 = specialized Sequence.reduce<A>(into:_:)(0, a4);
  if ((v41 & 0x8000000000000000) != 0)
  {
    goto LABEL_41;
  }

  v42 = v41;
  if (v41 >> 16)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }

  _s15SwiftTLSLibrary10ByteBufferV10setInteger_2at2asSix_Sixmts010FixedWidthF0RzlFs6UInt16V_Tt1g5(v41, v37);
  v43 = *MEMORY[0x1E69E9840];
  return v26 + v42 + 5;
}