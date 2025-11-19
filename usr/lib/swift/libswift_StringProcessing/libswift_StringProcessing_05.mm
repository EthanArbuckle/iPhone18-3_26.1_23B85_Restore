unint64_t specialized Dictionary._Variant.updateValue(_:forKey:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v12 = v9[2];
  v13 = __OFADD__(v12, (v11 ^ 1) & 1);
  v14 = v12 + ((v11 ^ 1) & 1);
  if (v13)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = v11;
  if (v9[3] < v14)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, isUniquelyReferenced_nonNull_native);
    result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v3 & 1) == (v15 & 1))
    {
      goto LABEL_6;
    }

    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v19 = result;
    specialized _NativeDictionary.copy()();
    result = v19;
    v16 = v9;
    if (v3)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

LABEL_6:
  v16 = v9;
  if (v3)
  {
LABEL_7:
    v17 = v16[7];
    v18 = *(v17 + 8 * result);
    *(v17 + 8 * result) = a1;
LABEL_12:
    *v4 = v16;
    return v18;
  }

LABEL_10:
  v16[(result >> 6) + 8] |= 1 << result;
  *(v16[6] + 8 * result) = a2;
  *(v16[7] + 8 * result) = a1;
  v20 = v16[2];
  v21 = v20 + 1;
  if (!__OFADD__(v20, 1))
  {
    v18 = 0;
    v16[2] = v21;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC17_StringProcessing9ProcessorV9SavePointV_Tt1g5(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17_StringProcessing9ProcessorV9SavePointVGMd, &_ss23_ContiguousArrayStorageCy17_StringProcessing9ProcessorV9SavePointVGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0xE38E38E38E38E39) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

uint64_t specialized Array.remove(at:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 72 * a1;
    v10 = *(v9 + 80);
    *(a2 + 32) = *(v9 + 64);
    *(a2 + 48) = v10;
    *(a2 + 64) = *(v9 + 96);
    v11 = *(v9 + 48);
    *a2 = *(v9 + 32);
    *(a2 + 16) = v11;
    result = memmove((v9 + 32), (v9 + 104), 72 * (v8 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t specialized Array._customRemoveLast()@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    v5 = *(v3 + 16);
    if (v5)
    {
LABEL_3:
      v6 = v3 + 72 * v5;
      v7 = *(v6 - 24);
      v8 = *(v6 + 8);
      *(a1 + 32) = *(v6 - 8);
      *(a1 + 48) = v8;
      *(a1 + 64) = *(v6 + 24);
      *a1 = *(v6 - 40);
      *(a1 + 16) = v7;
      *(v3 + 16) = v5 - 1;
      *v1 = v3;
      return result;
    }
  }

  else
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
    v5 = *(result + 16);
    if (v5)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
  return result;
}

unint64_t specialized Collection.count.getter(unint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v4 = a1;
  }

  v5 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v5 = 11;
  }

  v6 = v5 | (v4 << 16);
  v7 = _StringGuts.validateInclusiveScalarIndex(_:)(0xFuLL, a1, a2);
  v8 = _StringGuts.validateInclusiveScalarIndex(_:)(v6, a1, a2);
  result = v7;
  v10 = v7 >> 14;
  v11 = v8 >> 14;
  if (v10 < v8 >> 14)
  {
    for (i = 0; ; ++i)
    {
      v13 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        result = String.UnicodeScalarView._foreignIndex(after:)();
      }

      else
      {
        v14 = result >> 16;
        if ((a2 & 0x2000000000000000) != 0)
        {
          v28 = a1;
          v29 = a2 & 0xFFFFFFFFFFFFFFLL;
          v16 = *(&v28 + v14);
        }

        else
        {
          v15 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a1 & 0x1000000000000000) == 0)
          {
            v15 = _StringObject.sharedUTF8.getter();
          }

          v16 = *(v15 + v14);
        }

        v17 = v16;
        v18 = __clz(v16 ^ 0xFF) - 24;
        if (v17 >= 0)
        {
          LOBYTE(v18) = 1;
        }

        result = ((v14 + v18) << 16) | 5;
      }

      if (v11 <= result >> 14)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
    return result;
  }

  if (v11 < v10)
  {
    v13 = 0;
    while (!__OFSUB__(v13--, 1))
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        result = String.UnicodeScalarView._foreignIndex(before:)();
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v28 = a1;
          v29 = a2 & 0xFFFFFFFFFFFFFFLL;
          if ((*(&v28 + (result >> 16) - 1) & 0xC0) == 0x80)
          {
            v25 = &v28 + (result >> 16) - 2;
            v24 = 1;
            do
            {
              ++v24;
              v26 = *v25--;
            }

            while ((v26 & 0xC0) == 0x80);
          }

          else
          {
            v24 = 1;
          }
        }

        else
        {
          v20 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a1 & 0x1000000000000000) == 0)
          {
            v27 = result;
            v20 = _StringObject.sharedUTF8.getter();
            result = v27;
          }

          v21 = 0;
          v22 = v20 + (result >> 16) - 1;
          do
          {
            v23 = *(v22 + v21--) & 0xC0;
          }

          while (v23 == 128);
          v24 = -v21;
        }

        result = (result - (v24 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
      }

      if (v11 >= result >> 14)
      {
        return v13;
      }
    }

    goto LABEL_40;
  }

  return 0;
}

unint64_t _StringGuts.validateScalarIndex(_:in:)(unint64_t result, unint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = (a5 & 0x1000000000000000) == 0 || (a4 & 0x800000000000000) != 0;
  v6 = result & 0xC;
  v7 = 4 << v5;
  if ((result & 1) == 0 || v6 == v7)
  {
LABEL_9:
    if (v6 == v7)
    {
      v10 = a3;
      v11 = a2;
      v9 = a5;
      v8 = a4;
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(result, a4, a5);
      a3 = v10;
      a2 = v11;
      a4 = v8;
      a5 = v9;
    }

    if (result >> 14 < a2 >> 14 || result >> 14 >= a3 >> 14)
    {
      __break(1u);
    }

    else if (result)
    {
      return result;
    }

    return result & 0xC | _StringGuts.scalarAlignSlow(_:)(result, a4, a5) & 0xFFFFFFFFFFFFFFF3 | 1;
  }

  v6 = result >> 14;
  if (result >> 14 < a2 >> 14 || (v7 = a3 >> 14, v6 >= a3 >> 14))
  {
    __break(1u);
    goto LABEL_9;
  }

  return result;
}

uint64_t specialized Zip2Sequence.Iterator.next()@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CaptureList.Capture();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x1EEE9AC00](v3);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 56) != 1)
  {
    v11 = *(v1 + 32);
    v12 = *(v1 + 24) >> 1;
    if (v11 != v12)
    {
      if (v11 >= v12 || v11 < *(v1 + 16))
      {
        __break(1u);
      }

      else
      {
        v14 = *(v4 + 16);
        v15 = *(v1 + 8) + *(v4 + 72) * v11;
        *(v1 + 32) = v11 + 1;
        result = v14(v8, v15, v3);
        v16 = *(v1 + 40);
        v17 = *(v1 + 48);
        v18 = *(v16 + 16);
        if (v17 == v18)
        {
          (*(v4 + 8))(v8, v3);
          goto LABEL_12;
        }

        if (v17 < v18)
        {
          v20 = v16 + 72 * v17;
          *(v1 + 48) = v17 + 1;
          v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser11CaptureListV0C0V_17_StringProcessing9ProcessorV07_StoredC0VtMd, &_s12_RegexParser11CaptureListV0C0V_17_StringProcessing9ProcessorV07_StoredC0VtMR);
          v22 = *(v21 + 48);
          (*(v4 + 32))(a1, v8, v3);
          outlined init with copy of Processor._StoredCapture((v20 + 32), a1 + v22);
          return (*(*(v21 - 8) + 56))(a1, 0, 1, v21);
        }
      }

      __break(1u);
      return result;
    }

LABEL_12:
    *(v1 + 56) = 1;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser11CaptureListV0C0V_17_StringProcessing9ProcessorV07_StoredC0VtMd, &_s12_RegexParser11CaptureListV0C0V_17_StringProcessing9ProcessorV07_StoredC0VtMR);
    return (*(*(v19 - 8) + 56))(a1, 1, 1, v19);
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser11CaptureListV0C0V_17_StringProcessing9ProcessorV07_StoredC0VtMd, &_s12_RegexParser11CaptureListV0C0V_17_StringProcessing9ProcessorV07_StoredC0VtMR);
  v10 = *(*(v9 - 8) + 56);

  return v10(a1, 1, 1, v9);
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSJ_Tt1gq5(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySJGMd, &_ss23_ContiguousArrayStorageCySJGMR);
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

uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t result, Swift::String_optional *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = result;
  v6 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v6 = a4 & 0xFFFFFFFFFFFFLL;
  }

  v13 = a4;
  v14 = a5;
  *&v15 = 0;
  *(&v15 + 1) = v6;
  *&v7 = 0;
  *(&v7 + 1) = v6;
  if (!a2)
  {
LABEL_12:
    v8 = 0;
    goto LABEL_16;
  }

  v8 = a3;
  if (!a3)
  {
LABEL_16:
    *v5 = a4;
    *(v5 + 8) = a5;
    *(v5 + 16) = v7;
    return v8;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v10 = 1;
    while (1)
    {
      v11 = String.Iterator.next()();
      if (!v11.value._object)
      {
        a4 = v13;
        a5 = v14;
        v8 = v10 - 1;
        goto LABEL_15;
      }

      *v9 = v11;
      if (v8 == v10)
      {
        break;
      }

      ++v9;
      if (__OFADD__(v10++, 1))
      {
        __break(1u);
        goto LABEL_12;
      }
    }

    a4 = v13;
    a5 = v14;
LABEL_15:
    v7 = v15;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t specialized DefaultIndices.formIndex(after:)(unint64_t *a1, unint64_t a2, unint64_t a3)
{
  v6 = _StringGuts.validateScalarIndex(_:)(*a1, a2, a3);
  if ((a3 & 0x1000000000000000) != 0)
  {
    result = String.UnicodeScalarView._foreignIndex(after:)();
  }

  else
  {
    v7 = v6 >> 16;
    if ((a3 & 0x2000000000000000) != 0)
    {
      v13[0] = a2;
      v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
      v9 = *(v13 + v7);
    }

    else
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        v8 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        v8 = _StringObject.sharedUTF8.getter();
      }

      v9 = *(v8 + v7);
    }

    v10 = v9;
    v11 = __clz(v9 ^ 0xFF) - 24;
    if (v10 >= 0)
    {
      LOBYTE(v11) = 1;
    }

    result = ((v7 + v11) << 16) | 5;
  }

  *a1 = result;
  return result;
}

uint64_t specialized DefaultIndices<>.index(before:)(unint64_t a1, unint64_t a2, unint64_t a3)
{
  v5 = _StringGuts.validateInclusiveScalarIndex(_:)(a1, a2, a3);
  if (v5 < 0x4000)
  {
    __break(1u);
  }

  else if ((a3 & 0x1000000000000000) == 0)
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v15[0] = a2;
      v15[1] = a3 & 0xFFFFFFFFFFFFFFLL;
      v10 = v15 + (v5 >> 16);
      if ((*(v10 - 1) & 0xC0) == 0x80)
      {
        v8 = -2;
        do
        {
          v11 = v10[v8--] & 0xC0;
        }

        while (v11 == 128);
        goto LABEL_13;
      }
    }

    else
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        v14 = v5;
        v6 = _StringObject.sharedUTF8.getter();
        v5 = v14;
      }

      v7 = v6 + (v5 >> 16);
      if ((*(v7 - 1) & 0xC0) == 0x80)
      {
        v8 = -2;
        do
        {
          v9 = *(v7 + v8--) & 0xC0;
        }

        while (v9 == 128);
LABEL_13:
        v12 = v8 + 1;
        return (v5 + (v12 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
      }
    }

    v12 = -1;
    return (v5 + (v12 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
  }

  return String.UnicodeScalarView._foreignIndex(before:)();
}

uint64_t specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    while (1)
    {
      v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v2, 0);
      result = _StringGuts.copyUTF8(into:)();
      if (v5)
      {
        break;
      }

      if (result == v2)
      {
        return v3;
      }

      __break(1u);
LABEL_9:
      v2 = String.UTF8View._foreignCount()();
      if (!v2)
      {
        return MEMORY[0x1E69E7CC0];
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t _sSl17_StringProcessingSQ7ElementRpzrlE7_ranges2ofAA14RangesSequenceVyAA9ZSearcherVyxGGqd___tSlRd__ABQyd__ACRSlFSbAC_ACtcfu_Ss_SSTt1G5(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

void *_sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSJ_SiTt0g5Tf4g_n(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySJSiGMd, &_ss18_DictionaryStorageCySJSiGMR);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = specialized __RawDictionaryStorage.find<A>(_:)(v4, v5);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v5;
  v11 = a1 + 9;
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    v12 = (v3[6] + 16 * v9);
    *v12 = v4;
    v12[1] = result;
    *(v3[7] + 8 * v9) = v6;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 2);
    v17 = *(v11 - 1);
    v6 = *v11;

    v9 = specialized __RawDictionaryStorage.find<A>(_:)(v4, v17);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized SubstringSearcher.State.init(text:pattern:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6)
{
  v9 = Substring.index(_:offsetBy:limitedBy:)();
  if (v10)
  {
    v11 = a6;
  }

  else
  {
    v11 = v9;
  }

  if (v11 >> 14 < a5 >> 14)
  {
    goto LABEL_31;
  }

  Substring.subscript.getter();
  v12 = Substring.distance(from:to:)();

  v13 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSJ_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v14 = a5;
  v15 = v13;
  if (v12 != 4)
  {
    Substring.distance(from:to:)();
LABEL_25:

    if (a4)
    {
      Substring.index(_:offsetBy:limitedBy:)();
    }

    return v15;
  }

  if ((v14 ^ a6) < 0x4000)
  {
    goto LABEL_25;
  }

  v36 = a4;
  v16 = 0;
  while (1)
  {
    v17 = Substring.subscript.getter();
    v19 = v18;
    v20 = Substring.index(after:)();
    if (__OFADD__(v16, 1))
    {
      break;
    }

    v21 = v20;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = specialized __RawDictionaryStorage.find<A>(_:)(v17, v19);
    v25 = v15[2];
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_29;
    }

    v28 = v23;
    if (v15[3] >= v27)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v23)
        {
          goto LABEL_10;
        }
      }

      else
      {
        specialized _NativeDictionary.copy()();
        if (v28)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v27, isUniquelyReferenced_nonNull_native);
      v29 = specialized __RawDictionaryStorage.find<A>(_:)(v17, v19);
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_32;
      }

      v24 = v29;
      if (v28)
      {
LABEL_10:

        *(v15[7] + 8 * v24) = v16;
        goto LABEL_11;
      }
    }

    v15[(v24 >> 6) + 8] |= 1 << v24;
    v31 = (v15[6] + 16 * v24);
    *v31 = v17;
    v31[1] = v19;
    *(v15[7] + 8 * v24) = v16;
    v32 = v15[2];
    v33 = __OFADD__(v32, 1);
    v34 = v32 + 1;
    if (v33)
    {
      goto LABEL_30;
    }

    v15[2] = v34;
LABEL_11:
    ++v16;
    if ((v21 ^ a6) < 0x4000)
    {
      a4 = v36;
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t specialized static RegexCompilationError.== infix(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    if (a3 == 1)
    {
      if (a6 == 1)
      {
        if (a1 == a4 && a2 == a5)
        {
          return 1;
        }

        else
        {
          return _stringCompareWithSmolCheck(_:_:expecting:)();
        }
      }
    }

    else if (a6 == 2 && !(a5 | a4))
    {
      return 1;
    }

    return 0;
  }

  if (a6)
  {
    return 0;
  }

  return a1 == a4 && a2 == a5;
}

uint64_t specialized Collection._failEarlyRangeCheck(_:bounds:)()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v1 = *(type metadata accessor for Range() + 36);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

unint64_t specialized Instruction.OpCode.init(rawValue:)(unint64_t result)
{
  if (result >= 0x1E)
  {
    return 30;
  }

  return result;
}

unint64_t specialized _CharacterClassModel.Representation.init(rawValue:)(unint64_t result)
{
  if (result >= 8)
  {
    return 8;
  }

  return result;
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t result, int64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  if (v5 < a2)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v6 = result;
  v7 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v8 = result - a2;
  if (__OFSUB__(0, v7))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v9 = v5 - v7;
  if (__OFADD__(v5, v8))
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v10 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v9 > *(v4 + 3) >> 1)
  {
    if (v5 <= v9)
    {
      v12 = v5 + v8;
    }

    else
    {
      v12 = v5;
    }

    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v12, 1, v4);
  }

  result = swift_arrayDestroy();
  if (!v7)
  {
    goto LABEL_19;
  }

  v13 = *(v4 + 2);
  v14 = __OFSUB__(v13, a2);
  v15 = v13 - a2;
  if (v14)
  {
    goto LABEL_25;
  }

  v16 = &v4[72 * a2 + 32];
  if (v6 != a2 || &v4[72 * v6 + 32] >= &v16[72 * v15])
  {
    result = memmove(&v4[72 * v6 + 32], v16, 72 * v15);
  }

  v17 = *(v4 + 2);
  v14 = __OFADD__(v17, v8);
  v18 = v17 - v7;
  if (!v14)
  {
    *(v4 + 2) = v18;
LABEL_19:
    *v2 = v4;
    return result;
  }

LABEL_26:
  __break(1u);
  return result;
}

unint64_t specialized CaptureTransform.description.getter()
{
  _StringGuts.grow(_:)(43);

  v0 = _typeName(_:qualified:)();
  MEMORY[0x193ACE8E0](v0);

  MEMORY[0x193ACE8E0](0x5F746C7573657220, 0xED00003D65707974);
  v1 = _typeName(_:qualified:)();
  MEMORY[0x193ACE8E0](v1);

  MEMORY[0x193ACE8E0](62, 0xE100000000000000);
  return 0xD000000000000019;
}

void *_sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSJ_17_StringProcessing8TypedIntVyAC16_ElementRegisterOGTt0g5Tf4g_n(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySJ17_StringProcessing8TypedIntVyAC16_ElementRegisterOGGMd, &_ss18_DictionaryStorageCySJ17_StringProcessing8TypedIntVyAC16_ElementRegisterOGGMR);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = specialized __RawDictionaryStorage.find<A>(_:)(v4, v5);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v5;
  v11 = a1 + 9;
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    v12 = (v3[6] + 16 * v9);
    *v12 = v4;
    v12[1] = result;
    *(v3[7] + 8 * v9) = v6;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 2);
    v17 = *(v11 - 1);
    v6 = *v11;

    v9 = specialized __RawDictionaryStorage.find<A>(_:)(v4, v17);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void *_sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSays5UInt8VG_17_StringProcessing8TypedIntVyAF13_UTF8RegisterOGTt0g5Tf4g_n(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySays5UInt8VG17_StringProcessing8TypedIntVyAF13_UTF8RegisterOGGMd, &_ss18_DictionaryStorageCySays5UInt8VG17_StringProcessing8TypedIntVyAF13_UTF8RegisterOGGMR);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = a1[4];
  v5 = a1[5];
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v4;
  v10 = a1 + 7;
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = result;
    *(v3[7] + 8 * v8) = v5;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v15 = *(v10 - 1);
    v5 = *v10;

    v8 = specialized __RawDictionaryStorage.find<A>(_:)(v15);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void *_sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC17_StringProcessing11ReferenceIDV_SayAC8TypedIntVyAC19_InstructionAddressOGGTt0g5Tf4g_n(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy17_StringProcessing11ReferenceIDVSayAC8TypedIntVyAC19_InstructionAddressOGGGMd, &_ss18_DictionaryStorageCy17_StringProcessing11ReferenceIDVSayAC8TypedIntVyAC19_InstructionAddressOGGGMR);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = a1[4];
  v5 = a1[5];
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = a1 + 7;
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC17_StringProcessing11ReferenceIDV_SiTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy17_StringProcessing11ReferenceIDVSiGMd, &_ss18_DictionaryStorageCy17_StringProcessing11ReferenceIDVSiGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t specialized DSLTree.CustomCharacterClass.AsciiBitset.init(low:high:isInverted:isCaseInsensitive:)(uint64_t result, unsigned __int8 a2, char a3, char a4)
{
  if (a2 < result)
  {
    __break(1u);
  }

  else
  {
    v5 = 0;
    v6 = 0;
    for (i = result; ; ++i)
    {
      v8 = i;
      if (i >= 64)
      {
        v9 = 1 << i;
      }

      else
      {
        v9 = 0;
      }

      v10 = v9 | v5;
      if (i <= 0x3F)
      {
        v6 |= 1 << i;
      }

      else
      {
        v5 = v10;
      }

      if (a4)
      {
        v11 = v5 | (0x100000000 << (i & 0x1F));
        if (i - 123 >= 0xFFFFFFE6)
        {
          v5 |= 1 << (i & 0x1F);
        }

        if (i - 91 > 0xFFFFFFE4)
        {
          v5 = v11;
        }
      }

      if (a2 == i)
      {
        break;
      }

      if (v8 == 255)
      {
        __break(1u);
        return a3 & 1;
      }
    }

    return a3 & 1;
  }

  return result;
}

