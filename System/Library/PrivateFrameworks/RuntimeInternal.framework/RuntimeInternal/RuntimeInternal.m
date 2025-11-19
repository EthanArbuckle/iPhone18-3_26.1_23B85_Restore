uint64_t TypeMetadata.descriptor.getter(void *a1)
{
  v1 = 8;
  if ((*a1 - 512) < 3)
  {
    v1 = 1;
  }

  return a1[v1];
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15RuntimeInternal9TypeCacheV3KeyVAC8MetadataVSgGMd);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (!*(v5 + 16))
  {
    goto LABEL_49;
  }

  v34 = a2;
  v35 = v5;
  v8 = 0;
  v9 = (v5 + 64);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = result + 64;
  while (1)
  {
    if (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      goto LABEL_15;
    }

    v17 = v8;
    do
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_52;
      }

      if (v8 >= v13)
      {
        if ((v34 & 1) == 0)
        {

          v3 = v2;
LABEL_50:
          *v3 = v7;
          return result;
        }

        v33 = 1 << *(v5 + 32);
        v3 = v2;
        if (v33 >= 64)
        {
          bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v9 = -1 << v33;
        }

        *(v5 + 16) = 0;
LABEL_49:

        goto LABEL_50;
      }

      v18 = v9[v8];
      ++v17;
    }

    while (!v18);
    v16 = __clz(__rbit64(v18));
    v12 = (v18 - 1) & v18;
LABEL_15:
    v19 = v16 | (v8 << 6);
    v38 = *(*(v5 + 48) + 16 * v19);
    v37 = *(*(v5 + 56) + 8 * v19);
    Hasher.init(_seed:)();
    v20 = v38;
    v21 = *v38;
    if (!*v38)
    {
      Hasher._combine(_:)(0);
      goto LABEL_34;
    }

    v36 = v12;
    v22 = 0;
    while (2)
    {
      v24 = v20 + 1;
      if (v21 > 0x70u)
      {
        if (v21 == 120)
        {
          v25 = 1;
        }

        else
        {
          v25 = v22;
        }

        if (v21 == 113)
        {
          v22 = 1;
        }

        else
        {
          v22 = v25;
        }

LABEL_30:
        Hasher._combine(_:)(v21);
        goto LABEL_19;
      }

      if (v21 == 1)
      {
        v23 = &v24[*(v20 + 1)];
        goto LABEL_18;
      }

      if (v21 != 2)
      {
        goto LABEL_30;
      }

      v23 = *&v24[*(v20 + 1)];
LABEL_18:
      MEMORY[0x193ACF860](v23);
      v24 = v20 + 5;
LABEL_19:
      v21 = *v24;
      v20 = v24;
      if (*v24)
      {
        continue;
      }

      break;
    }

    Hasher._combine(_:)(0);
    v12 = v36;
    if (v22)
    {
      MEMORY[0x193ACF860](*(&v38 + 1));
    }

LABEL_34:
    result = Hasher._finalize()();
    v26 = -1 << *(v7 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    v5 = v35;
    if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
    {
      break;
    }

    v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
    *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
    *(*(v7 + 48) + 16 * v15) = v38;
    *(*(v7 + 56) + 8 * v15) = v37;
    ++*(v7 + 16);
  }

  v29 = 0;
  v30 = (63 - v26) >> 6;
  while (++v28 != v30 || (v29 & 1) == 0)
  {
    v31 = v28 == v30;
    if (v28 == v30)
    {
      v28 = 0;
    }

    v29 |= v31;
    v32 = *(v14 + 8 * v28);
    if (v32 != -1)
    {
      v15 = __clz(__rbit64(~v32)) + (v28 << 6);
      goto LABEL_7;
    }
  }

LABEL_52:
  __break(1u);
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15RuntimeInternal18ProtocolDescriptorVSayypXpGGMd);
  v30 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      MEMORY[0x193ACF860](v20);
      result = Hasher._finalize()();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      if (specialized static TypeCache.Key.== infix(_:_:)(*(*(v3 + 48) + 16 * v5), *(*(v3 + 48) + 16 * v5 + 8), a1, a2))
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(Swift::UInt8 *a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  TypeCache.Key.hash(into:)(v6, a1, a2);
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v4);
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, Swift::UInt8 *a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 >= v16 && (a4 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v18 >= v16 && (a4 & 1) == 0)
  {
    v19 = result;
    specialized _NativeDictionary.copy()();
    result = v19;
    goto LABEL_8;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  if ((v17 & 1) == (v20 & 1))
  {
LABEL_8:
    v21 = *v5;
    if (v17)
    {
      *(v21[7] + 8 * result) = a1;
      return result;
    }

    v21[(result >> 6) + 8] |= 1 << result;
    v22 = (v21[6] + 16 * result);
    *v22 = a2;
    v22[1] = a3;
    *(v21[7] + 8 * result) = a1;
    v23 = v21[2];
    v15 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v15)
    {
      v21[2] = v24;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void TypeCache.Key.hash(into:)(uint64_t a1, Swift::UInt8 *a2, uint64_t a3)
{
  v3 = *a2;
  if (!*a2)
  {
    Hasher._combine(_:)(0);
    return;
  }

  v5 = a2;
  v6 = 0;
  do
  {
    v8 = v5 + 1;
    if (v3 > 0x70u)
    {
      if (v3 == 120)
      {
        v9 = 1;
      }

      else
      {
        v9 = v6;
      }

      if (v3 == 113)
      {
        v6 = 1;
      }

      else
      {
        v6 = v9;
      }
    }

    else
    {
      if (v3 == 1)
      {
        v7 = &v8[*(v5 + 1)];
LABEL_4:
        MEMORY[0x193ACF860](v7);
        v8 = v5 + 5;
        goto LABEL_5;
      }

      if (v3 == 2)
      {
        v7 = *&v8[*(v5 + 1)];
        goto LABEL_4;
      }
    }

    Hasher._combine(_:)(v3);
LABEL_5:
    v3 = *v8;
    v5 = v8;
  }

  while (*v8);
  Hasher._combine(_:)(0);
  if (v6)
  {
    MEMORY[0x193ACF860](a3);
  }
}

uint64_t TypeMetadata.genericArguments.getter(uint64_t a1)
{
  if ((*a1 - 512) >= 3)
  {
    v2 = 8 * ClassDescriptor.genericArgumentOffset.getter(*(a1 + 64));
  }

  else
  {
    v2 = 16;
  }

  return a1 + v2;
}

uint64_t specialized static TypeCache.Key.== infix(_:_:)(unsigned __int8 *a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  v4 = *a1;
  if (v4 != *a3)
  {
    return 0;
  }

  v5 = 1;
  do
  {
    v6 = a1;
    v7 = a3;
    while (1)
    {
      a1 = v6 + 1;
      a3 = v7 + 1;
      if (v4 <= 1)
      {
        if (v4 != 1)
        {
          return v5 & 1 | (a2 == a4);
        }

        if (&a1[*a1] != &a3[*a3])
        {
          return 0;
        }

        goto LABEL_12;
      }

      if (v4 != 2)
      {
        break;
      }

      if (*&a1[*a1] != *&a3[*a3])
      {
        return 0;
      }

LABEL_12:
      a1 = v6 + 5;
      a3 = v7 + 5;
LABEL_5:
      v4 = *a1;
      v6 = a1;
      v7 = a3;
      if (v4 != *a3)
      {
        return 0;
      }
    }

    if (v4 != 113 && v4 != 120)
    {
      goto LABEL_5;
    }

    v5 = 0;
    v4 = *a1;
  }

  while (v4 == *a3);
  return 0;
}

uint64_t getSymbolicMangledNameLength(_:)(_BYTE *a1)
{
  v1 = *a1;
  v2 = a1;
  if (*a1)
  {
    v2 = a1;
    do
    {
      if (v1 - 32 < 0xFFFFFFF8)
      {
        v3 = 1;
      }

      else
      {
        v3 = 9;
      }

      if (v1 <= 0x17)
      {
        v4 = 5;
      }

      else
      {
        v4 = v3;
      }

      v2 += v4;
      v1 = *v2;
    }

    while (*v2);
  }

  return v2 - a1;
}

uint64_t type metadata instantiation function for RelativeDirectPointer()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t TypeMetadata._resolve(_:)(Swift::UInt8 *a1, uint64_t a2)
{
  if (one-time initialization token for typeCache != -1)
  {
    swift_once();
  }

  v4 = typeCache;
  os_unfair_lock_lock((typeCache + 24));
  v5 = *(v4 + 16);
  if (*(v5 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v7 & 1) != 0))
  {
    TypeByMangledNameInContext = *(*(v5 + 56) + 8 * v6);
  }

  else
  {
    getSymbolicMangledNameLength(_:)(a1);
    if ((*a2 - 512) >= 3)
    {
      ClassDescriptor.genericArgumentOffset.getter(*(a2 + 64));
    }

    TypeByMangledNameInContext = swift_getTypeByMangledNameInContext();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v4 + 16);
    *(v4 + 16) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(TypeByMangledNameInContext, a1, a2, isUniquelyReferenced_nonNull_native);
    *(v4 + 16) = v11;
  }

  os_unfair_lock_unlock((v4 + 24));
  return TypeByMangledNameInContext;
}

void one-time initialization function for typeCache()
{
  v0 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15RuntimeInternal9TypeCacheV3KeyV_AC8MetadataVSgTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCySDy15RuntimeInternal9TypeCacheV3KeyVAC8MetadataVSgGSo16os_unfair_lock_sVGMd);
  v1 = swift_allocObject();
  *(v1 + 24) = 0;
  *(v1 + 16) = v0;
  os_unfair_lock_lock((v1 + 24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDy15RuntimeInternal9TypeCacheV3KeyVAA8MetadataVSgGMd);
  Dictionary.reserveCapacity(_:)(25);
  os_unfair_lock_unlock((v1 + 24));
  typeCache = v1;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15RuntimeInternal9TypeCacheV3KeyV_AC8MetadataVSgTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15RuntimeInternal9TypeCacheV3KeyVAC8MetadataVSgGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *i;
      v11 = *(i - 1);
      result = specialized __RawDictionaryStorage.find<A>(_:)(*(i - 2), *(i - 1));
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 16 * result) = v11;
      *(v3[7] + 8 * result) = v5;
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
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

unint64_t lazy protocol witness table accessor for type TypeCache.Key and conformance TypeCache.Key()
{
  result = lazy protocol witness table cache variable for type TypeCache.Key and conformance TypeCache.Key;
  if (!lazy protocol witness table cache variable for type TypeCache.Key and conformance TypeCache.Key)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TypeCache.Key and conformance TypeCache.Key);
  }

  return result;
}

void type metadata accessor for os_unfair_lock_s()
{
  if (!lazy cache variable for type metadata for os_unfair_lock_s)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for os_unfair_lock_s);
    }
  }
}

void *_s15RuntimeInternal18IndirectBufferViewVyxGSKAASK5index6before5IndexQzAH_tFTW_0@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result - 1;
  }

  return result;
}

void *_s15RuntimeInternal18IndirectBufferViewVyxGSKAASK9formIndex6beforey0G0Qzz_tFTW_0(void *result)
{
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    --*result;
  }

  return result;
}

uint64_t _s15RuntimeInternal10BufferViewVyxGSlAASl5index_8offsetBy5IndexQzAH_SitFTW_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69830](a1, a2, a3, WitnessTable, v7);
}

uint64_t _s15RuntimeInternal10BufferViewVyxGSlAASl5index_8offsetBy07limitedG05IndexQzSgAI_SiAItFTW_0()
{
  swift_getWitnessTable();

  return RandomAccessCollection.index(_:offsetBy:limitedBy:)();
}

uint64_t _s15RuntimeInternal10BufferViewVyxGSlAASl8distance4from2toSi5IndexQz_AItFTW_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69840](a1, a2, a3, WitnessTable, v7);
}

void *_s15RuntimeInternal18IndirectBufferViewVyxGSlAASl5index5after5IndexQzAH_tFTW_0@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void *_s15RuntimeInternal18IndirectBufferViewVyxGSlAASl9formIndex5aftery0G0Qzz_tFTW_0(void *result)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

void protocol witness for Sequence.makeIterator() in conformance ConformanceSection(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = 0;
}

uint64_t _s15RuntimeInternal18IndirectBufferViewVyxGSlAASl5index_8offsetBy5IndexQzAH_SitFTW_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69830](a1, a2, a3, WitnessTable, v7);
}

uint64_t _s15RuntimeInternal18IndirectBufferViewVyxGSlAASl5index_8offsetBy07limitedH05IndexQzSgAI_SiAItFTW_0()
{
  swift_getWitnessTable();

  return RandomAccessCollection.index(_:offsetBy:limitedBy:)();
}

uint64_t _s15RuntimeInternal18IndirectBufferViewVyxGSlAASl8distance4from2toSi5IndexQz_AItFTW_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69840](a1, a2, a3, WitnessTable, v7);
}

