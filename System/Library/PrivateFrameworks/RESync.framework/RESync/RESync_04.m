BOOL re::snapshot::DecoderOPACK::field<1,unsigned char>(re::snapshot::DecoderOPACK *a1, _BYTE *a2)
{
  v4 = re::snapshot::DecoderOPACK::beginField<1>(a1);
  if (v4)
  {
    *a2 = re::snapshot::DecoderOPACK::readInteger(a1, 0);
    re::snapshot::DecoderOPACK::endField(a1);
  }

  return v4;
}

BOOL re::snapshot::DecoderOPACK::field<2,unsigned long long>(re::snapshot::DecoderOPACK *a1, void *a2)
{
  v4 = re::snapshot::DecoderOPACK::beginField<2>(a1);
  if (v4)
  {
    *a2 = re::snapshot::DecoderOPACK::readInteger(a1, 0);
    re::snapshot::DecoderOPACK::endField(a1);
  }

  return v4;
}

BOOL re::snapshot::DecoderOPACK::field<2,unsigned short>(re::snapshot::DecoderOPACK *a1, _WORD *a2)
{
  v4 = re::snapshot::DecoderOPACK::beginField<2>(a1);
  if (v4)
  {
    *a2 = re::snapshot::DecoderOPACK::readInteger(a1, 0);
    re::snapshot::DecoderOPACK::endField(a1);
  }

  return v4;
}

BOOL re::snapshot::DecoderOPACK::field<3,re::SyncOwnershipInfo>(re *a1, re::snapshot::DecoderOPACK *a2)
{
  v4 = re::snapshot::DecoderOPACK::beginField<3>(a1);
  if (v4)
  {
    if (re::snapshot::DecoderOPACK::beginObject(a1, 0))
    {
      re::snapshotMapFields(a1, a2, v5);
      re::snapshot::DecoderOPACK::endObject(a1, 0);
    }

    re::snapshot::DecoderOPACK::endField(a1);
  }

  return v4;
}

BOOL re::snapshot::DecoderOPACK::field<6,unsigned long long>(re::snapshot::DecoderOPACK *a1, void *a2)
{
  v4 = re::snapshot::DecoderOPACK::beginField<6>(a1);
  if (v4)
  {
    *a2 = re::snapshot::DecoderOPACK::readInteger(a1, 0);
    re::snapshot::DecoderOPACK::endField(a1);
  }

  return v4;
}

BOOL re::snapshot::DecoderOPACK::field<8,unsigned long long>(re::snapshot::DecoderOPACK *a1, void *a2)
{
  v4 = re::snapshot::DecoderOPACK::beginField<8>(a1);
  if (v4)
  {
    *a2 = re::snapshot::DecoderOPACK::readInteger(a1, 0);
    re::snapshot::DecoderOPACK::endField(a1);
  }

  return v4;
}

BOOL re::snapshot::DecoderOPACK::field<9,unsigned long long>(re::snapshot::DecoderOPACK *a1, void *a2)
{
  v4 = re::snapshot::DecoderOPACK::beginField<9>(a1);
  if (v4)
  {
    *a2 = re::snapshot::DecoderOPACK::readInteger(a1, 0);
    re::snapshot::DecoderOPACK::endField(a1);
  }

  return v4;
}

BOOL re::snapshot::DecoderOPACK::field<11,re::Slice<unsigned char>>(uint64_t a1, uint64_t *a2)
{
  v4 = re::snapshot::DecoderOPACK::beginField<11>(a1);
  if (v4)
  {
    v9 = 0;
    if (re::snapshot::DecoderOPACK::beginData(a1, &v9, 0))
    {
      v8 = *(a1 + 8);
      v5 = v9;
      *a2 = re::Slice<unsigned char>::range(&v8, *(a1 + 24) - v8, *(a1 + 24) - v8 + v9);
      a2[1] = v6;
      re::snapshot::BufferDecoder::skipData(a1, v5);
    }

    re::snapshot::DecoderOPACK::endField(a1);
  }

  return v4;
}

__n128 re::DynamicArray<re::SyncHistoryResetRequest>::add(uint64_t a1, __n128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v5 >= v4)
  {
    v6 = v5 + 1;
    if (v4 < v5 + 1)
    {
      if (*a1)
      {
        v7 = 2 * v4;
        v8 = v4 == 0;
        v9 = 8;
        if (!v8)
        {
          v9 = v7;
        }

        if (v9 <= v6)
        {
          v10 = v6;
        }

        else
        {
          v10 = v9;
        }

        re::DynamicArray<re::DataArray<re::PerFrameAllocatorImpl>::ElementBlock>::setCapacity(a1, v10);
      }

      else
      {
        re::DynamicArray<re::DataArray<re::PerFrameAllocatorImpl>::ElementBlock>::setCapacity(a1, v6);
        ++*(a1 + 24);
      }
    }

    v5 = *(a1 + 16);
  }

  result = *a2;
  *(*(a1 + 32) + 16 * v5) = *a2;
  ++*(a1 + 16);
  ++*(a1 + 24);
  return result;
}

__n128 re::HashTable<re::SharedPtr<re::SyncObject>,re::Pair<unsigned long long,unsigned long long,true>,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::addOrReplace(uint64_t a1, uint64_t *a2, __n128 *a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<re::SharedPtr<re::SyncObject>,re::Pair<unsigned long long,unsigned long long,true>,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::findEntry<re::SharedPtr<re::SyncObject>>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v9);
  v7 = HIDWORD(v10);
  if (HIDWORD(v10) == 0x7FFFFFFF)
  {
    re::HashTable<re::SharedPtr<re::SyncObject>,re::Pair<unsigned long long,unsigned long long,true>,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::addInternal<re::SharedPtr<re::SyncObject> const&,re::Pair<unsigned long long,unsigned long long,true>>(a1, &v9, a2, a3);
  }

  else
  {
    ++*(a1 + 40);
    result = *a3;
    *(*(a1 + 16) + 40 * v7 + 16) = *a3;
  }

  return result;
}

uint64_t re::SyncUnpacker::skipObjectState(re::SyncUnpacker *this, const re::SyncObjectTypeInfo *a2, unint64_t a3, unsigned __int8 a4, re::BitReader *a5)
{
  v8 = 0;
  v9 = 0;
  re::BiasedVLQ::read(&v8, this, &v9);
  v6 = *(this + 4) + v9 - (*(this + 5) != 0);

  return re::BitReader::seekTo(this, v6);
}

BOOL re::snapshot::DecoderOPACK::beginField<1>(uint64_t a1)
{
  Integer = *(a1 + 40);
  if (Integer <= 0)
  {
    while (1)
    {
      v5 = *(a1 + 24);
      if (v5 >= *(a1 + 32))
      {
        v4 = 0;
      }

      else
      {
        *(a1 + 24) = v5 + 1;
        v4 = *v5;
      }

      re::snapshot::DecoderOPACK::skip(a1, v4);
      v6 = *(a1 + 24);
      if (v6 >= *(a1 + 32))
      {
        break;
      }

      v3 = *v6;
      if (v3 == 3)
      {
        break;
      }

      if ((v3 - 7) > 0x28)
      {
        Integer = re::snapshot::DecoderOPACK::readInteger(a1, 0x7FFFFFFFLL);
      }

      else
      {
        *(a1 + 24) = v6 + 1;
        Integer = v3 - 8;
      }

      *(a1 + 40) = Integer;
      if (Integer >= 1)
      {
        return Integer == 1;
      }
    }

    Integer = 0x7FFFFFFF;
    *(a1 + 40) = 0x7FFFFFFF;
  }

  return Integer == 1;
}

uint64_t re::snapshot::DecoderOPACK::endField(re::snapshot::DecoderOPACK *this)
{
  v2 = *(this + 3);
  if (v2 >= *(this + 4) || (v3 = *v2, v3 == 3))
  {
    result = 0x7FFFFFFFLL;
  }

  else if ((v3 - 7) > 0x28)
  {
    result = re::snapshot::DecoderOPACK::readInteger(this, 0x7FFFFFFFLL);
  }

  else
  {
    *(this + 3) = v2 + 1;
    result = (v3 - 8);
  }

  *(this + 10) = result;
  return result;
}

BOOL re::snapshot::DecoderOPACK::beginField<2>(uint64_t a1)
{
  Integer = *(a1 + 40);
  if (Integer <= 1)
  {
    while (1)
    {
      v3 = *(a1 + 24);
      if (v3 >= *(a1 + 32))
      {
        v4 = 0;
      }

      else
      {
        *(a1 + 24) = v3 + 1;
        v4 = *v3;
      }

      re::snapshot::DecoderOPACK::skip(a1, v4);
      v5 = *(a1 + 24);
      if (v5 >= *(a1 + 32))
      {
        break;
      }

      v6 = *v5;
      if (v6 == 3)
      {
        break;
      }

      if ((v6 - 7) > 0x28)
      {
        Integer = re::snapshot::DecoderOPACK::readInteger(a1, 0x7FFFFFFFLL);
      }

      else
      {
        *(a1 + 24) = v5 + 1;
        Integer = v6 - 8;
      }

      *(a1 + 40) = Integer;
      if (Integer >= 2)
      {
        return Integer == 2;
      }
    }

    Integer = 0x7FFFFFFF;
    *(a1 + 40) = 0x7FFFFFFF;
  }

  return Integer == 2;
}

BOOL re::snapshot::DecoderOPACK::beginField<3>(uint64_t a1)
{
  Integer = *(a1 + 40);
  if (Integer <= 2)
  {
    while (1)
    {
      v3 = *(a1 + 24);
      if (v3 >= *(a1 + 32))
      {
        v4 = 0;
      }

      else
      {
        *(a1 + 24) = v3 + 1;
        v4 = *v3;
      }

      re::snapshot::DecoderOPACK::skip(a1, v4);
      v5 = *(a1 + 24);
      if (v5 >= *(a1 + 32))
      {
        break;
      }

      v6 = *v5;
      if (v6 == 3)
      {
        break;
      }

      if ((v6 - 7) > 0x28)
      {
        Integer = re::snapshot::DecoderOPACK::readInteger(a1, 0x7FFFFFFFLL);
      }

      else
      {
        *(a1 + 24) = v5 + 1;
        Integer = v6 - 8;
      }

      *(a1 + 40) = Integer;
      if (Integer >= 3)
      {
        return Integer == 3;
      }
    }

    Integer = 0x7FFFFFFF;
    *(a1 + 40) = 0x7FFFFFFF;
  }

  return Integer == 3;
}

BOOL re::snapshot::DecoderOPACK::beginField<5>(uint64_t a1)
{
  Integer = *(a1 + 40);
  if (Integer <= 4)
  {
    while (1)
    {
      v3 = *(a1 + 24);
      if (v3 >= *(a1 + 32))
      {
        v4 = 0;
      }

      else
      {
        *(a1 + 24) = v3 + 1;
        v4 = *v3;
      }

      re::snapshot::DecoderOPACK::skip(a1, v4);
      v5 = *(a1 + 24);
      if (v5 >= *(a1 + 32))
      {
        break;
      }

      v6 = *v5;
      if (v6 == 3)
      {
        break;
      }

      if ((v6 - 7) > 0x28)
      {
        Integer = re::snapshot::DecoderOPACK::readInteger(a1, 0x7FFFFFFFLL);
      }

      else
      {
        *(a1 + 24) = v5 + 1;
        Integer = v6 - 8;
      }

      *(a1 + 40) = Integer;
      if (Integer >= 5)
      {
        return Integer == 5;
      }
    }

    Integer = 0x7FFFFFFF;
    *(a1 + 40) = 0x7FFFFFFF;
  }

  return Integer == 5;
}

BOOL re::snapshot::DecoderOPACK::beginField<6>(uint64_t a1)
{
  Integer = *(a1 + 40);
  if (Integer <= 5)
  {
    while (1)
    {
      v3 = *(a1 + 24);
      if (v3 >= *(a1 + 32))
      {
        v4 = 0;
      }

      else
      {
        *(a1 + 24) = v3 + 1;
        v4 = *v3;
      }

      re::snapshot::DecoderOPACK::skip(a1, v4);
      v5 = *(a1 + 24);
      if (v5 >= *(a1 + 32))
      {
        break;
      }

      v6 = *v5;
      if (v6 == 3)
      {
        break;
      }

      if ((v6 - 7) > 0x28)
      {
        Integer = re::snapshot::DecoderOPACK::readInteger(a1, 0x7FFFFFFFLL);
      }

      else
      {
        *(a1 + 24) = v5 + 1;
        Integer = v6 - 8;
      }

      *(a1 + 40) = Integer;
      if (Integer >= 6)
      {
        return Integer == 6;
      }
    }

    Integer = 0x7FFFFFFF;
    *(a1 + 40) = 0x7FFFFFFF;
  }

  return Integer == 6;
}

BOOL re::snapshot::DecoderOPACK::beginField<8>(uint64_t a1)
{
  Integer = *(a1 + 40);
  if (Integer <= 7)
  {
    while (1)
    {
      v3 = *(a1 + 24);
      if (v3 >= *(a1 + 32))
      {
        v4 = 0;
      }

      else
      {
        *(a1 + 24) = v3 + 1;
        v4 = *v3;
      }

      re::snapshot::DecoderOPACK::skip(a1, v4);
      v5 = *(a1 + 24);
      if (v5 >= *(a1 + 32))
      {
        break;
      }

      v6 = *v5;
      if (v6 == 3)
      {
        break;
      }

      if ((v6 - 7) > 0x28)
      {
        Integer = re::snapshot::DecoderOPACK::readInteger(a1, 0x7FFFFFFFLL);
      }

      else
      {
        *(a1 + 24) = v5 + 1;
        Integer = v6 - 8;
      }

      *(a1 + 40) = Integer;
      if (Integer >= 8)
      {
        return Integer == 8;
      }
    }

    Integer = 0x7FFFFFFF;
    *(a1 + 40) = 0x7FFFFFFF;
  }

  return Integer == 8;
}

BOOL re::snapshot::DecoderOPACK::beginField<9>(uint64_t a1)
{
  Integer = *(a1 + 40);
  if (Integer <= 8)
  {
    while (1)
    {
      v3 = *(a1 + 24);
      if (v3 >= *(a1 + 32))
      {
        v4 = 0;
      }

      else
      {
        *(a1 + 24) = v3 + 1;
        v4 = *v3;
      }

      re::snapshot::DecoderOPACK::skip(a1, v4);
      v5 = *(a1 + 24);
      if (v5 >= *(a1 + 32))
      {
        break;
      }

      v6 = *v5;
      if (v6 == 3)
      {
        break;
      }

      if ((v6 - 7) > 0x28)
      {
        Integer = re::snapshot::DecoderOPACK::readInteger(a1, 0x7FFFFFFFLL);
      }

      else
      {
        *(a1 + 24) = v5 + 1;
        Integer = v6 - 8;
      }

      *(a1 + 40) = Integer;
      if (Integer >= 9)
      {
        return Integer == 9;
      }
    }

    Integer = 0x7FFFFFFF;
    *(a1 + 40) = 0x7FFFFFFF;
  }

  return Integer == 9;
}

BOOL re::snapshot::DecoderOPACK::beginField<11>(uint64_t a1)
{
  Integer = *(a1 + 40);
  if (Integer <= 10)
  {
    while (1)
    {
      v3 = *(a1 + 24);
      if (v3 >= *(a1 + 32))
      {
        v4 = 0;
      }

      else
      {
        *(a1 + 24) = v3 + 1;
        v4 = *v3;
      }

      re::snapshot::DecoderOPACK::skip(a1, v4);
      v5 = *(a1 + 24);
      if (v5 >= *(a1 + 32))
      {
        break;
      }

      v6 = *v5;
      if (v6 == 3)
      {
        break;
      }

      if ((v6 - 7) > 0x28)
      {
        Integer = re::snapshot::DecoderOPACK::readInteger(a1, 0x7FFFFFFFLL);
      }

      else
      {
        *(a1 + 24) = v5 + 1;
        Integer = v6 - 8;
      }

      *(a1 + 40) = Integer;
      if (Integer >= 11)
      {
        return Integer == 11;
      }
    }

    Integer = 0x7FFFFFFF;
    *(a1 + 40) = 0x7FFFFFFF;
  }

  return Integer == 11;
}

uint64_t re::Slice<unsigned char>::range(void *a1, unint64_t a2, unint64_t a3)
{
  v3 = a1[1];
  if (v3 < a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. fromInclusive = %zu, size = %zu", "fromInclusive <= size()", "range", 248, a2, v3);
    _os_crash();
    __break(1u);
  }

  else if (v3 >= a3)
  {
    return *a1 + a2;
  }

  re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. toExclusive = %zu, size = %zu", "toExclusive <= size()", "range", 249, a2, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::HashTable<re::SharedPtr<re::SyncObject>,re::Pair<unsigned long long,unsigned long long,true>,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::addInternal<re::SharedPtr<re::SyncObject> const&,re::Pair<unsigned long long,unsigned long long,true>>(uint64_t a1, uint64_t a2, uint64_t *a3, _OWORD *a4)
{
  v7 = re::HashTable<re::SharedPtr<re::SyncObject>,re::Pair<unsigned long long,unsigned long long,true>,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::allocEntry(a1, *(a2 + 8), *a2);
  v8 = *a3;
  *(v7 + 8) = *a3;
  if (v8)
  {
    v9 = (v8 + 8);
  }

  *(v7 + 16) = *a4;
  ++*(a1 + 40);
  return v7 + 16;
}

uint64_t re::HashTable<re::SharedPtr<re::SyncObject>,re::Pair<unsigned long long,unsigned long long,true>,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::findEntry<re::SharedPtr<re::SyncObject>>@<X0>(uint64_t result@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *result;
  v5 = 0x7FFFFFFF;
  if (!*result)
  {
    goto LABEL_10;
  }

  v4 = a3 % *(result + 24);
  v6 = *(*(result + 8) + 4 * v4);
  if (v6 == 0x7FFFFFFF)
  {
    goto LABEL_10;
  }

  v7 = *(result + 16);
  if (*(v7 + 40 * v6 + 8) == *a2)
  {
    v5 = *(*(result + 8) + 4 * v4);
LABEL_10:
    v6 = 0x7FFFFFFF;
    goto LABEL_11;
  }

  v8 = *(v7 + 40 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + 40 * v8 + 8) == *a2)
      {
        break;
      }

      v8 = *(v7 + 40 * v8) & 0x7FFFFFFF;
      v6 = v9;
      if (v8 == 0x7FFFFFFF)
      {
        v6 = v9;
        goto LABEL_11;
      }
    }

    v5 = v8;
  }

LABEL_11:
  *a4 = a3;
  *(a4 + 8) = v4;
  *(a4 + 12) = v5;
  *(a4 + 16) = v6;
  return result;
}

uint64_t re::HashTable<re::SharedPtr<re::SyncObject>,re::Pair<unsigned long long,unsigned long long,true>,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<re::SharedPtr<re::SyncObject>,re::Pair<unsigned long long,unsigned long long,true>,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 40 * v5);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 40 * v5);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + 40 * v5;
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v5;
  *(v9 + 32) = a3;
  ++*(a1 + 28);
  return v7 + 40 * v5;
}

void re::HashTable<re::SharedPtr<re::SyncObject>,re::Pair<unsigned long long,unsigned long long,true>,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::SharedPtr<re::SyncObject>,re::Pair<unsigned long long,unsigned long long,true>,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::init(v9, v4, a2);
      v5 = *v9;
      *v9 = *a1;
      *a1 = v5;
      v6 = *&v9[16];
      *&v9[16] = *(a1 + 16);
      *(a1 + 16) = v6;
      v7 = *&v9[24];
      *&v9[24] = *(a1 + 24);
      *(a1 + 24) = v7;
      ++*&v9[40];
      re::HashTable<re::SharedPtr<re::SyncObject>,re::Pair<unsigned long long,unsigned long long,true>,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::move(a1, v9);
      re::HashTable<re::SharedPtr<re::SyncObject>,re::Pair<unsigned long long,unsigned long long,true>,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::deinit(v9);
    }
  }

  else
  {
    if (a2)
    {
      v8 = a2;
    }

    else
    {
      v8 = 3;
    }
  }
}

uint64_t re::HashTable<re::SharedPtr<re::SyncObject>,re::Pair<unsigned long long,unsigned long long,true>,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::move(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    for (i = 0; i < v2; ++i)
    {
      v7 = *(a2 + 16);
      if ((*(v7 + v5) & 0x80000000) != 0)
      {
        result = re::HashTable<re::SharedPtr<re::SyncObject>,re::Pair<unsigned long long,unsigned long long,true>,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::allocEntry(v4, *(v7 + v5 + 32) % *(v4 + 24));
        v8 = *(a2 + 16) + v5;
        *(result + 8) = *(v8 + 8);
        *(v8 + 8) = 0;
        *(result + 16) = *(v8 + 16);
        v2 = *(a2 + 32);
      }

      v5 += 40;
    }
  }

  return result;
}

void re::HashTable<re::SharedPtr<re::SyncObject>,re::Pair<unsigned long long,unsigned long long,true>,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
{
  v4 = 245;
  v5 = &re::internal::PrimeHelper::s_primes;
  do
  {
    v6 = v4 >> 1;
    v7 = &v5[v4 >> 1];
    v9 = *v7;
    v8 = v7 + 1;
    v4 += ~(v4 >> 1);
    if (v9 < a3)
    {
      v5 = v8;
    }

    else
    {
      v4 = v6;
    }
  }

  while (v4);
  v10 = *v5;
  *a1 = a2;
  v11 = (4 * v10 + 15) & 0x7FFFFFFF0;
  v12 = (*(*a2 + 32))(a2, v11 + 40 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &unk_261710510, 4 * v10);
    }

    *(a1 + 16) = &v14[v11];
    *(a1 + 24) = v10;
    *(a1 + 40) = 0;
  }

  else
  {
    re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Out of memory.", "temp", "init", 750);
    _os_crash();
    __break(1u);
  }
}

uint64_t re::DynamicArray<unsigned char>::operator=(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v4 = *result;
    v5 = *a2;
    if (*result)
    {
      v6 = v5 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (v6 || v4 == v5)
    {
      v8 = *(result + 8);
      v9 = *(a2 + 8);
      *result = v5;
      *(result + 8) = v9;
      *a2 = v4;
      *(a2 + 8) = v8;
      v10 = *(result + 16);
      *(result + 16) = *(a2 + 16);
      *(a2 + 16) = v10;
      v11 = *(result + 32);
      *(result + 32) = *(a2 + 32);
      *(a2 + 32) = v11;
      ++*(a2 + 24);
      ++*(result + 24);
    }

    else
    {
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator", "operator=", 503, v2, v3);
      result = _os_crash();
      __break(1u);
    }
  }

  return result;
}

uint64_t re::IP::makeFromString@<X0>(re::IP *this@<X0>, uint64_t a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  *(&v7 + 1) = 0;
  v8 = 0;
  result = inet_pton(2, this, &v7 + 8);
  if (result)
  {
    LOBYTE(v7) = 0;
  }

  else
  {
    result = inet_pton(30, this, &v7 + 8);
    if (!result)
    {
      *a2 = 0;
      goto LABEL_6;
    }

    LOBYTE(v7) = 1;
  }

  *a2 = 1;
  *(a2 + 24) = v8;
  *(a2 + 8) = v7;
LABEL_6:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

re::DynamicString *re::IP::generateString@<X0>(re::IP *this@<X0>, re::DynamicString *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  __s[0] = 0;
  v3 = this + 8;
  if (*this)
  {
    v4 = 30;
  }

  else
  {
    v4 = 2;
  }

  v5 = inet_ntop(v4, v3, __s, 0x31u);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t re::Address::getIPPortPair@<X0>(re::Address *this@<X0>, uint64_t a2@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  result = re::DynamicString::rfind(this, 58, v20);
  if (v20[0] != 1)
  {
    goto LABEL_12;
  }

  v6 = v21;
  if (!v21)
  {
    goto LABEL_12;
  }

  __endptr = 0;
  v7 = (*(this + 1) & 1) != 0 ? *(this + 2) : (this + 9);
  result = strtol(v7 + v21 + 1, &__endptr, 10);
  if (result >= 0x10000)
  {
    goto LABEL_12;
  }

  v8 = *(this + 1);
  v9 = *(this + 2);
  if ((v8 & 1) == 0)
  {
    v9 = this + 9;
  }

  v10 = v8 >> 1;
  v11 = v8 >> 1;
  if (*(this + 1))
  {
    v11 = v10;
  }

  if (__endptr == &v9[v11])
  {
    v13 = result;
    re::DynamicString::substr(this, 0, v6, &v16);
    if (v17)
    {
      v14 = *&v18[7];
    }

    else
    {
      v14 = v18;
    }

    re::IP::makeFromString(v14, v22);
    if (v22[0] == 1)
    {
      *(a2 + 8) = v23;
      *(a2 + 24) = v24;
      *(a2 + 32) = v13;
      v15 = 1;
    }

    else
    {
      v15 = 0;
    }

    *a2 = v15;
    result = v16;
    if (v16 && (v17 & 1) != 0)
    {
      result = (*(*v16 + 40))();
    }
  }

  else
  {
LABEL_12:
    *a2 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

size_t re::Address::hash(re::Address *this)
{
  v4[2] = *MEMORY[0x277D85DE8];
  if (*(this + 8))
  {
    v1 = *(this + 2);
  }

  else
  {
    v1 = this + 9;
  }

  result = strlen(v1);
  if (result)
  {
    MurmurHash3_x64_128(v1, result, 0, v4);
    result = (v4[1] + (v4[0] << 6) + (v4[0] >> 2) - 0x61C8864680B583E9) ^ v4[0];
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t re::Address::makeFromIPAndPort@<X0>(unsigned __int16 *a1@<X0>, re::DynamicString *a2@<X8>)
{
  re::IP::generateString(a1, &v5);
  re::DynamicString::appendf(&v5, ":%hu", a1[12]);
  re::DynamicString::DynamicString(a2, &v5);
  result = v5;
  if (v5)
  {
    if (v6)
    {
      return (*(*v5 + 40))();
    }
  }

  return result;
}

uint64_t re::Address::makeFromIPAndPort@<X0>(re::Address *this@<X0>, const char *a2@<X1>, re::DynamicString *a3@<X8>)
{
  v3 = a2;
  re::DynamicString::appendf(&v7, ":%hu", v3);
  re::DynamicString::DynamicString(a3, &v7);
  result = v7;
  if (v7)
  {
    if (v8)
    {
      return (*(*v7 + 40))();
    }
  }

  return result;
}

double RESyncCreateSyncObjectContext(re *a1)
{
  v1 = re::globalAllocators(a1);
  v2 = (*(*v1[2] + 32))(v1[2], 48, 8);
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *v2 = 0u;
  *(v2 + 36) = 0x7FFFFFFF;
  return result;
}

re *RESyncDestroySyncObjectContext(re *result)
{
  if (result)
  {
    v1 = result;
    v2 = re::globalAllocators(result)[2];
    v3.n128_f64[0] = re::HashTable<unsigned long long,void *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v1);
    v4 = *(*v2 + 40);

    return v4(v2, v1, v3);
  }

  return result;
}

double RESyncCreateSyncObjectContextNoAlloc(uint64_t a1)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 36) = 0x7FFFFFFF;
  return result;
}

BOOL RESyncAddSyncObjectContextEntry(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3;
  v6 = a2;
  v3 = re::HashTable<unsigned long long,void *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(a1, &v5, &v6);
  return *v3 == v6;
}

uint64_t re::HashTable<unsigned long long,void *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(uint64_t a1, uint64_t *a2, void *a3)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v10);
  if (HIDWORD(v11) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 32 * HIDWORD(v11) + 16;
  }

  v7 = re::HashTable<unsigned long long,void *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v11, v10);
  v8 = *a2;
  *(v7 + 16) = *a3;
  result = v7 + 16;
  *(result - 8) = v8;
  ++*(a1 + 40);
  return result;
}

uint64_t RESyncGetSyncObjectContextEntry(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v2 = re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(a1, &v6);
  if (v2)
  {
    result = *v2;
  }

  else
  {
    v4 = *re::networkLogObjects(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v8 = v6;
      _os_log_impl(&dword_26168F000, v4, OS_LOG_TYPE_INFO, "RESyncGetSyncObjectContextEntry: Couldn't find entry with id=%llu", buf, 0xCu);
    }

    result = 0;
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL RESyncRemoveSyncObjectContextEntry(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v2 = re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(a1, &v7);
  v3 = v2;
  if (!v2)
  {
    v4 = *re::networkLogObjects(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v9 = v7;
      _os_log_impl(&dword_26168F000, v4, OS_LOG_TYPE_DEFAULT, "RESyncRemoveSyncObjectContextEntry: Couldn't find entry with id=%llu", buf, 0xCu);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t re::HashTable<unsigned long long,void *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<unsigned long long,void *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 32 * v5);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 32 * v5);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + 32 * v5;
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v9 + 24) = a3;
  *(v10 + 4 * a2) = v5;
  ++*(a1 + 28);
  return v7 + 32 * v5;
}

void re::HashTable<unsigned long long,void *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::StringID,re::DataArrayHandle<re::internal::TypeInfoIndex>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v9, v4, a2);
      v5 = *v9;
      *v9 = *a1;
      *a1 = v5;
      v6 = *&v9[16];
      *&v9[16] = *(a1 + 16);
      *(a1 + 16) = v6;
      v7 = *&v9[24];
      *&v9[24] = *(a1 + 24);
      *(a1 + 24) = v7;
      ++*&v9[40];
      re::HashTable<unsigned long long,void *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::move(a1, v9);
      re::HashTable<unsigned long long,void *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v9);
    }
  }

  else
  {
    if (a2)
    {
      v8 = a2;
    }

    else
    {
      v8 = 3;
    }
  }
}