uint64_t specialized Collection.dropLast(_:)(uint64_t result, uint64_t a2, unint64_t a3, uint64_t (*a4)(uint64_t, unint64_t), uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, unint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, unint64_t))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  v9 = result;
  result = a4(a2, a3);
  if (__OFSUB__(result, v9))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v10 = (result - v9) & ~((result - v9) >> 63);
  v11 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v11 = a2;
  }

  v12 = v11 << 16;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v13 = 11;
  }

  else
  {
    v13 = 7;
  }

  v14 = a5(15, v10, v13 | (v11 << 16), a2, a3);
  v16 = v12 | 0xB;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) == 0)
  {
    v16 = v12 | 7;
  }

  if (v15)
  {
    v17 = v16;
  }

  else
  {
    v17 = v14;
  }

  return a6(15, v17, a2, a3);
}

unint64_t specialized Collection.dropFirst(_:)(unint64_t result, uint64_t a2, unint64_t a3, uint64_t (*a4)(uint64_t, unint64_t, unint64_t, uint64_t, unint64_t), uint64_t (*a5)(void))
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v5 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v6 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v6 = 11;
  }

  v7 = v6 | (v5 << 16);
  result = a4(15, result, v7, a2, a3);
  if (v8)
  {
    result = v7;
  }

  if (4 * v5 < result >> 14)
  {
    goto LABEL_14;
  }

  return a5();
}

uint64_t specialized _ArrayProtocol.filter(_:)(uint64_t a1, uint64_t a2)
{
  v69 = a2;
  v66 = type metadata accessor for DSLTree.Atom(0);
  v3 = *(*(v66 - 8) + 64);
  MEMORY[0x1EEE9AC00](v66);
  v71 = (&v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for DSLTree.CustomCharacterClass.Member(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v72 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = (&v65 - v10);
  MEMORY[0x1EEE9AC00](v9);
  v14 = &v65 - v13;
  v15 = *(a1 + 16);
  if (v15)
  {
    v16 = *(v12 + 72);
    v68 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v17 = a1 + v68;
    v73 = MEMORY[0x1E69E7CC0];
    v67 = v5;
    v70 = v16;
    while (1)
    {
      outlined init with copy of DSLTree._AST.AbsentFunction(v17, v14, type metadata accessor for DSLTree.CustomCharacterClass.Member);
      outlined init with copy of DSLTree._AST.AbsentFunction(v14, v11, type metadata accessor for DSLTree.CustomCharacterClass.Member);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 4)
      {
        outlined destroy of MEProgram(v11, type metadata accessor for DSLTree.CustomCharacterClass.Member);
      }

      else
      {
        if (EnumCaseMultiPayload == 3)
        {
          v22 = *v11;
          v23 = v11[1];
          if ((v23 & 0x2000000000000000) == 0)
          {
            v24 = *v11;
          }

          v25 = *v11;
          v26 = v11[1];
          v27 = String.subscript.getter();
          specialized Collection<>._ranges<A>(of:)(92, 0xE100000000000000, v27, v28, v29, v30, &v78);

          v89[0] = v78;
          v89[1] = v79;
          v89[2] = v80;
          v89[3] = v81;
          v31 = specialized RangeReplaceableCollection._replacing<A, B>(_:with:maxReplacements:)(v89, 0x5C5CuLL, 0xE200000000000000, 0x7FFFFFFFFFFFFFFFLL, v22, v23);
          v33 = v32;
          v82 = v78;
          v83 = v79;
          v84 = v80;
          v85 = v81;
          outlined destroy of SplitSequence<SubstringSearcher>(&v82, &_s17_StringProcessing14RangesSequenceVyAA9ZSearcherVySsGGMd, &_s17_StringProcessing14RangesSequenceVyAA9ZSearcherVySsGGMR);

          v34 = String.subscript.getter();
          specialized Collection<>._ranges<A>(of:)(34, 0xE100000000000000, v34, v35, v36, v37, &v74);

          v88[0] = v74;
          v88[1] = v75;
          v88[2] = v76;
          v88[3] = v77;
          v38 = specialized RangeReplaceableCollection._replacing<A, B>(_:with:maxReplacements:)(v88, 0x225CuLL, 0xE200000000000000, 0x7FFFFFFFFFFFFFFFLL, v31, v33);
          v40 = v39;
          v78 = v74;
          v79 = v75;
          v80 = v76;
          v81 = v77;
          outlined destroy of SplitSequence<SubstringSearcher>(&v78, &_s17_StringProcessing14RangesSequenceVyAA9ZSearcherVySsGGMd, &_s17_StringProcessing14RangesSequenceVyAA9ZSearcherVySsGGMR);

          MEMORY[0x193ACE8E0](v38, v40);
        }

        else
        {
          if (EnumCaseMultiPayload)
          {
            v20 = type metadata accessor for DSLTree.CustomCharacterClass.Member;
            v21 = v11;
            goto LABEL_17;
          }

          outlined init with take of DSLTree.QuantificationKind(v11, v71, type metadata accessor for DSLTree.Atom);
          v19 = swift_getEnumCaseMultiPayload();
          if (v19)
          {
            if (v19 != 1)
            {
              v20 = type metadata accessor for DSLTree.Atom;
              v21 = v71;
LABEL_17:
              outlined destroy of MEProgram(v21, v20);
              outlined init with take of DSLTree.QuantificationKind(v14, v72, type metadata accessor for DSLTree.CustomCharacterClass.Member);
              v41 = v73;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v90 = v41;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v41 + 16) + 1, 1);
                v41 = v90;
              }

              v44 = *(v41 + 16);
              v43 = *(v41 + 24);
              if (v44 >= v43 >> 1)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v43 > 1, v44 + 1, 1);
                v41 = v90;
              }

              *(v41 + 16) = v44 + 1;
              v73 = v41;
              v45 = v41 + v68 + v44 * v70;
              v16 = v70;
              outlined init with take of DSLTree.QuantificationKind(v72, v45, type metadata accessor for DSLTree.CustomCharacterClass.Member);
              goto LABEL_5;
            }

            v46 = *v71;
            *&v82 = 8090972;
            *(&v82 + 1) = 0xE300000000000000;
            LODWORD(v78) = v46;
            lazy protocol witness table accessor for type UInt32 and conformance UInt32();
            v47 = String.init<A>(_:radix:uppercase:)();
            MEMORY[0x193ACE8E0](v47);

            MEMORY[0x193ACE8E0](125, 0xE100000000000000);
            MEMORY[0x193ACE8E0](v82, *(&v82 + 1));
          }

          else
          {
            v48 = *v71;
            v49 = *(v71 + 1);
            v50 = String.subscript.getter();
            specialized Collection<>._ranges<A>(of:)(92, 0xE100000000000000, v50, v51, v52, v53, &v78);

            v87[0] = v78;
            v87[1] = v79;
            v87[2] = v80;
            v87[3] = v81;
            v54 = specialized RangeReplaceableCollection._replacing<A, B>(_:with:maxReplacements:)(v87, 0x5C5CuLL, 0xE200000000000000, 0x7FFFFFFFFFFFFFFFLL, v48, v49);
            v56 = v55;
            v82 = v78;
            v83 = v79;
            v84 = v80;
            v85 = v81;
            outlined destroy of SplitSequence<SubstringSearcher>(&v82, &_s17_StringProcessing14RangesSequenceVyAA9ZSearcherVySsGGMd, &_s17_StringProcessing14RangesSequenceVyAA9ZSearcherVySsGGMR);
            v57 = String.subscript.getter();
            specialized Collection<>._ranges<A>(of:)(34, 0xE100000000000000, v57, v58, v59, v60, &v74);

            v86[0] = v74;
            v86[1] = v75;
            v86[2] = v76;
            v86[3] = v77;
            v61 = specialized RangeReplaceableCollection._replacing<A, B>(_:with:maxReplacements:)(v86, 0x225CuLL, 0xE200000000000000, 0x7FFFFFFFFFFFFFFFLL, v54, v56);
            v63 = v62;
            v78 = v74;
            v79 = v75;
            v80 = v76;
            v81 = v77;
            outlined destroy of SplitSequence<SubstringSearcher>(&v78, &_s17_StringProcessing14RangesSequenceVyAA9ZSearcherVySsGGMd, &_s17_StringProcessing14RangesSequenceVyAA9ZSearcherVySsGGMR);

            MEMORY[0x193ACE8E0](v61, v63);

            v16 = v70;
          }
        }
      }

      outlined destroy of MEProgram(v14, type metadata accessor for DSLTree.CustomCharacterClass.Member);
LABEL_5:
      v17 += v16;
      if (!--v15)
      {
        return v73;
      }
    }
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t specialized SetAlgebra<>.init(arrayLiteral:)(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t specialized QuantifyPayload.PayloadType.init(rawValue:)(unint64_t a1)
{
  if (a1 >= 5)
  {
    return 4;
  }

  else
  {
    return (0x304020100uLL >> (8 * a1));
  }
}

uint64_t specialized LiteralPrinter.prepareQuotedLiteral(_:)(uint64_t result, unint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3)
  {
    if (*(a3 + 4 * v3 + 28) & 0x300000) != 0 || (v4 = result, v5 = a2, v6 = String.containsRegexMetaCharacters.getter(result, a2), a2 = v5, v7 = v6, result = v4, (v7))
    {
      MEMORY[0x193ACE8E0](result, a2);
      MEMORY[0x193ACE8E0](17756, 0xE200000000000000);
      return 20828;
    }

    else
    {
      swift_getCanonicalSpecializedMetadata();
      swift_getCanonicalSpecializedMetadata();
      lazy protocol witness table accessor for type LazyMapSequence<String, String> and conformance <> LazyMapSequence<A, B>();

      v8 = BidirectionalCollection<>.joined(separator:)();

      return v8;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_18E5D1BEC()
{
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t outlined init with copy of Any?(uint64_t a1, uint64_t a2)
{
  CanonicalSpecializedMetadata = swift_getCanonicalSpecializedMetadata();
  (*(*(CanonicalSpecializedMetadata - 8) + 16))(a2, a1, CanonicalSpecializedMetadata);
  return a2;
}

unint64_t lazy protocol witness table accessor for type RegexCompilationError and conformance RegexCompilationError()
{
  result = lazy protocol witness table cache variable for type RegexCompilationError and conformance RegexCompilationError;
  if (!lazy protocol witness table cache variable for type RegexCompilationError and conformance RegexCompilationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RegexCompilationError and conformance RegexCompilationError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RegexCompilationError and conformance RegexCompilationError;
  if (!lazy protocol witness table cache variable for type RegexCompilationError and conformance RegexCompilationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RegexCompilationError and conformance RegexCompilationError);
  }

  return result;
}

uint64_t sub_18E5D1DD0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t specialized Collection._failEarlyRangeCheck(_:bounds:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v13 = a5(0, AssociatedTypeWitness, AssociatedConformanceWitness);
  result = a6(a1, a2 + *(v13 + 36), AssociatedTypeWitness, AssociatedConformanceWitness);
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_18E5D1F10()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_18E5D1F48()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t specialized static DSLTree.Node.repeating(_:_:_:)(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  v8 = type metadata accessor for Source.Location();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = type metadata accessor for DSLTree.QuantificationKind(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v12);
  v17 = &v39 - v16;
  if (a1 < 0 || a1 == a2)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (*a3 <= 1u)
  {
    if (*a3)
    {
      v18 = MEMORY[0x1E69E8A90];
    }

    else
    {
      v18 = MEMORY[0x1E69E8A88];
    }

LABEL_9:
    v19 = *v18;
    v20 = type metadata accessor for AST.Quantification.Kind();
    (*(*(v20 - 8) + 104))(v14, v19, v20);
    swift_storeEnumTagMultiPayload();
    result = outlined init with take of DSLTree.QuantificationKind(v14, v17, type metadata accessor for DSLTree.QuantificationKind);
    if (!__OFSUB__(a2, 1))
    {
      goto LABEL_10;
    }

LABEL_19:
    __break(1u);
LABEL_20:
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4_ASTO20QuantificationAmountV_AC0E4KindOAC4NodeOtMd, &_s17_StringProcessing7DSLTreeV4_ASTO20QuantificationAmountV_AC0E4KindOAC4NodeOtMR);
    v22 = swift_allocBox();
    v24 = v35;
    v25 = *(v34 + 48);
    v26 = (v35 + *(v34 + 64));
    if (a1)
    {
      v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12_RegexParser3ASTV4AtomV6NumberV_AGtMd, &_s12_RegexParser3ASTV4AtomV6NumberV_AGtMR) + 48);
      static Source.Location.fake.getter();
      AST.Atom.Number.init(_:at:)();
      static Source.Location.fake.getter();
      AST.Atom.Number.init(_:at:)();
      v27 = MEMORY[0x1E69E8AB8];
    }

    else
    {
      static Source.Location.fake.getter();
      AST.Atom.Number.init(_:at:)();
      v27 = MEMORY[0x1E69E8AC0];
    }

    goto LABEL_25;
  }

  if (*a3 == 2)
  {
    v18 = MEMORY[0x1E69E8A80];
    goto LABEL_9;
  }

  result = swift_storeEnumTagMultiPayload();
  if (__OFSUB__(a2, 1))
  {
    goto LABEL_19;
  }

LABEL_10:
  if (a2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4_ASTO20QuantificationAmountV_AC0E4KindOAC4NodeOtMd, &_s17_StringProcessing7DSLTreeV4_ASTO20QuantificationAmountV_AC0E4KindOAC4NodeOtMR);
    v22 = swift_allocBox();
    v24 = v23;
    v25 = *(v21 + 48);
    v26 = (v23 + *(v21 + 64));
    if (a1 == 1)
    {
      v27 = MEMORY[0x1E69E8AD8];
    }

    else if (a1)
    {
      static Source.Location.fake.getter();
      AST.Atom.Number.init(_:at:)();
      v27 = MEMORY[0x1E69E8AD0];
    }

    else
    {
      v27 = MEMORY[0x1E69E8AB0];
    }

LABEL_25:
    v37 = *v27;
    v38 = type metadata accessor for AST.Quantification.Amount();
    (*(*(v38 - 8) + 104))(v24, v37, v38);
    outlined init with take of DSLTree.QuantificationKind(v17, v24 + v25, type metadata accessor for DSLTree.QuantificationKind);
    goto LABEL_26;
  }

  if (!__OFSUB__(a2, a1))
  {
    if (a2 - a1 == 1)
    {
      outlined destroy of MEProgram(v17, type metadata accessor for DSLTree.QuantificationKind);
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4_ASTO20QuantificationAmountV_AC0E4KindOAC4NodeOtMd, &_s17_StringProcessing7DSLTreeV4_ASTO20QuantificationAmountV_AC0E4KindOAC4NodeOtMR);
      v22 = swift_allocBox();
      v30 = v29;
      v31 = *(v28 + 48);
      v26 = (v29 + *(v28 + 64));
      static Source.Location.fake.getter();
      AST.Atom.Number.init(_:at:)();
      v32 = *MEMORY[0x1E69E8AC8];
      v33 = type metadata accessor for AST.Quantification.Amount();
      (*(*(v33 - 8) + 104))(v30, v32, v33);
      swift_storeEnumTagMultiPayload();
LABEL_26:
      *v26 = a4;

      return v22 | 0x3000000000000000;
    }

    goto LABEL_20;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_18E5D2504()
{
  v1 = *(v0 + 16) & 0xFFFFFFFFFFFFFFFLL;

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18E5D2544()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_18E5D259C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18E5D25D4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48) & 0xFFFFFFFFFFFFFFFLL;

  if (*(v0 + 56))
  {
    outlined consume of CaptureTransform.Closure(*(v0 + 72), *(v0 + 80), *(v0 + 88));
  }

  return MEMORY[0x1EEE6BDD0](v0, 89, 7);
}

uint64_t outlined consume of CaptureTransform.Closure(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _CompileOptions and conformance _CompileOptions()
{
  result = lazy protocol witness table cache variable for type _CompileOptions and conformance _CompileOptions;
  if (!lazy protocol witness table cache variable for type _CompileOptions and conformance _CompileOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _CompileOptions and conformance _CompileOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _CompileOptions and conformance _CompileOptions;
  if (!lazy protocol witness table cache variable for type _CompileOptions and conformance _CompileOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _CompileOptions and conformance _CompileOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _CompileOptions and conformance _CompileOptions;
  if (!lazy protocol witness table cache variable for type _CompileOptions and conformance _CompileOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _CompileOptions and conformance _CompileOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _CompileOptions and conformance _CompileOptions;
  if (!lazy protocol witness table cache variable for type _CompileOptions and conformance _CompileOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _CompileOptions and conformance _CompileOptions);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnyRegexOutput and conformance AnyRegexOutput()
{
  result = lazy protocol witness table cache variable for type AnyRegexOutput and conformance AnyRegexOutput;
  if (!lazy protocol witness table cache variable for type AnyRegexOutput and conformance AnyRegexOutput)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnyRegexOutput and conformance AnyRegexOutput);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnyRegexOutput and conformance AnyRegexOutput;
  if (!lazy protocol witness table cache variable for type AnyRegexOutput and conformance AnyRegexOutput)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnyRegexOutput and conformance AnyRegexOutput);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnyRegexOutput and conformance AnyRegexOutput;
  if (!lazy protocol witness table cache variable for type AnyRegexOutput and conformance AnyRegexOutput)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnyRegexOutput and conformance AnyRegexOutput);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnyRegexOutput and conformance AnyRegexOutput;
  if (!lazy protocol witness table cache variable for type AnyRegexOutput and conformance AnyRegexOutput)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnyRegexOutput and conformance AnyRegexOutput);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Int and conformance Int()
{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int and conformance Int);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Slice<AnyRegexOutput> and conformance <> Slice<A>(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SliceVy17_StringProcessing14AnyRegexOutputVGMd, &_ss5SliceVy17_StringProcessing14AnyRegexOutputVGMR);
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
    swift_getCanonicalSpecializedMetadata();
    lazy protocol witness table accessor for type Int and conformance Int();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DSLTree.Atom.Assertion and conformance DSLTree.Atom.Assertion()
{
  result = lazy protocol witness table cache variable for type DSLTree.Atom.Assertion and conformance DSLTree.Atom.Assertion;
  if (!lazy protocol witness table cache variable for type DSLTree.Atom.Assertion and conformance DSLTree.Atom.Assertion)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DSLTree.Atom.Assertion and conformance DSLTree.Atom.Assertion);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DSLTree.Atom.CharacterClass and conformance DSLTree.Atom.CharacterClass()
{
  result = lazy protocol witness table cache variable for type DSLTree.Atom.CharacterClass and conformance DSLTree.Atom.CharacterClass;
  if (!lazy protocol witness table cache variable for type DSLTree.Atom.CharacterClass and conformance DSLTree.Atom.CharacterClass)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DSLTree.Atom.CharacterClass and conformance DSLTree.Atom.CharacterClass);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ReferenceID and conformance ReferenceID()
{
  result = lazy protocol witness table cache variable for type ReferenceID and conformance ReferenceID;
  if (!lazy protocol witness table cache variable for type ReferenceID and conformance ReferenceID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ReferenceID and conformance ReferenceID);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RegexSemanticLevel and conformance RegexSemanticLevel()
{
  result = lazy protocol witness table cache variable for type RegexSemanticLevel and conformance RegexSemanticLevel;
  if (!lazy protocol witness table cache variable for type RegexSemanticLevel and conformance RegexSemanticLevel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RegexSemanticLevel and conformance RegexSemanticLevel);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RegexWordBoundaryKind and conformance RegexWordBoundaryKind()
{
  result = lazy protocol witness table cache variable for type RegexWordBoundaryKind and conformance RegexWordBoundaryKind;
  if (!lazy protocol witness table cache variable for type RegexWordBoundaryKind and conformance RegexWordBoundaryKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RegexWordBoundaryKind and conformance RegexWordBoundaryKind);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RegexRepetitionBehavior and conformance RegexRepetitionBehavior()
{
  result = lazy protocol witness table cache variable for type RegexRepetitionBehavior and conformance RegexRepetitionBehavior;
  if (!lazy protocol witness table cache variable for type RegexRepetitionBehavior and conformance RegexRepetitionBehavior)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RegexRepetitionBehavior and conformance RegexRepetitionBehavior);
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for AnyRegexOutput(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  a1[2] = a2[2];

  return a1;
}

void *assignWithCopy for AnyRegexOutput(void *a1, void *a2)
{
  *a1 = *a2;
  v4 = a1[1];
  a1[1] = a2[1];

  v5 = a2[2];
  v6 = a1[2];
  a1[2] = v5;

  return a1;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

void *assignWithTake for AnyRegexOutput(void *a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = a1[1];

  v5 = a1[2];
  *(a1 + 1) = *(a2 + 8);

  return a1;
}

uint64_t getEnumTagSinglePayload for AnyRegexOutput(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for AnyRegexOutput(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destroy for AnyRegexOutput.Element(uint64_t *a1)
{
  if (a1[6] >= 2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1 + 3);
  }

  v2 = a1[8];

  v3 = a1[12];
}

uint64_t initializeWithCopy for AnyRegexOutput.Element(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = (a1 + 8);
  v4 = *(a2 + 48);
  if (v4 == 1)
  {
    v5 = *(a2 + 24);
    *v3 = *(a2 + 8);
    *(a1 + 24) = v5;
    *(a1 + 40) = *(a2 + 40);
  }

  else
  {
    *v3 = *(a2 + 8);
    if (v4)
    {
      *(a1 + 48) = v4;
      v6 = a2;
      (**(v4 - 8))(a1 + 24, a2 + 24);
      a2 = v6;
    }

    else
    {
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 40) = *(a2 + 40);
    }
  }

  v7 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v7;
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  v8 = *(a2 + 96);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = v8;

  return a1;
}

uint64_t assignWithCopy for AnyRegexOutput.Element(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a1 + 48);
  v5 = *(a2 + 48);
  if (v4 != 1)
  {
    if (v5 == 1)
    {
      outlined destroy of SplitSequence<SubstringSearcher>(a1 + 8, &_sSnySS5IndexVG5range_ypSg5valuetMd, &_sSnySS5IndexVG5range_ypSg5valuetMR);
      v8 = *(a2 + 40);
      v9 = *(a2 + 24);
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 24) = v9;
      *(a1 + 40) = v8;
      goto LABEL_15;
    }

    *(a1 + 8) = *(a2 + 8);
    *(a1 + 16) = *(a2 + 16);
    v10 = *(a2 + 48);
    if (v4)
    {
      v11 = (a1 + 24);
      if (v10)
      {
        __swift_assign_boxed_opaque_existential_0(v11, (a2 + 24));
        goto LABEL_15;
      }

      __swift_destroy_boxed_opaque_existential_0(v11);
    }

    else if (v10)
    {
      goto LABEL_12;
    }

LABEL_14:
    v12 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 24) = v12;
    goto LABEL_15;
  }

  if (v5 != 1)
  {
    *(a1 + 8) = *(a2 + 8);
    v10 = *(a2 + 48);
    if (!v10)
    {
      goto LABEL_14;
    }

LABEL_12:
    *(a1 + 48) = v10;
    (**(v10 - 8))(a1 + 24, a2 + 24);
    goto LABEL_15;
  }

  v6 = *(a2 + 8);
  v7 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 24) = v7;
  *(a1 + 8) = v6;
LABEL_15:
  *(a1 + 56) = *(a2 + 56);
  v13 = *(a1 + 64);
  *(a1 + 64) = *(a2 + 64);

  v14 = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 72) = v14;
  *(a1 + 81) = *(a2 + 81);
  *(a1 + 88) = *(a2 + 88);
  v15 = *(a2 + 96);
  v16 = *(a1 + 96);
  *(a1 + 96) = v15;

  return a1;
}

uint64_t *__swift_assign_boxed_opaque_existential_0(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v14 = *result;
        v15 = *a2;
        v16 = result;

        *v16 = v15;
      }

      else
      {
        v11 = *(v10 + 24);
        v12 = result[3];

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        v13 = *result;
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v17);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v17, v2);
      }
    }
  }

  return result;
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t assignWithTake for AnyRegexOutput.Element(uint64_t a1, uint64_t a2)
{
  v4 = (a2 + 8);
  *a1 = *a2;
  v5 = *(a1 + 48);
  if (v5 == 1)
  {
    goto LABEL_4;
  }

  if (*(a2 + 48) == 1)
  {
    outlined destroy of SplitSequence<SubstringSearcher>(a1 + 8, &_sSnySS5IndexVG5range_ypSg5valuetMd, &_sSnySS5IndexVG5range_ypSg5valuetMR);
LABEL_4:
    v6 = v4[1];
    *(a1 + 8) = *v4;
    *(a1 + 24) = v6;
    v7 = v4[2];
    goto LABEL_8;
  }

  *(a1 + 8) = *(a2 + 8);
  if (v5)
  {
    __swift_destroy_boxed_opaque_existential_0((a1 + 24));
  }

  *(a1 + 24) = *(a2 + 24);
  v7 = *(a2 + 40);
LABEL_8:
  *(a1 + 40) = v7;
  v8 = *(a2 + 64);
  v9 = *(a1 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v8;

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 81) = *(a2 + 81);
  v10 = *(a2 + 96);
  v11 = *(a1 + 96);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = v10;

  return a1;
}