uint64_t _s15RuntimeInternal13TupleMetadataV8ElementsVSlAASl5countSivgTW_0()
{
  result = *(*v0 + 8);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

void anonymous namespace::addImageCallback<&anonymous namespace::TextSegment,&anonymous namespace::ProtocolConformancesSection,(_dyld_section_location_kind)1,&(addImageProtocolConformanceBlockCallbackUnsafe)>(_DWORD *a1)
{
  if (*a1 != -17958193)
  {
  }

  v2 = _dyld_lookup_section_info();
  if (v2)
  {

    addImageProtocolConformanceBlockCallbackUnsafe(a1, v2, v3);
  }
}

Swift::Int ValueWitnessTable.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x193ACF860](a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ValueWitnessTable()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193ACF860](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ValueWitnessTable()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193ACF860](v1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type ValueWitnessTable and conformance ValueWitnessTable()
{
  result = lazy protocol witness table cache variable for type ValueWitnessTable and conformance ValueWitnessTable;
  if (!lazy protocol witness table cache variable for type ValueWitnessTable and conformance ValueWitnessTable)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ValueWitnessTable and conformance ValueWitnessTable);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ValueWitnessTable(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 8))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for ValueWitnessTable(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for os_unfair_lock_s(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for os_unfair_lock_s(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

Swift::Int __swiftcall BufferView.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

Swift::Int __swiftcall BufferView.index(before:)(Swift::Int before)
{
  v1 = __OFSUB__(before, 1);
  result = before - 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t BufferView.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = *(*(a3 - 8) + 64);
  result = a1 * v5;
  if ((a1 * v5) >> 64 == result >> 63)
  {
    return UnsafeRawPointer.unprotectedLoad<A>(fromByteOffset:as:)(result, a2, a3, a4);
  }

  __break(1u);
  return result;
}

void (*protocol witness for Collection.subscript.read in conformance BufferView<A>(uint64_t **a1, uint64_t *a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  *a1 = v7;
  v7[4] = BufferView.subscript.read(v7, *a2, *v3, v3[1], *(a3 + 16));
  return protocol witness for Collection.subscript.read in conformance BufferView<A>;
}

void protocol witness for Collection.subscript.read in conformance BufferView<A>(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t BufferView.subscript.read(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a5 - 8);
  *a1 = a5;
  a1[1] = v9;
  v10 = *(v9 + 64);
  if (MEMORY[0x1E69E7D08])
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(v10);
  }

  v12 = v11;
  a1[2] = v11;
  result = a2 * v10;
  if ((a2 * v10) >> 64 == (a2 * v10) >> 63)
  {
    UnsafeRawPointer.unprotectedLoad<A>(fromByteOffset:as:)(result, a3, a5, v12);
    return BufferView.subscript.read;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for Collection.indices.getter in conformance BufferView<A>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v3 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69838](a1, WitnessTable, v3);
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance BufferView<A>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance BufferView<A>()
{
  return protocol witness for Sequence._copyToContiguousArray() in conformance BufferView<A>();
}

{
  swift_getWitnessTable();
  return specialized Collection._copyToContiguousArray()();
}

Swift::Int __swiftcall IndirectBufferView.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

Swift::Int __swiftcall IndirectBufferView.index(before:)(Swift::Int before)
{
  v1 = __OFSUB__(before, 1);
  result = before - 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
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

{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int and conformance Int);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSnySiGMd);
    lazy protocol witness table accessor for type Int and conformance Int();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance IndirectBufferView<A>(void *a1, uint64_t *a2, uint64_t a3))()
{
  v7 = *(a3 + 16);
  *a1 = v7;
  v8 = *(v7 - 8);
  a1[1] = v8;
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(*(v8 + 64));
  }

  a1[2] = v9;
  v10 = *a2;
  v11 = *v3;
  v12 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(v12 + 24))(v11 + *(*(AssociatedTypeWitness - 8) + 64) * v10, v7, v12);
  return protocol witness for Collection.subscript.read in conformance IndirectBufferView<A>;
}

void BufferView.subscript.read(void *a1)
{
  v1 = a1[2];
  (*(a1[1] + 8))(v1, *a1);

  free(v1);
}

uint64_t protocol witness for Collection.indices.getter in conformance IndirectBufferView<A>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v3 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69838](a1, WitnessTable, v3);
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance IndirectBufferView<A>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t type metadata instantiation function for BufferView()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t type metadata instantiation function for IndirectBufferView()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for BufferView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 16))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for BufferView(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    if (a3 >= 2)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
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

  type metadata accessor for Range();
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
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

uint64_t swift_projectBox(_:)()
{
  result = swift_projectBox();
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t ExistentialMetadata.superclass.getter(uint64_t a1)
{
  if ((*(a1 + 11) & 0x40) != 0)
  {
    return *(a1 + 16);
  }

  else
  {
    return 0;
  }
}

uint64_t ExistentialMetadata.protocols.getter(uint64_t a1)
{
  v1 = 24;
  if ((*(a1 + 11) & 0x40) == 0)
  {
    v1 = 16;
  }

  return a1 + v1;
}

Swift::Int ExistentialMetadata.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x193ACF860](a1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type ExistentialMetadata and conformance ExistentialMetadata()
{
  result = lazy protocol witness table cache variable for type ExistentialMetadata and conformance ExistentialMetadata;
  if (!lazy protocol witness table cache variable for type ExistentialMetadata and conformance ExistentialMetadata)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExistentialMetadata and conformance ExistentialMetadata);
  }

  return result;
}

_BYTE *ExtensionDescriptor.genericSignature.getter(char *a1)
{
  v2 = *a1;
  result = a1 + 12;
  if ((v2 & 0x80) == 0)
  {
    return 0;
  }

  return result;
}

Swift::Int ExtensionDescriptor.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x193ACF860](a1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type ExtensionDescriptor and conformance ExtensionDescriptor()
{
  result = lazy protocol witness table cache variable for type ExtensionDescriptor and conformance ExtensionDescriptor;
  if (!lazy protocol witness table cache variable for type ExtensionDescriptor and conformance ExtensionDescriptor)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExtensionDescriptor and conformance ExtensionDescriptor);
  }

  return result;
}

Swift::Int MetatypeMetadata.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x193ACF860](a1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type MetatypeMetadata and conformance MetatypeMetadata()
{
  result = lazy protocol witness table cache variable for type MetatypeMetadata and conformance MetatypeMetadata;
  if (!lazy protocol witness table cache variable for type MetatypeMetadata and conformance MetatypeMetadata)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MetatypeMetadata and conformance MetatypeMetadata);
  }

  return result;
}

Swift::Int ExtendedExistentialMetadata.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x193ACF860](a1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type ExtendedExistentialMetadata and conformance ExtendedExistentialMetadata()
{
  result = lazy protocol witness table cache variable for type ExtendedExistentialMetadata and conformance ExtendedExistentialMetadata;
  if (!lazy protocol witness table cache variable for type ExtendedExistentialMetadata and conformance ExtendedExistentialMetadata)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExtendedExistentialMetadata and conformance ExtendedExistentialMetadata);
  }

  return result;
}

uint64_t FieldDescriptor.Element.referenceOwnership.getter(uint64_t a1)
{
  v1 = (a1 + 4 + *(a1 + 4));
  v2 = *v1;
  if (*v1)
  {
    v3 = (a1 + 4 + *(a1 + 4));
    do
    {
      if (v2 - 32 < 0xFFFFFFF8)
      {
        v4 = 1;
      }

      else
      {
        v4 = 9;
      }

      if (v2 <= 0x17)
      {
        v5 = 5;
      }

      else
      {
        v5 = v4;
      }

      v3 += v5;
      v2 = *v3;
    }

    while (*v3);
  }

  else
  {
    v3 = (a1 + 4 + *(a1 + 4));
  }

  if (v3 - v1 <= 2 || *(v3 - 2) != 88)
  {
    return 0;
  }

  v6 = *(v3 - 1);
  if (v6 == 111)
  {
    return 2;
  }

  if (v6 != 119)
  {
    if (v6 == 117)
    {
      return 4;
    }

    return 0;
  }

  return 1;
}

unint64_t FieldDescriptor.subscript.getter(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a2 + 12) > result)
  {
    return a2 + 12 * result + 16;
  }

  __break(1u);
  return result;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance FieldDescriptor(uint64_t (*result)(), unint64_t *a2))()
{
  v3 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v3 < *(*v2 + 12))
  {
    *result = *v2 + 12 * v3 + 16;
    return protocol witness for Collection.subscript.read in conformance FieldDescriptor;
  }

  __break(1u);
  return result;
}

void *protocol witness for Collection.subscript.getter in conformance FieldDescriptor@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result[1];
    v4 = *v2;
    if (v3 <= *(*v2 + 12))
    {
      *a2 = *result;
      a2[1] = v3;
      a2[2] = v4;
      return result;
    }
  }

  __break(1u);
  return result;
}

void protocol witness for Collection.indices.getter in conformance FieldDescriptor(void *a1@<X8>)
{
  v2 = *(*v1 + 12);
  *a1 = 0;
  a1[1] = v2;
}

void *protocol witness for RandomAccessCollection.index(_:offsetBy:) in conformance FieldDescriptor@<X0>(void *result@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v4 = *result + a2;
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else if (v4 <= *(*v3 + 12))
  {
    *a3 = v4;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t protocol witness for RandomAccessCollection.index(_:offsetBy:limitedBy:) in conformance FieldDescriptor@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(*a1, a2, *a3, *v4);
  *a4 = result;
  *(a4 + 8) = v7 & 1;
  return result;
}

unint64_t *protocol witness for RandomAccessCollection.distance(from:to:) in conformance FieldDescriptor(unint64_t *result, unint64_t *a2)
{
  v3 = *a2;
  v4 = *(*v2 + 12);
  if (*result <= v4 && v3 <= v4)
  {
    return (v3 - *result);
  }

  __break(1u);
  return result;
}

uint64_t *protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance FieldDescriptor(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = a2[1];
  if (*result >= *a2)
  {
    v5 = __OFSUB__(v2, v3);
    v4 = v2 - v3 < 0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  if (v4 == v5)
  {
    __break(1u);
  }

  return result;
}

void *protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance FieldDescriptor(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < *result)
  {
    __break(1u);
  }

  return result;
}

{
  if (*result < *a2 || a2[1] < result[1])
  {
    __break(1u);
  }

  return result;
}

Swift::Int FieldDescriptor.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x193ACF860](a1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type FieldDescriptor and conformance FieldDescriptor()
{
  result = lazy protocol witness table cache variable for type FieldDescriptor and conformance FieldDescriptor;
  if (!lazy protocol witness table cache variable for type FieldDescriptor and conformance FieldDescriptor)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FieldDescriptor and conformance FieldDescriptor);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FieldDescriptor and conformance FieldDescriptor;
  if (!lazy protocol witness table cache variable for type FieldDescriptor and conformance FieldDescriptor)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FieldDescriptor and conformance FieldDescriptor);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FieldDescriptor and conformance FieldDescriptor;
  if (!lazy protocol witness table cache variable for type FieldDescriptor and conformance FieldDescriptor)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FieldDescriptor and conformance FieldDescriptor);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FieldDescriptor and conformance FieldDescriptor;
  if (!lazy protocol witness table cache variable for type FieldDescriptor and conformance FieldDescriptor)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FieldDescriptor and conformance FieldDescriptor);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FieldDescriptor and conformance FieldDescriptor;
  if (!lazy protocol witness table cache variable for type FieldDescriptor and conformance FieldDescriptor)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FieldDescriptor and conformance FieldDescriptor);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Slice<FieldDescriptor> and conformance <> Slice<A>(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SliceVy15RuntimeInternal15FieldDescriptorVGMd);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Slice<FieldDescriptor> and conformance Slice<A>(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata instantiation function for RelativeDirectPointerIntPair()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t TypeMetadata.resolve(_:)(unsigned __int8 *a1, uint64_t a2)
{
  result = MangledTypeReference.standardSubstitution.getter(a1);
  if (!result)
  {

    return TypeMetadata._resolve(_:)(a1, a2);
  }

  return result;
}

{
  result = MangledTypeReference.standardSubstitution.getter(a1);
  if (!result)
  {
    if (one-time initialization token for typeCache != -1)
    {
      swift_once();
    }

    v5 = typeCache;
    os_unfair_lock_lock((typeCache + 24));
    v6 = *(v5 + 16);
    if (*(v6 + 16) && (v7 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v8 & 1) != 0))
    {
      v9 = *(*(v6 + 56) + 8 * v7);
    }

    else
    {
      getSymbolicMangledNameLength(_:)(a1);
      if ((*a2 - 512) >= 3)
      {
        ClassDescriptor.genericArgumentOffset.getter(*(a2 + 64));
      }

      TypeByMangledNameInContext = swift_getTypeByMangledNameInContext();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v12 = *(v5 + 16);
      *(v5 + 16) = 0x8000000000000000;
      v9 = TypeByMangledNameInContext;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(TypeByMangledNameInContext, a1, a2, isUniquelyReferenced_nonNull_native);
      *(v5 + 16) = v12;
    }

    os_unfair_lock_unlock((v5 + 24));
    return v9;
  }

  return result;
}