uint64_t re::HashTable<unsigned long long,void *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::move(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    for (i = 0; i < v2; ++i)
    {
      v7 = *(a2 + 16);
      if ((*(v7 + v5) & 0x80000000) != 0)
      {
        result = re::HashTable<unsigned long long,void *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(v4, *(v7 + v5 + 24) % *(v4 + 24));
        v8 = *(a2 + 16) + v5;
        v10 = *(v8 + 8);
        v9 = *(v8 + 16);
        *(result + 8) = v10;
        *(result + 16) = v9;
        v2 = *(a2 + 32);
      }

      v5 += 32;
    }
  }

  return result;
}

BOOL re::snapshot::DecoderOPACK::field<1,unsigned long long>(re::snapshot::DecoderOPACK *a1, void *a2)
{
  v4 = re::snapshot::DecoderOPACK::beginField<1>(a1);
  if (v4)
  {
    *a2 = re::snapshot::DecoderOPACK::readInteger(a1, 0);
    re::snapshot::DecoderOPACK::endField(a1);
  }

  return v4;
}

unsigned int *re::snapshotMapFields<re::snapshot::EncoderOPACK>(re::snapshot::EncoderOPACK *this, uint64_t a2)
{
  v4 = *(this + 4);
  if (v4 >= *(this + 5))
  {
    re::snapshot::EncoderOPACK::writeInteger(this, 1);
  }

  else
  {
    v5 = *(this + 1);
    *(this + 4) = v4 + 1;
    *(v5 + v4) = 9;
  }

  re::snapshot::EncoderOPACK::writeInteger(this, *a2);
  v6 = *(this + 4);
  if (v6 >= *(this + 5))
  {
    re::snapshot::EncoderOPACK::writeInteger(this, 2);
  }

  else
  {
    v7 = *(this + 1);
    *(this + 4) = v6 + 1;
    *(v7 + v6) = 10;
  }

  v8 = *(a2 + 8);

  return re::snapshot::EncoderOPACK::writeInteger(this, v8);
}

unsigned int *re::snapshotMapFields(re *this, re::snapshot::EncoderOPACK *a2, const re::SyncOwnershipInfo *a3)
{
  v5 = *(this + 4);
  if (v5 >= *(this + 5))
  {
    re::snapshot::EncoderOPACK::writeInteger(this, 1);
  }

  else
  {
    v6 = *(this + 1);
    *(this + 4) = v5 + 1;
    *(v6 + v5) = 9;
  }

  re::snapshot::EncoderOPACK::operator<<(this, *(a2 + 16));
  v7 = *(this + 4);
  if (v7 >= *(this + 5))
  {
    re::snapshot::EncoderOPACK::writeInteger(this, 2);
  }

  else
  {
    v8 = *(this + 1);
    *(this + 4) = v7 + 1;
    *(v8 + v7) = 10;
  }

  re::snapshot::EncoderOPACK::operator<<(this, *(a2 + 35));
  v9 = *(this + 4);
  if (v9 >= *(this + 5))
  {
    re::snapshot::EncoderOPACK::writeInteger(this, 3);
  }

  else
  {
    v10 = *(this + 1);
    *(this + 4) = v9 + 1;
    *(v10 + v9) = 11;
  }

  re::snapshot::EncoderOPACK::writeInteger(this, *(a2 + 16));
  v11 = *(this + 4);
  if (v11 >= *(this + 5))
  {
    re::snapshot::EncoderOPACK::writeInteger(this, 4);
  }

  else
  {
    v12 = *(this + 1);
    *(this + 4) = v11 + 1;
    *(v12 + v11) = 12;
  }

  result = re::snapshot::EncoderOPACK::writeInteger(this, *(a2 + 3));
  if (!*(a2 + 3) && *a2)
  {
    v14 = *(this + 4);
    if (v14 >= *(this + 5))
    {
      re::snapshot::EncoderOPACK::writeInteger(this, 5);
    }

    else
    {
      v15 = *(this + 1);
      *(this + 4) = v14 + 1;
      *(v15 + v14) = 13;
    }

    re::snapshot::EncoderOPACK::beginObject(this);
    re::snapshotMapFields<re::snapshot::EncoderOPACK>(this, a2);

    return re::snapshot::EncoderOPACK::endObject(this);
  }

  return result;
}

BOOL re::snapshotMapFields(re *this, re::snapshot::DecoderOPACK *a2, re::SyncOwnershipInfo *a3)
{
  re::snapshot::DecoderOPACK::field<1,BOOL>(this, a2 + 16);
  re::snapshot::DecoderOPACK::field<2,BOOL>(this, a2 + 35);
  re::snapshot::DecoderOPACK::field<3,unsigned short>(this, a2 + 16);
  re::snapshot::DecoderOPACK::field<4,unsigned long long>(this, a2 + 3);

  return re::snapshot::DecoderOPACK::field<5,re::HandOffData>(this, a2);
}

BOOL re::snapshot::DecoderOPACK::field<1,BOOL>(uint64_t *a1, _BYTE *a2)
{
  v4 = re::snapshot::DecoderOPACK::beginField<1>(a1);
  if (v4)
  {
    re::snapshot::DecoderOPACK::operator>>(a1, a2);
    re::snapshot::DecoderOPACK::endField(a1);
  }

  return v4;
}

BOOL re::snapshot::DecoderOPACK::field<2,BOOL>(uint64_t *a1, _BYTE *a2)
{
  v4 = re::snapshot::DecoderOPACK::beginField<2>(a1);
  if (v4)
  {
    re::snapshot::DecoderOPACK::operator>>(a1, a2);
    re::snapshot::DecoderOPACK::endField(a1);
  }

  return v4;
}

BOOL re::snapshot::DecoderOPACK::field<3,unsigned short>(re::snapshot::DecoderOPACK *a1, _WORD *a2)
{
  v4 = re::snapshot::DecoderOPACK::beginField<3>(a1);
  if (v4)
  {
    *a2 = re::snapshot::DecoderOPACK::readInteger(a1, 0);
    re::snapshot::DecoderOPACK::endField(a1);
  }

  return v4;
}

BOOL re::snapshot::DecoderOPACK::field<4,unsigned long long>(re::snapshot::DecoderOPACK *a1, void *a2)
{
  v4 = re::snapshot::DecoderOPACK::beginField<4>(a1);
  if (v4)
  {
    *a2 = re::snapshot::DecoderOPACK::readInteger(a1, 0);
    re::snapshot::DecoderOPACK::endField(a1);
  }

  return v4;
}

BOOL re::snapshot::DecoderOPACK::field<5,re::HandOffData>(re::snapshot::DecoderOPACK *a1, uint64_t a2)
{
  v4 = re::snapshot::DecoderOPACK::beginField<5>(a1);
  if (v4)
  {
    if (re::snapshot::DecoderOPACK::beginObject(a1, 0))
    {
      re::snapshot::DecoderOPACK::field<1,unsigned long long>(a1, a2);
      re::snapshot::DecoderOPACK::field<2,unsigned short>(a1, (a2 + 8));
      re::snapshot::DecoderOPACK::endObject(a1, 0);
    }

    re::snapshot::DecoderOPACK::endField(a1);
  }

  return v4;
}

BOOL re::SyncOwnershipInfo::read(re::SyncOwnershipInfo *this, re::BitReader *a2, int a3, int a4)
{
  v9 = 0;
  re::BitReader::readUInt32Bits(a2, 1u, &v9);
  *(this + 16) = v9 != 0;
  v9 = 0;
  re::BitReader::readUInt32Bits(a2, 1u, &v9);
  *(this + 35) = v9 != 0;
  v9 = 0;
  re::BitReader::readUInt32Bits(a2, 0x10u, &v9);
  *(this + 16) = v9;
  if (a4)
  {
    re::BitReader::readUInt64(a2, this + 3);
  }

  if (a3)
  {
    re::BitReader::readUInt64(a2, this);
    v9 = 0;
    re::BitReader::readUInt32Bits(a2, 0x10u, &v9);
    *(this + 4) = v9;
  }

  return (*(a2 + 12) & 1) == 0;
}

BOOL re::SyncOwnershipInfo::write(re::SyncOwnershipInfo *this, re::BitWriter *a2, int a3)
{
  re::BitWriter::writeUInt32Bits(a2, *(this + 16), 1u);
  re::BitWriter::writeUInt32Bits(a2, *(this + 35), 1u);
  re::BitWriter::writeUInt32Bits(a2, *(this + 16), 0x10u);
  if (a3)
  {
    v6 = *(this + 7);
    re::BitWriter::writeUInt32Bits(a2, *(this + 6), 0x20u);
    re::BitWriter::writeUInt32Bits(a2, v6, 0x20u);
  }

  if (!*(this + 3))
  {
    v7 = *this;
    if (*this)
    {
      re::BitWriter::writeUInt32Bits(a2, *this, 0x20u);
      re::BitWriter::writeUInt32Bits(a2, HIDWORD(v7), 0x20u);
      re::BitWriter::writeUInt32Bits(a2, *(this + 4), 0x10u);
    }
  }

  return (*(a2 + 20) & 1) == 0;
}

BOOL re::snapshot::DecoderOPACK::beginField<4>(uint64_t a1)
{
  Integer = *(a1 + 40);
  if (Integer <= 3)
  {
    while (1)
    {
      v3 = *(a1 + 24);
      if (v3 >= *(a1 + 32))
      {
        v4 = 0;
      }

      else
      {
        *(a1 + 24) = v3 + 1;
        v4 = *v3;
      }

      re::snapshot::DecoderOPACK::skip(a1, v4);
      v5 = *(a1 + 24);
      if (v5 >= *(a1 + 32))
      {
        break;
      }

      v6 = *v5;
      if (v6 == 3)
      {
        break;
      }

      if ((v6 - 7) > 0x28)
      {
        Integer = re::snapshot::DecoderOPACK::readInteger(a1, 0x7FFFFFFFLL);
      }

      else
      {
        *(a1 + 24) = v5 + 1;
        Integer = v6 - 8;
      }

      *(a1 + 40) = Integer;
      if (Integer >= 4)
      {
        return Integer == 4;
      }
    }

    Integer = 0x7FFFFFFF;
    *(a1 + 40) = 0x7FFFFFFF;
  }

  return Integer == 4;
}

uint64_t *re::networkLogObjects(re *this)
{
  {
    re::networkLogObjects(void)::logObjects = os_log_create("com.apple.re", "Network");
  }

  return &re::networkLogObjects(void)::logObjects;
}

double RESyncCreateSyncObjectWriteContext(re *a1)
{
  v1 = re::globalAllocators(a1);
  v2 = (*(*v1[2] + 32))(v1[2], 88, 8);
  result = 0.0;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 80) = 0;
  *(v2 + 76) = 0x7FFFFFFF;
  return result;
}

re *RESyncDestroySyncObjectWriteContext(re *result)
{
  if (result)
  {
    v1 = result;
    v2 = re::globalAllocators(result)[2];
    v3.n128_f64[0] = re::HashTable<unsigned long long,void *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v1 + 5);
    v4 = *(*v2 + 40);

    return v4(v2, v1, v3);
  }

  return result;
}

uint64_t RESyncCreateSyncObjectWriteContextNoAlloc(uint64_t result, unint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if (!result)
  {
    v3 = *re::networkLogObjects(0);
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
LABEL_8:
      result = 0;
      goto LABEL_4;
    }

    v4 = 136315394;
    v5 = "RESyncCreateSyncObjectWriteContextNoAlloc";
    v6 = 2080;
    v7 = "bytes != __null";
LABEL_10:
    _os_log_error_impl(&dword_26168F000, v3, OS_LOG_TYPE_ERROR, "%s: Invalid parameter not satisfying %s.", &v4, 0x16u);
    goto LABEL_8;
  }

  if (a2 <= 0x57)
  {
    v3 = *re::networkLogObjects(result);
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    v4 = 136315394;
    v5 = "RESyncCreateSyncObjectWriteContextNoAlloc";
    v6 = 2080;
    v7 = "size >= sizeof(re::SyncObjectWriteContext)";
    goto LABEL_10;
  }

  *(result + 48) = 0u;
  *(result + 64) = 0u;
  *(result + 80) = 0;
  *(result + 16) = 0u;
  *(result + 32) = 0u;
  *result = 0u;
  *(result + 76) = 0x7FFFFFFF;
LABEL_4:
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

void RESyncDestroySyncObjectWriteContextNoDealloc(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v1 = *MEMORY[0x277D85DE8];
    v2 = (a1 + 40);

    re::HashTable<unsigned long long,void *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v2);
  }

  else
  {
    v3 = *re::networkLogObjects(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315394;
      v6 = "RESyncDestroySyncObjectWriteContextNoDealloc";
      v7 = 2080;
      v8 = "context != __null";
      _os_log_error_impl(&dword_26168F000, v3, OS_LOG_TYPE_ERROR, "%s: Invalid parameter not satisfying %s.", &v5, 0x16u);
    }

    v4 = *MEMORY[0x277D85DE8];
  }
}

BOOL RESyncAddSyncObjectWriteContextEntry(re *a1, uint64_t a2, uint64_t a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a2;
  if (!a1)
  {
    v10 = *re::networkLogObjects(0);
    result = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_8;
    }

    *buf = 136315394;
    v14 = "RESyncAddSyncObjectWriteContextEntry";
    v15 = 2080;
    v16 = "context != __null";
    v6 = "%s: Invalid parameter not satisfying %s.";
    goto LABEL_13;
  }

  if (!a2)
  {
    v10 = *re::networkLogObjects(a1);
    result = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_8;
    }

    *buf = 136315394;
    v14 = "RESyncAddSyncObjectWriteContextEntry";
    v15 = 2080;
    v16 = "entry != __null";
    v6 = "%s: Invalid parameter not satisfying %s.";
LABEL_13:
    v7 = v10;
    v8 = 22;
    goto LABEL_6;
  }

  v3 = re::HashTable<unsigned long long,void *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(a1 + 40, &v11, &v12);
  if (*v3 == v12)
  {
    result = 1;
    goto LABEL_8;
  }

  v4 = *re::networkLogObjects(v3);
  result = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
  if (result)
  {
    *buf = 134217984;
    v14 = v11;
    v6 = "RESyncAddSyncObjectWriteContextEntry: Failed to add entry using id=%llu, possible duplicate!";
    v7 = v4;
    v8 = 12;
LABEL_6:
    _os_log_error_impl(&dword_26168F000, v7, OS_LOG_TYPE_ERROR, v6, buf, v8);
    result = 0;
  }

LABEL_8:
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t RESyncGetSyncObjectWriteContextEntry(uint64_t a1, const char *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = a2;
  if (!a1)
  {
    v6 = *re::networkLogObjects(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v9 = "RESyncGetSyncObjectWriteContextEntry";
      v10 = 2080;
      v11 = "context != __null";
      _os_log_error_impl(&dword_26168F000, v6, OS_LOG_TYPE_ERROR, "%s: Invalid parameter not satisfying %s.", buf, 0x16u);
    }

    goto LABEL_6;
  }

  v2 = re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(a1 + 40, &v7);
  if (!v2)
  {
    v4 = *re::networkLogObjects(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v9 = v7;
      _os_log_impl(&dword_26168F000, v4, OS_LOG_TYPE_INFO, "RESyncGetSyncObjectWriteContextEntry: Couldn't find entry with id=%llu.", buf, 0xCu);
    }

LABEL_6:
    result = 0;
    goto LABEL_7;
  }

  result = *v2;
LABEL_7:
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL RESyncRemoveSyncObjectWriteContextEntry(uint64_t a1, const char *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = a2;
  if (!a1)
  {
    v6 = *re::networkLogObjects(0);
    result = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_7;
    }

    *buf = 136315394;
    v9 = "RESyncRemoveSyncObjectWriteContextEntry";
    v10 = 2080;
    v11 = "context != __null";
    _os_log_error_impl(&dword_26168F000, v6, OS_LOG_TYPE_ERROR, "%s: Invalid parameter not satisfying %s.", buf, 0x16u);
    goto LABEL_6;
  }

  v2 = re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(a1 + 40, &v7);
  if (!v2)
  {
    v4 = *re::networkLogObjects(v2);
    result = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      goto LABEL_7;
    }

    *buf = 134217984;
    v9 = v7;
    _os_log_impl(&dword_26168F000, v4, OS_LOG_TYPE_DEFAULT, "RESyncRemoveSyncObjectWriteContextEntry: Couldn't find entry with id=%llu.", buf, 0xCu);
LABEL_6:
    result = 0;
    goto LABEL_7;
  }

  result = 1;
LABEL_7:
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t RESyncObjectWriteContextGetSession(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    result = *(a1 + 8);
  }

  else
  {
    v3 = *re::networkLogObjects(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 136315394;
      v5 = "RESyncObjectWriteContextGetSession";
      v6 = 2080;
      v7 = "context != __null";
      _os_log_error_impl(&dword_26168F000, v3, OS_LOG_TYPE_ERROR, "%s: Invalid parameter not satisfying %s.", &v4, 0x16u);
    }

    result = 0;
  }

  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t RESyncObjectWriteContextGetDestinationPeerID(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    result = *(a1 + 16);
  }

  else
  {
    v3 = *re::networkLogObjects(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 136315394;
      v5 = "RESyncObjectWriteContextGetDestinationPeerID";
      v6 = 2080;
      v7 = "context != __null";
      _os_log_error_impl(&dword_26168F000, v3, OS_LOG_TYPE_ERROR, "%s: Invalid parameter not satisfying %s.", &v4, 0x16u);
    }

    result = 0;
  }

  v2 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL RESyncObjectWriteContextSupportsProtocolLevel(uint64_t a1, int a2)
{
  v9 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    result = (a2 & ~*(a1 + 32)) == 0;
  }

  else
  {
    v4 = *re::networkLogObjects(0);
    result = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
    if (result)
    {
      v5 = 136315394;
      v6 = "RESyncObjectWriteContextSupportsProtocolLevel";
      v7 = 2080;
      v8 = "context != __null";
      _os_log_error_impl(&dword_26168F000, v4, OS_LOG_TYPE_ERROR, "%s: Invalid parameter not satisfying %s.", &v5, 0x16u);
      result = 0;
    }
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t RESyncObjectWriteContextIsLocalSession(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    (*(**(a1 + 8) + 32))(v5);
    v1 = *(*v5 + 2219);
  }

  else
  {
    v4 = *re::networkLogObjects(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v5 = 136315394;
      *&v5[4] = "RESyncObjectWriteContextIsLocalSession";
      v6 = 2080;
      v7 = "context != __null";
      _os_log_error_impl(&dword_26168F000, v4, OS_LOG_TYPE_ERROR, "%s: Invalid parameter not satisfying %s.", v5, 0x16u);
    }

    v1 = 0;
  }

  v2 = *MEMORY[0x277D85DE8];
  return v1 & 1;
}

void re::DynamicArray<unsigned int>::resize(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }
  }

  else
  {
    if (*(a1 + 8) < a2)
    {
      re::DynamicArray<unsigned int>::setCapacity(a1, a2);
      v4 = *(a1 + 16);
    }

    if (a2 > v4 && a2 > v4)
    {
      bzero((*(a1 + 32) + 4 * v4), 4 * (a2 - v4));
    }
  }

  *(a1 + 16) = a2;
  ++*(a1 + 24);
}

re::SyncObjectShortIDManagerImpl *re::SyncObjectShortIDManagerImpl::SyncObjectShortIDManagerImpl(re::SyncObjectShortIDManagerImpl *this)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *this = &unk_2873F5008;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 14) = 0;
  *(this + 60) = 0x7FFFFFFFLL;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 26) = 0;
  *(this + 108) = 0x7FFFFFFFLL;
  *(this + 16) = 0;
  *(v2 + 120) = 0;
  *(this + 34) = 1;
  *(this + 19) = 0;
  *(this + 20) = 0;
  *(this + 18) = 0;
  *(this + 42) = 0;
  *(this + 22) = 0;
  *(this + 23) = 0;
  *(this + 48) = 1;
  *(this + 25) = 0;
  *(this + 26) = 0;
  *(this + 56) = 0;
  *(this + 27) = 0;
  v3 = re::BucketArray<re::SyncObjectShortIDBlock,4ul>::addUninitialized(v2 + 120);
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  *v3 = 0u;
  *(v3 + 44) = 127;
  re::DynamicArray<unsigned int>::resize(v3, 0x80uLL);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = v4 + 0x3FFFFFFFFFFFFFFFLL;
    v7 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    v8 = (v6 & 0x3FFFFFFFFFFFFFFFLL) - (v6 & 3) + 4;
    v9 = vdupq_n_s64(v7);
    v10 = (*(v3 + 32) + 8);
    v11 = 127;
    do
    {
      v12 = vdupq_n_s64(v5);
      v13 = vmovn_s64(vcgeq_u64(v9, vorrq_s8(v12, xmmword_261710400)));
      if (vuzp1_s16(v13, *v9.i8).u8[0])
      {
        *(v10 - 2) = v11;
      }

      if (vuzp1_s16(v13, *&v9).i8[2])
      {
        *(v10 - 1) = v11 - 1;
      }

      if (vuzp1_s16(*&v9, vmovn_s64(vcgeq_u64(v9, vorrq_s8(v12, xmmword_261711070)))).i32[1])
      {
        *v10 = v11 - 2;
        v10[1] = v11 - 3;
      }

      v5 += 4;
      v11 -= 4;
      v10 += 4;
    }

    while (v8 != v5);
  }

  *re::BucketArray<unsigned long,4ul>::addUninitialized(this + 176) = 0;
  return this;
}

uint64_t re::SyncObjectShortIDManagerImpl::mapOutgoing(re::SyncObjectShortIDManagerImpl *this, unint64_t a2, unint64_t a3)
{
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  v7 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a3 ^ (a3 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a3 ^ (a3 >> 30))) >> 27));
  re::HashTable<re::Pair<unsigned long long,unsigned long long,true>,unsigned int,re::Hash<re::Pair<unsigned long long,unsigned long long,true>>,re::EqualTo<re::Pair<unsigned long long,unsigned long long,true>>,true,false>::findEntry<re::Pair<unsigned long long,unsigned long long,true>>(&v27, this + 24, a2, a3, ((v7 ^ (v7 >> 31)) + ((v6 ^ (v6 >> 31)) << 6) + ((v6 ^ (v6 >> 31)) >> 2) - 0x61C8864680B583E9) ^ v6 ^ (v6 >> 31));
  if (HIDWORD(v28) == 0x7FFFFFFF)
  {
    v8 = re::HashTable<re::Pair<unsigned long long,unsigned long long,true>,unsigned int,re::Hash<re::Pair<unsigned long long,unsigned long long,true>>,re::EqualTo<re::Pair<unsigned long long,unsigned long long,true>>,true,false>::allocEntry(this + 24, v28, v27);
    *(v8 + 24) = -1;
    v9 = (v8 + 24);
    *(v8 + 8) = a2;
    *(v8 + 16) = a3;
    ++*(this + 16);
  }

  else
  {
    v9 = (*(this + 5) + 40 * HIDWORD(v28) + 24);
  }

  result = *v9;
  if (result == -1)
  {
    v11 = *(this + 27);
    if (v11)
    {
      goto LABEL_16;
    }

    v12 = *(this + 20);
    v13 = re::BucketArray<re::SyncObjectShortIDBlock,4ul>::addUninitialized(this + 120);
    *v13 = 0u;
    *(v13 + 16) = 0u;
    *(v13 + 32) = 0;
    *(v13 + 40) = v12 << 7;
    *(v13 + 44) = (v12 << 7) | 0x7F;
    re::DynamicArray<unsigned int>::resize(v13, 0x80uLL);
    v14 = *(v13 + 16);
    if (v14)
    {
      v15 = 0;
      v16 = v14 + 0x3FFFFFFFFFFFFFFFLL;
      v17 = vdupq_n_s64(v16 & 0x3FFFFFFFFFFFFFFFLL);
      v18 = (v16 & 0x3FFFFFFFFFFFFFFFLL) - (v16 & 3) + 4;
      v19 = (v12 << 7) + 124;
      v20 = (*(v13 + 32) + 8);
      do
      {
        v21 = vdupq_n_s64(v15);
        v22 = vmovn_s64(vcgeq_u64(v17, vorrq_s8(v21, xmmword_261710400)));
        if (vuzp1_s16(v22, *v17.i8).u8[0])
        {
          *(v20 - 2) = v19 + 3;
        }

        if (vuzp1_s16(v22, *&v17).i8[2])
        {
          *(v20 - 1) = v19 + 2;
        }

        if (vuzp1_s16(*&v17, vmovn_s64(vcgeq_u64(v17, vorrq_s8(v21, xmmword_261711070)))).i32[1])
        {
          *v20 = v19 + 1;
          v20[1] = v19;
        }

        v15 += 4;
        v19 -= 4;
        v20 += 4;
      }

      while (v18 != v15);
    }

    *re::BucketArray<unsigned long,4ul>::addUninitialized(this + 176) = v12;
    v11 = *(this + 27);
    if (v11)
    {
LABEL_16:
      v24 = re::BucketArray<unsigned long,4ul>::operator[](this + 176, v11 - 1);
      v25 = re::BucketArray<re::SyncObjectShortIDBlock,4ul>::operator[](this + 120, *v24);
      v26 = *(v25 + 16);
      result = *(*(v25 + 32) + 4 * v26 - 4);
      ++*(v25 + 24);
      *v9 = result;
      *(v25 + 16) = v26 - 1;
      if (v26 == 1)
      {
        re::BucketArray<unsigned long,4ul>::operator[](this + 176, *(this + 27) - 1);
        --*(this + 27);
        ++*(this + 56);
        return *v9;
      }
    }

    else
    {
      re::internal::assertLog(4, v23, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
      result = _os_crash();
      __break(1u);
    }
  }

  return result;
}

uint64_t re::BucketArray<re::SyncObjectShortIDBlock,4ul>::operator[](uint64_t a1, unint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  if (v2 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1011, a2, v2);
    _os_crash();
    __break(1u);
LABEL_8:
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 8) <= a2 >> 2)
  {
    goto LABEL_8;
  }

  if (*(a1 + 16))
  {
    v3 = a1 + 24;
  }

  else
  {
    v3 = *(a1 + 32);
  }

  v4 = *MEMORY[0x277D85DE8];
  return *(v3 + 8 * (a2 >> 2)) + 48 * (a2 & 3);
}

unint64_t *re::SyncObjectShortIDManagerImpl::unmapOutgoing(re::SyncObjectShortIDManagerImpl *this, unint64_t a2, unint64_t a3)
{
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  v7 = v6 ^ (v6 >> 31);
  v8 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a3 ^ (a3 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a3 ^ (a3 >> 30))) >> 27));
  v9 = (v8 ^ (v8 >> 31)) + (v7 << 6) + (v7 >> 2) - 0x61C8864680B583E9;
  result = re::HashTable<re::Pair<unsigned long long,unsigned long long,true>,unsigned int,re::Hash<re::Pair<unsigned long long,unsigned long long,true>>,re::EqualTo<re::Pair<unsigned long long,unsigned long long,true>>,true,false>::findEntry<re::Pair<unsigned long long,unsigned long long,true>>(v30, this + 24, a2, a3, v9 ^ v7);
  if (v32 != 0x7FFFFFFF)
  {
    v11 = *(this + 5);
    v12 = v11 + 40 * v32;
    re::HashTable<re::Pair<unsigned long long,unsigned long long,true>,unsigned int,re::Hash<re::Pair<unsigned long long,unsigned long long,true>>,re::EqualTo<re::Pair<unsigned long long,unsigned long long,true>>,true,false>::findEntry<re::Pair<unsigned long long,unsigned long long,true>>(v30, this + 24, a2, a3, v9 ^ v7);
    v13 = v32;
    if (v32 != 0x7FFFFFFF)
    {
      v14 = (v11 + 40 * v32);
      v15 = *v14 & 0x7FFFFFFF;
      if (v33 == 0x7FFFFFFF)
      {
        *(*(this + 4) + 4 * v31) = v15;
      }

      else
      {
        *(v11 + 40 * v33) = *(v11 + 40 * v33) & 0x80000000 | v15;
      }

      *v14 = *(this + 15);
      --*(this + 13);
      v16 = *(this + 16) + 1;
      *(this + 15) = v13;
      *(this + 16) = v16;
    }

    v17 = *(v12 + 24) >> 7;
    result = re::BucketArray<re::SyncObjectShortIDBlock,4ul>::operator[](this + 120, v17);
    v18 = result;
    v19 = *(v12 + 24);
    v20 = result[1];
    v21 = result[2];
    v22 = v21;
    if (v21 >= v20)
    {
      if (v20 < v21 + 1)
      {
        if (*result)
        {
          v23 = 2 * v20;
          v24 = v20 == 0;
          v25 = 8;
          if (!v24)
          {
            v25 = v23;
          }

          if (v25 <= v21 + 1)
          {
            v26 = v21 + 1;
          }

          else
          {
            v26 = v25;
          }

          result = re::DynamicArray<unsigned int>::setCapacity(result, v26);
        }

        else
        {
          result = re::DynamicArray<unsigned int>::setCapacity(v18, v21 + 1);
          ++*(v18 + 6);
        }
      }

      v22 = v18[2];
    }

    *(v18[4] + 4 * v22) = v19;
    v18[2] = v22 + 1;
    ++*(v18 + 6);
    if (!v21)
    {
      v27 = *(this + 27);
      result = re::BucketArray<unsigned long,4ul>::addUninitialized(this + 176);
      *result = v17;
      if (v27)
      {
        do
        {
          v28 = v27 - 1;
          result = re::BucketArray<unsigned long,4ul>::operator[](this + 176, v27 - 1);
          if (*result >= v17)
          {
            break;
          }

          v29 = *re::BucketArray<unsigned long,4ul>::operator[](this + 176, v27 - 1);
          *re::BucketArray<unsigned long,4ul>::operator[](this + 176, v27) = v29;
          result = re::BucketArray<unsigned long,4ul>::operator[](this + 176, v27 - 1);
          *result = v17;
          --v27;
        }

        while (v28);
      }
    }
  }

  return result;
}

