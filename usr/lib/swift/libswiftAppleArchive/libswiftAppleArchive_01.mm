uint64_t specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1)
{
  return specialized _copyCollectionToContiguousArray<A>(_:)(a1, MEMORY[0x29EDC85B0], _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC12AppleArchive0I6HeaderC12EntryXATBlobC17ExtendedAttributeV_Tt1g5, specialized Sequence._copySequenceContents(initializing:));
}

{
  return specialized _copyCollectionToContiguousArray<A>(_:)(a1, MEMORY[0x29EDC85D0], _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC12AppleArchive0I6HeaderC5FieldO_Tt1g5, specialized Sequence._copySequenceContents(initializing:));
}

uint64_t specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void, void), uint64_t (*a4)(uint64_t *, uint64_t, void))
{
  v7 = *(a1 + 16);
  v8 = a2(v7);
  a2(v7);
  result = a2(v7);
  if (result >= v8)
  {
    if (v8)
    {
      v10 = a3(v8, 0);

      v11 = a4(&v12, v10 + 32, v8);

      if (v11 == v8)
      {
        return v10;
      }

      __break(1u);
    }

    return MEMORY[0x29EDCA190];
  }

  __break(1u);
  return result;
}

void specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x29EDCA190];
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v8[2] = v5;
      v8[3] = 2 * v9 - 64;
      if (v4 != a3)
      {
LABEL_5:
        memcpy(v8 + 4, (a2 + a3), v5);
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC12AppleArchive0I6HeaderC8FieldKeyV_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x29EDCA190];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 29;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 2);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC12AppleArchive0I6HeaderC12EntryXATBlobC17ExtendedAttributeV_Tt1g5(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x29EDCA190];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12AppleArchive0E6HeaderC12EntryXATBlobC17ExtendedAttributeVGMd, &_ss23_ContiguousArrayStorageCy12AppleArchive0E6HeaderC12EntryXATBlobC17ExtendedAttributeVGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC12AppleArchive0I6HeaderC5FieldO_Tt1g5(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x29EDCA190];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12AppleArchive0E6HeaderC5FieldOGMd, &_ss23_ContiguousArrayStorageCy12AppleArchive0E6HeaderC5FieldOGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 1;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 5);
  return result;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    v8 = 0;
    goto LABEL_20;
  }

  if (!a3)
  {
LABEL_19:
    v8 = a3;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    if (AAHeaderGetFieldCount(*(a4 + 16)))
    {
      do
      {
        FieldKey = AAHeaderGetFieldKey(*(a4 + 16), v8);
        if ((FieldKey.ikey << 8) >> 24 < 32 || HIBYTE(FieldKey.ikey) != 0)
        {
          goto LABEL_23;
        }

        v11 = FieldKey;
        if (FieldKey.skey[0] < 32 || *FieldKey.skey >> 8 <= 31)
        {
          goto LABEL_23;
        }

        if (v8 >= AAHeaderGetFieldCount(*(a4 + 16)))
        {
          __break(1u);
          goto LABEL_22;
        }

        *(a2 + 4 * v8) = v11;
        if (a3 - 1 == v8)
        {
          goto LABEL_19;
        }
      }

      while (++v8 != AAHeaderGetFieldCount(*(a4 + 16)));
    }

LABEL_20:
    *a1 = a4;
    a1[1] = v8;
    return v8;
  }

LABEL_22:
  __break(1u);
LABEL_23:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  if (!a2)
  {
    v8 = 0;
    goto LABEL_12;
  }

  if (!a3)
  {
LABEL_11:
    v8 = a3;
    goto LABEL_12;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    if (AAHeaderGetFieldCount(*(a4 + 16)))
    {
      do
      {
        FieldType = AAHeaderGetFieldType(*(a4 + 16), v8);
        if (FieldType < 0)
        {
          goto LABEL_15;
        }

        v10 = FieldType;
        if (v8 >= AAHeaderGetFieldCount(*(a4 + 16)))
        {
          __break(1u);
          goto LABEL_14;
        }

        *(a2 + 4 * v8) = v10;
        if (a3 - 1 == v8)
        {
          goto LABEL_11;
        }
      }

      while (++v8 != AAHeaderGetFieldCount(*(a4 + 16)));
    }

LABEL_12:
    *a1 = a4;
    a1[1] = v8;
    return v8;
  }

LABEL_14:
  __break(1u);
