uint64_t TSP::ReferenceDictionary_Entry::GetMetadata(TSP::ReferenceDictionary_Entry *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  result = off_1001E9950[28];
  v2 = off_1001E9950[29];
  return result;
}

uint64_t TSP::ReferenceDictionary::ReferenceDictionary(uint64_t a1, uint64_t a2)
{
  *a1 = off_1001CA2C0;
  *(a1 + 8) = a2;
  *(a1 + 16) = a2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  if (atomic_load_explicit(scc_info_ReferenceDictionary_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_ReferenceDictionary_TSPMessages_2eproto);
  }

  return a1;
}

void TSP::ReferenceDictionary::~ReferenceDictionary(TSP::ReferenceDictionary *this)
{
  sub_10002F4C4(this + 1);
  sub_10006A528(this + 2);
}

{
  TSP::ReferenceDictionary::~ReferenceDictionary(this);

  operator delete();
}

google::protobuf::UnknownFieldSet *TSP::ReferenceDictionary::Clear(google::protobuf::UnknownFieldSet *this, uint64_t a2, uint64_t a3)
{
  v3 = this;
  v4 = *(this + 6);
  if (v4 >= 1)
  {
    v5 = (*(this + 4) + 8);
    do
    {
      v6 = *v5++;
      this = TSP::ReferenceDictionary_Entry::Clear(v6, a2, a3);
      --v4;
    }

    while (v4);
    *(v3 + 24) = 0;
  }

  v8 = *(v3 + 8);
  v7 = (v3 + 8);
  if (v8)
  {

    return sub_1000315EC(v7, a2, a3);
  }

  return this;
}