uint64_t re::BucketArray<unsigned long,4ul>::operator[](uint64_t a1, unint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  if (v2 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1011, a2, v2);
    _os_crash();
    __break(1u);
LABEL_8:
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 8) <= a2 >> 2)
  {
    goto LABEL_8;
  }

  if (*(a1 + 16))
  {
    v3 = a1 + 24;
  }

  else
  {
    v3 = *(a1 + 32);
  }

  v4 = *MEMORY[0x277D85DE8];
  return *(v3 + 8 * (a2 >> 2)) + 8 * (a2 & 3);
}

void *re::SyncObjectShortIDManagerImpl::mapIncoming(re::SyncObjectShortIDManagerImpl *this, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v8 = 0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30));
  re::HashTable<unsigned int,re::Pair<unsigned long long,unsigned long long,true>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::findEntry<unsigned int>(&v13, this + 72, a2, (0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31));
  if (HIDWORD(v14) == 0x7FFFFFFF)
  {
    v9 = re::HashTable<unsigned int,re::Pair<unsigned long long,unsigned long long,true>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::allocEntry(this + 72, v14, v13);
    *(v9 + 8) = a3;
    result = (v9 + 8);
    *(result - 1) = a2;
    result[1] = a4;
    ++*(this + 28);
    goto LABEL_4;
  }

  v11 = *(this + 11) + 32 * HIDWORD(v14);
  v12 = *(v11 + 8);
  result = (v11 + 8);
  if (v12 == a3)
  {
LABEL_4:
    if (result[1] == a4)
    {
      return result;
    }
  }

  *result = a3;
  result[1] = a4;
  return result;
}

uint64_t *re::SyncObjectShortIDManagerImpl::mapIncoming(re::SyncObjectShortIDManagerImpl *this, unsigned int a2)
{
  result = re::HashTable<unsigned int,re::Pair<unsigned long long,unsigned long long,true>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::tryGet(this + 72, a2);
  if (result)
  {
    v3 = result;
    result = *result;
    v4 = v3[1];
  }

  return result;
}

uint64_t re::HashTable<unsigned int,re::Pair<unsigned long long,unsigned long long,true>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::tryGet(uint64_t a1, unsigned int a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30));
  re::HashTable<unsigned int,re::Pair<unsigned long long,unsigned long long,true>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::findEntry<unsigned int>(v5, a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31));
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 32 * v6 + 8;
  }
}

void *re::SyncObjectShortIDManagerImpl::unmapIncoming(re::SyncObjectShortIDManagerImpl *this, unsigned int a2, uint64_t a3, uint64_t a4)
{
  result = re::HashTable<unsigned int,re::Pair<unsigned long long,unsigned long long,true>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::tryGet(this + 72, a2);
  if (result)
  {
    if (*result == a3 && result[1] == a4)
    {
      v9 = 0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30));
      result = re::HashTable<unsigned int,re::Pair<unsigned long long,unsigned long long,true>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::findEntry<unsigned int>(v15, this + 72, a2, (0x94D049BB133111EBLL * (v9 ^ (v9 >> 27))) ^ ((0x94D049BB133111EBLL * (v9 ^ (v9 >> 27))) >> 31));
      v10 = v17;
      if (v17 != 0x7FFFFFFF)
      {
        v11 = *(this + 11);
        v12 = (v11 + 32 * v17);
        v13 = *v12 & 0x7FFFFFFF;
        if (v18 == 0x7FFFFFFF)
        {
          *(*(this + 10) + 4 * v16) = v13;
        }

        else
        {
          *(v11 + 32 * v18) = *(v11 + 32 * v18) & 0x80000000 | v13;
        }

        v14 = *(this + 28);
        *v12 = *(this + 27);
        --*(this + 25);
        *(this + 27) = v10;
        *(this + 28) = v14 + 1;
      }
    }
  }

  return result;
}

void re::SyncObjectShortIDManagerImpl::~SyncObjectShortIDManagerImpl(re::SyncObjectShortIDManagerImpl *this)
{
  re::BucketArray<unsigned long,4ul>::deinit(this + 176);
  re::DynamicOverflowArray<unsigned long *,2ul>::deinit(this + 176);
  re::BucketArray<re::SyncObjectShortIDBlock,4ul>::deinit(this + 120);
  re::DynamicOverflowArray<unsigned long *,2ul>::deinit(this + 120);
  re::HashTable<unsigned long long,void *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 9);
  re::HashTable<re::Pair<unsigned long long,unsigned long long,true>,unsigned int,re::Hash<re::Pair<unsigned long long,unsigned long long,true>>,re::EqualTo<re::Pair<unsigned long long,unsigned long long,true>>,true,false>::deinit(this + 3);
  *this = &unk_2873F3D98;
  objc_destructInstance(this + 8);
}

{
  re::BucketArray<unsigned long,4ul>::deinit(this + 176);
  re::DynamicOverflowArray<unsigned long *,2ul>::deinit(this + 176);
  re::BucketArray<re::SyncObjectShortIDBlock,4ul>::deinit(this + 120);
  re::DynamicOverflowArray<unsigned long *,2ul>::deinit(this + 120);
  re::HashTable<unsigned long long,void *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 9);
  re::HashTable<re::Pair<unsigned long long,unsigned long long,true>,unsigned int,re::Hash<re::Pair<unsigned long long,unsigned long long,true>>,re::EqualTo<re::Pair<unsigned long long,unsigned long long,true>>,true,false>::deinit(this + 3);
  *this = &unk_2873F3D98;
  objc_destructInstance(this + 8);

  JUMPOUT(0x266708EC0);
}

uint64_t re::BucketArray<unsigned long,4ul>::deinit(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      re::BucketArray<unsigned long,4ul>::operator[](a1, i);
    }
  }

  while (*(a1 + 8))
  {
    re::BucketArray<unsigned long,4ul>::freeElementBucket(a1);
  }

  result = re::DynamicOverflowArray<unsigned long *,2ul>::deinit(a1);
  *(a1 + 40) = 0;
  ++*(a1 + 48);
  return result;
}

uint64_t re::BucketArray<unsigned long,4ul>::freeElementBucket(uint64_t *a1)
{
  v2 = *a1;
  if (a1[2])
  {
    v3 = a1 + 3;
  }

  else
  {
    v3 = a1[4];
  }

  result = (*(*v2 + 40))(v2, v3[a1[1] - 1]);
  v5 = *(a1 + 4);
  --a1[1];
  *(a1 + 4) = v5 + 2;
  return result;
}

uint64_t re::DynamicOverflowArray<unsigned long *,2ul>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 16);
    if ((v3 & 1) == 0)
    {
      result = (*(*result + 40))(result, *(a1 + 32));
      v3 = *(a1 + 16);
    }

    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = (v3 | 1) + 2;
  }

  return result;
}

uint64_t re::BucketArray<re::SyncObjectShortIDBlock,4ul>::deinit(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      v4 = re::BucketArray<re::SyncObjectShortIDBlock,4ul>::operator[](a1, i);
      if (*v4)
      {
        if (v4[4])
        {
          (*(**v4 + 40))(*v4);
        }

        v4[4] = 0;
        v4[1] = 0;
        v4[2] = 0;
        *v4 = 0;
        ++*(v4 + 6);
      }
    }
  }

  while (*(a1 + 8))
  {
    re::BucketArray<unsigned long,4ul>::freeElementBucket(a1);
  }

  result = re::DynamicOverflowArray<unsigned long *,2ul>::deinit(a1);
  *(a1 + 40) = 0;
  ++*(a1 + 48);
  return result;
}

double re::HashTable<re::Pair<unsigned long long,unsigned long long,true>,unsigned int,re::Hash<re::Pair<unsigned long long,unsigned long long,true>>,re::EqualTo<re::Pair<unsigned long long,unsigned long long,true>>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = a1[2];
      do
      {
        if ((*v4 & 0x80000000) != 0)
        {
          *v4 &= ~0x80000000;
        }

        v4 += 10;
        --v3;
      }

      while (v3);
    }

    (*(*v2 + 40))(v2, a1[1]);
    *(a1 + 8) = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *&result = 0x7FFFFFFFLL;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return result;
}

void *re::DynamicArray<unsigned int>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (*v5)
      {
        if (!a2)
        {
          v7 = 0;
          if (!v3)
          {
            goto LABEL_9;
          }

          goto LABEL_8;
        }

        if (a2 >> 62)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 4, a2);
          _os_crash();
          __break(1u);
        }

        else
        {
          v2 = 4 * a2;
          result = (*(*result + 32))(result, 4 * a2, 4);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
LABEL_9:
              v5[4] = v7;
              v5[1] = a2;
              return result;
            }

LABEL_8:
            memcpy(v7, v5[4], 4 * v5[2]);
            result = (*(**v5 + 40))(*v5, v5[4]);
            goto LABEL_9;
          }
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
      }

      else
      {
        result = re::DynamicArray<unsigned int>::setCapacity(v5, a2);
        ++*(v5 + 6);
      }
    }
  }

  return result;
}

uint64_t re::BucketArray<re::SyncObjectShortIDBlock,4ul>::addUninitialized(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = *(a1 + 8);
  if (v2 + 1 > 4 * v3)
  {
    re::BucketArray<re::SyncObjectShortIDBlock,4ul>::setBucketsCapacity(a1, (v2 + 4) >> 2);
    v3 = *(a1 + 8);
  }

  if (v3 <= v2 >> 2)
  {
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 16))
  {
    v4 = a1 + 24;
  }

  else
  {
    v4 = *(a1 + 32);
  }

  v5 = *(v4 + 8 * (v2 >> 2));
  ++*(a1 + 40);
  ++*(a1 + 48);
  v6 = *MEMORY[0x277D85DE8];
  return v5 + 48 * (v2 & 3);
}

void *re::BucketArray<re::SyncObjectShortIDBlock,4ul>::setBucketsCapacity(void *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (result[5] < 4 * a2)
    {
      while (1)
      {
        v4 = v3[1];
        if (v4 <= a2)
        {
          break;
        }

        result = re::BucketArray<unsigned long,4ul>::freeElementBucket(v3);
      }

      if (v4 < a2)
      {
        v5 = v3 + 3;
        do
        {
          result = (*(**v3 + 32))(*v3, 192, 0);
          v6 = result;
          if (*v3)
          {
            v7 = v3[1];
            v8 = *(v3 + 4);
            if ((v8 & 1) == 0)
            {
              v9 = *v5;
              v11 = v7 >= *v5;
              v10 = v7 + 1;
              v11 = !v11 || v9 >= v10;
              if (v11)
              {
                goto LABEL_22;
              }

              v12 = 2 * v9;
              goto LABEL_18;
            }

            v10 = v7 + 1;
            if (v10 >= 3)
            {
              v12 = 4;
LABEL_18:
              if (v12 <= v10)
              {
                v14 = v10;
              }

              else
              {
                v14 = v12;
              }

              result = re::DynamicOverflowArray<re::SyncObjectShortIDBlock *,2ul>::setCapacity(v3, v14);
              v8 = *(v3 + 4);
            }
          }

          else
          {
            v13 = v3[1];
            result = re::DynamicOverflowArray<re::SyncObjectShortIDBlock *,2ul>::setCapacity(v3, v13 + 1);
            v8 = *(v3 + 4) + 2;
            *(v3 + 4) = v8;
          }

LABEL_22:
          v15 = v3 + 3;
          if ((v8 & 1) == 0)
          {
            v15 = v3[4];
          }

          v16 = v3[1];
          v15[v16++] = v6;
          v3[1] = v16;
          *(v3 + 4) += 2;
        }

        while (v16 < a2);
      }
    }
  }

  else
  {
    re::DynamicOverflowArray<re::SyncObjectShortIDBlock *,2ul>::setCapacity(v3, a2);
    *(v3 + 4) += 2;
    v3[5] = 0;
    result = re::BucketArray<re::SyncObjectShortIDBlock,4ul>::setBucketsCapacity(v3, a2);
    ++*(v3 + 12);
  }

  return result;
}

void *re::DynamicOverflowArray<re::SyncObjectShortIDBlock *,2ul>::setCapacity(void *result, unint64_t a2)
{
  v4 = result;
  v5 = *result;
  if (a2 && !v5)
  {
    result = re::DynamicOverflowArray<re::SyncObjectShortIDBlock *,2ul>::setCapacity(v4, a2);
    v6 = *(v4 + 4) + 2;
LABEL_4:
    *(v4 + 4) = v6;
    return result;
  }

  v7 = *(result + 4);
  if (v7)
  {
    v8 = 2;
  }

  else
  {
    v8 = result[3];
  }

  if (v8 != a2)
  {
    v9 = result[1];
    if (v9 <= a2 && (a2 > 2 || (v7 & 1) == 0))
    {
      if (a2 < 3)
      {
        v14 = result + 3;
        v15 = v4[4];
        if (v7)
        {
          v16 = v4 + 3;
        }

        else
        {
          v16 = v4[4];
        }

        memcpy(v14, v16, 8 * v9);
        result = (*(*v5 + 40))(v5, v15);
        v6 = *(v4 + 4) | 1;
        goto LABEL_4;
      }

      if (a2 >> 61)
      {
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicOverflowArray<T, N>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 646, 8, a2);
        _os_crash();
        __break(1u);
      }

      else
      {
        v2 = 8 * a2;
        v10 = (*(*v5 + 32))(*result, 8 * a2, 8);
        if (v10)
        {
          v12 = v10;
          if (v4[2])
          {
            v13 = v4 + 3;
          }

          else
          {
            v13 = v4[4];
          }

          result = memcpy(v10, v13, 8 * v4[1]);
          v17 = *(v4 + 4);
          if ((v17 & 1) == 0)
          {
            result = (*(**v4 + 40))(*v4, v4[4]);
            v17 = *(v4 + 4);
          }

          *(v4 + 4) = v17 & 0xFFFFFFFE;
          v4[3] = a2;
          v4[4] = v12;
          return result;
        }
      }

      re::internal::assertLog(6, v11, "assertion failure: '%s' (%s:line %i) DynamicOverflowArray<T, N> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 650, v2, *(*v4 + 8));
      result = _os_crash();
      __break(1u);
    }
  }

  return result;
}

uint64_t re::BucketArray<unsigned long,4ul>::addUninitialized(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = *(a1 + 8);
  if (v2 + 1 > 4 * v3)
  {
    re::BucketArray<unsigned long,4ul>::setBucketsCapacity(a1, (v2 + 4) >> 2);
    v3 = *(a1 + 8);
  }

  if (v3 <= v2 >> 2)
  {
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 16))
  {
    v4 = a1 + 24;
  }

  else
  {
    v4 = *(a1 + 32);
  }

  v5 = *(v4 + 8 * (v2 >> 2));
  ++*(a1 + 40);
  ++*(a1 + 48);
  v6 = *MEMORY[0x277D85DE8];
  return v5 + 8 * (v2 & 3);
}

void *re::BucketArray<unsigned long,4ul>::setBucketsCapacity(void *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (result[5] < 4 * a2)
    {
      while (1)
      {
        v4 = v3[1];
        if (v4 <= a2)
        {
          break;
        }

        result = re::BucketArray<unsigned long,4ul>::freeElementBucket(v3);
      }

      if (v4 < a2)
      {
        v5 = v3 + 3;
        do
        {
          result = (*(**v3 + 32))(*v3, 32, 0);
          v6 = result;
          if (*v3)
          {
            v7 = v3[1];
            v8 = *(v3 + 4);
            if ((v8 & 1) == 0)
            {
              v9 = *v5;
              v11 = v7 >= *v5;
              v10 = v7 + 1;
              v11 = !v11 || v9 >= v10;
              if (v11)
              {
                goto LABEL_22;
              }

              v12 = 2 * v9;
              goto LABEL_18;
            }

            v10 = v7 + 1;
            if (v10 >= 3)
            {
              v12 = 4;
LABEL_18:
              if (v12 <= v10)
              {
                v14 = v10;
              }

              else
              {
                v14 = v12;
              }

              result = re::DynamicOverflowArray<re::SyncObjectShortIDBlock *,2ul>::setCapacity(v3, v14);
              v8 = *(v3 + 4);
            }
          }

          else
          {
            v13 = v3[1];
            result = re::DynamicOverflowArray<re::SyncObjectShortIDBlock *,2ul>::setCapacity(v3, v13 + 1);
            v8 = *(v3 + 4) + 2;
            *(v3 + 4) = v8;
          }

LABEL_22:
          v15 = v3 + 3;
          if ((v8 & 1) == 0)
          {
            v15 = v3[4];
          }

          v16 = v3[1];
          v15[v16++] = v6;
          v3[1] = v16;
          *(v3 + 4) += 2;
        }

        while (v16 < a2);
      }
    }
  }

  else
  {
    re::DynamicOverflowArray<re::SyncObjectShortIDBlock *,2ul>::setCapacity(v3, a2);
    *(v3 + 4) += 2;
    v3[5] = 0;
    result = re::BucketArray<unsigned long,4ul>::setBucketsCapacity(v3, a2);
    ++*(v3 + 12);
  }

  return result;
}

uint64_t re::HashTable<re::Pair<unsigned long long,unsigned long long,true>,unsigned int,re::Hash<re::Pair<unsigned long long,unsigned long long,true>>,re::EqualTo<re::Pair<unsigned long long,unsigned long long,true>>,true,false>::findEntry<re::Pair<unsigned long long,unsigned long long,true>>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = *a2;
  v6 = 0x7FFFFFFF;
  if (!*a2)
  {
    goto LABEL_16;
  }

  v5 = a5 % *(a2 + 24);
  v7 = *(*(a2 + 8) + 4 * v5);
  if (v7 == 0x7FFFFFFF)
  {
    goto LABEL_16;
  }

  v8 = *(a2 + 16);
  v9 = v8 + 40 * v7;
  v11 = *(v9 + 8);
  v10 = *(v9 + 16);
  if (v11 == a3 && v10 == a4)
  {
    v6 = *(*(a2 + 8) + 4 * v5);
LABEL_16:
    v7 = 0x7FFFFFFF;
    goto LABEL_17;
  }

  v13 = *(v8 + 40 * v7) & 0x7FFFFFFF;
  v6 = 0x7FFFFFFF;
  if (v13 != 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
    while (1)
    {
      v14 = v13;
      v15 = v8 + 40 * v13;
      v17 = *(v15 + 8);
      v16 = *(v15 + 16);
      if (v17 == a3 && v16 == a4)
      {
        break;
      }

      v13 = *(v8 + 40 * v14) & 0x7FFFFFFF;
      v7 = v14;
      if (v13 == 0x7FFFFFFF)
      {
        v7 = v14;
        goto LABEL_17;
      }
    }

    v6 = v14;
  }

LABEL_17:
  *result = a5;
  *(result + 8) = v5;
  *(result + 12) = v6;
  *(result + 16) = v7;
  return result;
}

unint64_t re::Hash<re::Pair<unsigned long long,unsigned long long,true>>::operator()(uint64_t a1, void *a2)
{
  v2 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v3 = (0x94D049BB133111EBLL * (v2 ^ (v2 >> 27))) ^ ((0x94D049BB133111EBLL * (v2 ^ (v2 >> 27))) >> 31);
  v4 = 0xBF58476D1CE4E5B9 * (a2[1] ^ (a2[1] >> 30));
  return (((0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) ^ ((0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) >> 31)) + (v3 << 6) + (v3 >> 2) - 0x61C8864680B583E9) ^ v3;
}

uint64_t re::HashTable<re::Pair<unsigned long long,unsigned long long,true>,unsigned int,re::Hash<re::Pair<unsigned long long,unsigned long long,true>>,re::EqualTo<re::Pair<unsigned long long,unsigned long long,true>>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      v7 = *(a1 + 28);
      v8 = 2 * v7;
      v9 = *a1;
      if (*a1)
      {
        if (v8)
        {
          v10 = v5 == v8;
        }

        else
        {
          v10 = 1;
        }

        if (!v10 && (v7 & 0x80000000) == 0)
        {
          memset(v25, 0, 36);
          *&v25[36] = 0x7FFFFFFFLL;
          re::HashTable<re::SharedPtr<re::SyncObject>,re::Pair<unsigned long long,unsigned long long,true>,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::init(v25, v9, v8);
          v11 = *v25;
          *v25 = *a1;
          *a1 = v11;
          v12 = *&v25[16];
          v13 = *(a1 + 16);
          *&v25[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v25[24];
          *&v25[24] = *(a1 + 24);
          v14 = *&v25[32];
          *(a1 + 24) = v15;
          ++*&v25[40];
          v16 = v14;
          if (v14)
          {
            v17 = v13 + 24;
            do
            {
              if ((*(v17 - 24) & 0x80000000) != 0)
              {
                v18 = re::HashTable<re::Pair<unsigned long long,unsigned long long,true>,unsigned int,re::Hash<re::Pair<unsigned long long,unsigned long long,true>>,re::EqualTo<re::Pair<unsigned long long,unsigned long long,true>>,true,false>::allocEntry(a1, *(v17 + 8) % *(a1 + 24));
                *(v18 + 8) = *(v17 - 16);
                *(v18 + 24) = *v17;
              }

              v17 += 40;
              --v16;
            }

            while (v16);
          }

          re::HashTable<re::Pair<unsigned long long,unsigned long long,true>,unsigned int,re::Hash<re::Pair<unsigned long long,unsigned long long,true>>,re::EqualTo<re::Pair<unsigned long long,unsigned long long,true>>,true,false>::deinit(v25);
        }
      }

      else
      {
        if (v8)
        {
          v21 = 2 * v7;
        }

        else
        {
          v21 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v19 = *(a1 + 16);
    v20 = *(v19 + 40 * v5);
  }

  else
  {
    v19 = *(a1 + 16);
    v20 = *(v19 + 40 * v5);
    *(a1 + 36) = v20 & 0x7FFFFFFF;
  }

  v22 = v19 + 40 * v5;
  *v22 = v20 | 0x80000000;
  v23 = *(a1 + 8);
  *v22 = *(v23 + 4 * a2) | 0x80000000;
  *(v23 + 4 * a2) = v5;
  *(v22 + 32) = a3;
  ++*(a1 + 28);
  return v19 + 40 * v5;
}

uint64_t re::HashTable<unsigned int,re::Pair<unsigned long long,unsigned long long,true>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::findEntry<unsigned int>(uint64_t result, uint64_t a2, int a3, unint64_t a4)
{
  v4 = *a2;
  v5 = 0x7FFFFFFF;
  if (!*a2)
  {
    goto LABEL_5;
  }

  v4 = a4 % *(a2 + 24);
  v6 = *(*(a2 + 8) + 4 * v4);
  if (v6 == 0x7FFFFFFF)
  {
    goto LABEL_5;
  }

  v7 = *(a2 + 16);
  if (*(v7 + 32 * v6 + 4) == a3)
  {
    v5 = *(*(a2 + 8) + 4 * v4);
LABEL_5:
    LODWORD(v6) = 0x7FFFFFFF;
    goto LABEL_6;
  }

  v8 = *(v7 + 32 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + 32 * v8 + 4) == a3)
      {
        break;
      }

      v8 = *(v7 + 32 * v8) & 0x7FFFFFFF;
      LODWORD(v6) = v9;
      if (v8 == 0x7FFFFFFF)
      {
        LODWORD(v6) = v9;
        goto LABEL_6;
      }
    }

    v5 = v8;
  }

LABEL_6:
  *result = a4;
  *(result + 8) = v4;
  *(result + 12) = v5;
  *(result + 16) = v6;
  return result;
}

uint64_t re::HashTable<unsigned int,re::Pair<unsigned long long,unsigned long long,true>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      v7 = *(a1 + 28);
      v8 = 2 * v7;
      v9 = *a1;
      if (*a1)
      {
        if (v8)
        {
          v10 = v5 == v8;
        }

        else
        {
          v10 = 1;
        }

        if (!v10 && (v7 & 0x80000000) == 0)
        {
          memset(v24, 0, 36);
          *&v24[36] = 0x7FFFFFFFLL;
          re::HashTable<re::StringID,re::DataArrayHandle<re::internal::TypeInfoIndex>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v24, v9, v8);
          v11 = *v24;
          *v24 = *a1;
          *a1 = v11;
          v12 = *&v24[16];
          v13 = *(a1 + 16);
          *&v24[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v24[24];
          *&v24[24] = *(a1 + 24);
          v14 = *&v24[32];
          *(a1 + 24) = v15;
          ++*&v24[40];
          v16 = v14;
          if (v14)
          {
            do
            {
              if ((*v13 & 0x80000000) != 0)
              {
                v17 = re::HashTable<unsigned int,re::Pair<unsigned long long,unsigned long long,true>,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::allocEntry(a1, *(v13 + 24) % *(a1 + 24));
                *(v17 + 4) = *(v13 + 4);
                *(v17 + 8) = *(v13 + 8);
              }

              v13 += 32;
              --v16;
            }

            while (v16);
          }

          re::HashTable<unsigned long long,void *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v24);
        }
      }

      else
      {
        if (v8)
        {
          v20 = 2 * v7;
        }

        else
        {
          v20 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v18 = *(a1 + 16);
    v19 = *(v18 + 32 * v5);
  }

  else
  {
    v18 = *(a1 + 16);
    v19 = *(v18 + 32 * v5);
    *(a1 + 36) = v19 & 0x7FFFFFFF;
  }

  v21 = v18 + 32 * v5;
  *v21 = v19 | 0x80000000;
  v22 = *(a1 + 8);
  *v21 = *(v22 + 4 * a2) | 0x80000000;
  *(v21 + 24) = a3;
  *(v22 + 4 * a2) = v5;
  ++*(a1 + 28);
  return v18 + 32 * v5;
}

char *PacketUtils::move(PacketUtils *this, os_unfair_lock_s **a2, re::PacketPool **a3, re::Transport *a4)
{
  v4 = this;
  if (a2 != a3)
  {
    v6 = re::PacketPool::allocate(a3[48], (*(this + 6) + 3));
    re::Packet::offsetBy(v6, 3);
    v7 = *(v6 + 1);
    *(v7 + 2) = 0;
    *v7 = 0;
    v8 = *(v4 + 6);
    *(v6 + 6) = v8;
    memcpy(*(v6 + 2), *(v4 + 2), v8);
    re::PacketPool::free(a2[48], v4);
    return v6;
  }

  return v4;
}

void re::Session::~Session(re::Session *this)
{
  *this = &unk_2873F5090;
  *(this + 3) = &unk_2873F5128;
  if (*(this + 2272) == 1)
  {
    re::Session::deinit(this);
  }

  *(this + 941) = &unk_2873F57D8;
  v2 = (this + 7592);
  v3 = -96;
  do
  {
    v4.n128_f64[0] = re::Queue<re::Function<void ()(void)>>::deinit(v2);
    v2 -= 6;
    v3 += 48;
  }

  while (v3);
  v5 = *(this + 940);
  if (v5)
  {

    *(this + 940) = 0;
  }

  if (*(this + 929))
  {
    re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 7432);
  }

  v6 = *(this + 934);
  if (v6)
  {
    if (*(this + 938))
    {
      (*(*v6 + 40))(v6, v4);
    }

    *(this + 938) = 0;
    *(this + 935) = 0;
    *(this + 936) = 0;
    *(this + 934) = 0;
    ++*(this + 1874);
  }

  re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 7432);
  v7 = *(this + 928);
  if (v7)
  {

    *(this + 928) = 0;
  }

  v8 = *(this + 403);
  if (v8)
  {
    if (*(this + 407))
    {
      (*(*v8 + 40))(v8);
    }

    *(this + 407) = 0;
    *(this + 404) = 0;
    *(this + 405) = 0;
    *(this + 403) = 0;
    ++*(this + 812);
  }

  re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 3184);
  re::DynamicArray<re::Session::BacklogItem>::deinit(this + 3144);
  v9 = re::HashSetBase<re::Pair<unsigned long long,unsigned long long,true>,re::Pair<unsigned long long,unsigned long long,true>,re::internal::ValueAsKey<re::Pair<unsigned long long,unsigned long long,true>>,re::Hash<re::Pair<unsigned long long,unsigned long long,true>>,re::EqualTo<re::Pair<unsigned long long,unsigned long long,true>>,true,false>::deinit(this + 386);
  v10 = *(this + 381);
  if (v10)
  {
    if (*(this + 385))
    {
      (*(*v10 + 40))(v10, v9);
    }

    *(this + 385) = 0;
    *(this + 382) = 0;
    *(this + 383) = 0;
    *(this + 381) = 0;
    ++*(this + 768);
  }

  v11 = *(this + 380);
  if (v11)
  {

    *(this + 380) = 0;
  }

  re::Transport::~Transport((this + 2320));
  re::DynamicArray<re::SharedPtr<re::SyncObject>>::deinit(this + 2280);
  v12 = *(this + 282);
  if (v12)
  {

    *(this + 282) = 0;
  }

  v13 = *(this + 281);
  if (v13)
  {

    *(this + 281) = 0;
  }

  v14 = *(this + 276);
  if (v14)
  {

    *(this + 276) = 0;
  }

  v15 = *(this + 272);
  if (v15)
  {

    *(this + 272) = 0;
  }

  re::Event<re::Session>::~Event(this + 2056);
  re::Event<re::Session>::~Event(this + 1968);
  re::Event<re::Session>::~Event(this + 1880);
  re::Event<re::Session>::~Event(this + 1792);
  re::Event<re::Session>::~Event(this + 1704);
  re::Event<re::Session>::~Event(this + 1616);
  re::Event<re::Session>::~Event(this + 1528);
  if (*(this + 180))
  {
    re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 1440);
  }

  v16 = *(this + 185);
  if (v16)
  {
    if (*(this + 189))
    {
      (*(*v16 + 40))(v16);
    }

    *(this + 189) = 0;
    *(this + 186) = 0;
    *(this + 187) = 0;
    *(this + 185) = 0;
    ++*(this + 376);
  }

  re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 1440);
  v17 = 880;
  do
  {
    v18 = (this + v17);
    if (*(this + v17 + 472))
    {
      re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit((v18 + 59));
    }

    v19 = v18[64];
    if (v19)
    {
      v20 = this + v17;
      if (*(this + v17 + 544))
      {
        (*(*v19 + 40))(v19);
      }

      *(v20 + 68) = 0;
      v18[65] = 0;
      v18[66] = 0;
      v18[64] = 0;
      ++*(v20 + 134);
    }

    re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit((v18 + 59));
    v17 -= 88;
  }

  while (v17);
  if (*(this + 59))
  {
    re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 472);
  }

  v21 = *(this + 64);
  if (v21)
  {
    if (*(this + 68))
    {
      (*(*v21 + 40))(v21);
    }

    *(this + 68) = 0;
    *(this + 65) = 0;
    *(this + 66) = 0;
    *(this + 64) = 0;
    ++*(this + 134);
  }

  re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 472);
  if (*(this + 48))
  {
    re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 384);
  }

  v22 = *(this + 53);
  if (v22)
  {
    if (*(this + 57))
    {
      (*(*v22 + 40))(v22);
    }

    *(this + 57) = 0;
    *(this + 54) = 0;
    *(this + 55) = 0;
    *(this + 53) = 0;
    ++*(this + 112);
  }

  re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 384);
  if (*(this + 37))
  {
    re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 296);
  }

  v23 = *(this + 42);
  if (v23)
  {
    if (*(this + 46))
    {
      (*(*v23 + 40))(v23);
    }

    *(this + 46) = 0;
    *(this + 43) = 0;
    *(this + 44) = 0;
    *(this + 42) = 0;
    ++*(this + 90);
  }

  re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 296);
  if (*(this + 26))
  {
    re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 208);
  }

  v24 = *(this + 31);
  if (v24)
  {
    if (*(this + 35))
    {
      (*(*v24 + 40))(v24);
    }

    *(this + 35) = 0;
    *(this + 32) = 0;
    *(this + 33) = 0;
    *(this + 31) = 0;
    ++*(this + 68);
  }

  re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 208);
  re::Event<re::Session>::~Event(this + 120);
  re::Event<re::Session>::~Event(this + 32);
  *this = &unk_2873F3D98;
  objc_destructInstance(this + 8);
}