Swift::Int TypeMetadata.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x193ACF860](a1);
  return Hasher._finalize()();
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x193ACF860](a1);
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TypeMetadata and conformance TypeMetadata()
{
  result = lazy protocol witness table cache variable for type TypeMetadata and conformance TypeMetadata;
  if (!lazy protocol witness table cache variable for type TypeMetadata and conformance TypeMetadata)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TypeMetadata and conformance TypeMetadata);
  }

  return result;
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
      result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      specialized _NativeDictionary.copy()();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

void *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15RuntimeInternal9TypeCacheV3KeyVAC8MetadataVSgGMd);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 16 * v14) = *(*(v2 + 48) + 16 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15RuntimeInternal18ProtocolDescriptorVSayypXpGGMd);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

char *ConformanceDescriptor.protocol.getter(int *a1)
{
  v1 = *a1;
  result = a1 + (v1 & 0xFFFFFFFFFFFFFFFELL);
  if (v1)
  {
    return *result;
  }

  return result;
}

uint64_t ConformanceDescriptor.descriptor.getter(uint64_t a1)
{
  v2 = *(a1 + 4);
  v1 = a1 + 4;
  v3 = (*(v1 + 8) >> 3) & 7;
  result = v1 + v2;
  if (v3 == 1)
  {
    return *result;
  }

  if (v3)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

Swift::Int ConformanceDescriptor.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x193ACF860](a1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type ConformanceDescriptor and conformance ConformanceDescriptor()
{
  result = lazy protocol witness table cache variable for type ConformanceDescriptor and conformance ConformanceDescriptor;
  if (!lazy protocol witness table cache variable for type ConformanceDescriptor and conformance ConformanceDescriptor)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConformanceDescriptor and conformance ConformanceDescriptor);
  }

  return result;
}

Swift::Int EnumMetadata.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x193ACF860](a1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type EnumMetadata and conformance EnumMetadata()
{
  result = lazy protocol witness table cache variable for type EnumMetadata and conformance EnumMetadata;
  if (!lazy protocol witness table cache variable for type EnumMetadata and conformance EnumMetadata)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnumMetadata and conformance EnumMetadata);
  }

  return result;
}

_BYTE *EnumDescriptor.genericSignature.getter(char *a1)
{
  v2 = *a1;
  result = a1 + 36;
  if ((v2 & 0x80) == 0)
  {
    return 0;
  }

  return result;
}

Swift::Int EnumDescriptor.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x193ACF860](a1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type EnumDescriptor and conformance EnumDescriptor()
{
  result = lazy protocol witness table cache variable for type EnumDescriptor and conformance EnumDescriptor;
  if (!lazy protocol witness table cache variable for type EnumDescriptor and conformance EnumDescriptor)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnumDescriptor and conformance EnumDescriptor);
  }

  return result;
}

uint64_t FunctionMetadata.differentiableKind.getter(uint64_t a1)
{
  v1 = *(a1 + 8);
  if ((v1 & 0x8000000) != 0)
  {
    return *(a1 + 8 * v1 + (((*(a1 + 8) << 38) >> 63) & (4 * *(a1 + 8))) + 24);
  }

  else
  {
    return 0;
  }
}

Swift::Int FunctionMetadata.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x193ACF860](a1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type FunctionMetadata and conformance FunctionMetadata()
{
  result = lazy protocol witness table cache variable for type FunctionMetadata and conformance FunctionMetadata;
  if (!lazy protocol witness table cache variable for type FunctionMetadata and conformance FunctionMetadata)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FunctionMetadata and conformance FunctionMetadata);
  }

  return result;
}

Swift::Int ExtendedExistentialShape.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x193ACF860](a1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type ExtendedExistentialShape and conformance ExtendedExistentialShape()
{
  result = lazy protocol witness table cache variable for type ExtendedExistentialShape and conformance ExtendedExistentialShape;
  if (!lazy protocol witness table cache variable for type ExtendedExistentialShape and conformance ExtendedExistentialShape)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExtendedExistentialShape and conformance ExtendedExistentialShape);
  }

  return result;
}

uint64_t TypeReference.descriptor(_:)(char a1, int *a2)
{
  result = a2 + *a2;
  if (a1)
  {
    if (a1 == 1)
    {
      return *result;
    }

    else
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  return result;
}

Swift::Int StructMetadata.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x193ACF860](a1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type StructMetadata and conformance StructMetadata()
{
  result = lazy protocol witness table cache variable for type StructMetadata and conformance StructMetadata;
  if (!lazy protocol witness table cache variable for type StructMetadata and conformance StructMetadata)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StructMetadata and conformance StructMetadata);
  }

  return result;
}

Swift::Int ForeignClassMetadata.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x193ACF860](a1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type ForeignClassMetadata and conformance ForeignClassMetadata()
{
  result = lazy protocol witness table cache variable for type ForeignClassMetadata and conformance ForeignClassMetadata;
  if (!lazy protocol witness table cache variable for type ForeignClassMetadata and conformance ForeignClassMetadata)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForeignClassMetadata and conformance ForeignClassMetadata);
  }

  return result;
}

Swift::Int WitnessTable.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x193ACF860](a1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type WitnessTable and conformance WitnessTable()
{
  result = lazy protocol witness table cache variable for type WitnessTable and conformance WitnessTable;
  if (!lazy protocol witness table cache variable for type WitnessTable and conformance WitnessTable)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WitnessTable and conformance WitnessTable);
  }

  return result;
}

Swift::Int ModuleDescriptor.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x193ACF860](a1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type ModuleDescriptor and conformance ModuleDescriptor()
{
  result = lazy protocol witness table cache variable for type ModuleDescriptor and conformance ModuleDescriptor;
  if (!lazy protocol witness table cache variable for type ModuleDescriptor and conformance ModuleDescriptor)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModuleDescriptor and conformance ModuleDescriptor);
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TypeCache.Key()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  TypeCache.Key.hash(into:)(v4, v1, v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TypeCache.Key()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  TypeCache.Key.hash(into:)(v4, v1, v2);
  return Hasher._finalize()();
}

uint64_t MangledTypeReference.length.getter(_BYTE *a1)
{
  v1 = *a1;
  v2 = a1;
  if (*a1)
  {
    v2 = a1;
    do
    {
      if (v1 - 32 < 0xFFFFFFF8)
      {
        v3 = 1;
      }

      else
      {
        v3 = 9;
      }

      if (v1 <= 0x17)
      {
        v4 = 5;
      }

      else
      {
        v4 = v3;
      }

      v2 += v4;
      v1 = *v2;
    }

    while (*v2);
  }

  return v2 - a1;
}

uint64_t MangledTypeReference.standardSubstitution.getter(unsigned __int8 *a1)
{
  v1 = a1[1];
  if (!a1[1] || a1[2])
  {
    return 0;
  }

  v3 = *a1;
  if (v3 == 121)
  {
    if (v1 == 112)
    {
      return MEMORY[0x1E69E7CA0] + 8;
    }

    return 0;
  }

  if (v3 != 83)
  {
    return 0;
  }

  result = MEMORY[0x1E69E6370];
  switch(v1)
  {
    case 'J':
      result = MEMORY[0x1E69E5EE0];
      break;
    case 'O':
      result = MEMORY[0x1E69E5FE0];
      break;
    case 'S':
      result = MEMORY[0x1E69E6158];
      break;
    case 'V':
      result = MEMORY[0x1E69E6270];
      break;
    case 'W':
      result = MEMORY[0x1E69E6290];
      break;
    case 'b':
      return result;
    case 'd':
      result = MEMORY[0x1E69E63B0];
      break;
    case 'f':
      result = MEMORY[0x1E69E6448];
      break;
    case 'i':
      result = MEMORY[0x1E69E6530];
      break;
    case 's':
      result = MEMORY[0x1E69E67B0];
      break;
    case 'u':
      result = MEMORY[0x1E69E6810];
      break;
    case 'v':
      result = MEMORY[0x1E69E6878];
      break;
    case 'w':
      result = MEMORY[0x1E69E6888];
      break;
    default:
      return 0;
  }

  return result;
}

Swift::Int Metadata.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x193ACF860](a1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type Metadata and conformance Metadata()
{
  result = lazy protocol witness table cache variable for type Metadata and conformance Metadata;
  if (!lazy protocol witness table cache variable for type Metadata and conformance Metadata)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Metadata and conformance Metadata);
  }

  return result;
}

Swift::Int OpaqueDescriptor.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x193ACF860](a1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type OpaqueDescriptor and conformance OpaqueDescriptor()
{
  result = lazy protocol witness table cache variable for type OpaqueDescriptor and conformance OpaqueDescriptor;
  if (!lazy protocol witness table cache variable for type OpaqueDescriptor and conformance OpaqueDescriptor)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OpaqueDescriptor and conformance OpaqueDescriptor);
  }

  return result;
}

Swift::Int ClassMetadata.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x193ACF860](a1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type ClassMetadata and conformance ClassMetadata()
{
  result = lazy protocol witness table cache variable for type ClassMetadata and conformance ClassMetadata;
  if (!lazy protocol witness table cache variable for type ClassMetadata and conformance ClassMetadata)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClassMetadata and conformance ClassMetadata);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PtrAuth(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for PtrAuth(_WORD *result, int a2, int a3)
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

uint64_t type metadata instantiation function for RelativeIndirectPointer()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t RelativeIndirectablePointer.address(from:)(uint64_t a1, int a2)
{
  result = a1 + (a2 & 0xFFFFFFFE);
  if (a2)
  {
    return *result;
  }

  return result;
}

uint64_t type metadata instantiation function for RelativeIndirectablePointer()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

Swift::Int EnumValueWitnessTable.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x193ACF860](a1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type EnumValueWitnessTable and conformance EnumValueWitnessTable()
{
  result = lazy protocol witness table cache variable for type EnumValueWitnessTable and conformance EnumValueWitnessTable;
  if (!lazy protocol witness table cache variable for type EnumValueWitnessTable and conformance EnumValueWitnessTable)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnumValueWitnessTable and conformance EnumValueWitnessTable);
  }

  return result;
}

uint64_t RelativeIndirectablePointerIntPair.address(from:)(uint64_t a1, int a2)
{
  result = a1 + (a2 & 0xFFFFFFFC);
  if (a2)
  {
    return *result;
  }

  return result;
}

char *UnsafeRawPointer.relativeIndirectablePointerIntPairAddress<A, B>(as:and:)(uint64_t a1, uint64_t a2, int *a3)
{
  v3 = *a3;
  result = a3 + (v3 & 0xFFFFFFFFFFFFFFFCLL);
  if (v3)
  {
    return *result;
  }

  return result;
}

uint64_t type metadata instantiation function for RelativeIndirectablePointerIntPair()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t ContextDescriptor.Kind.description.getter(unsigned __int8 a1)
{
  if (a1 > 3u)
  {
    if (a1 > 0x10u)
    {
      if (a1 == 17)
      {
        return 0x746375727473;
      }

      if (a1 == 18)
      {
        return 1836412517;
      }
    }

    else
    {
      if (a1 == 4)
      {
        return 0x795465757161706FLL;
      }

      if (a1 == 16)
      {
        return 0x7373616C63;
      }
    }

    return 0x6E776F6E6B6E75;
  }

  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      return 0x756F6D796E6F6E61;
    }

    if (a1 == 3)
    {
      return 0x6C6F636F746F7270;
    }

    return 0x6E776F6E6B6E75;
  }

  if (a1)
  {
    return 0x6F69736E65747865;
  }

  else
  {
    return 0x656C75646F6DLL;
  }
}

uint64_t ExtendedExistentialShape.SpecialKind.description.getter(unsigned __int8 a1)
{
  if (a1 > 1u)
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {
        return 0x746963696C707865;
      }

      return 0x6E776F6E6B6E75;
    }

    return 0x657079746174656DLL;
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return 0x7373616C63;
      }

      return 0x6E776F6E6B6E75;
    }

    return 1701736302;
  }
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ExtendedExistentialShape.SpecialKind()
{
  v1 = *v0;
  if (v1 > 1)
  {
    if (v1 != 2)
    {
      if (v1 == 3)
      {
        return 0x746963696C707865;
      }

      return 0x6E776F6E6B6E75;
    }

    return 0x657079746174656DLL;
  }

  else
  {
    if (*v0)
    {
      if (v1 == 1)
      {
        return 0x7373616C63;
      }

      return 0x6E776F6E6B6E75;
    }

    return 1701736302;
  }
}