google::protobuf::internal *TSP::ReferenceDictionary::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v22 = a2;
  if ((sub_1000313B0(a3, &v22, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v6 = (v22 + 1);
      v7 = *v22;
      if ((*v22 & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if ((*v6 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v22, (v8 - 128));
      v22 = TagFallback;
      if (!TagFallback)
      {
        return 0;
      }

      v6 = TagFallback;
      v7 = v5;
LABEL_6:
      if (v7 == 10)
      {
        v12 = (v6 - 1);
        while (1)
        {
          v13 = (v12 + 1);
          v22 = (v12 + 1);
          v14 = *(a1 + 32);
          if (!v14)
          {
            break;
          }

          v19 = *(a1 + 24);
          v15 = *v14;
          if (v19 < *v14)
          {
            *(a1 + 24) = v19 + 1;
            v16 = *&v14[2 * v19 + 2];
            goto LABEL_23;
          }

          if (v15 == *(a1 + 28))
          {
            goto LABEL_19;
          }

LABEL_20:
          *v14 = v15 + 1;
          v16 = google::protobuf::Arena::CreateMaybeMessage<TSP::ReferenceDictionary_Entry>(*(a1 + 16));
          v17 = *(a1 + 24);
          v18 = *(a1 + 32) + 8 * v17;
          *(a1 + 24) = v17 + 1;
          *(v18 + 8) = v16;
          v13 = v22;
LABEL_23:
          v12 = sub_100157EF8(a3, v16, v13);
          v22 = v12;
          if (!v12)
          {
            return 0;
          }

          if (*a3 <= v12 || *v12 != 10)
          {
            goto LABEL_14;
          }
        }

        v15 = *(a1 + 28);
LABEL_19:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 16), v15 + 1);
        v14 = *(a1 + 32);
        v15 = *v14;
        goto LABEL_20;
      }

      if (v7)
      {
        v9 = (v7 & 7) == 4;
      }

      else
      {
        v9 = 1;
      }

      if (v9)
      {
        *(a3 + 80) = v7 - 1;
        return v22;
      }

      v10 = *(a1 + 8);
      if (v10)
      {
        v11 = ((v10 & 0xFFFFFFFFFFFFFFFELL) + 8);
      }

      else
      {
        v11 = sub_100031428((a1 + 8), v5, v6);
        v6 = v22;
      }

      v22 = google::protobuf::internal::UnknownFieldParse(v7, v11, v6);
      if (!v22)
      {
        return 0;
      }

LABEL_14:
      if (sub_1000313B0(a3, &v22, *(a3 + 92)))
      {
        return v22;
      }
    }

    v6 = (v22 + 2);
LABEL_5:
    v22 = v6;
    goto LABEL_6;
  }

  return v22;
}

const google::protobuf::UnknownFieldSet *TSP::ReferenceDictionary::_InternalSerialize(TSP::ReferenceDictionary *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 6);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v8 = *(*(this + 4) + 8 * i + 8);
      *a2 = 10;
      v9 = *(v8 + 5);
      if (v9 > 0x7F)
      {
        a2[1] = v9 | 0x80;
        v11 = v9 >> 7;
        if (v9 >> 14)
        {
          v10 = a2 + 3;
          do
          {
            *(v10 - 1) = v11 | 0x80;
            v12 = v11 >> 7;
            ++v10;
            v13 = v11 >> 14;
            v11 >>= 7;
          }

          while (v13);
          *(v10 - 1) = v12;
        }

        else
        {
          a2[2] = v11;
          v10 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v9;
        v10 = a2 + 2;
      }

      a2 = TSP::ReferenceDictionary_Entry::_InternalSerialize(v8, v10, a3, a4);
    }
  }

  v14 = *(this + 1);
  if ((v14 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v14 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

char *TSP::ReferenceDictionary::ByteSizeLong(TSP::ReferenceDictionary *this)
{
  v2 = *(this + 6);
  v3 = *(this + 4);
  if (v3)
  {
    v4 = (v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (v2)
  {
    v5 = 8 * v2;
    do
    {
      v6 = *v4++;
      v7 = TSP::ReferenceDictionary_Entry::ByteSizeLong(v6);
      v2 = (v2 + v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6));
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v2, this + 10);
  }

  else
  {
    *(this + 10) = v2;
    return v2;
  }
}

void TSP::ReferenceDictionary::MergeFrom(TSP::ReferenceDictionary *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::ReferenceDictionary::MergeFrom(this, v5, v6);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void *TSP::ReferenceDictionary::MergeFrom(void *this, const TSP::ReferenceDictionary *a2, uint64_t a3)
{
  v4 = this;
  v5 = *(a2 + 1);
  if (v5)
  {
    this = sub_1000315A0(this + 1, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8), a3);
  }

  v6 = *(a2 + 6);
  if (v6)
  {
    v7 = *(a2 + 4);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v4 + 2), v6);
    this = sub_10006A5AC(v4 + 2, v8, v7 + 8, v6, *v4[4] - *(v4 + 6));
    v9 = *(v4 + 6) + v6;
    *(v4 + 6) = v9;
    v10 = v4[4];
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  return this;
}

void TSP::ReferenceDictionary::CopyFrom(char **this, char **a2, uint64_t a3)
{
  if (a2 != this)
  {
    TSP::ReferenceDictionary::Clear(this, a2, a3);

    TSP::ReferenceDictionary::MergeFrom(this, a2);
  }
}

BOOL sub_100057DC4(uint64_t a1)
{
  v1 = *(a1 + 8);
  do
  {
    v2 = v1;
    if (v1 < 1)
    {
      break;
    }

    v3 = *(*(a1 + 16) + 8 * v1);
    if ((~*(v3 + 16) & 3) != 0)
    {
      break;
    }

    if ((*(*(v3 + 24) + 16) & 1) == 0)
    {
      break;
    }

    --v1;
  }

  while ((*(*(v3 + 32) + 16) & 1) != 0);
  return v2 < 1;
}

uint64_t TSP::ReferenceDictionary::GetMetadata(TSP::ReferenceDictionary *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  result = off_1001E9950[30];
  v2 = off_1001E9950[31];
  return result;
}

void TSP::UUID::~UUID(TSP::UUID *this)
{
  sub_10002F4C4(this + 1);
}

{
  sub_10002F4C4(this + 1);

  operator delete();
}

google::protobuf::UnknownFieldSet *TSP::UUID::Clear(TSP::UUID *this, uint64_t a2, uint64_t a3)
{
  if ((*(this + 16) & 3) != 0)
  {
    *(this + 3) = 0;
    *(this + 4) = 0;
  }

  v4 = *(this + 8);
  result = (this + 8);
  *(result + 2) = 0;
  if (v4)
  {
    return sub_1000315EC(result, a2, a3);
  }

  return result;
}

google::protobuf::internal *TSP::UUID::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v26 = a2;
  v6 = 0;
  if ((sub_1000313B0(a3, &v26, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v8 = (v26 + 1);
      v9 = *v26;
      if ((*v26 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v10 = v9 + (*v8 << 7);
      v9 = v10 - 128;
      if ((*v8 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v26, (v10 - 128));
      v26 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_39;
      }

      v8 = TagFallback;
      v9 = v5;
LABEL_7:
      if (v9 >> 3 == 2)
      {
        if (v9 != 16)
        {
          goto LABEL_12;
        }

        v6 |= 2u;
        v16 = (v8 + 1);
        v15 = *v8;
        if ((v15 & 0x8000000000000000) == 0)
        {
          goto LABEL_24;
        }

        v17 = *v16;
        v15 = (v17 << 7) + v15 - 128;
        if ((v17 & 0x80000000) == 0)
        {
          v16 = (v8 + 2);
LABEL_24:
          v26 = v16;
          *(a1 + 32) = v15;
          goto LABEL_29;
        }

        v22 = google::protobuf::internal::VarintParseSlow64(v8, v15);
        v26 = v22;
        *(a1 + 32) = v23;
        if (!v22)
        {
          goto LABEL_39;
        }
      }

      else
      {
        if (v9 >> 3 != 1 || v9 != 8)
        {
LABEL_12:
          if (v9)
          {
            v12 = (v9 & 7) == 4;
          }

          else
          {
            v12 = 1;
          }

          if (v12)
          {
            *(a3 + 80) = v9 - 1;
            goto LABEL_2;
          }

          v13 = *(a1 + 8);
          if (v13)
          {
            v14 = ((v13 & 0xFFFFFFFFFFFFFFFELL) + 8);
          }

          else
          {
            v14 = sub_100031428((a1 + 8), v5, v8);
            v8 = v26;
          }

          v26 = google::protobuf::internal::UnknownFieldParse(v9, v14, v8);
          if (!v26)
          {
LABEL_39:
            v26 = 0;
            goto LABEL_2;
          }

          goto LABEL_29;
        }

        v6 |= 1u;
        v19 = (v8 + 1);
        v18 = *v8;
        if ((v18 & 0x8000000000000000) == 0)
        {
          goto LABEL_28;
        }

        v20 = *v19;
        v18 = (v20 << 7) + v18 - 128;
        if ((v20 & 0x80000000) == 0)
        {
          v19 = (v8 + 2);
LABEL_28:
          v26 = v19;
          *(a1 + 24) = v18;
          goto LABEL_29;
        }

        v24 = google::protobuf::internal::VarintParseSlow64(v8, v18);
        v26 = v24;
        *(a1 + 24) = v25;
        if (!v24)
        {
          goto LABEL_39;
        }
      }

LABEL_29:
      if (sub_1000313B0(a3, &v26, *(a3 + 92)))
      {
        goto LABEL_2;
      }
    }

    v8 = (v26 + 2);
LABEL_6:
    v26 = v8;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v6;
  return v26;
}

const google::protobuf::UnknownFieldSet *TSP::UUID::_InternalSerialize(TSP::UUID *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 4);
  if (v6)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 3);
    *a2 = 8;
    if (v7 <= 0x7F)
    {
      a2[1] = v7;
      a2 += 2;
      if ((v6 & 2) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_10;
    }

    a2[1] = v7 | 0x80;
    v8 = v7 >> 7;
    if (v7 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v8 | 0x80;
        v11 = v8 >> 7;
        ++a2;
        v12 = v8 >> 14;
        v8 >>= 7;
      }

      while (v12);
      *(a2 - 1) = v11;
      if ((v6 & 2) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_10;
    }

    a2[2] = v8;
    a2 += 3;
  }

  if ((v6 & 2) == 0)
  {
    goto LABEL_23;
  }

LABEL_10:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v9 = *(this + 4);
  *a2 = 16;
  if (v9 > 0x7F)
  {
    a2[1] = v9 | 0x80;
    v10 = v9 >> 7;
    if (v9 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v10 | 0x80;
        v13 = v10 >> 7;
        ++a2;
        v14 = v10 >> 14;
        v10 >>= 7;
      }

      while (v14);
      *(a2 - 1) = v13;
    }

    else
    {
      a2[2] = v10;
      a2 += 3;
    }
  }

  else
  {
    a2[1] = v9;
    a2 += 2;
  }

LABEL_23:
  v15 = *(this + 1);
  if ((v15 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v15 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

unint64_t TSP::UUID::RequiredFieldsByteSizeFallback(TSP::UUID *this)
{
  v1 = *(this + 4);
  if ((v1 & 1) == 0)
  {
    v2 = 0;
    if ((v1 & 2) == 0)
    {
      return v2;
    }

    goto LABEL_5;
  }

  v2 = ((9 * (__clz(*(this + 3) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if ((v1 & 2) != 0)
  {
LABEL_5:
    v2 += ((9 * (__clz(*(this + 4) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

  return v2;
}

char *TSP::UUID::ByteSizeLong(TSP::UUID *this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    v2 = TSP::UUID::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = (((9 * (__clz(*(this + 3) | 1) ^ 0x3F) + 73) >> 6) + ((9 * (__clz(*(this + 4) | 1) ^ 0x3F) + 73) >> 6) + 2);
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v2, this + 5);
  }

  else
  {
    *(this + 5) = v2;
    return v2;
  }
}

void TSP::UUID::MergeFrom(TSP::UUID *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::UUID::MergeFrom(this, v5, v6);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void *TSP::UUID::MergeFrom(void *this, const TSP::UUID *a2, uint64_t a3)
{
  v4 = this;
  v5 = *(a2 + 1);
  if (v5)
  {
    this = sub_1000315A0(this + 1, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8), a3);
  }

  v6 = *(a2 + 4);
  if ((v6 & 3) != 0)
  {
    if (v6)
    {
      v4[3] = *(a2 + 3);
    }

    if ((v6 & 2) != 0)
    {
      v4[4] = *(a2 + 4);
    }

    *(v4 + 4) |= v6;
  }

  return this;
}

void TSP::UUID::CopyFrom(char **this, char **a2, uint64_t a3)
{
  if (a2 != this)
  {
    TSP::UUID::Clear(this, a2, a3);

    TSP::UUID::MergeFrom(this, a2);
  }
}

uint64_t TSP::UUID::GetMetadata(TSP::UUID *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  result = off_1001E9950[32];
  v2 = off_1001E9950[33];
  return result;
}

void *TSP::CFUUIDArchive::CFUUIDArchive(void *a1, uint64_t a2)
{
  *a1 = off_1001CA420;
  a1[1] = a2;
  a1[2] = 0;
  if (atomic_load_explicit(scc_info_CFUUIDArchive_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_CFUUIDArchive_TSPMessages_2eproto);
  }

  a1[4] = 0;
  a1[5] = 0;
  a1[3] = &google::protobuf::internal::fixed_address_empty_string;
  return a1;
}

void TSP::CFUUIDArchive::~CFUUIDArchive(TSP::CFUUIDArchive *this)
{
  v1 = *(this + 3);
  if (v1 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    operator delete();
  }

  sub_10002F4C4(this + 1);
}

{
  TSP::CFUUIDArchive::~CFUUIDArchive(this);

  operator delete();
}

google::protobuf::UnknownFieldSet *TSP::CFUUIDArchive::Clear(TSP::CFUUIDArchive *this, uint64_t a2, uint64_t a3)
{
  v3 = *(this + 4);
  if (v3)
  {
    v4 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v4 + 23) < 0)
    {
      **v4 = 0;
      *(v4 + 8) = 0;
    }

    else
    {
      *v4 = 0;
      *(v4 + 23) = 0;
    }
  }

  if ((v3 & 0x1E) != 0)
  {
    *(this + 4) = 0;
    *(this + 5) = 0;
  }

  v6 = *(this + 8);
  result = (this + 8);
  *(result + 2) = 0;
  if (v6)
  {
    return sub_1000315EC(result, a2, a3);
  }

  return result;
}

google::protobuf::internal *TSP::CFUUIDArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v40 = a2;
  v6 = 0;
  if ((sub_1000313B0(a3, &v40, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v8 = (v40 + 1);
      v9 = *v40;
      if ((*v40 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v10 = v9 + (*v8 << 7);
      v9 = v10 - 128;
      if ((*v8 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v40, (v10 - 128));
      v40 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_62;
      }

      v8 = TagFallback;
      v9 = v5;
LABEL_7:
      v11 = v9 >> 3;
      if (v9 >> 3 <= 2)
      {
        if (v11 == 1)
        {
          if (v9 == 10)
          {
            *(a1 + 16) |= 1u;
            v25 = *(a1 + 8);
            if (v25)
            {
              v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
            }

            v26 = google::protobuf::internal::ArenaStringPtr::Mutable((a1 + 24), v25);
            v27 = google::protobuf::internal::InlineGreedyStringParser(v26, v40, a3);
          }

          else
          {
LABEL_40:
            if (v9)
            {
              v28 = (v9 & 7) == 4;
            }

            else
            {
              v28 = 1;
            }

            if (v28)
            {
              *(a3 + 80) = v9 - 1;
              goto LABEL_2;
            }

            v29 = *(a1 + 8);
            if (v29)
            {
              v30 = ((v29 & 0xFFFFFFFFFFFFFFFELL) + 8);
            }

            else
            {
              v30 = sub_100031428((a1 + 8), v5, v8);
              v8 = v40;
            }

            v27 = google::protobuf::internal::UnknownFieldParse(v9, v30, v8);
          }

          v40 = v27;
          if (!v27)
          {
            goto LABEL_62;
          }

          goto LABEL_48;
        }

        if (v11 != 2 || v9 != 16)
        {
          goto LABEL_40;
        }

        v6 |= 2u;
        v16 = (v8 + 1);
        LODWORD(v17) = *v8;
        if ((*v8 & 0x80000000) == 0)
        {
          goto LABEL_25;
        }

        v18 = *v16;
        v17 = (v17 + (v18 << 7) - 128);
        if ((v18 & 0x80000000) == 0)
        {
          v16 = (v8 + 2);
LABEL_25:
          v40 = v16;
          *(a1 + 32) = v17;
          goto LABEL_48;
        }

        v38 = google::protobuf::internal::VarintParseSlow32(v8, v17);
        v40 = v38;
        *(a1 + 32) = v39;
        if (!v38)
        {
LABEL_62:
          v40 = 0;
          goto LABEL_2;
        }
      }

      else if (v11 == 3)
      {
        if (v9 != 24)
        {
          goto LABEL_40;
        }

        v6 |= 4u;
        v19 = (v8 + 1);
        LODWORD(v20) = *v8;
        if ((*v8 & 0x80000000) == 0)
        {
          goto LABEL_30;
        }

        v21 = *v19;
        v20 = (v20 + (v21 << 7) - 128);
        if ((v21 & 0x80000000) == 0)
        {
          v19 = (v8 + 2);
LABEL_30:
          v40 = v19;
          *(a1 + 36) = v20;
          goto LABEL_48;
        }

        v32 = google::protobuf::internal::VarintParseSlow32(v8, v20);
        v40 = v32;
        *(a1 + 36) = v33;
        if (!v32)
        {
          goto LABEL_62;
        }
      }

      else if (v11 == 4)
      {
        if (v9 != 32)
        {
          goto LABEL_40;
        }

        v6 |= 8u;
        v22 = (v8 + 1);
        LODWORD(v23) = *v8;
        if ((*v8 & 0x80000000) == 0)
        {
          goto LABEL_35;
        }

        v24 = *v22;
        v23 = (v23 + (v24 << 7) - 128);
        if ((v24 & 0x80000000) == 0)
        {
          v22 = (v8 + 2);
LABEL_35:
          v40 = v22;
          *(a1 + 40) = v23;
          goto LABEL_48;
        }

        v34 = google::protobuf::internal::VarintParseSlow32(v8, v23);
        v40 = v34;
        *(a1 + 40) = v35;
        if (!v34)
        {
          goto LABEL_62;
        }
      }

      else
      {
        if (v11 != 5 || v9 != 40)
        {
          goto LABEL_40;
        }

        v6 |= 0x10u;
        v12 = (v8 + 1);
        LODWORD(v13) = *v8;
        if ((*v8 & 0x80000000) == 0)
        {
          goto LABEL_15;
        }

        v14 = *v12;
        v13 = (v13 + (v14 << 7) - 128);
        if ((v14 & 0x80000000) == 0)
        {
          v12 = (v8 + 2);
LABEL_15:
          v40 = v12;
          *(a1 + 44) = v13;
          goto LABEL_48;
        }

        v36 = google::protobuf::internal::VarintParseSlow32(v8, v13);
        v40 = v36;
        *(a1 + 44) = v37;
        if (!v36)
        {
          goto LABEL_62;
        }
      }

LABEL_48:
      if (sub_1000313B0(a3, &v40, *(a3 + 92)))
      {
        goto LABEL_2;
      }
    }

    v8 = (v40 + 2);
LABEL_6:
    v40 = v8;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v6;
  return v40;
}

const google::protobuf::UnknownFieldSet *TSP::CFUUIDArchive::_InternalSerialize(TSP::CFUUIDArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if (v6)
  {
    v4 = sub_100030384(a3, 1, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), a2);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_27:
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v15 = *(this + 9);
      *v4 = 24;
      if (v15 > 0x7F)
      {
        v4[1] = v15 | 0x80;
        v16 = v15 >> 7;
        if (v15 >> 14)
        {
          v4 += 3;
          do
          {
            *(v4 - 1) = v16 | 0x80;
            v17 = v16 >> 7;
            ++v4;
            v18 = v16 >> 14;
            v16 >>= 7;
          }

          while (v18);
          *(v4 - 1) = v17;
          if ((v6 & 8) != 0)
          {
            goto LABEL_38;
          }
        }

        else
        {
          v4[2] = v16;
          v4 += 3;
          if ((v6 & 8) != 0)
          {
            goto LABEL_38;
          }
        }
      }

      else
      {
        v4[1] = v15;
        v4 += 2;
        if ((v6 & 8) != 0)
        {
          goto LABEL_38;
        }
      }

LABEL_5:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_49;
      }

      goto LABEL_6;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v8 = *(this + 8);
  *v4 = 16;
  if (v8 > 0x7F)
  {
    v4[1] = v8 | 0x80;
    v10 = v8 >> 7;
    if (v8 >> 14)
    {
      v4 += 3;
      do
      {
        *(v4 - 1) = v10 | 0x80;
        v13 = v10 >> 7;
        ++v4;
        v14 = v10 >> 14;
        v10 >>= 7;
      }

      while (v14);
      *(v4 - 1) = v13;
      if ((v6 & 4) != 0)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v4[2] = v10;
      v4 += 3;
      if ((v6 & 4) != 0)
      {
        goto LABEL_27;
      }
    }
  }

  else
  {
    v4[1] = v8;
    v4 += 2;
    if ((v6 & 4) != 0)
    {
      goto LABEL_27;
    }
  }

LABEL_4:
  if ((v6 & 8) == 0)
  {
    goto LABEL_5;
  }

LABEL_38:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v19 = *(this + 10);
  *v4 = 32;
  if (v19 > 0x7F)
  {
    v4[1] = v19 | 0x80;
    v20 = v19 >> 7;
    if (v19 >> 14)
    {
      v4 += 3;
      do
      {
        *(v4 - 1) = v20 | 0x80;
        v21 = v20 >> 7;
        ++v4;
        v22 = v20 >> 14;
        v20 >>= 7;
      }

      while (v22);
      *(v4 - 1) = v21;
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v4[2] = v20;
      v4 += 3;
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_49;
      }
    }
  }

  else
  {
    v4[1] = v19;
    v4 += 2;
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_49;
    }
  }

LABEL_6:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v7 = *(this + 11);
  *v4 = 40;
  if (v7 > 0x7F)
  {
    v4[1] = v7 | 0x80;
    v9 = v7 >> 7;
    if (v7 >> 14)
    {
      v4 += 3;
      do
      {
        *(v4 - 1) = v9 | 0x80;
        v11 = v9 >> 7;
        ++v4;
        v12 = v9 >> 14;
        v9 >>= 7;
      }

      while (v12);
      *(v4 - 1) = v11;
    }

    else
    {
      v4[2] = v9;
      v4 += 3;
    }
  }

  else
  {
    v4[1] = v7;
    v4 += 2;
  }

LABEL_49:
  v23 = *(this + 1);
  if ((v23 & 1) == 0)
  {
    return v4;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v23 & 0xFFFFFFFFFFFFFFFELL) + 8), v4, a3, v4);
}

char *TSP::CFUUIDArchive::ByteSizeLong(TSP::CFUUIDArchive *this)
{
  v1 = *(this + 4);
  if ((v1 & 0x1F) == 0)
  {
    v2 = 0;
    goto LABEL_14;
  }

  if ((v1 & 1) == 0)
  {
    v2 = 0;
    if ((v1 & 2) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    v2 = (v2 + ((9 * (__clz(*(this + 8) | 1) ^ 0x1F) + 73) >> 6) + 1);
    goto LABEL_10;
  }

  v3 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
  v4 = *(v3 + 23);
  v5 = *(v3 + 8);
  if ((v4 & 0x80u) == 0)
  {
    v5 = v4;
  }

  v2 = (v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1);
  if ((v1 & 2) != 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  if ((v1 & 4) != 0)
  {
    v2 = (v2 + ((9 * (__clz(*(this + 9) | 1) ^ 0x1F) + 73) >> 6) + 1);
    if ((v1 & 8) == 0)
    {
LABEL_12:
      if ((v1 & 0x10) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }

  else if ((v1 & 8) == 0)
  {
    goto LABEL_12;
  }

  v2 = (v2 + ((9 * (__clz(*(this + 10) | 1) ^ 0x1F) + 73) >> 6) + 1);
  if ((v1 & 0x10) != 0)
  {
LABEL_13:
    v2 = (v2 + ((9 * (__clz(*(this + 11) | 1) ^ 0x1F) + 73) >> 6) + 1);
  }

LABEL_14:
  if (*(this + 8))
  {
    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v2, this + 5);
  }

  *(this + 5) = v2;
  return v2;
}

void TSP::CFUUIDArchive::MergeFrom(std::string *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::CFUUIDArchive::MergeFrom(this, v5, v6);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

std::string *TSP::CFUUIDArchive::MergeFrom(std::string *this, const TSP::CFUUIDArchive *a2, uint64_t a3)
{
  v4 = this;
  v5 = *(a2 + 1);
  if (v5)
  {
    this = sub_1000315A0(&this->__r_.__value_.__l.__size_, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8), a3);
  }

  v6 = *(a2 + 4);
  if ((v6 & 0x1F) != 0)
  {
    if (v6)
    {
      v7 = *(a2 + 3);
      LODWORD(v4->__r_.__value_.__r.__words[2]) |= 1u;
      size = v4->__r_.__value_.__l.__size_;
      if (size)
      {
        size = *(size & 0xFFFFFFFFFFFFFFFELL);
      }

      this = google::protobuf::internal::ArenaStringPtr::Set(&v4[1], v7 & 0xFFFFFFFFFFFFFFFELL, size);
      if ((v6 & 2) == 0)
      {
LABEL_6:
        if ((v6 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_16;
      }
    }

    else if ((v6 & 2) == 0)
    {
      goto LABEL_6;
    }

    LODWORD(v4[1].__r_.__value_.__r.__words[1]) = *(a2 + 8);
    if ((v6 & 4) == 0)
    {
LABEL_7:
      if ((v6 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_17;
    }

LABEL_16:
    HIDWORD(v4[1].__r_.__value_.__r.__words[1]) = *(a2 + 9);
    if ((v6 & 8) == 0)
    {
LABEL_8:
      if ((v6 & 0x10) == 0)
      {
LABEL_10:
        LODWORD(v4->__r_.__value_.__r.__words[2]) |= v6;
        return this;
      }

LABEL_9:
      HIDWORD(v4[1].__r_.__value_.__r.__words[2]) = *(a2 + 11);
      goto LABEL_10;
    }

LABEL_17:
    LODWORD(v4[1].__r_.__value_.__r.__words[2]) = *(a2 + 10);
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  return this;
}

void TSP::CFUUIDArchive::CopyFrom(char **this, char **a2, uint64_t a3)
{
  if (a2 != this)
  {
    TSP::CFUUIDArchive::Clear(this, a2, a3);

    TSP::CFUUIDArchive::MergeFrom(this, a2);
  }
}

uint64_t TSP::CFUUIDArchive::GetMetadata(TSP::CFUUIDArchive *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  result = off_1001E9950[34];
  v2 = off_1001E9950[35];
  return result;
}

uint64_t TSP::UUIDSetArchive::UUIDSetArchive(uint64_t a1, uint64_t a2)
{
  *a1 = off_1001CA4D0;
  *(a1 + 8) = a2;
  *(a1 + 16) = a2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  if (atomic_load_explicit(scc_info_UUIDSetArchive_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_UUIDSetArchive_TSPMessages_2eproto);
  }

  return a1;
}

void TSP::UUIDSetArchive::~UUIDSetArchive(TSP::UUIDSetArchive *this)
{
  sub_10002F4C4(this + 1);
  sub_10004A544(this + 2);
}

{
  TSP::UUIDSetArchive::~UUIDSetArchive(this);

  operator delete();
}

google::protobuf::UnknownFieldSet *TSP::UUIDSetArchive::Clear(google::protobuf::UnknownFieldSet *this, uint64_t a2, uint64_t a3)
{
  v3 = this;
  v4 = *(this + 6);
  if (v4 >= 1)
  {
    v5 = (*(this + 4) + 8);
    do
    {
      v6 = *v5++;
      this = TSP::UUID::Clear(v6, a2, a3);
      --v4;
    }

    while (v4);
    *(v3 + 24) = 0;
  }

  v8 = *(v3 + 8);
  v7 = (v3 + 8);
  if (v8)
  {

    return sub_1000315EC(v7, a2, a3);
  }

  return this;
}

google::protobuf::internal *TSP::UUIDSetArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v22 = a2;
  if ((sub_1000313B0(a3, &v22, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v6 = (v22 + 1);
      v7 = *v22;
      if ((*v22 & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if ((*v6 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v22, (v8 - 128));
      v22 = TagFallback;
      if (!TagFallback)
      {
        return 0;
      }

      v6 = TagFallback;
      v7 = v5;
LABEL_6:
      if (v7 == 10)
      {
        v12 = (v6 - 1);
        while (1)
        {
          v13 = (v12 + 1);
          v22 = (v12 + 1);
          v14 = *(a1 + 32);
          if (!v14)
          {
            break;
          }

          v19 = *(a1 + 24);
          v15 = *v14;
          if (v19 < *v14)
          {
            *(a1 + 24) = v19 + 1;
            v16 = *&v14[2 * v19 + 2];
            goto LABEL_23;
          }

          if (v15 == *(a1 + 28))
          {
            goto LABEL_19;
          }

LABEL_20:
          *v14 = v15 + 1;
          v16 = google::protobuf::Arena::CreateMaybeMessage<TSP::UUID>(*(a1 + 16));
          v17 = *(a1 + 24);
          v18 = *(a1 + 32) + 8 * v17;
          *(a1 + 24) = v17 + 1;
          *(v18 + 8) = v16;
          v13 = v22;
LABEL_23:
          v12 = sub_100156190(a3, v16, v13);
          v22 = v12;
          if (!v12)
          {
            return 0;
          }

          if (*a3 <= v12 || *v12 != 10)
          {
            goto LABEL_14;
          }
        }

        v15 = *(a1 + 28);
LABEL_19:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 16), v15 + 1);
        v14 = *(a1 + 32);
        v15 = *v14;
        goto LABEL_20;
      }

      if (v7)
      {
        v9 = (v7 & 7) == 4;
      }

      else
      {
        v9 = 1;
      }

      if (v9)
      {
        *(a3 + 80) = v7 - 1;
        return v22;
      }

      v10 = *(a1 + 8);
      if (v10)
      {
        v11 = ((v10 & 0xFFFFFFFFFFFFFFFELL) + 8);
      }

      else
      {
        v11 = sub_100031428((a1 + 8), v5, v6);
        v6 = v22;
      }

      v22 = google::protobuf::internal::UnknownFieldParse(v7, v11, v6);
      if (!v22)
      {
        return 0;
      }

LABEL_14:
      if (sub_1000313B0(a3, &v22, *(a3 + 92)))
      {
        return v22;
      }
    }

    v6 = (v22 + 2);
LABEL_5:
    v22 = v6;
    goto LABEL_6;
  }

  return v22;
}

const google::protobuf::UnknownFieldSet *TSP::UUIDSetArchive::_InternalSerialize(TSP::UUIDSetArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 6);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v8 = *(*(this + 4) + 8 * i + 8);
      *a2 = 10;
      v9 = *(v8 + 5);
      if (v9 > 0x7F)
      {
        a2[1] = v9 | 0x80;
        v11 = v9 >> 7;
        if (v9 >> 14)
        {
          v10 = a2 + 3;
          do
          {
            *(v10 - 1) = v11 | 0x80;
            v12 = v11 >> 7;
            ++v10;
            v13 = v11 >> 14;
            v11 >>= 7;
          }

          while (v13);
          *(v10 - 1) = v12;
        }

        else
        {
          a2[2] = v11;
          v10 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v9;
        v10 = a2 + 2;
      }

      a2 = TSP::UUID::_InternalSerialize(v8, v10, a3, a4);
    }
  }

  v14 = *(this + 1);
  if ((v14 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v14 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

char *TSP::UUIDSetArchive::ByteSizeLong(TSP::UUIDSetArchive *this)
{
  v2 = *(this + 6);
  v3 = *(this + 4);
  if (v3)
  {
    v4 = (v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (v2)
  {
    v5 = 8 * v2;
    do
    {
      v6 = *v4++;
      v7 = TSP::UUID::ByteSizeLong(v6);
      v2 = (v2 + v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6));
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v2, this + 10);
  }

  else
  {
    *(this + 10) = v2;
    return v2;
  }
}

void TSP::UUIDSetArchive::MergeFrom(TSP::UUIDSetArchive *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::UUIDSetArchive::MergeFrom(this, v5, v6);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void *TSP::UUIDSetArchive::MergeFrom(void *this, const TSP::UUIDSetArchive *a2, uint64_t a3)
{
  v4 = this;
  v5 = *(a2 + 1);
  if (v5)
  {
    this = sub_1000315A0(this + 1, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8), a3);
  }

  v6 = *(a2 + 6);
  if (v6)
  {
    v7 = *(a2 + 4);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v4 + 2), v6);
    this = sub_10006A66C(v4 + 2, v8, v7 + 8, v6, *v4[4] - *(v4 + 6));
    v9 = *(v4 + 6) + v6;
    *(v4 + 6) = v9;
    v10 = v4[4];
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  return this;
}

void TSP::UUIDSetArchive::CopyFrom(char **this, char **a2, uint64_t a3)
{
  if (a2 != this)
  {
    TSP::UUIDSetArchive::Clear(this, a2, a3);

    TSP::UUIDSetArchive::MergeFrom(this, a2);
  }
}

BOOL TSP::UUIDSetArchive::IsInitialized(TSP::UUIDSetArchive *this)
{
  v1 = *(this + 6);
  do
  {
    v2 = v1;
    if (v1 < 1)
    {
      break;
    }

    v3 = *(*(this + 4) + 8 * v1--);
  }

  while ((~*(v3 + 16) & 3) == 0);
  return v2 < 1;
}

uint64_t TSP::UUIDSetArchive::GetMetadata(TSP::UUIDSetArchive *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  result = off_1001E9950[36];
  v2 = off_1001E9950[37];
  return result;
}

uint64_t TSP::UUIDMapArchive::UUIDMapArchive(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = a2;
  *a1 = off_1001CA580;
  *(a1 + 8) = a2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = a2;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  if (atomic_load_explicit(scc_info_UUIDMapArchive_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_UUIDMapArchive_TSPMessages_2eproto);
  }

  return a1;
}

void sub_100059750(_Unwind_Exception *a1)
{
  sub_10004A544(v2);
  sub_10004A544(v1);
  _Unwind_Resume(a1);
}

void TSP::UUIDMapArchive::~UUIDMapArchive(TSP::UUIDMapArchive *this)
{
  sub_10002F4C4(this + 1);
  sub_10004A544(this + 5);
  sub_10004A544(this + 2);
}

{
  TSP::UUIDMapArchive::~UUIDMapArchive(this);

  operator delete();
}

google::protobuf::UnknownFieldSet *TSP::UUIDMapArchive::Clear(google::protobuf::UnknownFieldSet *this, uint64_t a2, uint64_t a3)
{
  v3 = this;
  v4 = *(this + 6);
  if (v4 >= 1)
  {
    v5 = (*(this + 4) + 8);
    do
    {
      v6 = *v5++;
      this = TSP::UUID::Clear(v6, a2, a3);
      --v4;
    }

    while (v4);
    *(v3 + 24) = 0;
  }

  v7 = *(v3 + 48);
  if (v7 >= 1)
  {
    v8 = (*(v3 + 56) + 8);
    do
    {
      v9 = *v8++;
      this = TSP::UUID::Clear(v9, a2, a3);
      --v7;
    }

    while (v7);
    *(v3 + 48) = 0;
  }

  v11 = *(v3 + 8);
  v10 = (v3 + 8);
  if (v11)
  {

    return sub_1000315EC(v10, a2, a3);
  }

  return this;
}

google::protobuf::internal *TSP::UUIDMapArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v31 = a2;
  if ((sub_1000313B0(a3, &v31, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v7 = (v31 + 1);
      v8 = *v31;
      if ((*v31 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v31, (v9 - 128));
      v31 = TagFallback;
      if (!TagFallback)
      {
        return 0;
      }

      v7 = TagFallback;
      v8 = v5;
LABEL_7:
      if (v8 >> 3 == 2)
      {
        if (v8 != 18)
        {
          goto LABEL_12;
        }

        v14 = (v7 - 1);
        while (2)
        {
          v15 = (v14 + 1);
          v31 = (v14 + 1);
          v16 = *(a1 + 56);
          if (!v16)
          {
            v17 = *(a1 + 52);
            goto LABEL_25;
          }

          v21 = *(a1 + 48);
          v17 = *v16;
          if (v21 >= *v16)
          {
            if (v17 == *(a1 + 52))
            {
LABEL_25:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 40), v17 + 1);
              v16 = *(a1 + 56);
              v17 = *v16;
            }

            *v16 = v17 + 1;
            v18 = google::protobuf::Arena::CreateMaybeMessage<TSP::UUID>(*(a1 + 40));
            v19 = *(a1 + 48);
            v20 = *(a1 + 56) + 8 * v19;
            *(a1 + 48) = v19 + 1;
            *(v20 + 8) = v18;
            v15 = v31;
          }

          else
          {
            *(a1 + 48) = v21 + 1;
            v18 = *&v16[2 * v21 + 2];
          }

          v14 = sub_100156190(a3, v18, v15);
          v31 = v14;
          if (!v14)
          {
            return 0;
          }

          if (*a3 <= v14 || *v14 != 18)
          {
            goto LABEL_19;
          }

          continue;
        }
      }

      if (v8 >> 3 == 1 && v8 == 10)
      {
        v22 = (v7 - 1);
        while (1)
        {
          v23 = (v22 + 1);
          v31 = (v22 + 1);
          v24 = *(a1 + 32);
          if (!v24)
          {
            break;
          }

          v29 = *(a1 + 24);
          v25 = *v24;
          if (v29 < *v24)
          {
            *(a1 + 24) = v29 + 1;
            v26 = *&v24[2 * v29 + 2];
            goto LABEL_42;
          }

          if (v25 == *(a1 + 28))
          {
            goto LABEL_38;
          }

LABEL_39:
          *v24 = v25 + 1;
          v26 = google::protobuf::Arena::CreateMaybeMessage<TSP::UUID>(*(a1 + 16));
          v27 = *(a1 + 24);
          v28 = *(a1 + 32) + 8 * v27;
          *(a1 + 24) = v27 + 1;
          *(v28 + 8) = v26;
          v23 = v31;
LABEL_42:
          v22 = sub_100156190(a3, v26, v23);
          v31 = v22;
          if (!v22)
          {
            return 0;
          }

          if (*a3 <= v22 || *v22 != 10)
          {
            goto LABEL_19;
          }
        }

        v25 = *(a1 + 28);
LABEL_38:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 16), v25 + 1);
        v24 = *(a1 + 32);
        v25 = *v24;
        goto LABEL_39;
      }

LABEL_12:
      if (v8)
      {
        v11 = (v8 & 7) == 4;
      }

      else
      {
        v11 = 1;
      }

      if (v11)
      {
        *(a3 + 80) = v8 - 1;
        return v31;
      }

      v12 = *(a1 + 8);
      if (v12)
      {
        v13 = ((v12 & 0xFFFFFFFFFFFFFFFELL) + 8);
      }

      else
      {
        v13 = sub_100031428((a1 + 8), v5, v7);
        v7 = v31;
      }

      v31 = google::protobuf::internal::UnknownFieldParse(v8, v13, v7);
      if (!v31)
      {
        return 0;
      }

LABEL_19:
      if (sub_1000313B0(a3, &v31, *(a3 + 92)))
      {
        return v31;
      }
    }

    v7 = (v31 + 2);
LABEL_6:
    v31 = v7;
    goto LABEL_7;
  }

  return v31;
}

const google::protobuf::UnknownFieldSet *TSP::UUIDMapArchive::_InternalSerialize(TSP::UUIDMapArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 6);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v8 = *(*(this + 4) + 8 * i + 8);
      *a2 = 10;
      v9 = *(v8 + 5);
      if (v9 > 0x7F)
      {
        a2[1] = v9 | 0x80;
        v11 = v9 >> 7;
        if (v9 >> 14)
        {
          v10 = a2 + 3;
          do
          {
            *(v10 - 1) = v11 | 0x80;
            v12 = v11 >> 7;
            ++v10;
            v13 = v11 >> 14;
            v11 >>= 7;
          }

          while (v13);
          *(v10 - 1) = v12;
        }

        else
        {
          a2[2] = v11;
          v10 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v9;
        v10 = a2 + 2;
      }

      a2 = TSP::UUID::_InternalSerialize(v8, v10, a3, a4);
    }
  }

  v14 = *(this + 12);
  if (v14)
  {
    for (j = 0; j != v14; ++j)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v16 = *(*(this + 7) + 8 * j + 8);
      *a2 = 18;
      v17 = *(v16 + 5);
      if (v17 > 0x7F)
      {
        a2[1] = v17 | 0x80;
        v19 = v17 >> 7;
        if (v17 >> 14)
        {
          v18 = a2 + 3;
          do
          {
            *(v18 - 1) = v19 | 0x80;
            v20 = v19 >> 7;
            ++v18;
            v21 = v19 >> 14;
            v19 >>= 7;
          }

          while (v21);
          *(v18 - 1) = v20;
        }

        else
        {
          a2[2] = v19;
          v18 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v17;
        v18 = a2 + 2;
      }

      a2 = TSP::UUID::_InternalSerialize(v16, v18, a3, a4);
    }
  }

  v22 = *(this + 1);
  if ((v22 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v22 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

char *TSP::UUIDMapArchive::ByteSizeLong(TSP::UUIDMapArchive *this)
{
  v2 = *(this + 6);
  v3 = *(this + 4);
  if (v3)
  {
    v4 = (v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (v2)
  {
    v5 = 8 * v2;
    do
    {
      v6 = *v4++;
      v7 = TSP::UUID::ByteSizeLong(v6);
      v2 += &v7[(9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6];
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = *(this + 12);
  v9 = (v2 + v8);
  v10 = *(this + 7);
  if (v10)
  {
    v11 = (v10 + 8);
  }

  else
  {
    v11 = 0;
  }

  if (v8)
  {
    v12 = 8 * v8;
    do
    {
      v13 = *v11++;
      v14 = TSP::UUID::ByteSizeLong(v13);
      v9 = (v9 + v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6));
      v12 -= 8;
    }

    while (v12);
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v9, this + 16);
  }

  else
  {
    *(this + 16) = v9;
    return v9;
  }
}

void TSP::UUIDMapArchive::MergeFrom(TSP::UUIDMapArchive *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::UUIDMapArchive::MergeFrom(this, v5, v6);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void *TSP::UUIDMapArchive::MergeFrom(void *this, const TSP::UUIDMapArchive *a2, uint64_t a3)
{
  v4 = this;
  v5 = *(a2 + 1);
  if (v5)
  {
    this = sub_1000315A0(this + 1, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8), a3);
  }

  v6 = *(a2 + 6);
  if (v6)
  {
    v7 = *(a2 + 4);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v4 + 2), *(a2 + 6));
    this = sub_10006A66C(v4 + 2, v8, v7 + 8, v6, *v4[4] - *(v4 + 6));
    v9 = *(v4 + 6) + v6;
    *(v4 + 6) = v9;
    v10 = v4[4];
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  v11 = *(a2 + 12);
  if (v11)
  {
    v12 = *(a2 + 7);
    v13 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v4 + 5), v11);
    this = sub_10006A66C(v4 + 5, v13, v12 + 8, v11, *v4[7] - *(v4 + 12));
    v14 = *(v4 + 12) + v11;
    *(v4 + 12) = v14;
    v15 = v4[7];
    if (*v15 < v14)
    {
      *v15 = v14;
    }
  }

  return this;
}

void TSP::UUIDMapArchive::CopyFrom(char **this, char **a2, uint64_t a3)
{
  if (a2 != this)
  {
    TSP::UUIDMapArchive::Clear(this, a2, a3);

    TSP::UUIDMapArchive::MergeFrom(this, a2);
  }
}

BOOL TSP::UUIDMapArchive::IsInitialized(TSP::UUIDMapArchive *this)
{
  v1 = *(this + 6);
  while (v1 >= 1)
  {
    v2 = *(*(this + 4) + 8 * v1--);
    if ((~*(v2 + 16) & 3) != 0)
    {
      return 0;
    }
  }

  v4 = *(this + 12);
  v5 = *(this + 7);
  do
  {
    result = v4 < 1;
    if (v4 < 1)
    {
      break;
    }

    v6 = *(v5 + 8 * v4--);
  }

  while ((~*(v6 + 16) & 3) == 0);
  return result;
}

uint64_t TSP::UUIDMapArchive::GetMetadata(TSP::UUIDMapArchive *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  result = off_1001E9950[38];
  v2 = off_1001E9950[39];
  return result;
}

uint64_t TSP::UUIDMultiMapArchive::UUIDMultiMapArchive(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = a2;
  *a1 = off_1001CA630;
  *(a1 + 8) = a2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = a2;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  if (atomic_load_explicit(scc_info_UUIDMultiMapArchive_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_UUIDMultiMapArchive_TSPMessages_2eproto);
  }

  return a1;
}

void sub_10005A140(_Unwind_Exception *a1)
{
  sub_10004A544(v2);
  sub_10004A544(v1);
  _Unwind_Resume(a1);
}

void TSP::UUIDMultiMapArchive::~UUIDMultiMapArchive(TSP::UUIDMultiMapArchive *this)
{
  sub_10002F4C4(this + 1);
  sub_10004A544(this + 5);
  sub_10004A544(this + 2);
}

{
  TSP::UUIDMultiMapArchive::~UUIDMultiMapArchive(this);

  operator delete();
}

google::protobuf::UnknownFieldSet *TSP::UUIDMultiMapArchive::Clear(google::protobuf::UnknownFieldSet *this, uint64_t a2, uint64_t a3)
{
  v3 = this;
  v4 = *(this + 6);
  if (v4 >= 1)
  {
    v5 = (*(this + 4) + 8);
    do
    {
      v6 = *v5++;
      this = TSP::UUID::Clear(v6, a2, a3);
      --v4;
    }

    while (v4);
    *(v3 + 24) = 0;
  }

  v7 = *(v3 + 48);
  if (v7 >= 1)
  {
    v8 = (*(v3 + 56) + 8);
    do
    {
      v9 = *v8++;
      this = TSP::UUID::Clear(v9, a2, a3);
      --v7;
    }

    while (v7);
    *(v3 + 48) = 0;
  }

  v11 = *(v3 + 8);
  v10 = (v3 + 8);
  if (v11)
  {

    return sub_1000315EC(v10, a2, a3);
  }

  return this;
}

google::protobuf::internal *TSP::UUIDMultiMapArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v31 = a2;
  if ((sub_1000313B0(a3, &v31, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v7 = (v31 + 1);
      v8 = *v31;
      if ((*v31 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v31, (v9 - 128));
      v31 = TagFallback;
      if (!TagFallback)
      {
        return 0;
      }

      v7 = TagFallback;
      v8 = v5;
LABEL_7:
      if (v8 >> 3 == 2)
      {
        if (v8 != 18)
        {
          goto LABEL_12;
        }

        v14 = (v7 - 1);
        while (2)
        {
          v15 = (v14 + 1);
          v31 = (v14 + 1);
          v16 = *(a1 + 56);
          if (!v16)
          {
            v17 = *(a1 + 52);
            goto LABEL_25;
          }

          v21 = *(a1 + 48);
          v17 = *v16;
          if (v21 >= *v16)
          {
            if (v17 == *(a1 + 52))
            {
LABEL_25:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 40), v17 + 1);
              v16 = *(a1 + 56);
              v17 = *v16;
            }

            *v16 = v17 + 1;
            v18 = google::protobuf::Arena::CreateMaybeMessage<TSP::UUID>(*(a1 + 40));
            v19 = *(a1 + 48);
            v20 = *(a1 + 56) + 8 * v19;
            *(a1 + 48) = v19 + 1;
            *(v20 + 8) = v18;
            v15 = v31;
          }

          else
          {
            *(a1 + 48) = v21 + 1;
            v18 = *&v16[2 * v21 + 2];
          }

          v14 = sub_100156190(a3, v18, v15);
          v31 = v14;
          if (!v14)
          {
            return 0;
          }

          if (*a3 <= v14 || *v14 != 18)
          {
            goto LABEL_19;
          }

          continue;
        }
      }

      if (v8 >> 3 == 1 && v8 == 10)
      {
        v22 = (v7 - 1);
        while (1)
        {
          v23 = (v22 + 1);
          v31 = (v22 + 1);
          v24 = *(a1 + 32);
          if (!v24)
          {
            break;
          }

          v29 = *(a1 + 24);
          v25 = *v24;
          if (v29 < *v24)
          {
            *(a1 + 24) = v29 + 1;
            v26 = *&v24[2 * v29 + 2];
            goto LABEL_42;
          }

          if (v25 == *(a1 + 28))
          {
            goto LABEL_38;
          }

LABEL_39:
          *v24 = v25 + 1;
          v26 = google::protobuf::Arena::CreateMaybeMessage<TSP::UUID>(*(a1 + 16));
          v27 = *(a1 + 24);
          v28 = *(a1 + 32) + 8 * v27;
          *(a1 + 24) = v27 + 1;
          *(v28 + 8) = v26;
          v23 = v31;
LABEL_42:
          v22 = sub_100156190(a3, v26, v23);
          v31 = v22;
          if (!v22)
          {
            return 0;
          }

          if (*a3 <= v22 || *v22 != 10)
          {
            goto LABEL_19;
          }
        }

        v25 = *(a1 + 28);
LABEL_38:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 16), v25 + 1);
        v24 = *(a1 + 32);
        v25 = *v24;
        goto LABEL_39;
      }

LABEL_12:
      if (v8)
      {
        v11 = (v8 & 7) == 4;
      }

      else
      {
        v11 = 1;
      }

      if (v11)
      {
        *(a3 + 80) = v8 - 1;
        return v31;
      }

      v12 = *(a1 + 8);
      if (v12)
      {
        v13 = ((v12 & 0xFFFFFFFFFFFFFFFELL) + 8);
      }

      else
      {
        v13 = sub_100031428((a1 + 8), v5, v7);
        v7 = v31;
      }

      v31 = google::protobuf::internal::UnknownFieldParse(v8, v13, v7);
      if (!v31)
      {
        return 0;
      }

LABEL_19:
      if (sub_1000313B0(a3, &v31, *(a3 + 92)))
      {
        return v31;
      }
    }

    v7 = (v31 + 2);
LABEL_6:
    v31 = v7;
    goto LABEL_7;
  }

  return v31;
}

const google::protobuf::UnknownFieldSet *TSP::UUIDMultiMapArchive::_InternalSerialize(TSP::UUIDMultiMapArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 6);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v8 = *(*(this + 4) + 8 * i + 8);
      *a2 = 10;
      v9 = *(v8 + 5);
      if (v9 > 0x7F)
      {
        a2[1] = v9 | 0x80;
        v11 = v9 >> 7;
        if (v9 >> 14)
        {
          v10 = a2 + 3;
          do
          {
            *(v10 - 1) = v11 | 0x80;
            v12 = v11 >> 7;
            ++v10;
            v13 = v11 >> 14;
            v11 >>= 7;
          }

          while (v13);
          *(v10 - 1) = v12;
        }

        else
        {
          a2[2] = v11;
          v10 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v9;
        v10 = a2 + 2;
      }

      a2 = TSP::UUID::_InternalSerialize(v8, v10, a3, a4);
    }
  }

  v14 = *(this + 12);
  if (v14)
  {
    for (j = 0; j != v14; ++j)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v16 = *(*(this + 7) + 8 * j + 8);
      *a2 = 18;
      v17 = *(v16 + 5);
      if (v17 > 0x7F)
      {
        a2[1] = v17 | 0x80;
        v19 = v17 >> 7;
        if (v17 >> 14)
        {
          v18 = a2 + 3;
          do
          {
            *(v18 - 1) = v19 | 0x80;
            v20 = v19 >> 7;
            ++v18;
            v21 = v19 >> 14;
            v19 >>= 7;
          }

          while (v21);
          *(v18 - 1) = v20;
        }

        else
        {
          a2[2] = v19;
          v18 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v17;
        v18 = a2 + 2;
      }

      a2 = TSP::UUID::_InternalSerialize(v16, v18, a3, a4);
    }
  }

  v22 = *(this + 1);
  if ((v22 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v22 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

char *TSP::UUIDMultiMapArchive::ByteSizeLong(TSP::UUIDMultiMapArchive *this)
{
  v2 = *(this + 6);
  v3 = *(this + 4);
  if (v3)
  {
    v4 = (v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (v2)
  {
    v5 = 8 * v2;
    do
    {
      v6 = *v4++;
      v7 = TSP::UUID::ByteSizeLong(v6);
      v2 += &v7[(9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6];
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = *(this + 12);
  v9 = (v2 + v8);
  v10 = *(this + 7);
  if (v10)
  {
    v11 = (v10 + 8);
  }

  else
  {
    v11 = 0;
  }

  if (v8)
  {
    v12 = 8 * v8;
    do
    {
      v13 = *v11++;
      v14 = TSP::UUID::ByteSizeLong(v13);
      v9 = (v9 + v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6));
      v12 -= 8;
    }

    while (v12);
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v9, this + 16);
  }

  else
  {
    *(this + 16) = v9;
    return v9;
  }
}

void TSP::UUIDMultiMapArchive::MergeFrom(TSP::UUIDMultiMapArchive *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::UUIDMultiMapArchive::MergeFrom(this, v5, v6);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void *TSP::UUIDMultiMapArchive::MergeFrom(void *this, const TSP::UUIDMultiMapArchive *a2, uint64_t a3)
{
  v4 = this;
  v5 = *(a2 + 1);
  if (v5)
  {
    this = sub_1000315A0(this + 1, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8), a3);
  }

  v6 = *(a2 + 6);
  if (v6)
  {
    v7 = *(a2 + 4);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v4 + 2), *(a2 + 6));
    this = sub_10006A66C(v4 + 2, v8, v7 + 8, v6, *v4[4] - *(v4 + 6));
    v9 = *(v4 + 6) + v6;
    *(v4 + 6) = v9;
    v10 = v4[4];
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  v11 = *(a2 + 12);
  if (v11)
  {
    v12 = *(a2 + 7);
    v13 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v4 + 5), v11);
    this = sub_10006A66C(v4 + 5, v13, v12 + 8, v11, *v4[7] - *(v4 + 12));
    v14 = *(v4 + 12) + v11;
    *(v4 + 12) = v14;
    v15 = v4[7];
    if (*v15 < v14)
    {
      *v15 = v14;
    }
  }

  return this;
}

void TSP::UUIDMultiMapArchive::CopyFrom(char **this, char **a2, uint64_t a3)
{
  if (a2 != this)
  {
    TSP::UUIDMultiMapArchive::Clear(this, a2, a3);

    TSP::UUIDMultiMapArchive::MergeFrom(this, a2);
  }
}

BOOL TSP::UUIDMultiMapArchive::IsInitialized(TSP::UUIDMultiMapArchive *this)
{
  v1 = *(this + 6);
  while (v1 >= 1)
  {
    v2 = *(*(this + 4) + 8 * v1--);
    if ((~*(v2 + 16) & 3) != 0)
    {
      return 0;
    }
  }

  v4 = *(this + 12);
  v5 = *(this + 7);
  do
  {
    result = v4 < 1;
    if (v4 < 1)
    {
      break;
    }

    v6 = *(v5 + 8 * v4--);
  }

  while ((~*(v6 + 16) & 3) == 0);
  return result;
}

uint64_t TSP::UUIDMultiMapArchive::GetMetadata(TSP::UUIDMultiMapArchive *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  result = off_1001E9950[40];
  v2 = off_1001E9950[41];
  return result;
}

void TSP::UUIDCoordArchive::~UUIDCoordArchive(TSP::UUIDCoordArchive *this)
{
  if (this != TSP::_UUIDCoordArchive_default_instance_)
  {
    v1 = *(this + 3);
    if (v1)
    {
      sub_10002F4C4((v1 + 8));
      operator delete();
    }

    v2 = *(this + 4);
    if (v2)
    {
      sub_10002F4C4((v2 + 8));
      operator delete();
    }
  }

  sub_10002F4C4(this + 1);
}

{
  TSP::UUIDCoordArchive::~UUIDCoordArchive(this);

  operator delete();
}

google::protobuf::UnknownFieldSet *TSP::UUIDCoordArchive::Clear(google::protobuf::UnknownFieldSet *this, uint64_t a2, uint64_t a3)
{
  v3 = this;
  v4 = *(this + 4);
  if ((v4 & 3) != 0)
  {
    if (v4)
    {
      this = TSP::UUID::Clear(*(this + 3), a2, a3);
    }

    if ((v4 & 2) != 0)
    {
      this = TSP::UUID::Clear(*(v3 + 32), a2, a3);
    }
  }

  v6 = *(v3 + 8);
  v5 = v3 + 8;
  *(v5 + 8) = 0;
  if (v6)
  {

    return sub_1000315EC(v5, a2, a3);
  }

  return this;
}

google::protobuf::internal *TSP::UUIDCoordArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v20 = a2;
  for (i = *(a3 + 92); (sub_1000313B0(a3, &v20, i) & 1) == 0; i = *(a3 + 92))
  {
    v7 = (v20 + 1);
    v8 = *v20;
    if ((*v20 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v9 = v8 + (*v7 << 7);
    v8 = v9 - 128;
    if ((*v7 & 0x80000000) == 0)
    {
      v7 = (v20 + 2);
LABEL_6:
      v20 = v7;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v20, (v9 - 128));
    v20 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v7 = TagFallback;
    v8 = v6;
LABEL_7:
    if (v8 >> 3 == 2)
    {
      if (v8 == 18)
      {
        *(a1 + 16) |= 2u;
        v15 = *(a1 + 32);
        if (!v15)
        {
          v16 = *(a1 + 8);
          if (v16)
          {
            v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
          }

          v15 = google::protobuf::Arena::CreateMaybeMessage<TSP::UUID>(v16);
          *(a1 + 32) = v15;
LABEL_28:
          v7 = v20;
        }

LABEL_29:
        v14 = sub_100156190(a3, v15, v7);
        goto LABEL_30;
      }
    }

    else if (v8 >> 3 == 1 && v8 == 10)
    {
      *(a1 + 16) |= 1u;
      v15 = *(a1 + 24);
      if (!v15)
      {
        v17 = *(a1 + 8);
        if (v17)
        {
          v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
        }

        v15 = google::protobuf::Arena::CreateMaybeMessage<TSP::UUID>(v17);
        *(a1 + 24) = v15;
        goto LABEL_28;
      }

      goto LABEL_29;
    }

    if (v8)
    {
      v11 = (v8 & 7) == 4;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      *(a3 + 80) = v8 - 1;
      return v20;
    }

    v12 = *(a1 + 8);
    if (v12)
    {
      v13 = ((v12 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v13 = sub_100031428((a1 + 8), v6, v7);
      v7 = v20;
    }

    v14 = google::protobuf::internal::UnknownFieldParse(v8, v13, v7);
LABEL_30:
    v20 = v14;
    if (!v14)
    {
      return 0;
    }
  }

  return v20;
}

const google::protobuf::UnknownFieldSet *TSP::UUIDCoordArchive::_InternalSerialize(TSP::UUIDCoordArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 4);
  if (v6)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 3);
    *a2 = 10;
    v8 = *(v7 + 5);
    if (v8 > 0x7F)
    {
      a2[1] = v8 | 0x80;
      v10 = v8 >> 7;
      if (v8 >> 14)
      {
        v9 = a2 + 3;
        do
        {
          *(v9 - 1) = v10 | 0x80;
          v11 = v10 >> 7;
          ++v9;
          v12 = v10 >> 14;
          v10 >>= 7;
        }

        while (v12);
        *(v9 - 1) = v11;
      }

      else
      {
        a2[2] = v10;
        v9 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v8;
      v9 = a2 + 2;
    }

    a2 = TSP::UUID::_InternalSerialize(v7, v9, a3, a4);
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v13 = *(this + 4);
    *a2 = 18;
    v14 = *(v13 + 5);
    if (v14 > 0x7F)
    {
      a2[1] = v14 | 0x80;
      v16 = v14 >> 7;
      if (v14 >> 14)
      {
        v15 = a2 + 3;
        do
        {
          *(v15 - 1) = v16 | 0x80;
          v17 = v16 >> 7;
          ++v15;
          v18 = v16 >> 14;
          v16 >>= 7;
        }

        while (v18);
        *(v15 - 1) = v17;
      }

      else
      {
        a2[2] = v16;
        v15 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v14;
      v15 = a2 + 2;
    }

    a2 = TSP::UUID::_InternalSerialize(v13, v15, a3, a4);
  }

  v19 = *(this + 1);
  if ((v19 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v19 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSP::UUIDCoordArchive::RequiredFieldsByteSizeFallback(TSP::UUIDCoordArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      return v3;
    }

    goto LABEL_5;
  }

  v4 = TSP::UUID::ByteSizeLong(*(this + 3));
  v3 = &v4[((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1];
  if ((*(this + 4) & 2) != 0)
  {
LABEL_5:
    v5 = TSP::UUID::ByteSizeLong(*(this + 4));
    v3 += &v5[((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1];
  }

  return v3;
}

char *TSP::UUIDCoordArchive::ByteSizeLong(TSP::UUID **this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    v4 = TSP::UUIDCoordArchive::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = TSP::UUID::ByteSizeLong(this[3]);
    v3 = TSP::UUID::ByteSizeLong(this[4]);
    v4 = &v3[v2 + 2 + ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6)];
  }

  if (this[1])
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 1), v4, this + 5);
  }

  else
  {
    *(this + 5) = v4;
    return v4;
  }
}

void TSP::UUIDCoordArchive::MergeFrom(TSP::UUIDCoordArchive *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::UUIDCoordArchive::MergeFrom(this, v5, v6);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void *TSP::UUIDCoordArchive::MergeFrom(void *this, const TSP::UUIDCoordArchive *a2, uint64_t a3)
{
  v4 = this;
  v5 = *(a2 + 1);
  if (v5)
  {
    this = sub_1000315A0(this + 1, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8), a3);
  }

  v6 = *(a2 + 4);
  if ((v6 & 3) != 0)
  {
    if (v6)
    {
      *(v4 + 4) |= 1u;
      v7 = v4[3];
      if (!v7)
      {
        v8 = v4[1];
        if (v8)
        {
          v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
        }

        v7 = google::protobuf::Arena::CreateMaybeMessage<TSP::UUID>(v8);
        v4[3] = v7;
      }

      if (*(a2 + 3))
      {
        v9 = *(a2 + 3);
      }

      else
      {
        v9 = &TSP::_UUID_default_instance_;
      }

      this = TSP::UUID::MergeFrom(v7, v9, a3);
    }

    if ((v6 & 2) != 0)
    {
      *(v4 + 4) |= 2u;
      v10 = v4[4];
      if (!v10)
      {
        v11 = v4[1];
        if (v11)
        {
          v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
        }

        v10 = google::protobuf::Arena::CreateMaybeMessage<TSP::UUID>(v11);
        v4[4] = v10;
      }

      if (*(a2 + 4))
      {
        v12 = *(a2 + 4);
      }

      else
      {
        v12 = &TSP::_UUID_default_instance_;
      }

      return TSP::UUID::MergeFrom(v10, v12, a3);
    }
  }

  return this;
}

void TSP::UUIDCoordArchive::CopyFrom(char **this, char **a2, uint64_t a3)
{
  if (a2 != this)
  {
    TSP::UUIDCoordArchive::Clear(this, a2, a3);

    TSP::UUIDCoordArchive::MergeFrom(this, a2);
  }
}

uint64_t TSP::UUIDCoordArchive::GetMetadata(TSP::UUIDCoordArchive *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  result = off_1001E9950[42];
  v2 = off_1001E9950[43];
  return result;
}

uint64_t TSP::UUIDRectArchive::UUIDRectArchive(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = a2;
  *a1 = off_1001CA790;
  *(a1 + 8) = a2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = a2;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  if (atomic_load_explicit(scc_info_UUIDRectArchive_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_UUIDRectArchive_TSPMessages_2eproto);
  }

  return a1;
}

void sub_10005B37C(_Unwind_Exception *a1)
{
  sub_10004A544(v2);
  sub_10004A544(v1);
  _Unwind_Resume(a1);
}

void TSP::UUIDRectArchive::~UUIDRectArchive(TSP::UUIDRectArchive *this)
{
  sub_10002F4C4(this + 1);
  sub_10004A544(this + 5);
  sub_10004A544(this + 2);
}

{
  TSP::UUIDRectArchive::~UUIDRectArchive(this);

  operator delete();
}

google::protobuf::UnknownFieldSet *TSP::UUIDRectArchive::Clear(google::protobuf::UnknownFieldSet *this, uint64_t a2, uint64_t a3)
{
  v3 = this;
  v4 = *(this + 6);
  if (v4 >= 1)
  {
    v5 = (*(this + 4) + 8);
    do
    {
      v6 = *v5++;
      this = TSP::UUID::Clear(v6, a2, a3);
      --v4;
    }

    while (v4);
    *(v3 + 24) = 0;
  }

  v7 = *(v3 + 48);
  if (v7 >= 1)
  {
    v8 = (*(v3 + 56) + 8);
    do
    {
      v9 = *v8++;
      this = TSP::UUID::Clear(v9, a2, a3);
      --v7;
    }

    while (v7);
    *(v3 + 48) = 0;
  }

  v11 = *(v3 + 8);
  v10 = (v3 + 8);
  if (v11)
  {

    return sub_1000315EC(v10, a2, a3);
  }

  return this;
}

google::protobuf::internal *TSP::UUIDRectArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v31 = a2;
  if ((sub_1000313B0(a3, &v31, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v7 = (v31 + 1);
      v8 = *v31;
      if ((*v31 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v31, (v9 - 128));
      v31 = TagFallback;
      if (!TagFallback)
      {
        return 0;
      }

      v7 = TagFallback;
      v8 = v5;
LABEL_7:
      if (v8 >> 3 == 2)
      {
        if (v8 != 18)
        {
          goto LABEL_12;
        }

        v14 = (v7 - 1);
        while (2)
        {
          v15 = (v14 + 1);
          v31 = (v14 + 1);
          v16 = *(a1 + 56);
          if (!v16)
          {
            v17 = *(a1 + 52);
            goto LABEL_25;
          }

          v21 = *(a1 + 48);
          v17 = *v16;
          if (v21 >= *v16)
          {
            if (v17 == *(a1 + 52))
            {
LABEL_25:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 40), v17 + 1);
              v16 = *(a1 + 56);
              v17 = *v16;
            }

            *v16 = v17 + 1;
            v18 = google::protobuf::Arena::CreateMaybeMessage<TSP::UUID>(*(a1 + 40));
            v19 = *(a1 + 48);
            v20 = *(a1 + 56) + 8 * v19;
            *(a1 + 48) = v19 + 1;
            *(v20 + 8) = v18;
            v15 = v31;
          }

          else
          {
            *(a1 + 48) = v21 + 1;
            v18 = *&v16[2 * v21 + 2];
          }

          v14 = sub_100156190(a3, v18, v15);
          v31 = v14;
          if (!v14)
          {
            return 0;
          }

          if (*a3 <= v14 || *v14 != 18)
          {
            goto LABEL_19;
          }

          continue;
        }
      }

      if (v8 >> 3 == 1 && v8 == 10)
      {
        v22 = (v7 - 1);
        while (1)
        {
          v23 = (v22 + 1);
          v31 = (v22 + 1);
          v24 = *(a1 + 32);
          if (!v24)
          {
            break;
          }

          v29 = *(a1 + 24);
          v25 = *v24;
          if (v29 < *v24)
          {
            *(a1 + 24) = v29 + 1;
            v26 = *&v24[2 * v29 + 2];
            goto LABEL_42;
          }

          if (v25 == *(a1 + 28))
          {
            goto LABEL_38;
          }

LABEL_39:
          *v24 = v25 + 1;
          v26 = google::protobuf::Arena::CreateMaybeMessage<TSP::UUID>(*(a1 + 16));
          v27 = *(a1 + 24);
          v28 = *(a1 + 32) + 8 * v27;
          *(a1 + 24) = v27 + 1;
          *(v28 + 8) = v26;
          v23 = v31;
LABEL_42:
          v22 = sub_100156190(a3, v26, v23);
          v31 = v22;
          if (!v22)
          {
            return 0;
          }

          if (*a3 <= v22 || *v22 != 10)
          {
            goto LABEL_19;
          }
        }

        v25 = *(a1 + 28);
LABEL_38:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 16), v25 + 1);
        v24 = *(a1 + 32);
        v25 = *v24;
        goto LABEL_39;
      }

LABEL_12:
      if (v8)
      {
        v11 = (v8 & 7) == 4;
      }

      else
      {
        v11 = 1;
      }

      if (v11)
      {
        *(a3 + 80) = v8 - 1;
        return v31;
      }

      v12 = *(a1 + 8);
      if (v12)
      {
        v13 = ((v12 & 0xFFFFFFFFFFFFFFFELL) + 8);
      }

      else
      {
        v13 = sub_100031428((a1 + 8), v5, v7);
        v7 = v31;
      }

      v31 = google::protobuf::internal::UnknownFieldParse(v8, v13, v7);
      if (!v31)
      {
        return 0;
      }

LABEL_19:
      if (sub_1000313B0(a3, &v31, *(a3 + 92)))
      {
        return v31;
      }
    }

    v7 = (v31 + 2);
LABEL_6:
    v31 = v7;
    goto LABEL_7;
  }

  return v31;
}

const google::protobuf::UnknownFieldSet *TSP::UUIDRectArchive::_InternalSerialize(TSP::UUIDRectArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 6);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v8 = *(*(this + 4) + 8 * i + 8);
      *a2 = 10;
      v9 = *(v8 + 5);
      if (v9 > 0x7F)
      {
        a2[1] = v9 | 0x80;
        v11 = v9 >> 7;
        if (v9 >> 14)
        {
          v10 = a2 + 3;
          do
          {
            *(v10 - 1) = v11 | 0x80;
            v12 = v11 >> 7;
            ++v10;
            v13 = v11 >> 14;
            v11 >>= 7;
          }

          while (v13);
          *(v10 - 1) = v12;
        }

        else
        {
          a2[2] = v11;
          v10 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v9;
        v10 = a2 + 2;
      }

      a2 = TSP::UUID::_InternalSerialize(v8, v10, a3, a4);
    }
  }

  v14 = *(this + 12);
  if (v14)
  {
    for (j = 0; j != v14; ++j)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v16 = *(*(this + 7) + 8 * j + 8);
      *a2 = 18;
      v17 = *(v16 + 5);
      if (v17 > 0x7F)
      {
        a2[1] = v17 | 0x80;
        v19 = v17 >> 7;
        if (v17 >> 14)
        {
          v18 = a2 + 3;
          do
          {
            *(v18 - 1) = v19 | 0x80;
            v20 = v19 >> 7;
            ++v18;
            v21 = v19 >> 14;
            v19 >>= 7;
          }

          while (v21);
          *(v18 - 1) = v20;
        }

        else
        {
          a2[2] = v19;
          v18 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v17;
        v18 = a2 + 2;
      }

      a2 = TSP::UUID::_InternalSerialize(v16, v18, a3, a4);
    }
  }

  v22 = *(this + 1);
  if ((v22 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v22 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

char *TSP::UUIDRectArchive::ByteSizeLong(TSP::UUIDRectArchive *this)
{
  v2 = *(this + 6);
  v3 = *(this + 4);
  if (v3)
  {
    v4 = (v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (v2)
  {
    v5 = 8 * v2;
    do
    {
      v6 = *v4++;
      v7 = TSP::UUID::ByteSizeLong(v6);
      v2 += &v7[(9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6];
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = *(this + 12);
  v9 = (v2 + v8);
  v10 = *(this + 7);
  if (v10)
  {
    v11 = (v10 + 8);
  }

  else
  {
    v11 = 0;
  }

  if (v8)
  {
    v12 = 8 * v8;
    do
    {
      v13 = *v11++;
      v14 = TSP::UUID::ByteSizeLong(v13);
      v9 = (v9 + v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6));
      v12 -= 8;
    }

    while (v12);
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v9, this + 16);
  }

  else
  {
    *(this + 16) = v9;
    return v9;
  }
}

void TSP::UUIDRectArchive::MergeFrom(TSP::UUIDRectArchive *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::UUIDRectArchive::MergeFrom(this, v5, v6);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void *TSP::UUIDRectArchive::MergeFrom(void *this, const TSP::UUIDRectArchive *a2, uint64_t a3)
{
  v4 = this;
  v5 = *(a2 + 1);
  if (v5)
  {
    this = sub_1000315A0(this + 1, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8), a3);
  }

  v6 = *(a2 + 6);
  if (v6)
  {
    v7 = *(a2 + 4);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v4 + 2), *(a2 + 6));
    this = sub_10006A66C(v4 + 2, v8, v7 + 8, v6, *v4[4] - *(v4 + 6));
    v9 = *(v4 + 6) + v6;
    *(v4 + 6) = v9;
    v10 = v4[4];
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  v11 = *(a2 + 12);
  if (v11)
  {
    v12 = *(a2 + 7);
    v13 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v4 + 5), v11);
    this = sub_10006A66C(v4 + 5, v13, v12 + 8, v11, *v4[7] - *(v4 + 12));
    v14 = *(v4 + 12) + v11;
    *(v4 + 12) = v14;
    v15 = v4[7];
    if (*v15 < v14)
    {
      *v15 = v14;
    }
  }

  return this;
}

void TSP::UUIDRectArchive::CopyFrom(char **this, char **a2, uint64_t a3)
{
  if (a2 != this)
  {
    TSP::UUIDRectArchive::Clear(this, a2, a3);

    TSP::UUIDRectArchive::MergeFrom(this, a2);
  }
}

BOOL TSP::UUIDRectArchive::IsInitialized(TSP::UUIDRectArchive *this)
{
  v1 = *(this + 6);
  while (v1 >= 1)
  {
    v2 = *(*(this + 4) + 8 * v1--);
    if ((~*(v2 + 16) & 3) != 0)
    {
      return 0;
    }
  }

  v4 = *(this + 12);
  v5 = *(this + 7);
  do
  {
    result = v4 < 1;
    if (v4 < 1)
    {
      break;
    }

    v6 = *(v5 + 8 * v4--);
  }

  while ((~*(v6 + 16) & 3) == 0);
  return result;
}

uint64_t TSP::UUIDRectArchive::GetMetadata(TSP::UUIDRectArchive *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  result = off_1001E9950[44];
  v2 = off_1001E9950[45];
  return result;
}

void TSP::SparseUUIDArray_Entry::~SparseUUIDArray_Entry(TSP::SparseUUIDArray_Entry *this)
{
  if (this != &TSP::_SparseUUIDArray_Entry_default_instance_)
  {
    v1 = *(this + 3);
    if (v1)
    {
      sub_10002F4C4((v1 + 8));
      operator delete();
    }
  }

  sub_10002F4C4(this + 1);
}

{
  TSP::SparseUUIDArray_Entry::~SparseUUIDArray_Entry(this);

  operator delete();
}

google::protobuf::UnknownFieldSet *TSP::SparseUUIDArray_Entry::Clear(google::protobuf::UnknownFieldSet *this, uint64_t a2, uint64_t a3)
{
  v3 = this;
  if (*(this + 16))
  {
    this = TSP::UUID::Clear(*(this + 3), a2, a3);
  }

  v5 = *(v3 + 8);
  v4 = v3 + 8;
  *(v4 + 24) = 0;
  *(v4 + 8) = 0;
  if (v5)
  {

    return sub_1000315EC(v4, a2, a3);
  }

  return this;
}

google::protobuf::internal *TSP::SparseUUIDArray_Entry::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v24 = a2;
  v6 = 0;
  if ((sub_1000313B0(a3, &v24, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v8 = (v24 + 1);
      v9 = *v24;
      if ((*v24 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v10 = v9 + (*v8 << 7);
      v9 = v10 - 128;
      if ((*v8 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v24, (v10 - 128));
      v24 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_39;
      }

      v8 = TagFallback;
      v9 = v5;
LABEL_7:
      if (v9 >> 3 == 2)
      {
        if (v9 == 18)
        {
          *(a1 + 16) |= 1u;
          v16 = *(a1 + 24);
          if (!v16)
          {
            v17 = *(a1 + 8);
            if (v17)
            {
              v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
            }

            v16 = google::protobuf::Arena::CreateMaybeMessage<TSP::UUID>(v17);
            *(a1 + 24) = v16;
            v8 = v24;
          }

          v15 = sub_100156190(a3, v16, v8);
        }

        else
        {
LABEL_12:
          if (v9)
          {
            v12 = (v9 & 7) == 4;
          }

          else
          {
            v12 = 1;
          }

          if (v12)
          {
            *(a3 + 80) = v9 - 1;
            goto LABEL_2;
          }

          v13 = *(a1 + 8);
          if (v13)
          {
            v14 = ((v13 & 0xFFFFFFFFFFFFFFFELL) + 8);
          }

          else
          {
            v14 = sub_100031428((a1 + 8), v5, v8);
            v8 = v24;
          }

          v15 = google::protobuf::internal::UnknownFieldParse(v9, v14, v8);
        }

        v24 = v15;
        if (!v15)
        {
          goto LABEL_39;
        }

        goto LABEL_31;
      }

      if (v9 >> 3 != 1 || v9 != 8)
      {
        goto LABEL_12;
      }

      v6 |= 2u;
      v18 = (v8 + 1);
      LODWORD(v19) = *v8;
      if ((*v8 & 0x80000000) == 0)
      {
        goto LABEL_30;
      }

      v20 = *v18;
      v19 = (v19 + (v20 << 7) - 128);
      if ((v20 & 0x80000000) == 0)
      {
        v18 = (v8 + 2);
LABEL_30:
        v24 = v18;
        *(a1 + 32) = v19;
        goto LABEL_31;
      }

      v22 = google::protobuf::internal::VarintParseSlow32(v8, v19);
      v24 = v22;
      *(a1 + 32) = v23;
      if (!v22)
      {
LABEL_39:
        v24 = 0;
        goto LABEL_2;
      }

LABEL_31:
      if (sub_1000313B0(a3, &v24, *(a3 + 92)))
      {
        goto LABEL_2;
      }
    }

    v8 = (v24 + 2);
LABEL_6:
    v24 = v8;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v6;
  return v24;
}

const google::protobuf::UnknownFieldSet *TSP::SparseUUIDArray_Entry::_InternalSerialize(TSP::SparseUUIDArray_Entry *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 4);
  if ((v6 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 8);
    *a2 = 8;
    if (v7 <= 0x7F)
    {
      a2[1] = v7;
      a2 += 2;
      if ((v6 & 1) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_10;
    }

    a2[1] = v7 | 0x80;
    v8 = v7 >> 7;
    if (v7 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v8 | 0x80;
        v13 = v8 >> 7;
        ++a2;
        v14 = v8 >> 14;
        v8 >>= 7;
      }

      while (v14);
      *(a2 - 1) = v13;
      if ((v6 & 1) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_10;
    }

    a2[2] = v8;
    a2 += 3;
  }

  if ((v6 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_10:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v9 = *(this + 3);
  *a2 = 18;
  v10 = *(v9 + 5);
  if (v10 > 0x7F)
  {
    a2[1] = v10 | 0x80;
    v12 = v10 >> 7;
    if (v10 >> 14)
    {
      v11 = a2 + 3;
      do
      {
        *(v11 - 1) = v12 | 0x80;
        v15 = v12 >> 7;
        ++v11;
        v16 = v12 >> 14;
        v12 >>= 7;
      }

      while (v16);
      *(v11 - 1) = v15;
    }

    else
    {
      a2[2] = v12;
      v11 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v10;
    v11 = a2 + 2;
  }

  a2 = TSP::UUID::_InternalSerialize(v9, v11, a3, a4);
LABEL_24:
  v17 = *(this + 1);
  if ((v17 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v17 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

char *TSP::SparseUUIDArray_Entry::RequiredFieldsByteSizeFallback(TSP::SparseUUIDArray_Entry *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = TSP::UUID::ByteSizeLong(*(this + 3));
    result = &v4[((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1];
    if ((*(this + 4) & 2) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

  result = 0;
  if ((v2 & 2) != 0)
  {
LABEL_5:
    result += ((9 * (__clz(*(this + 8) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return result;
}

char *TSP::SparseUUIDArray_Entry::ByteSizeLong(TSP::UUID **this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    v3 = TSP::SparseUUIDArray_Entry::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = TSP::UUID::ByteSizeLong(this[3]);
    v3 = &v2[((9 * (__clz(*(this + 8) | 1) ^ 0x1F) + 73) >> 6) + 2 + ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6)];
  }

  if (this[1])
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 1), v3, this + 5);
  }

  else
  {
    *(this + 5) = v3;
    return v3;
  }
}

void TSP::SparseUUIDArray_Entry::MergeFrom(TSP::SparseUUIDArray_Entry *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::SparseUUIDArray_Entry::MergeFrom(this, v5, v6);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void *TSP::SparseUUIDArray_Entry::MergeFrom(void *this, const TSP::SparseUUIDArray_Entry *a2, uint64_t a3)
{
  v4 = this;
  v5 = *(a2 + 1);
  if (v5)
  {
    this = sub_1000315A0(this + 1, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8), a3);
  }

  v6 = *(a2 + 4);
  if ((v6 & 3) != 0)
  {
    if (v6)
    {
      *(v4 + 4) |= 1u;
      v7 = v4[3];
      if (!v7)
      {
        v8 = v4[1];
        if (v8)
        {
          v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
        }

        v7 = google::protobuf::Arena::CreateMaybeMessage<TSP::UUID>(v8);
        v4[3] = v7;
      }

      if (*(a2 + 3))
      {
        v9 = *(a2 + 3);
      }

      else
      {
        v9 = &TSP::_UUID_default_instance_;
      }

      this = TSP::UUID::MergeFrom(v7, v9, a3);
    }

    if ((v6 & 2) != 0)
    {
      *(v4 + 8) = *(a2 + 8);
    }

    *(v4 + 4) |= v6;
  }

  return this;
}

void TSP::SparseUUIDArray_Entry::CopyFrom(char **this, char **a2, uint64_t a3)
{
  if (a2 != this)
  {
    TSP::SparseUUIDArray_Entry::Clear(this, a2, a3);

    TSP::SparseUUIDArray_Entry::MergeFrom(this, a2);
  }
}

uint64_t TSP::SparseUUIDArray_Entry::GetMetadata(TSP::SparseUUIDArray_Entry *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  result = off_1001E9950[46];
  v2 = off_1001E9950[47];
  return result;
}

uint64_t TSP::SparseUUIDArray::SparseUUIDArray(uint64_t a1, uint64_t a2)
{
  *a1 = off_1001CA8F0;
  *(a1 + 8) = a2;
  *(a1 + 24) = a2;
  *(a1 + 16) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  if (atomic_load_explicit(scc_info_SparseUUIDArray_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_SparseUUIDArray_TSPMessages_2eproto);
  }

  *(a1 + 48) = 0;
  return a1;
}

void TSP::SparseUUIDArray::~SparseUUIDArray(TSP::SparseUUIDArray *this)
{
  sub_10002F4C4(this + 1);
  sub_10006A72C(this + 3);
}

{
  TSP::SparseUUIDArray::~SparseUUIDArray(this);

  operator delete();
}

google::protobuf::UnknownFieldSet *TSP::SparseUUIDArray::Clear(google::protobuf::UnknownFieldSet *this, uint64_t a2, uint64_t a3)
{
  v3 = this;
  v4 = *(this + 8);
  if (v4 >= 1)
  {
    v5 = (*(this + 5) + 8);
    do
    {
      v6 = *v5++;
      this = TSP::SparseUUIDArray_Entry::Clear(v6, a2, a3);
      --v4;
    }

    while (v4);
    *(v3 + 32) = 0;
  }

  v8 = *(v3 + 8);
  v7 = v3 + 8;
  *(v7 + 40) = 0;
  *(v7 + 8) = 0;
  if (v8)
  {

    return sub_1000315EC(v7, a2, a3);
  }

  return this;
}

google::protobuf::internal *TSP::SparseUUIDArray::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v29 = a2;
  v6 = 0;
  if ((sub_1000313B0(a3, &v29, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v8 = (v29 + 1);
      v9 = *v29;
      if ((*v29 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v10 = v9 + (*v8 << 7);
      v9 = v10 - 128;
      if ((*v8 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v29, (v10 - 128));
      v29 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_46;
      }

      v8 = TagFallback;
      v9 = v5;
LABEL_7:
      if (v9 >> 3 == 2)
      {
        if (v9 != 18)
        {
LABEL_12:
          if (v9)
          {
            v12 = (v9 & 7) == 4;
          }

          else
          {
            v12 = 1;
          }

          if (v12)
          {
            *(a3 + 80) = v9 - 1;
            goto LABEL_2;
          }

          v13 = *(a1 + 8);
          if (v13)
          {
            v14 = ((v13 & 0xFFFFFFFFFFFFFFFELL) + 8);
          }

          else
          {
            v14 = sub_100031428((a1 + 8), v5, v8);
            v8 = v29;
          }

          v29 = google::protobuf::internal::UnknownFieldParse(v9, v14, v8);
          if (!v29)
          {
LABEL_46:
            v29 = 0;
            goto LABEL_2;
          }

          goto LABEL_38;
        }

        v15 = (v8 - 1);
        while (2)
        {
          v16 = (v15 + 1);
          v29 = (v15 + 1);
          v17 = *(a1 + 40);
          if (!v17)
          {
            v18 = *(a1 + 36);
            goto LABEL_24;
          }

          v22 = *(a1 + 32);
          v18 = *v17;
          if (v22 >= *v17)
          {
            if (v18 == *(a1 + 36))
            {
LABEL_24:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24), v18 + 1);
              v17 = *(a1 + 40);
              v18 = *v17;
            }

            *v17 = v18 + 1;
            v19 = google::protobuf::Arena::CreateMaybeMessage<TSP::SparseUUIDArray_Entry>(*(a1 + 24));
            v20 = *(a1 + 32);
            v21 = *(a1 + 40) + 8 * v20;
            *(a1 + 32) = v20 + 1;
            *(v21 + 8) = v19;
            v16 = v29;
          }

          else
          {
            *(a1 + 32) = v22 + 1;
            v19 = *&v17[2 * v22 + 2];
          }

          v15 = sub_100157FC8(a3, v19, v16);
          v29 = v15;
          if (!v15)
          {
            goto LABEL_46;
          }

          if (*a3 <= v15 || *v15 != 18)
          {
            goto LABEL_38;
          }

          continue;
        }
      }

      if (v9 >> 3 != 1 || v9 != 8)
      {
        goto LABEL_12;
      }

      v23 = (v8 + 1);
      LODWORD(v24) = *v8;
      if ((*v8 & 0x80000000) == 0)
      {
        goto LABEL_37;
      }

      v25 = *v23;
      v24 = (v24 + (v25 << 7) - 128);
      if ((v25 & 0x80000000) == 0)
      {
        v23 = (v8 + 2);
LABEL_37:
        v29 = v23;
        *(a1 + 48) = v24;
        v6 = 1;
        goto LABEL_38;
      }

      v27 = google::protobuf::internal::VarintParseSlow32(v8, v24);
      v29 = v27;
      *(a1 + 48) = v28;
      v6 = 1;
      if (!v27)
      {
        goto LABEL_46;
      }

LABEL_38:
      if (sub_1000313B0(a3, &v29, *(a3 + 92)))
      {
        goto LABEL_2;
      }
    }

    v8 = (v29 + 2);
LABEL_6:
    v29 = v8;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v6;
  return v29;
}

const google::protobuf::UnknownFieldSet *TSP::SparseUUIDArray::_InternalSerialize(TSP::SparseUUIDArray *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  if (*(this + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 12);
    *a2 = 8;
    if (v6 > 0x7F)
    {
      a2[1] = v6 | 0x80;
      v7 = v6 >> 7;
      if (v6 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v7 | 0x80;
          v8 = v7 >> 7;
          ++a2;
          v9 = v7 >> 14;
          v7 >>= 7;
        }

        while (v9);
        *(a2 - 1) = v8;
      }

      else
      {
        a2[2] = v7;
        a2 += 3;
      }
    }

    else
    {
      a2[1] = v6;
      a2 += 2;
    }
  }

  v10 = *(this + 8);
  if (v10)
  {
    for (i = 0; i != v10; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v12 = *(*(this + 5) + 8 * i + 8);
      *a2 = 18;
      v13 = *(v12 + 5);
      if (v13 > 0x7F)
      {
        a2[1] = v13 | 0x80;
        v15 = v13 >> 7;
        if (v13 >> 14)
        {
          v14 = a2 + 3;
          do
          {
            *(v14 - 1) = v15 | 0x80;
            v16 = v15 >> 7;
            ++v14;
            v17 = v15 >> 14;
            v15 >>= 7;
          }

          while (v17);
          *(v14 - 1) = v16;
        }

        else
        {
          a2[2] = v15;
          v14 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v13;
        v14 = a2 + 2;
      }

      a2 = TSP::SparseUUIDArray_Entry::_InternalSerialize(v12, v14, a3, a4);
    }
  }

  v18 = *(this + 1);
  if ((v18 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v18 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

char *TSP::SparseUUIDArray::ByteSizeLong(TSP::SparseUUIDArray *this)
{
  if (*(this + 16))
  {
    v2 = ((9 * (__clz(*(this + 12) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  v3 = *(this + 8);
  v4 = (v2 + v3);
  v5 = *(this + 5);
  if (v5)
  {
    v6 = (v5 + 8);
  }

  else
  {
    v6 = 0;
  }

  if (v3)
  {
    v7 = 8 * v3;
    do
    {
      v8 = *v6++;
      v9 = TSP::SparseUUIDArray_Entry::ByteSizeLong(v8);
      v4 = (v4 + v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6));
      v7 -= 8;
    }

    while (v7);
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v4, this + 5);
  }

  else
  {
    *(this + 5) = v4;
    return v4;
  }
}

void TSP::SparseUUIDArray::MergeFrom(TSP::SparseUUIDArray *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::SparseUUIDArray::MergeFrom(this, v5, v6);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void *TSP::SparseUUIDArray::MergeFrom(void *this, const TSP::SparseUUIDArray *a2, uint64_t a3)
{
  v4 = this;
  v5 = *(a2 + 1);
  if (v5)
  {
    this = sub_1000315A0(this + 1, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8), a3);
  }

  v6 = *(a2 + 8);
  if (v6)
  {
    v7 = *(a2 + 5);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v4 + 3), *(a2 + 8));
    this = sub_10006A7B0(v4 + 3, v8, v7 + 8, v6, *v4[5] - *(v4 + 8));
    v9 = *(v4 + 8) + v6;
    *(v4 + 8) = v9;
    v10 = v4[5];
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  if (*(a2 + 16))
  {
    v11 = *(a2 + 12);
    *(v4 + 4) |= 1u;
    *(v4 + 12) = v11;
  }

  return this;
}

void TSP::SparseUUIDArray::CopyFrom(char **this, char **a2, uint64_t a3)
{
  if (a2 != this)
  {
    TSP::SparseUUIDArray::Clear(this, a2, a3);

    TSP::SparseUUIDArray::MergeFrom(this, a2);
  }
}

BOOL TSP::SparseUUIDArray::IsInitialized(TSP::SparseUUIDArray *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 0;
  }

  v2 = *(this + 8);
  v3 = *(this + 5);
  do
  {
    result = v2 < 1;
    if (v2 < 1)
    {
      break;
    }

    v4 = *(v3 + 8 * v2);
    if ((~*(v4 + 16) & 3) != 0)
    {
      break;
    }

    --v2;
  }

  while ((~*(*(v4 + 24) + 16) & 3) == 0);
  return result;
}

uint64_t TSP::SparseUUIDArray::GetMetadata(TSP::SparseUUIDArray *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  result = off_1001E9950[48];
  v2 = off_1001E9950[49];
  return result;
}

uint64_t TSP::UUIDPath::UUIDPath(uint64_t a1, uint64_t a2)
{
  *a1 = off_1001CA9A0;
  *(a1 + 8) = a2;
  *(a1 + 16) = a2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  if (atomic_load_explicit(scc_info_UUIDPath_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_UUIDPath_TSPMessages_2eproto);
  }

  return a1;
}

void TSP::UUIDPath::~UUIDPath(TSP::UUIDPath *this)
{
  sub_10002F4C4(this + 1);
  sub_10004A544(this + 2);
}

{
  TSP::UUIDPath::~UUIDPath(this);

  operator delete();
}

google::protobuf::UnknownFieldSet *TSP::UUIDPath::Clear(google::protobuf::UnknownFieldSet *this, uint64_t a2, uint64_t a3)
{
  v3 = this;
  v4 = *(this + 6);
  if (v4 >= 1)
  {
    v5 = (*(this + 4) + 8);
    do
    {
      v6 = *v5++;
      this = TSP::UUID::Clear(v6, a2, a3);
      --v4;
    }

    while (v4);
    *(v3 + 24) = 0;
  }

  v8 = *(v3 + 8);
  v7 = (v3 + 8);
  if (v8)
  {

    return sub_1000315EC(v7, a2, a3);
  }

  return this;
}

google::protobuf::internal *TSP::UUIDPath::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v22 = a2;
  if ((sub_1000313B0(a3, &v22, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v6 = (v22 + 1);
      v7 = *v22;
      if ((*v22 & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if ((*v6 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v22, (v8 - 128));
      v22 = TagFallback;
      if (!TagFallback)
      {
        return 0;
      }

      v6 = TagFallback;
      v7 = v5;
LABEL_6:
      if (v7 == 10)
      {
        v12 = (v6 - 1);
        while (1)
        {
          v13 = (v12 + 1);
          v22 = (v12 + 1);
          v14 = *(a1 + 32);
          if (!v14)
          {
            break;
          }

          v19 = *(a1 + 24);
          v15 = *v14;
          if (v19 < *v14)
          {
            *(a1 + 24) = v19 + 1;
            v16 = *&v14[2 * v19 + 2];
            goto LABEL_23;
          }

          if (v15 == *(a1 + 28))
          {
            goto LABEL_19;
          }

LABEL_20:
          *v14 = v15 + 1;
          v16 = google::protobuf::Arena::CreateMaybeMessage<TSP::UUID>(*(a1 + 16));
          v17 = *(a1 + 24);
          v18 = *(a1 + 32) + 8 * v17;
          *(a1 + 24) = v17 + 1;
          *(v18 + 8) = v16;
          v13 = v22;
LABEL_23:
          v12 = sub_100156190(a3, v16, v13);
          v22 = v12;
          if (!v12)
          {
            return 0;
          }

          if (*a3 <= v12 || *v12 != 10)
          {
            goto LABEL_14;
          }
        }

        v15 = *(a1 + 28);
LABEL_19:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 16), v15 + 1);
        v14 = *(a1 + 32);
        v15 = *v14;
        goto LABEL_20;
      }

      if (v7)
      {
        v9 = (v7 & 7) == 4;
      }

      else
      {
        v9 = 1;
      }

      if (v9)
      {
        *(a3 + 80) = v7 - 1;
        return v22;
      }

      v10 = *(a1 + 8);
      if (v10)
      {
        v11 = ((v10 & 0xFFFFFFFFFFFFFFFELL) + 8);
      }

      else
      {
        v11 = sub_100031428((a1 + 8), v5, v6);
        v6 = v22;
      }

      v22 = google::protobuf::internal::UnknownFieldParse(v7, v11, v6);
      if (!v22)
      {
        return 0;
      }

LABEL_14:
      if (sub_1000313B0(a3, &v22, *(a3 + 92)))
      {
        return v22;
      }
    }

    v6 = (v22 + 2);
LABEL_5:
    v22 = v6;
    goto LABEL_6;
  }

  return v22;
}

const google::protobuf::UnknownFieldSet *TSP::UUIDPath::_InternalSerialize(TSP::UUIDPath *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 6);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v8 = *(*(this + 4) + 8 * i + 8);
      *a2 = 10;
      v9 = *(v8 + 5);
      if (v9 > 0x7F)
      {
        a2[1] = v9 | 0x80;
        v11 = v9 >> 7;
        if (v9 >> 14)
        {
          v10 = a2 + 3;
          do
          {
            *(v10 - 1) = v11 | 0x80;
            v12 = v11 >> 7;
            ++v10;
            v13 = v11 >> 14;
            v11 >>= 7;
          }

          while (v13);
          *(v10 - 1) = v12;
        }

        else
        {
          a2[2] = v11;
          v10 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v9;
        v10 = a2 + 2;
      }

      a2 = TSP::UUID::_InternalSerialize(v8, v10, a3, a4);
    }
  }

  v14 = *(this + 1);
  if ((v14 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v14 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

char *TSP::UUIDPath::ByteSizeLong(TSP::UUIDPath *this)
{
  v2 = *(this + 6);
  v3 = *(this + 4);
  if (v3)
  {
    v4 = (v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (v2)
  {
    v5 = 8 * v2;
    do
    {
      v6 = *v4++;
      v7 = TSP::UUID::ByteSizeLong(v6);
      v2 = (v2 + v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6));
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v2, this + 10);
  }

  else
  {
    *(this + 10) = v2;
    return v2;
  }
}

void TSP::UUIDPath::MergeFrom(TSP::UUIDPath *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::UUIDPath::MergeFrom(this, v5, v6);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void *TSP::UUIDPath::MergeFrom(void *this, const TSP::UUIDPath *a2, uint64_t a3)
{
  v4 = this;
  v5 = *(a2 + 1);
  if (v5)
  {
    this = sub_1000315A0(this + 1, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8), a3);
  }

  v6 = *(a2 + 6);
  if (v6)
  {
    v7 = *(a2 + 4);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v4 + 2), v6);
    this = sub_10006A66C(v4 + 2, v8, v7 + 8, v6, *v4[4] - *(v4 + 6));
    v9 = *(v4 + 6) + v6;
    *(v4 + 6) = v9;
    v10 = v4[4];
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  return this;
}

void TSP::UUIDPath::CopyFrom(char **this, char **a2, uint64_t a3)
{
  if (a2 != this)
  {
    TSP::UUIDPath::Clear(this, a2, a3);

    TSP::UUIDPath::MergeFrom(this, a2);
  }
}

BOOL TSP::UUIDPath::IsInitialized(TSP::UUIDPath *this)
{
  v1 = *(this + 6);
  do
  {
    v2 = v1;
    if (v1 < 1)
    {
      break;
    }

    v3 = *(*(this + 4) + 8 * v1--);
  }

  while ((~*(v3 + 16) & 3) == 0);
  return v2 < 1;
}

uint64_t TSP::UUIDPath::GetMetadata(TSP::UUIDPath *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  result = off_1001E9950[50];
  v2 = off_1001E9950[51];
  return result;
}

void TSP::SparseUUIDPathArray_Entry::~SparseUUIDPathArray_Entry(TSP::SparseUUIDPathArray_Entry *this)
{
  if (this != TSP::_SparseUUIDPathArray_Entry_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSP::UUIDPath::~UUIDPath(v2);
      operator delete();
    }
  }

  sub_10002F4C4(this + 1);
}

{
  TSP::SparseUUIDPathArray_Entry::~SparseUUIDPathArray_Entry(this);

  operator delete();
}

google::protobuf::UnknownFieldSet *TSP::SparseUUIDPathArray_Entry::Clear(google::protobuf::UnknownFieldSet *this, uint64_t a2, uint64_t a3)
{
  v3 = this;
  if (*(this + 16))
  {
    this = TSP::UUIDPath::Clear(*(this + 3), a2, a3);
  }

  v5 = *(v3 + 8);
  v4 = v3 + 8;
  *(v4 + 24) = 0;
  *(v4 + 8) = 0;
  if (v5)
  {

    return sub_1000315EC(v4, a2, a3);
  }

  return this;
}

google::protobuf::internal *TSP::SparseUUIDPathArray_Entry::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v24 = a2;
  v6 = 0;
  if ((sub_1000313B0(a3, &v24, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v8 = (v24 + 1);
      v9 = *v24;
      if ((*v24 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v10 = v9 + (*v8 << 7);
      v9 = v10 - 128;
      if ((*v8 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v24, (v10 - 128));
      v24 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_39;
      }

      v8 = TagFallback;
      v9 = v5;
LABEL_7:
      if (v9 >> 3 == 2)
      {
        if (v9 == 18)
        {
          *(a1 + 16) |= 1u;
          v16 = *(a1 + 24);
          if (!v16)
          {
            v17 = *(a1 + 8);
            if (v17)
            {
              v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
            }

            v16 = google::protobuf::Arena::CreateMaybeMessage<TSP::UUIDPath>(v17);
            *(a1 + 24) = v16;
            v8 = v24;
          }

          v15 = sub_100158098(a3, v16, v8);
        }

        else
        {
LABEL_12:
          if (v9)
          {
            v12 = (v9 & 7) == 4;
          }

          else
          {
            v12 = 1;
          }

          if (v12)
          {
            *(a3 + 80) = v9 - 1;
            goto LABEL_2;
          }

          v13 = *(a1 + 8);
          if (v13)
          {
            v14 = ((v13 & 0xFFFFFFFFFFFFFFFELL) + 8);
          }

          else
          {
            v14 = sub_100031428((a1 + 8), v5, v8);
            v8 = v24;
          }

          v15 = google::protobuf::internal::UnknownFieldParse(v9, v14, v8);
        }

        v24 = v15;
        if (!v15)
        {
          goto LABEL_39;
        }

        goto LABEL_31;
      }

      if (v9 >> 3 != 1 || v9 != 8)
      {
        goto LABEL_12;
      }

      v6 |= 2u;
      v18 = (v8 + 1);
      LODWORD(v19) = *v8;
      if ((*v8 & 0x80000000) == 0)
      {
        goto LABEL_30;
      }

      v20 = *v18;
      v19 = (v19 + (v20 << 7) - 128);
      if ((v20 & 0x80000000) == 0)
      {
        v18 = (v8 + 2);
LABEL_30:
        v24 = v18;
        *(a1 + 32) = v19;
        goto LABEL_31;
      }

      v22 = google::protobuf::internal::VarintParseSlow32(v8, v19);
      v24 = v22;
      *(a1 + 32) = v23;
      if (!v22)
      {
LABEL_39:
        v24 = 0;
        goto LABEL_2;
      }

LABEL_31:
      if (sub_1000313B0(a3, &v24, *(a3 + 92)))
      {
        goto LABEL_2;
      }
    }

    v8 = (v24 + 2);
LABEL_6:
    v24 = v8;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v6;
  return v24;
}

const google::protobuf::UnknownFieldSet *TSP::SparseUUIDPathArray_Entry::_InternalSerialize(TSP::SparseUUIDPathArray_Entry *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 4);
  if ((v6 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 8);
    *a2 = 8;
    if (v7 <= 0x7F)
    {
      a2[1] = v7;
      a2 += 2;
      if ((v6 & 1) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_10;
    }

    a2[1] = v7 | 0x80;
    v8 = v7 >> 7;
    if (v7 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v8 | 0x80;
        v13 = v8 >> 7;
        ++a2;
        v14 = v8 >> 14;
        v8 >>= 7;
      }

      while (v14);
      *(a2 - 1) = v13;
      if ((v6 & 1) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_10;
    }

    a2[2] = v8;
    a2 += 3;
  }

  if ((v6 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_10:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v9 = *(this + 3);
  *a2 = 18;
  v10 = *(v9 + 10);
  if (v10 > 0x7F)
  {
    a2[1] = v10 | 0x80;
    v12 = v10 >> 7;
    if (v10 >> 14)
    {
      v11 = a2 + 3;
      do
      {
        *(v11 - 1) = v12 | 0x80;
        v15 = v12 >> 7;
        ++v11;
        v16 = v12 >> 14;
        v12 >>= 7;
      }

      while (v16);
      *(v11 - 1) = v15;
    }

    else
    {
      a2[2] = v12;
      v11 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v10;
    v11 = a2 + 2;
  }

  a2 = TSP::UUIDPath::_InternalSerialize(v9, v11, a3, a4);
LABEL_24:
  v17 = *(this + 1);
  if ((v17 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v17 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

char *TSP::SparseUUIDPathArray_Entry::RequiredFieldsByteSizeFallback(TSP::SparseUUIDPathArray_Entry *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = TSP::UUIDPath::ByteSizeLong(*(this + 3));
    result = &v4[((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1];
    if ((*(this + 4) & 2) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

  result = 0;
  if ((v2 & 2) != 0)
  {
LABEL_5:
    result += ((9 * (__clz(*(this + 8) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return result;
}

char *TSP::SparseUUIDPathArray_Entry::ByteSizeLong(TSP::UUIDPath **this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    v3 = TSP::SparseUUIDPathArray_Entry::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = TSP::UUIDPath::ByteSizeLong(this[3]);
    v3 = &v2[((9 * (__clz(*(this + 8) | 1) ^ 0x1F) + 73) >> 6) + 2 + ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6)];
  }

  if (this[1])
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 1), v3, this + 5);
  }

  else
  {
    *(this + 5) = v3;
    return v3;
  }
}

void TSP::SparseUUIDPathArray_Entry::MergeFrom(TSP::SparseUUIDPathArray_Entry *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::SparseUUIDPathArray_Entry::MergeFrom(this, v5, v6);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void *TSP::SparseUUIDPathArray_Entry::MergeFrom(void *this, const TSP::SparseUUIDPathArray_Entry *a2, uint64_t a3)
{
  v4 = this;
  v5 = *(a2 + 1);
  if (v5)
  {
    this = sub_1000315A0(this + 1, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8), a3);
  }

  v6 = *(a2 + 4);
  if ((v6 & 3) != 0)
  {
    if (v6)
    {
      *(v4 + 4) |= 1u;
      v7 = v4[3];
      if (!v7)
      {
        v8 = v4[1];
        if (v8)
        {
          v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
        }

        v7 = google::protobuf::Arena::CreateMaybeMessage<TSP::UUIDPath>(v8);
        v4[3] = v7;
      }

      if (*(a2 + 3))
      {
        v9 = *(a2 + 3);
      }

      else
      {
        v9 = &TSP::_UUIDPath_default_instance_;
      }

      this = TSP::UUIDPath::MergeFrom(v7, v9, a3);
    }

    if ((v6 & 2) != 0)
    {
      *(v4 + 8) = *(a2 + 8);
    }

    *(v4 + 4) |= v6;
  }

  return this;
}

void TSP::SparseUUIDPathArray_Entry::CopyFrom(char **this, char **a2, uint64_t a3)
{
  if (a2 != this)
  {
    TSP::SparseUUIDPathArray_Entry::Clear(this, a2, a3);

    TSP::SparseUUIDPathArray_Entry::MergeFrom(this, a2);
  }
}

BOOL TSP::SparseUUIDPathArray_Entry::IsInitialized(TSP::SparseUUIDPathArray_Entry *this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    return 0;
  }

  v1 = *(this + 3);
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  do
  {
    result = v2 < 1;
    if (v2 < 1)
    {
      break;
    }

    v5 = *(v3 + 8 * v2--);
  }

  while ((~*(v5 + 16) & 3) == 0);
  return result;
}

uint64_t TSP::SparseUUIDPathArray_Entry::GetMetadata(TSP::SparseUUIDPathArray_Entry *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  result = off_1001E9950[52];
  v2 = off_1001E9950[53];
  return result;
}

uint64_t TSP::SparseUUIDPathArray::SparseUUIDPathArray(uint64_t a1, uint64_t a2)
{
  *a1 = off_1001CAB00;
  *(a1 + 8) = a2;
  *(a1 + 24) = a2;
  *(a1 + 16) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  if (atomic_load_explicit(scc_info_SparseUUIDPathArray_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_SparseUUIDPathArray_TSPMessages_2eproto);
  }

  *(a1 + 48) = 0;
  return a1;
}

void TSP::SparseUUIDPathArray::~SparseUUIDPathArray(TSP::SparseUUIDPathArray *this)
{
  sub_10002F4C4(this + 1);
  sub_10006A870(this + 3);
}

{
  TSP::SparseUUIDPathArray::~SparseUUIDPathArray(this);

  operator delete();
}

google::protobuf::UnknownFieldSet *TSP::SparseUUIDPathArray::Clear(google::protobuf::UnknownFieldSet *this, uint64_t a2, uint64_t a3)
{
  v3 = this;
  v4 = *(this + 8);
  if (v4 >= 1)
  {
    v5 = (*(this + 5) + 8);
    do
    {
      v6 = *v5++;
      this = TSP::SparseUUIDPathArray_Entry::Clear(v6, a2, a3);
      --v4;
    }

    while (v4);
    *(v3 + 32) = 0;
  }

  v8 = *(v3 + 8);
  v7 = v3 + 8;
  *(v7 + 40) = 0;
  *(v7 + 8) = 0;
  if (v8)
  {

    return sub_1000315EC(v7, a2, a3);
  }

  return this;
}

google::protobuf::internal *TSP::SparseUUIDPathArray::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v29 = a2;
  v6 = 0;
  if ((sub_1000313B0(a3, &v29, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v8 = (v29 + 1);
      v9 = *v29;
      if ((*v29 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v10 = v9 + (*v8 << 7);
      v9 = v10 - 128;
      if ((*v8 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v29, (v10 - 128));
      v29 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_46;
      }

      v8 = TagFallback;
      v9 = v5;
LABEL_7:
      if (v9 >> 3 == 2)
      {
        if (v9 != 18)
        {
LABEL_12:
          if (v9)
          {
            v12 = (v9 & 7) == 4;
          }

          else
          {
            v12 = 1;
          }

          if (v12)
          {
            *(a3 + 80) = v9 - 1;
            goto LABEL_2;
          }

          v13 = *(a1 + 8);
          if (v13)
          {
            v14 = ((v13 & 0xFFFFFFFFFFFFFFFELL) + 8);
          }

          else
          {
            v14 = sub_100031428((a1 + 8), v5, v8);
            v8 = v29;
          }

          v29 = google::protobuf::internal::UnknownFieldParse(v9, v14, v8);
          if (!v29)
          {
LABEL_46:
            v29 = 0;
            goto LABEL_2;
          }

          goto LABEL_38;
        }

        v15 = (v8 - 1);
        while (2)
        {
          v16 = (v15 + 1);
          v29 = (v15 + 1);
          v17 = *(a1 + 40);
          if (!v17)
          {
            v18 = *(a1 + 36);
            goto LABEL_24;
          }

          v22 = *(a1 + 32);
          v18 = *v17;
          if (v22 >= *v17)
          {
            if (v18 == *(a1 + 36))
            {
LABEL_24:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24), v18 + 1);
              v17 = *(a1 + 40);
              v18 = *v17;
            }

            *v17 = v18 + 1;
            v19 = google::protobuf::Arena::CreateMaybeMessage<TSP::SparseUUIDPathArray_Entry>(*(a1 + 24));
            v20 = *(a1 + 32);
            v21 = *(a1 + 40) + 8 * v20;
            *(a1 + 32) = v20 + 1;
            *(v21 + 8) = v19;
            v16 = v29;
          }

          else
          {
            *(a1 + 32) = v22 + 1;
            v19 = *&v17[2 * v22 + 2];
          }

          v15 = sub_100158168(a3, v19, v16);
          v29 = v15;
          if (!v15)
          {
            goto LABEL_46;
          }

          if (*a3 <= v15 || *v15 != 18)
          {
            goto LABEL_38;
          }

          continue;
        }
      }

      if (v9 >> 3 != 1 || v9 != 8)
      {
        goto LABEL_12;
      }

      v23 = (v8 + 1);
      LODWORD(v24) = *v8;
      if ((*v8 & 0x80000000) == 0)
      {
        goto LABEL_37;
      }

      v25 = *v23;
      v24 = (v24 + (v25 << 7) - 128);
      if ((v25 & 0x80000000) == 0)
      {
        v23 = (v8 + 2);
LABEL_37:
        v29 = v23;
        *(a1 + 48) = v24;
        v6 = 1;
        goto LABEL_38;
      }

      v27 = google::protobuf::internal::VarintParseSlow32(v8, v24);
      v29 = v27;
      *(a1 + 48) = v28;
      v6 = 1;
      if (!v27)
      {
        goto LABEL_46;
      }

LABEL_38:
      if (sub_1000313B0(a3, &v29, *(a3 + 92)))
      {
        goto LABEL_2;
      }
    }

    v8 = (v29 + 2);
LABEL_6:
    v29 = v8;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v6;
  return v29;
}

const google::protobuf::UnknownFieldSet *TSP::SparseUUIDPathArray::_InternalSerialize(TSP::SparseUUIDPathArray *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  if (*(this + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 12);
    *a2 = 8;
    if (v6 > 0x7F)
    {
      a2[1] = v6 | 0x80;
      v7 = v6 >> 7;
      if (v6 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v7 | 0x80;
          v8 = v7 >> 7;
          ++a2;
          v9 = v7 >> 14;
          v7 >>= 7;
        }

        while (v9);
        *(a2 - 1) = v8;
      }

      else
      {
        a2[2] = v7;
        a2 += 3;
      }
    }

    else
    {
      a2[1] = v6;
      a2 += 2;
    }
  }

  v10 = *(this + 8);
  if (v10)
  {
    for (i = 0; i != v10; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v12 = *(*(this + 5) + 8 * i + 8);
      *a2 = 18;
      v13 = *(v12 + 5);
      if (v13 > 0x7F)
      {
        a2[1] = v13 | 0x80;
        v15 = v13 >> 7;
        if (v13 >> 14)
        {
          v14 = a2 + 3;
          do
          {
            *(v14 - 1) = v15 | 0x80;
            v16 = v15 >> 7;
            ++v14;
            v17 = v15 >> 14;
            v15 >>= 7;
          }

          while (v17);
          *(v14 - 1) = v16;
        }

        else
        {
          a2[2] = v15;
          v14 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v13;
        v14 = a2 + 2;
      }

      a2 = TSP::SparseUUIDPathArray_Entry::_InternalSerialize(v12, v14, a3, a4);
    }
  }

  v18 = *(this + 1);
  if ((v18 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v18 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

char *TSP::SparseUUIDPathArray::ByteSizeLong(TSP::SparseUUIDPathArray *this)
{
  if (*(this + 16))
  {
    v2 = ((9 * (__clz(*(this + 12) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  v3 = *(this + 8);
  v4 = (v2 + v3);
  v5 = *(this + 5);
  if (v5)
  {
    v6 = (v5 + 8);
  }

  else
  {
    v6 = 0;
  }

  if (v3)
  {
    v7 = 8 * v3;
    do
    {
      v8 = *v6++;
      v9 = TSP::SparseUUIDPathArray_Entry::ByteSizeLong(v8);
      v4 = (v4 + v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6));
      v7 -= 8;
    }

    while (v7);
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v4, this + 5);
  }

  else
  {
    *(this + 5) = v4;
    return v4;
  }
}

void TSP::SparseUUIDPathArray::MergeFrom(TSP::SparseUUIDPathArray *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::SparseUUIDPathArray::MergeFrom(this, v5, v6);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void *TSP::SparseUUIDPathArray::MergeFrom(void *this, const TSP::SparseUUIDPathArray *a2, uint64_t a3)
{
  v4 = this;
  v5 = *(a2 + 1);
  if (v5)
  {
    this = sub_1000315A0(this + 1, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8), a3);
  }

  v6 = *(a2 + 8);
  if (v6)
  {
    v7 = *(a2 + 5);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v4 + 3), *(a2 + 8));
    this = sub_10006A8F4(v4 + 3, v8, v7 + 8, v6, *v4[5] - *(v4 + 8));
    v9 = *(v4 + 8) + v6;
    *(v4 + 8) = v9;
    v10 = v4[5];
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  if (*(a2 + 16))
  {
    v11 = *(a2 + 12);
    *(v4 + 4) |= 1u;
    *(v4 + 12) = v11;
  }

  return this;
}

void TSP::SparseUUIDPathArray::CopyFrom(char **this, char **a2, uint64_t a3)
{
  if (a2 != this)
  {
    TSP::SparseUUIDPathArray::Clear(this, a2, a3);

    TSP::SparseUUIDPathArray::MergeFrom(this, a2);
  }
}

BOOL sub_10005E4A4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 < 1)
  {
    return 1;
  }

  v2 = *(a1 + 16) + 8;
  do
  {
    v3 = *(v2 + 8 * (v1 - 1));
    result = (*(v3 + 16) & 3) == 3;
    if ((*(v3 + 16) & 3) != 3)
    {
      break;
    }

    v5 = *(v3 + 24);
    v6 = *(v5 + 24);
    v7 = *(v5 + 32);
    while (v6 >= 1)
    {
      v8 = *(v7 + 8 * v6--);
      if ((~*(v8 + 16) & 3) != 0)
      {
        return 0;
      }
    }

    v10 = __OFSUB__(v1, 2);
    v9 = v1 - 2 < 0;
    --v1;
  }

  while (v9 == v10);
  return result;
}

uint64_t TSP::SparseUUIDPathArray::GetMetadata(TSP::SparseUUIDPathArray *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  result = off_1001E9950[54];
  v2 = off_1001E9950[55];
  return result;
}

uint64_t TSP::PasteboardObject::PasteboardObject(uint64_t a1, uint64_t a2)
{
  *a1 = off_1001CABB0;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = a2;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = a2;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = a2;
  *(a1 + 120) = a2;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  if (atomic_load_explicit(scc_info_PasteboardObject_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_PasteboardObject_TSPMessages_2eproto);
  }

  *(a1 + 170) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  return a1;
}

void sub_10005E618(_Unwind_Exception *a1)
{
  sub_10006A1CC(v5);
  sub_10006A9B4(v4);
  sub_10006A9B4(v3);
  sub_10006A9B4(v2);
  sub_10006A9B4(v1);
  _Unwind_Resume(a1);
}

void TSP::PasteboardObject::~PasteboardObject(TSP::PasteboardObject *this)
{
  sub_10005E6D0(this);
  sub_10002F4C4(this + 1);
  sub_10006A1CC(this + 15);
  sub_10006A9B4(this + 12);
  sub_10006A9B4(this + 9);
  sub_10006A9B4(this + 6);
  sub_10006A9B4(this + 3);
}

{
  TSP::PasteboardObject::~PasteboardObject(this);

  operator delete();
}

uint64_t sub_10005E6D0(uint64_t result)
{
  if (result != &TSP::_PasteboardObject_default_instance_)
  {
    v1 = *(result + 144);
    if (v1)
    {
      sub_10002F4C4((v1 + 8));
      operator delete();
    }

    v2 = *(result + 152);
    if (v2)
    {
      sub_10002F4C4((v2 + 8));
      operator delete();
    }

    v3 = *(result + 160);
    if (v3)
    {
      sub_10002F4C4((v3 + 8));
      operator delete();
    }

    v4 = *(result + 168);
    if (v4)
    {
      sub_10002F4C4((v4 + 8));
      operator delete();
    }

    v5 = *(result + 176);
    if (v5)
    {
      sub_10002F4C4((v5 + 8));

      operator delete();
    }
  }

  return result;
}

google::protobuf::UnknownFieldSet *TSP::PasteboardObject::Clear(google::protobuf::UnknownFieldSet *this, uint64_t a2, uint64_t a3)
{
  v3 = this;
  v4 = *(this + 8);
  if (v4 >= 1)
  {
    v5 = (*(this + 5) + 8);
    do
    {
      v6 = *v5++;
      this = TSP::Reference::Clear(v6, a2, a3);
      --v4;
    }

    while (v4);
    *(v3 + 32) = 0;
  }

  v7 = *(v3 + 56);
  if (v7 >= 1)
  {
    v8 = (*(v3 + 64) + 8);
    do
    {
      v9 = *v8++;
      this = TSP::Reference::Clear(v9, a2, a3);
      --v7;
    }

    while (v7);
    *(v3 + 56) = 0;
  }

  v10 = *(v3 + 80);
  if (v10 >= 1)
  {
    v11 = (*(v3 + 88) + 8);
    do
    {
      v12 = *v11++;
      this = TSP::Reference::Clear(v12, a2, a3);
      --v10;
    }

    while (v10);
    *(v3 + 80) = 0;
  }

  v13 = *(v3 + 104);
  if (v13 >= 1)
  {
    v14 = (*(v3 + 112) + 8);
    do
    {
      v15 = *v14++;
      this = TSP::Reference::Clear(v15, a2, a3);
      --v13;
    }

    while (v13);
    *(v3 + 104) = 0;
  }

  v16 = *(v3 + 128);
  if (v16 >= 1)
  {
    v17 = (*(v3 + 136) + 8);
    do
    {
      v18 = *v17++;
      this = TSP::Range::Clear(v18, a2, a3);
      --v16;
    }

    while (v16);
    *(v3 + 128) = 0;
  }

  v19 = *(v3 + 16);
  if ((v19 & 0x1F) == 0)
  {
    goto LABEL_28;
  }

  if (v19)
  {
    this = TSP::Reference::Clear(*(v3 + 144), a2, a3);
    if ((v19 & 2) == 0)
    {
LABEL_24:
      if ((v19 & 4) == 0)
      {
        goto LABEL_25;
      }

LABEL_34:
      this = TSP::Reference::Clear(*(v3 + 160), a2, a3);
      if ((v19 & 8) == 0)
      {
LABEL_26:
        if ((v19 & 0x10) == 0)
        {
          goto LABEL_28;
        }

        goto LABEL_27;
      }

      goto LABEL_35;
    }
  }

  else if ((v19 & 2) == 0)
  {
    goto LABEL_24;
  }

  this = TSP::Reference::Clear(*(v3 + 152), a2, a3);
  if ((v19 & 4) != 0)
  {
    goto LABEL_34;
  }

LABEL_25:
  if ((v19 & 8) == 0)
  {
    goto LABEL_26;
  }

LABEL_35:
  this = TSP::Reference::Clear(*(v3 + 168), a2, a3);
  if ((v19 & 0x10) != 0)
  {
LABEL_27:
    this = TSP::Reference::Clear(*(v3 + 176), a2, a3);
  }

LABEL_28:
  v21 = *(v3 + 8);
  v20 = v3 + 8;
  *(v20 + 176) = 0;
  *(v20 + 8) = 0;
  if (v21)
  {

    return sub_1000315EC(v20, a2, a3);
  }

  return this;
}

google::protobuf::internal *TSP::PasteboardObject::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v74 = a2;
  v6 = 0;
  if ((sub_1000313B0(a3, &v74, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v8 = (v74 + 1);
      v9 = *v74;
      if ((*v74 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v10 = v9 + (*v8 << 7);
      v9 = v10 - 128;
      if ((*v8 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v74, (v10 - 128));
      v74 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_150;
      }

      v8 = TagFallback;
      v9 = v5;
LABEL_7:
      v11 = v9 >> 3;
      if (v9 >> 3 > 7)
      {
        if (v9 >> 3 > 0xA)
        {
          if (v11 != 11)
          {
            if (v11 == 12)
            {
              if (v9 != 98)
              {
                goto LABEL_137;
              }

              *(a1 + 16) |= 0x10u;
              v41 = *(a1 + 176);
              if (v41)
              {
                goto LABEL_133;
              }

              v65 = *(a1 + 8);
              if (v65)
              {
                v65 = *(v65 & 0xFFFFFFFFFFFFFFFELL);
              }

              v41 = google::protobuf::Arena::CreateMaybeMessage<TSP::Reference>(v65);
              *(a1 + 176) = v41;
              goto LABEL_132;
            }

            if (v11 != 13 || v9 != 106)
            {
              goto LABEL_137;
            }

            v32 = (v8 - 1);
            while (2)
            {
              v33 = (v32 + 1);
              v74 = (v32 + 1);
              v34 = *(a1 + 136);
              if (!v34)
              {
                v35 = *(a1 + 132);
                goto LABEL_62;
              }

              v39 = *(a1 + 128);
              v35 = *v34;
              if (v39 >= *v34)
              {
                if (v35 == *(a1 + 132))
                {
LABEL_62:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 120), v35 + 1);
                  v34 = *(a1 + 136);
                  v35 = *v34;
                }

                *v34 = v35 + 1;
                v36 = google::protobuf::Arena::CreateMaybeMessage<TSP::Range>(*(a1 + 120));
                v37 = *(a1 + 128);
                v38 = *(a1 + 136) + 8 * v37;
                *(a1 + 128) = v37 + 1;
                *(v38 + 8) = v36;
                v33 = v74;
              }

              else
              {
                *(a1 + 128) = v39 + 1;
                v36 = *&v34[2 * v39 + 2];
              }

              v32 = sub_100157D58(a3, v36, v33);
              v74 = v32;
              if (!v32)
              {
                goto LABEL_150;
              }

              if (*a3 <= v32 || *v32 != 106)
              {
                goto LABEL_135;
              }

              continue;
            }
          }

          if (v9 != 90)
          {
            goto LABEL_137;
          }

          v47 = (v8 - 1);
          while (2)
          {
            v48 = (v47 + 1);
            v74 = (v47 + 1);
            v49 = *(a1 + 112);
            if (!v49)
            {
              v50 = *(a1 + 108);
              goto LABEL_93;
            }

            v54 = *(a1 + 104);
            v50 = *v49;
            if (v54 >= *v49)
            {
              if (v50 == *(a1 + 108))
              {
LABEL_93:
                google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 96), v50 + 1);
                v49 = *(a1 + 112);
                v50 = *v49;
              }

              *v49 = v50 + 1;
              v51 = google::protobuf::Arena::CreateMaybeMessage<TSP::Reference>(*(a1 + 96));
              v52 = *(a1 + 104);
              v53 = *(a1 + 112) + 8 * v52;
              *(a1 + 104) = v52 + 1;
              *(v53 + 8) = v51;
              v48 = v74;
            }

            else
            {
              *(a1 + 104) = v54 + 1;
              v51 = *&v49[2 * v54 + 2];
            }

            v47 = sub_100155104(a3, v51, v48);
            v74 = v47;
            if (!v47)
            {
              goto LABEL_150;
            }

            if (*a3 <= v47 || *v47 != 90)
            {
              goto LABEL_135;
            }

            continue;
          }
        }

        if (v11 != 8)
        {
          if (v11 == 9)
          {
            if (v9 != 74)
            {
              goto LABEL_137;
            }

            *(a1 + 16) |= 8u;
            v41 = *(a1 + 168);
            if (v41)
            {
              goto LABEL_133;
            }

            v63 = *(a1 + 8);
            if (v63)
            {
              v63 = *(v63 & 0xFFFFFFFFFFFFFFFELL);
            }

            v41 = google::protobuf::Arena::CreateMaybeMessage<TSP::Reference>(v63);
            *(a1 + 168) = v41;
            goto LABEL_132;
          }

          if (v11 != 10 || v9 != 82)
          {
            goto LABEL_137;
          }

          v21 = (v8 - 1);
          while (2)
          {
            v22 = (v21 + 1);
            v74 = (v21 + 1);
            v23 = *(a1 + 88);
            if (!v23)
            {
              v24 = *(a1 + 84);
              goto LABEL_37;
            }

            v28 = *(a1 + 80);
            v24 = *v23;
            if (v28 >= *v23)
            {
              if (v24 == *(a1 + 84))
              {
LABEL_37:
                google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 72), v24 + 1);
                v23 = *(a1 + 88);
                v24 = *v23;
              }

              *v23 = v24 + 1;
              v25 = google::protobuf::Arena::CreateMaybeMessage<TSP::Reference>(*(a1 + 72));
              v26 = *(a1 + 80);
              v27 = *(a1 + 88) + 8 * v26;
              *(a1 + 80) = v26 + 1;
              *(v27 + 8) = v25;
              v22 = v74;
            }

            else
            {
              *(a1 + 80) = v28 + 1;
              v25 = *&v23[2 * v28 + 2];
            }

            v21 = sub_100155104(a3, v25, v22);
            v74 = v21;
            if (!v21)
            {
              goto LABEL_150;
            }

            if (*a3 <= v21 || *v21 != 82)
            {
              goto LABEL_135;
            }

            continue;
          }
        }

        if (v9 != 64)
        {
          goto LABEL_137;
        }

        v6 |= 0x40u;
        v44 = (v8 + 1);
        v43 = *v8;
        if ((v43 & 0x8000000000000000) == 0)
        {
          goto LABEL_83;
        }

        v45 = *v44;
        v43 = (v45 << 7) + v43 - 128;
        if ((v45 & 0x80000000) == 0)
        {
          v44 = (v8 + 2);
LABEL_83:
          v74 = v44;
          *(a1 + 185) = v43 != 0;
          goto LABEL_135;
        }

        v72 = google::protobuf::internal::VarintParseSlow64(v8, v43);
        v74 = v72;
        *(a1 + 185) = v73 != 0;
        if (!v72)
        {
LABEL_150:
          v74 = 0;
          goto LABEL_2;
        }
      }

      else
      {
        if (v9 >> 3 <= 4)
        {
          if (v11 == 1)
          {
            if (v9 == 10)
            {
              *(a1 + 16) |= 1u;
              v41 = *(a1 + 144);
              if (!v41)
              {
                v42 = *(a1 + 8);
                if (v42)
                {
                  v42 = *(v42 & 0xFFFFFFFFFFFFFFFELL);
                }

                v41 = google::protobuf::Arena::CreateMaybeMessage<TSP::Reference>(v42);
                *(a1 + 144) = v41;
                goto LABEL_132;
              }

              goto LABEL_133;
            }

            goto LABEL_137;
          }

          if (v11 != 2)
          {
            if (v11 != 3 || v9 != 26)
            {
              goto LABEL_137;
            }

            v13 = (v8 - 1);
            while (2)
            {
              v14 = (v13 + 1);
              v74 = (v13 + 1);
              v15 = *(a1 + 64);
              if (!v15)
              {
                v16 = *(a1 + 60);
                goto LABEL_19;
              }

              v20 = *(a1 + 56);
              v16 = *v15;
              if (v20 >= *v15)
              {
                if (v16 == *(a1 + 60))
                {
LABEL_19:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48), v16 + 1);
                  v15 = *(a1 + 64);
                  v16 = *v15;
                }

                *v15 = v16 + 1;
                v17 = google::protobuf::Arena::CreateMaybeMessage<TSP::Reference>(*(a1 + 48));
                v18 = *(a1 + 56);
                v19 = *(a1 + 64) + 8 * v18;
                *(a1 + 56) = v18 + 1;
                *(v19 + 8) = v17;
                v14 = v74;
              }

              else
              {
                *(a1 + 56) = v20 + 1;
                v17 = *&v15[2 * v20 + 2];
              }

              v13 = sub_100155104(a3, v17, v14);
              v74 = v13;
              if (!v13)
              {
                goto LABEL_150;
              }

              if (*a3 <= v13 || *v13 != 26)
              {
                goto LABEL_135;
              }

              continue;
            }
          }

          if (v9 != 18)
          {
            goto LABEL_137;
          }

          v55 = (v8 - 1);
          while (2)
          {
            v56 = (v55 + 1);
            v74 = (v55 + 1);
            v57 = *(a1 + 40);
            if (!v57)
            {
              v58 = *(a1 + 36);
              goto LABEL_107;
            }

            v62 = *(a1 + 32);
            v58 = *v57;
            if (v62 >= *v57)
            {
              if (v58 == *(a1 + 36))
              {
LABEL_107:
                google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24), v58 + 1);
                v57 = *(a1 + 40);
                v58 = *v57;
              }

              *v57 = v58 + 1;
              v59 = google::protobuf::Arena::CreateMaybeMessage<TSP::Reference>(*(a1 + 24));
              v60 = *(a1 + 32);
              v61 = *(a1 + 40) + 8 * v60;
              *(a1 + 32) = v60 + 1;
              *(v61 + 8) = v59;
              v56 = v74;
            }

            else
            {
              *(a1 + 32) = v62 + 1;
              v59 = *&v57[2 * v62 + 2];
            }

            v55 = sub_100155104(a3, v59, v56);
            v74 = v55;
            if (!v55)
            {
              goto LABEL_150;
            }

            if (*a3 <= v55 || *v55 != 18)
            {
              goto LABEL_135;
            }

            continue;
          }
        }

        if (v11 == 5)
        {
          if (v9 != 42)
          {
            goto LABEL_137;
          }

          *(a1 + 16) |= 2u;
          v41 = *(a1 + 152);
          if (v41)
          {
            goto LABEL_133;
          }

          v46 = *(a1 + 8);
          if (v46)
          {
            v46 = *(v46 & 0xFFFFFFFFFFFFFFFELL);
          }

          v41 = google::protobuf::Arena::CreateMaybeMessage<TSP::Reference>(v46);
          *(a1 + 152) = v41;
LABEL_132:
          v8 = v74;
          goto LABEL_133;
        }

        if (v11 == 6)
        {
          if (v9 == 50)
          {
            *(a1 + 16) |= 4u;
            v41 = *(a1 + 160);
            if (!v41)
            {
              v64 = *(a1 + 8);
              if (v64)
              {
                v64 = *(v64 & 0xFFFFFFFFFFFFFFFELL);
              }

              v41 = google::protobuf::Arena::CreateMaybeMessage<TSP::Reference>(v64);
              *(a1 + 160) = v41;
              goto LABEL_132;
            }

LABEL_133:
            v66 = sub_100155104(a3, v41, v8);
LABEL_134:
            v74 = v66;
            if (!v66)
            {
              goto LABEL_150;
            }

            goto LABEL_135;
          }

LABEL_137:
          if (v9)
          {
            v67 = (v9 & 7) == 4;
          }

          else
          {
            v67 = 1;
          }

          if (v67)
          {
            *(a3 + 80) = v9 - 1;
            goto LABEL_2;
          }

          v68 = *(a1 + 8);
          if (v68)
          {
            v69 = ((v68 & 0xFFFFFFFFFFFFFFFELL) + 8);
          }

          else
          {
            v69 = sub_100031428((a1 + 8), v5, v8);
            v8 = v74;
          }

          v66 = google::protobuf::internal::UnknownFieldParse(v9, v69, v8);
          goto LABEL_134;
        }

        if (v11 != 7 || v9 != 56)
        {
          goto LABEL_137;
        }

        v6 |= 0x20u;
        v30 = (v8 + 1);
        v29 = *v8;
        if ((v29 & 0x8000000000000000) == 0)
        {
          goto LABEL_54;
        }

        v31 = *v30;
        v29 = (v31 << 7) + v29 - 128;
        if ((v31 & 0x80000000) == 0)
        {
          v30 = (v8 + 2);
LABEL_54:
          v74 = v30;
          *(a1 + 184) = v29 != 0;
          goto LABEL_135;
        }

        v70 = google::protobuf::internal::VarintParseSlow64(v8, v29);
        v74 = v70;
        *(a1 + 184) = v71 != 0;
        if (!v70)
        {
          goto LABEL_150;
        }
      }

LABEL_135:
      if (sub_1000313B0(a3, &v74, *(a3 + 92)))
      {
        goto LABEL_2;
      }
    }

    v8 = (v74 + 2);
LABEL_6:
    v74 = v8;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v6;
  return v74;
}

const google::protobuf::UnknownFieldSet *TSP::PasteboardObject::_InternalSerialize(TSP::PasteboardObject *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 4);
  if (v6)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 18);
    *a2 = 10;
    v8 = *(v7 + 5);
    if (v8 > 0x7F)
    {
      a2[1] = v8 | 0x80;
      v10 = v8 >> 7;
      if (v8 >> 14)
      {
        v9 = a2 + 3;
        do
        {
          *(v9 - 1) = v10 | 0x80;
          v11 = v10 >> 7;
          ++v9;
          v12 = v10 >> 14;
          v10 >>= 7;
        }

        while (v12);
        *(v9 - 1) = v11;
      }

      else
      {
        a2[2] = v10;
        v9 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v8;
      v9 = a2 + 2;
    }

    a2 = TSP::Reference::_InternalSerialize(v7, v9, a3, a4);
  }

  v13 = *(this + 8);
  if (v13)
  {
    for (i = 0; i != v13; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v15 = *(*(this + 5) + 8 * i + 8);
      *a2 = 18;
      v16 = *(v15 + 5);
      if (v16 > 0x7F)
      {
        a2[1] = v16 | 0x80;
        v18 = v16 >> 7;
        if (v16 >> 14)
        {
          v17 = a2 + 3;
          do
          {
            *(v17 - 1) = v18 | 0x80;
            v19 = v18 >> 7;
            ++v17;
            v20 = v18 >> 14;
            v18 >>= 7;
          }

          while (v20);
          *(v17 - 1) = v19;
        }

        else
        {
          a2[2] = v18;
          v17 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v16;
        v17 = a2 + 2;
      }

      a2 = TSP::Reference::_InternalSerialize(v15, v17, a3, a4);
    }
  }

  v21 = *(this + 14);
  if (v21)
  {
    for (j = 0; j != v21; ++j)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v23 = *(*(this + 8) + 8 * j + 8);
      *a2 = 26;
      v24 = *(v23 + 5);
      if (v24 > 0x7F)
      {
        a2[1] = v24 | 0x80;
        v26 = v24 >> 7;
        if (v24 >> 14)
        {
          v25 = a2 + 3;
          do
          {
            *(v25 - 1) = v26 | 0x80;
            v27 = v26 >> 7;
            ++v25;
            v28 = v26 >> 14;
            v26 >>= 7;
          }

          while (v28);
          *(v25 - 1) = v27;
        }

        else
        {
          a2[2] = v26;
          v25 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v24;
        v25 = a2 + 2;
      }

      a2 = TSP::Reference::_InternalSerialize(v23, v25, a3, a4);
    }
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v29 = *(this + 19);
    *a2 = 42;
    v30 = *(v29 + 5);
    if (v30 > 0x7F)
    {
      a2[1] = v30 | 0x80;
      v32 = v30 >> 7;
      if (v30 >> 14)
      {
        v31 = a2 + 3;
        do
        {
          *(v31 - 1) = v32 | 0x80;
          v33 = v32 >> 7;
          ++v31;
          v34 = v32 >> 14;
          v32 >>= 7;
        }

        while (v34);
        *(v31 - 1) = v33;
      }

      else
      {
        a2[2] = v32;
        v31 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v30;
      v31 = a2 + 2;
    }

    a2 = TSP::Reference::_InternalSerialize(v29, v31, a3, a4);
    if ((v6 & 4) == 0)
    {
LABEL_38:
      if ((v6 & 0x20) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_62;
    }
  }

  else if ((v6 & 4) == 0)
  {
    goto LABEL_38;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v35 = *(this + 20);
  *a2 = 50;
  v36 = *(v35 + 5);
  if (v36 > 0x7F)
  {
    a2[1] = v36 | 0x80;
    v38 = v36 >> 7;
    if (v36 >> 14)
    {
      v37 = a2 + 3;
      do
      {
        *(v37 - 1) = v38 | 0x80;
        v39 = v38 >> 7;
        ++v37;
        v40 = v38 >> 14;
        v38 >>= 7;
      }

      while (v40);
      *(v37 - 1) = v39;
    }

    else
    {
      a2[2] = v38;
      v37 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v36;
    v37 = a2 + 2;
  }

  a2 = TSP::Reference::_InternalSerialize(v35, v37, a3, a4);
  if ((v6 & 0x20) == 0)
  {
LABEL_39:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_65;
  }

LABEL_62:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v41 = *(this + 184);
  *a2 = 56;
  a2[1] = v41;
  a2 += 2;
  if ((v6 & 0x40) == 0)
  {
LABEL_40:
    if ((v6 & 8) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_68;
  }

LABEL_65:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v42 = *(this + 185);
  *a2 = 64;
  a2[1] = v42;
  a2 += 2;
  if ((v6 & 8) != 0)
  {
LABEL_68:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v43 = *(this + 21);
    *a2 = 74;
    v44 = *(v43 + 5);
    if (v44 > 0x7F)
    {
      a2[1] = v44 | 0x80;
      v46 = v44 >> 7;
      if (v44 >> 14)
      {
        v45 = a2 + 3;
        do
        {
          *(v45 - 1) = v46 | 0x80;
          v47 = v46 >> 7;
          ++v45;
          v48 = v46 >> 14;
          v46 >>= 7;
        }

        while (v48);
        *(v45 - 1) = v47;
      }

      else
      {
        a2[2] = v46;
        v45 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v44;
      v45 = a2 + 2;
    }

    a2 = TSP::Reference::_InternalSerialize(v43, v45, a3, a4);
  }

LABEL_78:
  v49 = *(this + 20);
  if (v49)
  {
    for (k = 0; k != v49; ++k)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v51 = *(*(this + 11) + 8 * k + 8);
      *a2 = 82;
      v52 = *(v51 + 5);
      if (v52 > 0x7F)
      {
        a2[1] = v52 | 0x80;
        v54 = v52 >> 7;
        if (v52 >> 14)
        {
          v53 = a2 + 3;
          do
          {
            *(v53 - 1) = v54 | 0x80;
            v55 = v54 >> 7;
            ++v53;
            v56 = v54 >> 14;
            v54 >>= 7;
          }

          while (v56);
          *(v53 - 1) = v55;
        }

        else
        {
          a2[2] = v54;
          v53 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v52;
        v53 = a2 + 2;
      }

      a2 = TSP::Reference::_InternalSerialize(v51, v53, a3, a4);
    }
  }

  v57 = *(this + 26);
  if (v57)
  {
    for (m = 0; m != v57; ++m)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v59 = *(*(this + 14) + 8 * m + 8);
      *a2 = 90;
      v60 = *(v59 + 5);
      if (v60 > 0x7F)
      {
        a2[1] = v60 | 0x80;
        v62 = v60 >> 7;
        if (v60 >> 14)
        {
          v61 = a2 + 3;
          do
          {
            *(v61 - 1) = v62 | 0x80;
            v63 = v62 >> 7;
            ++v61;
            v64 = v62 >> 14;
            v62 >>= 7;
          }

          while (v64);
          *(v61 - 1) = v63;
        }

        else
        {
          a2[2] = v62;
          v61 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v60;
        v61 = a2 + 2;
      }

      a2 = TSP::Reference::_InternalSerialize(v59, v61, a3, a4);
    }
  }

  if ((v6 & 0x10) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v65 = *(this + 22);
    *a2 = 98;
    v66 = *(v65 + 5);
    if (v66 > 0x7F)
    {
      a2[1] = v66 | 0x80;
      v68 = v66 >> 7;
      if (v66 >> 14)
      {
        v67 = a2 + 3;
        do
        {
          *(v67 - 1) = v68 | 0x80;
          v69 = v68 >> 7;
          ++v67;
          v70 = v68 >> 14;
          v68 >>= 7;
        }

        while (v70);
        *(v67 - 1) = v69;
      }

      else
      {
        a2[2] = v68;
        v67 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v66;
      v67 = a2 + 2;
    }

    a2 = TSP::Reference::_InternalSerialize(v65, v67, a3, a4);
  }

  v71 = *(this + 32);
  if (v71)
  {
    for (n = 0; n != v71; ++n)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v73 = *(*(this + 17) + 8 * n + 8);
      *a2 = 106;
      v74 = *(v73 + 5);
      if (v74 > 0x7F)
      {
        a2[1] = v74 | 0x80;
        v76 = v74 >> 7;
        if (v74 >> 14)
        {
          v75 = a2 + 3;
          do
          {
            *(v75 - 1) = v76 | 0x80;
            v77 = v76 >> 7;
            ++v75;
            v78 = v76 >> 14;
            v76 >>= 7;
          }

          while (v78);
          *(v75 - 1) = v77;
        }

        else
        {
          a2[2] = v76;
          v75 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v74;
        v75 = a2 + 2;
      }

      a2 = TSP::Range::_InternalSerialize(v73, v75, a3, a4);
    }
  }

  v79 = *(this + 1);
  if ((v79 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v79 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

char *TSP::PasteboardObject::ByteSizeLong(TSP::PasteboardObject *this)
{
  v2 = *(this + 8);
  v3 = *(this + 5);
  if (v3)
  {
    v4 = (v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (v2)
  {
    v5 = 8 * v2;
    do
    {
      v6 = *v4++;
      v7 = TSP::Reference::ByteSizeLong(v6);
      v2 += &v7[(9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6];
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = *(this + 14);
  v9 = v2 + v8;
  v10 = *(this + 8);
  if (v10)
  {
    v11 = (v10 + 8);
  }

  else
  {
    v11 = 0;
  }

  if (v8)
  {
    v12 = 8 * v8;
    do
    {
      v13 = *v11++;
      v14 = TSP::Reference::ByteSizeLong(v13);
      v9 += &v14[(9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6];
      v12 -= 8;
    }

    while (v12);
  }

  v15 = *(this + 20);
  v16 = v9 + v15;
  v17 = *(this + 11);
  if (v17)
  {
    v18 = (v17 + 8);
  }

  else
  {
    v18 = 0;
  }

  if (v15)
  {
    v19 = 8 * v15;
    do
    {
      v20 = *v18++;
      v21 = TSP::Reference::ByteSizeLong(v20);
      v16 += &v21[(9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6];
      v19 -= 8;
    }

    while (v19);
  }

  v22 = *(this + 26);
  v23 = v16 + v22;
  v24 = *(this + 14);
  if (v24)
  {
    v25 = (v24 + 8);
  }

  else
  {
    v25 = 0;
  }

  if (v22)
  {
    v26 = 8 * v22;
    do
    {
      v27 = *v25++;
      v28 = TSP::Reference::ByteSizeLong(v27);
      v23 += &v28[(9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6];
      v26 -= 8;
    }

    while (v26);
  }

  v29 = *(this + 32);
  v30 = (v23 + v29);
  v31 = *(this + 17);
  if (v31)
  {
    v32 = (v31 + 8);
  }

  else
  {
    v32 = 0;
  }

  if (v29)
  {
    v33 = 8 * v29;
    do
    {
      v34 = *v32++;
      v35 = TSP::Range::ByteSizeLong(v34);
      v30 = (v30 + v35 + ((9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6));
      v33 -= 8;
    }

    while (v33);
  }

  v36 = *(this + 4);
  if ((v36 & 0x7F) != 0)
  {
    if (v36)
    {
      v39 = TSP::Reference::ByteSizeLong(*(this + 18));
      v30 = &v39[((9 * (__clz(v39 | 1) ^ 0x1F) + 73) >> 6) + 1 + v30];
      if ((v36 & 2) == 0)
      {
LABEL_36:
        if ((v36 & 4) == 0)
        {
          goto LABEL_37;
        }

        goto LABEL_45;
      }
    }

    else if ((v36 & 2) == 0)
    {
      goto LABEL_36;
    }

    v40 = TSP::Reference::ByteSizeLong(*(this + 19));
    v30 = &v40[((9 * (__clz(v40 | 1) ^ 0x1F) + 73) >> 6) + 1 + v30];
    if ((v36 & 4) == 0)
    {
LABEL_37:
      if ((v36 & 8) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_46;
    }

LABEL_45:
    v41 = TSP::Reference::ByteSizeLong(*(this + 20));
    v30 = &v41[((9 * (__clz(v41 | 1) ^ 0x1F) + 73) >> 6) + 1 + v30];
    if ((v36 & 8) == 0)
    {
LABEL_38:
      if ((v36 & 0x10) == 0)
      {
LABEL_40:
        v30 = (v30 + ((v36 >> 5) & 2) + ((v36 >> 4) & 2));
        goto LABEL_41;
      }

LABEL_39:
      v37 = TSP::Reference::ByteSizeLong(*(this + 22));
      v30 = &v37[((9 * (__clz(v37 | 1) ^ 0x1F) + 73) >> 6) + 1 + v30];
      goto LABEL_40;
    }

LABEL_46:
    v42 = TSP::Reference::ByteSizeLong(*(this + 21));
    v30 = &v42[((9 * (__clz(v42 | 1) ^ 0x1F) + 73) >> 6) + 1 + v30];
    if ((v36 & 0x10) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

LABEL_41:
  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v30, this + 5);
  }

  else
  {
    *(this + 5) = v30;
    return v30;
  }
}

void TSP::PasteboardObject::MergeFrom(TSP::PasteboardObject *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::PasteboardObject::MergeFrom(this, v5, v6);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void *TSP::PasteboardObject::MergeFrom(void *this, const TSP::PasteboardObject *a2, uint64_t a3)
{
  v4 = this;
  v5 = *(a2 + 1);
  if (v5)
  {
    this = sub_1000315A0(this + 1, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8), a3);
  }

  v6 = *(a2 + 8);
  if (v6)
  {
    v7 = *(a2 + 5);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v4 + 3), *(a2 + 8));
    this = sub_10006AA4C(v4 + 3, v8, v7 + 8, v6, *v4[5] - *(v4 + 8));
    v9 = *(v4 + 8) + v6;
    *(v4 + 8) = v9;
    v10 = v4[5];
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  v11 = *(a2 + 14);
  if (v11)
  {
    v12 = *(a2 + 8);
    v13 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v4 + 6), *(a2 + 14));
    this = sub_10006AA4C(v4 + 6, v13, v12 + 8, v11, *v4[8] - *(v4 + 14));
    v14 = *(v4 + 14) + v11;
    *(v4 + 14) = v14;
    v15 = v4[8];
    if (*v15 < v14)
    {
      *v15 = v14;
    }
  }

  v16 = *(a2 + 20);
  if (v16)
  {
    v17 = *(a2 + 11);
    v18 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v4 + 9), *(a2 + 20));
    this = sub_10006AA4C(v4 + 9, v18, v17 + 8, v16, *v4[11] - *(v4 + 20));
    v19 = *(v4 + 20) + v16;
    *(v4 + 20) = v19;
    v20 = v4[11];
    if (*v20 < v19)
    {
      *v20 = v19;
    }
  }

  v21 = *(a2 + 26);
  if (v21)
  {
    v22 = *(a2 + 14);
    v23 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v4 + 12), *(a2 + 26));
    this = sub_10006AA4C(v4 + 12, v23, v22 + 8, v21, *v4[14] - *(v4 + 26));
    v24 = *(v4 + 26) + v21;
    *(v4 + 26) = v24;
    v25 = v4[14];
    if (*v25 < v24)
    {
      *v25 = v24;
    }
  }

  v26 = *(a2 + 32);
  if (v26)
  {
    v27 = *(a2 + 17);
    v28 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v4 + 15), *(a2 + 32));
    this = sub_10006A264(v4 + 15, v28, v27 + 8, v26, *v4[17] - *(v4 + 32));
    v29 = *(v4 + 32) + v26;
    *(v4 + 32) = v29;
    v30 = v4[17];
    if (*v30 < v29)
    {
      *v30 = v29;
    }
  }

  v31 = *(a2 + 4);
  if ((v31 & 0x7F) != 0)
  {
    if (v31)
    {
      *(v4 + 4) |= 1u;
      v32 = v4[18];
      if (!v32)
      {
        v33 = v4[1];
        if (v33)
        {
          v33 = *(v33 & 0xFFFFFFFFFFFFFFFELL);
        }

        v32 = google::protobuf::Arena::CreateMaybeMessage<TSP::Reference>(v33);
        v4[18] = v32;
      }

      if (*(a2 + 18))
      {
        v34 = *(a2 + 18);
      }

      else
      {
        v34 = &TSP::_Reference_default_instance_;
      }

      this = TSP::Reference::MergeFrom(v32, v34, a3);
      if ((v31 & 2) == 0)
      {
LABEL_21:
        if ((v31 & 4) == 0)
        {
          goto LABEL_22;
        }

        goto LABEL_45;
      }
    }

    else if ((v31 & 2) == 0)
    {
      goto LABEL_21;
    }

    *(v4 + 4) |= 2u;
    v35 = v4[19];
    if (!v35)
    {
      v36 = v4[1];
      if (v36)
      {
        v36 = *(v36 & 0xFFFFFFFFFFFFFFFELL);
      }

      v35 = google::protobuf::Arena::CreateMaybeMessage<TSP::Reference>(v36);
      v4[19] = v35;
    }

    if (*(a2 + 19))
    {
      v37 = *(a2 + 19);
    }

    else
    {
      v37 = &TSP::_Reference_default_instance_;
    }

    this = TSP::Reference::MergeFrom(v35, v37, a3);
    if ((v31 & 4) == 0)
    {
LABEL_22:
      if ((v31 & 8) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_53;
    }

LABEL_45:
    *(v4 + 4) |= 4u;
    v38 = v4[20];
    if (!v38)
    {
      v39 = v4[1];
      if (v39)
      {
        v39 = *(v39 & 0xFFFFFFFFFFFFFFFELL);
      }

      v38 = google::protobuf::Arena::CreateMaybeMessage<TSP::Reference>(v39);
      v4[20] = v38;
    }

    if (*(a2 + 20))
    {
      v40 = *(a2 + 20);
    }

    else
    {
      v40 = &TSP::_Reference_default_instance_;
    }

    this = TSP::Reference::MergeFrom(v38, v40, a3);
    if ((v31 & 8) == 0)
    {
LABEL_23:
      if ((v31 & 0x10) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_61;
    }

LABEL_53:
    *(v4 + 4) |= 8u;
    v41 = v4[21];
    if (!v41)
    {
      v42 = v4[1];
      if (v42)
      {
        v42 = *(v42 & 0xFFFFFFFFFFFFFFFELL);
      }

      v41 = google::protobuf::Arena::CreateMaybeMessage<TSP::Reference>(v42);
      v4[21] = v41;
    }

    if (*(a2 + 21))
    {
      v43 = *(a2 + 21);
    }

    else
    {
      v43 = &TSP::_Reference_default_instance_;
    }

    this = TSP::Reference::MergeFrom(v41, v43, a3);
    if ((v31 & 0x10) == 0)
    {
LABEL_24:
      if ((v31 & 0x20) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_69;
    }

LABEL_61:
    *(v4 + 4) |= 0x10u;
    v44 = v4[22];
    if (!v44)
    {
      v45 = v4[1];
      if (v45)
      {
        v45 = *(v45 & 0xFFFFFFFFFFFFFFFELL);
      }

      v44 = google::protobuf::Arena::CreateMaybeMessage<TSP::Reference>(v45);
      v4[22] = v44;
    }

    if (*(a2 + 22))
    {
      v46 = *(a2 + 22);
    }

    else
    {
      v46 = &TSP::_Reference_default_instance_;
    }

    this = TSP::Reference::MergeFrom(v44, v46, a3);
    if ((v31 & 0x20) == 0)
    {
LABEL_25:
      if ((v31 & 0x40) == 0)
      {
LABEL_27:
        *(v4 + 4) |= v31;
        return this;
      }

LABEL_26:
      *(v4 + 185) = *(a2 + 185);
      goto LABEL_27;
    }

LABEL_69:
    *(v4 + 184) = *(a2 + 184);
    if ((v31 & 0x40) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  return this;
}

void TSP::PasteboardObject::CopyFrom(char **this, char **a2, uint64_t a3)
{
  if (a2 != this)
  {
    TSP::PasteboardObject::Clear(this, a2, a3);

    TSP::PasteboardObject::MergeFrom(this, a2);
  }
}

BOOL TSP::PasteboardObject::IsInitialized(TSP::PasteboardObject *this)
{
  v1 = *(this + 8);
  while (v1 >= 1)
  {
    v2 = *(*(this + 5) + 8 * v1--);
    if ((*(v2 + 16) & 1) == 0)
    {
      return 0;
    }
  }

  v3 = *(this + 14);
  while (v3 >= 1)
  {
    v4 = *(*(this + 8) + 8 * v3--);
    if ((*(v4 + 16) & 1) == 0)
    {
      return 0;
    }
  }

  v5 = *(this + 20);
  while (v5 >= 1)
  {
    v6 = *(*(this + 11) + 8 * v5--);
    if ((*(v6 + 16) & 1) == 0)
    {
      return 0;
    }
  }

  v7 = *(this + 26);
  while (v7 >= 1)
  {
    v8 = *(*(this + 14) + 8 * v7--);
    if ((*(v8 + 16) & 1) == 0)
    {
      return 0;
    }
  }

  v9 = *(this + 32);
  while (v9 >= 1)
  {
    v10 = *(*(this + 17) + 8 * v9--);
    if ((~*(v10 + 16) & 3) != 0)
    {
      return 0;
    }
  }

  v11 = *(this + 4);
  return ((v11 & 1) == 0 || (*(*(this + 18) + 16) & 1) != 0) && ((v11 & 2) == 0 || (*(*(this + 19) + 16) & 1) != 0) && ((v11 & 4) == 0 || (*(*(this + 20) + 16) & 1) != 0) && ((v11 & 8) == 0 || (*(*(this + 21) + 16) & 1) != 0) && ((v11 & 0x10) == 0 || (*(*(this + 22) + 16) & 1) != 0);
}

uint64_t TSP::PasteboardObject::GetMetadata(TSP::PasteboardObject *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  result = off_1001E9950[56];
  v2 = off_1001E9950[57];
  return result;
}

uint64_t TSP::ObjectCollection::ObjectCollection(uint64_t a1, uint64_t a2)
{
  *a1 = off_1001CAC60;
  *(a1 + 8) = a2;
  *(a1 + 16) = a2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  if (atomic_load_explicit(scc_info_ObjectCollection_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_ObjectCollection_TSPMessages_2eproto);
  }

  return a1;
}

void TSP::ObjectCollection::~ObjectCollection(TSP::ObjectCollection *this)
{
  sub_10002F4C4(this + 1);
  sub_10006A9B4(this + 2);
}

{
  TSP::ObjectCollection::~ObjectCollection(this);

  operator delete();
}

google::protobuf::UnknownFieldSet *TSP::ObjectCollection::Clear(google::protobuf::UnknownFieldSet *this, uint64_t a2, uint64_t a3)
{
  v3 = this;
  v4 = *(this + 6);
  if (v4 >= 1)
  {
    v5 = (*(this + 4) + 8);
    do
    {
      v6 = *v5++;
      this = TSP::Reference::Clear(v6, a2, a3);
      --v4;
    }

    while (v4);
    *(v3 + 24) = 0;
  }

  v8 = *(v3 + 8);
  v7 = (v3 + 8);
  if (v8)
  {

    return sub_1000315EC(v7, a2, a3);
  }

  return this;
}

google::protobuf::internal *TSP::ObjectCollection::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v22 = a2;
  if ((sub_1000313B0(a3, &v22, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v6 = (v22 + 1);
      v7 = *v22;
      if ((*v22 & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if ((*v6 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v22, (v8 - 128));
      v22 = TagFallback;
      if (!TagFallback)
      {
        return 0;
      }

      v6 = TagFallback;
      v7 = v5;
LABEL_6:
      if (v7 == 10)
      {
        v12 = (v6 - 1);
        while (1)
        {
          v13 = (v12 + 1);
          v22 = (v12 + 1);
          v14 = *(a1 + 32);
          if (!v14)
          {
            break;
          }

          v19 = *(a1 + 24);
          v15 = *v14;
          if (v19 < *v14)
          {
            *(a1 + 24) = v19 + 1;
            v16 = *&v14[2 * v19 + 2];
            goto LABEL_23;
          }

          if (v15 == *(a1 + 28))
          {
            goto LABEL_19;
          }

LABEL_20:
          *v14 = v15 + 1;
          v16 = google::protobuf::Arena::CreateMaybeMessage<TSP::Reference>(*(a1 + 16));
          v17 = *(a1 + 24);
          v18 = *(a1 + 32) + 8 * v17;
          *(a1 + 24) = v17 + 1;
          *(v18 + 8) = v16;
          v13 = v22;
LABEL_23:
          v12 = sub_100155104(a3, v16, v13);
          v22 = v12;
          if (!v12)
          {
            return 0;
          }

          if (*a3 <= v12 || *v12 != 10)
          {
            goto LABEL_14;
          }
        }

        v15 = *(a1 + 28);
LABEL_19:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 16), v15 + 1);
        v14 = *(a1 + 32);
        v15 = *v14;
        goto LABEL_20;
      }

      if (v7)
      {
        v9 = (v7 & 7) == 4;
      }

      else
      {
        v9 = 1;
      }

      if (v9)
      {
        *(a3 + 80) = v7 - 1;
        return v22;
      }

      v10 = *(a1 + 8);
      if (v10)
      {
        v11 = ((v10 & 0xFFFFFFFFFFFFFFFELL) + 8);
      }

      else
      {
        v11 = sub_100031428((a1 + 8), v5, v6);
        v6 = v22;
      }

      v22 = google::protobuf::internal::UnknownFieldParse(v7, v11, v6);
      if (!v22)
      {
        return 0;
      }

LABEL_14:
      if (sub_1000313B0(a3, &v22, *(a3 + 92)))
      {
        return v22;
      }
    }

    v6 = (v22 + 2);
LABEL_5:
    v22 = v6;
    goto LABEL_6;
  }

  return v22;
}

const google::protobuf::UnknownFieldSet *TSP::ObjectCollection::_InternalSerialize(TSP::ObjectCollection *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 6);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v8 = *(*(this + 4) + 8 * i + 8);
      *a2 = 10;
      v9 = *(v8 + 5);
      if (v9 > 0x7F)
      {
        a2[1] = v9 | 0x80;
        v11 = v9 >> 7;
        if (v9 >> 14)
        {
          v10 = a2 + 3;
          do
          {
            *(v10 - 1) = v11 | 0x80;
            v12 = v11 >> 7;
            ++v10;
            v13 = v11 >> 14;
            v11 >>= 7;
          }

          while (v13);
          *(v10 - 1) = v12;
        }

        else
        {
          a2[2] = v11;
          v10 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v9;
        v10 = a2 + 2;
      }

      a2 = TSP::Reference::_InternalSerialize(v8, v10, a3, a4);
    }
  }

  v14 = *(this + 1);
  if ((v14 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v14 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

char *TSP::ObjectCollection::ByteSizeLong(TSP::ObjectCollection *this)
{
  v2 = *(this + 6);
  v3 = *(this + 4);
  if (v3)
  {
    v4 = (v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (v2)
  {
    v5 = 8 * v2;
    do
    {
      v6 = *v4++;
      v7 = TSP::Reference::ByteSizeLong(v6);
      v2 = (v2 + v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6));
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v2, this + 10);
  }

  else
  {
    *(this + 10) = v2;
    return v2;
  }
}

void TSP::ObjectCollection::MergeFrom(TSP::ObjectCollection *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::ObjectCollection::MergeFrom(this, v5, v6);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void *TSP::ObjectCollection::MergeFrom(void *this, const TSP::ObjectCollection *a2, uint64_t a3)
{
  v4 = this;
  v5 = *(a2 + 1);
  if (v5)
  {
    this = sub_1000315A0(this + 1, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8), a3);
  }

  v6 = *(a2 + 6);
  if (v6)
  {
    v7 = *(a2 + 4);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v4 + 2), v6);
    this = sub_10006AA4C(v4 + 2, v8, v7 + 8, v6, *v4[4] - *(v4 + 6));
    v9 = *(v4 + 6) + v6;
    *(v4 + 6) = v9;
    v10 = v4[4];
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  return this;
}

void TSP::ObjectCollection::CopyFrom(char **this, char **a2, uint64_t a3)
{
  if (a2 != this)
  {
    TSP::ObjectCollection::Clear(this, a2, a3);

    TSP::ObjectCollection::MergeFrom(this, a2);
  }
}

BOOL TSP::ObjectCollection::IsInitialized(TSP::ObjectCollection *this)
{
  v1 = *(this + 6);
  do
  {
    v2 = v1;
    if (v1 < 1)
    {
      break;
    }

    v3 = *(*(this + 4) + 8 * v1--);
  }

  while ((*(v3 + 16) & 1) != 0);
  return v2 < 1;
}

uint64_t TSP::ObjectCollection::GetMetadata(TSP::ObjectCollection *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  result = off_1001E9950[58];
  v2 = off_1001E9950[59];
  return result;
}

uint64_t TSP::ObjectContainer::ObjectContainer(uint64_t a1, uint64_t a2)
{
  *a1 = off_1001CAD10;
  *(a1 + 8) = a2;
  *(a1 + 24) = a2;
  *(a1 + 16) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  if (atomic_load_explicit(scc_info_ObjectContainer_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_ObjectContainer_TSPMessages_2eproto);
  }

  *(a1 + 48) = 0;
  return a1;
}

void TSP::ObjectContainer::~ObjectContainer(TSP::ObjectContainer *this)
{
  sub_10002F4C4(this + 1);
  sub_10006A9B4(this + 3);
}

{
  TSP::ObjectContainer::~ObjectContainer(this);

  operator delete();
}

google::protobuf::UnknownFieldSet *TSP::ObjectContainer::Clear(google::protobuf::UnknownFieldSet *this, uint64_t a2, uint64_t a3)
{
  v3 = this;
  v4 = *(this + 8);
  if (v4 >= 1)
  {
    v5 = (*(this + 5) + 8);
    do
    {
      v6 = *v5++;
      this = TSP::Reference::Clear(v6, a2, a3);
      --v4;
    }

    while (v4);
    *(v3 + 32) = 0;
  }

  v8 = *(v3 + 8);
  v7 = v3 + 8;
  *(v7 + 40) = 0;
  *(v7 + 8) = 0;
  if (v8)
  {

    return sub_1000315EC(v7, a2, a3);
  }

  return this;
}

google::protobuf::internal *TSP::ObjectContainer::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v29 = a2;
  v6 = 0;
  if ((sub_1000313B0(a3, &v29, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v8 = (v29 + 1);
      v9 = *v29;
      if ((*v29 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v10 = v9 + (*v8 << 7);
      v9 = v10 - 128;
      if ((*v8 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v29, (v10 - 128));
      v29 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_46;
      }

      v8 = TagFallback;
      v9 = v5;
LABEL_7:
      if (v9 >> 3 == 2)
      {
        if (v9 != 18)
        {
LABEL_12:
          if (v9)
          {
            v12 = (v9 & 7) == 4;
          }

          else
          {
            v12 = 1;
          }

          if (v12)
          {
            *(a3 + 80) = v9 - 1;
            goto LABEL_2;
          }

          v13 = *(a1 + 8);
          if (v13)
          {
            v14 = ((v13 & 0xFFFFFFFFFFFFFFFELL) + 8);
          }

          else
          {
            v14 = sub_100031428((a1 + 8), v5, v8);
            v8 = v29;
          }

          v29 = google::protobuf::internal::UnknownFieldParse(v9, v14, v8);
          if (!v29)
          {
LABEL_46:
            v29 = 0;
            goto LABEL_2;
          }

          goto LABEL_38;
        }

        v15 = (v8 - 1);
        while (2)
        {
          v16 = (v15 + 1);
          v29 = (v15 + 1);
          v17 = *(a1 + 40);
          if (!v17)
          {
            v18 = *(a1 + 36);
            goto LABEL_24;
          }

          v22 = *(a1 + 32);
          v18 = *v17;
          if (v22 >= *v17)
          {
            if (v18 == *(a1 + 36))
            {
LABEL_24:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24), v18 + 1);
              v17 = *(a1 + 40);
              v18 = *v17;
            }

            *v17 = v18 + 1;
            v19 = google::protobuf::Arena::CreateMaybeMessage<TSP::Reference>(*(a1 + 24));
            v20 = *(a1 + 32);
            v21 = *(a1 + 40) + 8 * v20;
            *(a1 + 32) = v20 + 1;
            *(v21 + 8) = v19;
            v16 = v29;
          }

          else
          {
            *(a1 + 32) = v22 + 1;
            v19 = *&v17[2 * v22 + 2];
          }

          v15 = sub_100155104(a3, v19, v16);
          v29 = v15;
          if (!v15)
          {
            goto LABEL_46;
          }

          if (*a3 <= v15 || *v15 != 18)
          {
            goto LABEL_38;
          }

          continue;
        }
      }

      if (v9 >> 3 != 1 || v9 != 8)
      {
        goto LABEL_12;
      }

      v23 = (v8 + 1);
      LODWORD(v24) = *v8;
      if ((*v8 & 0x80000000) == 0)
      {
        goto LABEL_37;
      }

      v25 = *v23;
      v24 = (v24 + (v25 << 7) - 128);
      if ((v25 & 0x80000000) == 0)
      {
        v23 = (v8 + 2);
LABEL_37:
        v29 = v23;
        *(a1 + 48) = v24;
        v6 = 1;
        goto LABEL_38;
      }

      v27 = google::protobuf::internal::VarintParseSlow32(v8, v24);
      v29 = v27;
      *(a1 + 48) = v28;
      v6 = 1;
      if (!v27)
      {
        goto LABEL_46;
      }

LABEL_38:
      if (sub_1000313B0(a3, &v29, *(a3 + 92)))
      {
        goto LABEL_2;
      }
    }

    v8 = (v29 + 2);
LABEL_6:
    v29 = v8;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v6;
  return v29;
}

const google::protobuf::UnknownFieldSet *TSP::ObjectContainer::_InternalSerialize(TSP::ObjectContainer *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  if (*(this + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 12);
    *a2 = 8;
    if (v6 > 0x7F)
    {
      a2[1] = v6 | 0x80;
      v7 = v6 >> 7;
      if (v6 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v7 | 0x80;
          v8 = v7 >> 7;
          ++a2;
          v9 = v7 >> 14;
          v7 >>= 7;
        }

        while (v9);
        *(a2 - 1) = v8;
      }

      else
      {
        a2[2] = v7;
        a2 += 3;
      }
    }

    else
    {
      a2[1] = v6;
      a2 += 2;
    }
  }

  v10 = *(this + 8);
  if (v10)
  {
    for (i = 0; i != v10; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v12 = *(*(this + 5) + 8 * i + 8);
      *a2 = 18;
      v13 = *(v12 + 5);
      if (v13 > 0x7F)
      {
        a2[1] = v13 | 0x80;
        v15 = v13 >> 7;
        if (v13 >> 14)
        {
          v14 = a2 + 3;
          do
          {
            *(v14 - 1) = v15 | 0x80;
            v16 = v15 >> 7;
            ++v14;
            v17 = v15 >> 14;
            v15 >>= 7;
          }

          while (v17);
          *(v14 - 1) = v16;
        }

        else
        {
          a2[2] = v15;
          v14 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v13;
        v14 = a2 + 2;
      }

      a2 = TSP::Reference::_InternalSerialize(v12, v14, a3, a4);
    }
  }

  v18 = *(this + 1);
  if ((v18 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v18 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

char *TSP::ObjectContainer::ByteSizeLong(TSP::ObjectContainer *this)
{
  v2 = *(this + 8);
  v3 = *(this + 5);
  if (v3)
  {
    v4 = (v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (v2)
  {
    v5 = 8 * v2;
    do
    {
      v6 = *v4++;
      v7 = TSP::Reference::ByteSizeLong(v6);
      v2 = (v2 + v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6));
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  if (*(this + 16))
  {
    v2 = (v2 + ((9 * (__clz(*(this + 12) | 1) ^ 0x1F) + 73) >> 6) + 1);
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v2, this + 5);
  }

  else
  {
    *(this + 5) = v2;
    return v2;
  }
}

void TSP::ObjectContainer::MergeFrom(TSP::ObjectContainer *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::ObjectContainer::MergeFrom(this, v5, v6);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void *TSP::ObjectContainer::MergeFrom(void *this, const TSP::ObjectContainer *a2, uint64_t a3)
{
  v4 = this;
  v5 = *(a2 + 1);
  if (v5)
  {
    this = sub_1000315A0(this + 1, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8), a3);
  }

  v6 = *(a2 + 8);
  if (v6)
  {
    v7 = *(a2 + 5);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v4 + 3), *(a2 + 8));
    this = sub_10006AA4C(v4 + 3, v8, v7 + 8, v6, *v4[5] - *(v4 + 8));
    v9 = *(v4 + 8) + v6;
    *(v4 + 8) = v9;
    v10 = v4[5];
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  if (*(a2 + 16))
  {
    v11 = *(a2 + 12);
    *(v4 + 4) |= 1u;
    *(v4 + 12) = v11;
  }

  return this;
}

void TSP::ObjectContainer::CopyFrom(char **this, char **a2, uint64_t a3)
{
  if (a2 != this)
  {
    TSP::ObjectContainer::Clear(this, a2, a3);

    TSP::ObjectContainer::MergeFrom(this, a2);
  }
}

BOOL TSP::ObjectContainer::IsInitialized(TSP::ObjectContainer *this)
{
  v1 = *(this + 8);
  do
  {
    v2 = v1;
    if (v1 < 1)
    {
      break;
    }

    v3 = *(*(this + 5) + 8 * v1--);
  }

  while ((*(v3 + 16) & 1) != 0);
  return v2 < 1;
}

uint64_t TSP::ObjectContainer::GetMetadata(TSP::ObjectContainer *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  result = off_1001E9950[60];
  v2 = off_1001E9950[61];
  return result;
}

void TSP::DataAttributes::~DataAttributes(TSP::DataAttributes *this)
{
  sub_10002F4C4(this + 1);
  google::protobuf::internal::ExtensionSet::~ExtensionSet((this + 16));
}

{
  TSP::DataAttributes::~DataAttributes(this);

  operator delete();
}

unsigned __int8 *TSP::DataAttributes::Clear(TSP::DataAttributes *this)
{
  result = google::protobuf::internal::ExtensionSet::Clear(this + 16);
  v6 = *(this + 8);
  v5 = (this + 8);
  if (v6)
  {

    return sub_1000315EC(v5, v3, v4);
  }

  return result;
}

google::protobuf::internal *TSP::DataAttributes::_InternalParse(uint64_t a1, google::protobuf::internal *a2, int32x2_t *a3)
{
  v14 = a2;
  if ((sub_1000313B0(a3, &v14, a3[11].i32[1]) & 1) == 0)
  {
    while (1)
    {
      v5 = (v14 + 1);
      v6 = *v14;
      if ((*v14 & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      v6 = v6 + (*v5 << 7) - 128;
      if ((*v5 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v14, v6);
      v14 = TagFallback;
      if (!TagFallback)
      {
        return 0;
      }

      v5 = TagFallback;
LABEL_6:
      if (v6)
      {
        v7 = (v6 & 7) == 4;
      }

      else
      {
        v7 = 1;
      }

      if (v7)
      {
        a3[10].i32[0] = v6 - 1;
        return v14;
      }

      v8 = v6;
      if (v6 < 0x320)
      {
        v10 = *(a1 + 8);
        if (v10)
        {
          v11 = ((v10 & 0xFFFFFFFFFFFFFFFELL) + 8);
        }

        else
        {
          v11 = sub_100031428((a1 + 8), v6, v5);
          v5 = v14;
        }

        v9 = google::protobuf::internal::UnknownFieldParse(v8, v11, v5);
      }

      else
      {
        v9 = google::protobuf::internal::ExtensionSet::ParseField((a1 + 16), v6, v5, &TSP::_DataAttributes_default_instance_, (a1 + 8), a3);
      }

      v14 = v9;
      if (!v9)
      {
        return 0;
      }

      if (sub_1000313B0(a3, &v14, a3[11].i32[1]))
      {
        return v14;
      }
    }

    v5 = (v14 + 2);
LABEL_5:
    v14 = v5;
    goto LABEL_6;
  }

  return v14;
}

const google::protobuf::UnknownFieldSet *TSP::DataAttributes::_InternalSerialize(TSP::DataAttributes *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  result = google::protobuf::internal::ExtensionSet::_InternalSerialize((this + 16), 100, 0x20000000, a2, a3);
  v7 = *(this + 1);
  if (v7)
  {

    return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v7 & 0xFFFFFFFFFFFFFFFELL) + 8), result, a3, v6);
  }

  return result;
}

char *TSP::DataAttributes::ByteSizeLong(TSP::DataAttributes *this)
{
  v2 = google::protobuf::internal::ExtensionSet::ByteSize((this + 16));
  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v2, this + 10);
  }

  else
  {
    *(this + 10) = v2;
    return v2;
  }
}

void TSP::DataAttributes::MergeFrom(google::protobuf::Arena **this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::DataAttributes::MergeFrom(this, v5);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void TSP::DataAttributes::MergeFrom(google::protobuf::Arena **this, const TSP::DataAttributes *a2)
{
  google::protobuf::internal::ExtensionSet::MergeFrom((this + 2), (a2 + 16));
  v5 = *(a2 + 1);
  if (v5)
  {

    sub_1000315A0(this + 1, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8), v4);
  }
}

void TSP::DataAttributes::CopyFrom(char **this, char **a2)
{
  if (a2 != this)
  {
    TSP::DataAttributes::Clear(this);

    TSP::DataAttributes::MergeFrom(this, a2);
  }
}

uint64_t TSP::DataAttributes::GetMetadata(TSP::DataAttributes *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  result = off_1001E9950[62];
  v2 = off_1001E9950[63];
  return result;
}

void *TSP::LargeArraySegment::LargeArraySegment(void *a1, uint64_t a2)
{
  *a1 = off_1001CAE70;
  a1[1] = a2;
  a1[2] = 0;
  if (atomic_load_explicit(scc_info_LargeArraySegment_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_LargeArraySegment_TSPMessages_2eproto);
  }

  a1[3] = &google::protobuf::internal::fixed_address_empty_string;
  a1[4] = 0;
  return a1;
}

void TSP::LargeArraySegment::~LargeArraySegment(TSP::LargeArraySegment *this)
{
  v1 = *(this + 3);
  if (v1 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    operator delete();
  }

  sub_10002F4C4(this + 1);
}

{
  TSP::LargeArraySegment::~LargeArraySegment(this);

  operator delete();
}

google::protobuf::UnknownFieldSet *TSP::LargeArraySegment::Clear(TSP::LargeArraySegment *this, uint64_t a2, uint64_t a3)
{
  v3 = *(this + 4);
  if (v3)
  {
    v4 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v4 + 23) < 0)
    {
      **v4 = 0;
      *(v4 + 8) = 0;
    }

    else
    {
      *v4 = 0;
      *(v4 + 23) = 0;
    }
  }

  if ((v3 & 6) != 0)
  {
    *(this + 4) = 0;
  }

  v6 = *(this + 8);
  result = (this + 8);
  *(result + 2) = 0;
  if (v6)
  {
    return sub_1000315EC(result, a2, a3);
  }

  return result;
}

google::protobuf::internal *TSP::LargeArraySegment::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v30 = a2;
  v6 = 0;
  if ((sub_1000313B0(a3, &v30, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v8 = (v30 + 1);
      v9 = *v30;
      if ((*v30 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v10 = v9 + (*v8 << 7);
      v9 = v10 - 128;
      if ((*v8 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v30, (v10 - 128));
      v30 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_45;
      }

      v8 = TagFallback;
      v9 = v5;
LABEL_7:
      v11 = v9 >> 3;
      if (v9 >> 3 == 3)
      {
        if (v9 == 26)
        {
          *(a1 + 16) |= 1u;
          v20 = *(a1 + 8);
          if (v20)
          {
            v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
          }

          v21 = google::protobuf::internal::ArenaStringPtr::Mutable((a1 + 24), v20);
          v16 = google::protobuf::internal::InlineGreedyStringParser(v21, v30, a3);
        }

        else
        {
LABEL_13:
          if (v9)
          {
            v13 = (v9 & 7) == 4;
          }

          else
          {
            v13 = 1;
          }

          if (v13)
          {
            *(a3 + 80) = v9 - 1;
            goto LABEL_2;
          }

          v14 = *(a1 + 8);
          if (v14)
          {
            v15 = ((v14 & 0xFFFFFFFFFFFFFFFELL) + 8);
          }

          else
          {
            v15 = sub_100031428((a1 + 8), v5, v8);
            v8 = v30;
          }

          v16 = google::protobuf::internal::UnknownFieldParse(v9, v15, v8);
        }

        v30 = v16;
        if (!v16)
        {
          goto LABEL_45;
        }

        goto LABEL_35;
      }

      if (v11 == 2)
      {
        if (v9 != 16)
        {
          goto LABEL_13;
        }

        v6 |= 4u;
        v17 = (v8 + 1);
        LODWORD(v18) = *v8;
        if ((*v8 & 0x80000000) == 0)
        {
          goto LABEL_24;
        }

        v19 = *v17;
        v18 = (v18 + (v19 << 7) - 128);
        if ((v19 & 0x80000000) == 0)
        {
          v17 = (v8 + 2);
LABEL_24:
          v30 = v17;
          *(a1 + 36) = v18;
          goto LABEL_35;
        }

        v26 = google::protobuf::internal::VarintParseSlow32(v8, v18);
        v30 = v26;
        *(a1 + 36) = v27;
        if (!v26)
        {
          goto LABEL_45;
        }
      }

      else
      {
        if (v11 != 1 || v9 != 8)
        {
          goto LABEL_13;
        }

        v6 |= 2u;
        v23 = (v8 + 1);
        v22 = *v8;
        if ((v22 & 0x8000000000000000) == 0)
        {
          goto LABEL_34;
        }

        v24 = *v23;
        v22 = (v24 << 7) + v22 - 128;
        if ((v24 & 0x80000000) == 0)
        {
          v23 = (v8 + 2);
LABEL_34:
          v30 = v23;
          *(a1 + 32) = v22 != 0;
          goto LABEL_35;
        }

        v28 = google::protobuf::internal::VarintParseSlow64(v8, v22);
        v30 = v28;
        *(a1 + 32) = v29 != 0;
        if (!v28)
        {
LABEL_45:
          v30 = 0;
          goto LABEL_2;
        }
      }

LABEL_35:
      if (sub_1000313B0(a3, &v30, *(a3 + 92)))
      {
        goto LABEL_2;
      }
    }

    v8 = (v30 + 2);
LABEL_6:
    v30 = v8;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v6;
  return v30;
}

const google::protobuf::UnknownFieldSet *TSP::LargeArraySegment::_InternalSerialize(TSP::LargeArraySegment *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if ((v6 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v9 = *(this + 32);
    *v4 = 8;
    v4[1] = v9;
    v4 += 2;
    if ((v6 & 4) == 0)
    {
LABEL_3:
      if ((v6 & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((v6 & 4) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v10 = *(this + 9);
  *v4 = 16;
  if (v10 <= 0x7F)
  {
    v4[1] = v10;
    v4 += 2;
    if ((v6 & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_4:
    v4 = sub_100030384(a3, 3, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), v4);
    goto LABEL_5;
  }

  v4[1] = v10 | 0x80;
  v11 = v10 >> 7;
  if (v10 >> 14)
  {
    v4 += 3;
    do
    {
      *(v4 - 1) = v11 | 0x80;
      v12 = v11 >> 7;
      ++v4;
      v13 = v11 >> 14;
      v11 >>= 7;
    }

    while (v13);
    *(v4 - 1) = v12;
    if (v6)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v4[2] = v11;
    v4 += 3;
    if (v6)
    {
      goto LABEL_4;
    }
  }

LABEL_5:
  v7 = *(this + 1);
  if ((v7 & 1) == 0)
  {
    return v4;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v7 & 0xFFFFFFFFFFFFFFFELL) + 8), v4, a3, v4);
}