{
  re::Session::~Session(this);

  JUMPOUT(0x266708EC0);
}

BOOL re::Session::init(uint64_t a1, __int128 *a2)
{
  v99 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  *(a1 + 2160) = a2[1];
  *(a1 + 2144) = v4;
  v5 = *(a2 + 4);
  v6 = *(a1 + 2176);
  if (v6 != v5)
  {
    if (v5)
    {
      v7 = (v5 + 8);
      v6 = *(a1 + 2176);
    }

    if (v6)
    {
    }

    *(a1 + 2176) = v5;
  }

  v8 = *(a2 + 40);
  *(a1 + 2200) = *(a2 + 7);
  *(a1 + 2184) = v8;
  re::SharedPtr<re::SyncObject>::reset((a1 + 2208), *(a2 + 8));
  v9 = *(a2 + 72);
  *(a1 + 2228) = *(a2 + 84);
  *(a1 + 2216) = v9;
  re::SharedPtr<re::SyncObject>::reset((a1 + 2248), *(a2 + 13));
  v10 = (a1 + 2256);
  re::SharedPtr<re::SyncObject>::reset((a1 + 2256), *(a2 + 14));
  *(a1 + 2264) = *(a2 + 30);
  if (!*(a1 + 2256))
  {
    v12 = re::globalAllocators(v11);
    v13 = (*(*v12[2] + 32))(v12[2], 24, 8);
    *(v13 + 1) = 0;
    *(v13 + 2) = 0;
    *v13 = 0;
    ArcSharedObject::ArcSharedObject(v13, 0);
    *v13 = &unk_2873F4CA8;
    v14 = *v10;
    *v10 = v13;
    if (v14)
    {
    }
  }

  v15 = *(a1 + 2176);
  if (v15)
  {
    v16 = (v15 + 8);
    v17 = v15;
  }

  else
  {
    re::make::shared::object<re::LeaderElectionLowestPeerID>(v11, &v87);
    v17 = v87;
    v87 = 0;
  }

  v18 = *(a1 + 7424);
  *(a1 + 7424) = v17;
  if (v18)
  {
  }

  if (!v15 && v87)
  {
  }

  v19 = (*(**(a1 + 7424) + 104))(*(a1 + 7424), a1);
  *(a1 + 3032) = 1;
  v20 = re::DynamicArray<re::SharedPtr<re::SyncObject>>::setCapacity((a1 + 2280), 0x80uLL);
  ++*(a1 + 2304);
  v21 = re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::setCapacity((a1 + 32), 0);
  ++*(a1 + 56);
  v22 = re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::setCapacity((a1 + 120), 0);
  ++*(a1 + 144);
  v23 = re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::setCapacity((a1 + 208), 0);
  ++*(a1 + 232);
  v24 = re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::setCapacity((a1 + 296), 0);
  ++*(a1 + 320);
  v25 = re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::setCapacity((a1 + 384), 0);
  ++*(a1 + 408);
  v26 = re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::setCapacity((a1 + 1528), 0);
  ++*(a1 + 1552);
  v27 = re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::setCapacity((a1 + 472), 0);
  ++*(a1 + 496);
  v28 = re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::setCapacity((a1 + 1440), 0);
  ++*(a1 + 1464);
  v29 = re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::setCapacity((a1 + 1704), 0);
  v30 = 0;
  ++*(a1 + 1728);
  do
  {
    v31 = a1 + v30;
    v29 = re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::setCapacity((a1 + v30 + 560), 0);
    ++*(v31 + 584);
    v30 += 88;
  }

  while (v30 != 880);
  v32 = re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::setCapacity((a1 + 1616), 0);
  ++*(a1 + 1640);
  v33 = re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::setCapacity((a1 + 1792), 0);
  ++*(a1 + 1816);
  v34 = re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::setCapacity((a1 + 1880), 0);
  ++*(a1 + 1904);
  v35 = re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::setCapacity((a1 + 1968), 0);
  ++*(a1 + 1992);
  v36 = re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::setCapacity((a1 + 2056), 0);
  ++*(a1 + 2080);
  v37 = re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::setCapacity((a1 + 7432), 0);
  ++*(a1 + 7456);
  v38 = *(a1 + 2256);
  if (v38)
  {
    v37 = (v38 + 8);
  }

  v39 = re::globalAllocators(v37);
  v40 = (*(*v39[2] + 32))(v39[2], 312, 8);
  *v40 = 0u;
  *(v40 + 16) = 0u;
  *(v40 + 32) = 0u;
  *(v40 + 48) = 0u;
  *(v40 + 64) = 0u;
  *(v40 + 80) = 0u;
  *(v40 + 96) = 0u;
  *(v40 + 112) = 0u;
  *(v40 + 128) = 0u;
  *(v40 + 144) = 0u;
  *(v40 + 160) = 0u;
  *(v40 + 176) = 0u;
  *(v40 + 192) = 0u;
  *(v40 + 208) = 0u;
  *(v40 + 224) = 0u;
  *(v40 + 240) = 0u;
  *(v40 + 256) = 0u;
  *(v40 + 272) = 0u;
  *(v40 + 288) = 0u;
  *(v40 + 304) = 0;
  ArcSharedObject::ArcSharedObject(v40, 0);
  *v40 = &unk_2873F69F8;
  *(v40 + 24) = 0;
  *(v40 + 32) = 0;
  *(v40 + 40) = 0;
  *(v40 + 48) = 100000000;
  *(v40 + 56) = 1000;
  *(v40 + 64) = 0;
  *(v40 + 72) = 0;
  *(v40 + 80) = 100000000;
  *(v40 + 200) = 0;
  *(v40 + 208) = 0;
  *(v40 + 216) = 0;
  *(v40 + 88) = 0u;
  *(v40 + 104) = 0u;
  *(v40 + 232) = 0;
  *(v40 + 240) = 0;
  *(v40 + 224) = 0;
  *(v40 + 248) = 0;
  *(v40 + 296) = 0;
  *(v40 + 304) = 0;
  *(v40 + 256) = 0u;
  *(v40 + 272) = 0u;
  *(v40 + 288) = 0;
  v42 = *(a1 + 7520);
  *(a1 + 7520) = v40;
  if (v42)
  {
  }

  *&v84 = a1 + 7432;
  *(&v84 + 1) = 100000000;
  v85 = 1000;
  v86 = v38;
  re::Defaults::intValue("network.session.maxTotalBandwidthBpsLocal", v41, v82);
  if ((v82[0] & 1) != 0 && *(a1 + 2219) == 1)
  {
    *(&v84 + 1) = v83;
    v45 = *re::networkLogObjects(v43);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = *(&v84 + 1);
      _os_log_impl(&dword_26168F000, v45, OS_LOG_TYPE_DEFAULT, "Session: config override netMaxTotalBandwidthBpsLocal=%llu", buf, 0xCu);
    }
  }

  re::Defaults::intValue("network.session.maxTotalBandwidthBpsRemote", v44, v80);
  if (v80[0] == 1 && (*(a1 + 2219) & 1) == 0)
  {
    *(&v84 + 1) = v81;
    v47 = *re::networkLogObjects(v46);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = *(&v84 + 1);
      _os_log_impl(&dword_26168F000, v47, OS_LOG_TYPE_DEFAULT, "Session: config override netMaxTotalBandwidthBpsRemote=%llu", buf, 0xCu);
    }
  }

  re::PacketStatsFilter::init(*(a1 + 7520), &v84);
  *buf = 0;
  *&buf[8] = 0;
  buf[16] = 1;
  memset(v91, 0, sizeof(v91));
  v92 = 0u;
  v93 = 257;
  v94 = a1;
  (*(**(a2 + 8) + 88))(v95);
  v48 = *buf;
  *buf = *v95;
  *v95 = v48;
  if (v48)
  {
  }

  *&buf[8] = *a2;
  buf[16] = *(a2 + 92);
  re::SharedPtr<re::SyncObject>::reset(v91, *(a2 + 13));
  re::SharedPtr<re::SyncObject>::reset(v91 + 1, v38);
  re::SharedPtr<re::SyncObject>::reset(&v92 + 1, *(a1 + 7520));
  LOBYTE(v93) = re::NetworkFeatureFlags::overrideTransportThrottling(*(a2 + 76));
  HIBYTE(v93) = re::NetworkFeatureFlags::overrideMessageFragmentation(*(a2 + 77));
  if (*(a2 + 79))
  {
    v49 = "NetworkReliable";
  }

  else
  {
    DWORD1(v91[1]) = *(a2 + 22);
    v49 = "NetworkUnreliable";
  }

  *(a1 + 3272) = os_log_create("com.apple.re", v49);
  v50 = (*(**(a2 + 8) + 32))(*(a2 + 8));
  *v95 = a1;
  v96 = re::Session::discoveryViewDidJoin;
  v97 = 0;
  v98 = re::Event<re::DiscoveryView,re::SharedPtr<re::DiscoveryIdentity>>::createSubscription<re::Session>(re::Session *,REEventHandlerResult (re::Session::*)(re::DiscoveryView*,re::SharedPtr<re::DiscoveryIdentity>))::{lambda(re::DiscoveryView*,re::Event<re::DiscoveryView,re::SharedPtr<re::DiscoveryIdentity>>::Subscription const&,re::SharedPtr<re::DiscoveryIdentity>&&)#1}::__invoke;
  re::Event<re::DiscoveryView,re::SharedPtr<re::DiscoveryIdentity>>::addSubscription(v50, v95);
  v51 = (*(**(a2 + 8) + 40))(*(a2 + 8));
  *v95 = a1;
  v96 = re::Session::discoveryViewDidLeave;
  v97 = 0;
  v98 = re::Event<re::DiscoveryView,re::SharedPtr<re::DiscoveryIdentity>>::createSubscription<re::Session>(re::Session *,REEventHandlerResult (re::Session::*)(re::DiscoveryView*,re::SharedPtr<re::DiscoveryIdentity>))::{lambda(re::DiscoveryView*,re::Event<re::DiscoveryView,re::SharedPtr<re::DiscoveryIdentity>>::Subscription const&,re::SharedPtr<re::DiscoveryIdentity>&&)#1}::__invoke;
  re::Event<re::DiscoveryView,re::SharedPtr<re::DiscoveryIdentity>>::addSubscription(v51, v95);
  v52 = re::Transport::init(a1 + 2320, buf);
  v53 = v52;
  if (v52)
  {
    if (*(&v92 + 1))
    {

      *(&v92 + 1) = 0;
    }

    if (*(&v91[0] + 1))
    {

      *(&v91[0] + 1) = 0;
    }

    if (*&v91[0])
    {

      *&v91[0] = 0;
    }

    if (*buf)
    {
    }

    v54 = re::make::shared::object<re::RoutingTable>(v52, buf);
    v55 = *(a1 + 3040);
    *(a1 + 3040) = *buf;
    *buf = v55;
    if (v55)
    {
    }

    (*(**(a1 + 7424) + 48))(*(a1 + 7424));
    if (*(a2 + 72))
    {
      v56 = *(a1 + 3280) | 2;
    }

    else
    {
      v56 = *(a1 + 3280);
    }

    v57 = *(a2 + 30);
    if (!v57)
    {
      v57 = 56;
    }

    *(a1 + 3280) = v57 | v56;
    v58 = re::Session::peerID(a1);
    v59 = re::globalAllocators(v58);
    v60 = (*(*v59[2] + 32))(v59[2], 160, 8);
    *buf = re::SessionParticipant::SessionParticipant(v60, v58, *(a1 + 3280), *(a2 + 6), *(a2 + 7));
    re::DynamicArray<re::SharedPtr<re::SessionParticipant>>::add((a1 + 2280), buf);
    if (*buf)
    {
    }

    if ((*(**(a2 + 8) + 48))(*(a2 + 8)))
    {
      v61 = 0;
      do
      {
        (*(**(a2 + 8) + 56))(&v79);
        re::Session::addIdentity(a1, &v79);
        if (v79)
        {

          v79 = 0;
        }

        ++v61;
      }

      while (v61 < (*(**(a2 + 8) + 48))(*(a2 + 8)));
    }

    re::Session::localParticipant(buf, a1);
    v62 = *(*buf + 152);

    if (!v62)
    {
      v64 = *re::networkLogObjects(v63);
      if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26168F000, v64, OS_LOG_TYPE_DEFAULT, "No local identity set for session.", buf, 2u);
      }
    }

    v65 = *(a1 + 2172);
    if (v65)
    {
      v66 = *(a1 + 2240);
      if (v66 <= 1)
      {
        v66 = 1;
      }

      *(a1 + 3296) = v65 / v66;
    }

    re::Session::stateSet(a1, 1);
    *(a1 + 2272) = 1;
    v68 = *re::networkLogObjects(v67);
    v69 = os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT);
    if (v69)
    {
      v70 = *(a2 + 75);
      v71 = *(a2 + 79);
      v72 = *(a2 + 20);
      v73 = *(a2 + 21);
      v74 = *(a2 + 22);
      *buf = 134219264;
      *&buf[4] = a1;
      *&buf[12] = 1024;
      *&buf[14] = v70;
      v89 = 1024;
      v90 = v71;
      LOWORD(v91[0]) = 1024;
      *(v91 + 2) = v72;
      WORD3(v91[0]) = 1024;
      DWORD2(v91[0]) = v73;
      WORD6(v91[0]) = 1024;
      *(v91 + 14) = v74;
      _os_log_impl(&dword_26168F000, v68, OS_LOG_TYPE_DEFAULT, "Session: initialized (%p) {isLocal=%d, useReliableSync=%d, resendPeriodMs=%u, syncPacketSizeLimit=%u, syncInboundQueueLimit=%u}", buf, 0x2Au);
    }

    v75 = *re::networkLogObjects(v69);
    if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      *&buf[4] = *(&v84 + 1);
      _os_log_impl(&dword_26168F000, v75, OS_LOG_TYPE_INFO, "Session: max bandwidth: %llu bps", buf, 0xCu);
    }
  }

  else
  {
    v76 = *re::networkLogObjects(v52);
    if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
    {
      *v95 = 0;
      _os_log_error_impl(&dword_26168F000, v76, OS_LOG_TYPE_ERROR, "Cannot initialize transport.", v95, 2u);
    }

    if (*(&v92 + 1))
    {

      *(&v92 + 1) = 0;
    }

    if (*(&v91[0] + 1))
    {

      *(&v91[0] + 1) = 0;
    }

    if (*&v91[0])
    {

      *&v91[0] = 0;
    }

    if (*buf)
    {
    }
  }

  if (v38)
  {
  }

  v77 = *MEMORY[0x277D85DE8];
  return v53;
}

uint64_t re::Session::discoveryViewDidJoin(re *a1, uint64_t a2, uint64_t *a3)
{
  v3 = a1;
  v8[5] = *MEMORY[0x277D85DE8];
  v4 = *a3;
  if (*a3)
  {
    a1 = (v4 + 8);
  }

  v5 = re::globalAllocators(a1)[2];
  v8[2] = v4;
  v8[3] = v5;
  v8[0] = &unk_2873F5220;
  v8[1] = v3;
  v8[4] = v8;
  if ((*(v3 + 7648) & 1) == 0)
  {
    re::network::EventQueue<re::Function<void ()(void)>>::push(v3 + 1884, v8);
  }

  re::FunctionBase<24ul,void ()(void)>::destroyCallable(v8);
  v6 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t re::Session::discoveryViewDidLeave(re *a1, uint64_t a2, uint64_t *a3)
{
  v3 = a1;
  v8[5] = *MEMORY[0x277D85DE8];
  v4 = *a3;
  if (*a3)
  {
    a1 = (v4 + 8);
  }

  v5 = re::globalAllocators(a1)[2];
  v8[2] = v4;
  v8[3] = v5;
  v8[0] = &unk_2873F5278;
  v8[1] = v3;
  v8[4] = v8;
  if ((*(v3 + 7648) & 1) == 0)
  {
    re::network::EventQueue<re::Function<void ()(void)>>::push(v3 + 1884, v8);
  }

  re::FunctionBase<24ul,void ()(void)>::destroyCallable(v8);
  v6 = *MEMORY[0x277D85DE8];
  return 0;
}

void re::HashSetBase<re::Pair<unsigned long long,unsigned long long,true>,re::Pair<unsigned long long,unsigned long long,true>,re::internal::ValueAsKey<re::Pair<unsigned long long,unsigned long long,true>>,re::Hash<re::Pair<unsigned long long,unsigned long long,true>>,re::EqualTo<re::Pair<unsigned long long,unsigned long long,true>>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
{
  v4 = 245;
  v5 = &re::internal::PrimeHelper::s_primes;
  do
  {
    v6 = v4 >> 1;
    v7 = &v5[v4 >> 1];
    v9 = *v7;
    v8 = v7 + 1;
    v4 += ~(v4 >> 1);
    if (v9 < a3)
    {
      v5 = v8;
    }

    else
    {
      v4 = v6;
    }
  }

  while (v4);
  v10 = *v5;
  *a1 = a2;
  v11 = (4 * v10 + 15) & 0x7FFFFFFF0;
  v12 = (*(*a2 + 32))(a2, v11 + 32 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &unk_261710510, 4 * v10);
    }

    *(a1 + 16) = &v14[v11];
    *(a1 + 24) = v10;
    *(a1 + 40) = 0;
  }

  else
  {
    re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Out of memory.", "temp", "init", 601);
    _os_crash();
    __break(1u);
  }
}

_anonymous_namespace_ *re::DynamicArray<re::SharedPtr<re::SessionParticipant>>::add(_anonymous_namespace_ *result, void *a2)
{
  v3 = result;
  v5 = *(result + 1);
  v4 = *(result + 2);
  if (v4 >= v5)
  {
    v6 = v4 + 1;
    if (v5 < v4 + 1)
    {
      if (*result)
      {
        v7 = 2 * v5;
        if (!v5)
        {
          v7 = 8;
        }

        if (v7 <= v6)
        {
          v8 = v6;
        }

        else
        {
          v8 = v7;
        }

        result = re::DynamicArray<re::SharedPtr<re::SyncObject>>::setCapacity(result, v8);
      }

      else
      {
        result = re::DynamicArray<re::SharedPtr<re::SyncObject>>::setCapacity(v3, v6);
        ++*(v3 + 6);
      }
    }

    v4 = *(v3 + 2);
  }

  *(*(v3 + 4) + 8 * v4) = *a2;
  *a2 = 0;
  *(v3 + 2) = v4 + 1;
  ++*(v3 + 6);
  return result;
}

uint64_t re::Session::peerID(re::Session *this)
{
  v1 = *(this + 380);
  if (v1)
  {
    return *(v1 + 24);
  }

  v3 = *re::networkLogObjects(this);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_26168F000, v3, OS_LOG_TYPE_INFO, "Routing table is nil, returning kInvalidPeerID", v4, 2u);
  }

  return 0;
}

void re::Session::addIdentity(uint64_t a1, uint64_t *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  if ((*(**a2 + 48))())
  {
    re::Session::localParticipant(buf, a1);
    v4 = *buf;
    v5 = *a2;
    if (*a2)
    {
      v6 = (v5 + 8);
      re::SharedPtr<re::SyncObject>::reset((v4 + 152), v5);

      if (!v4)
      {
        goto LABEL_45;
      }
    }

    else
    {
      re::SharedPtr<re::SyncObject>::reset((*buf + 152), 0);
      if (!v4)
      {
        goto LABEL_45;
      }
    }

    goto LABEL_45;
  }

  v7 = (*(**a2 + 40))(&v26);
  v8 = *(a1 + 3160);
  if (!v8)
  {
LABEL_22:
    v17 = *re::networkLogObjects(v7);
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    if (v18)
    {
      v19 = (*(**a2 + 32))();
      if (v27)
      {
        v20 = v29;
      }

      else
      {
        v20 = v28;
      }

      *buf = 136315394;
      *&buf[4] = v19;
      *&buf[12] = 2080;
      *&buf[14] = v20;
      _os_log_impl(&dword_26168F000, v17, OS_LOG_TYPE_DEFAULT, "No pending connection for identity '%s (%s)'. Will initiate a new one.", buf, 0x16u);
    }

    *(&v42 + 1) = 0;
    memset(buf, 0, 28);
    v40 = 0u;
    v41 = 0u;
    LODWORD(v42) = 0;
    re::DynamicArray<unsigned char>::setCapacity(&v40 + 1, 0);
    LODWORD(v42) = v42 + 1;
    *buf = re::Transport::connect((a1 + 2320), &v26);
    *&v40 = (*(**(a1 + 2256) + 32))(*(a1 + 2256));
    re::SharedPtr<re::SyncObject>::reset(&buf[16], *a2);
    re::DynamicArray<re::Session::BacklogItem>::add(a1 + 3144, buf);
    if (*(&v40 + 1))
    {
      if (*(&v42 + 1))
      {
        (*(**(&v40 + 1) + 40))();
      }

      *(&v42 + 1) = 0;
      v41 = 0uLL;
      *(&v40 + 1) = 0;
      LODWORD(v42) = v42 + 1;
    }

    if (*&buf[16])
    {
    }

    goto LABEL_42;
  }

  v9 = 0;
  v10 = 0;
  while (1)
  {
    v11 = *(*(a1 + 3176) + v9);
    if (v11)
    {
      break;
    }

LABEL_21:
    ++v10;
    v9 += 80;
    if (v10 >= v8)
    {
      goto LABEL_22;
    }
  }

  re::Transport::connectionAddress((a1 + 2320), v11, buf);
  if (v27)
  {
    v12 = v29;
  }

  else
  {
    v12 = v28;
  }

  v13 = buf[8] & 1;
  if (buf[8])
  {
    v14 = *&buf[16];
  }

  else
  {
    v14 = &buf[9];
  }

  v15 = strcmp(v12, v14);
  v7 = *buf;
  if (*buf)
  {
    v16 = v13 == 0;
  }

  else
  {
    v16 = 1;
  }

  if (!v16)
  {
    v7 = (*(**buf + 40))();
  }

  if (v15)
  {
    v8 = *(a1 + 3160);
    goto LABEL_21;
  }

  v21 = *re::networkLogObjects(v7);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = (*(**a2 + 32))();
    if (v27)
    {
      v23 = v29;
    }

    else
    {
      v23 = v28;
    }

    *buf = 136315394;
    *&buf[4] = v22;
    *&buf[12] = 2080;
    *&buf[14] = v23;
    _os_log_impl(&dword_26168F000, v21, OS_LOG_TYPE_DEFAULT, "Found backlog item for identity: %s (%s).", buf, 0x16u);
  }

  v24 = *(a1 + 3160);
  if (v24 <= v10)
  {
    v30 = 0;
    v41 = 0u;
    v42 = 0u;
    v40 = 0u;
    memset(buf, 0, sizeof(buf));
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    v31 = 136315906;
    v32 = "operator[]";
    v33 = 1024;
    v34 = 789;
    v35 = 2048;
    v36 = v10;
    v37 = 2048;
    v38 = v24;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  re::SharedPtr<re::SyncObject>::reset((*(a1 + 3176) + v9 + 16), *a2);
  re::Session::stateEvent(a1, 3);
LABEL_42:
  if (v26 && (v27 & 1) != 0)
  {
    (*(*v26 + 40))();
  }

LABEL_45:
  v25 = *MEMORY[0x277D85DE8];
}

void *re::Session::localParticipant(void *this, uint64_t a2)
{
  v5 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 2296))
  {
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v2 = **(a2 + 2312);
  *this = v2;
  if (v2)
  {
    v3 = *MEMORY[0x277D85DE8];

    return (v2 + 8);
  }

  else
  {
    v4 = *MEMORY[0x277D85DE8];
  }

  return this;
}

void re::Session::stateSet(int *a1, int a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = *re::networkLogObjects(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = v5;
    v10 = 2080;
    v11 = v6;
    _os_log_impl(&dword_26168F000, v4, OS_LOG_TYPE_DEFAULT, "Session: changing state %s->%s", &v8, 0x16u);
  }

  re::Session::stateEvent(a1, 1);
  a1[816] = a2;
  re::Session::stateEvent(a1, 0);
  v7 = *MEMORY[0x277D85DE8];
}