uint64_t getEnumTagSinglePayload for AnyRegexOutput.Element(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 96);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for AnyRegexOutput.Element(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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
      *(result + 96) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t type metadata completion function for Regex.Program.ProgramBox()
{
  result = type metadata accessor for MEProgram(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for Regex._RegexInternalAction(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Regex._RegexInternalAction(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

uint64_t getEnumTag for Regex._RegexInternalAction(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t destructiveInjectEnumTag for Regex._RegexInternalAction(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for DSLTree.CustomCharacterClass(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t *assignWithCopy for DSLTree.CustomCharacterClass(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  return a1;
}

uint64_t *assignWithTake for DSLTree.CustomCharacterClass(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  return a1;
}

uint64_t getEnumTagSinglePayload for DSLTree.CustomCharacterClass(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t storeEnumTagSinglePayload for DSLTree.CustomCharacterClass(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for DSLTree.CustomCharacterClass.Member(void *a1, void *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) == 0)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 3)
    {
      if (EnumCaseMultiPayload == 4)
      {
        v11 = a2[1];
        *a1 = *a2;
        a1[1] = v11;
      }

      else
      {
        *a1 = *a2;
      }

      goto LABEL_45;
    }

    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 8);
      }

      else
      {
        v15 = a2[1];
        *a1 = *a2;
        a1[1] = v15;
      }

      goto LABEL_45;
    }

    if (!EnumCaseMultiPayload)
    {
      v7 = type metadata accessor for DSLTree.Atom(0);
      v8 = swift_getEnumCaseMultiPayload();
      if (v8 > 5)
      {
        if (v8 == 6)
        {
          v20 = type metadata accessor for AST.MatchingOptionSequence();
          (*(*(v20 - 8) + 16))(a1, a2, v20);
          goto LABEL_44;
        }

        if (v8 == 7)
        {
          v16 = type metadata accessor for AST.Atom();
          (*(*(v16 - 8) + 16))(a1, a2, v16);
          goto LABEL_44;
        }
      }

      else
      {
        if (!v8)
        {
          v18 = a2[1];
          *a1 = *a2;
          a1[1] = v18;

          goto LABEL_44;
        }

        if (v8 == 4)
        {
          v9 = type metadata accessor for AST.Reference();
          (*(*(v9 - 8) + 16))(a1, a2, v9);
LABEL_44:
          swift_storeEnumTagMultiPayload();
          goto LABEL_45;
        }
      }

      memcpy(a1, a2, *(*(v7 - 8) + 64));
LABEL_45:
      swift_storeEnumTagMultiPayload();
      return a1;
    }

    v12 = type metadata accessor for DSLTree.Atom(0);
    v13 = swift_getEnumCaseMultiPayload();
    if (v13 > 5)
    {
      if (v13 == 6)
      {
        v21 = type metadata accessor for AST.MatchingOptionSequence();
        (*(*(v21 - 8) + 16))(a1, a2, v21);
        goto LABEL_33;
      }

      if (v13 == 7)
      {
        v17 = type metadata accessor for AST.Atom();
        (*(*(v17 - 8) + 16))(a1, a2, v17);
        goto LABEL_33;
      }
    }

    else
    {
      if (!v13)
      {
        v19 = a2[1];
        *a1 = *a2;
        a1[1] = v19;

        goto LABEL_33;
      }

      if (v13 == 4)
      {
        v14 = type metadata accessor for AST.Reference();
        (*(*(v14 - 8) + 16))(a1, a2, v14);
LABEL_33:
        swift_storeEnumTagMultiPayload();
        goto LABEL_34;
      }
    }

    memcpy(a1, a2, *(*(v12 - 8) + 64));
LABEL_34:
    v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4AtomO_AEtMd, "4_") + 48);
    v23 = (a1 + v22);
    v24 = (a2 + v22);
    v25 = swift_getEnumCaseMultiPayload();
    if (v25 > 5)
    {
      if (v25 == 6)
      {
        v29 = type metadata accessor for AST.MatchingOptionSequence();
        (*(*(v29 - 8) + 16))(v23, v24, v29);
        goto LABEL_44;
      }

      if (v25 == 7)
      {
        v27 = type metadata accessor for AST.Atom();
        (*(*(v27 - 8) + 16))(v23, v24, v27);
        goto LABEL_44;
      }
    }

    else
    {
      if (!v25)
      {
        v28 = v24[1];
        *v23 = *v24;
        v23[1] = v28;

        goto LABEL_44;
      }

      if (v25 == 4)
      {
        v26 = type metadata accessor for AST.Reference();
        (*(*(v26 - 8) + 16))(v23, v24, v26);
        goto LABEL_44;
      }
    }

    memcpy(v23, v24, *(*(v12 - 8) + 64));
    goto LABEL_45;
  }

  v10 = *a2;
  *a1 = *a2;
  a1 = (v10 + ((v5 + 16) & ~v5));

  return a1;
}

uint64_t destroy for DSLTree.CustomCharacterClass.Member(uint64_t *a1)
{
  result = swift_getEnumCaseMultiPayload();
  if (result <= 3)
  {
    if (result <= 1)
    {
      if (!result)
      {
        type metadata accessor for DSLTree.Atom(0);
LABEL_28:
        result = swift_getEnumCaseMultiPayload();
        if (result > 5)
        {
          if (result == 6)
          {
            v8 = type metadata accessor for AST.MatchingOptionSequence();
          }

          else
          {
            if (result != 7)
            {
              return result;
            }

            v8 = type metadata accessor for AST.Atom();
          }

          goto LABEL_41;
        }

        if (result)
        {
          if (result != 4)
          {
            return result;
          }

          v8 = type metadata accessor for AST.Reference();
LABEL_41:
          v10 = *(*(v8 - 8) + 8);

          return v10(a1, v8);
        }

        goto LABEL_32;
      }

      if (result != 1)
      {
        return result;
      }

      type metadata accessor for DSLTree.Atom(0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 5)
      {
        if (EnumCaseMultiPayload == 6)
        {
          v4 = type metadata accessor for AST.MatchingOptionSequence();
          goto LABEL_26;
        }

        if (EnumCaseMultiPayload == 7)
        {
          v4 = type metadata accessor for AST.Atom();
          goto LABEL_26;
        }
      }

      else if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 4)
        {
          v4 = type metadata accessor for AST.Reference();
LABEL_26:
          (*(*(v4 - 8) + 8))(a1, v4);
        }
      }

      else
      {
        v7 = a1[1];
      }

      a1 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4AtomO_AEtMd, "4_") + 48));
      goto LABEL_28;
    }

    if (result == 2)
    {
      v6 = *a1;
LABEL_33:
    }

LABEL_32:
    v9 = a1[1];
    goto LABEL_33;
  }

  if (result > 5)
  {
    if (result != 6 && result != 7)
    {
      return result;
    }
  }

  else if (result == 4)
  {
    goto LABEL_32;
  }

  v5 = *a1;
}

void *initializeWithCopy for DSLTree.CustomCharacterClass.Member(void *a1, void *a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload == 4)
    {
      v8 = a2[1];
      *a1 = *a2;
      a1[1] = v8;
    }

    else
    {
      *a1 = *a2;
    }

    goto LABEL_43;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
    }

    else
    {
      v12 = a2[1];
      *a1 = *a2;
      a1[1] = v12;
    }

    goto LABEL_43;
  }

  if (EnumCaseMultiPayload)
  {
    v9 = type metadata accessor for DSLTree.Atom(0);
    v10 = swift_getEnumCaseMultiPayload();
    if (v10 > 5)
    {
      if (v10 == 6)
      {
        v18 = type metadata accessor for AST.MatchingOptionSequence();
        (*(*(v18 - 8) + 16))(a1, a2, v18);
        goto LABEL_31;
      }

      if (v10 == 7)
      {
        v14 = type metadata accessor for AST.Atom();
        (*(*(v14 - 8) + 16))(a1, a2, v14);
        goto LABEL_31;
      }
    }

    else
    {
      if (!v10)
      {
        v16 = a2[1];
        *a1 = *a2;
        a1[1] = v16;

        goto LABEL_31;
      }

      if (v10 == 4)
      {
        v11 = type metadata accessor for AST.Reference();
        (*(*(v11 - 8) + 16))(a1, a2, v11);
LABEL_31:
        swift_storeEnumTagMultiPayload();
        goto LABEL_32;
      }
    }

    memcpy(a1, a2, *(*(v9 - 8) + 64));
LABEL_32:
    v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4AtomO_AEtMd, "4_") + 48);
    v20 = (a1 + v19);
    v21 = (a2 + v19);
    v22 = swift_getEnumCaseMultiPayload();
    if (v22 > 5)
    {
      if (v22 == 6)
      {
        v26 = type metadata accessor for AST.MatchingOptionSequence();
        (*(*(v26 - 8) + 16))(v20, v21, v26);
        goto LABEL_42;
      }

      if (v22 == 7)
      {
        v24 = type metadata accessor for AST.Atom();
        (*(*(v24 - 8) + 16))(v20, v21, v24);
        goto LABEL_42;
      }
    }

    else
    {
      if (!v22)
      {
        v25 = v21[1];
        *v20 = *v21;
        v20[1] = v25;

        goto LABEL_42;
      }

      if (v22 == 4)
      {
        v23 = type metadata accessor for AST.Reference();
        (*(*(v23 - 8) + 16))(v20, v21, v23);
        goto LABEL_42;
      }
    }

    memcpy(v20, v21, *(*(v9 - 8) + 64));
    goto LABEL_43;
  }

  v5 = type metadata accessor for DSLTree.Atom(0);
  v6 = swift_getEnumCaseMultiPayload();
  if (v6 > 5)
  {
    if (v6 == 6)
    {
      v17 = type metadata accessor for AST.MatchingOptionSequence();
      (*(*(v17 - 8) + 16))(a1, a2, v17);
      goto LABEL_42;
    }

    if (v6 == 7)
    {
      v13 = type metadata accessor for AST.Atom();
      (*(*(v13 - 8) + 16))(a1, a2, v13);
      goto LABEL_42;
    }
  }

  else
  {
    if (!v6)
    {
      v15 = a2[1];
      *a1 = *a2;
      a1[1] = v15;

      goto LABEL_42;
    }

    if (v6 == 4)
    {
      v7 = type metadata accessor for AST.Reference();
      (*(*(v7 - 8) + 16))(a1, a2, v7);
LABEL_42:
      swift_storeEnumTagMultiPayload();
      goto LABEL_43;
    }
  }

  memcpy(a1, a2, *(*(v5 - 8) + 64));
LABEL_43:
  swift_storeEnumTagMultiPayload();
  return a1;
}

void *assignWithCopy for DSLTree.CustomCharacterClass.Member(void *a1, void *a2)
{
  if (a1 != a2)
  {
    outlined destroy of MEProgram(a1, type metadata accessor for DSLTree.CustomCharacterClass.Member);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 3)
    {
      if (EnumCaseMultiPayload > 5)
      {
        *a1 = *a2;
      }

      else
      {
        *a1 = *a2;
        if (EnumCaseMultiPayload == 4)
        {
          a1[1] = a2[1];
        }

        else
        {
        }
      }

      goto LABEL_46;
    }

    if (EnumCaseMultiPayload > 1)
    {
      *a1 = *a2;
      if (EnumCaseMultiPayload == 2)
      {
        *(a1 + 8) = *(a2 + 8);
      }

      else
      {
        a1[1] = a2[1];
      }

      goto LABEL_46;
    }

    if (!EnumCaseMultiPayload)
    {
      v5 = type metadata accessor for DSLTree.Atom(0);
      v6 = swift_getEnumCaseMultiPayload();
      if (v6 > 5)
      {
        if (v6 == 6)
        {
          v13 = type metadata accessor for AST.MatchingOptionSequence();
          (*(*(v13 - 8) + 16))(a1, a2, v13);
          goto LABEL_45;
        }

        if (v6 == 7)
        {
          v11 = type metadata accessor for AST.Atom();
          (*(*(v11 - 8) + 16))(a1, a2, v11);
          goto LABEL_45;
        }
      }

      else
      {
        if (!v6)
        {
          *a1 = *a2;
          a1[1] = a2[1];

          goto LABEL_45;
        }

        if (v6 == 4)
        {
          v7 = type metadata accessor for AST.Reference();
          (*(*(v7 - 8) + 16))(a1, a2, v7);
LABEL_45:
          swift_storeEnumTagMultiPayload();
          goto LABEL_46;
        }
      }

      memcpy(a1, a2, *(*(v5 - 8) + 64));
LABEL_46:
      swift_storeEnumTagMultiPayload();
      return a1;
    }

    v8 = type metadata accessor for DSLTree.Atom(0);
    v9 = swift_getEnumCaseMultiPayload();
    if (v9 > 5)
    {
      if (v9 == 6)
      {
        v14 = type metadata accessor for AST.MatchingOptionSequence();
        (*(*(v14 - 8) + 16))(a1, a2, v14);
        goto LABEL_34;
      }

      if (v9 == 7)
      {
        v12 = type metadata accessor for AST.Atom();
        (*(*(v12 - 8) + 16))(a1, a2, v12);
        goto LABEL_34;
      }
    }

    else
    {
      if (!v9)
      {
        *a1 = *a2;
        a1[1] = a2[1];

        goto LABEL_34;
      }

      if (v9 == 4)
      {
        v10 = type metadata accessor for AST.Reference();
        (*(*(v10 - 8) + 16))(a1, a2, v10);
LABEL_34:
        swift_storeEnumTagMultiPayload();
        goto LABEL_35;
      }
    }

    memcpy(a1, a2, *(*(v8 - 8) + 64));
LABEL_35:
    v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4AtomO_AEtMd, "4_") + 48);
    v16 = (a1 + v15);
    v17 = (a2 + v15);
    v18 = swift_getEnumCaseMultiPayload();
    if (v18 > 5)
    {
      if (v18 == 6)
      {
        v21 = type metadata accessor for AST.MatchingOptionSequence();
        (*(*(v21 - 8) + 16))(v16, v17, v21);
        goto LABEL_45;
      }

      if (v18 == 7)
      {
        v20 = type metadata accessor for AST.Atom();
        (*(*(v20 - 8) + 16))(v16, v17, v20);
        goto LABEL_45;
      }
    }

    else
    {
      if (!v18)
      {
        *v16 = *v17;
        v16[1] = v17[1];

        goto LABEL_45;
      }

      if (v18 == 4)
      {
        v19 = type metadata accessor for AST.Reference();
        (*(*(v19 - 8) + 16))(v16, v17, v19);
        goto LABEL_45;
      }
    }

    memcpy(v16, v17, *(*(v8 - 8) + 64));
    goto LABEL_46;
  }

  return a1;
}

uint64_t outlined destroy of MEProgram(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *initializeWithTake for DSLTree.CustomCharacterClass.Member(char *a1, char *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v10 = type metadata accessor for DSLTree.Atom(0);
    v11 = swift_getEnumCaseMultiPayload();
    switch(v11)
    {
      case 7:
        v18 = type metadata accessor for AST.Atom();
        (*(*(v18 - 8) + 32))(a1, a2, v18);
        swift_storeEnumTagMultiPayload();
        break;
      case 6:
        v16 = type metadata accessor for AST.MatchingOptionSequence();
        (*(*(v16 - 8) + 32))(a1, a2, v16);
        swift_storeEnumTagMultiPayload();
        break;
      case 4:
        v12 = type metadata accessor for AST.Reference();
        (*(*(v12 - 8) + 32))(a1, a2, v12);
        swift_storeEnumTagMultiPayload();
        break;
      default:
        memcpy(a1, a2, *(*(v10 - 8) + 64));
        break;
    }

    v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4AtomO_AEtMd, "4_") + 48);
    v20 = swift_getEnumCaseMultiPayload();
    switch(v20)
    {
      case 7:
        v23 = type metadata accessor for AST.Atom();
        (*(*(v23 - 8) + 32))(&a1[v19], &a2[v19], v23);
        swift_storeEnumTagMultiPayload();
        break;
      case 6:
        v22 = type metadata accessor for AST.MatchingOptionSequence();
        (*(*(v22 - 8) + 32))(&a1[v19], &a2[v19], v22);
        swift_storeEnumTagMultiPayload();
        break;
      case 4:
        v21 = type metadata accessor for AST.Reference();
        (*(*(v21 - 8) + 32))(&a1[v19], &a2[v19], v21);
        swift_storeEnumTagMultiPayload();
        break;
      default:
        memcpy(&a1[v19], &a2[v19], *(*(v10 - 8) + 64));
        break;
    }

    goto LABEL_28;
  }

  if (!EnumCaseMultiPayload)
  {
    v7 = type metadata accessor for DSLTree.Atom(0);
    v8 = swift_getEnumCaseMultiPayload();
    switch(v8)
    {
      case 7:
        v17 = type metadata accessor for AST.Atom();
        (*(*(v17 - 8) + 32))(a1, a2, v17);
        swift_storeEnumTagMultiPayload();
        break;
      case 6:
        v15 = type metadata accessor for AST.MatchingOptionSequence();
        (*(*(v15 - 8) + 32))(a1, a2, v15);
        swift_storeEnumTagMultiPayload();
        break;
      case 4:
        v9 = type metadata accessor for AST.Reference();
        (*(*(v9 - 8) + 32))(a1, a2, v9);
        swift_storeEnumTagMultiPayload();
        break;
      default:
        memcpy(a1, a2, *(*(v7 - 8) + 64));
        break;
    }

LABEL_28:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v13 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v13);
}