Swift::Int GenericSignature.LayoutKind.hashValue.getter(Swift::UInt32 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance GenericSignature.LayoutKind()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance GenericSignature.LayoutKind()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t GenericSignature.LayoutKind.description.getter(int a1)
{
  if (a1)
  {
    return 0x6E776F6E6B6E75;
  }

  else
  {
    return 0x7373616C63;
  }
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance GenericSignature.LayoutKind()
{
  if (*v0)
  {
    return 0x6E776F6E6B6E75;
  }

  else
  {
    return 0x7373616C63;
  }
}

Swift::Int GenericSignature.PackShapeDescriptor.Kind.hashValue.getter(Swift::UInt16 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance GenericSignature.PackShapeDescriptor.Kind()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance GenericSignature.PackShapeDescriptor.Kind()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t GenericSignature.PackShapeDescriptor.Kind.description.getter(__int16 a1)
{
  if (!a1)
  {
    return 0x617461646174656DLL;
  }

  if (a1 == 1)
  {
    return 0x547373656E746977;
  }

  return 0x6E776F6E6B6E75;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance GenericSignature.PackShapeDescriptor.Kind()
{
  v1 = 0x617461646174656DLL;
  if (*v0)
  {
    v1 = 0x6E776F6E6B6E75;
  }

  if (*v0 == 1)
  {
    return 0x547373656E746977;
  }

  else
  {
    return v1;
  }
}

uint64_t GenericSignature.ParameterDescriptor.Kind.description.getter(char a1)
{
  if (!a1)
  {
    return 1701869940;
  }

  if (a1 == 1)
  {
    return 1801675120;
  }

  return 0x6E776F6E6B6E75;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance GenericSignature.ParameterDescriptor.Kind()
{
  v1 = 1701869940;
  if (*v0)
  {
    v1 = 0x6E776F6E6B6E75;
  }

  if (*v0 == 1)
  {
    return 1801675120;
  }

  else
  {
    return v1;
  }
}

uint64_t GenericSignature.RequirementDescriptor.Kind.description.getter(unsigned __int8 a1)
{
  if (a1 <= 1u)
  {
    if (!a1)
    {
      return 0x6C6F636F746F7270;
    }

    if (a1 == 1)
    {
      return 0x65707954656D6173;
    }
  }

  else
  {
    switch(a1)
    {
      case 2u:
        return 0x73616C4365736162;
      case 3u:
        return 0x666E6F43656D6173;
      case 0x1Fu:
        return 0x74756F79616CLL;
    }
  }

  return 0x6E776F6E6B6E75;
}

uint64_t MetadataInitializationKind.description.getter(char a1)
{
  if (!a1)
  {
    return 1701736302;
  }

  v1 = 0x6E776F6E6B6E75;
  if (a1 == 1)
  {
    v1 = 0x656C676E6973;
  }

  if (a1 == 2)
  {
    return 0x6E676965726F66;
  }

  else
  {
    return v1;
  }
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MetadataInitializationKind()
{
  v1 = *v0;
  v2 = 1701736302;
  if (*v0)
  {
    v2 = 0x6E776F6E6B6E75;
  }

  if (v1 == 1)
  {
    v2 = 0x656C676E6973;
  }

  if (v1 == 2)
  {
    return 0x6E676965726F66;
  }

  else
  {
    return v2;
  }
}

uint64_t ProtocolRequirement.Kind.description.getter(unsigned __int8 a1)
{
  if (a1 > 3u)
  {
    if (a1 <= 5u)
    {
      if (a1 == 4)
      {
        return 0x726574746573;
      }

      if (a1 == 5)
      {
        return 0x6F726F4364616572;
      }
    }

    else
    {
      switch(a1)
      {
        case 6u:
          return 0x6F43796669646F6DLL;
        case 7u:
          return 0xD00000000000001CLL;
        case 8u:
          return 0xD000000000000023;
      }
    }

    return 0x6E776F6E6B6E75;
  }

  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      return 1953066601;
    }

    if (a1 == 3)
    {
      return 0x726574746567;
    }

    return 0x6E776F6E6B6E75;
  }

  if (a1)
  {
    return 0x646F6874656DLL;
  }

  else
  {
    return 0x746F725065736162;
  }
}

uint64_t ReferenceOwnership.description.getter(unsigned __int8 a1)
{
  if (a1 > 1u)
  {
    if (a1 != 2)
    {
      if (a1 == 4)
      {
        return 0x6567616E616D6E75;
      }

      return 0x6E776F6E6B6E75;
    }

    return 0x64656E776F6E75;
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return 1801545079;
      }

      return 0x6E776F6E6B6E75;
    }

    return 0x676E6F727473;
  }
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ReferenceOwnership()
{
  v1 = *v0;
  if (v1 > 1)
  {
    if (v1 != 2)
    {
      if (v1 == 4)
      {
        return 0x6567616E616D6E75;
      }

      return 0x6E776F6E6B6E75;
    }

    return 0x64656E776F6E75;
  }

  else
  {
    if (*v0)
    {
      if (v1 == 1)
      {
        return 1801545079;
      }

      return 0x6E776F6E6B6E75;
    }

    return 0x676E6F727473;
  }
}

uint64_t SpecialProtocol.description.getter(char a1)
{
  if (!a1)
  {
    return 1701736302;
  }

  if (a1 == 1)
  {
    return 0x726F727265;
  }

  return 0x6E776F6E6B6E75;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SpecialProtocol()
{
  v1 = 1701736302;
  if (*v0)
  {
    v1 = 0x6E776F6E6B6E75;
  }

  if (*v0 == 1)
  {
    return 0x726F727265;
  }

  else
  {
    return v1;
  }
}

Swift::Int ContextDescriptor.Kind.hashValue.getter(Swift::UInt8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ContextDescriptor.Kind()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ContextDescriptor.Kind()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t TypeReference.Kind.description.getter(unsigned __int8 a1)
{
  if (a1 > 1u)
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {
        return 0xD000000000000011;
      }

      return 0x6E776F6E6B6E75;
    }

    return 0x624F746365726964;
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return 0xD000000000000012;
      }

      return 0x6E776F6E6B6E75;
    }

    return 0xD000000000000010;
  }
}

unint64_t lazy protocol witness table accessor for type ContextDescriptor.Kind and conformance ContextDescriptor.Kind()
{
  result = lazy protocol witness table cache variable for type ContextDescriptor.Kind and conformance ContextDescriptor.Kind;
  if (!lazy protocol witness table cache variable for type ContextDescriptor.Kind and conformance ContextDescriptor.Kind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContextDescriptor.Kind and conformance ContextDescriptor.Kind);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ExtendedExistentialShape.SpecialKind and conformance ExtendedExistentialShape.SpecialKind()
{
  result = lazy protocol witness table cache variable for type ExtendedExistentialShape.SpecialKind and conformance ExtendedExistentialShape.SpecialKind;
  if (!lazy protocol witness table cache variable for type ExtendedExistentialShape.SpecialKind and conformance ExtendedExistentialShape.SpecialKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExtendedExistentialShape.SpecialKind and conformance ExtendedExistentialShape.SpecialKind);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GenericSignature.LayoutKind and conformance GenericSignature.LayoutKind()
{
  result = lazy protocol witness table cache variable for type GenericSignature.LayoutKind and conformance GenericSignature.LayoutKind;
  if (!lazy protocol witness table cache variable for type GenericSignature.LayoutKind and conformance GenericSignature.LayoutKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GenericSignature.LayoutKind and conformance GenericSignature.LayoutKind);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GenericSignature.PackShapeDescriptor.Kind and conformance GenericSignature.PackShapeDescriptor.Kind()
{
  result = lazy protocol witness table cache variable for type GenericSignature.PackShapeDescriptor.Kind and conformance GenericSignature.PackShapeDescriptor.Kind;
  if (!lazy protocol witness table cache variable for type GenericSignature.PackShapeDescriptor.Kind and conformance GenericSignature.PackShapeDescriptor.Kind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GenericSignature.PackShapeDescriptor.Kind and conformance GenericSignature.PackShapeDescriptor.Kind);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GenericSignature.ParameterDescriptor.Kind and conformance GenericSignature.ParameterDescriptor.Kind()
{
  result = lazy protocol witness table cache variable for type GenericSignature.ParameterDescriptor.Kind and conformance GenericSignature.ParameterDescriptor.Kind;
  if (!lazy protocol witness table cache variable for type GenericSignature.ParameterDescriptor.Kind and conformance GenericSignature.ParameterDescriptor.Kind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GenericSignature.ParameterDescriptor.Kind and conformance GenericSignature.ParameterDescriptor.Kind);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GenericSignature.RequirementDescriptor.Kind and conformance GenericSignature.RequirementDescriptor.Kind()
{
  result = lazy protocol witness table cache variable for type GenericSignature.RequirementDescriptor.Kind and conformance GenericSignature.RequirementDescriptor.Kind;
  if (!lazy protocol witness table cache variable for type GenericSignature.RequirementDescriptor.Kind and conformance GenericSignature.RequirementDescriptor.Kind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GenericSignature.RequirementDescriptor.Kind and conformance GenericSignature.RequirementDescriptor.Kind);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MetadataInitializationKind and conformance MetadataInitializationKind()
{
  result = lazy protocol witness table cache variable for type MetadataInitializationKind and conformance MetadataInitializationKind;
  if (!lazy protocol witness table cache variable for type MetadataInitializationKind and conformance MetadataInitializationKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MetadataInitializationKind and conformance MetadataInitializationKind);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ProtocolRequirement.Kind and conformance ProtocolRequirement.Kind()
{
  result = lazy protocol witness table cache variable for type ProtocolRequirement.Kind and conformance ProtocolRequirement.Kind;
  if (!lazy protocol witness table cache variable for type ProtocolRequirement.Kind and conformance ProtocolRequirement.Kind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProtocolRequirement.Kind and conformance ProtocolRequirement.Kind);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ReferenceOwnership and conformance ReferenceOwnership()
{
  result = lazy protocol witness table cache variable for type ReferenceOwnership and conformance ReferenceOwnership;
  if (!lazy protocol witness table cache variable for type ReferenceOwnership and conformance ReferenceOwnership)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ReferenceOwnership and conformance ReferenceOwnership);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SpecialProtocol and conformance SpecialProtocol()
{
  result = lazy protocol witness table cache variable for type SpecialProtocol and conformance SpecialProtocol;
  if (!lazy protocol witness table cache variable for type SpecialProtocol and conformance SpecialProtocol)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpecialProtocol and conformance SpecialProtocol);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TypeReference.Kind and conformance TypeReference.Kind()
{
  result = lazy protocol witness table cache variable for type TypeReference.Kind and conformance TypeReference.Kind;
  if (!lazy protocol witness table cache variable for type TypeReference.Kind and conformance TypeReference.Kind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TypeReference.Kind and conformance TypeReference.Kind);
  }

  return result;
}

unint64_t *specialized Collection._copyToContiguousArray()(unint64_t *result, uint64_t a2)
{
  if (a2 >= 0)
  {
    v2 = a2;
  }

  else
  {
    v2 = a2 + 3;
  }

  if (a2 < -3)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if ((a2 + 3) < 7)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = (v2 >> 2) - 1;
  if (v3 >= 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_14;
  }

  v5 = result;
  v6 = v3 + 1;
  v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC15RuntimeInternal21ConformanceDescriptorV_Tt1g5(v3 + 1, 0);
  result = specialized Sequence._copyContents(initializing:)(v8, (v7 + 4), v6, v5, a2);
  if (result != v6)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  return v7;
}

void *specialized Sequence._copyContents(initializing:)(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
LABEL_11:
    a3 = 0;
    goto LABEL_13;
  }

  if (!a3)
  {
LABEL_13:
    *result = a4;
    result[1] = a3;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v4 = 0;
    v5 = a4 + 24;
    while (1)
    {
      v6 = *(a4 + 8);
      if (v4 == v6)
      {
        break;
      }

      if (v4 >= v6)
      {
        __break(1u);
        goto LABEL_14;
      }

      *a2 = v5;
      a2[1] = v4;
      if (a3 - 1 == v4)
      {
        goto LABEL_13;
      }

      a2 += 2;
      ++v4;
      v5 += 16;
      if (v4 == 0x7FFFFFFFFFFFFFFFLL)
      {
        __break(1u);
        goto LABEL_11;
      }
    }

    a3 = v4;
    goto LABEL_13;
  }

LABEL_14:
  __break(1u);
  return result;
}

{
  if (!a2)
  {
    a3 = 0;
    goto LABEL_15;
  }

  if (!a3)
  {
LABEL_15:
    *result = a4;
    result[1] = a3;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v4 = *(a4 + 12);
    if (v4)
    {
      v5 = v4 - 1;
      if (a3 - 1 < (v4 - 1))
      {
        v5 = a3 - 1;
      }

      if ((v5 + 1) > 2)
      {
        v6 = v5 & 0xFFFFFFFFFFFFFFFELL;
        v7 = v5 | 1;
        v8 = &a2[v5 & 0xFFFFFFFFFFFFFFFELL];
        v9 = a4 + 28;
        v10 = a2 + 1;
        v11 = v6;
        do
        {
          *(v10 - 1) = v9 - 12;
          *v10 = v9;
          v9 += 24;
          v10 += 2;
          v11 -= 2;
        }

        while (v11);
      }

      else
      {
        v6 = 0;
        v7 = 1;
        v8 = a2;
      }

      while (1)
      {
        *v8 = a4 + 16 + 12 * v6;
        if (a3 == v7)
        {
          break;
        }

        v6 = v7;
        ++v8;
        if (v4 + 1 == ++v7)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
LABEL_14:
      a3 = v4;
    }

    goto LABEL_15;
  }

  __break(1u);
  return result;
}

unint64_t *specialized Sequence._copyContents(initializing:)(unint64_t *result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    a3 = 0;
    goto LABEL_33;
  }

  if (!a3)
  {
LABEL_33:
    *result = a4;
    result[1] = a5;
    result[2] = a3;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    if (a5 >= 0)
    {
      v5 = a5;
    }

    else
    {
      v5 = a5 + 3;
    }

    v6 = v5 >> 2;
    if ((a5 + 3) >= 7)
    {
      v7 = v6 & ~(v5 >> 63);
      v8 = a3 - 1;
      v9 = v6 - 1;
      if (v7 >= v6 - 1)
      {
        v10 = v6 - 1;
      }

      else
      {
        v10 = v7;
      }

      if (v8 < v10)
      {
        v10 = a3 - 1;
      }

      if (v10 <= 0xF)
      {
        goto LABEL_28;
      }

      if (v7 < v9)
      {
        v9 = v7;
      }

      if (v8 >= v9)
      {
        v8 = v9;
      }

      if (a4 + 4 * v8 + 4 > a2 && a2 + 8 * v8 + 8 > a4)
      {
LABEL_28:
        v14 = 0;
        v15 = 1;
        v16 = a2;
      }

      else
      {
        v12 = v10 + 1;
        v13 = v12 & 7;
        if ((v12 & 7) == 0)
        {
          v13 = 8;
        }

        v14 = v12 - v13;
        v15 = v14 + 1;
        v16 = (a2 + 8 * v14);
        v17 = a4 + 28;
        v18 = (a2 + 32);
        v19 = v14;
        do
        {
          v20.i64[0] = v17 - 20;
          v20.i64[1] = v17 - 16;
          v21 = *(v17 - 28);
          v22.i64[0] = v17 - 28;
          v22.i64[1] = v17 - 24;
          v23.i64[0] = v17 - 4;
          v23.i64[1] = v17;
          v24 = *(v17 - 12);
          v25.i64[0] = v17 - 12;
          v25.i64[1] = v17 - 8;
          v18[-2] = vaddw_s32(v22, *v21.i8);
          v18[-1] = vaddw_high_s32(v20, v21);
          *v18 = vaddw_s32(v25, *v24.i8);
          v18[1] = vaddw_high_s32(v23, v24);
          v18 += 4;
          v17 += 32;
          v19 -= 8;
        }

        while (v19);
      }

      while (v14 != v7)
      {
        v26 = v15;
        *v16 = a4 + 4 * v14 + *(a4 + 4 * v14);
        if (a3 == v15)
        {
          goto LABEL_33;
        }

        ++v16;
        ++v15;
        v14 = v26;
        if (v6 + 1 == v26 + 1)
        {
          goto LABEL_32;
        }
      }

      __break(1u);
      goto LABEL_35;
    }

LABEL_32:
    a3 = v6;
    goto LABEL_33;
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance ConformanceSection(uint64_t (*result)(), uint64_t *a2))()
{
  v3 = *a2;
  if (*a2 < 0 || v3 >= v2[1] / 4)
  {
    __break(1u);
  }

  else
  {
    *result = *v2 + 4 * v3 + *(*v2 + 4 * v3);
    return protocol witness for Collection.subscript.read in conformance FieldDescriptor;
  }

  return result;
}

void *protocol witness for Collection.subscript.getter in conformance ConformanceSection@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v3 = v2[1];
  if (v3 >= 0)
  {
    v4 = v2[1];
  }

  else
  {
    v4 = v3 + 3;
  }

  if (v3 < -3)
  {
    __break(1u);
    goto LABEL_9;
  }

  if ((*result & 0x8000000000000000) != 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = result[1];
  if (v4 >> 2 >= v5)
  {
    v6 = *v2;
    *a2 = *result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v3;
    return result;
  }

LABEL_10:
  __break(1u);
  return result;
}

void protocol witness for Collection.indices.getter in conformance ConformanceSection(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v2 + 3;
  if (v2 >= 0)
  {
    v3 = v1[1];
  }

  *a1 = *v1;
  a1[1] = v2;
  a1[2] = 0;
  a1[3] = v3 >> 2;
}

void *protocol witness for Collection.index(_:offsetBy:) in conformance ConformanceSection@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    *a3 = *result + a2;
  }

  return result;
}

uint64_t protocol witness for Collection.index(_:offsetBy:limitedBy:) in conformance ConformanceSection@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = specialized Collection.index(_:offsetBy:limitedBy:)(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

uint64_t protocol witness for Collection.distance(from:to:) in conformance ConformanceSection(void *a1, void *a2)
{
  v2 = *a1;
  v3 = __OFSUB__(*a2, *a1);
  result = *a2 - *a1;
  if (result < 0 != v3)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v5 = v2 - *a2;
  if (!v5)
  {
    return 0;
  }

  if (v5 < 0x8000000000000001)
  {
    goto LABEL_7;
  }

  return result;
}

unint64_t protocol witness for Collection.count.getter in conformance ConformanceSection()
{
  v1 = *(v0 + 8);
  if (v1 >= 0)
  {
    v2 = *(v0 + 8);
  }

  else
  {
    v2 = v1 + 3;
  }

  if (v1 < -3)
  {
    __break(1u);
  }

  else
  {
    if ((v1 + 3) < 7)
    {
      return 0;
    }

    v4 = (v2 >> 2) - 1;
    if (v4 >= 0x7FFFFFFFFFFFFFFFLL)
    {
      v4 = 0x7FFFFFFFFFFFFFFFLL;
    }

    if (v4 != 0x7FFFFFFFFFFFFFFFLL)
    {
      return v4 + 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t one-time initialization function for initializeConformanceLookup()
{
  if (one-time initialization token for conformances == -1)
  {
  }

  else
  {
    swift_once();
  }

  return initializeProtocolConformanceLookup();
}

uint64_t one-time initialization function for conformances()
{
  v0 = swift_slowAlloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCy15RuntimeInternal13SectionsArrayVSo16os_unfair_lock_sVGMd);
  v1 = swift_allocObject();
  *(v1 + 40) = 0;
  *(v1 + 16) = v0;
  *(v1 + 24) = xmmword_18E609C60;
  v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15RuntimeInternal18ProtocolDescriptorV_SayypXpGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCySDy15RuntimeInternal18ProtocolDescriptorVSayypXpGG10conformers_Si16lastSectionCounttSo16os_unfair_lock_sVGMd);
  result = swift_allocObject();
  *(result + 32) = 0;
  *(result + 16) = v2;
  *(result + 24) = 0;
  conformances = v1;
  qword_1EAC89228 = result;
  return result;
}

void addImageProtocolConformanceBlockCallbackUnsafe(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (one-time initialization token for conformances != -1)
  {
    swift_once();
  }

  v5 = conformances;
  os_unfair_lock_lock((conformances + 40));
  v6 = *(v5 + 32);
  if (v6 == *(v5 + 24))
  {
    if (v6 + 0x4000000000000000 < 0)
    {
LABEL_11:
      __break(1u);
      return;
    }

    SectionsArray.realloc(_:)(2 * v6);
  }

  v7 = (*(v5 + 16) + 16 * v6);
  *v7 = a2;
  v7[1] = a3;
  if (__OFADD__(v6, 1))
  {
    __break(1u);
    goto LABEL_11;
  }

  *(v5 + 32) = v6 + 1;

  os_unfair_lock_unlock((v5 + 40));
}

void _withConformanceCache(for:do:)(uint64_t a1, void (*a2)(uint64_t))
{
  if (one-time initialization token for initializeConformanceLookup != -1)
  {
    swift_once();
  }

  if (one-time initialization token for conformances != -1)
  {
    swift_once();
  }

  v4 = conformances;
  os_unfair_lock_lock((conformances + 40));
  v5 = *(v4 + 24);
  if ((v5 - 0x800000000000000) >> 60 == 15)
  {
    v6 = *(v4 + 16);
    v7 = *(v4 + 32);
    v8 = swift_slowAlloc();
    if ((v7 & 0x8000000000000000) == 0)
    {
      v9 = v8;
      if (!v6)
      {
        v7 = 0;
LABEL_12:
        os_unfair_lock_unlock((v4 + 40));
        v10 = qword_1EAC89228;
        os_unfair_lock_lock((qword_1EAC89228 + 32));
        closure #2 in _withConformanceCache(for:do:)((v10 + 16), v9, v5, v7, a1, a2);
        os_unfair_lock_unlock((v10 + 32));

LABEL_18:
        JUMPOUT(0x193ACFAF0);
      }

      if (!v7)
      {
        goto LABEL_12;
      }

      if (v5 >= v7)
      {
        memcpy(v8, v6, 16 * v7);
        goto LABEL_12;
      }

LABEL_17:
      __break(1u);
      goto LABEL_18;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  goto LABEL_17;
}

void closure #2 in _withConformanceCache(for:do:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t))
{
  v8 = a4;
  v11 = *a1;
  if (a1[1] >= a4 && *(v11 + 16))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(a5);
    if (v12)
    {

      a6(v13);

      return;
    }

    v11 = *a1;
  }

  v44 = a2;
  if (*(v11 + 16))
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v46 = *a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy15RuntimeInternal18ProtocolDescriptorVSayypXpGGMd);
    v15 = isUniquelyReferenced_nonNull_native;
    a2 = v44;
    _NativeDictionary.removeAll(isUnique:)(v15);
    *a1 = v46;
  }

  if (v8 < 0)
  {
    goto LABEL_37;
  }

  v41 = a6;
  v42 = a1;
  if (v8)
  {
    v16 = 0;
    v45 = MEMORY[0x1E69E7CC0];
    v43 = v8;
    while (1)
    {
      v17 = (a2 + 16 * v16);
      v18 = v17[1];
      v19 = v18 + 3;
      v20 = v18 + (v18 < 0 ? 3uLL : 0);
      if (v19 >= 7)
      {
        break;
      }

LABEL_11:
      if (++v16 == v8)
      {
        goto LABEL_35;
      }
    }

    v21 = 0;
    v22 = *v17;
    v23 = v20 >> 2;
    v24 = 4 * ((v20 >> 2) & ~(v20 >> 63));
    while (v24 != v21)
    {
      v25 = *(v22 + v21);
      v26 = *(v22 + v21 + v25 + 12);
      v27 = (v26 >> 3) & 7;
      if (v27 <= 1)
      {
        v28 = *(v22 + v21 + v25);
        v29 = v25 + (v28 & 0xFFFFFFFFFFFFFFFELL);
        v30 = v22 + v21 + v29;
        if (v28)
        {
          v30 = *(v22 + v29 + v21);
        }

        if (v30 == a5)
        {
          v31 = v22 + v21 + v25 + *(v22 + v25 + v21 + 4);
          v32 = (v31 + 4);
          if (v27)
          {
            v32 = *(v31 + 4);
            v33 = *v32;
          }

          else
          {
            v33 = *(v31 + 4);
          }

          v34 = v33 & 0x80 | v26 & 0xFF00;
          if ((v33 & 0x1Fu) - 16 < 3 && v34 == 0)
          {
            v36 = ((v32 + v32[3] + 12))(0);
            if (v36)
            {
              v37 = v36;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v45 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v45 + 2) + 1, 1, v45);
              }

              v39 = *(v45 + 2);
              v38 = *(v45 + 3);
              if (v39 >= v38 >> 1)
              {
                v45 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1, v45);
              }

              *(v45 + 2) = v39 + 1;
              *&v45[8 * v39 + 32] = v37;
              v8 = v43;
              a2 = v44;
            }
          }
        }
      }

      v21 += 4;
      if (!--v23)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
    return;
  }

  v45 = MEMORY[0x1E69E7CC0];
LABEL_35:
  v41(v45);
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v47 = *v42;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v45, a5, v40);
  *v42 = v47;
  v42[1] = v8;
}

unint64_t lazy protocol witness table accessor for type ConformanceSection and conformance ConformanceSection()
{
  result = lazy protocol witness table cache variable for type ConformanceSection and conformance ConformanceSection;
  if (!lazy protocol witness table cache variable for type ConformanceSection and conformance ConformanceSection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConformanceSection and conformance ConformanceSection);
  }

  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC15RuntimeInternal21ConformanceDescriptorV_Tt1g5(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15RuntimeInternal21ConformanceDescriptorVGMd);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypXpGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15RuntimeInternal18ProtocolDescriptorV_SayypXpGTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15RuntimeInternal18ProtocolDescriptorVSayypXpGGMd);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v13 = *(a1 + 32);
  result = specialized __RawDictionaryStorage.find<A>(_:)(*(a1 + 32));
  if (v5)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v6 = (a1 + 48);
  v7 = v1 - 1;
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v13;
    *(v3[7] + 8 * result) = *(&v13 + 1);
    v8 = v3[2];
    v9 = __OFADD__(v8, 1);
    v10 = v8 + 1;
    if (v9)
    {
      break;
    }

    v3[2] = v10;
    if (!v7)
    {
      goto LABEL_8;
    }

    v11 = *v6++;
    v13 = v11;

    result = specialized __RawDictionaryStorage.find<A>(_:)(v11);
    --v7;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized Collection.index(_:offsetBy:limitedBy:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = a3 - result;
    if (a3 - result >= (a2 - 1))
    {
      v3 = a2 - 1;
    }

    if ((v3 + 1) >= 3)
    {
      v4 = v3 & 0xFFFFFFFFFFFFFFFELL;
      result += v4;
      v5 = v4;
      do
      {
        v5 -= 2;
      }

      while (v5);
    }

    else
    {
      v4 = 0;
    }

    v6 = a2 - v4;
    while (a3 != result)
    {
      ++result;
      if (!--v6)
      {
        return result;
      }
    }

    return 0;
  }

  return result;
}

Swift::Int HeapObject.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x193ACF860](a1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type HeapObject and conformance HeapObject()
{
  result = lazy protocol witness table cache variable for type HeapObject and conformance HeapObject;
  if (!lazy protocol witness table cache variable for type HeapObject and conformance HeapObject)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HeapObject and conformance HeapObject);
  }

  return result;
}