void re::Session::deinit(re::Session *this)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*(this + 2272) == 1)
  {
    if (*(this + 816) != 3)
    {
      re::Session::stopSession(this, 1);
    }

    re::Event<re::Session>::raise(this + 32, this);
    *(this + 2272) = 0;
    re::Transport::deinit((this + 2320));
    re::DynamicArray<re::Session::BacklogItem>::deinit(this + 3144);
    re::DynamicArray<re::SharedPtr<re::SyncObject>>::deinit(this + 2280);
    re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 3184);
    re::PacketStatsFilter::deInit(*(this + 940));
    if (*(this + 929))
    {
      re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 7432);
    }

    (*(**(this + 928) + 32))(*(this + 928));
    if (*(this + 257))
    {
      re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 2056);
    }

    if (*(this + 246))
    {
      re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 1968);
    }

    if (*(this + 202))
    {
      re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 1616);
    }

    if (*(this + 224))
    {
      re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 1792);
    }

    if (*(this + 235))
    {
      re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 1880);
    }

    v2 = (this + 560);
    v3 = 880;
    do
    {
      if (*v2)
      {
        re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(v2);
      }

      v2 += 11;
      v3 -= 88;
    }

    while (v3);
    if (*(this + 213))
    {
      re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 1704);
    }

    if (*(this + 180))
    {
      re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 1440);
    }

    if (*(this + 59))
    {
      re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 472);
    }

    if (*(this + 191))
    {
      re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 1528);
    }

    if (*(this + 48))
    {
      re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 384);
    }

    if (*(this + 37))
    {
      re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 296);
    }

    if (*(this + 26))
    {
      re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 208);
    }

    v4 = (this + 120);
    if (*(this + 15))
    {
      v4 = re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(v4);
    }

    if (*(this + 4))
    {
      v4 = re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 32);
    }

    v5 = *re::networkLogObjects(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 134217984;
      v8 = this;
      _os_log_impl(&dword_26168F000, v5, OS_LOG_TYPE_DEFAULT, "Session: deinitialized (%p).", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

void re::Session::stopSession(uint64_t a1, int a2)
{
  v22 = *MEMORY[0x277D85DE8];
  if (*(a1 + 3264) != 3)
  {
    *(a1 + 3032) = a2;
    re::Session::stateSet(a1, 3);
    v4 = *(a1 + 3160);
    *(a1 + 3160) = 0;
    if (v4)
    {
      v5 = 80 * v4;
      v6 = *(a1 + 3176) + 40;
      do
      {
        re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(v6);
        v7 = *(v6 - 24);
        if (v7)
        {

          *(v6 - 24) = 0;
        }

        v6 += 80;
        v5 -= 80;
      }

      while (v5);
    }

    ++*(a1 + 3168);
    *(a1 + 3200) = 0;
    ++*(a1 + 3208);
    v8 = *(a1 + 3064);
    if (v8)
    {
      v9 = *(a1 + 3080);
      v10 = 40 * v8;
      do
      {
        v11 = *v9;
        v9 += 5;
        re::PacketPool::free(*(a1 + 2704), v11);
        v10 -= 40;
      }

      while (v10);
    }

    *(a1 + 3064) = 0;
    ++*(a1 + 3072);
    *(a1 + 7648) = 1;
    (*(*(a1 + 7528) + 24))();
    v12 = *(a1 + 2208);
    if (v12)
    {
      v13 = (*(*v12 + 40))(v12);
      re::Event<re::DiscoveryView,re::SharedPtr<re::DiscoveryIdentity>>::unsubscribe<re::Session>(v13, a1);
      v14 = (*(**(a1 + 2208) + 32))(*(a1 + 2208));
      re::Event<re::DiscoveryView,re::SharedPtr<re::DiscoveryIdentity>>::unsubscribe<re::Session>(v14, a1);
    }

    v15 = re::RoutingTable::removeRoutesForTransport(*(a1 + 3040), (a1 + 2320));
    v16 = *re::networkLogObjects(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 134218240;
      v19 = a1;
      v20 = 1024;
      v21 = a2;
      _os_log_impl(&dword_26168F000, v16, OS_LOG_TYPE_DEFAULT, "Session: stopped (%p) with error: %d", &v18, 0x12u);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

void re::Event<re::Session>::raise(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 80);
  *(a1 + 80) = v3 + 1;
  if (*(a1 + 16))
  {
    v5 = 0;
    do
    {
      if ((*(*(a1 + 32) + 32 * v5 + 24))(a2) == 1)
      {
        re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::removeStableAt(a1, v5);
      }

      else
      {
        ++v5;
      }
    }

    while (v5 < *(a1 + 16));
    v3 = *(a1 + 80) - 1;
  }

  *(a1 + 80) = v3;
  if (!v3)
  {
    v6 = *(a1 + 56);
    if (v6)
    {
      v7 = 0;
      for (i = 0; i != v6; ++i)
      {
        v9 = *(a1 + 56);
        if (v9 <= i)
        {
          memset(v24, 0, sizeof(v24));
          os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
          v16 = 136315906;
          v17 = "operator[]";
          v18 = 1024;
          v19 = 789;
          v20 = 2048;
          v21 = i;
          v22 = 2048;
          v23 = v9;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        v10 = *(a1 + 72) + v7;
        v11 = *(v10 + 32);
        v12 = *(v10 + 16);
        v14[0] = *v10;
        v14[1] = v12;
        v15 = v11;
        if (LOBYTE(v14[0]) == 1)
        {
          re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::indexOf(a1, v14 + 1, v24);
          if ((v24[0] & 1) == 0)
          {
            re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::add(a1, v14 + 8);
          }
        }

        else
        {
          re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::indexOf(a1, v14 + 1, v24);
          if (LOBYTE(v24[0]) == 1)
          {
            re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::removeStableAt(a1, *(&v24[0] + 1));
          }
        }

        v7 += 40;
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t re::DynamicArray<re::Session::BacklogItem>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = 80 * v4;
        v6 = v3 + 40;
        do
        {
          re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(v6);
          v7 = *(v6 - 24);
          if (v7)
          {

            *(v6 - 24) = 0;
          }

          v6 += 80;
          v5 -= 80;
        }

        while (v5);
        result = *a1;
        v3 = *(a1 + 32);
      }

      result = (*(*result + 40))(result, v3);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

void re::Session::setRoutingTable(re::Session *this, uint64_t *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  if (*a2 && (v5 = *(this + 380)) != 0)
  {
    v6 = v5[6];
    if (v6)
    {
      v7 = v5[8];
      v8 = &v7[5 * v6];
      v9 = v7;
      do
      {
        v10 = *v9;
        v9 += 5;
        re::RoutingTable::addRoute(v4, v10, (v7 + 1));
        v7 = v9;
      }

      while (v9 != v8);
      v4 = *a2;
      v5 = *(this + 380);
    }

    if (v5 == v4)
    {
      v4 = v5;
    }

    else
    {
      if (v4)
      {
        v11 = (v4 + 8);
        v5 = *(this + 380);
      }

      if (v5)
      {
      }

      *(this + 380) = v4;
    }

    v14 = *(v4 + 24);
    v15 = *MEMORY[0x277D85DE8];

    re::Session::assignLocalPeerID(this, v14);
  }

  else
  {
    v12 = *re::networkLogObjects(this);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v16 = *(this + 2272);
      v17 = *a2;
      v18 = *(this + 380);
      v19[0] = 67109632;
      v19[1] = v16;
      v20 = 2048;
      v21 = v17;
      v22 = 2048;
      v23 = v18;
      _os_log_error_impl(&dword_26168F000, v12, OS_LOG_TYPE_ERROR, "Cannot set routing table {isInitialized: %d, routingTable parameter: %p, session routing table:%p}", v19, 0x1Cu);
    }

    v13 = *MEMORY[0x277D85DE8];
  }
}

uint64_t re::Session::assignLocalPeerID(re::Session *this, uint64_t a2)
{
  re::Session::localParticipant(&v7, this);
  v4 = v7;
  *(v7 + 24) = a2;

  v5 = *(**(this + 928) + 40);

  return v5();
}

void re::Session::processIncomingMessages(re::Session *this, uint64_t a2)
{
  v198 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    goto LABEL_335;
  }

  v4 = re::DataArray<re::Connection>::tryGet(this + 2440, a2);
  if (!v4)
  {
    goto LABEL_335;
  }

  if (*v4 != 1)
  {
    goto LABEL_335;
  }

  v5 = (this + 2320);
  v185 = 0;
  if (!re::Transport::receive(this + 2320, a2, 0, &v185))
  {
    goto LABEL_335;
  }

  v179 = (this + 2320);
  while (2)
  {
    v6 = v185;
    v7 = *(v185 + 6);
    v180 = *(v185 + 2);
    v181 = v7;
    v182 = 0;
    v183 = 0;
    v184 = 0;
    if (!v7)
    {
LABEL_225:
      re::PacketPool::free(*(this + 338), v6);
      goto LABEL_299;
    }

    while (1)
    {
      if (v182)
      {
LABEL_224:
        v6 = v185;
        goto LABEL_225;
      }

      RoutingHeader = re::Session::readRoutingHeader(&v190, &v180);
      if (v190 & 1) == 0 || (v182)
      {
        v70 = 6;
        goto LABEL_259;
      }

      v10 = v183;
      v9 = HIDWORD(v183);
      if (HIDWORD(v183) + 8 * (v181 - v183) < 8)
      {
        v182 = 1;
        v70 = 6;
        v183 = v181;
        goto LABEL_259;
      }

      if (HIDWORD(v183) >= 8)
      {
        v11 = v184;
      }

      else
      {
        LODWORD(v183) = v183 + 1;
        v11 = (*(v180 + v10) << SBYTE4(v183)) | v184;
        v9 = HIDWORD(v183) | 8;
      }

      v184 = v11 >> 8;
      HIDWORD(v183) = v9 - 8;
      v13 = *&v191[4];
      v12 = *&v191[12];
      v14 = re::networkLogObjects(RoutingHeader);
      v15 = *v14;
      if (v11 <= 3u)
      {
        break;
      }

      switch(v11)
      {
        case 4u:
          v29 = os_log_type_enabled(*v14, OS_LOG_TYPE_DEBUG);
          if (v29)
          {
            *v194 = 0;
            _os_log_debug_impl(&dword_26168F000, v15, OS_LOG_TYPE_DEBUG, "Received SessionMessages::kRouteRequest", v194, 2u);
          }

          if ((v182 & 1) == 0)
          {
            v31 = v183;
            v30 = HIDWORD(v183);
            if (HIDWORD(v183) + 8 * (v181 - v183) >= 0x20)
            {
              if (HIDWORD(v183) >= 0x20)
              {
                v43 = v184;
              }

              else
              {
                v43 = v184;
                do
                {
                  LODWORD(v183) = v31 + 1;
                  v43 |= *(v180 + v31) << v30;
                  v184 = v43;
                  v44 = v30 + 8;
                  HIDWORD(v183) = v30 + 8;
                  ++v31;
                  v37 = v30 >= 0x18;
                  v30 += 8;
                }

                while (!v37);
                LODWORD(v30) = v44;
              }

              v184 = HIDWORD(v43);
              HIDWORD(v183) = v30 - 32;
              *buf = v5;
              *&buf[8] = a2;
              *&buf[16] = v43;
              re::RoutingTable::addRoute(*(this + 380), v13, buf);
              re::RoutingTable::getRoute(*(this + 380), v12, v194);
              if ((v194[0] & 1) == 0)
              {
                if (v43 <= 1)
                {
                  re::Session::broadcastRouteRequest(this, a2, v13, v12, v43 + 1);
                }

                break;
              }

              v61 = *(this + 380);
              v62 = *&v194[24] + 1;
              v63 = v12;
              v64 = v13;
              goto LABEL_123;
            }

            v182 = 1;
            v183 = v181;
          }

          v19 = *re::networkLogObjects(v29);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            re::Transport::connectionAddress(v5, a2, v194);
            v20 = &v194[9];
            if (v194[8])
            {
              v20 = *&v194[16];
            }

            goto LABEL_53;
          }

          break;
        case 5u:
          v23 = os_log_type_enabled(*v14, OS_LOG_TYPE_DEBUG);
          if (v23)
          {
            *v194 = 0;
            _os_log_debug_impl(&dword_26168F000, v15, OS_LOG_TYPE_DEBUG, "Received SessionMessages::kRouteResponse", v194, 2u);
          }

          if (v182)
          {
            goto LABEL_37;
          }

          v25 = v183;
          v24 = HIDWORD(v183);
          if (HIDWORD(v183) + 8 * (v181 - v183) < 0x20)
          {
            v182 = 1;
            v183 = v181;
LABEL_37:
            v19 = *re::networkLogObjects(v23);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              re::Transport::connectionAddress(v5, a2, v194);
              v20 = &v194[9];
              if (v194[8])
              {
                v20 = *&v194[16];
              }

              goto LABEL_53;
            }

            break;
          }

          if (HIDWORD(v183) >= 0x20)
          {
            v39 = v184;
          }

          else
          {
            v39 = v184;
            do
            {
              LODWORD(v183) = v25 + 1;
              v39 |= *(v180 + v25) << v24;
              v184 = v39;
              v40 = v24 + 8;
              HIDWORD(v183) = v24 + 8;
              ++v25;
              v37 = v24 >= 0x18;
              v24 += 8;
            }

            while (!v37);
            LODWORD(v24) = v40;
          }

          v184 = HIDWORD(v39);
          HIDWORD(v183) = v24 - 32;
          *buf = v5;
          *&buf[8] = a2;
          *&buf[16] = v39;
          re::RoutingTable::addRoute(*(this + 380), v13, buf);
          *v194 = v12;
          *&v194[8] = v13;
          re::HashSetBase<re::Pair<unsigned long long,unsigned long long,true>,re::Pair<unsigned long long,unsigned long long,true>,re::internal::ValueAsKey<re::Pair<unsigned long long,unsigned long long,true>>,re::Hash<re::Pair<unsigned long long,unsigned long long,true>>,re::EqualTo<re::Pair<unsigned long long,unsigned long long,true>>,true,false>::remove(this + 3088, v194);
          if (re::Session::peerID(this) == v12)
          {
            v47 = *(this + 383);
            if (v47)
            {
              v48 = 0;
              do
              {
                v49 = *(this + 385) + 40 * v48;
                if (*(v49 + 8) == v13)
                {
                  Route = re::RoutingTable::getRoute(*(this + 380), v13, v194);
                  v51 = *(*&v194[8] + 600);
                  if (v51)
                  {
                    v52 = *(v51 + 2296);
                    if (v52)
                    {
                      v53 = *(v51 + 2312);
                      v54 = 8 * v52;
                      while (1)
                      {
                        v55 = *v53;
                        if (*(*v53 + 32) == *&v194[16])
                        {
                          break;
                        }

                        ++v53;
                        v54 -= 8;
                        if (!v54)
                        {
                          goto LABEL_95;
                        }
                      }

                      v58 = (v55 + 8);
                      v60 = PacketUtils::move(*v49, v5, *&v194[8], v59);
                      re::Transport::send(*&v194[8], *&v194[16], v60, *(v49 + 16), 0, *(v49 + 32), *(v55 + 72));
                      re::DynamicArray<re::Session::PendingMessage>::removeStableAt(this + 381, v48);
                    }

                    else
                    {
LABEL_95:
                      v56 = *re::networkLogObjects(Route);
                      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
                      {
                        *v188 = 0;
                        _os_log_error_impl(&dword_26168F000, v56, OS_LOG_TYPE_ERROR, "receiveRouteResponse: missing participant for connection!", v188, 2u);
                      }

                      re::PacketPool::free(*(this + 338), *v49);
                      re::DynamicArray<re::Session::PendingMessage>::removeStableAt(this + 381, v48);
                    }
                  }

                  else
                  {
                    v57 = *re::networkLogObjects(Route);
                    if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
                    {
                      *v188 = 0;
                      _os_log_error_impl(&dword_26168F000, v57, OS_LOG_TYPE_ERROR, "receiveRouteResponse: missing session for transport!", v188, 2u);
                    }
                  }

                  v47 = *(this + 383);
                }

                else
                {
                  ++v48;
                }
              }

              while (v48 < v47);
            }

            break;
          }

          if (v39 <= 2)
          {
            v61 = *(this + 380);
            v62 = v39 + 1;
            v63 = v13;
            v64 = v12;
LABEL_123:
            re::Session::sendRouteResponse(v61, v63, v64, v62);
          }

          break;
        case 6u:
          v16 = os_log_type_enabled(*v14, OS_LOG_TYPE_DEBUG);
          if (v16)
          {
            *v194 = 0;
            _os_log_debug_impl(&dword_26168F000, v15, OS_LOG_TYPE_DEBUG, "Received SessionMessages::kRouteFail", v194, 2u);
          }

          if ((v182 & 1) == 0)
          {
            v18 = v183;
            v17 = HIDWORD(v183);
            if (HIDWORD(v183) + 8 * (v181 - v183) >= 0x20)
            {
              if (HIDWORD(v183) >= 0x20)
              {
                v41 = v184;
              }

              else
              {
                v41 = v184;
                do
                {
                  LODWORD(v183) = v18 + 1;
                  v41 |= *(v180 + v18) << v17;
                  v184 = v41;
                  v42 = v17 + 8;
                  HIDWORD(v183) = v17 + 8;
                  ++v18;
                  v37 = v17 >= 0x18;
                  v17 += 8;
                }

                while (!v37);
                LODWORD(v17) = v42;
              }

              v184 = HIDWORD(v41);
              HIDWORD(v183) = v17 - 32;
              *v194 = v13;
              *&v194[8] = v12;
              re::HashSetBase<re::Pair<unsigned long long,unsigned long long,true>,re::Pair<unsigned long long,unsigned long long,true>,re::internal::ValueAsKey<re::Pair<unsigned long long,unsigned long long,true>>,re::Hash<re::Pair<unsigned long long,unsigned long long,true>>,re::EqualTo<re::Pair<unsigned long long,unsigned long long,true>>,true,false>::remove(this + 3088, v194);
              v65 = re::Session::peerID(this);
              if (v65 == v12)
              {
                v66 = *re::networkLogObjects(v65);
                if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
                {
                  *v194 = 134217984;
                  *&v194[4] = v12;
                  _os_log_impl(&dword_26168F000, v66, OS_LOG_TYPE_DEFAULT, "Received route failure for PeerID. (%llu)", v194, 0xCu);
                }

                re::RoutingTable::removeRouteForPeerID(*(this + 380), v13);
                v67 = *(this + 383);
                if (v67)
                {
                  v68 = 0;
                  do
                  {
                    v69 = *(this + 385) + 40 * v68;
                    if (*(v69 + 8) == v13)
                    {
                      re::PacketPool::free(*(this + 338), *v69);
                      re::DynamicArray<re::Session::PendingMessage>::removeStableAt(this + 381, v68);
                      v67 = *(this + 383);
                    }

                    else
                    {
                      ++v68;
                    }
                  }

                  while (v68 < v67);
                }

                re::Event<re::Session,unsigned long long>::raise(this + 1528, this);
              }

              else if (v41 <= 2)
              {
                re::Session::sendRouteFail(*(this + 380), v13, v12, v41 + 1);
              }

              break;
            }

            v182 = 1;
            v183 = v181;
          }

          v19 = *re::networkLogObjects(v16);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            re::Transport::connectionAddress(v5, a2, v194);
            v20 = &v194[9];
            if (v194[8])
            {
              v20 = *&v194[16];
            }

LABEL_53:
            *buf = 136315138;
            *&buf[4] = v20;
            _os_log_error_impl(&dword_26168F000, v19, OS_LOG_TYPE_ERROR, "No hop specified in route request from %s", buf, 0xCu);
            if (*v194 && (v194[8] & 1) != 0)
            {
              (*(**v194 + 40))();
            }

            break;
          }

          break;
        default:
          goto LABEL_231;
      }

LABEL_132:
      if (v181 == v183)
      {
        goto LABEL_224;
      }
    }

    if (v11 != 1)
    {
      if (v11 != 3)
      {
LABEL_231:
        v72 = os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR);
        if (v72)
        {
          *v194 = 67109120;
          *&v194[4] = v11;
          _os_log_error_impl(&dword_26168F000, v15, OS_LOG_TYPE_ERROR, "Received unrecognized message type: %d", v194, 8u);
        }

        v70 = 9;
        goto LABEL_257;
      }

      v21 = os_log_type_enabled(*v14, OS_LOG_TYPE_DEBUG);
      if (v21)
      {
        re::Transport::connectionAddress(v5, a2, v194);
        v117 = &v194[9];
        if (v194[8])
        {
          v117 = *&v194[16];
        }

        *buf = 136315138;
        *&buf[4] = v117;
        _os_log_debug_impl(&dword_26168F000, v15, OS_LOG_TYPE_DEBUG, "Received SessionMessages::kSessionError from %s", buf, 0xCu);
        v21 = *v194;
        if (*v194 && (v194[8] & 1) != 0)
        {
          v21 = (*(**v194 + 40))();
        }
      }

      if (v182)
      {
        LODWORD(v22) = 0;
        goto LABEL_128;
      }

      v33 = v183;
      v32 = HIDWORD(v183);
      if (HIDWORD(v183) + 8 * (v181 - v183) < 0x20)
      {
        LODWORD(v22) = 0;
        v182 = 1;
        v183 = v181;
        goto LABEL_128;
      }

      if (HIDWORD(v183) >= 0x20)
      {
        v22 = v184;
      }

      else
      {
        v22 = v184;
        do
        {
          LODWORD(v183) = v33 + 1;
          v22 |= *(v180 + v33) << v32;
          v184 = v22;
          v45 = v32 + 8;
          HIDWORD(v183) = v32 + 8;
          ++v33;
          v37 = v32 >= 0x18;
          v32 += 8;
        }

        while (!v37);
        LODWORD(v32) = v45;
      }

      v184 = HIDWORD(v22);
      HIDWORD(v183) = v32 - 32;
      if (v22 > 0x10)
      {
        v70 = 6;
      }

      else
      {
LABEL_128:
        v70 = v22;
      }

      v71 = *re::networkLogObjects(v21);
      v72 = os_log_type_enabled(v71, OS_LOG_TYPE_ERROR);
      if (v72)
      {
        *v194 = 134218240;
        *&v194[4] = a2;
        *&v194[12] = 1024;
        *&v194[14] = v22;
        _os_log_error_impl(&dword_26168F000, v71, OS_LOG_TYPE_ERROR, "Connection error received from ConnectionId(%llu) Error = 0x%X", v194, 0x12u);
      }

      if (v70 != 1)
      {
        goto LABEL_257;
      }

      goto LABEL_132;
    }

    v26 = os_log_type_enabled(*v14, OS_LOG_TYPE_DEBUG);
    if (v26)
    {
      re::Transport::connectionAddress(v5, a2, v194);
      v116 = &v194[9];
      if (v194[8])
      {
        v116 = *&v194[16];
      }

      *buf = 136315138;
      *&buf[4] = v116;
      _os_log_debug_impl(&dword_26168F000, v15, OS_LOG_TYPE_DEBUG, "Received SessionMessages::kPeerHello from %s", buf, 0xCu);
      v26 = *v194;
      if (*v194 && (v194[8] & 1) != 0)
      {
        v26 = (*(**v194 + 40))();
      }
    }

    if (!v12)
    {
      v187 = 0;
      *v188 = 0;
      v27 = v182;
      if (v182)
      {
        LODWORD(v28) = 0;
      }

      else
      {
        v35 = v183;
        v34 = HIDWORD(v183);
        v36 = HIDWORD(v183) + 8 * (v181 - v183);
        v37 = v36 >= 0x20;
        v27 = v36 < 0x20;
        if (v37)
        {
          if (HIDWORD(v183) >= 0x20)
          {
            v28 = v184;
          }

          else
          {
            v28 = v184;
            do
            {
              LODWORD(v183) = v35 + 1;
              v28 |= *(v180 + v35) << v34;
              v184 = v28;
              v46 = v34 + 8;
              HIDWORD(v183) = v34 + 8;
              ++v35;
              v37 = v34 >= 0x18;
              v34 += 8;
            }

            while (!v37);
            LODWORD(v34) = v46;
          }

          v184 = HIDWORD(v28);
          v38 = v34 - 32;
        }

        else
        {
          LODWORD(v28) = 0;
          v38 = 0;
          v182 = 1;
          LODWORD(v183) = v181;
        }

        HIDWORD(v183) = v38;
      }

      if (*(this + 538) != v28)
      {
        v120 = *re::networkLogObjects(v26);
        v82 = os_log_type_enabled(v120, OS_LOG_TYPE_ERROR);
        if (v82)
        {
          v172 = *(this + 538);
          *v194 = 67109376;
          *&v194[4] = v28;
          *&v194[8] = 1024;
          *&v194[10] = v172;
          _os_log_error_impl(&dword_26168F000, v120, OS_LOG_TYPE_ERROR, "Mismatched AppId, received 0x%X expecting 0x%X", v194, 0xEu);
        }

        v70 = 3;
        goto LABEL_255;
      }

      if (v27)
      {
        LODWORD(v73) = 0;
      }

      else
      {
        v75 = v183;
        v74 = HIDWORD(v183);
        if (HIDWORD(v183) + 8 * (v181 - v183) >= 0x20)
        {
          if (HIDWORD(v183) >= 0x20)
          {
            v73 = v184;
          }

          else
          {
            v73 = v184;
            do
            {
              LODWORD(v183) = v75 + 1;
              v73 |= *(v180 + v75) << v74;
              v184 = v73;
              v77 = v74 + 8;
              HIDWORD(v183) = v74 + 8;
              ++v75;
              v37 = v74 >= 0x18;
              v74 += 8;
            }

            while (!v37);
            LODWORD(v74) = v77;
          }

          v184 = HIDWORD(v73);
          v76 = v74 - 32;
        }

        else
        {
          LODWORD(v73) = 0;
          v76 = 0;
          v182 = 1;
          LODWORD(v183) = v181;
        }

        HIDWORD(v183) = v76;
      }

      if (*(this + 539) != v73)
      {
        v121 = *re::networkLogObjects(v26);
        v82 = os_log_type_enabled(v121, OS_LOG_TYPE_ERROR);
        if (v82)
        {
          v122 = *(this + 539);
          *v194 = 67109376;
          *&v194[4] = v73;
          *&v194[8] = 1024;
          *&v194[10] = v122;
          v123 = v121;
          v124 = "Mismatched protocol, received 0x%X expecting 0x%X";
          v125 = 14;
          goto LABEL_326;
        }

LABEL_243:
        v70 = 4;
        goto LABEL_255;
      }

      v78 = re::BitReader::readUInt64(&v180, &v187);
      v79 = v187;
      if (*(this + 270) != v187)
      {
        v126 = *re::networkLogObjects(v78);
        v82 = os_log_type_enabled(v126, OS_LOG_TYPE_ERROR);
        if (v82)
        {
          v173 = *(this + 270);
          *v194 = 134218240;
          *&v194[4] = v79;
          *&v194[12] = 2048;
          *&v194[14] = v173;
          v123 = v126;
          v124 = "Mismatched component schema, received 0x%llX expecting 0x%llX";
          v125 = 22;
LABEL_326:
          _os_log_error_impl(&dword_26168F000, v123, OS_LOG_TYPE_ERROR, v124, v194, v125);
        }

        goto LABEL_243;
      }

      UInt64 = re::BitReader::readUInt64(&v180, v188);
      v81 = *re::networkLogObjects(UInt64);
      v82 = os_log_type_enabled(v81, OS_LOG_TYPE_DEBUG);
      if (v82)
      {
        *v194 = 134217984;
        *&v194[4] = *v188;
      }

      if (v182)
      {
        goto LABEL_228;
      }

      v83 = v181;
      v85 = v183;
      v84 = HIDWORD(v183);
      if (HIDWORD(v183) + 8 * (v181 - v183) < 0x20)
      {
        goto LABEL_227;
      }

      if (HIDWORD(v183) >= 0x20)
      {
        v86 = v184;
      }

      else
      {
        v86 = v184;
        do
        {
          LODWORD(v183) = v85 + 1;
          v86 |= *(v180 + v85) << v84;
          v184 = v86;
          v87 = v84 + 8;
          HIDWORD(v183) = v84 + 8;
          ++v85;
          v37 = v84 >= 0x18;
          v84 += 8;
        }

        while (!v37);
        LODWORD(v84) = v87;
      }

      v184 = HIDWORD(v86);
      v88 = (v84 - 32);
      HIDWORD(v183) = v88;
      v83 = v181;
      v89 = v183;
      if (v88 + 8 * (v181 - v183) < 0x20)
      {
LABEL_227:
        v182 = 1;
        v183 = v83;
LABEL_228:
        v118 = *re::networkLogObjects(v82);
        v82 = os_log_type_enabled(v118, OS_LOG_TYPE_ERROR);
        if (!v82)
        {
LABEL_229:
          v70 = 6;
          goto LABEL_230;
        }

        v5 = (this + 2320);
        re::Transport::connectionAddress(v179, a2, v194);
        v164 = &v194[9];
        if (v194[8])
        {
          v164 = *&v194[16];
        }

        *buf = 136315138;
        *&buf[4] = v164;
        v165 = v118;
        v166 = "Cannot read discovery data. Hello message from %s is corrupt.";
LABEL_322:
        _os_log_error_impl(&dword_26168F000, v165, OS_LOG_TYPE_ERROR, v166, buf, 0xCu);
        v82 = *v194;
        if (*v194 && (v194[8] & 1) != 0)
        {
          v82 = (*(**v194 + 40))();
        }

LABEL_247:
        v70 = 6;
LABEL_255:
        v131 = *re::networkLogObjects(v82);
        v72 = os_log_type_enabled(v131, OS_LOG_TYPE_ERROR);
        if (v72)
        {
          *v194 = 0;
          _os_log_error_impl(&dword_26168F000, v131, OS_LOG_TYPE_ERROR, "Error receiving message of type kPeerHello", v194, 2u);
        }

        goto LABEL_257;
      }

      if (v88 >= 0x20)
      {
        v90 = v184;
      }

      else
      {
        v90 = v184;
        do
        {
          LODWORD(v183) = v89 + 1;
          v90 |= *(v180 + v89) << v88;
          v184 = v90;
          v91 = v88 + 8;
          HIDWORD(v183) = v88 + 8;
          ++v89;
          v37 = v88 >= 0x18;
          v88 += 8;
        }

        while (!v37);
        LODWORD(v88) = v91;
      }

      v184 = HIDWORD(v90);
      HIDWORD(v183) = v88 - 32;
      v92 = v183;
      if (v181 - v183 < v90)
      {
        goto LABEL_228;
      }

      v93 = v180;
      v184 = 0;
      v94 = v183 + v90;
      v183 = (v183 + v90);
      if (v181 < v92 + v90)
      {
        v182 = 1;
        goto LABEL_246;
      }

      if (((v181 - (v92 + v90)) & 0x1FFFFFFC) == 0)
      {
        v182 = 1;
        LODWORD(v183) = v181;
LABEL_246:
        v127 = *re::networkLogObjects(v82);
        v82 = os_log_type_enabled(v127, OS_LOG_TYPE_ERROR);
        v5 = (this + 2320);
        if (v82)
        {
          re::Transport::connectionAddress(v179, a2, v194);
          v171 = &v194[9];
          if (v194[8])
          {
            v171 = *&v194[16];
          }

          *buf = 136315138;
          *&buf[4] = v171;
          v165 = v127;
          v166 = "Hello message received from %s is corrupt.";
          goto LABEL_322;
        }

        goto LABEL_247;
      }

      v95 = 0;
      v96 = 0;
      v97 = v90;
      do
      {
        LODWORD(v183) = v94 + 1;
        v96 |= *(v180 + v94) << v95;
        v184 = v96;
        v98 = v95 + 8;
        HIDWORD(v183) = v95 + 8;
        ++v94;
        v37 = v95 >= 0x18;
        v95 += 8;
      }

      while (!v37);
      v184 = HIDWORD(v96);
      HIDWORD(v183) = v98 - 32;
      if (v96 > 0x400000)
      {
        v128 = *re::networkLogObjects(v82);
        v82 = os_log_type_enabled(v128, OS_LOG_TYPE_ERROR);
        if (v82)
        {
          *v194 = 67109376;
          *&v194[4] = v96;
          *&v194[8] = 2048;
          *&v194[10] = 0x400000;
          _os_log_error_impl(&dword_26168F000, v128, OS_LOG_TYPE_ERROR, "User context is bigger than maximum allowed (%u > %zu)", v194, 0x12u);
        }

        goto LABEL_229;
      }

      v99 = *(this + 395);
      if (v99)
      {
        v100 = *(this + 397) + 40;
        v101 = 80 * v99;
        while (*(v100 - 40) != a2)
        {
          v100 += 80;
          v101 -= 80;
          if (!v101)
          {
            goto LABEL_181;
          }
        }

        *(v100 - 32) = *v188;
        *(v100 - 16) = v86;
        if (v96)
        {
          re::DynamicArray<unsigned char>::resize(v100, v96 & 0x7FFFFF);
          if (v182)
          {
            goto LABEL_311;
          }

          if (v181 - v183 < v96)
          {
            v182 = 1;
            v183 = v181;
LABEL_311:
            v167 = *re::networkLogObjects(v82);
            v82 = os_log_type_enabled(v167, OS_LOG_TYPE_ERROR);
            if (!v82)
            {
              goto LABEL_229;
            }

            v5 = (this + 2320);
            re::Transport::connectionAddress(v179, a2, v194);
            v168 = &v194[9];
            if (v194[8])
            {
              v168 = *&v194[16];
            }

            *buf = 136315138;
            *&buf[4] = v168;
            v165 = v167;
            v166 = "User context data received from %s is corrupt.";
            goto LABEL_322;
          }

          v108 = *(v100 + 32);
          HIDWORD(v183) = 0;
          v184 = 0;
          v82 = memcpy(v108, (v180 + v183), v96 & 0x7FFFFF);
          LODWORD(v183) = v183 + v96;
          if (v182)
          {
            goto LABEL_311;
          }
        }

        if ((v86 & 2) != 0 && (*(this + 2219) != 1 || !*(v100 - 24)))
        {
          v70 = 15;
LABEL_230:
          v5 = (this + 2320);
          goto LABEL_255;
        }

        v109 = *(this + 276);
        if (v109)
        {
          if (!*(v100 - 24))
          {
            re::Transport::connectionAddress(v179, *(v100 - 40), v194);
            (*(*v109 + 72))(v109, v194, v93 + v92, v97);
            v82 = *v194;
            if (*v194)
            {
              if (v194[8])
              {
                v82 = (*(**v194 + 40))();
              }
            }
          }
        }

        v107 = 1;
        if (v86)
        {
          goto LABEL_197;
        }
      }

      else
      {
LABEL_181:
        v102 = *(this + 287);
        if (v102)
        {
          v103 = *v188;
          v104 = *(this + 289);
          v105 = 8 * v102;
          while (1)
          {
            v106 = *v104;
            if (*(*v104 + 24) == *v188)
            {
              break;
            }

            ++v104;
            v105 -= 8;
            if (!v105)
            {
              goto LABEL_185;
            }
          }

          v112 = (v106 + 8);

          v114 = *re::networkLogObjects(v113);
          v115 = os_log_type_enabled(v114, OS_LOG_TYPE_DEBUG);
          if (v115)
          {
            *v194 = 134217984;
            *&v194[4] = v103;
          }

          v5 = (this + 2320);
          if (v96)
          {
            if (v182)
            {
              goto LABEL_315;
            }

            v184 = 0;
            v183 = (v183 + v96);
            if (v183 > v181)
            {
              v182 = 1;
LABEL_315:
              v169 = *re::networkLogObjects(v115);
              v82 = os_log_type_enabled(v169, OS_LOG_TYPE_ERROR);
              if (v82)
              {
                re::Transport::connectionAddress(v179, a2, v194);
                v170 = &v194[9];
                if (v194[8])
                {
                  v170 = *&v194[16];
                }

                *buf = 136315138;
                *&buf[4] = v170;
                v165 = v169;
                v166 = "User context data received from %s for existing participant is corrupt.";
                goto LABEL_322;
              }

              goto LABEL_247;
            }
          }

          goto LABEL_132;
        }

LABEL_185:
        v107 = 0;
        if (v86)
        {
LABEL_197:
          if (*(this + 392))
          {
            v130 = *re::networkLogObjects(v82);
            v82 = os_log_type_enabled(v130, OS_LOG_TYPE_ERROR);
            v5 = (this + 2320);
            if (v82)
            {
              v176 = *(this + 392);
              *v194 = 134218240;
              *&v194[4] = v176;
              *&v194[12] = 2048;
              *&v194[14] = *v188;
              _os_log_error_impl(&dword_26168F000, v130, OS_LOG_TYPE_ERROR, "Two nodes claim to be session leaders (%llu and %llu)", v194, 0x16u);
            }

            v70 = 5;
            goto LABEL_255;
          }

          v82 = (*(**(this + 928) + 56))(*(this + 928), *v188);
        }
      }

      if ((v107 & 1) == 0)
      {
        v129 = *re::networkLogObjects(v82);
        v82 = os_log_type_enabled(v129, OS_LOG_TYPE_ERROR);
        v5 = (this + 2320);
        if (v82)
        {
          v174 = *v188;
          re::Transport::connectionAddress(v179, a2, v194);
          v175 = &v194[9];
          if (v194[8])
          {
            v175 = *&v194[16];
          }

          *buf = 134218242;
          *&buf[4] = v174;
          *&buf[12] = 2080;
          *&buf[14] = v175;
          _os_log_error_impl(&dword_26168F000, v129, OS_LOG_TYPE_ERROR, "Cannot bind peerID %llu with connection for peer %s", buf, 0x16u);
          v82 = *v194;
          if (*v194 && (v194[8] & 1) != 0)
          {
            v82 = (*(**v194 + 40))();
          }
        }

        v70 = 7;
        goto LABEL_255;
      }

      v110 = *(this + 816);
      v5 = (this + 2320);
      if (v110 == 2)
      {
        re::Session::stateEvent(this, 3);
      }

      else if (v110 == 1)
      {
        v111 = re::Session::peerID(this);
        re::Session::assignLocalPeerID(this, v111);
        re::Session::stateSet(this, 2);
      }

      goto LABEL_132;
    }

    v119 = *re::networkLogObjects(v26);
    v72 = os_log_type_enabled(v119, OS_LOG_TYPE_ERROR);
    if (v72)
    {
      *v194 = 0;
      _os_log_error_impl(&dword_26168F000, v119, OS_LOG_TYPE_ERROR, "Error receiving message of type kPeerHello: invalid peerid", v194, 2u);
    }

    v70 = 8;
LABEL_257:
    v132 = *re::networkLogObjects(v72);
    if (os_log_type_enabled(v132, OS_LOG_TYPE_ERROR))
    {
      *v194 = 67109120;
      *&v194[4] = v70;
      _os_log_error_impl(&dword_26168F000, v132, OS_LOG_TYPE_ERROR, "Aborting transport receive due to packet error: %d", v194, 8u);
    }

LABEL_259:
    re::PacketPool::free(*(this + 338), v185);
    v134 = *re::networkLogObjects(v133);
    v135 = os_log_type_enabled(v134, OS_LOG_TYPE_ERROR);
    if (v135)
    {
      re::Transport::connectionAddress(v5, a2, v194);
      v163 = &v194[9];
      if (v194[8])
      {
        v163 = *&v194[16];
      }

      *buf = 136315394;
      *&buf[4] = v163;
      *&buf[12] = 1024;
      *&buf[14] = v70;
      _os_log_error_impl(&dword_26168F000, v134, OS_LOG_TYPE_ERROR, "Received corrupt message from '%s'. Packet error: %d, Disconnecting.", buf, 0x12u);
      v135 = *v194;
      if (*v194 && (v194[8] & 1) != 0)
      {
        v135 = (*(**v194 + 40))();
      }
    }

    v187 = a2;
    v186 = v70;
    v136 = *(this + 380);
    *(this + 380) = v136 + 1;
    if (*(this + 182))
    {
      v137 = 0;
      do
      {
        v135 = (*(*(this + 184) + 32 * v137 + 24))(this);
        if (v135 == 1)
        {
          v135 = re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::removeStableAt(this + 180, v137);
        }

        else
        {
          ++v137;
        }
      }

      while (v137 < *(this + 182));
      v136 = *(this + 380) - 1;
    }

    *(this + 380) = v136;
    if (!v136)
    {
      v138 = *(this + 187);
      if (v138)
      {
        v139 = 0;
        for (i = 0; i != v138; ++i)
        {
          v141 = *(this + 187);
          if (v141 <= i)
          {
            *v188 = 0;
            v196 = 0u;
            v197 = 0u;
            v195 = 0u;
            memset(v194, 0, sizeof(v194));
            os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
            v190 = 136315906;
            *v191 = "operator[]";
            *&v191[8] = 1024;
            *&v191[10] = 789;
            *&v191[14] = 2048;
            *&v191[16] = i;
            v192 = 2048;
            v193 = v141;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
          }

          v142 = *(this + 189) + v139;
          *buf = *v142;
          *&buf[16] = *(v142 + 16);
          *&buf[32] = *(v142 + 32);
          if (buf[0] == 1)
          {
            v135 = re::DynamicArray<re::Event<re::Session,unsigned long long,re::SessionError>::Subscription>::indexOf(v194, *(this + 182), *(this + 184), &buf[8]);
            if ((v194[0] & 1) == 0)
            {
              v143 = *(this + 182);
              v144 = *(this + 181);
              if (v143 >= v144)
              {
                v145 = v143 + 1;
                if (v144 < v143 + 1)
                {
                  if (*(this + 180))
                  {
                    v146 = 2 * v144;
                    v147 = v144 == 0;
                    v148 = 8;
                    if (!v147)
                    {
                      v148 = v146;
                    }

                    if (v148 <= v145)
                    {
                      v149 = v145;
                    }

                    else
                    {
                      v149 = v148;
                    }

                    v135 = re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::setCapacity(this + 180, v149);
                  }

                  else
                  {
                    v135 = re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::setCapacity(this + 180, v145);
                    ++*(this + 366);
                  }
                }

                v143 = *(this + 182);
              }

              v150 = (*(this + 184) + 32 * v143);
              *v150 = *&buf[8];
              v150[1] = *&buf[24];
              ++*(this + 182);
              ++*(this + 366);
            }
          }

          else
          {
            v135 = re::DynamicArray<re::Event<re::Session,unsigned long long,re::SessionError>::Subscription>::indexOf(v194, *(this + 182), *(this + 184), &buf[8]);
            if (v194[0] == 1)
            {
              v135 = re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::removeStableAt(this + 180, *&v194[8]);
            }
          }

          v139 += 40;
        }
      }
    }

    v151 = *(this + 287);
    v5 = (this + 2320);
    if (v151)
    {
      v152 = *(this + 289);
      v153 = 8 * v151;
      while (1)
      {
        v154 = *v152;
        if (*(*v152 + 32) == a2)
        {
          break;
        }

        ++v152;
        v153 -= 8;
        if (!v153)
        {
          goto LABEL_292;
        }
      }

      v156 = (v154 + 8);
      v157 = re::PacketPool::allocate(*(this + 338), 67);
      re::Packet::offsetBy(v157, 3);
      v158 = *(v157 + 1);
      *(v158 + 2) = 0;
      *v158 = 0;
      v159 = *(v157 + 2);
      v160 = *(v157 + 7);
      *v194 = &unk_2873F59D0;
      *&v194[8] = v159;
      *&v194[16] = v160;
      v194[20] = 0;
      *&v194[24] = 0;
      *&v195 = 0;
      re::BitWriter::writeUInt32Bits(v194, 0, 0x20u);
      re::BitWriter::writeUInt32Bits(v194, 0, 0x20u);
      re::BitWriter::writeUInt32Bits(v194, 0, 0x20u);
      re::BitWriter::writeUInt32Bits(v194, 0, 0x20u);
      re::BitWriter::writeUInt32Bits(v194, 3u, 8u);
      re::BitWriter::writeUInt32Bits(v194, v70, 0x20u);
      v161 = *&v194[24];
      if (*&v194[28])
      {
        v161 = *&v194[24] + 1;
      }

      *(v157 + 6) = v161;
      re::Transport::send(v179, a2, v157, 0, 0, 0, *(v154 + 72));
    }

    else
    {
LABEL_292:
      v155 = *re::networkLogObjects(v135);
      if (os_log_type_enabled(v155, OS_LOG_TYPE_ERROR))
      {
        *v194 = 0;
        _os_log_error_impl(&dword_26168F000, v155, OS_LOG_TYPE_ERROR, "sendSessionError: missing participant for connection!", v194, 2u);
      }
    }

    re::Transport::disconnect(v179, a2, 0);
    if (v70 != 4 || *(this + 2222) != 1)
    {
LABEL_299:
      if (!re::Transport::receive(v5, a2, 0, &v185))
      {
        goto LABEL_335;
      }

      continue;
    }

    break;
  }

  v177 = *re::networkLogObjects(v162);
  if (os_log_type_enabled(v177, OS_LOG_TYPE_DEFAULT))
  {
    *v194 = 134217984;
    *&v194[4] = this;
    _os_log_impl(&dword_26168F000, v177, OS_LOG_TYPE_DEFAULT, "Stopping Session (%p) with packet error=kProtocolMismatch", v194, 0xCu);
  }

  re::Session::stopSession(this, 4);
LABEL_335:
  v178 = *MEMORY[0x277D85DE8];
}

void re::Session::beforeFrameUpdate(re::Session *this)
{
  v101 = *MEMORY[0x277D85DE8];
  if (*(this + 816) == 3)
  {
    goto LABEL_123;
  }

  v1 = this;
  re::Session::stateEvent(this, 2);
  (*(**(v1 + 940) + 48))(*(v1 + 940));
  (*(**(v1 + 928) + 64))(*(v1 + 928));
  re::Transport::flushNetworkEvents((v1 + 2320));
  if (*(v1 + 299))
  {
    re::TransportCommandsQueued::update((v1 + 7528));
    v2 = (*(**(v1 + 330) + 24))(*(v1 + 330));
    if (*(v1 + 758) != 1)
    {
      v3 = *re::networkLogObjects(v2);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = *(v1 + 758);
        *buf = 134218240;
        *&buf[4] = v1;
        *&buf[12] = 1024;
        *&buf[14] = v4;
        _os_log_impl(&dword_26168F000, v3, OS_LOG_TYPE_DEFAULT, "Stopping Session (%p) with error:%d after flushing transport events", buf, 0x12u);
      }

      re::Session::stopSession(v1, *(v1 + 758));
    }
  }

  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v74, 6032, v1);
  v5 = *(v1 + 405);
  if (!v5)
  {
    goto LABEL_108;
  }

  v6 = *(v1 + 407);
  v7 = &v6[v5];
  v69 = v7;
  while (1)
  {
    v8 = *v6;
    v9 = *(v1 + 287);
    if (v9)
    {
      v10 = *(v1 + 289);
      v11 = 8 * v9;
      while (1)
      {
        v12 = *v10;
        if (*(*v10 + 32) == v8)
        {
          break;
        }

        ++v10;
        v11 -= 8;
        if (!v11)
        {
          goto LABEL_13;
        }
      }

      v16 = (v12 + 8);
      re::Session::processIncomingMessages(v1, v8);
    }

    else
    {
      v13 = *(v1 + 395);
      if (!v13)
      {
        goto LABEL_23;
      }

LABEL_13:
      v14 = *(v1 + 397);
      v15 = 80 * v13;
      while (*v14 != v8)
      {
        v14 += 10;
        v15 -= 80;
        if (!v15)
        {
          goto LABEL_23;
        }
      }

      re::Session::processIncomingMessages(v1, *v6);
      v17 = *(v1 + 287);
      if (v17)
      {
        v18 = *(v1 + 289);
        v19 = 8 * v17;
        while (1)
        {
          v12 = *v18;
          if (*(*v18 + 32) == v8)
          {
            break;
          }

          ++v18;
          v19 -= 8;
          if (!v19)
          {
            goto LABEL_23;
          }
        }

        v57 = (v12 + 8);
      }

      else
      {
LABEL_23:
        v12 = 0;
      }
    }

    if (*(v1 + 816) == 3)
    {
      goto LABEL_105;
    }

    if (v12)
    {
      break;
    }

LABEL_101:
    if (++v6 == v7)
    {
      goto LABEL_107;
    }
  }

  v20 = re::DataArray<re::Connection>::tryGet(v1 + 2440, *(v12 + 32));
  if (!v20 || *v20 != 1)
  {
LABEL_99:
    if (*(v1 + 816) == 3)
    {
      goto LABEL_106;
    }

    goto LABEL_101;
  }

  v70 = v6;
  v83 = 0;
  v71 = v12 + 49;
  v72 = v12;
  v21 = 3;
  while (!re::Transport::receive(v1 + 2320, *(v12 + 32), v21, &v83))
  {
LABEL_97:
    if (++v21 == 10)
    {
      v7 = v69;
      v6 = v70;
      goto LABEL_99;
    }
  }

  v22 = v1 + 88 * v21 + 560;
  v73 = v21;
  while (2)
  {
    v23 = *(v83 + 6);
    v78 = *(v83 + 2);
    v79 = v23;
    v80 = 0;
    v81 = 0;
    v82 = 0;
    RoutingHeader = re::Session::readRoutingHeader(v75, &v78);
    if ((v75[0] & 1) == 0)
    {
      v51 = *re::networkLogObjects(RoutingHeader);
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        v55 = v71;
        if (*(v12 + 48))
        {
          v55 = *(v12 + 56);
        }

        *buf = 136315138;
        *&buf[4] = v55;
        _os_log_error_impl(&dword_26168F000, v51, OS_LOG_TYPE_ERROR, "Received corrupt message from '%s'. No routing header. Disconnecting.", buf, 0xCu);
      }

      re::PacketPool::free(*(v1 + 338), v83);
LABEL_85:
      if (!re::Transport::receive(v1 + 2320, *(v12 + 32), v21, &v83))
      {
        goto LABEL_97;
      }

      continue;
    }

    break;
  }

  v25 = v76;
  v26 = v77;
  if (v26 != re::Session::peerID(v1))
  {
    Route = re::RoutingTable::getRoute(*(v1 + 380), v26, buf);
    if (buf[0])
    {
      v83 = PacketUtils::move(v83, v1 + 290, *&buf[8], v53);
      re::Transport::send(*&buf[8], *&buf[16], v83, v21, 0, 0, *(v12 + 72));
    }

    else
    {
      v54 = *re::networkLogObjects(Route);
      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        v56 = v71;
        if (*(v12 + 48))
        {
          v56 = *(v12 + 56);
        }

        *v89 = 136315650;
        *&v89[4] = v56;
        *&v89[12] = 2048;
        *&v89[14] = v25;
        *&v89[22] = 2048;
        *&v89[24] = v26;
        _os_log_error_impl(&dword_26168F000, v54, OS_LOG_TYPE_ERROR, "Received message with unknown route from '%s'. No route exists %llu->%llu.", v89, 0x20u);
      }

      re::PacketPool::free(*(v1 + 338), v83);
      re::Session::sendRouteFail(*(v1 + 380), v26, v25, 1u);
    }

    goto LABEL_85;
  }

  if (v80)
  {
    v27 = 0;
  }

  else
  {
    v27 = v78 + v81;
  }

  v12 = (v79 - v81);
  v84 = v21;
  v86 = v27;
  v87 = v25;
  v85 = v79 - v81;
  v28 = *(v22 + 80);
  *(v22 + 80) = v28 + 1;
  if (*(v22 + 16))
  {
    v29 = 0;
    do
    {
      if ((*(*(v22 + 32) + 32 * v29 + 24))(v1) == 1)
      {
        re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::removeStableAt(v22, v29);
      }

      else
      {
        ++v29;
      }
    }

    while (v29 < *(v22 + 16));
    v28 = *(v22 + 80) - 1;
  }

  *(v22 + 80) = v28;
  if (v28 || (v30 = *(v22 + 56)) == 0)
  {
LABEL_53:
    v21 = v73;
    if (v73 == 3)
    {
      v86 = v27;
      v87 = v25;
      v85 = v12;
      v37 = *(v1 + 138);
      *(v1 + 138) = v37 + 1;
      if (*(v1 + 61))
      {
        v25 = 0;
        do
        {
          if ((*(*(v1 + 63) + 32 * v25 + 24))(v1) == 1)
          {
            re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::removeStableAt(v1 + 59, v25);
          }

          else
          {
            ++v25;
          }
        }

        while (v25 < *(v1 + 61));
        v37 = *(v1 + 138) - 1;
      }

      *(v1 + 138) = v37;
      if (!v37)
      {
        v38 = *(v1 + 66);
        if (v38)
        {
          v39 = 0;
          v40 = 0;
          while (1)
          {
            v41 = *(v1 + 66);
            if (v41 <= v40)
            {
              break;
            }

            v42 = *(v1 + 68) + v39;
            *v89 = *v42;
            *&v89[16] = *(v42 + 16);
            *&v89[32] = *(v42 + 32);
            if (v89[0] == 1)
            {
              v43 = re::DynamicArray<re::Event<re::Session,unsigned long long,re::SessionError>::Subscription>::indexOf(buf, *(v1 + 61), *(v1 + 63), &v89[8]);
              if ((buf[0] & 1) == 0)
              {
                v44 = *(v1 + 60);
                v45 = *(v1 + 61);
                if (v45 >= v44)
                {
                  v25 = v45 + 1;
                  if (v44 < v45 + 1)
                  {
                    if (*(v1 + 59))
                    {
                      v46 = 2 * v44;
                      v47 = v44 == 0;
                      v48 = 8;
                      if (!v47)
                      {
                        v48 = v46;
                      }

                      if (v48 <= v25)
                      {
                        v49 = v25;
                      }

                      else
                      {
                        v49 = v48;
                      }

                      re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::setCapacity(v1 + 59, v49);
                    }

                    else
                    {
                      re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::setCapacity(v1 + 59, v25);
                      ++*(v1 + 124);
                    }
                  }

                  v45 = *(v1 + 61);
                }

                v50 = (*(v1 + 63) + 32 * v45);
                *v50 = *&v89[8];
                v50[1] = *&v89[24];
                ++*(v1 + 61);
                ++*(v1 + 124);
              }
            }

            else
            {
              re::DynamicArray<re::Event<re::Session,unsigned long long,re::SessionError>::Subscription>::indexOf(buf, *(v1 + 61), *(v1 + 63), &v89[8]);
              if (buf[0] == 1)
              {
                re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::removeStableAt(v1 + 59, *&buf[8]);
              }
            }

            ++v40;
            v39 += 40;
            if (v38 == v40)
            {
              goto LABEL_82;
            }
          }

          v88 = 0;
          v99 = 0u;
          v100 = 0u;
          v98 = 0u;
          memset(buf, 0, sizeof(buf));
          os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
          *v90 = 136315906;
          *&v90[4] = "operator[]";
          v91 = 1024;
          v92 = 789;
          v93 = 2048;
          v94 = v40;
          v95 = 2048;
          v96 = v41;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_125:
          *v90 = 0;
          v99 = 0u;
          v100 = 0u;
          v98 = 0u;
          memset(buf, 0, sizeof(buf));
          os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
          *v89 = 136315906;
          *&v89[4] = "operator[]";
          *&v89[12] = 1024;
          *&v89[14] = 789;
          *&v89[18] = 2048;
          *&v89[20] = v41;
          *&v89[28] = 2048;
          *&v89[30] = v25;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }
      }
    }

LABEL_82:
    re::PacketPool::free(*(v1 + 338), v83);
    v12 = v72;
    goto LABEL_85;
  }

  v31 = 0;
  v32 = 0;
  while (1)
  {
    v33 = *(v22 + 56);
    if (v33 <= v32)
    {
      break;
    }

    v34 = *(v22 + 72) + v31;
    v35 = *(v34 + 32);
    v36 = *(v34 + 16);
    *v89 = *v34;
    *&v89[16] = v36;
    *&v89[32] = v35;
    if (v89[0] == 1)
    {
      re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::indexOf(v22, &v89[8], buf);
      if ((buf[0] & 1) == 0)
      {
        re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::add(v22, &v89[8]);
      }
    }

    else
    {
      re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::indexOf(v22, &v89[8], buf);
      if (buf[0] == 1)
      {
        re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::removeStableAt(v22, *&buf[8]);
      }
    }

    ++v32;
    v31 += 40;
    if (v30 == v32)
    {
      goto LABEL_53;
    }
  }

  v88 = 0;
  v99 = 0u;
  v100 = 0u;
  v98 = 0u;
  memset(buf, 0, sizeof(buf));
  v1 = MEMORY[0x277D86220];
  os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
  *v90 = 136315906;
  *&v90[4] = "operator[]";
  v91 = 1024;
  v92 = 789;
  v93 = 2048;
  v94 = v32;
  v95 = 2048;
  v96 = v33;
  _os_log_send_and_compose_impl();
  _os_crash_msg();
  __break(1u);