char *assignWithTake for DSLTree.CustomCharacterClass.Member(char *a1, char *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  outlined destroy of MEProgram(a1, type metadata accessor for DSLTree.CustomCharacterClass.Member);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v10 = type metadata accessor for DSLTree.Atom(0);
    v11 = swift_getEnumCaseMultiPayload();
    switch(v11)
    {
      case 7:
        v18 = type metadata accessor for AST.Atom();
        (*(*(v18 - 8) + 32))(a1, a2, v18);
        swift_storeEnumTagMultiPayload();
        break;
      case 6:
        v16 = type metadata accessor for AST.MatchingOptionSequence();
        (*(*(v16 - 8) + 32))(a1, a2, v16);
        swift_storeEnumTagMultiPayload();
        break;
      case 4:
        v12 = type metadata accessor for AST.Reference();
        (*(*(v12 - 8) + 32))(a1, a2, v12);
        swift_storeEnumTagMultiPayload();
        break;
      default:
        memcpy(a1, a2, *(*(v10 - 8) + 64));
        break;
    }

    v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing7DSLTreeV4AtomO_AEtMd, "4_") + 48);
    v20 = swift_getEnumCaseMultiPayload();
    switch(v20)
    {
      case 7:
        v23 = type metadata accessor for AST.Atom();
        (*(*(v23 - 8) + 32))(&a1[v19], &a2[v19], v23);
        swift_storeEnumTagMultiPayload();
        break;
      case 6:
        v22 = type metadata accessor for AST.MatchingOptionSequence();
        (*(*(v22 - 8) + 32))(&a1[v19], &a2[v19], v22);
        swift_storeEnumTagMultiPayload();
        break;
      case 4:
        v21 = type metadata accessor for AST.Reference();
        (*(*(v21 - 8) + 32))(&a1[v19], &a2[v19], v21);
        swift_storeEnumTagMultiPayload();
        break;
      default:
        memcpy(&a1[v19], &a2[v19], *(*(v10 - 8) + 64));
        break;
    }

    goto LABEL_29;
  }

  if (!EnumCaseMultiPayload)
  {
    v7 = type metadata accessor for DSLTree.Atom(0);
    v8 = swift_getEnumCaseMultiPayload();
    switch(v8)
    {
      case 7:
        v17 = type metadata accessor for AST.Atom();
        (*(*(v17 - 8) + 32))(a1, a2, v17);
        swift_storeEnumTagMultiPayload();
        break;
      case 6:
        v15 = type metadata accessor for AST.MatchingOptionSequence();
        (*(*(v15 - 8) + 32))(a1, a2, v15);
        swift_storeEnumTagMultiPayload();
        break;
      case 4:
        v9 = type metadata accessor for AST.Reference();
        (*(*(v9 - 8) + 32))(a1, a2, v9);
        swift_storeEnumTagMultiPayload();
        break;
      default:
        memcpy(a1, a2, *(*(v7 - 8) + 64));
        break;
    }

LABEL_29:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v13 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v13);
}

uint64_t type metadata completion function for DSLTree.CustomCharacterClass.Member()
{
  result = type metadata accessor for DSLTree.Atom(319);
  if (v1 <= 0x3F)
  {
    v2[4] = *(result - 8) + 64;
    swift_getTupleTypeLayout2();
    v2[5] = v2;
    v2[6] = "\t";
    v2[7] = &unk_18E5EDC20;
    v2[8] = &unk_18E5EDC20;
    v2[9] = &unk_18E5EDC38;
    v2[10] = &unk_18E5EDC38;
    v2[11] = &unk_18E5EDC38;
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for DSLTree.Atom(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = (v9 + ((v4 + 16) & ~v4));

    return a1;
  }

  v5 = *(a3 - 8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload == 6)
    {
      v14 = type metadata accessor for AST.MatchingOptionSequence();
      (*(*(v14 - 8) + 16))(a1, a2, v14);
      goto LABEL_15;
    }

    if (EnumCaseMultiPayload == 7)
    {
      v10 = type metadata accessor for AST.Atom();
      (*(*(v10 - 8) + 16))(a1, a2, v10);
      goto LABEL_15;
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v13 = a2[1];
      *a1 = *a2;
      a1[1] = v13;

      goto LABEL_15;
    }

    if (EnumCaseMultiPayload == 4)
    {
      v8 = type metadata accessor for AST.Reference();
      (*(*(v8 - 8) + 16))(a1, a2, v8);
LABEL_15:
      swift_storeEnumTagMultiPayload();
      return a1;
    }
  }

  v11 = *(v5 + 64);

  return memcpy(a1, a2, v11);
}

uint64_t destroy for DSLTree.Atom(uint64_t a1)
{
  result = swift_getEnumCaseMultiPayload();
  if (result > 5)
  {
    if (result == 6)
    {
      v3 = type metadata accessor for AST.MatchingOptionSequence();
    }

    else
    {
      if (result != 7)
      {
        return result;
      }

      v3 = type metadata accessor for AST.Atom();
    }

    goto LABEL_13;
  }

  if (result)
  {
    if (result != 4)
    {
      return result;
    }

    v3 = type metadata accessor for AST.Reference();
LABEL_13:
    v5 = *(*(v3 - 8) + 8);

    return v5(a1, v3);
  }

  v4 = *(a1 + 8);
}

void *initializeWithCopy for DSLTree.Atom(void *a1, void *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload == 6)
    {
      v12 = type metadata accessor for AST.MatchingOptionSequence();
      (*(*(v12 - 8) + 16))(a1, a2, v12);
      goto LABEL_13;
    }

    if (EnumCaseMultiPayload == 7)
    {
      v8 = type metadata accessor for AST.Atom();
      (*(*(v8 - 8) + 16))(a1, a2, v8);
      goto LABEL_13;
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v11 = a2[1];
      *a1 = *a2;
      a1[1] = v11;

      goto LABEL_13;
    }

    if (EnumCaseMultiPayload == 4)
    {
      v7 = type metadata accessor for AST.Reference();
      (*(*(v7 - 8) + 16))(a1, a2, v7);
LABEL_13:
      swift_storeEnumTagMultiPayload();
      return a1;
    }
  }

  v9 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v9);
}

void *assignWithCopy for DSLTree.Atom(void *a1, void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  outlined destroy of MEProgram(a1, type metadata accessor for DSLTree.Atom);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload == 6)
    {
      v11 = type metadata accessor for AST.MatchingOptionSequence();
      (*(*(v11 - 8) + 16))(a1, a2, v11);
      goto LABEL_14;
    }

    if (EnumCaseMultiPayload == 7)
    {
      v8 = type metadata accessor for AST.Atom();
      (*(*(v8 - 8) + 16))(a1, a2, v8);
      goto LABEL_14;
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      *a1 = *a2;
      a1[1] = a2[1];

      goto LABEL_14;
    }

    if (EnumCaseMultiPayload == 4)
    {
      v7 = type metadata accessor for AST.Reference();
      (*(*(v7 - 8) + 16))(a1, a2, v7);
LABEL_14:
      swift_storeEnumTagMultiPayload();
      return a1;
    }
  }

  v9 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v9);
}

void *initializeWithTake for DSLTree.Atom(void *a1, const void *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 7:
      v9 = type metadata accessor for AST.Atom();
      (*(*(v9 - 8) + 32))(a1, a2, v9);
      goto LABEL_7;
    case 6:
      v8 = type metadata accessor for AST.MatchingOptionSequence();
      (*(*(v8 - 8) + 32))(a1, a2, v8);
      goto LABEL_7;
    case 4:
      v7 = type metadata accessor for AST.Reference();
      (*(*(v7 - 8) + 32))(a1, a2, v7);
LABEL_7:
      swift_storeEnumTagMultiPayload();
      return a1;
  }

  v11 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v11);
}

void *assignWithTake for DSLTree.Atom(void *a1, const void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  outlined destroy of MEProgram(a1, type metadata accessor for DSLTree.Atom);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 7:
      v9 = type metadata accessor for AST.Atom();
      (*(*(v9 - 8) + 32))(a1, a2, v9);
      goto LABEL_8;
    case 6:
      v8 = type metadata accessor for AST.MatchingOptionSequence();
      (*(*(v8 - 8) + 32))(a1, a2, v8);
      goto LABEL_8;
    case 4:
      v7 = type metadata accessor for AST.Reference();
      (*(*(v7 - 8) + 32))(a1, a2, v7);
LABEL_8:
      swift_storeEnumTagMultiPayload();
      return a1;
  }

  v11 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v11);
}