LABEL_15:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(void *a1, uint64_t a2, unint64_t a3)
{
  if (!a2)
  {
    v7 = 0;
    goto LABEL_20;
  }

  if (!a3)
  {
LABEL_19:
    v7 = a3;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    if (AAFieldKeySetGetKeyCount(*(v3 + 16)))
    {
      do
      {
        Key = AAFieldKeySetGetKey(*(v3 + 16), v7);
        if ((Key.ikey << 8) >> 24 < 32 || HIBYTE(Key.ikey) != 0)
        {
          goto LABEL_23;
        }

        v10 = Key;
        if (Key.skey[0] < 32 || *Key.skey >> 8 <= 31)
        {
          goto LABEL_23;
        }

        if (v7 >= AAFieldKeySetGetKeyCount(*(v3 + 16)))
        {
          __break(1u);
          goto LABEL_22;
        }

        *(a2 + 4 * v7) = v10;
        if (a3 - 1 == v7)
        {
          goto LABEL_19;
        }
      }

      while (++v7 != AAFieldKeySetGetKeyCount(*(v3 + 16)));
    }

LABEL_20:
    *a1 = v3;
    a1[1] = v7;
    return v7;
  }

LABEL_22:
  __break(1u);
LABEL_23:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

unint64_t specialized Sequence._copySequenceContents(initializing:)(unint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  if (!a2)
  {
    v7 = 0;
    goto LABEL_11;
  }

  if (!a3)
  {
LABEL_10:
    v7 = a3;
    goto LABEL_11;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v6 = a2;
    v7 = 0;
    if (AAEntryXATBlobGetEntryCount(*(v3 + 16)))
    {
      while (1)
      {
        ArchiveHeader.EntryXATBlob._attribute(at:)(v7, &v10);
        v8 = v10;
        v9 = v11;
        result = AAEntryXATBlobGetEntryCount(*(v3 + 16));
        if (v7 >= result)
        {
          break;
        }

        *v6 = v8;
        *(v6 + 8) = v9;
        if (a3 - 1 == v7)
        {
          goto LABEL_10;
        }

        ++v7;
        v6 += 24;
        if (v7 == AAEntryXATBlobGetEntryCount(*(v3 + 16)))
        {
          goto LABEL_11;
        }
      }

      __break(1u);
      goto LABEL_13;
    }

LABEL_11:
    *v4 = v3;
    v4[1] = v7;
    return v7;
  }

LABEL_13:
  __break(1u);
  return result;
}

{
  v4 = result;
  if (!a2)
  {
    v7 = 0;
    goto LABEL_11;
  }

  if (!a3)
  {
LABEL_10:
    v7 = a3;
    goto LABEL_11;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v6 = a2;
    v7 = 0;
    if (AAHeaderGetFieldCount(*(v3 + 16)))
    {
      while (1)
      {
        ArchiveHeader._field(at:)(v7, v12);
        v8 = v12[0];
        v9 = v12[1];
        v10 = v12[2];
        v11 = v13;
        result = AAHeaderGetFieldCount(*(v3 + 16));
        if (v7 >= result)
        {
          break;
        }

        *v6 = v8;
        *(v6 + 8) = v9;
        *(v6 + 16) = v10;
        *(v6 + 24) = v11;
        if (a3 - 1 == v7)
        {
          goto LABEL_10;
        }

        ++v7;
        v6 += 32;
        if (v7 == AAHeaderGetFieldCount(*(v3 + 16)))
        {
          goto LABEL_11;
        }
      }

      __break(1u);
      goto LABEL_13;
    }

LABEL_11:
    *v4 = v3;
    v4[1] = v7;
    return v7;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t specialized SetAlgebra<>.init(arrayLiteral:)(uint64_t a1)
{
  type metadata accessor for ArchiveHeader.FieldKeySet();
  v2 = swift_allocObject();
  v3 = AAFieldKeySetCreate();
  if (!v3)
  {
    goto LABEL_10;
  }

  v4 = v3;
  *(v2 + 16) = v3;
  *(v2 + 24) = 1;
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = (a1 + 32);
    while (1)
    {
      v8 = *v6++;
      v7 = v8;
      v9 = v8;
      v10 = AAFieldKeySetContainsKey(v4, v9);
      if (v10 < 0)
      {
        break;
      }

      if (v10 != 1)
      {
        v11 = v7;
        if (AAFieldKeySetInsertKey(v4, v11) < 0)
        {
          break;
        }
      }

      if (!--v5)
      {
        return v2;
      }
    }

    while (1)
    {
LABEL_10:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  return v2;
}

uint64_t specialized ArchiveHeader.FieldKeySet.formSymmetricDifference(_:)(uint64_t a1)
{
  v3 = ArchiveHeader.FieldKeySet.intersection(_:)(a1);
  v4 = *(v1 + 16);
  if (AAFieldKeySetInsertKeySet(v4, *(a1 + 16)) < 0 || AAFieldKeySetRemoveKeySet(v4, *(v3 + 16)) < 0)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
  }

  return result;
}

uint64_t type metadata accessor for ArchiveHeader.FieldKeySet()
{
  result = type metadata singleton initialization cache for ArchiveHeader.FieldKeySet;
  if (!type metadata singleton initialization cache for ArchiveHeader.FieldKeySet)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Slice<ArchiveHeader.FieldKeySet> and conformance <> Slice<A>(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SliceVy12AppleArchive0C6HeaderC11FieldKeySetCGMd, &_ss5SliceVy12AppleArchive0C6HeaderC11FieldKeySetCGMR);
    lazy protocol witness table accessor for type ArchiveHeader.FieldKeySet and conformance ArchiveHeader.FieldKeySet(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ArchiveHeader.FieldKeySet and conformance ArchiveHeader.FieldKeySet(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ArchiveHeader.FieldKeySet();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t ArchiveEncryptionContext.__allocating_init(profile:compressionAlgorithm:compressionBlockSize:)(AEAProfile *a1, unsigned int *a2, unint64_t a3)
{
  v6 = swift_allocObject();
  ArchiveEncryptionContext.init(profile:compressionAlgorithm:compressionBlockSize:)(a1, a2, a3);
  return v6;
}

uint64_t ArchiveEncryptionContext.init(profile:compressionAlgorithm:compressionBlockSize:)(AEAProfile *a1, unsigned int *a2, unint64_t a3)
{
  v5 = *a2;
  v6 = AEAContextCreateWithProfile(*a1);
  if (v6)
  {
    v7 = v6;
    if ((AEAContextSetFieldUInt(v6, 3u, v5) & 0x80000000) == 0)
    {
      v8 = a3 >= 0xFFFFFFFF ? 0xFFFFFFFFLL : a3;
      if ((AEAContextSetFieldUInt(v7, 4u, v8) & 0x80000000) == 0)
      {
        *(v3 + 16) = v7;
        *(v3 + 24) = 1;
        return v3;
      }
    }

    AEAContextDestroy(v7);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t AEAContextSetCompressionBlockSize(AEAContext_impl *a1, unint64_t a2)
{
  if (a2 >= 0xFFFFFFFF)
  {
    v2 = 0xFFFFFFFFLL;
  }

  else
  {
    v2 = a2;
  }

  return AEAContextSetFieldUInt(a1, 4u, v2);
}

AAByteStream_impl *ArchiveEncryptionContext.__allocating_init(from:)(uint64_t a1)
{
  v2 = swift_allocObject();
  swift_beginAccess();
  result = *(a1 + 16);
  if (result)
  {
    v4 = AEAContextCreateWithEncryptedStream(result);

    if (v4)
    {
      *(v2 + 16) = v4;
      *(v2 + 24) = 1;
    }

    else
    {
      swift_deallocPartialClassInstance();
      return 0;
    }

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

AAByteStream_impl *ArchiveEncryptionContext.init(from:)(uint64_t a1)
{
  swift_beginAccess();
  result = *(a1 + 16);
  if (result)
  {
    v4 = AEAContextCreateWithEncryptedStream(result);

    if (v4)
    {
      *(v1 + 16) = v4;
      *(v1 + 24) = 1;
    }

    else
    {
      type metadata accessor for ArchiveEncryptionContext();
      swift_deallocPartialClassInstance();
      return 0;
    }

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for ArchiveEncryptionContext()
{
  result = type metadata singleton initialization cache for ArchiveEncryptionContext;
  if (!type metadata singleton initialization cache for ArchiveEncryptionContext)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ArchiveEncryptionContext.profile.getter@<X0>(_DWORD *a1@<X8>)
{
  result = AEAContextGetFieldUInt(*(v1 + 16), 0);
  *a1 = result;
  return result;
}

uint64_t ArchiveEncryptionContext.signatureMode.getter@<X0>(int *a1@<X8>)
{
  result = AEAContextGetFieldUInt(*(v1 + 16), 0);
  if (result > 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = dword_299A3CE3C[result & 7];
  }

  *a1 = v4;
  return result;
}

uint64_t ArchiveEncryptionContext.encryptionMode.getter@<X0>(int *a1@<X8>)
{
  result = AEAContextGetFieldUInt(*(v1 + 16), 0);
  if (result > 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = dword_299A3CE54[result & 7];
  }

  *a1 = v4;
  return result;
}

uint64_t key path setter for ArchiveEncryptionContext.paddingSize : ArchiveEncryptionContext(uint64_t *a1, uint64_t a2)
{
  if ((*a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  result = AEAContextSetPaddingSize(*(*a2 + 16), *a1);
  if (result)
  {
LABEL_5:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t ArchiveEncryptionContext.paddingSize.setter(uint64_t value)
{
  if ((value & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  result = AEAContextSetFieldUInt(*(v1 + 16), 1u, value);
  if (result)
  {
LABEL_5:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t ArchiveEncryptionContext.paddingSize.modify(uint64_t *a1)
{
  v3 = *(v1 + 16);
  a1[1] = v3;
  result = AEAContextGetFieldUInt(v3, 1u);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *a1 = result;
    return ArchiveEncryptionContext.paddingSize.modify;
  }

  return result;
}

uint64_t ArchiveEncryptionContext.paddingSize.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_5:
  result = AEAContextSetFieldUInt(*(a1 + 8), 1u, v2);
  if (result)
  {
LABEL_8:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t ArchiveEncryptionContext.checksumMode.getter@<X0>(_DWORD *a1@<X8>)
{
  result = AEAContextGetFieldUInt(*(v1 + 16), 2u);
  *a1 = result;
  return result;
}

uint64_t (*ArchiveEncryptionContext.checksumMode.modify(uint64_t a1))(uint64_t a1, int a2)
{
  v3 = *(v1 + 16);
  *a1 = v3;
  *(a1 + 8) = AEAContextGetFieldUInt(v3, 2u);
  return ArchiveEncryptionContext.checksumMode.modify;
}

uint64_t key path setter for ArchiveEncryptionContext.checksumMode : ArchiveEncryptionContext(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void))
{
  result = a5(*(*a2 + 16), *a1);
  if (result)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t ArchiveEncryptionContext.compressionAlgorithm.getter@<X0>(_DWORD *a1@<X8>)
{
  result = AEAContextGetFieldUInt(*(v1 + 16), 3u);
  *a1 = result;
  return result;
}

uint64_t ArchiveEncryptionContext.checksumMode.setter(unsigned int *a1, AEAContextField a2)
{
  result = AEAContextSetFieldUInt(*(v2 + 16), a2, *a1);
  if (result)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t (*ArchiveEncryptionContext.compressionAlgorithm.modify(uint64_t a1))(uint64_t a1, int a2)
{
  v3 = *(v1 + 16);
  *a1 = v3;
  *(a1 + 8) = AEAContextGetFieldUInt(v3, 3u);
  return ArchiveEncryptionContext.compressionAlgorithm.modify;
}

uint64_t ArchiveEncryptionContext.checksumMode.modify(uint64_t a1, int a2, AEAContextField field)
{
  result = AEAContextSetFieldUInt(*a1, field, *(a1 + 8));
  if (result)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t key path setter for ArchiveEncryptionContext.compressionBlockSize : ArchiveEncryptionContext(unint64_t *a1, uint64_t a2)
{
  result = AEAContextSetCompressionBlockSize(*(*a2 + 16), *a1);
  if (result)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t ArchiveEncryptionContext.compressionBlockSize.setter(unint64_t a1)
{
  v2 = *(v1 + 16);
  if (a1 >= 0xFFFFFFFF)
  {
    v3 = 0xFFFFFFFFLL;
  }

  else
  {
    v3 = a1;
  }

  result = AEAContextSetFieldUInt(*(v1 + 16), 4u, v3);
  if (result)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t (*ArchiveEncryptionContext.compressionBlockSize.modify(uint64_t *a1))(uint64_t a1)
{
  v3 = *(v1 + 16);
  a1[1] = v3;
  *a1 = AEAContextGetFieldUInt(v3, 4u);
  return ArchiveEncryptionContext.compressionBlockSize.modify;
}

uint64_t ArchiveEncryptionContext.compressionBlockSize.modify(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (*a1 >= 0xFFFFFFFFuLL)
  {
    v2 = 0xFFFFFFFFLL;
  }

  else
  {
    v2 = *a1;
  }

  result = AEAContextSetFieldUInt(*(a1 + 8), 4u, v2);
  if (result)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t ArchiveEncryptionContext.paddingSize.getter(AEAContextField field)
{
  result = AEAContextGetFieldUInt(*(v1 + 16), field);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t outlined init with copy of SymmetricKey?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void (*ArchiveEncryptionContext.symmetricKey.modify(uint64_t *a1))(void *a1, char a2)
{
  a1[1] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR) - 8) + 64);
  if (MEMORY[0x29EDCA1B0])
  {
    a1[2] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[2] = malloc(v3);
    v4 = malloc(v3);
  }

  v5 = v4;
  a1[3] = v4;
  v6 = ArchiveEncryptionContext._getBlob(field:representation:)(9u, 0);
  if (v6)
  {
    *a1 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15ContiguousArrayVys5UInt8VGMd, &_ss15ContiguousArrayVys5UInt8VGMR);
    lazy protocol witness table accessor for type ContiguousArray<UInt8> and conformance <A> ContiguousArray<A>(&lazy protocol witness table cache variable for type ContiguousArray<UInt8> and conformance <A> ContiguousArray<A>);
    SymmetricKey.init<A>(data:)();
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = type metadata accessor for SymmetricKey();
  (*(*(v8 - 8) + 56))(v5, v7, 1, v8);
  return ArchiveEncryptionContext.symmetricKey.modify;
}

uint64_t key path getter for ArchiveEncryptionContext.password : ArchiveEncryptionContext@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for String.Encoding();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4 - 8, v6);
  v7 = *a1;
  result = ArchiveEncryptionContext._getBlob(field:representation:)(0x13u, 0);
  if (result)
  {
    static String.Encoding.utf8.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15ContiguousArrayVys5UInt8VGMd, &_ss15ContiguousArrayVys5UInt8VGMR);
    lazy protocol witness table accessor for type ContiguousArray<UInt8> and conformance <A> ContiguousArray<A>(&lazy protocol witness table cache variable for type ContiguousArray<UInt8> and conformance ContiguousArray<A>);
    v9 = String.init<A>(bytes:encoding:)();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  *a2 = v9;
  a2[1] = v11;
  return result;
}

void key path setter for ArchiveEncryptionContext.password : ArchiveEncryptionContext(Swift::String_optional *a1, uint64_t *a2)
{
  v2 = *a2;
  ArchiveEncryptionContext._setBlob(field:string:)(AEA_CONTEXT_FIELD_PASSWORD, *a1);
  if (v3)
  {
    MEMORY[0x29C2A92B0](v3);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

uint64_t ArchiveEncryptionContext.password.setter(Swift::String_optional string)
{
  object = string.value._object;
  v2.value._countAndFlagsBits = string.value._countAndFlagsBits;
  v2.value._object = object;
  ArchiveEncryptionContext._setBlob(field:string:)(AEA_CONTEXT_FIELD_PASSWORD, v2);
  if (v3)
  {
    MEMORY[0x29C2A92B0](v3);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
  }

  return result;
}

uint64_t ArchiveEncryptionContext.password.getter()
{
  v0 = type metadata accessor for String.Encoding();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v0 - 8, v2);
  if (!ArchiveEncryptionContext._getBlob(field:representation:)(0x13u, 0))
  {
    return 0;
  }

  static String.Encoding.utf8.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15ContiguousArrayVys5UInt8VGMd, &_ss15ContiguousArrayVys5UInt8VGMR);
  lazy protocol witness table accessor for type ContiguousArray<UInt8> and conformance <A> ContiguousArray<A>(&lazy protocol witness table cache variable for type ContiguousArray<UInt8> and conformance ContiguousArray<A>);
  v3 = String.init<A>(bytes:encoding:)();

  return v3;
}

void (*ArchiveEncryptionContext.password.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x29EDCA1B0];
  if (MEMORY[0x29EDCA1B0])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = *(*(type metadata accessor for String.Encoding() - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v5[4] = v7;
  v8 = ArchiveEncryptionContext._getBlob(field:representation:)(0x13u, 0);
  if (v8)
  {
    v5[2] = v8;
    static String.Encoding.utf8.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15ContiguousArrayVys5UInt8VGMd, &_ss15ContiguousArrayVys5UInt8VGMR);
    lazy protocol witness table accessor for type ContiguousArray<UInt8> and conformance <A> ContiguousArray<A>(&lazy protocol witness table cache variable for type ContiguousArray<UInt8> and conformance ContiguousArray<A>);
    v9 = String.init<A>(bytes:encoding:)();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  *v5 = v9;
  v5[1] = v11;
  return ArchiveEncryptionContext.password.modify;
}

void ArchiveEncryptionContext.password.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = (*a1)[3];
  if ((a2 & 1) == 0)
  {
    ArchiveEncryptionContext._setBlob(field:string:)(AEA_CONTEXT_FIELD_PASSWORD, **a1);
    if (!v8)
    {
      v9 = v2[4];
      goto LABEL_6;
    }

LABEL_9:
    MEMORY[0x29C2A92B0](v8);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v6 = (*a1)[1];

  v7.value._countAndFlagsBits = v3;
  v7.value._object = v4;
  ArchiveEncryptionContext._setBlob(field:string:)(AEA_CONTEXT_FIELD_PASSWORD, v7);
  if (v8)
  {
    goto LABEL_9;
  }

  v9 = v2[4];

  v10 = v2[1];
LABEL_6:

  free(v9);

  free(v2);
}

uint64_t ArchiveEncryptionContext.generateSymmetricKey()@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  v4 = *(*(v3 - 8) + 64);
  v6 = MEMORY[0x2A1C7C4A8](v3 - 8, v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = v19 - v10;
  if (AEAContextGenerateFieldBlob(*(v1 + 16), 9u) < 0)
  {
    lazy protocol witness table accessor for type ArchiveError and conformance ArchiveError();
    swift_allocError();
    *v16 = 1;
    return swift_willThrow();
  }

  else
  {
    v12 = ArchiveEncryptionContext._getBlob(field:representation:)(9u, 0);
    if (v12)
    {
      v19[1] = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15ContiguousArrayVys5UInt8VGMd, &_ss15ContiguousArrayVys5UInt8VGMR);
      lazy protocol witness table accessor for type ContiguousArray<UInt8> and conformance <A> ContiguousArray<A>(&lazy protocol witness table cache variable for type ContiguousArray<UInt8> and conformance <A> ContiguousArray<A>);
      SymmetricKey.init<A>(data:)();
      v13 = type metadata accessor for SymmetricKey();
      v14 = *(v13 - 8);
      (*(v14 + 56))(v11, 0, 1, v13);
      outlined init with copy of SymmetricKey?(v11, v8);
      result = (*(v14 + 48))(v8, 1, v13);
      if (result == 1)
      {
        __break(1u);
      }

      else
      {
        outlined destroy of SymmetricKey?(v11);
        return (*(v14 + 32))(a1, v8, v13);
      }
    }

    else
    {
      v17 = type metadata accessor for SymmetricKey();
      (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
      lazy protocol witness table accessor for type ArchiveError and conformance ArchiveError();
      swift_allocError();
      *v18 = 1;
      swift_willThrow();
      return outlined destroy of SymmetricKey?(v11);
    }
  }

  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ArchiveEncryptionContext.generatePassword()()
{
  v1 = type metadata accessor for String.Encoding();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v1 - 8, v3);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (AEAContextGenerateFieldBlob(*(v0 + 16), 0x13u) < 0)
  {
    goto LABEL_4;
  }

  v6 = ArchiveEncryptionContext._getBlob(field:representation:)(0x13u, 0);
  if (!v6 || (v12[1] = v6, static String.Encoding.utf8.getter(), __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15ContiguousArrayVys5UInt8VGMd, &_ss15ContiguousArrayVys5UInt8VGMR), lazy protocol witness table accessor for type ContiguousArray<UInt8> and conformance <A> ContiguousArray<A>(&lazy protocol witness table cache variable for type ContiguousArray<UInt8> and conformance ContiguousArray<A>), v0 = String.init<A>(bytes:encoding:)(), v5 = v7, , !v5))
  {
LABEL_4:
    lazy protocol witness table accessor for type ArchiveError and conformance ArchiveError();
    swift_allocError();
    *v8 = 1;
    swift_willThrow();
  }

  v9 = v0;
  v10 = v5;
  result._object = v10;
  result._countAndFlagsBits = v9;
  return result;
}

uint64_t ArchiveEncryptionContext.setSymmetricKey(_:)(uint64_t a1)
{
  v2 = type metadata accessor for SymmetricKey();
  v6 = v2;
  v7 = &protocol witness table for SymmetricKey;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v5);
  (*(*(v2 - 8) + 16))(boxed_opaque_existential_1, a1, v2);
  __swift_project_boxed_opaque_existential_1(v5, v6);
  SymmetricKey.withUnsafeBytes<A>(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v5);
}

uint64_t ArchiveEncryptionContext.setSigningPublicKey(_:)(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t), AEAContextField a4)
{
  v7 = v4;
  v9 = a2(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x2A1C7C4A8](v9, v12);
  v14 = &v20 - v13;
  (*(v10 + 16))(&v20 - v13, a1, v9);

  v16 = a3(v15);
  v18 = v17;
  specialized Data._Representation.withUnsafeBytes<A>(_:)(v16, v17, v7, a4, 1u);
  outlined consume of Data._Representation(v16, v18);
  return (*(v10 + 8))(v14, v9);
}

uint64_t key path getter for ArchiveEncryptionContext.authData : ArchiveEncryptionContext@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = ArchiveEncryptionContext._getBlob(field:representation:)(5u, 0);
  if (result)
  {
    v5 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCs15ContiguousArrayVyAEG_Tt0g5Tf4g_n(result);
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xF000000000000000;
  }

  *a2 = v5;
  a2[1] = v7;
  return result;
}

uint64_t ArchiveEncryptionContext.authData.setter(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    result = AEAContextSetFieldBlob(*(v2 + 16), 5u, 0, 0, 0);
    if ((result & 0x80000000) != 0)
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  else
  {

    specialized Data._Representation.withUnsafeBytes<A>(_:)(a1, a2, v2, 5u, 0);
    return outlined consume of Data?(a1, a2);
  }

  return result;
}

uint64_t (*ArchiveEncryptionContext.authData.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = ArchiveEncryptionContext._getBlob(field:representation:)(5u, 0);
  if (v3)
  {
    v4 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCs15ContiguousArrayVyAEG_Tt0g5Tf4g_n(v3);
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0xF000000000000000;
  }

  *a1 = v4;
  a1[1] = v6;
  return ArchiveEncryptionContext.authData.modify;
}

uint64_t ArchiveEncryptionContext.authData.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  if ((a2 & 1) == 0)
  {
    return ArchiveEncryptionContext.authData.setter(*a1, v3);
  }

  outlined copy of Data?(*a1, v3);
  ArchiveEncryptionContext.authData.setter(v2, v3);

  return outlined consume of Data?(v2, v3);
}

uint64_t ArchiveEncryptionContext.authData.getter(AEAContextField a1)
{
  v1 = ArchiveEncryptionContext._getBlob(field:representation:)(a1, 0);
  if (!v1)
  {
    return 0;
  }

  v2 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCs15ContiguousArrayVyAEG_Tt0g5Tf4g_n(v1);

  return v2;
}

uint64_t key path getter for ArchiveEncryptionContext.symmetricKey : ArchiveEncryptionContext@<X0>(AEAContextField field@<W3>, uint64_t *a2@<X0>, uint64_t a3@<X8>)
{
  v4 = *a2;
  if (ArchiveEncryptionContext._getBlob(field:representation:)(field, 0))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15ContiguousArrayVys5UInt8VGMd, &_ss15ContiguousArrayVys5UInt8VGMR);
    lazy protocol witness table accessor for type ContiguousArray<UInt8> and conformance <A> ContiguousArray<A>(&lazy protocol witness table cache variable for type ContiguousArray<UInt8> and conformance <A> ContiguousArray<A>);
    SymmetricKey.init<A>(data:)();
    v5 = type metadata accessor for SymmetricKey();
    return (*(*(v5 - 8) + 56))(a3, 0, 1, v5);
  }

  else
  {
    v7 = type metadata accessor for SymmetricKey();
    v8 = *(*(v7 - 8) + 56);

    return v8(a3, 1, 1, v7);
  }
}

uint64_t key path setter for ArchiveEncryptionContext.symmetricKey : ArchiveEncryptionContext(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v8 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8]();
  v10 = &v13 - v9;
  outlined init with copy of SymmetricKey?(a1, &v13 - v9);
  v11 = *a2;
  return a5(v10);
}

uint64_t ArchiveEncryptionContext.symmetricKey.getter@<X0>(AEAContextField a1@<W0>, uint64_t a2@<X8>)
{
  if (ArchiveEncryptionContext._getBlob(field:representation:)(a1, 0))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15ContiguousArrayVys5UInt8VGMd, &_ss15ContiguousArrayVys5UInt8VGMR);
    lazy protocol witness table accessor for type ContiguousArray<UInt8> and conformance <A> ContiguousArray<A>(&lazy protocol witness table cache variable for type ContiguousArray<UInt8> and conformance <A> ContiguousArray<A>);
    SymmetricKey.init<A>(data:)();
    v3 = type metadata accessor for SymmetricKey();
    return (*(*(v3 - 8) + 56))(a2, 0, 1, v3);
  }

  else
  {
    v5 = type metadata accessor for SymmetricKey();
    v6 = *(*(v5 - 8) + 56);

    return v6(a2, 1, 1, v5);
  }
}

void (*ArchiveEncryptionContext.signatureEncryptionKey.modify(uint64_t *a1))(void *a1, char a2)
{
  a1[1] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR) - 8) + 64);
  if (MEMORY[0x29EDCA1B0])
  {
    a1[2] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[2] = malloc(v3);
    v4 = malloc(v3);
  }

  v5 = v4;
  a1[3] = v4;
  v6 = ArchiveEncryptionContext._getBlob(field:representation:)(0xCu, 0);
  if (v6)
  {
    *a1 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15ContiguousArrayVys5UInt8VGMd, &_ss15ContiguousArrayVys5UInt8VGMR);
    lazy protocol witness table accessor for type ContiguousArray<UInt8> and conformance <A> ContiguousArray<A>(&lazy protocol witness table cache variable for type ContiguousArray<UInt8> and conformance <A> ContiguousArray<A>);
    SymmetricKey.init<A>(data:)();
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = type metadata accessor for SymmetricKey();
  (*(*(v8 - 8) + 56))(v5, v7, 1, v8);
  return ArchiveEncryptionContext.signatureEncryptionKey.modify;
}

void ArchiveEncryptionContext.symmetricKey.modify(void *a1, char a2, void (*a3)(void *))
{
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[1];
  if (a2)
  {
    outlined init with copy of SymmetricKey?(v5, v4);
    a3(v4);
    outlined destroy of SymmetricKey?(v5);
  }

  else
  {
    a3(v5);
  }

  free(v5);

  free(v4);
}

uint64_t ArchiveEncryptionContext.symmetricKey.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8]();
  v7 = &v13[-1] - v6;
  outlined init with copy of SymmetricKey?(a1, &v13[-1] - v6);
  v8 = type metadata accessor for SymmetricKey();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    __break(1u);
    MEMORY[0x29C2A92B0](a3);
    __swift_destroy_boxed_opaque_existential_1(v13);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v14 = v8;
    v15 = &protocol witness table for SymmetricKey;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
    (*(v9 + 32))(boxed_opaque_existential_1, v7, v8);
    __swift_project_boxed_opaque_existential_1(v13, v14);
    MEMORY[0x2A1C7C4A8]();
    SymmetricKey.withUnsafeBytes<A>(_:)();
    outlined destroy of SymmetricKey?(a1);
    return __swift_destroy_boxed_opaque_existential_1(v13);
  }

  return result;
}

void (*ArchiveEncryptionContext.mainKey.modify(uint64_t *a1))(void *a1, char a2)
{
  a1[1] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR) - 8) + 64);
  if (MEMORY[0x29EDCA1B0])
  {
    a1[2] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[2] = malloc(v3);
    v4 = malloc(v3);
  }

  v5 = v4;
  a1[3] = v4;
  v6 = ArchiveEncryptionContext._getBlob(field:representation:)(6u, 0);
  if (v6)
  {
    *a1 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15ContiguousArrayVys5UInt8VGMd, &_ss15ContiguousArrayVys5UInt8VGMR);
    lazy protocol witness table accessor for type ContiguousArray<UInt8> and conformance <A> ContiguousArray<A>(&lazy protocol witness table cache variable for type ContiguousArray<UInt8> and conformance <A> ContiguousArray<A>);
    SymmetricKey.init<A>(data:)();
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = type metadata accessor for SymmetricKey();
  (*(*(v8 - 8) + 56))(v5, v7, 1, v8);
  return ArchiveEncryptionContext.mainKey.modify;
}

uint64_t ArchiveEncryptionContext._getBlob(field:representation:)(AEAContextField field, AEAContextFieldRepresentation representation)
{
  buf_size[1] = *MEMORY[0x29EDCA608];
  buf_size[0] = 0;
  v5 = *(v2 + 16);
  if ((AEAContextGetFieldBlob(v5, field, representation, 0, 0, buf_size) & 0x80000000) == 0)
  {
    v6 = buf_size[0];
    if (!buf_size[0])
    {
      v7 = 0;
      goto LABEL_8;
    }

    if ((buf_size[0] & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_10;
    }

    v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v7 + 16) = v6;
    if ((AEAContextGetFieldBlob(v5, field, representation, buf_size[0], (v7 + 32), 0) & 0x80000000) == 0)
    {
      if (v6 >= buf_size[0])
      {
        *(v7 + 16) = buf_size[0];

LABEL_8:
        v8 = *MEMORY[0x29EDCA608];
        return v7;
      }

LABEL_10:
      __break(1u);
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t outlined destroy of SymmetricKey?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SymmetricKeyVSgMd, &_s9CryptoKit12SymmetricKeyVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t closure #1 in ArchiveEncryptionContext._setBlob(field:key:)(uint64_t buf, uint64_t a2, uint64_t a3, AEAContextField field, AEAContextFieldRepresentation representation)
{
  if (buf)
  {
    buf = AEAContextSetFieldBlob(*(a3 + 16), field, representation, buf, a2 - buf);
    if ((buf & 0x80000000) != 0)
    {
      lazy protocol witness table accessor for type ArchiveError and conformance ArchiveError();
      swift_allocError();
      *v5 = 1;
      return swift_willThrow();
    }
  }

  else
  {
    __break(1u);
  }

  return buf;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ArchiveEncryptionContext._setBlob(field:string:)(AEAContextFields field, Swift::String_optional string)
{
  if (string.value._object)
  {
    object = string.value._object;
    countAndFlagsBits = string.value._countAndFlagsBits;

    if ((object & 0x1000000000000000) != 0)
    {
      countAndFlagsBits = static String._copying(_:)();
      v11 = v10;

      object = v11;
      if ((v11 & 0x2000000000000000) == 0)
      {
LABEL_4:
        if ((countAndFlagsBits & 0x1000000000000000) != 0)
        {
          v6 = ((object & 0xFFFFFFFFFFFFFFFLL) + 32);
          v7 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
          v8 = *(v2 + 16);
        }

        else
        {
          v13 = _StringObject.sharedUTF8.getter();
          if (!v13)
          {
            __break(1u);
            return;
          }

          v6 = v13;
          v7 = v14;
          v8 = *(v2 + 16);
        }

        goto LABEL_10;
      }
    }

    else if ((object & 0x2000000000000000) == 0)
    {
      goto LABEL_4;
    }

    v7 = HIBYTE(object) & 0xF;
    v15[0] = countAndFlagsBits;
    v15[1] = object & 0xFFFFFFFFFFFFFFLL;
    v8 = *(v2 + 16);
    v6 = v15;
LABEL_10:
    if (AEAContextSetFieldBlob(v8, field, 0, v6, v7) < 0)
    {
      lazy protocol witness table accessor for type ArchiveError and conformance ArchiveError();
      swift_allocError();
      *v12 = 1;
      swift_willThrow();
    }

    return;
  }

  if (AEAContextSetFieldBlob(*(v2 + 16), field, 0, 0, 0) < 0)
  {
    lazy protocol witness table accessor for type ArchiveError and conformance ArchiveError();
    swift_allocError();
    *v9 = 1;
    swift_willThrow();
  }
}

uint64_t lazy protocol witness table accessor for type ContiguousArray<UInt8> and conformance <A> ContiguousArray<A>(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss15ContiguousArrayVys5UInt8VGMd, &_ss15ContiguousArrayVys5UInt8VGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t ArchiveEncryptionContext.deinit()
{
  if (*(v0 + 24) == 1)
  {
    AEAContextDestroy(*(v0 + 16));
  }

  return v0;
}

uint64_t ArchiveEncryptionContext.__deallocating_deinit()
{
  if (*(v0 + 24) == 1)
  {
    AEAContextDestroy(*(v0 + 16));
  }

  return swift_deallocClassInstance();
}

uint64_t static ArchiveEncryptionContext.sign(encryptedStream:encryptionContext:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = *(a1 + 16);
  if (result)
  {
    result = AEAStreamSign(result, *(a2 + 16));
    if ((result & 0x80000000) != 0)
    {
      lazy protocol witness table accessor for type ArchiveError and conformance ArchiveError();
      swift_allocError();
      *v5 = 1;
      return swift_willThrow();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static String._copying(_:)()
{
  v0 = String.subscript.getter();
  v4 = static String._copying(_:)(v0, v1, v2, v3);

  return v4;
}

uint64_t static String._copying(_:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = Substring.UTF8View.distance(from:to:)();
  if (!v9)
  {
    v11 = MEMORY[0x29EDCA190];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v9, 0);
  v12 = specialized Sequence._copySequenceContents(initializing:)(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = static String._uncheckedFromUTF8(_:)();

    return v14;
  }

  __break(1u);
LABEL_11:
  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
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
    return MEMORY[0x29EDCA190];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unint64_t specialized Sequence._copySequenceContents(initializing:)(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
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
    v5 = MEMORY[0x29C2A89B0](15, a1 >> 16);
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

uint64_t outlined consume of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t specialized Data._Representation.withUnsafeBytes<A>(_:)(uint64_t a1, unint64_t a2, uint64_t a3, AEAContextField field, AEAContextFieldRepresentation representation)
{
  v27 = *MEMORY[0x29EDCA608];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      *buf = a1;
      *&buf[8] = a2;
      buf[10] = BYTE2(a2);
      buf[11] = BYTE3(a2);
      buf[12] = BYTE4(a2);
      buf[13] = BYTE5(a2);
      if (AEAContextSetFieldBlob(*(a3 + 16), field, representation, buf, BYTE6(a2)) < 0)
      {
        goto LABEL_25;
      }

      goto LABEL_26;
    }

    v16 = a1;
    v17 = (a1 >> 32) - a1;
    if (a1 >> 32 >= a1)
    {
      representationa = representation;
      v10 = __DataStorage._bytes.getter();
      if (!v10)
      {
        goto LABEL_17;
      }

      v18 = __DataStorage._offset.getter();
      if (!__OFSUB__(v16, v18))
      {
        v10 += v16 - v18;
LABEL_17:
        v19 = MEMORY[0x29C2A8800]();
        if (v19 >= v17)
        {
          v15 = v17;
        }

        else
        {
          v15 = v19;
        }

        goto LABEL_20;
      }

LABEL_30:
      __break(1u);
    }

    __break(1u);
    goto LABEL_28;
  }

  if (v7 == 2)
  {
    representationa = representation;
    v9 = *(a1 + 16);
    v8 = *(a1 + 24);
    v10 = __DataStorage._bytes.getter();
    if (v10)
    {
      v11 = __DataStorage._offset.getter();
      if (__OFSUB__(v9, v11))
      {
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      v10 += v9 - v11;
    }

    v12 = __OFSUB__(v8, v9);
    v13 = v8 - v9;
    if (!v12)
    {
      v14 = MEMORY[0x29C2A8800]();
      if (v14 >= v13)
      {
        v15 = v13;
      }

      else
      {
        v15 = v14;
      }

LABEL_20:
      v20 = v15 + v10;
      if (v10)
      {
        v21 = v20;
      }

      else
      {
        v21 = 0;
      }

      closure #1 in ArchiveEncryptionContext._setBlob(field:key:)(v10, v21, a3, field, representationa);
      goto LABEL_26;
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  memset(buf, 0, 14);
  if (AEAContextSetFieldBlob(*(a3 + 16), field, representation, buf, 0) < 0)
  {
LABEL_25:
    lazy protocol witness table accessor for type ArchiveError and conformance ArchiveError();
    swift_allocError();
    *v22 = 1;
    swift_willThrow();
  }

LABEL_26:

  v24 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t outlined consume of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(a1, a2);
  }

  return a1;
}

_BYTE *closure #1 in Data.init<A>(_:)@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = specialized Data.InlineData.init(_:)(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = specialized Data.LargeSlice.init(_:)(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = specialized Data.InlineSlice.init(_:)(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t specialized Data.InlineData.init(_:)(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t specialized Data.LargeSlice.init(_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = type metadata accessor for __DataStorage();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t specialized Data.InlineSlice.init(_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = type metadata accessor for __DataStorage();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCs15ContiguousArrayVyAEG_Tt0g5Tf4g_n(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15ContiguousArrayVys5UInt8VGMd, &_ss15ContiguousArrayVys5UInt8VGMR);
  v10 = lazy protocol witness table accessor for type ContiguousArray<UInt8> and conformance <A> ContiguousArray<A>(&lazy protocol witness table cache variable for type ContiguousArray<UInt8> and conformance <A> ContiguousArray<A>);
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  closure #1 in Data.init<A>(_:)(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v5;
}

uint64_t outlined copy of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined copy of Data._Representation(a1, a2);
  }

  return a1;
}

uint64_t outlined copy of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t static ArchiveByteStream.encryptionStream(writingTo:encryptionContext:flags:threadCount:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(void))
{
  v9 = *a3;
  swift_beginAccess();
  result = *(a1 + 16);
  if (!result)
  {
    goto LABEL_9;
  }

  if (a4 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a4 > 0x7FFFFFFF)
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  v11 = *(a2 + 16);
  result = a5();
  if (result)
  {
    v12 = result;
    type metadata accessor for ArchiveByteStream();
    v13 = swift_allocObject();
    *(v13 + 16) = 0;
    swift_beginAccess();
    result = v13;
    *(v13 + 16) = v12;
    *(v13 + 24) = 1;
  }

  return result;
}

AAByteStream_impl *static ArchiveByteStream.randomAccessDecryptionStream(readingFrom:encryptionContext:allocationLimit:flags:threadCount:)(AAByteStream_impl *result, uint64_t a2, int64_t a3, AAFlagSet *a4, uint64_t a5)
{
  if (a3 < -1)
  {
    goto LABEL_10;
  }

  v8 = result;
  v9 = *a4;
  swift_beginAccess();
  result = *(v8 + 2);
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  if (a5 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (a5 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = AEADecryptionRandomAccessInputStreamOpen(result, *(a2 + 16), a3, v9, a5);
  if (result)
  {
    v10 = result;
    type metadata accessor for ArchiveByteStream();
    v11 = swift_allocObject();
    *(v11 + 16) = 0;
    swift_beginAccess();
    result = v11;
    *(v11 + 16) = v10;
    *(v11 + 24) = 1;
  }

  return result;
}

uint64_t ArchiveByteStream.close(updatingContext:)(uint64_t a1)
{
  swift_beginAccess();
  result = *(v1 + 16);
  if (result)
  {
    result = AEAEncryptionOutputStreamCloseAndUpdateContext(result, *(a1 + 16));
    *(v1 + 16) = 0;
    if (result)
    {
      lazy protocol witness table accessor for type ArchiveError and conformance ArchiveError();
      swift_allocError();
      *v4 = 0;
      return swift_willThrow();
    }
  }

  return result;
}

unint64_t ArchiveEncryptionContext.Profile.description.getter()
{
  v1 = *v0;
  v2 = 4144959;
  if (*v0 > 2)
  {
    if (v1 == 5)
    {
      v2 = 0xD000000000000025;
    }

    if (v1 == 4)
    {
      v2 = 0xD00000000000002FLL;
    }

    if (v1 == 3)
    {
      return 0xD000000000000029;
    }

    else
    {
      return v2;
    }
  }

  else
  {
    if (v1 == 2)
    {
      v2 = 0xD00000000000002ELL;
    }

    if (v1 == 1)
    {
      v2 = 0xD000000000000028;
    }

    if (v1)
    {
      return v2;
    }

    else
    {
      return 0xD000000000000022;
    }
  }
}

unint64_t lazy protocol witness table accessor for type ArchiveEncryptionContext.Profile and conformance ArchiveEncryptionContext.Profile()
{
  result = lazy protocol witness table cache variable for type ArchiveEncryptionContext.Profile and conformance ArchiveEncryptionContext.Profile;
  if (!lazy protocol witness table cache variable for type ArchiveEncryptionContext.Profile and conformance ArchiveEncryptionContext.Profile)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArchiveEncryptionContext.Profile and conformance ArchiveEncryptionContext.Profile);
  }

  return result;
}