LABEL_105:
  if (v12)
  {
LABEL_106:
  }

LABEL_107:
  *(v1 + 405) = 0;
  ++*(v1 + 812);
LABEL_108:
  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v74);
  v58 = (*(**(v1 + 282) + 32))(*(v1 + 282));
  v59 = *(v1 + 395);
  if (v59)
  {
    v60 = v58;
    v41 = v59 - 1;
    v61 = 80 * v59;
    do
    {
      v25 = *(v1 + 395);
      if (v25 <= v41)
      {
        goto LABEL_125;
      }

      v62 = *(v1 + 543);
      if (v62)
      {
        v63 = *(v1 + 397) + v61;
        if (v60 - *(v63 - 48) >= v62)
        {
          v64 = *re::networkLogObjects(v58);
          if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
          {
            re::Transport::connectionAddress((v1 + 2320), *(v63 - 80), buf);
            if (buf[8])
            {
              v66 = *&buf[16];
            }

            else
            {
              v66 = &buf[9];
            }

            v67 = *(v1 + 543);
            *v89 = 136315394;
            *&v89[4] = v66;
            *&v89[12] = 1024;
            *&v89[14] = v67;
            _os_log_error_impl(&dword_26168F000, v64, OS_LOG_TYPE_ERROR, "Connection '%s' did not do handshake for %d ms. Disconnecting.", v89, 0x12u);
            if (*buf && (buf[8] & 1) != 0)
            {
              (*(**buf + 40))(*buf, *&buf[16]);
            }
          }

          v65 = *(v63 - 80);
          re::DynamicArray<re::Session::BacklogItem>::removeAt(v1 + 3144, v41);
          re::Transport::disconnect((v1 + 2320), v65, 0);
        }
      }

      --v41;
      v61 -= 80;
    }

    while (v41 != -1);
  }

LABEL_123:
  v68 = *MEMORY[0x277D85DE8];
}