uint64_t type metadata instantiation function for Lock()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

Swift::Void __swiftcall SectionsArray.realloc(_:)(Swift::Int a1)
{
  if ((a1 - 0x800000000000000) >> 60 != 15)
  {
    __break(1u);
    goto LABEL_12;
  }

  v3 = swift_slowAlloc();
  v4 = v1[2];
  if (v4 < 0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = v3;
  v6 = *v1;
  if (!*v1)
  {
LABEL_10:
    *v1 = v5;
    v1[1] = a1;
    return;
  }

  if (!v4)
  {
LABEL_9:
    MEMORY[0x193ACFAF0](v6, -1, -1);
    goto LABEL_10;
  }

  if (v4 <= a1)
  {
    if (v3 != v6 || v3 >= &v6[16 * v4])
    {
      memmove(v3, *v1, 16 * v4);
    }

    goto LABEL_9;
  }

LABEL_13:
  __break(1u);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SectionsArray(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SectionsArray(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

_BYTE *StructDescriptor.genericSignature.getter(char *a1)
{
  v2 = *a1;
  result = a1 + 36;
  if ((v2 & 0x80) == 0)
  {
    return 0;
  }

  return result;
}

Swift::Int StructDescriptor.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x193ACF860](a1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type StructDescriptor and conformance StructDescriptor()
{
  result = lazy protocol witness table cache variable for type StructDescriptor and conformance StructDescriptor;
  if (!lazy protocol witness table cache variable for type StructDescriptor and conformance StructDescriptor)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StructDescriptor and conformance StructDescriptor);
  }

  return result;
}

uint64_t SignedLayout.address<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = dispatch thunk of AnyKeyPath._storedInlineOffset.getter();
  v6 = (*(a3 + 24))(a2, a3);
  (*(a3 + 16))(a2, a3);
  return *v6 + v5;
}

uint64_t SignedLayout.layout.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = (*(a2 + 24))();
  (*(a2 + 16))(a1, a2);
  v7 = *v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(*(AssociatedTypeWitness - 8) + 16);

  return v9(a3, v7, AssociatedTypeWitness);
}