uint64_t type metadata completion function for DSLTree.Atom()
{
  result = type metadata accessor for AST.Reference();
  if (v1 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = type metadata accessor for AST.MatchingOptionSequence();
    if (v2 <= 0x3F)
    {
      v5 = *(result - 8) + 64;
      result = type metadata accessor for AST.Atom();
      if (v3 <= 0x3F)
      {
        v6 = *(result - 8) + 64;
        swift_initEnumMetadataMultiPayload();
        return 0;
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DSLTree.Atom.Assertion(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DSLTree.Atom.Assertion(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DSLTree.Atom.CharacterClass(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DSLTree.Atom.CharacterClass(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ReferenceID(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ReferenceID(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for DSLTree._AST.GroupKind(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4(0);
  v7 = **(v6 - 8);

  return v7(a1, a2, v6);
}

uint64_t destroy for DSLTree._AST.GroupKind(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  v5 = *(*(v4 - 8) + 8);

  return v5(a1, v4);
}

uint64_t initializeWithCopy for DSLTree._AST.GroupKind(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4(0);
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  return a1;
}

uint64_t assignWithCopy for DSLTree._AST.GroupKind(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4(0);
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  return a1;
}

uint64_t initializeWithTake for DSLTree._AST.GroupKind(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4(0);
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  return a1;
}

uint64_t assignWithTake for DSLTree._AST.GroupKind(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4(0);
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  return a1;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = a5(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t type metadata completion function for DSLTree._AST.GroupKind(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    v6 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t destroy for AnyRegexOutput(uint64_t a1)
{
  v2 = *(a1 + 8);

  v3 = *(a1 + 16);
}

uint64_t initializeWithCopy for Regex.Match(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

void *assignWithCopy for Regex.Match(void *a1, void *a2)
{
  *a1 = *a2;
  v4 = a1[1];
  a1[1] = a2[1];

  v5 = a1[2];
  a1[2] = a2[2];

  a1[3] = a2[3];
  a1[4] = a2[4];
  return a1;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t assignWithTake for Regex.Match(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a1 + 8);

  v5 = *(a1 + 16);
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t getEnumTagSinglePayload for Regex.Match(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for Regex.Match(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DSLTree._AST(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for DSLTree._AST(_WORD *result, int a2, int a3)
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

uint64_t *initializeBufferWithCopyOfBuffer for DefaultSearcherState(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 64);
  if (*(v9 + 84))
  {
    v11 = *(v9 + 64);
  }

  else
  {
    v11 = v10 + 1;
  }

  v12 = *(v9 + 80);
  v13 = ~v12;
  v14 = v11 + v12;
  v15 = ((v11 + v12) & v13) + v10;
  if (v12 > 7 || (*(v9 + 80) & 0x100000) != 0 || v15 > 0x18)
  {
    v18 = *a2;
    *a1 = *a2;
    a1 = (v18 + ((v12 + 16) & v13));
  }

  else
  {
    v19 = AssociatedTypeWitness;
    if ((*(v9 + 48))(a2, 1, AssociatedTypeWitness))
    {
      memcpy(a1, a2, v11);
      (*(v9 + 16))((a1 + v14) & v13, (a2 + v14) & v13, v19);
    }

    else
    {
      v20 = *(v9 + 16);
      v20(a1, a2, v19);
      (*(v9 + 56))(a1, 0, 1, v19);
      v20(((a1 + v14) & v13), ((a2 + v14) & v13), v19);
    }
  }

  return a1;
}

uint64_t destroy for DefaultSearcherState(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = (*(v6 + 48))(a1, 1, AssociatedTypeWitness);
  v8 = *(v6 + 8);
  if (!v7)
  {
    v12 = *(v6 + 8);
    v8(a1, AssociatedTypeWitness);
    v8 = v12;
  }

  v9 = *(v6 + 80);
  v10 = *(v6 + 64) + a1;
  if (!*(v6 + 84))
  {
    ++v10;
  }

  return (v8)((v10 + v9) & ~v9, AssociatedTypeWitness);
}

void *initializeWithCopy for DefaultSearcherState(void *a1, const void *a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  if ((*(v9 + 48))(a2, 1, AssociatedTypeWitness))
  {
    v10 = *(v9 + 84);
    v11 = *(v9 + 64);
    if (v10)
    {
      v12 = *(v9 + 64);
    }

    else
    {
      v12 = v11 + 1;
    }

    memcpy(a1, a2, v12);
    v13 = *(v9 + 16);
  }

  else
  {
    v13 = *(v9 + 16);
    v13(a1, a2, AssociatedTypeWitness);
    (*(v9 + 56))(a1, 0, 1, AssociatedTypeWitness);
    v10 = *(v9 + 84);
    v11 = *(v9 + 64);
  }

  if (v10)
  {
    v14 = v11;
  }

  else
  {
    v14 = v11 + 1;
  }

  v13(((a1 + v14 + *(v9 + 80)) & ~*(v9 + 80)), ((a2 + v14 + *(v9 + 80)) & ~*(v9 + 80)), AssociatedTypeWitness);
  return a1;
}

void *assignWithCopy for DefaultSearcherState(void *a1, void *a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 48);
  v11 = v10(a1, 1, AssociatedTypeWitness);
  v12 = v10(a2, 1, AssociatedTypeWitness);
  if (v11)
  {
    if (!v12)
    {
      (*(v9 + 16))(a1, a2, AssociatedTypeWitness);
      (*(v9 + 56))(a1, 0, 1, AssociatedTypeWitness);
      goto LABEL_12;
    }

    v13 = *(v9 + 84);
    v14 = *(v9 + 64);
  }

  else
  {
    if (!v12)
    {
      (*(v9 + 24))(a1, a2, AssociatedTypeWitness);
      goto LABEL_12;
    }

    (*(v9 + 8))(a1, AssociatedTypeWitness);
    v13 = *(v9 + 84);
    v14 = *(v9 + 64);
  }

  if (v13)
  {
    v15 = v14;
  }

  else
  {
    v15 = v14 + 1;
  }

  memcpy(a1, a2, v15);
LABEL_12:
  v18 = *(v9 + 24);
  v17 = v9 + 24;
  v16 = v18;
  if (*(v17 + 60))
  {
    v19 = *(v17 + 40);
  }

  else
  {
    v19 = *(v17 + 40) + 1;
  }

  v16((a1 + v19 + *(v17 + 56)) & ~*(v17 + 56), (a2 + v19 + *(v17 + 56)) & ~*(v17 + 56), AssociatedTypeWitness);
  return a1;
}

void *initializeWithTake for DefaultSearcherState(void *a1, const void *a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  if ((*(v9 + 48))(a2, 1, AssociatedTypeWitness))
  {
    v10 = *(v9 + 84);
    v11 = *(v9 + 64);
    if (v10)
    {
      v12 = *(v9 + 64);
    }

    else
    {
      v12 = v11 + 1;
    }

    memcpy(a1, a2, v12);
    v13 = *(v9 + 32);
  }

  else
  {
    v13 = *(v9 + 32);
    v13(a1, a2, AssociatedTypeWitness);
    (*(v9 + 56))(a1, 0, 1, AssociatedTypeWitness);
    v10 = *(v9 + 84);
    v11 = *(v9 + 64);
  }

  if (v10)
  {
    v14 = v11;
  }

  else
  {
    v14 = v11 + 1;
  }

  v13(((a1 + v14 + *(v9 + 80)) & ~*(v9 + 80)), ((a2 + v14 + *(v9 + 80)) & ~*(v9 + 80)), AssociatedTypeWitness);
  return a1;
}

void *assignWithTake for DefaultSearcherState(void *a1, void *a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 48);
  v11 = v10(a1, 1, AssociatedTypeWitness);
  v12 = v10(a2, 1, AssociatedTypeWitness);
  if (v11)
  {
    if (!v12)
    {
      (*(v9 + 32))(a1, a2, AssociatedTypeWitness);
      (*(v9 + 56))(a1, 0, 1, AssociatedTypeWitness);
      goto LABEL_12;
    }

    v13 = *(v9 + 84);
    v14 = *(v9 + 64);
  }

  else
  {
    if (!v12)
    {
      (*(v9 + 40))(a1, a2, AssociatedTypeWitness);
      goto LABEL_12;
    }

    (*(v9 + 8))(a1, AssociatedTypeWitness);
    v13 = *(v9 + 84);
    v14 = *(v9 + 64);
  }

  if (v13)
  {
    v15 = v14;
  }

  else
  {
    v15 = v14 + 1;
  }

  memcpy(a1, a2, v15);
LABEL_12:
  v18 = *(v9 + 40);
  v17 = v9 + 40;
  v16 = v18;
  if (*(v17 + 44))
  {
    v19 = *(v17 + 24);
  }

  else
  {
    v19 = *(v17 + 24) + 1;
  }

  v16((a1 + v19 + *(v17 + 40)) & ~*(v17 + 40), (a2 + v19 + *(v17 + 40)) & ~*(v17 + 40), AssociatedTypeWitness);
  return a1;
}

uint64_t getEnumTagSinglePayload for DefaultSearcherState(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 64);
  v11 = v9 - 1;
  if (!v9)
  {
    v11 = 0;
  }

  v12 = *(v8 + 80);
  v13 = v10 + v12;
  if (v9)
  {
    v14 = v10 + v12;
  }

  else
  {
    v14 = v13 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v9)
  {
    goto LABEL_30;
  }

  v15 = (v14 & ~v12) + v10;
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v18 = ((a2 - v9 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v18))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_29;
      }

      goto LABEL_16;
    }

    if (v18 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_29;
      }

      goto LABEL_16;
    }

    if (v18 < 2)
    {
LABEL_29:
      if (v9)
      {
LABEL_30:
        if (v11 == v9)
        {
          v22 = (*(v8 + 48))(a1);
          if (v22 >= 2)
          {
            return v22 - 1;
          }

          else
          {
            return 0;
          }
        }

        else
        {
          v24 = *(v8 + 48);

          return v24((a1 + v13) & ~v12);
        }
      }

      return 0;
    }
  }

  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
    goto LABEL_29;
  }

LABEL_16:
  v19 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v19 = 0;
  }

  if (v15)
  {
    if (v15 <= 3)
    {
      v20 = v15;
    }

    else
    {
      v20 = 4;
    }

    if (v20 > 2)
    {
      if (v20 == 3)
      {
        v21 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v21 = *a1;
      }
    }

    else if (v20 == 1)
    {
      v21 = *a1;
    }

    else
    {
      v21 = *a1;
    }
  }

  else
  {
    v21 = 0;
  }

  return v9 + (v21 | v19) + 1;
}

void storeEnumTagSinglePayload for DefaultSearcherState(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  v9 = 0;
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = *(v10 + 84);
  v12 = *(v10 + 64);
  v13 = v11 - 1;
  if (!v11)
  {
    v13 = 0;
  }

  v14 = *(v10 + 80);
  v15 = v12 + v14;
  if (v11)
  {
    v16 = v12 + v14;
  }

  else
  {
    v16 = v15 + 1;
  }

  v17 = (v16 & ~v14) + v12;
  if (a3 <= v11)
  {
    goto LABEL_17;
  }

  if (v17 <= 3)
  {
    v18 = ((a3 - v11 + ~(-1 << (8 * v17))) >> (8 * v17)) + 1;
    if (HIWORD(v18))
    {
      v9 = 4;
      if (v11 >= a2)
      {
        goto LABEL_27;
      }

      goto LABEL_18;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    else
    {
      v19 = 2;
    }

    if (v18 >= 2)
    {
      v9 = v19;
    }

    else
    {
      v9 = 0;
    }

LABEL_17:
    if (v11 >= a2)
    {
      goto LABEL_27;
    }

    goto LABEL_18;
  }

  v9 = 1;
  if (v11 >= a2)
  {
LABEL_27:
    if (v9 > 1)
    {
      if (v9 != 2)
      {
        *&a1[v17] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_34;
      }

      *&a1[v17] = 0;
    }

    else if (v9)
    {
      a1[v17] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    if (!a2)
    {
      return;
    }

LABEL_34:
    v23 = *(v10 + 56);
    if (v13 == v11)
    {
      v24 = (a2 + 1);
      v25 = a1;
    }

    else
    {
      v25 = (&a1[v15] & ~v14);
      v24 = a2;
    }

    v23(v25, v24);
    return;
  }

LABEL_18:
  v20 = ~v11 + a2;
  if (v17 >= 4)
  {
    bzero(a1, v17);
    *a1 = v20;
    v21 = 1;
    if (v9 > 1)
    {
      goto LABEL_47;
    }

    goto LABEL_44;
  }

  v21 = (v20 >> (8 * v17)) + 1;
  if (!v17)
  {
LABEL_43:
    if (v9 > 1)
    {
      goto LABEL_47;
    }

    goto LABEL_44;
  }

  v22 = v20 & ~(-1 << (8 * v17));
  bzero(a1, v17);
  if (v17 == 3)
  {
    *a1 = v22;
    a1[2] = BYTE2(v22);
    goto LABEL_43;
  }

  if (v17 == 2)
  {
    *a1 = v22;
    if (v9 > 1)
    {
LABEL_47:
      if (v9 == 2)
      {
        *&a1[v17] = v21;
      }

      else
      {
        *&a1[v17] = v21;
      }

      return;
    }
  }

  else
  {
    *a1 = v20;
    if (v9 > 1)
    {
      goto LABEL_47;
    }
  }

LABEL_44:
  if (v9)
  {
    a1[v17] = v21;
  }
}

uint64_t type metadata completion function for DefaultSearcherState.Position(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  result = swift_getAssociatedTypeWitness();
  if (v4 <= 0x3F)
  {
    v5 = *(result - 8);
    swift_initEnumMetadataSinglePayload();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for DefaultSearcherState.Position(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  if (*(v9 + 84))
  {
    v10 = *(v9 + 64);
  }

  else
  {
    v10 = *(v9 + 64) + 1;
  }

  v11 = *(v9 + 80);
  if (v11 > 7 || (*(v9 + 80) & 0x100000) != 0 || v10 > 0x18)
  {
    v14 = *a2;
    *a1 = *a2;
    a1 = (v14 + ((v11 + 16) & ~v11));

    return a1;
  }

  v15 = AssociatedTypeWitness;
  if (!(*(v9 + 48))(a2, 1, AssociatedTypeWitness))
  {
    (*(v9 + 16))(a1, a2, v15);
    (*(v9 + 56))(a1, 0, 1, v15);
    return a1;
  }

  return memcpy(a1, a2, v10);
}

uint64_t destroy for DefaultSearcherState.Position(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  result = (*(v8 + 48))(a1, 1, AssociatedTypeWitness);
  if (!result)
  {
    v7 = *(v8 + 8);

    return v7(a1, AssociatedTypeWitness);
  }

  return result;
}

void *initializeWithCopy for DefaultSearcherState.Position(void *a1, const void *a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  if ((*(v9 + 48))(a2, 1, AssociatedTypeWitness))
  {
    if (*(v9 + 84))
    {
      v10 = *(v9 + 64);
    }

    else
    {
      v10 = *(v9 + 64) + 1;
    }

    return memcpy(a1, a2, v10);
  }

  else
  {
    (*(v9 + 16))(a1, a2, AssociatedTypeWitness);
    (*(v9 + 56))(a1, 0, 1, AssociatedTypeWitness);
    return a1;
  }
}

void *assignWithCopy for DefaultSearcherState.Position(void *a1, void *a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 48);
  v11 = v10(a1, 1, AssociatedTypeWitness);
  v12 = v10(a2, 1, AssociatedTypeWitness);
  if (!v11)
  {
    if (v12)
    {
      v16 = *(v9 + 8);
      v15 = v9 + 8;
      v16(a1, AssociatedTypeWitness);
      v13 = *(v15 + 76);
      v14 = *(v15 + 56);
      goto LABEL_6;
    }

    (*(v9 + 24))(a1, a2, AssociatedTypeWitness);
    return a1;
  }

  if (!v12)
  {
    (*(v9 + 16))(a1, a2, AssociatedTypeWitness);
    (*(v9 + 56))(a1, 0, 1, AssociatedTypeWitness);
    return a1;
  }

  v13 = *(v9 + 84);
  v14 = *(v9 + 64);
LABEL_6:
  if (v13)
  {
    v17 = v14;
  }

  else
  {
    v17 = v14 + 1;
  }

  return memcpy(a1, a2, v17);
}

void *initializeWithTake for DefaultSearcherState.Position(void *a1, const void *a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  if ((*(v9 + 48))(a2, 1, AssociatedTypeWitness))
  {
    if (*(v9 + 84))
    {
      v10 = *(v9 + 64);
    }

    else
    {
      v10 = *(v9 + 64) + 1;
    }

    return memcpy(a1, a2, v10);
  }

  else
  {
    (*(v9 + 32))(a1, a2, AssociatedTypeWitness);
    (*(v9 + 56))(a1, 0, 1, AssociatedTypeWitness);
    return a1;
  }
}

void *assignWithTake for DefaultSearcherState.Position(void *a1, void *a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 48);
  v11 = v10(a1, 1, AssociatedTypeWitness);
  v12 = v10(a2, 1, AssociatedTypeWitness);
  if (!v11)
  {
    if (v12)
    {
      v16 = *(v9 + 8);
      v15 = v9 + 8;
      v16(a1, AssociatedTypeWitness);
      v13 = *(v15 + 76);
      v14 = *(v15 + 56);
      goto LABEL_6;
    }

    (*(v9 + 40))(a1, a2, AssociatedTypeWitness);
    return a1;
  }

  if (!v12)
  {
    (*(v9 + 32))(a1, a2, AssociatedTypeWitness);
    (*(v9 + 56))(a1, 0, 1, AssociatedTypeWitness);
    return a1;
  }

  v13 = *(v9 + 84);
  v14 = *(v9 + 64);
LABEL_6:
  if (v13)
  {
    v17 = v14;
  }

  else
  {
    v17 = v14 + 1;
  }

  return memcpy(a1, a2, v17);
}

uint64_t getEnumTagSinglePayload for DefaultSearcherState.Position(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  v11 = v10 - 1;
  if (!v10)
  {
    v11 = 0;
  }

  v12 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!v10)
  {
    ++v12;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 > v11)
  {
    v13 = 8 * v12;
    if (v12 > 3)
    {
      goto LABEL_8;
    }

    v15 = ((a2 - v11 + ~(-1 << v13)) >> v13) + 1;
    if (HIWORD(v15))
    {
      v14 = *(a1 + v12);
      if (v14)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v15 <= 0xFF)
      {
        if (v15 < 2)
        {
          goto LABEL_26;
        }

LABEL_8:
        v14 = *(a1 + v12);
        if (!*(a1 + v12))
        {
          goto LABEL_26;
        }

LABEL_15:
        v16 = (v14 - 1) << v13;
        if (v12 > 3)
        {
          v16 = 0;
        }

        if (v12)
        {
          if (v12 > 3)
          {
            LODWORD(v12) = 4;
          }

          if (v12 > 2)
          {
            if (v12 == 3)
            {
              LODWORD(v12) = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              LODWORD(v12) = *a1;
            }
          }

          else if (v12 == 1)
          {
            LODWORD(v12) = *a1;
          }

          else
          {
            LODWORD(v12) = *a1;
          }
        }

        return v11 + (v12 | v16) + 1;
      }

      v14 = *(a1 + v12);
      if (*(a1 + v12))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_26:
  if (v10 < 2)
  {
    return 0;
  }

  v18 = (*(v9 + 48))(a1);
  if (v18 >= 2)
  {
    return v18 - 1;
  }

  else
  {
    return 0;
  }
}

void storeEnumTagSinglePayload for DefaultSearcherState.Position(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  v9 = 0;
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = *(v10 + 84);
  v12 = v11 - 1;
  if (v11)
  {
    v13 = *(v10 + 64);
  }

  else
  {
    v12 = 0;
    v13 = *(v10 + 64) + 1;
  }

  if (a3 <= v12)
  {
    goto LABEL_15;
  }

  if (v13 <= 3)
  {
    v14 = ((a3 - v12 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
    if (HIWORD(v14))
    {
      v9 = 4;
      if (v12 >= a2)
      {
        goto LABEL_25;
      }

      goto LABEL_16;
    }

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
      v9 = v15;
    }

    else
    {
      v9 = 0;
    }

LABEL_15:
    if (v12 >= a2)
    {
      goto LABEL_25;
    }

    goto LABEL_16;
  }

  v9 = 1;
  if (v12 >= a2)
  {
LABEL_25:
    if (v9 > 1)
    {
      if (v9 != 2)
      {
        *&a1[v13] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      *&a1[v13] = 0;
    }

    else if (v9)
    {
      a1[v13] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_32;
    }

    if (!a2)
    {
      return;
    }

LABEL_32:
    if (v11 >= 2)
    {
      v19 = *(v10 + 56);

      v19(a1, a2 + 1);
    }

    return;
  }

LABEL_16:
  v16 = ~v12 + a2;
  if (v13 >= 4)
  {
    bzero(a1, v13);
    *a1 = v16;
    v17 = 1;
    if (v9 > 1)
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  v17 = (v16 >> (8 * v13)) + 1;
  if (!v13)
  {
LABEL_39:
    if (v9 > 1)
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  v18 = v16 & ~(-1 << (8 * v13));
  bzero(a1, v13);
  if (v13 == 3)
  {
    *a1 = v18;
    a1[2] = BYTE2(v18);
    goto LABEL_39;
  }

  if (v13 == 2)
  {
    *a1 = v18;
    if (v9 > 1)
    {
LABEL_43:
      if (v9 == 2)
      {
        *&a1[v13] = v17;
      }

      else
      {
        *&a1[v13] = v17;
      }

      return;
    }
  }

  else
  {
    *a1 = v16;
    if (v9 > 1)
    {
      goto LABEL_43;
    }
  }

LABEL_40:
  if (v9)
  {
    a1[v13] = v17;
  }
}

uint64_t getEnumTag for DefaultSearcherState.Position(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 48);

  return v6(a1, 1, AssociatedTypeWitness);
}

uint64_t destructiveInjectEnumTag for DefaultSearcherState.Position(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(*(AssociatedTypeWitness - 8) + 56);

  return v9(a1, a2, 1, AssociatedTypeWitness);
}

void *initializeBufferWithCopyOfBuffer for DSLTree.Node(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *assignWithTake for DSLTree.Node(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

unint64_t getEnumTag for DSLTree.Node(uint64_t *a1)
{
  if (*a1 >= 0)
  {
    return (*a1 >> 59) & 0x1E | (*a1 >> 2) & 1;
  }

  else
  {
    return (*a1 >> 3) + 16;
  }
}

unint64_t *destructiveInjectEnumTag for DSLTree.Node(unint64_t *result, uint64_t a2)
{
  if (a2 < 0x10)
  {
    *result = ((a2 << 59) | (4 * a2)) & 0xF000000000000007 | *result & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    *result = (8 * (a2 - 16)) | 0x8000000000000000;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for DSLTree.QuantificationKind(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v7 = *a2;
    *a1 = *a2;
    a1 = (v7 + ((v4 + 16) & ~v4));

    return a1;
  }

  v5 = *(a3 - 8);
  if (swift_getEnumCaseMultiPayload() <= 1)
  {
    v8 = type metadata accessor for AST.Quantification.Kind();
    (*(*(v8 - 8) + 16))(a1, a2, v8);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v10 = *(v5 + 64);

  return memcpy(a1, a2, v10);
}

uint64_t destroy for DSLTree.QuantificationKind(uint64_t a1)
{
  result = swift_getEnumCaseMultiPayload();
  if (result <= 1)
  {
    v3 = type metadata accessor for AST.Quantification.Kind();
    v4 = *(*(v3 - 8) + 8);

    return v4(a1, v3);
  }

  return result;
}

void *initializeWithCopy for DSLTree.QuantificationKind(void *a1, const void *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }

  else
  {
    v6 = type metadata accessor for AST.Quantification.Kind();
    (*(*(v6 - 8) + 16))(a1, a2, v6);
    swift_storeEnumTagMultiPayload();
    return a1;
  }
}

void *assignWithCopy for DSLTree.QuantificationKind(void *a1, const void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  outlined destroy of MEProgram(a1, type metadata accessor for DSLTree.QuantificationKind);
  if (swift_getEnumCaseMultiPayload() <= 1)
  {
    v6 = type metadata accessor for AST.Quantification.Kind();
    (*(*(v6 - 8) + 16))(a1, a2, v6);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v8 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v8);
}

void *initializeWithTake for DSLTree.QuantificationKind(void *a1, const void *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }

  else
  {
    v6 = type metadata accessor for AST.Quantification.Kind();
    (*(*(v6 - 8) + 32))(a1, a2, v6);
    swift_storeEnumTagMultiPayload();
    return a1;
  }
}

void *assignWithTake for DSLTree.QuantificationKind(void *a1, const void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  outlined destroy of MEProgram(a1, type metadata accessor for DSLTree.QuantificationKind);
  if (swift_getEnumCaseMultiPayload() <= 1)
  {
    v6 = type metadata accessor for AST.Quantification.Kind();
    (*(*(v6 - 8) + 32))(a1, a2, v6);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v8 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v8);
}

uint64_t type metadata completion function for DSLTree.QuantificationKind()
{
  result = type metadata accessor for AST.Quantification.Kind();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t outlined copy of RegexCompilationError(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

uint64_t outlined consume of RegexCompilationError(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for RegexCompilationError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for RegexCompilationError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t getEnumTag for RegexCompilationError(uint64_t a1)
{
  if (*(a1 + 16) <= 1u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t destructiveInjectEnumTag for RegexCompilationError(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for AnyRegexOutput.ElementRepresentation(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t destroy for AnyRegexOutput.ElementRepresentation(uint64_t *a1)
{
  if (a1[6] >= 2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1 + 3);
  }

  v2 = a1[8];
}

uint64_t initializeWithCopy for AnyRegexOutput.ElementRepresentation(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = (a1 + 8);
  v4 = *(a2 + 48);
  if (v4 == 1)
  {
    v5 = *(a2 + 24);
    *v3 = *(a2 + 8);
    *(a1 + 24) = v5;
    *(a1 + 40) = *(a2 + 40);
  }

  else
  {
    *v3 = *(a2 + 8);
    if (v4)
    {
      *(a1 + 48) = v4;
      v6 = a2;
      (**(v4 - 8))(a1 + 24, a2 + 24);
      a2 = v6;
    }

    else
    {
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 40) = *(a2 + 40);
    }
  }

  v7 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v7;
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);

  return a1;
}

uint64_t assignWithCopy for AnyRegexOutput.ElementRepresentation(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a1 + 48);
  v5 = *(a2 + 48);
  if (v4 != 1)
  {
    if (v5 == 1)
    {
      outlined destroy of SplitSequence<SubstringSearcher>(a1 + 8, &_sSnySS5IndexVG5range_ypSg5valuetMd, &_sSnySS5IndexVG5range_ypSg5valuetMR);
      v8 = *(a2 + 40);
      v9 = *(a2 + 24);
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 24) = v9;
      *(a1 + 40) = v8;
      goto LABEL_15;
    }

    *(a1 + 8) = *(a2 + 8);
    *(a1 + 16) = *(a2 + 16);
    v10 = *(a2 + 48);
    if (v4)
    {
      v11 = (a1 + 24);
      if (v10)
      {
        __swift_assign_boxed_opaque_existential_0(v11, (a2 + 24));
        goto LABEL_15;
      }

      __swift_destroy_boxed_opaque_existential_0(v11);
    }

    else if (v10)
    {
      goto LABEL_12;
    }

LABEL_14:
    v12 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 24) = v12;
    goto LABEL_15;
  }

  if (v5 != 1)
  {
    *(a1 + 8) = *(a2 + 8);
    v10 = *(a2 + 48);
    if (!v10)
    {
      goto LABEL_14;
    }

LABEL_12:
    *(a1 + 48) = v10;
    (**(v10 - 8))(a1 + 24, a2 + 24);
    goto LABEL_15;
  }

  v6 = *(a2 + 8);
  v7 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 24) = v7;
  *(a1 + 8) = v6;
LABEL_15:
  *(a1 + 56) = *(a2 + 56);
  v13 = *(a1 + 64);
  *(a1 + 64) = *(a2 + 64);

  v14 = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 72) = v14;
  *(a1 + 81) = *(a2 + 81);
  return a1;
}

__n128 __swift_memcpy82_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t assignWithTake for AnyRegexOutput.ElementRepresentation(uint64_t a1, uint64_t a2)
{
  v4 = (a2 + 8);
  *a1 = *a2;
  v5 = *(a1 + 48);
  if (v5 == 1)
  {
    goto LABEL_4;
  }

  if (*(a2 + 48) == 1)
  {
    outlined destroy of SplitSequence<SubstringSearcher>(a1 + 8, &_sSnySS5IndexVG5range_ypSg5valuetMd, &_sSnySS5IndexVG5range_ypSg5valuetMR);
LABEL_4:
    v6 = v4[1];
    *(a1 + 8) = *v4;
    *(a1 + 24) = v6;
    v7 = v4[2];
    goto LABEL_8;
  }

  *(a1 + 8) = *(a2 + 8);
  if (v5)
  {
    __swift_destroy_boxed_opaque_existential_0((a1 + 24));
  }

  *(a1 + 24) = *(a2 + 24);
  v7 = *(a2 + 40);
LABEL_8:
  *(a1 + 40) = v7;
  v8 = *(a2 + 64);
  v9 = *(a1 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v8;

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 81) = *(a2 + 81);
  return a1;
}

uint64_t getEnumTagSinglePayload for AnyRegexOutput.ElementRepresentation(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 82))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 64);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for AnyRegexOutput.ElementRepresentation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 82) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 82) = 0;
    }

    if (a2)
    {
      *(result + 64) = a2;
    }
  }

  return result;
}

uint64_t type metadata completion function for FixedPatternConsumer(uint64_t a1)
{
  v1 = *(a1 + 24);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for FixedPatternConsumer(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 80);
  if (v5 <= 7 && *(*(*(a3 + 24) - 8) + 64) <= 0x18uLL && (*(v4 + 80) & 0x100000) == 0)
  {
    (*(v4 + 16))(a1);
  }

  else
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + ((v5 + 16) & ~v5));
  }

  return v3;
}

uint64_t getEnumTagSinglePayload for FixedPatternConsumer(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *storeEnumTagSinglePayload for FixedPatternConsumer(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
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

uint64_t type metadata completion function for Executor.Matches.Iterator()
{
  result = type metadata accessor for MEProgram(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for Executor.Matches.Iterator(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v6 = v4 + ((v3 + 16) & ~v3);
  }

  else
  {
    v6 = a1;
    *(a1 + 8) = a2[1];
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 17) = *(a2 + 17);
    v8 = type metadata accessor for MEProgram(0);
    v9 = v8[8];
    v10 = type metadata accessor for CaptureList();
    v11 = *(*(v10 - 8) + 16);

    v11(v6 + v9, a2 + v9, v10);
    *(v6 + v8[9]) = *(a2 + v8[9]);
    *(v6 + v8[10]) = *(a2 + v8[10]);
    *(v6 + v8[11]) = *(a2 + v8[11]);
    v12 = v8[12];
    v13 = v6 + v12;
    v14 = a2 + v12;
    v15 = *(v14 + 8);
    *v13 = *v14;
    *(v13 + 8) = v15;
    v16 = *(v14 + 24);
    *(v13 + 16) = *(v14 + 16);
    *(v13 + 24) = v16;
    v26 = *(v14 + 40);
    *(v13 + 32) = *(v14 + 32);
    *(v13 + 40) = v26;
    *(v13 + 48) = *(v14 + 48);
    v28 = *(v14 + 64);
    *(v13 + 56) = *(v14 + 56);
    *(v13 + 64) = v28;
    *(v13 + 72) = *(v14 + 72);
    *(v6 + v8[13]) = *(a2 + v8[13]);
    v17 = *(a3 + 28);
    v18 = v6 + v17;
    v19 = a2 + v17;
    v20 = *(v19 + 8);
    *v18 = *v19;
    *(v18 + 8) = v20;
    *(v18 + 16) = *(v19 + 16);
    *(v18 + 32) = *(v19 + 32);
    v24 = *(v19 + 48);
    *(v18 + 40) = *(v19 + 40);
    *(v18 + 48) = v24;
    *(v18 + 56) = *(v19 + 56);
    *(v18 + 64) = *(v19 + 64);
    *(v18 + 72) = *(v19 + 72);
    *(v18 + 88) = *(v19 + 88);
    v31 = a3;
    v21 = *(v19 + 112);
    *(v18 + 104) = *(v19 + 104);
    *(v18 + 112) = v21;
    v22 = *(v19 + 128);
    *(v18 + 120) = *(v19 + 120);
    *(v18 + 128) = v22;
    v25 = *(v19 + 144);
    *(v18 + 136) = *(v19 + 136);
    *(v18 + 144) = v25;
    *(v18 + 152) = *(v19 + 152);
    v27 = *(v19 + 168);
    *(v18 + 160) = *(v19 + 160);
    *(v18 + 168) = v27;
    v29 = *(v19 + 184);
    *(v18 + 176) = *(v19 + 176);
    *(v18 + 184) = v29;
    *(v18 + 200) = *(v19 + 200);
    *(v18 + 192) = *(v19 + 192);
    v30 = *(v19 + 208);

    MEMORY[0x193ACF410](v30);
    *(v18 + 208) = v30;
    *(v6 + *(v31 + 32)) = *(a2 + *(v31 + 32));
  }

  return v6;
}

void destroy for Executor.Matches.Iterator(char *a1, uint64_t a2)
{
  v4 = *a1;

  v5 = type metadata accessor for MEProgram(0);
  v6 = v5[8];
  v7 = type metadata accessor for CaptureList();
  (*(*(v7 - 8) + 8))(&a1[v6], v7);
  v8 = *&a1[v5[9]];

  v9 = *&a1[v5[10]];

  v10 = &a1[v5[12]];
  v11 = *v10;

  v12 = *(v10 + 1);

  v13 = *(v10 + 2);

  v14 = *(v10 + 3);

  v15 = *(v10 + 4);

  v16 = *(v10 + 5);

  v17 = *(v10 + 7);

  v18 = *(v10 + 8);

  v19 = *(v10 + 9);

  v20 = *&a1[v5[13]];

  v21 = &a1[*(a2 + 28)];
  v22 = *(v21 + 1);

  v23 = *(v21 + 5);

  v24 = *(v21 + 6);

  v25 = *(v21 + 13);

  v26 = *(v21 + 14);

  v27 = *(v21 + 15);

  v28 = *(v21 + 16);

  v29 = *(v21 + 17);

  v30 = *(v21 + 18);

  v31 = *(v21 + 20);

  v32 = *(v21 + 21);

  v33 = *(v21 + 22);

  v34 = *(v21 + 23);

  v35 = *(v21 + 24);

  v36 = *(v21 + 26);

  JUMPOUT(0x193ACF400);
}

uint64_t initializeWithCopy for Executor.Matches.Iterator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v6;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  v7 = type metadata accessor for MEProgram(0);
  v8 = v7[8];
  v9 = type metadata accessor for CaptureList();
  v10 = *(*(v9 - 8) + 16);

  v10(a1 + v8, a2 + v8, v9);
  *(a1 + v7[9]) = *(a2 + v7[9]);
  *(a1 + v7[10]) = *(a2 + v7[10]);
  *(a1 + v7[11]) = *(a2 + v7[11]);
  v11 = v7[12];
  v12 = a1 + v11;
  v13 = a2 + v11;
  v14 = *(v13 + 8);
  *v12 = *v13;
  *(v12 + 8) = v14;
  v15 = *(v13 + 24);
  *(v12 + 16) = *(v13 + 16);
  *(v12 + 24) = v15;
  v25 = *(v13 + 40);
  *(v12 + 32) = *(v13 + 32);
  *(v12 + 40) = v25;
  *(v12 + 48) = *(v13 + 48);
  v27 = *(v13 + 64);
  *(v12 + 56) = *(v13 + 56);
  *(v12 + 64) = v27;
  *(v12 + 72) = *(v13 + 72);
  *(a1 + v7[13]) = *(a2 + v7[13]);
  v16 = *(a3 + 28);
  v17 = a1 + v16;
  v18 = a2 + v16;
  v19 = *(v18 + 8);
  *v17 = *v18;
  *(v17 + 8) = v19;
  *(v17 + 16) = *(v18 + 16);
  *(v17 + 32) = *(v18 + 32);
  v20 = *(v18 + 48);
  *(v17 + 40) = *(v18 + 40);
  *(v17 + 48) = v20;
  *(v17 + 56) = *(v18 + 56);
  *(v17 + 64) = *(v18 + 64);
  *(v17 + 72) = *(v18 + 72);
  *(v17 + 88) = *(v18 + 88);
  v21 = *(v18 + 112);
  *(v17 + 104) = *(v18 + 104);
  *(v17 + 112) = v21;
  v23 = *(v18 + 128);
  *(v17 + 120) = *(v18 + 120);
  *(v17 + 128) = v23;
  v24 = *(v18 + 144);
  *(v17 + 136) = *(v18 + 136);
  *(v17 + 144) = v24;
  *(v17 + 152) = *(v18 + 152);
  v26 = *(v18 + 168);
  *(v17 + 160) = *(v18 + 160);
  *(v17 + 168) = v26;
  v28 = *(v18 + 184);
  *(v17 + 176) = *(v18 + 176);
  *(v17 + 184) = v28;
  *(v17 + 200) = *(v18 + 200);
  *(v17 + 192) = *(v18 + 192);
  v29 = *(v18 + 208);

  MEMORY[0x193ACF410](v29);
  *(v17 + 208) = v29;
  *(a1 + *(a3 + 32)) = *(a2 + *(a3 + 32));
  return a1;
}

uint64_t *assignWithCopy for Executor.Matches.Iterator(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a1;
  *a1 = *a2;

  v7 = a2[1];
  *(a1 + 16) = *(a2 + 16);
  a1[1] = v7;
  *(a1 + 17) = *(a2 + 17);
  *(a1 + 18) = *(a2 + 18);
  v8 = type metadata accessor for MEProgram(0);
  v9 = v8[8];
  v10 = type metadata accessor for CaptureList();
  (*(*(v10 - 8) + 24))(a1 + v9, a2 + v9, v10);
  v11 = v8[9];
  v12 = *(a1 + v11);
  *(a1 + v11) = *(a2 + v11);

  v13 = v8[10];
  v14 = *(a1 + v13);
  *(a1 + v13) = *(a2 + v13);

  *(a1 + v8[11]) = *(a2 + v8[11]);
  v15 = v8[12];
  v16 = a1 + v15;
  v17 = a2 + v15;
  v18 = *(a1 + v15);
  *(a1 + v15) = *(a2 + v15);

  v19 = *(v16 + 8);
  *(v16 + 8) = *(v17 + 8);

  v20 = *(v16 + 16);
  *(v16 + 16) = *(v17 + 16);

  v21 = *(v16 + 24);
  *(v16 + 24) = *(v17 + 24);

  v22 = *(v16 + 32);
  *(v16 + 32) = *(v17 + 32);

  v23 = *(v16 + 40);
  *(v16 + 40) = *(v17 + 40);

  *(v16 + 48) = *(v17 + 48);
  v24 = *(v16 + 56);
  *(v16 + 56) = *(v17 + 56);

  v25 = *(v16 + 64);
  *(v16 + 64) = *(v17 + 64);

  v26 = *(v16 + 72);
  *(v16 + 72) = *(v17 + 72);

  v27 = v8[13];
  v28 = *(a1 + v27);
  *(a1 + v27) = *(a2 + v27);

  v29 = *(a3 + 28);
  v30 = a1 + v29;
  v31 = a2 + v29;
  *v30 = *(a2 + v29);
  v32 = *(a1 + v29 + 8);
  *(v30 + 8) = *(a2 + v29 + 8);

  *(v30 + 16) = *(v31 + 16);
  *(v30 + 24) = *(v31 + 24);
  *(v30 + 32) = *(v31 + 32);
  v33 = *(v30 + 40);
  *(v30 + 40) = *(v31 + 40);

  v34 = *(v30 + 48);
  *(v30 + 48) = *(v31 + 48);

  v35 = *(v31 + 56);
  *(v30 + 64) = *(v31 + 64);
  *(v30 + 56) = v35;
  *(v30 + 72) = *(v31 + 72);
  *(v30 + 80) = *(v31 + 80);
  *(v30 + 88) = *(v31 + 88);
  *(v30 + 96) = *(v31 + 96);
  v36 = *(v30 + 104);
  *(v30 + 104) = *(v31 + 104);

  v37 = *(v30 + 112);
  *(v30 + 112) = *(v31 + 112);

  v38 = *(v30 + 120);
  *(v30 + 120) = *(v31 + 120);

  v39 = *(v30 + 128);
  *(v30 + 128) = *(v31 + 128);

  v40 = *(v30 + 136);
  *(v30 + 136) = *(v31 + 136);

  v41 = *(v30 + 144);
  *(v30 + 144) = *(v31 + 144);

  *(v30 + 152) = *(v31 + 152);
  v42 = *(v30 + 160);
  *(v30 + 160) = *(v31 + 160);

  v43 = *(v30 + 168);
  *(v30 + 168) = *(v31 + 168);

  v44 = *(v30 + 176);
  *(v30 + 176) = *(v31 + 176);

  v45 = *(v30 + 184);
  *(v30 + 184) = *(v31 + 184);

  v46 = *(v30 + 192);
  *(v30 + 192) = *(v31 + 192);

  *(v30 + 200) = *(v31 + 200);
  v47 = *(v30 + 208);
  v48 = *(v31 + 208);
  MEMORY[0x193ACF410](v48);
  *(v30 + 208) = v48;
  MEMORY[0x193ACF400](v47);
  *(a1 + *(a3 + 32)) = *(a2 + *(a3 + 32));
  return a1;
}

uint64_t initializeWithTake for Executor.Matches.Iterator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v6;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  v7 = type metadata accessor for MEProgram(0);
  v8 = v7[8];
  v9 = type metadata accessor for CaptureList();
  (*(*(v9 - 8) + 32))(a1 + v8, a2 + v8, v9);
  *(a1 + v7[9]) = *(a2 + v7[9]);
  *(a1 + v7[10]) = *(a2 + v7[10]);
  *(a1 + v7[11]) = *(a2 + v7[11]);
  v10 = v7[12];
  v11 = (a1 + v10);
  v12 = (a2 + v10);
  v13 = v12[4];
  v11[3] = v12[3];
  v11[4] = v13;
  v14 = v12[2];
  v11[1] = v12[1];
  v11[2] = v14;
  *v11 = *v12;
  *(a1 + v7[13]) = *(a2 + v7[13]);
  v15 = *(a3 + 28);
  v16 = *(a3 + 32);
  v17 = a1 + v15;
  v18 = a2 + v15;
  v19 = *(v18 + 16);
  *v17 = *v18;
  *(v17 + 16) = v19;
  v20 = *(v18 + 80);
  *(v17 + 64) = *(v18 + 64);
  *(v17 + 80) = v20;
  v21 = *(v18 + 48);
  *(v17 + 32) = *(v18 + 32);
  *(v17 + 48) = v21;
  v22 = *(v18 + 144);
  *(v17 + 128) = *(v18 + 128);
  *(v17 + 144) = v22;
  v23 = *(v18 + 112);
  *(v17 + 96) = *(v18 + 96);
  *(v17 + 112) = v23;
  *(v17 + 208) = *(v18 + 208);
  v24 = *(v18 + 192);
  *(v17 + 176) = *(v18 + 176);
  *(v17 + 192) = v24;
  *(v17 + 160) = *(v18 + 160);
  *(a1 + v16) = *(a2 + v16);
  return a1;
}

uint64_t *assignWithTake for Executor.Matches.Iterator(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a1;
  *a1 = *a2;

  a1[1] = a2[1];
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  *(a1 + 18) = *(a2 + 18);
  v7 = type metadata accessor for MEProgram(0);
  v8 = v7[8];
  v9 = type metadata accessor for CaptureList();
  (*(*(v9 - 8) + 40))(a1 + v8, a2 + v8, v9);
  v10 = v7[9];
  v11 = *(a1 + v10);
  *(a1 + v10) = *(a2 + v10);

  v12 = v7[10];
  v13 = *(a1 + v12);
  *(a1 + v12) = *(a2 + v12);

  *(a1 + v7[11]) = *(a2 + v7[11]);
  v14 = v7[12];
  v15 = a1 + v14;
  v16 = a2 + v14;
  v17 = *(a1 + v14);
  *(a1 + v14) = *(a2 + v14);

  v18 = *(v15 + 8);
  *(v15 + 8) = *(v16 + 8);

  v19 = *(v15 + 16);
  *(v15 + 16) = *(v16 + 16);

  v20 = *(v15 + 24);
  *(v15 + 24) = *(v16 + 24);

  v21 = *(v15 + 32);
  *(v15 + 32) = *(v16 + 32);

  v22 = *(v15 + 40);
  *(v15 + 40) = *(v16 + 40);

  *(v15 + 48) = *(v16 + 48);
  v23 = *(v15 + 56);
  *(v15 + 56) = *(v16 + 56);

  v24 = *(v15 + 64);
  *(v15 + 64) = *(v16 + 64);

  v25 = *(v15 + 72);
  *(v15 + 72) = *(v16 + 72);

  v26 = v7[13];
  v27 = *(a1 + v26);
  *(a1 + v26) = *(a2 + v26);

  v28 = *(a3 + 28);
  v29 = a1 + v28;
  v30 = a2 + v28;
  v31 = *(a2 + v28 + 8);
  v32 = *(a1 + v28 + 8);
  *v29 = *(a2 + v28);
  *(v29 + 8) = v31;

  *(v29 + 16) = *(v30 + 16);
  *(v29 + 32) = *(v30 + 32);
  v33 = *(v29 + 40);
  *(v29 + 40) = *(v30 + 40);

  v34 = *(v29 + 48);
  *(v29 + 48) = *(v30 + 48);

  *(v29 + 56) = *(v30 + 56);
  *(v29 + 64) = *(v30 + 64);
  *(v29 + 72) = *(v30 + 72);
  *(v29 + 88) = *(v30 + 88);
  v35 = *(v29 + 104);
  *(v29 + 104) = *(v30 + 104);

  v36 = *(v29 + 112);
  *(v29 + 112) = *(v30 + 112);

  v37 = *(v29 + 120);
  *(v29 + 120) = *(v30 + 120);

  v38 = *(v29 + 128);
  *(v29 + 128) = *(v30 + 128);

  v39 = *(v29 + 136);
  *(v29 + 136) = *(v30 + 136);

  v40 = *(v29 + 144);
  *(v29 + 144) = *(v30 + 144);

  *(v29 + 152) = *(v30 + 152);
  v41 = *(v29 + 160);
  *(v29 + 160) = *(v30 + 160);

  v42 = *(v29 + 168);
  *(v29 + 168) = *(v30 + 168);

  v43 = *(v29 + 176);
  *(v29 + 176) = *(v30 + 176);

  v44 = *(v29 + 184);
  *(v29 + 184) = *(v30 + 184);

  v45 = *(v29 + 192);
  *(v29 + 192) = *(v30 + 192);

  *(v29 + 200) = *(v30 + 200);
  v46 = *(v29 + 208);
  *(v29 + 208) = *(v30 + 208);
  MEMORY[0x193ACF400](v46);
  *(a1 + *(a3 + 32)) = *(a2 + *(a3 + 32));
  return a1;
}

uint64_t type metadata completion function for Executor.Matches()
{
  result = type metadata accessor for MEProgram(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for Executor.Matches(uint64_t a1, uint64_t *a2, int *a3)
{
  v3 = *(*(a3 - 1) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v6 = v4 + ((v3 + 16) & ~v3);
  }

  else
  {
    v6 = a1;
    *(a1 + 8) = a2[1];
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 17) = *(a2 + 17);
    v8 = type metadata accessor for MEProgram(0);
    v9 = v8[8];
    v10 = type metadata accessor for CaptureList();
    v11 = *(*(v10 - 8) + 16);

    v11(v6 + v9, a2 + v9, v10);
    *(v6 + v8[9]) = *(a2 + v8[9]);
    *(v6 + v8[10]) = *(a2 + v8[10]);
    *(v6 + v8[11]) = *(a2 + v8[11]);
    v12 = v8[12];
    v13 = v6 + v12;
    v14 = a2 + v12;
    v15 = *(v14 + 8);
    *v13 = *v14;
    *(v13 + 8) = v15;
    v16 = *(v14 + 24);
    *(v13 + 16) = *(v14 + 16);
    *(v13 + 24) = v16;
    v17 = *(v14 + 40);
    *(v13 + 32) = *(v14 + 32);
    *(v13 + 40) = v17;
    *(v13 + 48) = *(v14 + 48);
    v18 = *(v14 + 64);
    *(v13 + 56) = *(v14 + 56);
    *(v13 + 64) = v18;
    *(v13 + 72) = *(v14 + 72);
    *(v6 + v8[13]) = *(a2 + v8[13]);
    v19 = a3[7];
    v20 = a3[8];
    v21 = (v6 + v19);
    v22 = (a2 + v19);
    v23 = v22[1];
    *v21 = *v22;
    v21[1] = v23;
    *(v6 + v20) = *(a2 + v20);
    *(v6 + a3[9]) = *(a2 + a3[9]);
  }

  return v6;
}

uint64_t destroy for Executor.Matches(char *a1, uint64_t a2)
{
  v4 = *a1;

  v5 = type metadata accessor for MEProgram(0);
  v6 = v5[8];
  v7 = type metadata accessor for CaptureList();
  (*(*(v7 - 8) + 8))(&a1[v6], v7);
  v8 = *&a1[v5[9]];

  v9 = *&a1[v5[10]];

  v10 = &a1[v5[12]];
  v11 = *v10;

  v12 = *(v10 + 1);

  v13 = *(v10 + 2);

  v14 = *(v10 + 3);

  v15 = *(v10 + 4);

  v16 = *(v10 + 5);

  v17 = *(v10 + 7);

  v18 = *(v10 + 8);

  v19 = *(v10 + 9);

  v20 = *&a1[v5[13]];

  v21 = *&a1[*(a2 + 28) + 8];
}

uint64_t initializeWithCopy for Executor.Matches(uint64_t a1, uint64_t a2, int *a3)
{
  v5 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v5;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  v6 = type metadata accessor for MEProgram(0);
  v7 = v6[8];
  v8 = type metadata accessor for CaptureList();
  v9 = *(*(v8 - 8) + 16);

  v9(a1 + v7, a2 + v7, v8);
  *(a1 + v6[9]) = *(a2 + v6[9]);
  *(a1 + v6[10]) = *(a2 + v6[10]);
  *(a1 + v6[11]) = *(a2 + v6[11]);
  v10 = v6[12];
  v11 = a1 + v10;
  v12 = a2 + v10;
  v13 = *(v12 + 8);
  *v11 = *v12;
  *(v11 + 8) = v13;
  v14 = *(v12 + 24);
  *(v11 + 16) = *(v12 + 16);
  *(v11 + 24) = v14;
  v15 = *(v12 + 40);
  *(v11 + 32) = *(v12 + 32);
  *(v11 + 40) = v15;
  *(v11 + 48) = *(v12 + 48);
  v16 = *(v12 + 64);
  *(v11 + 56) = *(v12 + 56);
  *(v11 + 64) = v16;
  *(v11 + 72) = *(v12 + 72);
  *(a1 + v6[13]) = *(a2 + v6[13]);
  v17 = a3[7];
  v18 = a3[8];
  v19 = (a1 + v17);
  v20 = (a2 + v17);
  v21 = v20[1];
  *v19 = *v20;
  v19[1] = v21;
  *(a1 + v18) = *(a2 + v18);
  *(a1 + a3[9]) = *(a2 + a3[9]);

  return a1;
}

uint64_t *assignWithCopy for Executor.Matches(uint64_t *a1, uint64_t *a2, int *a3)
{
  v6 = *a1;
  *a1 = *a2;

  v7 = a2[1];
  *(a1 + 16) = *(a2 + 16);
  a1[1] = v7;
  *(a1 + 17) = *(a2 + 17);
  *(a1 + 18) = *(a2 + 18);
  v8 = type metadata accessor for MEProgram(0);
  v9 = v8[8];
  v10 = type metadata accessor for CaptureList();
  (*(*(v10 - 8) + 24))(a1 + v9, a2 + v9, v10);
  v11 = v8[9];
  v12 = *(a1 + v11);
  *(a1 + v11) = *(a2 + v11);

  v13 = v8[10];
  v14 = *(a1 + v13);
  *(a1 + v13) = *(a2 + v13);

  *(a1 + v8[11]) = *(a2 + v8[11]);
  v15 = v8[12];
  v16 = a1 + v15;
  v17 = a2 + v15;
  v18 = *(a1 + v15);
  *(a1 + v15) = *(a2 + v15);

  v19 = *(v16 + 8);
  *(v16 + 8) = *(v17 + 8);

  v20 = *(v16 + 16);
  *(v16 + 16) = *(v17 + 16);

  v21 = *(v16 + 24);
  *(v16 + 24) = *(v17 + 24);

  v22 = *(v16 + 32);
  *(v16 + 32) = *(v17 + 32);

  v23 = *(v16 + 40);
  *(v16 + 40) = *(v17 + 40);

  *(v16 + 48) = *(v17 + 48);
  v24 = *(v16 + 56);
  *(v16 + 56) = *(v17 + 56);

  v25 = *(v16 + 64);
  *(v16 + 64) = *(v17 + 64);

  v26 = *(v16 + 72);
  *(v16 + 72) = *(v17 + 72);

  v27 = v8[13];
  v28 = *(a1 + v27);
  *(a1 + v27) = *(a2 + v27);

  v29 = a3[7];
  v30 = (a1 + v29);
  v31 = (a2 + v29);
  *v30 = *v31;
  v32 = v30[1];
  v30[1] = v31[1];

  v33 = a3[8];
  v34 = (a1 + v33);
  v35 = (a2 + v33);
  *v34 = *v35;
  v34[1] = v35[1];
  v36 = a3[9];
  v37 = (a1 + v36);
  v38 = (a2 + v36);
  *v37 = *v38;
  v37[1] = v38[1];
  return a1;
}

uint64_t initializeWithTake for Executor.Matches(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v6;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  v7 = type metadata accessor for MEProgram(0);
  v8 = v7[8];
  v9 = type metadata accessor for CaptureList();
  (*(*(v9 - 8) + 32))(a1 + v8, a2 + v8, v9);
  *(a1 + v7[9]) = *(a2 + v7[9]);
  *(a1 + v7[10]) = *(a2 + v7[10]);
  *(a1 + v7[11]) = *(a2 + v7[11]);
  v10 = v7[12];
  v11 = (a1 + v10);
  v12 = (a2 + v10);
  v13 = v12[4];
  v11[3] = v12[3];
  v11[4] = v13;
  v14 = v12[2];
  v11[1] = v12[1];
  v11[2] = v14;
  *v11 = *v12;
  *(a1 + v7[13]) = *(a2 + v7[13]);
  v15 = a3[8];
  *(a1 + a3[7]) = *(a2 + a3[7]);
  *(a1 + v15) = *(a2 + v15);
  *(a1 + a3[9]) = *(a2 + a3[9]);
  return a1;
}

uint64_t *assignWithTake for Executor.Matches(uint64_t *a1, uint64_t *a2, int *a3)
{
  v6 = *a1;
  *a1 = *a2;

  a1[1] = a2[1];
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  *(a1 + 18) = *(a2 + 18);
  v7 = type metadata accessor for MEProgram(0);
  v8 = v7[8];
  v9 = type metadata accessor for CaptureList();
  (*(*(v9 - 8) + 40))(a1 + v8, a2 + v8, v9);
  v10 = v7[9];
  v11 = *(a1 + v10);
  *(a1 + v10) = *(a2 + v10);

  v12 = v7[10];
  v13 = *(a1 + v12);
  *(a1 + v12) = *(a2 + v12);

  *(a1 + v7[11]) = *(a2 + v7[11]);
  v14 = v7[12];
  v15 = a1 + v14;
  v16 = a2 + v14;
  v17 = *(a1 + v14);
  *(a1 + v14) = *(a2 + v14);

  v18 = *(v15 + 8);
  *(v15 + 8) = *(v16 + 8);

  v19 = *(v15 + 16);
  *(v15 + 16) = *(v16 + 16);

  v20 = *(v15 + 24);
  *(v15 + 24) = *(v16 + 24);

  v21 = *(v15 + 32);
  *(v15 + 32) = *(v16 + 32);

  v22 = *(v15 + 40);
  *(v15 + 40) = *(v16 + 40);

  *(v15 + 48) = *(v16 + 48);
  v23 = *(v15 + 56);
  *(v15 + 56) = *(v16 + 56);

  v24 = *(v15 + 64);
  *(v15 + 64) = *(v16 + 64);

  v25 = *(v15 + 72);
  *(v15 + 72) = *(v16 + 72);

  v26 = v7[13];
  v27 = *(a1 + v26);
  *(a1 + v26) = *(a2 + v26);

  v28 = a3[7];
  v29 = (a1 + v28);
  v30 = (a2 + v28);
  v32 = *v30;
  v31 = v30[1];
  v33 = v29[1];
  *v29 = v32;
  v29[1] = v31;

  v34 = a3[9];
  *(a1 + a3[8]) = *(a2 + a3[8]);
  *(a1 + v34) = *(a2 + v34);
  return a1;
}

uint64_t __swift_get_extra_inhabitant_index_158Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MEProgram(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_index_159Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MEProgram(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata completion function for SplitSequence(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  result = type metadata accessor for RangesSequence();
  if (v4 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for SplitSequence(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 64);
  v10 = *(v6 - 8);
  v11 = *(v10 + 80);
  v12 = v9 + v11;
  v13 = ((v9 + v11) & ~v11) + *(v10 + 64);
  v14 = *(v8 + 80) | *(v10 + 80);
  if ((v14 & 0x1000F8) != 0 || ((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 9 > 0x18)
  {
    v16 = *a2;
    *a1 = *a2;
    a1 = (v16 + (((v14 & 0xF8 | 7u) + 16) & ~(v14 & 0xF8 | 7u)));
  }

  else
  {
    v17 = ~v11;
    (*(v8 + 16))(a1, a2, AssociatedTypeWitness);
    (*(v10 + 16))((a1 + v12) & v17, (a2 + v12) & v17, v6);
    v18 = (a1 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
    v19 = (a2 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
    *v18 = *v19;
    *(v18 + 8) = *(v19 + 8);
  }

  return a1;
}

uint64_t initializeWithCopy for SplitSequence(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8) + 16;
  (*v8)(a1, a2, AssociatedTypeWitness);
  v9 = *(v8 + 48);
  v10 = *(v6 - 8);
  v11 = v10 + 16;
  v12 = *(v10 + 80);
  v13 = v9 + v12;
  (*(v10 + 16))((v9 + v12 + a1) & ~v12, (v9 + v12 + a2) & ~v12, v6);
  v14 = (v13 & ~v12) + *(v11 + 48) + 7;
  v15 = (v14 + a1) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v14 + a2) & 0xFFFFFFFFFFFFFFF8;
  *v15 = *v16;
  *(v15 + 8) = *(v16 + 8);
  return a1;
}

uint64_t assignWithCopy for SplitSequence(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8) + 24;
  (*v8)(a1, a2, AssociatedTypeWitness);
  v9 = *(v8 + 40);
  v10 = *(v6 - 8);
  v11 = v10 + 24;
  v12 = *(v10 + 80);
  v13 = v9 + v12;
  (*(v10 + 24))((v9 + v12 + a1) & ~v12, (v9 + v12 + a2) & ~v12, v6);
  v14 = (v13 & ~v12) + *(v11 + 40) + 7;
  v15 = (v14 + a1) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v14 + a2) & 0xFFFFFFFFFFFFFFF8;
  *v15 = *v16;
  *(v15 + 8) = *(v16 + 8);
  return a1;
}

uint64_t initializeWithTake for SplitSequence(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8) + 32;
  (*v8)(a1, a2, AssociatedTypeWitness);
  v9 = *(v8 + 32);
  v10 = *(v6 - 8);
  v11 = v10 + 32;
  v12 = *(v10 + 80);
  v13 = v9 + v12;
  (*(v10 + 32))((v9 + v12 + a1) & ~v12, (v9 + v12 + a2) & ~v12, v6);
  v14 = (v13 & ~v12) + *(v11 + 32) + 7;
  v15 = (v14 + a1) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v14 + a2) & 0xFFFFFFFFFFFFFFF8;
  *v15 = *v16;
  *(v15 + 8) = *(v16 + 8);
  return a1;
}

uint64_t assignWithTake for SplitSequence(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8) + 40;
  (*v8)(a1, a2, AssociatedTypeWitness);
  v9 = *(v8 + 24);
  v10 = *(v6 - 8);
  v11 = v10 + 40;
  v12 = *(v10 + 80);
  v13 = v9 + v12;
  (*(v10 + 40))((v9 + v12 + a1) & ~v12, (v9 + v12 + a2) & ~v12, v6);
  v14 = (v13 & ~v12) + *(v11 + 24) + 7;
  v15 = (v14 + a1) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v14 + a2) & 0xFFFFFFFFFFFFFFF8;
  *v15 = *v16;
  *(v15 + 8) = *(v16 + 8);
  return a1;
}

uint64_t getEnumTagSinglePayload for SplitSequence(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = *(v6 - 8);
  v10 = *(v9 + 84);
  v11 = *(v7 + 64);
  v12 = *(v9 + 80);
  if (v10 <= v8)
  {
    v13 = *(v7 + 84);
  }

  else
  {
    v13 = *(v9 + 84);
  }

  if (v13 <= 0xFE)
  {
    v14 = 254;
  }

  else
  {
    v14 = v13;
  }

  if (!a2)
  {
    return 0;
  }

  v15 = v11 + v12;
  v16 = ((v11 + v12) & ~v12) + *(*(v6 - 8) + 64);
  if (v14 < a2)
  {
    v17 = ((v16 + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
    if (v17 <= 3)
    {
      v18 = ((a2 - v14 + 255) >> 8) + 1;
    }

    else
    {
      v18 = 2;
    }

    if (v18 >= 0x10000)
    {
      v19 = 4;
    }

    else
    {
      v19 = 2;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    if (v18 >= 2)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    if (v20 > 1)
    {
      if (v20 == 2)
      {
        v21 = *&a1[v17];
        if (*&a1[v17])
        {
          goto LABEL_23;
        }
      }

      else
      {
        v21 = *&a1[v17];
        if (v21)
        {
          goto LABEL_23;
        }
      }
    }

    else if (v20)
    {
      v21 = a1[v17];
      if (a1[v17])
      {
LABEL_23:
        v22 = (v21 - 1) << (8 * v17);
        if (v17 <= 3)
        {
          v23 = *a1;
        }

        else
        {
          v22 = 0;
          v23 = *a1;
        }

        v28 = v14 + (v23 | v22);
        return (v28 + 1);
      }
    }
  }

  if (v13 < 0xFE)
  {
    v26 = *((&a1[v16 + 7] & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v26 >= 2)
    {
      v28 = (v26 + 2147483646) & 0x7FFFFFFF;
      return (v28 + 1);
    }

    return 0;
  }

  if (v8 >= v10)
  {
    v27 = *(v7 + 48);

    return v27(a1);
  }

  else
  {
    v24 = *(v9 + 48);

    return v24(&a1[v15] & ~v12, v10, v6);
  }
}

void storeEnumTagSinglePayload for SplitSequence(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = *(v9 + 84);
  v11 = *(v8 - 8);
  v12 = *(v11 + 84);
  v13 = *(v11 + 80);
  if (v12 <= v10)
  {
    v14 = *(v9 + 84);
  }

  else
  {
    v14 = *(v11 + 84);
  }

  if (v14 <= 0xFE)
  {
    v15 = 254;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(v9 + 64) + v13;
  v17 = (v16 & ~v13) + *(*(v8 - 8) + 64);
  v18 = ((v17 + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v15 >= a3)
  {
    v21 = 0;
    if (v15 >= a2)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (v18 <= 3)
    {
      v19 = ((a3 - v15 + 255) >> 8) + 1;
    }

    else
    {
      v19 = 2;
    }

    if (v19 >= 0x10000)
    {
      v20 = 4;
    }

    else
    {
      v20 = 2;
    }

    if (v19 < 0x100)
    {
      v20 = 1;
    }

    if (v19 >= 2)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    if (v15 >= a2)
    {
LABEL_20:
      if (v21 > 1)
      {
        if (v21 != 2)
        {
          *&a1[v18] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_35;
        }

        *&a1[v18] = 0;
      }

      else if (v21)
      {
        a1[v18] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_35;
      }

      if (!a2)
      {
        return;
      }

LABEL_35:
      if (v14 < 0xFE)
      {
        *((&a1[v17 + 7] & 0xFFFFFFFFFFFFFFF8) + 8) = a2 + 1;
      }

      else if (v14 >= a2)
      {
        if (v10 >= v12)
        {
          v28 = *(v9 + 56);

          v28(a1, a2);
        }

        else
        {
          v27 = *(v11 + 56);

          v27(&a1[v16] & ~v13, a2, v12, v8);
        }
      }

      else
      {
        if (v17 <= 3)
        {
          v24 = ~(-1 << (8 * v17));
        }

        else
        {
          v24 = -1;
        }

        if (v17)
        {
          v25 = v24 & (~v14 + a2);
          if (v17 <= 3)
          {
            v26 = v17;
          }

          else
          {
            v26 = 4;
          }

          bzero(a1, v17);
          if (v26 > 2)
          {
            if (v26 == 3)
            {
              *a1 = v25;
              a1[2] = BYTE2(v25);
            }

            else
            {
              *a1 = v25;
            }
          }

          else if (v26 == 1)
          {
            *a1 = v25;
          }

          else
          {
            *a1 = v25;
          }
        }
      }

      return;
    }
  }

  v22 = ~v15 + a2;
  bzero(a1, ((v17 + 7) & 0xFFFFFFFFFFFFFFF8) + 9);
  if (v18 <= 3)
  {
    v23 = (v22 >> 8) + 1;
  }

  else
  {
    v23 = 1;
  }

  if (v18 <= 3)
  {
    *a1 = v22;
    if (v21 > 1)
    {
LABEL_30:
      if (v21 == 2)
      {
        *&a1[v18] = v23;
      }

      else
      {
        *&a1[v18] = v23;
      }

      return;
    }
  }

  else
  {
    *a1 = v22;
    if (v21 > 1)
    {
      goto LABEL_30;
    }
  }

  if (v21)
  {
    a1[v18] = v23;
  }
}

uint64_t initializeBufferWithCopyOfBuffer for RegexRangesSequence(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = type metadata accessor for Executor.Matches();
  v7 = *(*(v6 - 8) + 80);
  v8 = *a2;
  *a1 = *a2;
  if ((v7 & 0x20000) != 0)
  {
    a1 = v8 + ((v7 + 16) & ~v7);
  }

  else
  {
    v9 = v6;
    *(a1 + 8) = a2[1];
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 17) = *(a2 + 17);
    v10 = type metadata accessor for MEProgram(0);
    v11 = v10[8];
    v12 = type metadata accessor for CaptureList();
    v13 = *(*(v12 - 8) + 16);

    v13(a1 + v11, a2 + v11, v12);
    *(a1 + v10[9]) = *(a2 + v10[9]);
    *(a1 + v10[10]) = *(a2 + v10[10]);
    *(a1 + v10[11]) = *(a2 + v10[11]);
    v14 = v10[12];
    v15 = a1 + v14;
    v16 = a2 + v14;
    v17 = *(v16 + 8);
    *v15 = *v16;
    *(v15 + 8) = v17;
    v18 = *(v16 + 24);
    *(v15 + 16) = *(v16 + 16);
    *(v15 + 24) = v18;
    v19 = *(v16 + 40);
    *(v15 + 32) = *(v16 + 32);
    *(v15 + 40) = v19;
    *(v15 + 48) = *(v16 + 48);
    v20 = *(v16 + 64);
    *(v15 + 56) = *(v16 + 56);
    *(v15 + 64) = v20;
    *(v15 + 72) = *(v16 + 72);
    *(a1 + v10[13]) = *(a2 + v10[13]);
    v21 = v9[7];
    v22 = (a1 + v21);
    v23 = (a2 + v21);
    v24 = v23[1];
    *v22 = *v23;
    v22[1] = v24;
    *(a1 + v9[8]) = *(a2 + v9[8]);
    *(a1 + v9[9]) = *(a2 + v9[9]);
  }

  return a1;
}

uint64_t destroy for RegexRangesSequence(char *a1, uint64_t a2)
{
  v4 = *a1;

  v5 = type metadata accessor for MEProgram(0);
  v6 = v5[8];
  v7 = type metadata accessor for CaptureList();
  (*(*(v7 - 8) + 8))(&a1[v6], v7);
  v8 = *&a1[v5[9]];

  v9 = *&a1[v5[10]];

  v10 = &a1[v5[12]];
  v11 = *v10;

  v12 = *(v10 + 1);

  v13 = *(v10 + 2);

  v14 = *(v10 + 3);

  v15 = *(v10 + 4);

  v16 = *(v10 + 5);

  v17 = *(v10 + 7);

  v18 = *(v10 + 8);

  v19 = *(v10 + 9);

  v20 = *&a1[v5[13]];

  v21 = *(a2 + 16);
  v22 = *&a1[*(type metadata accessor for Executor.Matches() + 28) + 8];
}

uint64_t initializeWithCopy for RegexRangesSequence(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v5;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  v6 = type metadata accessor for MEProgram(0);
  v7 = v6[8];
  v8 = type metadata accessor for CaptureList();
  v9 = *(*(v8 - 8) + 16);

  v9(a1 + v7, a2 + v7, v8);
  *(a1 + v6[9]) = *(a2 + v6[9]);
  *(a1 + v6[10]) = *(a2 + v6[10]);
  *(a1 + v6[11]) = *(a2 + v6[11]);
  v10 = v6[12];
  v11 = a1 + v10;
  v12 = a2 + v10;
  v13 = *(v12 + 8);
  *v11 = *v12;
  *(v11 + 8) = v13;
  v14 = *(v12 + 24);
  *(v11 + 16) = *(v12 + 16);
  *(v11 + 24) = v14;
  v15 = *(v12 + 40);
  *(v11 + 32) = *(v12 + 32);
  *(v11 + 40) = v15;
  *(v11 + 48) = *(v12 + 48);
  v16 = *(v12 + 64);
  *(v11 + 56) = *(v12 + 56);
  *(v11 + 64) = v16;
  *(v11 + 72) = *(v12 + 72);
  *(a1 + v6[13]) = *(a2 + v6[13]);
  v17 = *(a3 + 16);
  v18 = type metadata accessor for Executor.Matches();
  v19 = v18[7];
  v20 = (a1 + v19);
  v21 = (a2 + v19);
  v22 = v21[1];
  *v20 = *v21;
  v20[1] = v22;
  *(a1 + v18[8]) = *(a2 + v18[8]);
  *(a1 + v18[9]) = *(a2 + v18[9]);

  return a1;
}

uint64_t *assignWithCopy for RegexRangesSequence(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a1;
  *a1 = *a2;

  v7 = a2[1];
  *(a1 + 16) = *(a2 + 16);
  a1[1] = v7;
  *(a1 + 17) = *(a2 + 17);
  *(a1 + 18) = *(a2 + 18);
  v8 = type metadata accessor for MEProgram(0);
  v9 = v8[8];
  v10 = type metadata accessor for CaptureList();
  (*(*(v10 - 8) + 24))(a1 + v9, a2 + v9, v10);
  v11 = v8[9];
  v12 = *(a1 + v11);
  *(a1 + v11) = *(a2 + v11);

  v13 = v8[10];
  v14 = *(a1 + v13);
  *(a1 + v13) = *(a2 + v13);

  *(a1 + v8[11]) = *(a2 + v8[11]);
  v15 = v8[12];
  v16 = a1 + v15;
  v17 = a2 + v15;
  v18 = *(a1 + v15);
  *(a1 + v15) = *(a2 + v15);

  v19 = *(v16 + 8);
  *(v16 + 8) = *(v17 + 8);

  v20 = *(v16 + 16);
  *(v16 + 16) = *(v17 + 16);

  v21 = *(v16 + 24);
  *(v16 + 24) = *(v17 + 24);

  v22 = *(v16 + 32);
  *(v16 + 32) = *(v17 + 32);

  v23 = *(v16 + 40);
  *(v16 + 40) = *(v17 + 40);

  *(v16 + 48) = *(v17 + 48);
  v24 = *(v16 + 56);
  *(v16 + 56) = *(v17 + 56);

  v25 = *(v16 + 64);
  *(v16 + 64) = *(v17 + 64);

  v26 = *(v16 + 72);
  *(v16 + 72) = *(v17 + 72);

  v27 = v8[13];
  v28 = *(a1 + v27);
  *(a1 + v27) = *(a2 + v27);

  v29 = *(a3 + 16);
  v30 = type metadata accessor for Executor.Matches();
  v31 = v30[7];
  v32 = (a1 + v31);
  v33 = (a2 + v31);
  *v32 = *v33;
  v34 = v32[1];
  v32[1] = v33[1];

  v35 = v30[8];
  v36 = (a1 + v35);
  v37 = (a2 + v35);
  *v36 = *v37;
  v36[1] = v37[1];
  v38 = v30[9];
  v39 = (a1 + v38);
  v40 = (a2 + v38);
  *v39 = *v40;
  v39[1] = v40[1];
  return a1;
}

uint64_t initializeWithTake for RegexRangesSequence(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v6;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  v7 = type metadata accessor for MEProgram(0);
  v8 = v7[8];
  v9 = type metadata accessor for CaptureList();
  (*(*(v9 - 8) + 32))(a1 + v8, a2 + v8, v9);
  *(a1 + v7[9]) = *(a2 + v7[9]);
  *(a1 + v7[10]) = *(a2 + v7[10]);
  *(a1 + v7[11]) = *(a2 + v7[11]);
  v10 = v7[12];
  v11 = (a1 + v10);
  v12 = (a2 + v10);
  v13 = v12[4];
  v11[3] = v12[3];
  v11[4] = v13;
  v14 = v12[2];
  v11[1] = v12[1];
  v11[2] = v14;
  *v11 = *v12;
  *(a1 + v7[13]) = *(a2 + v7[13]);
  v15 = *(a3 + 16);
  v16 = type metadata accessor for Executor.Matches();
  *(a1 + v16[7]) = *(a2 + v16[7]);
  *(a1 + v16[8]) = *(a2 + v16[8]);
  *(a1 + v16[9]) = *(a2 + v16[9]);
  return a1;
}

uint64_t *assignWithTake for RegexRangesSequence(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a1;
  *a1 = *a2;

  a1[1] = a2[1];
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  *(a1 + 18) = *(a2 + 18);
  v7 = type metadata accessor for MEProgram(0);
  v8 = v7[8];
  v9 = type metadata accessor for CaptureList();
  (*(*(v9 - 8) + 40))(a1 + v8, a2 + v8, v9);
  v10 = v7[9];
  v11 = *(a1 + v10);
  *(a1 + v10) = *(a2 + v10);

  v12 = v7[10];
  v13 = *(a1 + v12);
  *(a1 + v12) = *(a2 + v12);

  *(a1 + v7[11]) = *(a2 + v7[11]);
  v14 = v7[12];
  v15 = a1 + v14;
  v16 = a2 + v14;
  v17 = *(a1 + v14);
  *(a1 + v14) = *(a2 + v14);

  v18 = *(v15 + 8);
  *(v15 + 8) = *(v16 + 8);

  v19 = *(v15 + 16);
  *(v15 + 16) = *(v16 + 16);

  v20 = *(v15 + 24);
  *(v15 + 24) = *(v16 + 24);

  v21 = *(v15 + 32);
  *(v15 + 32) = *(v16 + 32);

  v22 = *(v15 + 40);
  *(v15 + 40) = *(v16 + 40);

  *(v15 + 48) = *(v16 + 48);
  v23 = *(v15 + 56);
  *(v15 + 56) = *(v16 + 56);

  v24 = *(v15 + 64);
  *(v15 + 64) = *(v16 + 64);

  v25 = *(v15 + 72);
  *(v15 + 72) = *(v16 + 72);

  v26 = v7[13];
  v27 = *(a1 + v26);
  *(a1 + v26) = *(a2 + v26);

  v28 = *(a3 + 16);
  v29 = type metadata accessor for Executor.Matches();
  v30 = v29[7];
  v31 = (a1 + v30);
  v32 = (a2 + v30);
  v34 = *v32;
  v33 = v32[1];
  v35 = v31[1];
  *v31 = v34;
  v31[1] = v33;

  *(a1 + v29[8]) = *(a2 + v29[8]);
  *(a1 + v29[9]) = *(a2 + v29[9]);
  return a1;
}

uint64_t destroy for SubstringSearcher(void *a1)
{
  v2 = a1[3];

  v3 = a1[7];

  v4 = a1[8];
}

uint64_t initializeWithCopy for SubstringSearcher(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;
  *(a1 + 32) = *(a2 + 32);
  v4 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v4;
  v5 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v5;
  v6 = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 80) = v6;

  return a1;
}

uint64_t assignWithCopy for SubstringSearcher(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  v4 = *(a1 + 24);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  v5 = *(a1 + 56);
  *(a1 + 56) = *(a2 + 56);

  v6 = *(a1 + 64);
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);
  v7 = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 80) = v7;
  return a1;
}

__n128 __swift_memcpy89_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t assignWithTake for SubstringSearcher(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 24);
  v5 = *(a1 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  v6 = *(a1 + 56);

  v7 = *(a1 + 64);
  *(a1 + 56) = *(a2 + 56);

  v8 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v8;
  *(a1 + 88) = *(a2 + 88);
  return a1;
}

uint64_t getEnumTagSinglePayload for SubstringSearcher(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 89))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SubstringSearcher(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata completion function for RangesSequence(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  result = swift_getAssociatedTypeWitness();
  if (v4 <= 0x3F)
  {
    v6 = *(result - 8) + 64;
    result = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      v7 = *(result - 8) + 64;
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for RangesSequence(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v6 - 8);
  v10 = *(v9 + 80);
  v11 = *(v8 + 64) + v10;
  v12 = (*(v8 + 80) | v10);
  if (v12 > 7 || ((*(v8 + 80) | v10) & 0x100000) != 0 || (v11 & ~v10) + *(v9 + 64) > 0x18)
  {
    v15 = *a2;
    *a1 = *a2;
    a1 = (v15 + ((v12 + 16) & ~v12));
  }

  else
  {
    v16 = ~v10;
    (*(v8 + 16))(a1, a2, AssociatedTypeWitness);
    (*(v9 + 16))((a1 + v11) & v16, (a2 + v11) & v16, v6);
  }

  return a1;
}

uint64_t destroy for SplitSequence(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8) + 8;
  (*v6)(a1, AssociatedTypeWitness);
  v7 = *(v4 - 8);
  v8 = *(v7 + 8);
  v9 = (*(v6 + 56) + a1 + *(v7 + 80)) & ~*(v7 + 80);

  return v8(v9, v4);
}

uint64_t initializeWithCopy for RangesSequence(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8) + 16;
  (*v8)(a1, a2, AssociatedTypeWitness);
  v9 = *(v6 - 8);
  (*(v9 + 16))((*(v8 + 48) + *(v9 + 80) + a1) & ~*(v9 + 80), (*(v8 + 48) + *(v9 + 80) + a2) & ~*(v9 + 80), v6);
  return a1;
}

uint64_t assignWithCopy for RangesSequence(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8) + 24;
  (*v8)(a1, a2, AssociatedTypeWitness);
  v9 = *(v6 - 8);
  (*(v9 + 24))((*(v8 + 40) + *(v9 + 80) + a1) & ~*(v9 + 80), (*(v8 + 40) + *(v9 + 80) + a2) & ~*(v9 + 80), v6);
  return a1;
}

uint64_t initializeWithTake for RangesSequence(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8) + 32;
  (*v8)(a1, a2, AssociatedTypeWitness);
  v9 = *(v6 - 8);
  (*(v9 + 32))((*(v8 + 32) + *(v9 + 80) + a1) & ~*(v9 + 80), (*(v8 + 32) + *(v9 + 80) + a2) & ~*(v9 + 80), v6);
  return a1;
}

uint64_t assignWithTake for RangesSequence(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8) + 40;
  (*v8)(a1, a2, AssociatedTypeWitness);
  v9 = *(v6 - 8);
  (*(v9 + 40))((*(v8 + 24) + *(v9 + 80) + a1) & ~*(v9 + 80), (*(v8 + 24) + *(v9 + 80) + a2) & ~*(v9 + 80), v6);
  return a1;
}

uint64_t getEnumTagSinglePayload for RangesSequence(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 84);
  v10 = *(v6 - 8);
  v11 = *(v10 + 84);
  v12 = *(v10 + 80);
  if (v11 <= v9)
  {
    v13 = *(v8 + 84);
  }

  else
  {
    v13 = *(v10 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v14 = *(*(AssociatedTypeWitness - 8) + 64) + v12;
  if (a2 <= v13)
  {
    goto LABEL_28;
  }

  v15 = (v14 & ~v12) + *(*(v6 - 8) + 64);
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v18 = ((a2 - v13 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v18))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v18 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v18 < 2)
    {
LABEL_27:
      if (v13)
      {
LABEL_28:
        if (v9 >= v11)
        {
          v24 = *(v8 + 48);

          return v24(a1);
        }

        else
        {
          v22 = *(v10 + 48);

          return v22((a1 + v14) & ~v12, v11, v6);
        }
      }

      return 0;
    }
  }

  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
    goto LABEL_27;
  }

LABEL_14:
  v19 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v19 = 0;
  }

  if (v15)
  {
    if (v15 <= 3)
    {
      v20 = (v14 & ~v12) + *(*(v6 - 8) + 64);
    }

    else
    {
      v20 = 4;
    }

    if (v20 > 2)
    {
      if (v20 == 3)
      {
        v21 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v21 = *a1;
      }
    }

    else if (v20 == 1)
    {
      v21 = *a1;
    }

    else
    {
      v21 = *a1;
    }
  }

  else
  {
    v21 = 0;
  }

  return v13 + (v21 | v19) + 1;
}