void re::Session::stateEvent(_BOOL8 a1, uint64_t a2)
{
  v7 = a1;
  v8 = buf;
  v110 = *MEMORY[0x277D85DE8];
  if (a2 != 2)
  {
    v9 = *re::networkLogObjects(a1);
    a1 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (a1)
    {
      *buf = 136315394;
      *&buf[4] = v10;
      *&buf[12] = 2080;
      *&buf[14] = v11;
      _os_log_impl(&dword_26168F000, v9, OS_LOG_TYPE_DEFAULT, "Session: handling event '%s' in state '%s'", buf, 0x16u);
    }
  }

  v12 = *(v7 + 3264);
  if (v12 <= 1)
  {
    if (!v12)
    {
      goto LABEL_149;
    }

    if (v12 == 1)
    {
      if (a2 <= 1)
      {
        if (!a2)
        {
LABEL_84:
          *(v7 + 3288) = (*(**(v7 + 2256) + 32))(*(v7 + 2256));
          goto LABEL_149;
        }

        if (a2 != 1)
        {
LABEL_83:
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Invalid event %d in state '%s'", "!Unreachable code", "stateInit", 1389, a2, "Init");
          _os_crash();
          __break(1u);
          goto LABEL_84;
        }

LABEL_149:
        v91 = *MEMORY[0x277D85DE8];
        return;
      }

LABEL_81:
      if (a2 != 2)
      {
        if (a2 != 3)
        {
          goto LABEL_83;
        }

        goto LABEL_149;
      }

      v52 = (*(**(v7 + 2256) + 32))(*(v7 + 2256));
      v53 = *(v7 + 2168);
      if (!v53 || v52 - *(v7 + 3288) < v53)
      {
        if (*(v7 + 3032) == 1)
        {
          v54 = re::Session::peerID(v7);
          re::Session::assignLocalPeerID(v7, v54);
          v55 = v7;
          v56 = 2;
        }

        else
        {
          v55 = v7;
          v56 = 3;
        }

        re::Session::stateSet(v55, v56);
        goto LABEL_149;
      }

      v14 = *re::networkLogObjects(v52);
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
LABEL_148:
        re::Session::stopSession(v7, 2);
        goto LABEL_149;
      }

LABEL_151:
      v92 = *(v7 + 2168);
      *buf = 67109120;
      *&buf[4] = v92;
      _os_log_error_impl(&dword_26168F000, v14, OS_LOG_TYPE_ERROR, "Failed to initialize session in %d ms. Session will be terminated.", buf, 8u);
      goto LABEL_148;
    }

    goto LABEL_157;
  }

  if (v12 == 2)
  {
    if (a2 <= 2)
    {
      switch(a2)
      {
        case 0:
          re::Session::stateEvent(v7, 3);
          re::Event<re::Session>::raise(v7 + 120, v7);
          goto LABEL_149;
        case 1:
          goto LABEL_149;
        case 2:
          v26 = (*(**(v7 + 2256) + 32))(*(v7 + 2256));
          v27 = *(v7 + 3200);
          if (v27)
          {
            v28 = v26;
            v14 = v27 - 1;
            i = (32 * v27);
            do
            {
              v2 = *(v7 + 3200);
              if (v2 <= v14)
              {
                goto LABEL_155;
              }

              v29 = *(v7 + 3216);
              v30 = &i[v29];
              v31 = *(v7 + 2172);
              if (v31 && v28 - *(v30 - 4) >= v31 || ((v32 = *(v30 - 1), LODWORD(v33) = *(v7 + 2240), v33 <= 1) ? (v33 = 1) : (v33 = v33), v32 >= v33))
              {
                v26 = re::DynamicArray<re::Session::SendHandshakeInProgressEntry>::removeAt(v7 + 3184, v14);
              }

              else if (*(v7 + 3264) == 2 && v28 - *&i[v29 - 24] >= *(v7 + 3296))
              {
                *(v30 - 1) = v32 + 1;
                *&i[v29 - 24] = v28;
                v34 = *re::networkLogObjects(v26);
                if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
                {
                  re::Transport::connectionAddress((v7 + 2320), *&i[v29 - 16], buf);
                  v50 = &buf[9];
                  if (buf[8])
                  {
                    v50 = *&buf[16];
                  }

                  v51 = *(v30 - 1);
                  *v98 = 136315394;
                  *&v98[4] = v50;
                  *&v98[12] = 2048;
                  *&v98[14] = v51;
                  if (*buf && (buf[8] & 1) != 0)
                  {
                    (*(**buf + 40))();
                  }
                }

                v35 = *&i[v29 - 16];
                re::Session::localParticipant(buf, v7);
                v36 = *(*buf + 128);
                if (v36)
                {
                  v37 = *(*buf + 144);
                }

                else
                {
                  v37 = 0;
                }

                v38 = re::PacketPool::allocate(*(v7 + 2704), (v36 + 67));
                re::Packet::offsetBy(v38, 3);
                v39 = *(v38 + 1);
                *(v39 + 2) = 0;
                *v39 = 0;
                v40 = *(v38 + 2);
                v41 = *(v38 + 7);
                *buf = &unk_2873F59D0;
                *&buf[8] = v40;
                *&buf[16] = v41;
                buf[20] = 0;
                *&buf[24] = 0;
                *&v107 = 0;
                re::BitWriter::writeUInt32Bits(buf, 0, 0x20u);
                re::BitWriter::writeUInt32Bits(buf, 0, 0x20u);
                re::BitWriter::writeUInt32Bits(buf, 0, 0x20u);
                re::BitWriter::writeUInt32Bits(buf, 0, 0x20u);
                re::BitWriter::writeUInt32Bits(buf, 1u, 8u);
                re::BitWriter::writeUInt32Bits(buf, *(v7 + 2152), 0x20u);
                re::BitWriter::writeUInt32Bits(buf, *(v7 + 2156), 0x20u);
                v42 = *(v7 + 2164);
                re::BitWriter::writeUInt32Bits(buf, *(v7 + 2160), 0x20u);
                re::BitWriter::writeUInt32Bits(buf, v42, 0x20u);
                v43 = re::Session::peerID(v7);
                v44 = HIDWORD(v43);
                re::BitWriter::writeUInt32Bits(buf, v43, 0x20u);
                re::BitWriter::writeUInt32Bits(buf, v44, 0x20u);
                re::BitWriter::writeUInt32Bits(buf, *(v7 + 3280), 0x20u);
                v45 = *(v7 + 2208);
                if (v45)
                {
                  v46 = (*(*v45 + 64))(v45);
                  v48 = v47;
                }

                else
                {
                  v46 = 0;
                  v48 = 0;
                }

                re::BitWriter::writeUInt32Bits(buf, v48, 0x20u);
                re::BitWriter::writeData(buf, v46, v48);
                re::BitWriter::writeUInt32Bits(buf, v36, 0x20u);
                re::BitWriter::writeData(buf, v37, v36);
                v49 = *&buf[24];
                if (*&buf[28])
                {
                  v49 = *&buf[24] + 1;
                }

                *(v38 + 6) = v49;
                v26 = re::Transport::send((v7 + 2320), v35, v38, 0, 0, 0, 0);
              }

              --v14;
              i -= 32;
            }

            while (v14 != -1);
          }

          goto LABEL_149;
      }

LABEL_80:
      re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Invalid event %d in state '%s'", "!Unreachable code", "stateActive", 1457, a2, "Active");
      _os_crash();
      __break(1u);
      goto LABEL_81;
    }

    if (a2 != 3)
    {
      if (a2 == 4)
      {
        v57 = *(v7 + 7424);
        v58 = re::Session::peerID(v7);
        v59 = (*(*v57 + 80))(v57, v58, v7 + 2280);
        *(v7 + 3136) = v59;
        re::Session::onLeaderChange(v7, v59);
        goto LABEL_149;
      }

      if (a2 == 5)
      {
        goto LABEL_149;
      }

      goto LABEL_80;
    }

    v14 = *(v7 + 3160);
    if (!v14)
    {
      goto LABEL_149;
    }

    v4 = 80;
    v2 = &dword_26168F000;
    while (1)
    {
      --v14;
      i = *(v7 + 3160);
      if (i <= v14)
      {
        goto LABEL_156;
      }

      v60 = *(v7 + 3176) + 80 * v14;
      if (*(v60 + 8))
      {
        v61 = *(v60 + 16) == 0;
      }

      else
      {
        v61 = 1;
      }

      if (v61)
      {
        goto LABEL_143;
      }

      v62 = *re::networkLogObjects(a1);
      v63 = os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT);
      if (v63)
      {
        v64 = *(v60 + 24);
        *buf = 67109120;
        *&buf[4] = v64;
        _os_log_impl(&dword_26168F000, v62, OS_LOG_TYPE_DEFAULT, "Remote peer ready with capabilities 0x%x", buf, 8u);
      }

      v65 = *(v60 + 8);
      if (v65)
      {
        v66 = *(v7 + 2296);
        if (v66)
        {
          v67 = *(v7 + 2312);
          v68 = 8 * v66;
          while (1)
          {
            v69 = *v67;
            if (*(*v67 + 24) == v65)
            {
              break;
            }

            ++v67;
            v68 -= 8;
            if (!v68)
            {
              goto LABEL_105;
            }
          }

          v80 = (v69 + 8);
          v81 = (v69 + 8);
        }

        else
        {
LABEL_105:
          if (re::internal::enableSignposts(0, 0))
          {
            v70 = *(v60 + 8);
            kdebug_trace();
          }

          v71 = re::Transport::connectionAddress((v7 + 2320), *v60, buf);
          v72 = *(v60 + 72);
          v73 = *(v60 + 56);
          v74 = re::globalAllocators(v71);
          v75 = (*(*v74[2] + 32))(v74[2], 160, 8);
          *v98 = re::SessionParticipant::SessionParticipant(v75, *(v60 + 8), *v60, buf, *(v60 + 24), v72, v73);
          re::DynamicArray<re::SharedPtr<re::SessionParticipant>>::add((v7 + 2280), v98);
          if (*v98)
          {
          }

          if (*buf && (buf[8] & 1) != 0)
          {
            (*(**buf + 40))(*buf, *&buf[16]);
          }

          v76 = *(*(v7 + 2312) + 8 * *(v7 + 2296) - 8);
          v77 = *(v60 + 16);
          if (v77)
          {
            v78 = (v77 + 8);
            re::SharedPtr<re::SyncObject>::reset((v76 + 152), v77);
          }

          else
          {
            v82 = *(v76 + 152);
            if (v82)
            {

              *(v76 + 152) = 0;
            }
          }

          *&v95 = v7 + 2320;
          *(&v95 + 1) = *v60;
          v96 = 1;
          re::RoutingTable::addRoute(*(v7 + 3040), *(v60 + 8), &v95);
          (*(**(v7 + 7424) + 88))(*(v7 + 7424), *(v60 + 8));
          re::Session::stateEvent(v7, 5);
          v83 = *(*(v7 + 2312) + 8 * *(v7 + 2296) - 8);
          v94 = v83;
          if (v83)
          {
            v84 = (v83 + 8);
          }

          v85 = *(v7 + 376);
          *(v7 + 376) = v85 + 1;
          if (*(v7 + 312))
          {
            v86 = 0;
            do
            {
              if ((*(*(v7 + 328) + 32 * v86 + 24))(v7) == 1)
              {
                re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::removeStableAt((v7 + 296), v86);
              }

              else
              {
                ++v86;
              }
            }

            while (v86 < *(v7 + 312));
            v85 = *(v7 + 376) - 1;
          }

          *(v7 + 376) = v85;
          if (!v85)
          {
            v8 = *(v7 + 352);
            if (v8)
            {
              v87 = 0;
              for (i = 0; i != v8; ++i)
              {
                v5 = *(v7 + 352);
                if (v5 <= i)
                {
                  goto LABEL_153;
                }

                v88 = *(v7 + 368) + v87;
                v89 = *(v88 + 32);
                v90 = *(v88 + 16);
                *v98 = *v88;
                *&v98[16] = v90;
                *&v98[32] = v89;
                if (v98[0] == 1)
                {
                  re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::indexOf(v7 + 296, &v98[8], buf);
                  if ((buf[0] & 1) == 0)
                  {
                    re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::add((v7 + 296), &v98[8]);
                  }
                }

                else
                {
                  re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::indexOf(v7 + 296, &v98[8], buf);
                  if (buf[0] == 1)
                  {
                    re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::removeStableAt((v7 + 296), *&buf[8]);
                  }
                }

                v87 += 40;
              }
            }
          }

          if (!v94)
          {
            goto LABEL_142;
          }

          v81 = (v94 + 8);
        }
      }

      else
      {
        v79 = *re::networkLogObjects(v63);
        if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_26168F000, v79, OS_LOG_TYPE_ERROR, "Invalid peerID", buf, 2u);
        }

        re::Transport::disconnect((v7 + 2320), *v60, 0);
      }

LABEL_142:
      re::DynamicArray<re::Session::BacklogItem>::removeAt(v7 + 3144, v14);
LABEL_143:
      if (!v14)
      {
        goto LABEL_149;
      }
    }
  }

  if (v12 != 3)
  {
LABEL_157:
    _os_crash();
    __break(1u);
    goto LABEL_158;
  }

  if (a2 == 2)
  {
    goto LABEL_149;
  }

  if (!a2)
  {
    v13 = *(v7 + 2296);
    if (!v13)
    {
LABEL_26:
      v93 = *(v7 + 3032);
      v20 = *(v7 + 288);
      *(v7 + 288) = v20 + 1;
      if (*(v7 + 224))
      {
        v21 = 0;
        do
        {
          if ((*(*(v7 + 240) + 32 * v21 + 24))(v7) == 1)
          {
            re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::removeStableAt((v7 + 208), v21);
          }

          else
          {
            ++v21;
          }
        }

        while (v21 < *(v7 + 224));
        v20 = *(v7 + 288) - 1;
      }

      *(v7 + 288) = v20;
      if (!v20)
      {
        v22 = *(v7 + 264);
        if (v22)
        {
          v2 = 0;
          v14 = 0;
          i = v98;
          while (1)
          {
            v4 = *(v7 + 264);
            if (v4 <= v14)
            {
              goto LABEL_154;
            }

            v23 = v2 + *(v7 + 280);
            v24 = *(v23 + 4);
            v25 = *(v23 + 1);
            *v98 = *v23;
            *&v98[16] = v25;
            *&v98[32] = v24;
            if (v98[0] == 1)
            {
              re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::indexOf(v7 + 208, &v98[8], buf);
              if ((buf[0] & 1) == 0)
              {
                re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::add((v7 + 208), &v98[8]);
              }
            }

            else
            {
              re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::indexOf(v7 + 208, &v98[8], buf);
              if (buf[0] == 1)
              {
                re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::removeStableAt((v7 + 208), *&buf[8]);
              }
            }

            ++v14;
            v2 += 10;
            if (v22 == v14)
            {
              goto LABEL_149;
            }
          }
        }
      }

      goto LABEL_149;
    }

    v14 = v13 - 1;
    while (1)
    {
      v15 = *(v7 + 2296);
      if (v15 <= v14)
      {
        break;
      }

      v16 = *(*(*(v7 + 2312) + 8 * v14) + 32);
      if (v16)
      {
        re::Transport::disconnect((v7 + 2320), v16, 1);
        v17 = *(v7 + 2296);
        if (v17 <= v14)
        {
          *v99 = 0;
          v108 = 0u;
          v109 = 0u;
          v107 = 0u;
          memset(buf, 0, sizeof(buf));
          os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
          *v98 = 136315906;
          *&v98[4] = "operator[]";
          *&v98[12] = 1024;
          *&v98[14] = 789;
          *&v98[18] = 2048;
          *&v98[20] = v14;
          *&v98[28] = 2048;
          *&v98[30] = v17;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_153:
          v97 = 0;
          v108 = 0u;
          v109 = 0u;
          v107 = 0u;
          memset(buf, 0, sizeof(buf));
          os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
          *v99 = 136315906;
          *&v99[4] = "operator[]";
          v100 = 1024;
          v101 = 789;
          v102 = 2048;
          v103 = i;
          v104 = 2048;
          v105 = v5;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_154:
          *&v95 = 0;
          *(v8 + 3) = 0u;
          *(v8 + 4) = 0u;
          *(v8 + 1) = 0u;
          *(v8 + 2) = 0u;
          *v8 = 0u;
          os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
          *v99 = 136315906;
          *&v99[4] = "operator[]";
          v100 = 1024;
          v101 = 789;
          v102 = 2048;
          v103 = v14;
          v104 = 2048;
          v105 = v4;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_155:
          *v99 = 0;
          v108 = 0u;
          v109 = 0u;
          v107 = 0u;
          memset(buf, 0, sizeof(buf));
          os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
          *v98 = 136315906;
          *&v98[4] = "operator[]";
          *&v98[12] = 1024;
          *&v98[14] = 789;
          *&v98[18] = 2048;
          *&v98[20] = v14;
          *&v98[28] = 2048;
          *&v98[30] = v2;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_156:
          *v99 = 0;
          v108 = 0u;
          v109 = 0u;
          v107 = 0u;
          memset(buf, 0, sizeof(buf));
          os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
          *v98 = 136315906;
          *&v98[4] = "operator[]";
          *&v98[12] = 1024;
          *&v98[14] = 789;
          *&v98[18] = 2048;
          *&v98[20] = v14;
          *&v98[28] = 2048;
          *&v98[30] = i;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        v18 = *(*(v7 + 2312) + 8 * v14);
        v97 = v18;
        if (v18)
        {
          v19 = (v18 + 8);
        }

        re::Event<re::Session,re::SharedPtr<re::SessionParticipant>,re::ParticipantError>::raise(v7 + 384, v7);
        if (v97)
        {

          v97 = 0;
        }

        re::DynamicArray<re::SharedPtr<re::SessionParticipant>>::removeAt(v7 + 2280, v14);
      }

      if (--v14 == -1)
      {
        goto LABEL_26;
      }
    }

    *v99 = 0;
    v108 = 0u;
    v109 = 0u;
    v107 = 0u;
    memset(buf, 0, sizeof(buf));
    v7 = MEMORY[0x277D86220];
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    *v98 = 136315906;
    *&v98[4] = "operator[]";
    *&v98[12] = 1024;
    *&v98[14] = 789;
    *&v98[18] = 2048;
    *&v98[20] = v14;
    *&v98[28] = 2048;
    *&v98[30] = v15;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_151;
  }

LABEL_158:
  re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Invalid event %d in state '%s'", "!Unreachable code", "stateFinished", 1415, a2, "Finished");
  _os_crash();
  __break(1u);
}

void re::Session::afterFrameUpdate(re::Session *this)
{
  v38 = *MEMORY[0x277D85DE8];
  if (*(this + 816) == 3)
  {
    goto LABEL_2;
  }

  os_unfair_lock_lock(this + 672);
  v3 = *(this + 2660);
  if (v3 == 1)
  {
    v31 = *(this + 167);
  }

  os_unfair_lock_unlock(this + 672);
  v4 = *(this + 287);
  if (v4)
  {
    v5 = 0;
    v6 = 0;
    v7 = *(this + 289);
    v8 = 8 * v4;
    v9 = 0.0;
    do
    {
      re::Transport::connectionStats((this + 2320), *(*v7 + 32), buf);
      if (buf[0] == 1)
      {
        v6 += *&buf[4];
        v9 = v9 + *&buf[8];
        ++v5;
      }

      v7 += 8;
      v8 -= 8;
    }

    while (v8);
  }

  else
  {
    v6 = 0;
    v5 = 0;
    v9 = 0.0;
  }

  if (v3)
  {
    v10 = -1;
  }

  else
  {
    v10 = 0;
  }

  v11 = vandq_s8(v31, vdupq_n_s32(v10));
  if (v5)
  {
    v6 /= v5;
    v9 = v9 / v5;
  }

  v32 = v11;
  *(this + 927) = v11.i64[0];
  v12.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  v13 = *(this + 926);
  if (v13 - *(this + 925) == 128)
  {
    *(this + 925) = v13 - 127;
  }

  v14 = (this + 32 * (v13 & 0x7F));
  *(this + 926) = v13 + 1;
  v14[206].i32[2] = v6;
  *&v14[206].i32[3] = v9;
  v14[207] = v32;
  *v14[208].i8 = v12;
  v15 = *(this + 940);
  v16 = v15[11];
  v17 = v15[12];
  v19 = v15[13];
  v18 = v15[14];
  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  re::Transport::flushOutgoingData((this + 2320));
  v20 = (*(**(this + 282) + 32))(*(this + 282));
  v21 = *(this + 383);
  v22 = v21 + 1;
  v23 = 40 * v21;
  do
  {
    if (!--v22)
    {
      goto LABEL_2;
    }

    v24 = v20 - *(*(this + 385) + v23 - 16);
    v23 -= 40;
  }

  while (v24 >> 4 < 0x753);
  v25 = 0;
  v26 = 0;
  v27 = v22 - 1;
  do
  {
    if (*(this + 383) <= v26)
    {
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      *buf = 0u;
      os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_35:
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      *buf = 0u;
      os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    re::PacketPool::free(*(this + 338), *(*(this + 385) + v25));
    ++v26;
    v25 += 40;
  }

  while (v22 != v26);
  v29 = *(this + 383);
  if (v27 >= v29)
  {
    goto LABEL_35;
  }

  if (v27 < v29 - 1)
  {
    v28 = memmove(*(this + 385), (*(this + 385) + v23 + 40), 40 * v29 - v23 - 47);
    v29 = *(this + 383);
  }

  *(this + 383) = v29 - v22;
  ++*(this + 768);
  v30 = *re::networkLogObjects(v28);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = v22;
    _os_log_impl(&dword_26168F000, v30, OS_LOG_TYPE_DEFAULT, "Removing %zu Pending Messages due to timeout.", buf, 0xCu);
  }

LABEL_2:
  v1 = *MEMORY[0x277D85DE8];
}

uint64_t *re::Session::readRoutingHeader(re::Session *this, re::BitReader *a2)
{
  v7 = 0;
  v8 = 0;
  re::BitReader::readUInt64(a2, &v8);
  result = re::BitReader::readUInt64(a2, &v7);
  if (*(a2 + 12))
  {
    v5 = 0;
  }

  else
  {
    v6 = v7;
    *(this + 1) = v8;
    *(this + 2) = v6;
    v5 = 1;
  }

  *this = v5;
  return result;
}

uint64_t re::Session::sendData(uint64_t a1, unint64_t a2, const void *a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  v57 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 2392))
  {
    v28 = *re::networkLogObjects(a1);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      *&buf[4] = a4;
      *&buf[12] = 1024;
      *&buf[14] = a5;
      _os_log_impl(&dword_26168F000, v28, OS_LOG_TYPE_DEFAULT, "Session: attempting to send %zu bytes on channel %d when not initialized. Data discarded.", buf, 0x12u);
    }

LABEL_13:
    result = 14;
    goto LABEL_30;
  }

  v14 = re::PacketPool::allocate(*(a1 + 2704), (a4 + 67));
  re::Packet::offsetBy(v14, 3);
  v15 = *(v14 + 1);
  *(v15 + 2) = 0;
  *v15 = 0;
  v16 = *(v14 + 2);
  v17 = *(v14 + 7);
  *buf = &unk_2873F59D0;
  *&buf[8] = v16;
  *&buf[16] = v17;
  v54 = 0;
  v55 = 0;
  v56 = 0;
  v18 = re::Session::peerID(a1);
  v19 = HIDWORD(v18);
  re::BitWriter::writeUInt32Bits(buf, v18, 0x20u);
  re::BitWriter::writeUInt32Bits(buf, v19, 0x20u);
  re::BitWriter::writeUInt32Bits(buf, a2, 0x20u);
  re::BitWriter::writeUInt32Bits(buf, HIDWORD(a2), 0x20u);
  re::BitWriter::writeData(buf, a3, a4);
  v20 = v55;
  if (HIDWORD(v55))
  {
    v20 = v55 + 1;
  }

  *(v14 + 6) = v20;
  Route = re::RoutingTable::getRoute(*(a1 + 3040), a2, v46);
  if (v46[0] != 1)
  {
    v29 = *re::networkLogObjects(Route);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = re::Session::peerID(a1);
      *v49 = 134218240;
      v50 = v30;
      v51 = 2048;
      v52 = a2;
      _os_log_impl(&dword_26168F000, v29, OS_LOG_TYPE_DEFAULT, "No route exists for userData from %llu to %llu. Will try to discover route.", v49, 0x16u);
    }

    v31 = (*(**(a1 + 2256) + 32))(*(a1 + 2256));
    v32 = re::Session::peerID(a1);
    re::Session::broadcastRouteRequest(a1, 0, v32, a2, 1u);
    v34 = *(a1 + 3064);
    v35 = *(a1 + 3056);
    if (v34 >= v35)
    {
      v36 = v34 + 1;
      if (v35 < v34 + 1)
      {
        if (*(a1 + 3048))
        {
          v37 = 2 * v35;
          v38 = v35 == 0;
          v39 = 8;
          if (!v38)
          {
            v39 = v37;
          }

          if (v39 <= v36)
          {
            v40 = v36;
          }

          else
          {
            v40 = v39;
          }

          re::DynamicArray<re::Pair<BOOL,re::Event<re::Session>::Subscription,true>>::setCapacity((a1 + 3048), v40);
        }

        else
        {
          re::DynamicArray<re::Pair<BOOL,re::Event<re::Session>::Subscription,true>>::setCapacity((a1 + 3048), v36);
          ++*(a1 + 3072);
        }
      }

      v34 = *(a1 + 3064);
    }

    v44 = *(a1 + 3080) + 40 * v34;
    *v44 = v14;
    *(v44 + 8) = a2;
    *(v44 + 16) = a5;
    *(v44 + 24) = v31;
    *(v44 + 32) = a6;
    ++*(a1 + 3064);
    ++*(a1 + 3072);
LABEL_29:
    result = 1;
    goto LABEL_30;
  }

  v22 = *(v47 + 75);
  if (!v22)
  {
    goto LABEL_13;
  }

  v23 = *(v22 + 2296);
  if (v23)
  {
    v24 = *(v22 + 2312);
    v25 = 8 * v23;
    while (1)
    {
      v26 = *v24;
      if (*(*v24 + 32) == v48)
      {
        break;
      }

      ++v24;
      v25 -= 8;
      if (!v25)
      {
        goto LABEL_10;
      }
    }

    v41 = (v26 + 8);
    v43 = PacketUtils::move(v14, (a1 + 2320), v47, v42);
    re::Transport::send(v47, v48, v43, a5, a7, a6, *(v26 + 72));

    goto LABEL_29;
  }

LABEL_10:
  result = 8;
LABEL_30:
  v45 = *MEMORY[0x277D85DE8];
  return result;
}

void re::Session::broadcastRouteRequest(_BOOL8 this, uint64_t a2, unint64_t a3, unint64_t a4, unsigned int a5)
{
  v8 = this;
  v9 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a3 ^ (a3 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a3 ^ (a3 >> 30))) >> 27));
  v10 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a4 ^ (a4 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a4 ^ (a4 >> 30))) >> 27));
  v11 = ((v10 ^ (v10 >> 31)) + ((v9 ^ (v9 >> 31)) << 6) + ((v9 ^ (v9 >> 31)) >> 2) - 0x61C8864680B583E9) ^ v9 ^ (v9 >> 31);
  v12 = *(this + 3112);
  if (v12)
  {
    v13 = *(*(this + 3096) + 4 * (v11 % v12));
    if (v13 != 0x7FFFFFFF)
    {
      v48 = *(this + 3104);
      v49 = v48 + 32 * v13;
      v51 = *(v49 + 16);
      v50 = *(v49 + 24);
      if (v51 == a3 && v50 == a4)
      {
        return;
      }

      while (1)
      {
        v13 = *(v48 + 32 * v13 + 8) & 0x7FFFFFFF;
        if (v13 == 0x7FFFFFFF)
        {
          break;
        }

        v53 = v48 + 32 * v13;
        v55 = *(v53 + 16);
        v54 = *(v53 + 24);
        if (v55 == a3 && v54 == a4)
        {
          return;
        }
      }
    }
  }

  v14 = *(this + 3040);
  v15 = *(v14 + 48);
  if (!v15)
  {
    goto LABEL_25;
  }

  v57 = v11;
  v58 = this;
  v16 = *(v14 + 64);
  v17 = v16 + 40 * v15;
  v18 = (this + 2320);
  *v59 = HIDWORD(a4);
  do
  {
    if (*(v16 + 24) > 1u)
    {
      goto LABEL_23;
    }

    v20 = *(v16 + 8);
    v19 = *(v16 + 16);
    if (v20 == v18 && v19 == a2)
    {
      goto LABEL_23;
    }

    v22 = *(v20 + 600);
    if (!v22)
    {
      v30 = *re::networkLogObjects(this);
      this = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
      if (!this)
      {
        goto LABEL_23;
      }

      *buf = 0;
      v28 = v30;
      v29 = "sendRouteRequest: missing session for transport!";
      goto LABEL_19;
    }

    v23 = *(v22 + 2296);
    if (!v23)
    {
LABEL_15:
      v27 = *re::networkLogObjects(this);
      this = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
      if (!this)
      {
        goto LABEL_23;
      }

      *buf = 0;
      v28 = v27;
      v29 = "sendRouteRequest: missing participant for connection!";
LABEL_19:
      _os_log_error_impl(&dword_26168F000, v28, OS_LOG_TYPE_ERROR, v29, buf, 2u);
      goto LABEL_23;
    }

    v24 = *(v22 + 2312);
    v25 = 8 * v23;
    while (1)
    {
      v26 = *v24;
      if (*(*v24 + 32) == v19)
      {
        break;
      }

      ++v24;
      v25 -= 8;
      if (!v25)
      {
        goto LABEL_15;
      }
    }

    v31 = (v26 + 8);
    v32 = re::PacketPool::allocate(*(v20 + 384), 67);
    re::Packet::offsetBy(v32, 3);
    v33 = *(v32 + 1);
    *(v33 + 2) = 0;
    *v33 = 0;
    v34 = *(v32 + 2);
    v35 = *(v32 + 7);
    *buf = &unk_2873F59D0;
    *&buf[8] = v34;
    v62 = v35;
    v63 = 0;
    v64 = 0;
    v65 = 0;
    re::BitWriter::writeUInt32Bits(buf, a3, 0x20u);
    re::BitWriter::writeUInt32Bits(buf, HIDWORD(a3), 0x20u);
    re::BitWriter::writeUInt32Bits(buf, a4, 0x20u);
    re::BitWriter::writeUInt32Bits(buf, v59[0], 0x20u);
    re::BitWriter::writeUInt32Bits(buf, 4u, 8u);
    re::BitWriter::writeUInt32Bits(buf, a5, 0x20u);
    v36 = v64;
    if (HIDWORD(v64))
    {
      v36 = v64 + 1;
    }

    *(v32 + 6) = v36;
    re::Transport::send(v20, v19, v32, 0, 0, 0, *(v26 + 72));

LABEL_23:
    v16 += 40;
  }

  while (v16 != v17);
  v11 = v57;
  v8 = v58;
  LODWORD(v12) = *(v58 + 3112);
LABEL_25:
  *buf = a3;
  *&buf[8] = a4;
  if (!v12)
  {
    LODWORD(v37) = 0;
    goto LABEL_50;
  }

  v37 = v11 % v12;
  v38 = *(*(v8 + 3096) + 4 * v37);
  if (v38 == 0x7FFFFFFF)
  {
    goto LABEL_50;
  }

  v39 = *(v8 + 3104);
  v40 = v39 + 32 * v38;
  v42 = *(v40 + 16);
  v41 = *(v40 + 24);
  if (v42 == a3 && v41 == a4)
  {
LABEL_37:
    *(v39 + 32 * v38 + 16) = *buf;
  }

  else
  {
    while (1)
    {
      v38 = *(v39 + 32 * v38 + 8) & 0x7FFFFFFF;
      if (v38 == 0x7FFFFFFF)
      {
        break;
      }

      v44 = v39 + 32 * v38;
      v46 = *(v44 + 16);
      v45 = *(v44 + 24);
      if (v46 == a3 && v45 == a4)
      {
        goto LABEL_37;
      }
    }

LABEL_50:
    re::HashSetBase<re::Pair<unsigned long long,unsigned long long,true>,re::Pair<unsigned long long,unsigned long long,true>,re::internal::ValueAsKey<re::Pair<unsigned long long,unsigned long long,true>>,re::Hash<re::Pair<unsigned long long,unsigned long long,true>>,re::EqualTo<re::Pair<unsigned long long,unsigned long long,true>>,true,false>::addAsMove(v8 + 3088, v37, v11, buf);
  }

  ++*(v8 + 3128);
}

void re::Session::sendRouteResponse(re::Session *this, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v32 = *MEMORY[0x277D85DE8];
  Route = re::RoutingTable::getRoute(this, a3, v25);
  if ((v25[0] & 1) == 0)
  {
    v15 = *re::networkLogObjects(Route);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 134218496;
    *&buf[4] = a2;
    *&buf[12] = 2048;
    *&buf[14] = a3;
    v29 = 1024;
    LODWORD(v30) = a4;
    v14 = "Failed to send routing response. src=%llu, dst-%llu, hop=%d";
    v16 = v15;
    v17 = 28;
LABEL_14:
    _os_log_error_impl(&dword_26168F000, v16, OS_LOG_TYPE_ERROR, v14, buf, v17);
    goto LABEL_18;
  }

  v8 = *(v26 + 75);
  if (!v8)
  {
    v13 = *re::networkLogObjects(Route);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 0;
    v14 = "sendRouteResponse: missing session for transport!";
LABEL_13:
    v16 = v13;
    v17 = 2;
    goto LABEL_14;
  }

  v9 = *(v8 + 2296);
  if (!v9)
  {
LABEL_7:
    v13 = *re::networkLogObjects(Route);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 0;
    v14 = "sendRouteResponse: missing participant for connection!";
    goto LABEL_13;
  }

  v10 = *(v8 + 2312);
  v11 = 8 * v9;
  while (1)
  {
    v12 = *v10;
    if (*(*v10 + 32) == v27)
    {
      break;
    }

    ++v10;
    v11 -= 8;
    if (!v11)
    {
      goto LABEL_7;
    }
  }

  v18 = (v12 + 8);
  v19 = re::PacketPool::allocate(*(v26 + 48), 67);
  re::Packet::offsetBy(v19, 3);
  v20 = *(v19 + 1);
  *(v20 + 2) = 0;
  *v20 = 0;
  v21 = *(v19 + 2);
  v22 = *(v19 + 7);
  *buf = &unk_2873F59D0;
  *&buf[8] = v21;
  *&buf[16] = v22;
  buf[20] = 0;
  v30 = 0;
  v31 = 0;
  re::BitWriter::writeUInt32Bits(buf, a2, 0x20u);
  re::BitWriter::writeUInt32Bits(buf, HIDWORD(a2), 0x20u);
  re::BitWriter::writeUInt32Bits(buf, a3, 0x20u);
  re::BitWriter::writeUInt32Bits(buf, HIDWORD(a3), 0x20u);
  re::BitWriter::writeUInt32Bits(buf, 5u, 8u);
  re::BitWriter::writeUInt32Bits(buf, a4, 0x20u);
  v23 = v30;
  if (HIDWORD(v30))
  {
    v23 = v30 + 1;
  }

  *(v19 + 6) = v23;
  re::Transport::send(v26, v27, v19, 0, 0, 0, *(v12 + 72));

LABEL_18:
  v24 = *MEMORY[0x277D85DE8];
}