uint64_t PublicLayout.address<A>(for:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a4;
  v22 = a2;
  v23 = *(*a1 + *MEMORY[0x1E69E77B0] + 8);
  v24 = *(v23 - 8);
  v5 = (MEMORY[0x1EEE9AC00])();
  v7 = &v20 - v6;
  v9 = *v8;
  v10 = *(*v8 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v12 = &v20 - v11;
  v21 = dispatch thunk of AnyKeyPath._storedInlineOffset.getter();
  v13 = *(a3 + 16);
  v14 = v22;
  v15 = v13(v22, a3);
  UnsafeRawPointer.unprotectedLoad<A>(fromByteOffset:as:)(0, v15, v9, v12);
  swift_getAtKeyPath();
  (*(v10 + 8))(v12, v9);
  v16 = v13(v14, a3);
  v17 = v23;
  v18 = (*(v25 + 24))(v16 + v21, v23);
  (*(v24 + 8))(v7, v17);
  return v18;
}

uint64_t PublicLayout.layout.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = (*(a1 + 16))();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();

  return UnsafeRawPointer.unprotectedLoad<A>(fromByteOffset:as:)(0, v3, AssociatedTypeWitness, a2);
}

uint64_t PublicLayout.address<A, B>(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = dispatch thunk of AnyKeyPath._storedInlineOffset.getter();
  v6 = (*(a3 + 16))(a2, a3);
  v7 = type metadata accessor for UnsafePointer();
  UnsafeRawPointer.unprotectedLoad<A>(fromByteOffset:as:)(0, v6, v7, &v9);
  return v9 + v5;
}

uint64_t SignedLayout.authedPtr.getter(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 24))();
  (*(a2 + 16))(a1, a2);
  return *v4;
}

Swift::Int ProtocolDescriptor.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x193ACF860](a1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type ProtocolDescriptor and conformance ProtocolDescriptor()
{
  result = lazy protocol witness table cache variable for type ProtocolDescriptor and conformance ProtocolDescriptor;
  if (!lazy protocol witness table cache variable for type ProtocolDescriptor and conformance ProtocolDescriptor)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProtocolDescriptor and conformance ProtocolDescriptor);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ProtocolRequirement and conformance ProtocolRequirement()
{
  result = lazy protocol witness table cache variable for type ProtocolRequirement and conformance ProtocolRequirement;
  if (!lazy protocol witness table cache variable for type ProtocolRequirement and conformance ProtocolRequirement)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProtocolRequirement and conformance ProtocolRequirement);
  }

  return result;
}

uint64_t ClassDescriptor.genericArgumentOffset.getter(_DWORD *a1)
{
  v1 = HIWORD(*a1);
  if ((v1 & 0x2000) != 0)
  {
    return *(a1 + a1[6] + 24) / 8;
  }

  if ((v1 & 0x1000) != 0)
  {
    return -a1[6];
  }

  return (a1[7] - a1[8]);
}

_BYTE *ClassDescriptor.genericSignature.getter(char *a1)
{
  v2 = *a1;
  result = a1 + 52;
  if ((v2 & 0x80) == 0)
  {
    return 0;
  }

  return result;
}

uint64_t ClassDescriptor.nonResilientImmediateMembersOffset.getter(uint64_t a1)
{
  if ((*(a1 + 3) & 0x10) != 0)
  {
    return -*(a1 + 24);
  }

  else
  {
    return (*(a1 + 28) - *(a1 + 32));
  }
}

Swift::Int ClassDescriptor.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x193ACF860](a1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type ClassDescriptor and conformance ClassDescriptor()
{
  result = lazy protocol witness table cache variable for type ClassDescriptor and conformance ClassDescriptor;
  if (!lazy protocol witness table cache variable for type ClassDescriptor and conformance ClassDescriptor)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClassDescriptor and conformance ClassDescriptor);
  }

  return result;
}

_BYTE *AnonymousDescriptor.genericSignature.getter(char *a1)
{
  v2 = *a1;
  result = a1 + 8;
  if ((v2 & 0x80) == 0)
  {
    return 0;
  }

  return result;
}

Swift::Int AnonymousDescriptor.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x193ACF860](a1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type AnonymousDescriptor and conformance AnonymousDescriptor()
{
  result = lazy protocol witness table cache variable for type AnonymousDescriptor and conformance AnonymousDescriptor;
  if (!lazy protocol witness table cache variable for type AnonymousDescriptor and conformance AnonymousDescriptor)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnonymousDescriptor and conformance AnonymousDescriptor);
  }

  return result;
}

uint64_t TypeDescriptor.sizeOfSelf.getter(_DWORD *a1)
{
  if ((*a1 & 0x1Fu) - 17 >= 2)
  {
    return 44;
  }

  else
  {
    return 28;
  }
}

uint64_t TypeDescriptor.genericSignature.getter(_DWORD *a1)
{
  v1 = 11;
  if ((*a1 & 0x1Fu) - 17 < 2)
  {
    v1 = 7;
  }

  v2 = &a1[v1 + 2];
  if ((*a1 & 0x80) != 0)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

Swift::Int TypeDescriptor.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x193ACF860](a1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type TypeDescriptor and conformance TypeDescriptor()
{
  result = lazy protocol witness table cache variable for type TypeDescriptor and conformance TypeDescriptor;
  if (!lazy protocol witness table cache variable for type TypeDescriptor and conformance TypeDescriptor)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TypeDescriptor and conformance TypeDescriptor);
  }

  return result;
}

uint64_t AnyExistentialContainer.storage.setter(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *v4 = result;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
  return result;
}

uint64_t AnyExistentialContainer.allocateBox(_:)(uint64_t (*a1)(uint64_t *))
{
  if ((*(*(v1[3] - 8) + 82) & 2) != 0)
  {
    *v1 = swift_allocBox();
    v3 = v4;
  }

  else
  {
    v3 = v1;
  }

  return a1(v3);
}

uint64_t _ss24withUnsafeMutablePointer2to_q0_xz_q0_SpyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  v12 = MEMORY[0x1EEE9AC00]();
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v15(v12, v14);
  if (v8)
  {
    return (*(v11 + 32))(a8, v14, a5);
  }

  return result;
}

uint64_t AnyExistentialContainer.projectValue<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if ((*(*(*(v4 + 24) - 8) + 80) & 0x20000) != 0)
  {
    v14 = a3;
    v15 = MEMORY[0x1EEE9AC00](a1);
    v16 = v10;
    v17 = v11;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v8 = MEMORY[0x1E69E7288];
    v9 = partial apply for closure #2 in AnyExistentialContainer.projectValue<A>(_:);
  }

  else
  {
    v14 = a3;
    v15 = MEMORY[0x1EEE9AC00](a1);
    v16 = v6;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v8 = MEMORY[0x1E69E7288];
    v9 = partial apply for closure #1 in AnyExistentialContainer.projectValue<A>(_:);
  }

  return _ss24withUnsafeMutablePointer2to_q0_xz_q0_SpyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v4, v9, &v13, &type metadata for AnyExistentialContainer, v7, a3, v8, &v18);
}

Swift::Void __swiftcall AnyExistentialContainer.deallocate()()
{
  if ((*(*(v0 - 8) + 82) & 2) != 0)
  {
    MEMORY[0x1EEE6BDB8]();
  }
}

__n128 ExistentialContainer.storage.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v2;
  result = *(v1 + 24);
  *(a1 + 24) = result;
  return result;
}

uint64_t ExistentialContainer.storage.setter(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *v5 = result;
  v5[1] = a2;
  v5[2] = a3;
  v5[3] = a4;
  v5[4] = a5;
  return result;
}

uint64_t partial apply for closure #2 in AnyExistentialContainer.projectValue<A>(_:)(void *a1, void *a2)
{
  result = (*(v2 + 24))(*a1 + *(v2 + 40));
  if (v3)
  {
    *a2 = v3;
  }

  return result;
}

uint64_t partial apply for closure #1 in AnyExistentialContainer.projectValue<A>(_:)(uint64_t a1, void *a2)
{
  result = (*(v2 + 24))();
  if (v3)
  {
    *a2 = v3;
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for AnyExistentialContainer(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 32))
  {
    return (*a1 + 2);
  }

  if (*(a1 + 24))
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for AnyExistentialContainer(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 24) = 0;
    }
  }

  return result;
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

uint64_t getEnumTagSinglePayload for ExistentialContainer(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 40))
  {
    return (*a1 + 2);
  }

  if (*(a1 + 24))
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for ExistentialContainer(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = 0;
    }
  }

  return result;
}

uint64_t ContextDescriptor.parent.getter(uint64_t a1)
{
  v3 = *(a1 + 4);
  v1 = a1 + 4;
  v2 = v3;
  if (!v3)
  {
    return 0;
  }

  result = v1 + (v2 & 0xFFFFFFFFFFFFFFFELL);
  if (v2)
  {
    return *result;
  }

  return result;
}

uint64_t ContextDescriptor.sizeOfSelf.getter(_DWORD *a1)
{
  v1 = *a1 & 0x1F;
  if (v1 > 2)
  {
    switch(v1)
    {
      case 3u:
        return 24;
      case 4u:
        return 8;
      case 0x10u:
        return 44;
    }
  }

  else
  {
    if ((*a1 & 0x1Fu) < 2)
    {
      return 12;
    }

    if (v1 == 2)
    {
      return 8;
    }
  }

  return 28;
}

_DWORD *ContextDescriptor.genericSignature.getter(_DWORD *a1)
{
  if ((*a1 & 0x80) == 0)
  {
    return 0;
  }

  v2 = *a1 & 0x1F;
  if (v2 <= 2)
  {
    if (v2 < 2)
    {
      return a1 + 3;
    }

    return a1 + 2;
  }

  switch(v2)
  {
    case 3u:
      return a1 + 6;
    case 4u:
      return a1 + 2;
    case 0x10u:
      return a1 + 11;
    default:
      return a1 + 7;
  }
}