void storeEnumTagSinglePayload for RangesSequence(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = *(v9 + 84);
  v11 = *(v8 - 8);
  v12 = *(v11 + 84);
  v13 = *(v9 + 64);
  v14 = *(v11 + 80);
  if (v12 <= v10)
  {
    v15 = *(v9 + 84);
  }

  else
  {
    v15 = *(v11 + 84);
  }

  v16 = v13 + v14;
  v17 = ((v13 + v14) & ~v14) + *(*(v8 - 8) + 64);
  if (a3 <= v15)
  {
    v18 = 0;
  }

  else if (v17 <= 3)
  {
    v21 = ((a3 - v15 + ~(-1 << (8 * v17))) >> (8 * v17)) + 1;
    if (HIWORD(v21))
    {
      v18 = 4;
    }

    else
    {
      if (v21 < 0x100)
      {
        v22 = 1;
      }

      else
      {
        v22 = 2;
      }

      if (v21 >= 2)
      {
        v18 = v22;
      }

      else
      {
        v18 = 0;
      }
    }
  }

  else
  {
    v18 = 1;
  }

  if (v15 < a2)
  {
    v19 = ~v15 + a2;
    if (v17 < 4)
    {
      v20 = (v19 >> (8 * v17)) + 1;
      if (v17)
      {
        v23 = v19 & ~(-1 << (8 * v17));
        bzero(a1, v17);
        if (v17 != 3)
        {
          if (v17 == 2)
          {
            *a1 = v23;
            if (v18 > 1)
            {
LABEL_46:
              if (v18 == 2)
              {
                *&a1[v17] = v20;
              }

              else
              {
                *&a1[v17] = v20;
              }

              return;
            }
          }

          else
          {
            *a1 = v19;
            if (v18 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v23;
        a1[2] = BYTE2(v23);
      }

      if (v18 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v17);
      *a1 = v19;
      v20 = 1;
      if (v18 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v18)
    {
      a1[v17] = v20;
    }

    return;
  }

  if (v18 > 1)
  {
    if (v18 != 2)
    {
      *&a1[v17] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v17] = 0;
  }

  else if (v18)
  {
    a1[v17] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v10 >= v12)
  {
    v25 = *(v9 + 56);

    v25(a1, a2);
  }

  else
  {
    v24 = *(v11 + 56);

    v24(&a1[v16] & ~v14, a2, v12, v8);
  }
}

uint64_t destroy for ZSearcher(uint64_t *a1)
{
  v2 = *a1;

  v3 = a1[1];

  v4 = a1[3];
}

uint64_t initializeWithCopy for ZSearcher(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 24);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = v3;

  return a1;
}

uint64_t *assignWithCopy for ZSearcher(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  *a1 = *a2;

  v5 = a1[1];
  a1[1] = a2[1];

  v7 = a2[2];
  v6 = a2[3];
  v8 = a1[3];
  a1[2] = v7;
  a1[3] = v6;

  return a1;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t *assignWithTake for ZSearcher(uint64_t *a1, _OWORD *a2)
{
  v4 = *a1;

  v5 = a1[1];
  *a1 = *a2;

  v6 = a1[3];
  *(a1 + 1) = a2[1];

  return a1;
}

uint64_t getEnumTagSinglePayload for ZSearcher(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for ZSearcher(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for MEProgram(uint64_t a1, uint64_t *a2, int *a3)
{
  v3 = *(*(a3 - 1) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v5 = v4 + ((v3 + 16) & ~v3);
  }

  else
  {
    v5 = a1;
    *(a1 + 8) = a2[1];
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 17) = *(a2 + 17);
    v6 = a3[8];
    v9 = type metadata accessor for CaptureList();
    v10 = *(*(v9 - 8) + 16);

    v10(v5 + v6, a2 + v6, v9);
    v11 = a3[10];
    *(v5 + a3[9]) = *(a2 + a3[9]);
    *(v5 + v11) = *(a2 + v11);
    v12 = a3[12];
    *(v5 + a3[11]) = *(a2 + a3[11]);
    v13 = v5 + v12;
    v14 = a2 + v12;
    v15 = *(v14 + 8);
    *v13 = *v14;
    *(v13 + 8) = v15;
    v16 = *(v14 + 24);
    *(v13 + 16) = *(v14 + 16);
    *(v13 + 24) = v16;
    v17 = *(v14 + 40);
    *(v13 + 32) = *(v14 + 32);
    *(v13 + 40) = v17;
    *(v13 + 48) = *(v14 + 48);
    v18 = *(v14 + 64);
    *(v13 + 56) = *(v14 + 56);
    *(v13 + 64) = v18;
    *(v13 + 72) = *(v14 + 72);
    *(v5 + a3[13]) = *(a2 + a3[13]);
  }

  return v5;
}

uint64_t destroy for MEProgram(char *a1, int *a2)
{
  v4 = *a1;

  v5 = a2[8];
  v6 = type metadata accessor for CaptureList();
  (*(*(v6 - 8) + 8))(&a1[v5], v6);
  v7 = *&a1[a2[9]];

  v8 = *&a1[a2[10]];

  v9 = &a1[a2[12]];
  v10 = *v9;

  v11 = *(v9 + 1);

  v12 = *(v9 + 2);

  v13 = *(v9 + 3);

  v14 = *(v9 + 4);

  v15 = *(v9 + 5);

  v16 = *(v9 + 7);

  v17 = *(v9 + 8);

  v18 = *(v9 + 9);

  v19 = *&a1[a2[13]];
}

uint64_t initializeWithCopy for MEProgram(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v6;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  v7 = a3[8];
  v8 = type metadata accessor for CaptureList();
  v9 = *(*(v8 - 8) + 16);

  v9(a1 + v7, a2 + v7, v8);
  v10 = a3[10];
  *(a1 + a3[9]) = *(a2 + a3[9]);
  *(a1 + v10) = *(a2 + v10);
  v11 = a3[12];
  *(a1 + a3[11]) = *(a2 + a3[11]);
  v12 = a1 + v11;
  v13 = a2 + v11;
  v14 = *(v13 + 8);
  *v12 = *v13;
  *(v12 + 8) = v14;
  v15 = *(v13 + 24);
  *(v12 + 16) = *(v13 + 16);
  *(v12 + 24) = v15;
  v16 = *(v13 + 40);
  *(v12 + 32) = *(v13 + 32);
  *(v12 + 40) = v16;
  *(v12 + 48) = *(v13 + 48);
  v17 = *(v13 + 64);
  *(v12 + 56) = *(v13 + 56);
  *(v12 + 64) = v17;
  *(v12 + 72) = *(v13 + 72);
  *(a1 + a3[13]) = *(a2 + a3[13]);

  return a1;
}

uint64_t *assignWithCopy for MEProgram(uint64_t *a1, uint64_t *a2, int *a3)
{
  v6 = *a1;
  *a1 = *a2;

  v7 = a2[1];
  *(a1 + 16) = *(a2 + 16);
  a1[1] = v7;
  *(a1 + 17) = *(a2 + 17);
  *(a1 + 18) = *(a2 + 18);
  v8 = a3[8];
  v9 = type metadata accessor for CaptureList();
  (*(*(v9 - 8) + 24))(a1 + v8, a2 + v8, v9);
  v10 = a3[9];
  v11 = *(a1 + v10);
  *(a1 + v10) = *(a2 + v10);

  v12 = a3[10];
  v13 = *(a1 + v12);
  *(a1 + v12) = *(a2 + v12);

  *(a1 + a3[11]) = *(a2 + a3[11]);
  v14 = a3[12];
  v15 = a1 + v14;
  v16 = a2 + v14;
  v17 = *(a1 + v14);
  *(a1 + v14) = *(a2 + v14);

  v18 = *(v15 + 8);
  *(v15 + 8) = *(v16 + 8);

  v19 = *(v15 + 16);
  *(v15 + 16) = *(v16 + 16);

  v20 = *(v15 + 24);
  *(v15 + 24) = *(v16 + 24);

  v21 = *(v15 + 32);
  *(v15 + 32) = *(v16 + 32);

  v22 = *(v15 + 40);
  *(v15 + 40) = *(v16 + 40);

  *(v15 + 48) = *(v16 + 48);
  v23 = *(v15 + 56);
  *(v15 + 56) = *(v16 + 56);

  v24 = *(v15 + 64);
  *(v15 + 64) = *(v16 + 64);

  v25 = *(v15 + 72);
  *(v15 + 72) = *(v16 + 72);

  v26 = a3[13];
  v27 = *(a2 + v26);
  v28 = *(a1 + v26);
  *(a1 + v26) = v27;

  return a1;
}

uint64_t initializeWithTake for MEProgram(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v6;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  v7 = a3[8];
  v8 = type metadata accessor for CaptureList();
  (*(*(v8 - 8) + 32))(a1 + v7, a2 + v7, v8);
  v9 = a3[10];
  *(a1 + a3[9]) = *(a2 + a3[9]);
  *(a1 + v9) = *(a2 + v9);
  v10 = a3[12];
  *(a1 + a3[11]) = *(a2 + a3[11]);
  v11 = (a1 + v10);
  v12 = (a2 + v10);
  v13 = v12[4];
  v11[3] = v12[3];
  v11[4] = v13;
  v14 = v12[2];
  v11[1] = v12[1];
  v11[2] = v14;
  *v11 = *v12;
  *(a1 + a3[13]) = *(a2 + a3[13]);
  return a1;
}

uint64_t *assignWithTake for MEProgram(uint64_t *a1, uint64_t *a2, int *a3)
{
  v6 = *a1;
  *a1 = *a2;

  a1[1] = a2[1];
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  *(a1 + 18) = *(a2 + 18);
  v7 = a3[8];
  v8 = type metadata accessor for CaptureList();
  (*(*(v8 - 8) + 40))(a1 + v7, a2 + v7, v8);
  v9 = a3[9];
  v10 = *(a1 + v9);
  *(a1 + v9) = *(a2 + v9);

  v11 = a3[10];
  v12 = *(a1 + v11);
  *(a1 + v11) = *(a2 + v11);

  v13 = a3[12];
  *(a1 + a3[11]) = *(a2 + a3[11]);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v16 = *(a1 + v13);
  *(a1 + v13) = *(a2 + v13);

  v17 = *(v14 + 8);
  *(v14 + 8) = *(v15 + 8);

  v18 = *(v14 + 16);
  *(v14 + 16) = *(v15 + 16);

  v19 = *(v14 + 24);
  *(v14 + 24) = *(v15 + 24);

  v20 = *(v14 + 32);
  *(v14 + 32) = *(v15 + 32);

  v21 = *(v14 + 40);
  *(v14 + 40) = *(v15 + 40);

  *(v14 + 48) = *(v15 + 48);
  v22 = *(v14 + 56);
  *(v14 + 56) = *(v15 + 56);

  v23 = *(v14 + 64);
  *(v14 + 64) = *(v15 + 64);

  v24 = *(v14 + 72);
  *(v14 + 72) = *(v15 + 72);

  v25 = a3[13];
  v26 = *(a1 + v25);
  *(a1 + v25) = *(a2 + v25);

  return a1;
}

uint64_t sub_18E5DF3CC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for CaptureList();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_18E5DF48C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for CaptureList();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata completion function for MEProgram()
{
  result = type metadata accessor for CaptureList();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for Range(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = *(v5 + 80);
  v8 = ~v7;
  v9 = v6 + v7;
  v10 = ((v6 + v7) & ~v7) + v6;
  if (v7 > 7 || (*(v5 + 80) & 0x100000) != 0 || v10 > 0x18)
  {
    v13 = *a2;
    *v3 = *a2;
    v3 = (v13 + ((v7 + 16) & v8));
  }

  else
  {
    v14 = *(v5 + 16);
    v14(a1, a2, v4);
    v14(((v3 + v9) & v8), ((a2 + v9) & v8), v4);
  }

  return v3;
}

uint64_t destroy for Range(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v6 = *(v3 - 8) + 8;
  v7 = *v6;
  (*v6)(a1, v3);
  v4 = (*(v6 + 56) + a1 + *(v6 + 72)) & ~*(v6 + 72);

  return v7(v4, v3);
}

unint64_t initializeWithCopy for Range(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 16);
  v8 = v6 + 16;
  v7(a1, a2, v5);
  v7((*(v8 + 48) + *(v8 + 64) + a1) & ~*(v8 + 64), (*(v8 + 48) + *(v8 + 64) + a2) & ~*(v8 + 64), v5);
  return a1;
}

unint64_t assignWithCopy for Range(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 24);
  v8 = v6 + 24;
  v7(a1, a2, v5);
  v7((*(v8 + 40) + *(v8 + 56) + a1) & ~*(v8 + 56), (*(v8 + 40) + *(v8 + 56) + a2) & ~*(v8 + 56), v5);
  return a1;
}

unint64_t initializeWithTake for Range(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 32);
  v8 = v6 + 32;
  v7(a1, a2, v5);
  v7((*(v8 + 32) + *(v8 + 48) + a1) & ~*(v8 + 48), (*(v8 + 32) + *(v8 + 48) + a2) & ~*(v8 + 48), v5);
  return a1;
}

unint64_t assignWithTake for Range(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 40);
  v8 = v6 + 40;
  v7(a1, a2, v5);
  v7((*(v8 + 24) + *(v8 + 40) + a1) & ~*(v8 + 40), (*(v8 + 24) + *(v8 + 40) + a2) & ~*(v8 + 40), v5);
  return a1;
}

uint64_t getEnumTagSinglePayload for Range(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

char *storeEnumTagSinglePayload for Range(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
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