unint64_t re::HashSetBase<re::Pair<unsigned long long,unsigned long long,true>,re::Pair<unsigned long long,unsigned long long,true>,re::internal::ValueAsKey<re::Pair<unsigned long long,unsigned long long,true>>,re::Hash<re::Pair<unsigned long long,unsigned long long,true>>,re::EqualTo<re::Pair<unsigned long long,unsigned long long,true>>,true,false>::remove(uint64_t a1, void *a2)
{
  result = re::Hash<re::Pair<unsigned long long,unsigned long long,true>>::operator()(&v22, a2);
  v5 = *(a1 + 24);
  if (v5)
  {
    v6 = result % v5;
    v7 = *(a1 + 8);
    v8 = *(v7 + 4 * (result % v5));
    if (v8 != 0x7FFFFFFF)
    {
      v9 = *(a1 + 16);
      v10 = a2[1];
      v11 = v9 + 32 * v8;
      if (*(v11 + 16) == *a2 && *(v11 + 24) == v10)
      {
        *(v7 + 4 * v6) = *(v11 + 8) & 0x7FFFFFFF;
LABEL_15:
        v16 = *(a1 + 16);
        v17 = v16 + 32 * v8;
        v20 = *(v17 + 8);
        v19 = (v17 + 8);
        v18 = v20;
        if (v20 < 0)
        {
          *v19 = v18 & 0x7FFFFFFF;
          v16 = *(a1 + 16);
          v18 = *(v16 + 32 * v8 + 8);
        }

        v21 = *(a1 + 40);
        *(v16 + 32 * v8 + 8) = *(a1 + 36) | v18 & 0x80000000;
        --*(a1 + 28);
        *(a1 + 36) = v8;
        *(a1 + 40) = v21 + 1;
      }

      else
      {
        while (1)
        {
          v13 = v8;
          v8 = *(v9 + 32 * v8 + 8) & 0x7FFFFFFF;
          if (v8 == 0x7FFFFFFF)
          {
            break;
          }

          v14 = v9 + 32 * v8;
          if (*(v14 + 16) == *a2 && *(v14 + 24) == v10)
          {
            *(v9 + 32 * v13 + 8) = *(v9 + 32 * v13 + 8) & 0x80000000 | *(v14 + 8) & 0x7FFFFFFF;
            goto LABEL_15;
          }
        }
      }
    }
  }

  return result;
}

void *re::DynamicArray<re::Session::PendingMessage>::removeStableAt(void *result, unint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = result[2];
  if (v2 <= a2)
  {
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v3 = result;
  v4 = v2 - 1;
  if (v2 - 1 > a2)
  {
    result = (result[4] + 40 * a2);
    v5 = 40 * v2 - (40 * a2 + 40);
    if (v5)
    {
      result = memmove(result, result + 5, v5 - 7);
      v4 = v3[2] - 1;
    }
  }

  v3[2] = v4;
  ++*(v3 + 6);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void re::Session::sendRouteFail(re::Session *this, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v32 = *MEMORY[0x277D85DE8];
  Route = re::RoutingTable::getRoute(this, a3, v25);
  if ((v25[0] & 1) == 0)
  {
    v15 = *re::networkLogObjects(Route);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 134218496;
    *&buf[4] = a2;
    *&buf[12] = 2048;
    *&buf[14] = a3;
    v29 = 1024;
    LODWORD(v30) = a4;
    v14 = "Failed to notify peer about failed route. src=%llu, dst-%llu, hop=%d";
    v16 = v15;
    v17 = 28;
LABEL_14:
    _os_log_error_impl(&dword_26168F000, v16, OS_LOG_TYPE_ERROR, v14, buf, v17);
    goto LABEL_18;
  }

  v8 = *(v26 + 75);
  if (!v8)
  {
    v13 = *re::networkLogObjects(Route);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 0;
    v14 = "sendRouteFail: missing session for transport!";
LABEL_13:
    v16 = v13;
    v17 = 2;
    goto LABEL_14;
  }

  v9 = *(v8 + 2296);
  if (!v9)
  {
LABEL_7:
    v13 = *re::networkLogObjects(Route);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 0;
    v14 = "sendRouteFail: missing participant for connection!";
    goto LABEL_13;
  }

  v10 = *(v8 + 2312);
  v11 = 8 * v9;
  while (1)
  {
    v12 = *v10;
    if (*(*v10 + 32) == v27)
    {
      break;
    }

    ++v10;
    v11 -= 8;
    if (!v11)
    {
      goto LABEL_7;
    }
  }

  v18 = (v12 + 8);
  v19 = re::PacketPool::allocate(*(v26 + 48), 67);
  re::Packet::offsetBy(v19, 3);
  v20 = *(v19 + 1);
  *(v20 + 2) = 0;
  *v20 = 0;
  v21 = *(v19 + 2);
  v22 = *(v19 + 7);
  *buf = &unk_2873F59D0;
  *&buf[8] = v21;
  *&buf[16] = v22;
  buf[20] = 0;
  v30 = 0;
  v31 = 0;
  re::BitWriter::writeUInt32Bits(buf, a2, 0x20u);
  re::BitWriter::writeUInt32Bits(buf, HIDWORD(a2), 0x20u);
  re::BitWriter::writeUInt32Bits(buf, a3, 0x20u);
  re::BitWriter::writeUInt32Bits(buf, HIDWORD(a3), 0x20u);
  re::BitWriter::writeUInt32Bits(buf, 6u, 8u);
  re::BitWriter::writeUInt32Bits(buf, a4, 0x20u);
  v23 = v30;
  if (HIDWORD(v30))
  {
    v23 = v30 + 1;
  }

  *(v19 + 6) = v23;
  re::Transport::send(v26, v27, v19, 0, 0, 0, *(v12 + 72));

LABEL_18:
  v24 = *MEMORY[0x277D85DE8];
}

void re::Event<re::Session,unsigned long long>::raise(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 80);
  *(a1 + 80) = v3 + 1;
  if (*(a1 + 16))
  {
    v5 = 0;
    do
    {
      if ((*(*(a1 + 32) + 32 * v5 + 24))(a2) == 1)
      {
        re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::removeStableAt(a1, v5);
      }

      else
      {
        ++v5;
      }
    }

    while (v5 < *(a1 + 16));
    v3 = *(a1 + 80) - 1;
  }

  *(a1 + 80) = v3;
  if (!v3)
  {
    v6 = *(a1 + 56);
    if (v6)
    {
      v7 = 0;
      for (i = 0; i != v6; ++i)
      {
        v9 = *(a1 + 56);
        if (v9 <= i)
        {
          memset(v24, 0, sizeof(v24));
          os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
          v16 = 136315906;
          v17 = "operator[]";
          v18 = 1024;
          v19 = 789;
          v20 = 2048;
          v21 = i;
          v22 = 2048;
          v23 = v9;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        v10 = *(a1 + 72) + v7;
        v11 = *(v10 + 32);
        v12 = *(v10 + 16);
        v14[0] = *v10;
        v14[1] = v12;
        v15 = v11;
        if (LOBYTE(v14[0]) == 1)
        {
          re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::indexOf(a1, v14 + 1, v24);
          if ((v24[0] & 1) == 0)
          {
            re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::add(a1, v14 + 8);
          }
        }

        else
        {
          re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::indexOf(a1, v14 + 1, v24);
          if (LOBYTE(v24[0]) == 1)
          {
            re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::removeStableAt(a1, *(&v24[0] + 1));
          }
        }

        v7 += 40;
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

BOOL re::Session::isLocalPeer(re::Session *this, uint64_t a2)
{
  v2 = *(this + 380);
  if (v2)
  {
    return *(v2 + 24) == a2;
  }

  v4 = *re::networkLogObjects(this);
  result = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (result)
  {
    *v5 = 0;
    _os_log_impl(&dword_26168F000, v4, OS_LOG_TYPE_INFO, "Routing table is nil", v5, 2u);
    return 0;
  }

  return result;
}

uint64_t re::Session::hasPeerID(re::Session *this, uint64_t a2)
{
  v2 = *(this + 287);
  if (!v2)
  {
    return 0;
  }

  v3 = *(this + 289);
  v4 = 8 * v2;
  while (1)
  {
    v5 = *v3;
    if (*(*v3 + 24) == a2)
    {
      break;
    }

    ++v3;
    v4 -= 8;
    if (!v4)
    {
      return 0;
    }
  }

  v7 = (v5 + 8);

  return 1;
}

uint64_t re::DynamicArray<re::Session::SendHandshakeInProgressEntry>::removeAt(uint64_t result, unint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(result + 16);
  if (v2 <= a2)
  {
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v3 = v2 - 1;
  if (v2 - 1 > a2)
  {
    v4 = *(result + 32);
    v5 = v4 + 32 * v2;
    v6 = (v4 + 32 * a2);
    v7 = *(v5 - 16);
    *v6 = *(v5 - 32);
    v6[1] = v7;
    v3 = *(result + 16) - 1;
  }

  *(result + 16) = v3;
  ++*(result + 24);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t re::Session::removePendingPeerHelloForConnection(uint64_t this, uint64_t a2)
{
  v2 = *(this + 3200);
  if (v2)
  {
    v3 = 0;
    v4 = (*(this + 3216) + 16);
    while (1)
    {
      v5 = *v4;
      v4 += 4;
      if (v5 == a2)
      {
        break;
      }

      if (v2 == ++v3)
      {
        return this;
      }
    }

    return re::DynamicArray<re::Session::SendHandshakeInProgressEntry>::removeAt(this + 3184, v3);
  }

  return this;
}

_anonymous_namespace_ *re::Session::onConnected(re::Session *this, uint64_t a2)
{
  re::Event<re::Session,unsigned long long>::raise(this + 1792, this);
  if (!re::Session::findBacklogItemWithConnectionHandle(this, a2, 0))
  {
    v21 = 0;
    v14[1] = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v19 = 0u;
    v20 = 0;
    re::DynamicArray<unsigned char>::setCapacity(&v18, 0);
    ++v20;
    v14[0] = a2;
    v17 = (*(**(this + 282) + 32))(*(this + 282));
    re::DynamicArray<re::Session::BacklogItem>::add(this + 3144, v14);
    if (v18)
    {
      if (v21)
      {
        (*(*v18 + 40))();
      }

      v21 = 0;
      v19 = 0uLL;
      v18 = 0;
      ++v20;
    }

    if (v15)
    {
    }
  }

  result = (*(**(this + 282) + 32))(*(this + 282));
  v5 = result;
  v6 = *(this + 400);
  v7 = *(this + 399);
  if (v6 >= v7)
  {
    v8 = v6 + 1;
    if (v7 < v6 + 1)
    {
      if (*(this + 398))
      {
        v9 = 2 * v7;
        v10 = v7 == 0;
        v11 = 8;
        if (!v10)
        {
          v11 = v9;
        }

        if (v11 <= v8)
        {
          v12 = v8;
        }

        else
        {
          v12 = v11;
        }

        result = re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::setCapacity(this + 398, v12);
      }

      else
      {
        result = re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::setCapacity(this + 398, v8);
        ++*(this + 802);
      }
    }

    v6 = *(this + 400);
  }

  v13 = (*(this + 402) + 32 * v6);
  *v13 = v5;
  v13[1] = 0;
  v13[2] = a2;
  v13[3] = 0;
  ++*(this + 400);
  ++*(this + 802);
  return result;
}

uint64_t re::Session::findBacklogItemWithConnectionHandle(re::Session *this, uint64_t a2, unint64_t *a3)
{
  v10[5] = *MEMORY[0x277D85DE8];
  v6 = re::globalAllocators(this)[2];
  v10[0] = &unk_2873F51B8;
  v10[1] = a2;
  v10[3] = v6;
  v10[4] = v10;
  BacklogItem = re::Session::findBacklogItem(this, v10, a3);
  re::FunctionBase<24ul,BOOL ()(re::Session::BacklogItem const&)>::destroyCallable(v10);
  v8 = *MEMORY[0x277D85DE8];
  return BacklogItem;
}

uint64_t re::DynamicArray<re::Session::BacklogItem>::add(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v5 >= v4)
  {
    v6 = v5 + 1;
    if (v4 < v5 + 1)
    {
      if (*a1)
      {
        v7 = 2 * v4;
        v8 = v4 == 0;
        v9 = 8;
        if (!v8)
        {
          v9 = v7;
        }

        if (v9 <= v6)
        {
          v10 = v6;
        }

        else
        {
          v10 = v9;
        }

        re::DynamicArray<re::Session::BacklogItem>::setCapacity(a1, v10);
      }

      else
      {
        re::DynamicArray<re::Session::BacklogItem>::setCapacity(a1, v6);
        ++*(a1 + 24);
      }
    }

    v5 = *(a1 + 16);
  }

  v11 = *(a1 + 32) + 80 * v5;
  *v11 = *a2;
  v12 = *(a2 + 16);
  *(v11 + 16) = v12;
  if (v12)
  {
    v13 = (v12 + 8);
  }

  *(v11 + 24) = *(a2 + 24);
  result = re::DynamicArray<unsigned char>::DynamicArray(v11 + 40, (a2 + 40));
  ++*(a1 + 16);
  ++*(a1 + 24);
  return result;
}

void re::Session::onDisconnected(uint64_t **this, uint64_t a2)
{
  re::Event<re::Session,unsigned long long>::raise((this + 235), this);
  v15 = 0;
  v16 = 0;
  BacklogItemWithConnectionHandle = re::Session::findBacklogItemWithConnectionHandle(this, a2, &v15);
  if (BacklogItemWithConnectionHandle)
  {
    re::SharedPtr<re::SyncObject>::reset(&v16, *(BacklogItemWithConnectionHandle + 16));
    re::DynamicArray<re::Session::BacklogItem>::removeAt((this + 393), v15);
  }

  v5 = this[287];
  if (v5)
  {
    v6 = this[289];
    v7 = 8 * v5;
    while (1)
    {
      v8 = *v6;
      if (*(*v6 + 32) == a2)
      {
        break;
      }

      ++v6;
      v7 -= 8;
      if (!v7)
      {
        goto LABEL_9;
      }
    }

    v9 = (v8 + 8);
    re::SharedPtr<re::SyncObject>::reset(&v16, *(v8 + 152));
    v14 = v8;
    v10 = (v8 + 8);
    re::Session::removeParticipant(this, &v14);
  }

LABEL_9:
  v11 = this[276];
  if (v11)
  {
    if (v16)
    {
      v13 = v16;
      v12 = (v16 + 8);
      (*(*v11 + 80))(v11, &v13);
      if (v13)
      {

        v13 = 0;
      }
    }
  }

  re::Session::removePendingPeerHelloForConnection(this, a2);
  if (v16)
  {
  }
}

void re::DynamicArray<re::Session::BacklogItem>::removeAt(uint64_t a1, unint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  if (v2 <= a2)
  {
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (v2 - 1 > a2)
  {
    v4 = *(a1 + 32);
    v5 = v4 + 80 * v2;
    v6 = v4 + 80 * a2;
    *v6 = *(v5 - 80);
    v7 = *(v6 + 16);
    *(v6 + 16) = *(v5 - 64);
    *(v5 - 64) = v7;
    *(v6 + 24) = *(v5 - 56);
    re::DynamicArray<unsigned char>::operator=(v6 + 40, v5 - 40);
    v2 = *(a1 + 16);
  }

  v8 = *(a1 + 32) + 80 * v2;
  re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(v8 - 40);
  v9 = *(v8 - 64);
  if (v9)
  {

    *(v8 - 64) = 0;
  }

  --*(a1 + 16);
  ++*(a1 + 24);
  v10 = *MEMORY[0x277D85DE8];
}

uint64_t re::Session::removeParticipant(uint64_t a1, uint64_t *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = *(*a2 + 24);
  v16 = *a2;
  v5 = (*a2 + 8);
  re::Event<re::Session,re::SharedPtr<re::SessionParticipant>,re::ParticipantError>::raise(a1 + 384, a1);
  if (v16)
  {
  }

  re::RoutingTable::removeRoutesForConnection(*(a1 + 3040), (a1 + 2320), *(*a2 + 32));
  v6 = *(a1 + 2312);
  v7 = *(a1 + 2296);
  if (v7)
  {
    v8 = 8 * v7;
    v9 = *(a1 + 2312);
    while (*v9 != *a2)
    {
      ++v9;
      v8 -= 8;
      if (!v8)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
    v9 = *(a1 + 2312);
  }

  if (v9 != (v6 + 8 * v7))
  {
    re::DynamicArray<re::SharedPtr<re::SessionParticipant>>::removeAt(a1 + 2280, (v9 - v6) >> 3);
  }

LABEL_11:
  v10 = *(a1 + 3064);
  if (v10)
  {
    v11 = v10 - 1;
    v12 = 40 * v10;
    do
    {
      if (*(a1 + 3064) <= v11)
      {
        os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v13 = *(a1 + 3080) + v12;
      if (*(v13 - 32) == v4)
      {
        re::PacketPool::free(*(a1 + 2704), *(v13 - 40));
        re::DynamicArray<re::Session::PendingMessage>::removeStableAt((a1 + 3048), v11);
      }

      --v11;
      v12 -= 40;
    }

    while (v11 != -1);
  }

  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  re::Session::stateEvent(a1, 5);
  result = (*(**(a1 + 7424) + 96))(*(a1 + 7424), v4);
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t re::Session::onError(uint64_t this, uint64_t a2, int a3)
{
  if ((a3 & 0xFFFFFFFB) == 0)
  {
    v5 = this;
    v6 = *(this + 3160);
    if (v6)
    {
      v7 = 0;
      v8 = *(this + 3176);
      while (1)
      {
        v9 = *v8;
        v8 += 10;
        if (v9 == a2)
        {
          break;
        }

        if (v6 == ++v7)
        {
          goto LABEL_8;
        }
      }

      re::DynamicArray<re::Session::BacklogItem>::removeAt(this + 3144, v7);
    }

LABEL_8:

    return re::Session::removePendingPeerHelloForConnection(v5, a2);
  }

  return this;
}

_anonymous_namespace_ *re::Session::onReceive(_anonymous_namespace_ *result, uint64_t a2, int a3)
{
  if (a3 != 1)
  {
    v4 = result;
    v5 = *(result + 407);
    v6 = *(result + 405);
    if (v6)
    {
      v7 = 8 * v6;
      v8 = *(result + 407);
      while (*v8 != a2)
      {
        ++v8;
        v7 -= 8;
        if (!v7)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      v9 = *(result + 404);
      if (v6 >= v9)
      {
        v10 = v6 + 1;
        if (v9 < v6 + 1)
        {
          if (*(result + 403))
          {
            v11 = 2 * v9;
            if (!v9)
            {
              v11 = 8;
            }

            if (v11 <= v10)
            {
              v12 = v10;
            }

            else
            {
              v12 = v11;
            }

            result = re::DynamicArray<re::Allocator const*>::setCapacity(result + 403, v12);
          }

          else
          {
            result = re::DynamicArray<re::Allocator const*>::setCapacity(v4 + 403, v10);
            ++*(v4 + 812);
          }
        }

        v6 = *(v4 + 405);
        v5 = *(v4 + 407);
      }

      *(v5 + 8 * v6) = a2;
      *(v4 + 405) = v6 + 1;
      ++*(v4 + 812);
    }
  }

  return result;
}

void re::Session::onConnectionPaused(re::Session *this, uint64_t a2)
{
  v2 = *(this + 287);
  if (v2)
  {
    v4 = *(this + 289);
    v5 = 8 * v2;
    while (1)
    {
      v6 = *v4;
      if (*(*v4 + 32) == a2)
      {
        break;
      }

      ++v4;
      v5 -= 8;
      if (!v5)
      {
        return;
      }
    }

    v7 = (v6 + 8);
    v8 = *(v6 + 24);
    re::Event<re::Session,unsigned long long>::raise(this + 1968, this);
  }
}

void re::Session::onConnectionResumed(re::Session *this, uint64_t a2)
{
  v2 = *(this + 287);
  if (v2)
  {
    v4 = *(this + 289);
    v5 = 8 * v2;
    while (1)
    {
      v6 = *v4;
      if (*(*v4 + 32) == a2)
      {
        break;
      }

      ++v4;
      v5 -= 8;
      if (!v5)
      {
        return;
      }
    }

    v7 = (v6 + 8);
    v8 = *(v6 + 24);
    re::Event<re::Session,unsigned long long>::raise(this + 2056, this);
  }
}

uint64_t re::Session::findBacklogItem(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 3160);
  if (!v3)
  {
    return 0;
  }

  v7 = *(a1 + 3176);
  v8 = -v7;
  v9 = 80 * v3;
  while (!(*(**(a2 + 32) + 16))(*(a2 + 32), v7))
  {
    v7 += 80;
    v8 -= 80;
    v9 -= 80;
    if (!v9)
    {
      return 0;
    }
  }

  if (a3)
  {
    *a3 = 0xCCCCCCCCCCCCCCCDLL * ((-v8 - *(a1 + 3176)) >> 4);
  }

  return v7;
}

void re::Session::findParticipantWithIdentity(void *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = *a2;
  v7 = v5;
  if (v5)
  {
    v6 = (v5 + 8);
  }

  re::Session::findParticipant<re::Session::findParticipantWithIdentity(re::SharedPtr<re::DiscoveryIdentity> const&)::{lambda(re::SessionParticipant const*)#1}>(a1, &v7, a3);
  if (v7)
  {
  }
}

void re::Event<re::Session,re::SharedPtr<re::SessionParticipant>,re::ParticipantError>::raise(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 80);
  *(a1 + 80) = v3 + 1;
  if (*(a1 + 16))
  {
    v5 = 0;
    do
    {
      if ((*(*(a1 + 32) + 32 * v5 + 24))(a2) == 1)
      {
        re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::removeStableAt(a1, v5);
      }

      else
      {
        ++v5;
      }
    }

    while (v5 < *(a1 + 16));
    v3 = *(a1 + 80) - 1;
  }

  *(a1 + 80) = v3;
  if (!v3)
  {
    v6 = *(a1 + 56);
    if (v6)
    {
      v7 = 0;
      for (i = 0; i != v6; ++i)
      {
        v9 = *(a1 + 56);
        if (v9 <= i)
        {
          memset(v24, 0, sizeof(v24));
          os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
          v16 = 136315906;
          v17 = "operator[]";
          v18 = 1024;
          v19 = 789;
          v20 = 2048;
          v21 = i;
          v22 = 2048;
          v23 = v9;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        v10 = *(a1 + 72) + v7;
        v11 = *(v10 + 32);
        v12 = *(v10 + 16);
        v14[0] = *v10;
        v14[1] = v12;
        v15 = v11;
        if (LOBYTE(v14[0]) == 1)
        {
          re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::indexOf(a1, v14 + 1, v24);
          if ((v24[0] & 1) == 0)
          {
            re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::add(a1, v14 + 8);
          }
        }

        else
        {
          re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::indexOf(a1, v14 + 1, v24);
          if (LOBYTE(v24[0]) == 1)
          {
            re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::removeStableAt(a1, *(&v24[0] + 1));
          }
        }

        v7 += 40;
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void re::DynamicArray<re::SharedPtr<re::SessionParticipant>>::removeAt(uint64_t a1, unint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  if (v2 <= a2)
  {
    os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v4 = v2 - 1;
  if (v2 - 1 > a2)
  {
    v5 = *(a1 + 32);
    v6 = v5 + 8 * v2;
    v7 = *(v5 + 8 * a2);
    *(v5 + 8 * a2) = *(v6 - 8);
    *(v6 - 8) = v7;
  }

  v8 = *(a1 + 32) + 8 * v2;
  v9 = *(v8 - 8);
  if (v9)
  {

    *(v8 - 8) = 0;
    v4 = *(a1 + 16) - 1;
  }

  *(a1 + 16) = v4;
  ++*(a1 + 24);
  v10 = *MEMORY[0x277D85DE8];
}

void re::Session::onLeaderChange(re::Session *this, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = *re::networkLogObjects(this);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134218240;
    v7 = a2;
    v8 = 2048;
    v9 = re::Session::peerID(this);
    _os_log_impl(&dword_26168F000, v4, OS_LOG_TYPE_DEFAULT, "Picked session leader %llu (localPeerID=%llu)", &v6, 0x16u);
  }

  re::Event<re::Session,unsigned long long>::raise(this + 1704, this);
  v5 = *MEMORY[0x277D85DE8];
}

void re::DynamicArray<unsigned char>::resize(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }
  }

  else
  {
    if (*(a1 + 8) < a2)
    {
      re::DynamicArray<unsigned char>::setCapacity(a1, a2);
      v4 = *(a1 + 16);
    }

    v5 = a2 - v4;
    if (a2 > v4 && v5 >= 1)
    {
      bzero((*(a1 + 32) + v4), v5);
    }
  }

  *(a1 + 16) = a2;
  ++*(a1 + 24);
}

void re::Event<re::DiscoveryView,re::SharedPtr<re::DiscoveryIdentity>>::unsubscribe<re::Session>(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    v4 = 0;
    do
    {
      v5 = (*(a1 + 32) + 32 * v4);
      if (*v5 == a2)
      {
        if (!*(a1 + 80))
        {
          re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::removeStableAt(a1, v4);
          continue;
        }

        v8[0] = 0;
        v6 = v5[1];
        v9 = *v5;
        v10 = v6;
        re::DynamicArray<re::Pair<BOOL,re::Event<re::DiscoveryView,re::SharedPtr<re::DiscoveryIdentity>>::Subscription,true>>::add(a1 + 40, v8);
      }

      ++v4;
    }

    while (v4 < *(a1 + 16));
  }

  v7 = *MEMORY[0x277D85DE8];
}

float re::Session::averagedStatsAggregated@<S0>(re::Session *this@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v3 = *(this + 926);
  v4 = *(this + 925);
  v5 = v3 - v4;
  if ((v3 - v4) >= 2)
  {
    v6 = this + 32 * ((v3 - 1) & 0x7F) + 3304;
    v7 = this + 32 * (*(this + 925) & 0x7FLL) + 3304;
    a3 = (((*(v6 + 3) - *(v7 + 3)) / 1000000) / 1000.0);
    if (a3 > 0.0001)
    {
      v8 = vsubq_s32(*(v6 + 8), *(v7 + 8));
      v9.i64[0] = v8.u32[0];
      v9.i64[1] = v8.u32[1];
      v10 = vcvtq_f64_u64(v9);
      v9.i64[0] = v8.u32[2];
      v9.i64[1] = v8.u32[3];
      v11 = vdupq_lane_s64(*&a3, 0);
      *(a2 + 8) = vcvt_hight_f32_f64(vcvt_f32_f64(vdivq_f64(v10, v11)), vdivq_f64(vcvtq_f64_u64(v9), v11));
      v12 = 0.0;
      if (v3 != v4)
      {
        v13 = 0.0;
        do
        {
          v14 = (this + 32 * (v4 & 0x7F) + 3304);
          v13 = v13 + v14[1];
          v12 = v12 + *v14;
          ++v4;
        }

        while (v3 != v4);
        *(a2 + 4) = v13;
      }

      *&a3 = v12 / v5;
      *a2 = LODWORD(a3);
    }
  }

  return *&a3;
}

double re::HashSetBase<re::Pair<unsigned long long,unsigned long long,true>,re::Pair<unsigned long long,unsigned long long,true>,re::internal::ValueAsKey<re::Pair<unsigned long long,unsigned long long,true>>,re::Hash<re::Pair<unsigned long long,unsigned long long,true>>,re::EqualTo<re::Pair<unsigned long long,unsigned long long,true>>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = 8;
      do
      {
        v5 = a1[2];
        v6 = *(v5 + v4);
        if (v6 < 0)
        {
          *(v5 + v4) = v6 & 0x7FFFFFFF;
        }

        v4 += 32;
        --v3;
      }

      while (v3);
    }

    (*(*v2 + 40))(v2, a1[1]);
    *(a1 + 8) = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *&result = 0x7FFFFFFFLL;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return result;
}

void *re::internal::Callable<re::Session::findBacklogItemWithConnectionHandle(unsigned long long,unsigned long *)::{lambda(re::Session::BacklogItem const&)#1},BOOL ()(re::Session::BacklogItem const&)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_2873F51B8;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::Session::findBacklogItemWithConnectionHandle(unsigned long long,unsigned long *)::{lambda(re::Session::BacklogItem const&)#1},BOOL ()(re::Session::BacklogItem const&)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_2873F51B8;
  a2[1] = v2;
  return a2;
}

uint64_t (***re::FunctionBase<24ul,BOOL ()(re::Session::BacklogItem const&)>::destroyCallable(uint64_t a1))(void)
{
  result = *(a1 + 32);
  if (result)
  {
    result = (**result)(result);
    if (*(a1 + 32) != a1)
    {
      result = (*(**(a1 + 24) + 40))(*(a1 + 24));
    }

    *(a1 + 32) = 0;
  }

  return result;
}