Swift::Int ContextDescriptor.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x193ACF860](a1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type ContextDescriptor and conformance ContextDescriptor()
{
  result = lazy protocol witness table cache variable for type ContextDescriptor and conformance ContextDescriptor;
  if (!lazy protocol witness table cache variable for type ContextDescriptor and conformance ContextDescriptor)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContextDescriptor and conformance ContextDescriptor);
  }

  return result;
}

unint64_t specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(unint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 12);
  if (v4 < result || v4 < a3)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3 - result;
  if (a2 >= 1)
  {
    if (v6 < 0 || v6 >= a2)
    {
      goto LABEL_13;
    }

    return 0;
  }

  if (v6 <= 0 && v6 > a2)
  {
    return 0;
  }

LABEL_13:
  v7 = __OFADD__(result, a2);
  result += a2;
  if (v7)
  {
    goto LABEL_16;
  }

  if (result > v4)
  {
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 8);
  if (v4 < a3 || (a3 | result) < 0 || v4 < result)
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - result;
  if (a2 >= 1)
  {
    if (v5 < 0 || v5 >= a2)
    {
      goto LABEL_11;
    }

    return 0;
  }

  if (v5 <= 0 && v5 > a2)
  {
    return 0;
  }

LABEL_11:
  v6 = __OFADD__(result, a2);
  result += a2;
  if (v6)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (result < 0 || v4 < result)
  {
    goto LABEL_17;
  }

  return result;
}

unint64_t TupleMetadata.Elements.Element.label.getter(unint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, 16 * a2))
  {
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (!*(result - 16 * a2 - 8))
  {
    return 0;
  }

  v2 = a2;
  result = String.init(cString:)();
  if (__OFADD__(v2, 1))
  {
    goto LABEL_27;
  }

  if (v2 + 1 < 0)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v4 = result;
  v5 = v3;
  if (v2 == -1)
  {
    i = 15;
    v8 = 15;
  }

  else
  {
    v6 = (v3 & 0x1000000000000000) == 0 || (result & 0x800000000000000) != 0;
    if ((v3 & 0x2000000000000000) != 0)
    {
      v7 = HIBYTE(v3) & 0xF;
    }

    else
    {
      v7 = result & 0xFFFFFFFFFFFFLL;
    }

    v8 = 15;
    v9 = specialized Collection.subscript.getter(0xFuLL, result, v3);
    result = specialized Collection<>.firstIndex(of:)(32, v9, v10, v11, v12);
    for (i = result; v2; --v2)
    {
      if ((i & 0xC) == 4 << v6)
      {
        result = _StringGuts._slowEnsureMatchingEncoding(_:)(i, v4, v5);
        i = result;
        if ((v5 & 0x1000000000000000) == 0)
        {
LABEL_15:
          v8 = (i & 0xFFFFFFFFFFFF0000) + 65540;
          goto LABEL_16;
        }
      }

      else if ((v5 & 0x1000000000000000) == 0)
      {
        goto LABEL_15;
      }

      if (v7 <= i >> 16)
      {
        goto LABEL_30;
      }

      v8 = String.UTF8View._foreignIndex(after:)();
LABEL_16:
      v14 = specialized Collection.subscript.getter(v8, v4, v5);
      result = specialized Collection<>.firstIndex(of:)(32, v14, v15, v16, v17);
      i = result;
    }
  }

  if (i >> 14 >= v8 >> 14)
  {
    v19 = String.subscript.getter();
    v21 = v20;
    v23 = v22;
    v25 = v24;

    v18 = MEMORY[0x193ACF6A0](v19, v21, v23, v25);

    return v18;
  }

LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

unint64_t specialized Collection<>.firstIndex(of:)(char a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  v5 = a3 >> 14;
  v6 = a2 >> 14;
  if (a2 >> 14 == a3 >> 14)
  {
    return 0;
  }

  result = a2;
  v11 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v11) = 1;
  }

  v12 = 4 << v11;
  v22 = a5 & 0xFFFFFFFFFFFFFFLL;
  v13 = (a5 & 0xFFFFFFFFFFFFFFFLL) + 32;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v14 = HIBYTE(a5) & 0xF;
  }

  else
  {
    v14 = a4 & 0xFFFFFFFFFFFFLL;
  }

  while (1)
  {
    v15 = result & 0xC;
    v16 = result;
    if (v15 == v12)
    {
      v19 = result;
      v16 = _StringGuts._slowEnsureMatchingEncoding(_:)(result, a4, a5);
      result = v19;
    }

    if (v16 >> 14 < v6 || v16 >> 14 >= v5)
    {
      break;
    }

    if ((a5 & 0x1000000000000000) != 0)
    {
      v20 = result;
      v18 = String.UTF8View._foreignSubscript(position:)();
      result = v20;
    }

    else if ((a5 & 0x2000000000000000) != 0)
    {
      v23[0] = a4;
      v23[1] = v22;
      v18 = *(v23 + (v16 >> 16));
    }

    else
    {
      v17 = v13;
      if ((a4 & 0x1000000000000000) == 0)
      {
        v21 = result;
        v17 = _StringObject.sharedUTF8.getter();
        result = v21;
      }

      v18 = *(v17 + (v16 >> 16));
    }

    if (v18 == a1)
    {
      return result;
    }

    if (v15 == v12)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(result, a4, a5);
      if ((a5 & 0x1000000000000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_22:
      if (v14 <= result >> 16)
      {
        goto LABEL_31;
      }

      result = String.UTF8View._foreignIndex(after:)();
      if (v5 == result >> 14)
      {
        return 0;
      }
    }

    else
    {
      if ((a5 & 0x1000000000000000) != 0)
      {
        goto LABEL_22;
      }

LABEL_8:
      result = (result & 0xFFFFFFFFFFFF0000) + 65540;
      if (v5 == result >> 14)
      {
        return 0;
      }
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t TupleMetadata.Elements.subscript.getter(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else if (*(a2 + 8) > result)
  {
    return a2 + 16 * result + 24;
  }

  __break(1u);
  return result;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance TupleMetadata.Elements(uint64_t (*result)(), uint64_t *a2))()
{
  v3 = *a2;
  if (*a2 < 0)
  {
    __break(1u);
  }

  else if (v3 < *(*v2 + 8))
  {
    *result = *v2 + 16 * v3 + 24;
    *(result + 1) = v3;
    return protocol witness for Collection.subscript.read in conformance FieldDescriptor;
  }

  __break(1u);
  return result;
}

void *protocol witness for Collection.subscript.getter in conformance TupleMetadata.Elements@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v3 = *v2;
  v4 = *(*v2 + 8);
  if (v4 < 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  if ((*result & 0x8000000000000000) != 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = result[1];
  if (v4 >= v5)
  {
    *a2 = *result;
    a2[1] = v5;
    a2[2] = v3;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void protocol witness for Collection.indices.getter in conformance TupleMetadata.Elements(void *a1@<X8>)
{
  v2 = *(*v1 + 8);
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    *a1 = 0;
    a1[1] = v2;
  }
}

void *protocol witness for RandomAccessCollection.index(_:offsetBy:) in conformance TupleMetadata.Elements@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *result + a2;
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else if ((v4 & 0x8000000000000000) == 0 && *(*v3 + 8) >= v4)
  {
    *a3 = v4;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for RandomAccessCollection.index(_:offsetBy:limitedBy:) in conformance TupleMetadata.Elements@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(*a1, a2, *a3, *v4);
  *a4 = result;
  *(a4 + 8) = v7 & 1;
  return result;
}

uint64_t *protocol witness for RandomAccessCollection.distance(from:to:) in conformance TupleMetadata.Elements(uint64_t *result, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(*v2 + 8);
  if (v4 >= *a2)
  {
    v5 = *result;
    if (((v3 | *result) & 0x8000000000000000) == 0 && v4 >= v5)
    {
      return (v3 - v5);
    }
  }

  __break(1u);
  return result;
}

Swift::Int TupleMetadata.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x193ACF860](a1);
  return Hasher._finalize()();
}

uint64_t *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1)
{
  v1 = *(a1 + 12);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15RuntimeInternal15FieldDescriptorV7ElementVGMd);
  v3 = swift_allocObject();
  v4 = _swift_stdlib_malloc_size(v3);
  result = v3;
  v7 = v4 - 32;
  v6 = v4 < 32;
  v8 = v4 - 25;
  if (!v6)
  {
    v8 = v7;
  }

  v3[2] = v1;
  v3[3] = 2 * (v8 >> 3);
  v9 = v3 + 4;
  if (v1 == 1)
  {
    v10 = 0;
LABEL_10:
    v14 = a1 + 12 * v10 + 16;
    v15 = v1 - v10;
    do
    {
      *v9++ = v14;
      v14 += 12;
      --v15;
    }

    while (v15);
    return result;
  }

  v10 = v1 & 0xFFFFFFFE;
  v9 += v10;
  v11 = a1 + 28;
  v12 = v3 + 5;
  v13 = v10;
  do
  {
    *(v12 - 1) = v11 - 12;
    *v12 = v11;
    v11 += 24;
    v12 += 2;
    v13 -= 2;
  }

  while (v13);
  if (v10 != v1)
  {
    goto LABEL_10;
  }

  return result;
}

int64_t specialized _copyCollectionToContiguousArray<A>(_:)(int64_t result)
{
  v1 = *(result + 8);
  if (v1 < 0)
  {
LABEL_34:
    __break(1u);
    return result;
  }

  if (v1)
  {
    v2 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15RuntimeInternal13TupleMetadataV8ElementsV7ElementVGMd);
    v3 = swift_allocObject();
    result = _swift_stdlib_malloc_size(v3);
    v4 = result - 17;
    if (result >= 32)
    {
      v4 = result - 32;
    }

    v3[2] = v1;
    v3[3] = 2 * (v4 >> 4);
    v5 = *(v2 + 8);
    if (v5)
    {
      result = v3;
      v6 = v3 + 4;
      v7 = v2 + 24;
      v8 = v5 & ~(v5 >> 63);
      if (v8 >= v5 - 1)
      {
        v9 = v5 - 1;
      }

      else
      {
        v9 = v5 & ~(v5 >> 63);
      }

      if (v9 >= v1 - 1)
      {
        v10 = v1 - 1;
      }

      else
      {
        v10 = v9;
      }

      if (v10 >= 0x18)
      {
        v11 = 0;
        if (v8 >= v5 - 1)
        {
          v8 = v5 - 1;
        }

        if (v8 >= v1 - 1)
        {
          v14 = v1 - 1;
        }

        else
        {
          v14 = v8;
        }

        v12 = 1;
        if (&v6[2 * v14] >= v6 && &v3[2 * v14 + 5] >= v3 + 5 && !(v14 >> 60))
        {
          v15 = (v10 + 1) & 3;
          if (!v15)
          {
            v15 = 4;
          }

          v11 = v10 + 1 - v15;
          v12 = v11 + 1;
          v6 += 2 * v11;
          v16 = xmmword_18E60A4E0;
          v17 = (v3 + 8);
          v18 = vdupq_n_s64(2uLL);
          v19 = vdupq_n_s64(v7);
          v20 = v11;
          do
          {
            v24.val[1] = vaddq_s64(v16, v18);
            v21 = v17 - 4;
            v22 = vaddq_s64(v19, vshlq_n_s64(v16, 4uLL));
            vst2q_f64(v21, *(&v16 - 1));
            v24.val[0] = vaddq_s64(v19, vshlq_n_s64(v24.val[1], 4uLL));
            vst2q_f64(v17, v24);
            v16 = vaddq_s64(v16, vdupq_n_s64(4uLL));
            v17 += 8;
            v20 -= 4;
          }

          while (v20);
        }

        v13 = v5 + 1;
      }

      else
      {
        v11 = 0;
        v12 = 1;
        v13 = v5 + 1;
      }

      while (v11 < v5)
      {
        v23 = v12;
        *v6 = v7 + 16 * v11;
        v6[1] = v11;
        if (v1 == v12)
        {
          return result;
        }

        v6 += 2;
        ++v12;
        v11 = v23;
        if (v13 == v23 + 1)
        {
          goto LABEL_32;
        }
      }
    }

    else
    {
LABEL_32:
      __break(1u);
    }

    __break(1u);
    goto LABEL_34;
  }

  return MEMORY[0x1E69E7CC0];
}

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
    v5 = MEMORY[0x193ACF6D0](15, a1 >> 16);
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

unint64_t _StringGuts.validateSubscalarRange(_:)(unint64_t result, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = (a3 >> 59) & 1;
  if ((a4 & 0x1000000000000000) == 0)
  {
    LOBYTE(v4) = 1;
  }

  v5 = 4 << v4;
  if ((a2 & 0xC) == 4 << v4)
  {
    v7 = result;
    v8 = a3;
    v9 = a4;
    v10 = _StringGuts._slowEnsureMatchingEncoding(_:)(a2, a3, a4);
    a3 = v8;
    a4 = v9;
    a2 = v10;
    result = v7;
  }

  if ((result & 0xC) == v5)
  {
    v11 = a2;
    v12 = a3;
    v13 = a4;
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(result, a3, a4);
    a3 = v12;
    a4 = v13;
    a2 = v11;
  }

  v6 = a3 & 0xFFFFFFFFFFFFLL;
  if ((a4 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a4) & 0xF;
  }

  if (a2 >> 14 > 4 * v6 || a2 >> 14 < result >> 14)
  {
    __break(1u);
  }

  return result;
}

unint64_t specialized Collection.subscript.getter(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 < result >> 14)
  {
    __break(1u);
  }

  else
  {
    v4 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v4 = 11;
    }

    return _StringGuts.validateSubscalarRange(_:)(result, v4 | (v3 << 16), a2, a3);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TupleMetadata.Elements and conformance TupleMetadata.Elements()
{
  result = lazy protocol witness table cache variable for type TupleMetadata.Elements and conformance TupleMetadata.Elements;
  if (!lazy protocol witness table cache variable for type TupleMetadata.Elements and conformance TupleMetadata.Elements)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TupleMetadata.Elements and conformance TupleMetadata.Elements);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TupleMetadata.Elements and conformance TupleMetadata.Elements;
  if (!lazy protocol witness table cache variable for type TupleMetadata.Elements and conformance TupleMetadata.Elements)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TupleMetadata.Elements and conformance TupleMetadata.Elements);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TupleMetadata.Elements and conformance TupleMetadata.Elements;
  if (!lazy protocol witness table cache variable for type TupleMetadata.Elements and conformance TupleMetadata.Elements)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TupleMetadata.Elements and conformance TupleMetadata.Elements);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TupleMetadata.Elements and conformance TupleMetadata.Elements;
  if (!lazy protocol witness table cache variable for type TupleMetadata.Elements and conformance TupleMetadata.Elements)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TupleMetadata.Elements and conformance TupleMetadata.Elements);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Slice<TupleMetadata.Elements> and conformance <> Slice<A>(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SliceVy15RuntimeInternal13TupleMetadataV8ElementsVGMd);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TupleMetadata and conformance TupleMetadata()
{
  result = lazy protocol witness table cache variable for type TupleMetadata and conformance TupleMetadata;
  if (!lazy protocol witness table cache variable for type TupleMetadata and conformance TupleMetadata)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TupleMetadata and conformance TupleMetadata);
  }

  return result;
}

unint64_t GenericSignature.packShapeHeader.getter(unsigned __int16 *a1)
{
  v1 = a1[3];
  if (v1)
  {
    v2 = *(&a1[6 * a1[1] + 4] + (-*a1 & 3) + *a1);
  }

  else
  {
    v2 = 0;
  }

  return v2 | (((v1 & 1) == 0) << 32);
}

uint64_t GenericSignature.packShapes.getter(unsigned __int16 *a1)
{
  if (a1[3])
  {
    return &a1[6 * a1[1] + 6] + (-*a1 & 3) + *a1;
  }

  else
  {
    return 0;
  }
}

unint64_t GenericSignature.RequirementDescriptor.protocol.getter(uint64_t a1)
{
  v1 = *(a1 + 8);
  result = a1 + 8 + (v1 & 0xFFFFFFFFFFFFFFFCLL);
  if (v1)
  {
    return *result;
  }

  return result;
}

uint64_t GenericSignature.RequirementDescriptor.checkProtocolConformance(in:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*a3 & 0x1F) != 0)
  {
    return 0;
  }

  MangledTypeReference.length.getter((a3 + 4 + *(a3 + 4)));
  result = swift_getTypeByMangledNameInContext();
  if (result)
  {
    return swift_conformsToProtocol();
  }

  return result;
}

uint64_t GenericSignature.RequirementDescriptor.checkSameType(in:with:)(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if ((*a3 & 0x1F) != 1)
  {
    return 0;
  }

  MangledTypeReference.length.getter(a3 + a3[1] + 4);
  TypeByMangledNameInContext = swift_getTypeByMangledNameInContext();
  if (!TypeByMangledNameInContext)
  {
    return 1;
  }

  v5 = TypeByMangledNameInContext;
  result = MangledTypeReference.length.getter(a3 + a3[2] + 8);
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = swift_getTypeByMangledNameInContext();
    return !v7 || v5 == v7;
  }

  return result;
}

uint64_t GenericSignature.RequirementDescriptor.checkLayout(in:with:)(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if ((~*a3 & 0x1F) != 0)
  {
    return 0;
  }

  MangledTypeReference.length.getter(a3 + a3[1] + 4);
  result = swift_getTypeByMangledNameInContext();
  if (result)
  {
    if (a3[2])
    {
      return 0;
    }

    else
    {
      v5 = *result;
      result = 1;
      if (v5 <= 0x7FF && v5 - 515 >= 2 && v5 != 0)
      {
        return v5 == 773;
      }
    }
  }

  return result;
}

uint64_t GenericSignature.RequirementDescriptor.checkBaseClass(in:with:)(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if ((*a3 & 0x1F) != 2)
  {
    return 0;
  }

  MangledTypeReference.length.getter(a3 + a3[1] + 4);
  TypeByMangledNameInContext = swift_getTypeByMangledNameInContext();
  if (!TypeByMangledNameInContext)
  {
    return 0;
  }

  v5 = TypeByMangledNameInContext;
  v6 = *TypeByMangledNameInContext;
  if (*TypeByMangledNameInContext <= 0x7FFuLL && (v6 - 515) >= 2 && v6 != 773 && v6 != 0)
  {
    return 0;
  }

  v8 = MangledTypeReference.length.getter(a3 + a3[2] + 8);
  if (v8 < 0)
  {
    __break(1u);
  }

  else
  {
    v10 = swift_getTypeByMangledNameInContext();
    if (!v10)
    {
      return 0;
    }

    v9 = v10;
    v8 = v5;
  }

  return MEMORY[0x1EEE6BC00](v8, v9);
}

uint64_t getEnumTagSinglePayload for GenericSignature.PackShapeDescriptor(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for GenericSignature.PackShapeDescriptor(uint64_t result, int a2, int a3)
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

BOOL static Metadata.Kind.== infix(_:_:)(unint64_t a1, unint64_t a2)
{
  if (a2 >= 0x800)
  {
    v2 = 0;
  }

  else
  {
    v2 = a2;
  }

  if (a1 >= 0x800)
  {
    v3 = 0;
  }

  else
  {
    v3 = a1;
  }

  return v3 == v2;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance Metadata.Kind(unint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a2 >= 0x800)
  {
    v3 = 0;
  }

  if (v2 >= 0x800)
  {
    v2 = 0;
  }

  return v2 == v3;
}

uint64_t Metadata.Kind.hash(into:)(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x800)
  {
    v2 = 0;
  }

  else
  {
    v2 = a2;
  }

  return MEMORY[0x193ACF860](v2);
}

Swift::Int Metadata.Kind.hashValue.getter(unint64_t a1)
{
  Hasher.init(_seed:)();
  if (a1 >= 0x800)
  {
    v2 = 0;
  }

  else
  {
    v2 = a1;
  }

  MEMORY[0x193ACF860](v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Metadata.Kind()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1 >= 0x800)
  {
    v2 = 0;
  }

  else
  {
    v2 = v1;
  }

  MEMORY[0x193ACF860](v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Metadata.Kind()
{
  if (*v0 >= 0x800)
  {
    v1 = 0;
  }

  else
  {
    v1 = *v0;
  }

  return MEMORY[0x193ACF860](v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Metadata.Kind()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1 >= 0x800)
  {
    v2 = 0;
  }

  else
  {
    v2 = v1;
  }

  MEMORY[0x193ACF860](v2);
  return Hasher._finalize()();
}

uint64_t Metadata.Kind.description.getter(uint64_t a1)
{
  result = 0x7373616C63;
  if (a1 <= 0x7FF)
  {
    if (a1 <= 770)
    {
      if (a1 <= 514)
      {
        if (a1 > 512)
        {
          if (a1 == 513)
          {
            return 1836412517;
          }

          else
          {
            return 0x6C616E6F6974706FLL;
          }
        }

        if (!a1)
        {
          return result;
        }

        if (a1 == 512)
        {
          return 0x746375727473;
        }
      }

      else
      {
        if (a1 > 767)
        {
          if (a1 == 768)
          {
            return 0x65757161706FLL;
          }

          if (a1 == 769)
          {
            return 0x656C707574;
          }

          return 0x6E6F6974636E7566;
        }

        if (a1 == 515)
        {
          return 0x436E676965726F66;
        }

        if (a1 == 516)
        {
          return 0xD000000000000014;
        }
      }

      return 0x6E776F6E6B6E75;
    }

    if (a1 > 1023)
    {
      if (a1 <= 1280)
      {
        if (a1 == 1024)
        {
          return 0xD000000000000011;
        }

        if (a1 == 1280)
        {
          return 0xD000000000000018;
        }
      }

      else
      {
        switch(a1)
        {
          case 1281:
            return 0x6A624F726F727265;
          case 1282:
            return 1802723700;
          case 1283:
            return 6451050;
        }
      }

      return 0x6E776F6E6B6E75;
    }

    if (a1 > 772)
    {
      switch(a1)
      {
        case 773:
          return 0xD000000000000010;
        case 774:
          return 0xD000000000000013;
        case 775:
          return 0xD000000000000013;
      }

      return 0x6E776F6E6B6E75;
    }

    if (a1 == 771)
    {
      return 0x746E657473697865;
    }

    else
    {
      return 0x657079746174656DLL;
    }
  }

  return result;
}

uint64_t Metadata.Request.init(state:isBlocking:)(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return result & 0x100;
  }

  return result;
}

uint64_t FunctionMetadata.Convention.description.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {
        return 99;
      }

      return 0x6E776F6E6B6E75;
    }

    return 1852401780;
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return 0x6B636F6C62;
      }

      return 0x6E776F6E6B6E75;
    }

    return 0x7466697773;
  }
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance FunctionMetadata.Convention()
{
  v1 = *v0;
  if (*v0 > 1)
  {
    if (v1 != 2)
    {
      if (v1 == 3)
      {
        return 99;
      }

      return 0x6E776F6E6B6E75;
    }

    return 1852401780;
  }

  else
  {
    if (v1)
    {
      if (v1 == 1)
      {
        return 0x6B636F6C62;
      }

      return 0x6E776F6E6B6E75;
    }

    return 0x7466697773;
  }
}

uint64_t FunctionMetadata.DifferentiableKind.description.getter(uint64_t a1)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      return 0xD000000000000011;
    }

    if (a1 == 1)
    {
      return 0x64726177726F66;
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        return 0x65737265766572;
      case 3:
        return 0x6C616D726F6ELL;
      case 4:
        return 0x7261656E696CLL;
    }
  }

  return 0x6E776F6E6B6E75;
}

unint64_t lazy protocol witness table accessor for type Metadata.Kind and conformance Metadata.Kind()
{
  result = lazy protocol witness table cache variable for type Metadata.Kind and conformance Metadata.Kind;
  if (!lazy protocol witness table cache variable for type Metadata.Kind and conformance Metadata.Kind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Metadata.Kind and conformance Metadata.Kind);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FunctionMetadata.Convention and conformance FunctionMetadata.Convention()
{
  result = lazy protocol witness table cache variable for type FunctionMetadata.Convention and conformance FunctionMetadata.Convention;
  if (!lazy protocol witness table cache variable for type FunctionMetadata.Convention and conformance FunctionMetadata.Convention)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FunctionMetadata.Convention and conformance FunctionMetadata.Convention);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FunctionMetadata.DifferentiableKind and conformance FunctionMetadata.DifferentiableKind()
{
  result = lazy protocol witness table cache variable for type FunctionMetadata.DifferentiableKind and conformance FunctionMetadata.DifferentiableKind;
  if (!lazy protocol witness table cache variable for type FunctionMetadata.DifferentiableKind and conformance FunctionMetadata.DifferentiableKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FunctionMetadata.DifferentiableKind and conformance FunctionMetadata.DifferentiableKind);
  }

  return result;
}

Swift::Int ForeignReferenceTypeMetadata.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x193ACF860](a1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type ForeignReferenceTypeMetadata and conformance ForeignReferenceTypeMetadata()
{
  result = lazy protocol witness table cache variable for type ForeignReferenceTypeMetadata and conformance ForeignReferenceTypeMetadata;
  if (!lazy protocol witness table cache variable for type ForeignReferenceTypeMetadata and conformance ForeignReferenceTypeMetadata)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForeignReferenceTypeMetadata and conformance ForeignReferenceTypeMetadata);
  }

  return result;
}

uint64_t RelativePointer.pointee(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if ((*(a3 + 16))(a2, a3))
  {
    v8 = (*(a3 + 24))(a1, a2, a3);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    UnsafeRawPointer.unprotectedLoad<A>(fromByteOffset:as:)(0, v8, AssociatedTypeWitness, a4);
    v10 = *(*(AssociatedTypeWitness - 8) + 56);
    v11 = a4;
    v12 = 0;
    v13 = AssociatedTypeWitness;
  }

  else
  {
    v14 = swift_getAssociatedTypeWitness();
    v10 = *(*(v14 - 8) + 56);
    v13 = v14;
    v11 = a4;
    v12 = 1;
  }

  return v10(v11, v12, 1, v13);
}